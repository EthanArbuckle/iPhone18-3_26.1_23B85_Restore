@interface NSSubstituteWebResource
- (Class)_webResourceClass;
- (NSSubstituteWebResource)initWithData:(id)a3 URL:(id)a4 MIMEType:(id)a5 textEncodingName:(id)a6 frameName:(id)a7;
- (id)webResource;
- (void)dealloc;
@end

@implementation NSSubstituteWebResource

- (Class)_webResourceClass
{
  if (_webResourceClass_onceToken != -1)
  {
    [NSSubstituteWebResource _webResourceClass];
  }

  return _webResourceClass__webResourceClass;
}

Class __44__NSSubstituteWebResource__webResourceClass__block_invoke()
{
  result = objc_lookUpClass("WebResource");
  _webResourceClass__webResourceClass = result;
  if (!result)
  {
    __NSLoadWebKit();
    result = objc_lookUpClass("WebResource");
    _webResourceClass__webResourceClass = result;
  }

  return result;
}

- (NSSubstituteWebResource)initWithData:(id)a3 URL:(id)a4 MIMEType:(id)a5 textEncodingName:(id)a6 frameName:(id)a7
{
  v14.receiver = self;
  v14.super_class = NSSubstituteWebResource;
  v12 = [(NSSubstituteWebResource *)&v14 init];
  v12->_data = [a3 copy];
  v12->_url = [a4 copy];
  v12->_mimeType = [a5 copy];
  v12->_textEncodingName = [a6 copy];
  v12->_frameName = [a7 copy];
  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSubstituteWebResource;
  [(NSSubstituteWebResource *)&v3 dealloc];
}

- (id)webResource
{
  v2 = [objc_alloc(-[NSSubstituteWebResource _webResourceClass](self "_webResourceClass"))];

  return v2;
}

@end