@interface PTTimedRenderingMetadata
+ (id)objectFromData:(id)a3 withMajorVersion:(unsigned int)a4 minorVersion:(unsigned int)a5;
- (PTTimedRenderingMetadata)initWithMajorVersion:(unsigned int)a3 minorVersion:(unsigned int)a4;
@end

@implementation PTTimedRenderingMetadata

- (PTTimedRenderingMetadata)initWithMajorVersion:(unsigned int)a3 minorVersion:(unsigned int)a4
{
  v10.receiver = self;
  v10.super_class = PTTimedRenderingMetadata;
  v6 = [(PTTimedRenderingMetadata *)&v10 init];
  v7 = v6;
  v8 = 0;
  if (a3 - 3 >= 0xFFFFFFFE && v6)
  {
    v6->_majorVersion = a3;
    v6->_minorVersion = a4;
    v8 = v6;
  }

  return v8;
}

+ (id)objectFromData:(id)a3 withMajorVersion:(unsigned int)a4 minorVersion:(unsigned int)a5
{
  v5 = *&a5;
  v7 = a3;
  if ([v7 length] < 8 || *(objc_msgSend(v7, "bytes") + 4) != 1684956530)
  {
    goto LABEL_6;
  }

  if (a4 == 1)
  {
    v8 = off_278522948;
    goto LABEL_8;
  }

  if (a4 != 2)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_9;
  }

  v8 = off_278522950;
LABEL_8:
  v9 = [objc_alloc(*v8) initWithData:v7 minorVersion:v5];
LABEL_9:

  return v9;
}

@end