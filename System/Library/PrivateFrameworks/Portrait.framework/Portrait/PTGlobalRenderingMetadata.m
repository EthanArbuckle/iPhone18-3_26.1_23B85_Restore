@interface PTGlobalRenderingMetadata
+ (id)objectFromData:(id)a3;
- (PTGlobalRenderingMetadata)initWithMajorVersion:(unsigned int)a3 minorVersion:(unsigned int)a4;
@end

@implementation PTGlobalRenderingMetadata

- (PTGlobalRenderingMetadata)initWithMajorVersion:(unsigned int)a3 minorVersion:(unsigned int)a4
{
  v10.receiver = self;
  v10.super_class = PTGlobalRenderingMetadata;
  v6 = [(PTGlobalRenderingMetadata *)&v10 init];
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

+ (id)objectFromData:(id)a3
{
  v3 = a3;
  if ([v3 length] < 0x10)
  {
    goto LABEL_6;
  }

  v4 = [v3 bytes];
  if (*(v4 + 4) != 1684956530)
  {
    goto LABEL_6;
  }

  v5 = bswap32(*(v4 + 8));
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
  v7 = [objc_alloc(*v6) initWithData:v3];
LABEL_9:

  return v7;
}

@end