@interface PTTimedStabilizationMetadata
+ (id)objectFromData:(id)a3 withMajorVersion:(unsigned int)a4 minorVersion:(unsigned int)a5;
- (PTTimedStabilizationMetadata)initWithMajorVersion:(unsigned int)a3 minorVersion:(unsigned int)a4;
@end

@implementation PTTimedStabilizationMetadata

- (PTTimedStabilizationMetadata)initWithMajorVersion:(unsigned int)a3 minorVersion:(unsigned int)a4
{
  v10.receiver = self;
  v10.super_class = PTTimedStabilizationMetadata;
  v6 = [(PTTimedStabilizationMetadata *)&v10 init];
  v7 = v6;
  v8 = 0;
  if (a3 == 1 && v6)
  {
    v6->_majorVersion = 1;
    v6->_minorVersion = a4;
    v8 = v6;
  }

  return v8;
}

+ (id)objectFromData:(id)a3 withMajorVersion:(unsigned int)a4 minorVersion:(unsigned int)a5
{
  v5 = *&a5;
  v7 = a3;
  if ([v7 length] >= 8 && ((v8 = objc_msgSend(v7, "bytes"), a4 == 1) ? (v9 = v8[1] == 1650553971) : (v9 = 0), v9 && ((v11 = bswap32(*v8), v12 = objc_msgSend(v7, "length"), (v11 & 7) == 0) ? (v13 = v12 == v11) : (v13 = 0), v13)))
  {
    v10 = [[PTTimedStabilizationMetadataVersion1 alloc] initWithData:v7 minorVersion:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end