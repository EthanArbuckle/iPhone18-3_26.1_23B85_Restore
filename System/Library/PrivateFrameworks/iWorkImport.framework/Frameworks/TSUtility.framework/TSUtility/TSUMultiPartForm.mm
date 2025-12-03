@interface TSUMultiPartForm
- (NSData)bodyData;
- (NSInputStream)bodyStream;
- (TSUMultiPartForm)init;
- (id)boundaryData;
- (id)boundaryEndData;
- (void)addPartWithName:(id)name filename:(id)filename contentType:(id)type jsonDictionaryPayload:(id)payload options:(unint64_t)options;
- (void)addPartWithName:(id)name filename:(id)filename contentType:(id)type payload:(id)payload;
- (void)addPartWithName:(id)name filename:(id)filename contentType:(id)type stream:(id)stream;
@end

@implementation TSUMultiPartForm

- (TSUMultiPartForm)init
{
  v12.receiver = self;
  v12.super_class = TSUMultiPartForm;
  v2 = [(TSUMultiPartForm *)&v12 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v6 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_28862C2A0];
    v7 = [v3 stringWithFormat:@"----%@", v6];
    boundaryString = v2->_boundaryString;
    v2->_boundaryString = v7;

    v9 = objc_opt_new();
    parts = v2->_parts;
    v2->_parts = v9;
  }

  return v2;
}

- (void)addPartWithName:(id)name filename:(id)filename contentType:(id)type payload:(id)payload
{
  payloadCopy = payload;
  typeCopy = type;
  filenameCopy = filename;
  nameCopy = name;
  v14 = objc_opt_new();
  [v14 setName:nameCopy];

  [v14 setFilename:filenameCopy];
  [v14 setContentType:typeCopy];

  [v14 setPayload:payloadCopy];
  [(NSMutableArray *)self->_parts addObject:v14];
}

- (void)addPartWithName:(id)name filename:(id)filename contentType:(id)type jsonDictionaryPayload:(id)payload options:(unint64_t)options
{
  nameCopy = name;
  filenameCopy = filename;
  typeCopy = type;
  v16 = 0;
  v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:payload options:options error:&v16];
  if (v15)
  {
    [(TSUMultiPartForm *)self addPartWithName:nameCopy filename:filenameCopy contentType:typeCopy payload:v15];
  }
}

- (void)addPartWithName:(id)name filename:(id)filename contentType:(id)type stream:(id)stream
{
  streamCopy = stream;
  typeCopy = type;
  filenameCopy = filename;
  nameCopy = name;
  v14 = objc_opt_new();
  [v14 setName:nameCopy];

  [v14 setFilename:filenameCopy];
  [v14 setContentType:typeCopy];

  [v14 setPayloadStream:streamCopy];
  [(NSMutableArray *)self->_parts addObject:v14];
}

- (id)boundaryData
{
  v2 = MEMORY[0x277CCACA8];
  boundary = [(TSUMultiPartForm *)self boundary];
  v4 = [v2 stringWithFormat:@"%@\r\n", boundary];
  v5 = [v4 dataUsingEncoding:4];

  return v5;
}

- (id)boundaryEndData
{
  v2 = MEMORY[0x277CCACA8];
  boundary = [(TSUMultiPartForm *)self boundary];
  v4 = [v2 stringWithFormat:@"%@--\r\n", boundary];
  v5 = [v4 dataUsingEncoding:4];

  return v5;
}

- (NSData)bodyData
{
  data = [MEMORY[0x277CBEB28] data];
  if ([(NSMutableArray *)self->_parts count])
  {
    boundaryData = [(TSUMultiPartForm *)self boundaryData];
    parts = self->_parts;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = sub_2770B8664;
    v13 = &unk_27A7027C0;
    v6 = data;
    v14 = v6;
    v15 = boundaryData;
    v7 = boundaryData;
    [(NSMutableArray *)parts enumerateObjectsUsingBlock:&v10];
    v8 = [(TSUMultiPartForm *)self boundaryEndData:v10];
    [v6 appendData:v8];
  }

  return data;
}

- (NSInputStream)bodyStream
{
  v3 = objc_opt_new();
  if ([(NSMutableArray *)self->_parts count])
  {
    boundaryData = [(TSUMultiPartForm *)self boundaryData];
    parts = self->_parts;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = sub_2770B8958;
    v15 = &unk_27A7027C0;
    v16 = boundaryData;
    v6 = v3;
    v17 = v6;
    v7 = boundaryData;
    [(NSMutableArray *)parts enumerateObjectsUsingBlock:&v12];
    v8 = MEMORY[0x277CBEAE0];
    v9 = [(TSUMultiPartForm *)self boundaryEndData:v12];
    v10 = [v8 inputStreamWithData:v9];
    [v6 addInputStream:v10];
  }

  return v3;
}

@end