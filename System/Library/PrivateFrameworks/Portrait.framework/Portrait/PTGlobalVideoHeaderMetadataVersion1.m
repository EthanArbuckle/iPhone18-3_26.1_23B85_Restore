@interface PTGlobalVideoHeaderMetadataVersion1
- (BOOL)writeToData:(id)a3 withOptions:(id)a4;
- (PTGlobalVideoHeaderMetadataVersion1)initWithData:(id)a3;
- (PTGlobalVideoHeaderMetadataVersion1)initWithMinorVersion:(unsigned int)a3;
@end

@implementation PTGlobalVideoHeaderMetadataVersion1

- (PTGlobalVideoHeaderMetadataVersion1)initWithMinorVersion:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = PTGlobalVideoHeaderMetadataVersion1;
  v3 = [(PTGlobalVideoHeaderMetadata *)&v7 initWithMajorVersion:1 minorVersion:*&a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (PTGlobalVideoHeaderMetadataVersion1)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  v6 = bswap32(v5[3]);
  v12.receiver = self;
  v12.super_class = PTGlobalVideoHeaderMetadataVersion1;
  v7 = [(PTGlobalVideoHeaderMetadata *)&v12 initWithMajorVersion:1 minorVersion:v6];
  if (v7 && ((v8 = bswap32(*v5), [v4 length] == v8) ? (v9 = (v8 & 7) == 0) : (v9 = 0), v9 && -[PTGlobalVideoHeaderMetadata majorVersion](v7, "majorVersion") == 1 && -[PTGlobalVideoHeaderMetadata majorVersion](v7, "majorVersion") == bswap32(v5[2])))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)writeToData:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PTGlobalVideoHeaderMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7];
  if ([v6 length] >= v8 && -[PTGlobalVideoHeaderMetadata majorVersion](self, "majorVersion") == 1)
  {
    v9 = [v6 mutableBytes];
    *v9 = bswap32([(PTGlobalVideoHeaderMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7]);
    v9[1] = 1919182966;
    v9[2] = bswap32([(PTGlobalVideoHeaderMetadata *)self majorVersion]);
    v9[3] = bswap32([(PTGlobalVideoHeaderMetadata *)self minorVersion]);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end