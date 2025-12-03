@interface SSVSAPSignatureComponent
- (SSVSAPSignatureComponent)initWithComponentType:(int64_t)type key:(id)key;
- (id)_dataToSignWithDataSource:(id)source;
- (id)dataToSignWithRequestProperties:(id)properties;
- (id)dataToSignWithURLRequest:(id)request;
- (id)dataToSignWithURLResponse:(id)response responseData:(id)data;
@end

@implementation SSVSAPSignatureComponent

- (SSVSAPSignatureComponent)initWithComponentType:(int64_t)type key:(id)key
{
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = SSVSAPSignatureComponent;
  v7 = [(SSVSAPSignatureComponent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_componentType = type;
    v9 = [keyCopy copy];
    key = v8->_key;
    v8->_key = v9;
  }

  return v8;
}

- (id)dataToSignWithRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [[SSVSAPSignatureDataSource alloc] initWithURLRequestProperties:propertiesCopy];

  v6 = [(SSVSAPSignatureComponent *)self _dataToSignWithDataSource:v5];

  return v6;
}

- (id)dataToSignWithURLRequest:(id)request
{
  requestCopy = request;
  v5 = [[SSVSAPSignatureDataSource alloc] initWithURLRequest:requestCopy];

  v6 = [(SSVSAPSignatureComponent *)self _dataToSignWithDataSource:v5];

  return v6;
}

- (id)dataToSignWithURLResponse:(id)response responseData:(id)data
{
  dataCopy = data;
  responseCopy = response;
  v8 = [[SSVSAPSignatureDataSource alloc] initWithURLResponse:responseCopy bodyData:dataCopy];

  v9 = [(SSVSAPSignatureComponent *)self _dataToSignWithDataSource:v8];

  return v9;
}

- (id)_dataToSignWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  componentType = self->_componentType;
  if (componentType == 2)
  {
    v8 = [sourceCopy valueForQueryParameter:self->_key];
    goto LABEL_7;
  }

  if (componentType == 1)
  {
    v8 = [sourceCopy valueForHTTPHeader:self->_key];
LABEL_7:
    v9 = v8;
    if (v8)
    {
      hTTPBody = [v8 dataUsingEncoding:4];
    }

    else
    {
      hTTPBody = 0;
    }

    goto LABEL_12;
  }

  if (componentType)
  {
    hTTPBody = 0;
  }

  else
  {
    hTTPBody = [sourceCopy HTTPBody];
  }

LABEL_12:

  return hTTPBody;
}

@end