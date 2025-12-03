@interface PTGlobalVideoHeaderMetadataVersion1
- (BOOL)writeToData:(id)data withOptions:(id)options;
- (PTGlobalVideoHeaderMetadataVersion1)initWithData:(id)data;
- (PTGlobalVideoHeaderMetadataVersion1)initWithMinorVersion:(unsigned int)version;
@end

@implementation PTGlobalVideoHeaderMetadataVersion1

- (PTGlobalVideoHeaderMetadataVersion1)initWithMinorVersion:(unsigned int)version
{
  v7.receiver = self;
  v7.super_class = PTGlobalVideoHeaderMetadataVersion1;
  v3 = [(PTGlobalVideoHeaderMetadata *)&v7 initWithMajorVersion:1 minorVersion:*&version];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (PTGlobalVideoHeaderMetadataVersion1)initWithData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v6 = bswap32(bytes[3]);
  v12.receiver = self;
  v12.super_class = PTGlobalVideoHeaderMetadataVersion1;
  v7 = [(PTGlobalVideoHeaderMetadata *)&v12 initWithMajorVersion:1 minorVersion:v6];
  if (v7 && ((v8 = bswap32(*bytes), [dataCopy length] == v8) ? (v9 = (v8 & 7) == 0) : (v9 = 0), v9 && -[PTGlobalVideoHeaderMetadata majorVersion](v7, "majorVersion") == 1 && -[PTGlobalVideoHeaderMetadata majorVersion](v7, "majorVersion") == bswap32(bytes[2])))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)writeToData:(id)data withOptions:(id)options
{
  dataCopy = data;
  optionsCopy = options;
  v8 = [(PTGlobalVideoHeaderMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:optionsCopy];
  if ([dataCopy length] >= v8 && -[PTGlobalVideoHeaderMetadata majorVersion](self, "majorVersion") == 1)
  {
    mutableBytes = [dataCopy mutableBytes];
    *mutableBytes = bswap32([(PTGlobalVideoHeaderMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:optionsCopy]);
    mutableBytes[1] = 1919182966;
    mutableBytes[2] = bswap32([(PTGlobalVideoHeaderMetadata *)self majorVersion]);
    mutableBytes[3] = bswap32([(PTGlobalVideoHeaderMetadata *)self minorVersion]);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end