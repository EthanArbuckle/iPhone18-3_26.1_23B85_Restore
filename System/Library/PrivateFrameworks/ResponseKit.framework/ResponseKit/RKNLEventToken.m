@interface RKNLEventToken
- (RKNLEventToken)initWithString:(id)a3 location:(int64_t)a4 length:(int64_t)a5;
@end

@implementation RKNLEventToken

- (RKNLEventToken)initWithString:(id)a3 location:(int64_t)a4 length:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = RKNLEventToken;
  v10 = [(RKNLEventToken *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_string, a3);
    v11->_location = a4;
    v11->_length = a5;
  }

  return v11;
}

@end