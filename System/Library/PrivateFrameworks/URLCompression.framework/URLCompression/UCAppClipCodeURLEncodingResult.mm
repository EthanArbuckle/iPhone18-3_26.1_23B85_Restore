@interface UCAppClipCodeURLEncodingResult
+ (id)resultWithRawEncodedBits:(id)bits appClipCodeBytes:(id)bytes;
- (UCAppClipCodeURLEncodingResult)initWithRawEncodedBits:(id)bits appClipCodeBytes:(id)bytes;
@end

@implementation UCAppClipCodeURLEncodingResult

+ (id)resultWithRawEncodedBits:(id)bits appClipCodeBytes:(id)bytes
{
  bytesCopy = bytes;
  bitsCopy = bits;
  v8 = [[self alloc] initWithRawEncodedBits:bitsCopy appClipCodeBytes:bytesCopy];

  return v8;
}

- (UCAppClipCodeURLEncodingResult)initWithRawEncodedBits:(id)bits appClipCodeBytes:(id)bytes
{
  bitsCopy = bits;
  bytesCopy = bytes;
  v13.receiver = self;
  v13.super_class = UCAppClipCodeURLEncodingResult;
  v8 = [(UCAppClipCodeURLEncodingResult *)&v13 init];
  if (v8)
  {
    v9 = [bitsCopy copy];
    rawEncodedBits = v8->_rawEncodedBits;
    v8->_rawEncodedBits = v9;

    objc_storeStrong(&v8->_appClipCodeBytes, bytes);
    v11 = v8;
  }

  return v8;
}

@end