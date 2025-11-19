@interface ICContentKeyNonceResponse
- (ICContentKeyNonceResponse)initWithResponseDictionary:(id)a3;
@end

@implementation ICContentKeyNonceResponse

- (ICContentKeyNonceResponse)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICContentKeyNonceResponse;
  v5 = [(ICContentKeyNonceResponse *)&v10 init];
  if (v5)
  {
    v5->_status = [v4 ic_integerValueForKey:@"status"];
    v6 = [v4 ic_stringValueForKey:@"nonce"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      nonceData = v5->_nonceData;
      v5->_nonceData = v7;
    }
  }

  return v5;
}

@end