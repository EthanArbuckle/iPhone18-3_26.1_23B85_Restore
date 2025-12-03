@interface NSSubstituteWebResource
- (Class)_webResourceClass;
- (NSSubstituteWebResource)initWithData:(id)data URL:(id)l MIMEType:(id)type textEncodingName:(id)name frameName:(id)frameName;
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

- (NSSubstituteWebResource)initWithData:(id)data URL:(id)l MIMEType:(id)type textEncodingName:(id)name frameName:(id)frameName
{
  v14.receiver = self;
  v14.super_class = NSSubstituteWebResource;
  v12 = [(NSSubstituteWebResource *)&v14 init];
  v12->_data = [data copy];
  v12->_url = [l copy];
  v12->_mimeType = [type copy];
  v12->_textEncodingName = [name copy];
  v12->_frameName = [frameName copy];
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