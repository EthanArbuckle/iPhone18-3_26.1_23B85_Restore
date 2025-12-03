@interface VUIJSBlob
- (VUIJSBlob)initWithData:(id)data;
@end

@implementation VUIJSBlob

- (VUIJSBlob)initWithData:(id)data
{
  dataCopy = data;
  v6 = +[VUIAppContext currentAppContext];
  v9.receiver = self;
  v9.super_class = VUIJSBlob;
  v7 = [(VUIJSObject *)&v9 initWithAppContext:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_data, data);
  }

  return v7;
}

@end