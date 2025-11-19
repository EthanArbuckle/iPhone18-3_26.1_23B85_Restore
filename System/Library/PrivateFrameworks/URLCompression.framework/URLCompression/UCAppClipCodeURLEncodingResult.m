@interface UCAppClipCodeURLEncodingResult
+ (id)resultWithRawEncodedBits:(id)a3 appClipCodeBytes:(id)a4;
- (UCAppClipCodeURLEncodingResult)initWithRawEncodedBits:(id)a3 appClipCodeBytes:(id)a4;
@end

@implementation UCAppClipCodeURLEncodingResult

+ (id)resultWithRawEncodedBits:(id)a3 appClipCodeBytes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRawEncodedBits:v7 appClipCodeBytes:v6];

  return v8;
}

- (UCAppClipCodeURLEncodingResult)initWithRawEncodedBits:(id)a3 appClipCodeBytes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = UCAppClipCodeURLEncodingResult;
  v8 = [(UCAppClipCodeURLEncodingResult *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    rawEncodedBits = v8->_rawEncodedBits;
    v8->_rawEncodedBits = v9;

    objc_storeStrong(&v8->_appClipCodeBytes, a4);
    v11 = v8;
  }

  return v8;
}

@end