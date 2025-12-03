@interface PTGlobalRenderingMetadata
+ (id)objectFromData:(id)data;
- (PTGlobalRenderingMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion;
@end

@implementation PTGlobalRenderingMetadata

- (PTGlobalRenderingMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion
{
  v10.receiver = self;
  v10.super_class = PTGlobalRenderingMetadata;
  v6 = [(PTGlobalRenderingMetadata *)&v10 init];
  v7 = v6;
  v8 = 0;
  if (version - 3 >= 0xFFFFFFFE && v6)
  {
    v6->_majorVersion = version;
    v6->_minorVersion = minorVersion;
    v8 = v6;
  }

  return v8;
}

+ (id)objectFromData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] < 0x10)
  {
    goto LABEL_6;
  }

  bytes = [dataCopy bytes];
  if (*(bytes + 4) != 1684956530)
  {
    goto LABEL_6;
  }

  v5 = bswap32(*(bytes + 8));
  if (v5 == 1)
  {
    v6 = off_2785227A0;
    goto LABEL_8;
  }

  if (v5 != 2)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_9;
  }

  v6 = off_2785227A8;
LABEL_8:
  v7 = [objc_alloc(*v6) initWithData:dataCopy];
LABEL_9:

  return v7;
}

@end