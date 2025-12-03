@interface PTGlobalStabilizationMetadata
+ (id)objectFromData:(id)data;
- (PTGlobalStabilizationMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion;
@end

@implementation PTGlobalStabilizationMetadata

- (PTGlobalStabilizationMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion
{
  v10.receiver = self;
  v10.super_class = PTGlobalStabilizationMetadata;
  v6 = [(PTGlobalStabilizationMetadata *)&v10 init];
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
  if ([dataCopy length] >= 0x10 && (v4 = objc_msgSend(dataCopy, "bytes"), *(v4 + 4) == 1650553971) && *(v4 + 8) == 0x1000000)
  {
    v5 = [[PTGlobalStabilizationMetadataVersion1 alloc] initWithData:dataCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end