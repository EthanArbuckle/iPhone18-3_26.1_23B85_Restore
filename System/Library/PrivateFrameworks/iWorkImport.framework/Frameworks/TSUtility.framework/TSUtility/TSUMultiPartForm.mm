@interface TSUMultiPartForm
- (NSData)bodyData;
- (NSInputStream)bodyStream;
- (TSUMultiPartForm)init;
- (id)boundaryData;
- (id)boundaryEndData;
- (void)addPartWithName:(id)a3 filename:(id)a4 contentType:(id)a5 jsonDictionaryPayload:(id)a6 options:(unint64_t)a7;
- (void)addPartWithName:(id)a3 filename:(id)a4 contentType:(id)a5 payload:(id)a6;
- (void)addPartWithName:(id)a3 filename:(id)a4 contentType:(id)a5 stream:(id)a6;
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
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:&stru_28862C2A0];
    v7 = [v3 stringWithFormat:@"----%@", v6];
    boundaryString = v2->_boundaryString;
    v2->_boundaryString = v7;

    v9 = objc_opt_new();
    parts = v2->_parts;
    v2->_parts = v9;
  }

  return v2;
}

- (void)addPartWithName:(id)a3 filename:(id)a4 contentType:(id)a5 payload:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  [v14 setName:v13];

  [v14 setFilename:v12];
  [v14 setContentType:v11];

  [v14 setPayload:v10];
  [(NSMutableArray *)self->_parts addObject:v14];
}

- (void)addPartWithName:(id)a3 filename:(id)a4 contentType:(id)a5 jsonDictionaryPayload:(id)a6 options:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v16 = 0;
  v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a6 options:a7 error:&v16];
  if (v15)
  {
    [(TSUMultiPartForm *)self addPartWithName:v12 filename:v13 contentType:v14 payload:v15];
  }
}

- (void)addPartWithName:(id)a3 filename:(id)a4 contentType:(id)a5 stream:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  [v14 setName:v13];

  [v14 setFilename:v12];
  [v14 setContentType:v11];

  [v14 setPayloadStream:v10];
  [(NSMutableArray *)self->_parts addObject:v14];
}

- (id)boundaryData
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TSUMultiPartForm *)self boundary];
  v4 = [v2 stringWithFormat:@"%@\r\n", v3];
  v5 = [v4 dataUsingEncoding:4];

  return v5;
}

- (id)boundaryEndData
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TSUMultiPartForm *)self boundary];
  v4 = [v2 stringWithFormat:@"%@--\r\n", v3];
  v5 = [v4 dataUsingEncoding:4];

  return v5;
}

- (NSData)bodyData
{
  v3 = [MEMORY[0x277CBEB28] data];
  if ([(NSMutableArray *)self->_parts count])
  {
    v4 = [(TSUMultiPartForm *)self boundaryData];
    parts = self->_parts;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = sub_2770B8664;
    v13 = &unk_27A7027C0;
    v6 = v3;
    v14 = v6;
    v15 = v4;
    v7 = v4;
    [(NSMutableArray *)parts enumerateObjectsUsingBlock:&v10];
    v8 = [(TSUMultiPartForm *)self boundaryEndData:v10];
    [v6 appendData:v8];
  }

  return v3;
}

- (NSInputStream)bodyStream
{
  v3 = objc_opt_new();
  if ([(NSMutableArray *)self->_parts count])
  {
    v4 = [(TSUMultiPartForm *)self boundaryData];
    parts = self->_parts;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = sub_2770B8958;
    v15 = &unk_27A7027C0;
    v16 = v4;
    v6 = v3;
    v17 = v6;
    v7 = v4;
    [(NSMutableArray *)parts enumerateObjectsUsingBlock:&v12];
    v8 = MEMORY[0x277CBEAE0];
    v9 = [(TSUMultiPartForm *)self boundaryEndData:v12];
    v10 = [v8 inputStreamWithData:v9];
    [v6 addInputStream:v10];
  }

  return v3;
}

@end