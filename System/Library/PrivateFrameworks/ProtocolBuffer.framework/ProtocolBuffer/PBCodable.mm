@interface PBCodable
- (NSData)data;
- (PBCodable)init;
- (PBCodable)initWithCoder:(id)coder;
- (PBCodable)initWithData:(id)data;
- (id)formattedText;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBCodable

- (PBCodable)init
{
  v3.receiver = self;
  v3.super_class = PBCodable;
  return [(PBCodable *)&v3 init];
}

- (NSData)data
{
  v3 = objc_alloc_init(PBDataWriter);
  [(PBCodable *)self writeTo:v3];
  immutableData = [(PBDataWriter *)v3 immutableData];

  return immutableData;
}

- (id)formattedText
{
  dictionaryRepresentation = [(PBCodable *)self dictionaryRepresentation];
  string = [MEMORY[0x1E696AD60] string];
  v3 = objc_autoreleasePoolPush();
  _textFormatDictionary(dictionaryRepresentation, 0, &v6);
  objc_autoreleasePoolPop(v3);
  v4 = string;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(PBCodable *)self data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (PBCodable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  v6 = [(PBCodable *)self initWithData:v5];
  return v6;
}

- (PBCodable)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = PBCodable;
  v5 = [(PBCodable *)&v10 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [[PBDataReader alloc] initWithData:dataCopy];
  if (![(PBCodable *)v5 readFrom:v6])
  {

    goto LABEL_6;
  }

  hasError = [(PBDataReader *)v6 hasError];

  if (hasError)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

LABEL_4:
  v8 = v5;
LABEL_7:

  return v8;
}

@end