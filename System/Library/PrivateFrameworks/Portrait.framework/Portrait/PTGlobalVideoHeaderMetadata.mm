@interface PTGlobalVideoHeaderMetadata
+ (id)objectFromData:(id)data;
- (PTGlobalVideoHeaderMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion;
@end

@implementation PTGlobalVideoHeaderMetadata

- (PTGlobalVideoHeaderMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion
{
  v10.receiver = self;
  v10.super_class = PTGlobalVideoHeaderMetadata;
  v6 = [(PTGlobalVideoHeaderMetadata *)&v10 init];
  v7 = v6;
  v8 = 0;
  if (version == 1 && v6)
  {
    v6->_majorVersion = 1;
    v6->_minorVersion = minorVersion;
    v8 = v6;
  }

  return v8;
}

+ (id)objectFromData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] >= 0x10 && (v4 = objc_msgSend(dataCopy, "bytes"), *(v4 + 4) == 1919182966) && *(v4 + 8) == 0x1000000)
  {
    v5 = [[PTGlobalVideoHeaderMetadataVersion1 alloc] initWithData:dataCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end