@interface PTTimedRenderingMetadata
+ (id)objectFromData:(id)data withMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion;
- (PTTimedRenderingMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion;
@end

@implementation PTTimedRenderingMetadata

- (PTTimedRenderingMetadata)initWithMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion
{
  v10.receiver = self;
  v10.super_class = PTTimedRenderingMetadata;
  v6 = [(PTTimedRenderingMetadata *)&v10 init];
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

+ (id)objectFromData:(id)data withMajorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion
{
  v5 = *&minorVersion;
  dataCopy = data;
  if ([dataCopy length] < 8 || *(objc_msgSend(dataCopy, "bytes") + 4) != 1684956530)
  {
    goto LABEL_6;
  }

  if (version == 1)
  {
    v8 = off_278522948;
    goto LABEL_8;
  }

  if (version != 2)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_9;
  }

  v8 = off_278522950;
LABEL_8:
  v9 = [objc_alloc(*v8) initWithData:dataCopy minorVersion:v5];
LABEL_9:

  return v9;
}

@end