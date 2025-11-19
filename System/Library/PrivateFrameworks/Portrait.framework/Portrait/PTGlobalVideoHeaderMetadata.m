@interface PTGlobalVideoHeaderMetadata
+ (id)objectFromData:(id)a3;
- (PTGlobalVideoHeaderMetadata)initWithMajorVersion:(unsigned int)a3 minorVersion:(unsigned int)a4;
@end

@implementation PTGlobalVideoHeaderMetadata

- (PTGlobalVideoHeaderMetadata)initWithMajorVersion:(unsigned int)a3 minorVersion:(unsigned int)a4
{
  v10.receiver = self;
  v10.super_class = PTGlobalVideoHeaderMetadata;
  v6 = [(PTGlobalVideoHeaderMetadata *)&v10 init];
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

+ (id)objectFromData:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 0x10 && (v4 = objc_msgSend(v3, "bytes"), *(v4 + 4) == 1919182966) && *(v4 + 8) == 0x1000000)
  {
    v5 = [[PTGlobalVideoHeaderMetadataVersion1 alloc] initWithData:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end