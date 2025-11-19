@interface PBCodable
- (NSData)data;
- (PBCodable)init;
- (PBCodable)initWithCoder:(id)a3;
- (PBCodable)initWithData:(id)a3;
- (id)formattedText;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(PBDataWriter *)v3 immutableData];

  return v4;
}

- (id)formattedText
{
  v2 = [(PBCodable *)self dictionaryRepresentation];
  v7 = [MEMORY[0x1E696AD60] string];
  v3 = objc_autoreleasePoolPush();
  _textFormatDictionary(v2, 0, &v6);
  objc_autoreleasePoolPop(v3);
  v4 = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PBCodable *)self data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (PBCodable)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  v6 = [(PBCodable *)self initWithData:v5];
  return v6;
}

- (PBCodable)initWithData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PBCodable;
  v5 = [(PBCodable *)&v10 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [[PBDataReader alloc] initWithData:v4];
  if (![(PBCodable *)v5 readFrom:v6])
  {

    goto LABEL_6;
  }

  v7 = [(PBDataReader *)v6 hasError];

  if (v7)
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