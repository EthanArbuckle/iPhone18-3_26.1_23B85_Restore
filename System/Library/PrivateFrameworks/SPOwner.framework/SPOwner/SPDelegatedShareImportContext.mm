@interface SPDelegatedShareImportContext
- (SPDelegatedShareImportContext)initWithCoder:(id)coder;
- (SPDelegatedShareImportContext)initWithUrl:(id)url;
- (SPDelegatedShareImportContext)initWithUrl:(id)url callbackValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDelegatedShareImportContext

- (SPDelegatedShareImportContext)initWithUrl:(id)url callbackValue:(id)value
{
  urlCopy = url;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = SPDelegatedShareImportContext;
  v9 = [(SPDelegatedShareImportContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputUrl, url);
    objc_storeStrong(&v10->_callbackValue, value);
  }

  return v10;
}

- (SPDelegatedShareImportContext)initWithUrl:(id)url
{
  urlCopy = url;
  v10.receiver = self;
  v10.super_class = SPDelegatedShareImportContext;
  v6 = [(SPDelegatedShareImportContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputUrl, url);
    callbackValue = v7->_callbackValue;
    v7->_callbackValue = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  callbackValue = self->_callbackValue;
  coderCopy = coder;
  [coderCopy encodeObject:callbackValue forKey:@"callbackValue"];
  [coderCopy encodeObject:self->_inputUrl forKey:@"inputUrl"];
}

- (SPDelegatedShareImportContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputUrl"];
  inputUrl = self->_inputUrl;
  self->_inputUrl = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callbackValue"];

  callbackValue = self->_callbackValue;
  self->_callbackValue = v7;

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPDelegatedShareImportContext alloc];
  inputUrl = self->_inputUrl;
  callbackValue = self->_callbackValue;

  return [(SPDelegatedShareImportContext *)v4 initWithUrl:inputUrl callbackValue:callbackValue];
}

@end