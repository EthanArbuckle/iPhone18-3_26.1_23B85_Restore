@interface NSData(UCNSDataExtras)
- (id)transformV1ToV2Encoding;
- (id)transformV1ToV3Encoding;
- (id)transformV2ToV1Encoding;
- (id)transformV3ToV1Encoding;
@end

@implementation NSData(UCNSDataExtras)

- (id)transformV2ToV1Encoding
{
  if ([self length] == 4)
  {
    v2 = *[self bytes] << 6;
    v6[0] = HIBYTE(v2);
    v6[1] = v2;
    v3 = [MEMORY[0x277CBEB28] dataWithBytes:v6 length:2];
    [v3 increaseLengthBy:13];
    v4 = [self subdataWithRange:{1, 3}];
    [v3 appendData:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)transformV3ToV1Encoding
{
  if ([self length] == 19)
  {
    v4 = 0;
    v2 = [MEMORY[0x277CBEB28] dataWithBytes:&v4 length:2];
    [v2 appendData:self];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)transformV1ToV2Encoding
{
  if ([self length] == 18)
  {
    bytes = [self bytes];
    HIDWORD(v3) = *bytes;
    LODWORD(v3) = bytes[1] << 24;
    v7 = v3 >> 30;
    v4 = [MEMORY[0x277CBEB28] dataWithBytes:&v7 length:1];
    v5 = [self subdataWithRange:{objc_msgSend(self, "length") - 3, 3}];
    [v4 appendData:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)transformV1ToV3Encoding
{
  if ([self length] == 21)
  {
    v2 = [self subdataWithRange:{2, objc_msgSend(self, "length") - 2}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end