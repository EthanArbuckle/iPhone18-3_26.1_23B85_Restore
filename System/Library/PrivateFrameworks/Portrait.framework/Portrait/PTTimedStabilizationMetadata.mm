@interface PTTimedStabilizationMetadata
+ (id)objectFromData:(id)data withMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion;
- (PTTimedStabilizationMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion;
@end

@implementation PTTimedStabilizationMetadata

- (PTTimedStabilizationMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion
{
  v10.receiver = self;
  v10.super_class = PTTimedStabilizationMetadata;
  v6 = [(PTTimedStabilizationMetadata *)&v10 init];
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

+ (id)objectFromData:(id)data withMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion
{
  v5 = *&minorVersion;
  dataCopy = data;
  if ([dataCopy length] >= 8 && ((v8 = objc_msgSend(dataCopy, "bytes"), version == 1) ? (v9 = v8[1] == 1650553971) : (v9 = 0), v9 && ((v11 = bswap32(*v8), v12 = objc_msgSend(dataCopy, "length"), (v11 & 7) == 0) ? (v13 = v12 == v11) : (v13 = 0), v13)))
  {
    v10 = [[PTTimedStabilizationMetadataVersion1 alloc] initWithData:dataCopy minorVersion:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end