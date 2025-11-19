@interface VUIJSBlob
- (VUIJSBlob)initWithData:(id)a3;
@end

@implementation VUIJSBlob

- (VUIJSBlob)initWithData:(id)a3
{
  v5 = a3;
  v6 = +[VUIAppContext currentAppContext];
  v9.receiver = self;
  v9.super_class = VUIJSBlob;
  v7 = [(VUIJSObject *)&v9 initWithAppContext:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_data, a3);
  }

  return v7;
}

@end