@interface MBFileID
+ (MBFileID)fileIDWithData:(id)a3;
+ (MBFileID)fileIDWithDomain:(id)a3 relativePath:(id)a4;
+ (MBFileID)fileIDWithDomainName:(id)a3 relativePath:(id)a4;
+ (MBFileID)fileIDWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MBFileID)initWithBytes:(const void *)a3;
- (MBFileID)initWithData:(id)a3;
- (MBFileID)initWithDecoder:(id)a3;
- (MBFileID)initWithDomain:(id)a3 relativePath:(id)a4;
- (MBFileID)initWithDomainName:(id)a3 relativePath:(id)a4;
- (MBFileID)initWithString:(id)a3;
- (NSString)filenamePrefix;
- (NSString)filenameWithPrefix;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation MBFileID

+ (MBFileID)fileIDWithDomain:(id)a3 relativePath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBFileID alloc] initWithDomain:v6 relativePath:v5];

  return v7;
}

+ (MBFileID)fileIDWithDomainName:(id)a3 relativePath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBFileID alloc] initWithDomainName:v6 relativePath:v5];

  return v7;
}

+ (MBFileID)fileIDWithString:(id)a3
{
  v3 = a3;
  v4 = [[MBFileID alloc] initWithString:v3];

  return v4;
}

+ (MBFileID)fileIDWithData:(id)a3
{
  v3 = a3;
  v4 = [[MBFileID alloc] initWithData:v3];

  return v4;
}

- (MBFileID)initWithBytes:(const void *)a3
{
  v6.receiver = self;
  v6.super_class = MBFileID;
  result = [(MBFileID *)&v6 init];
  if (result)
  {
    v5 = *a3;
    *&result->_bytes[16] = *(a3 + 4);
    *result->_bytes = v5;
  }

  return result;
}

- (MBFileID)initWithDecoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MBFileID;
  v5 = [(MBFileID *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v4 decodeBytes:v5->_bytes length:20];
  }

  return v6;
}

- (MBFileID)initWithDomain:(id)a3 relativePath:(id)a4
{
  v6 = a4;
  v7 = [a3 name];
  v8 = [(MBFileID *)self initWithDomainName:v7 relativePath:v6];

  return v8;
}

- (MBFileID)initWithDomainName:(id)a3 relativePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [NSException raise:NSInvalidArgumentException format:@"Null relative path"];
  }

  if ([v7 isEqualToString:&stru_1000FF270])
  {
    v13.receiver = self;
    v13.super_class = MBFileID;
    v8 = [(MBFileID *)&v13 init];
    if (v8)
    {
      MBGetFileIDBytes();
    }

    v9 = v8;
  }

  else
  {
    v10 = [[NSString alloc] initWithUTF8String:{objc_msgSend(v7, "fileSystemRepresentation")}];
    v14.receiver = self;
    v14.super_class = MBFileID;
    v11 = [(MBFileID *)&v14 init];
    if (v11)
    {
      MBGetFileIDBytes();
    }

    v9 = v11;
  }

  return v9;
}

- (MBFileID)initWithString:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MBFileID;
  v5 = [(MBFileID *)&v8 init];
  if (v5 && !MBBytesWithString())
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (MBFileID)initWithData:(id)a3
{
  v4 = a3;
  if ([v4 length] == 20)
  {
    self = -[MBFileID initWithBytes:](self, "initWithBytes:", [v4 bytes]);
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MBFileID allocWithZone:a3];

  return [(MBFileID *)v4 initWithBytes:self->_bytes];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MBFileID *)self isEqualToFileID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  result = 0;
  for (i = 8; i != 28; ++i)
  {
    result = *(&self->super.isa + i) - result + 32 * result;
  }

  return result;
}

- (NSString)filenamePrefix
{
  v2 = [(MBFileID *)self filename];
  v3 = [v2 substringToIndex:2];

  return v3;
}

- (NSString)filenameWithPrefix
{
  v3 = [(MBFileID *)self filenamePrefix];
  v4 = [(MBFileID *)self filename];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

@end