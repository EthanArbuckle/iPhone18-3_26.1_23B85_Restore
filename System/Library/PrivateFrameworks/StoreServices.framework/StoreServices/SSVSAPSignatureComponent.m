@interface SSVSAPSignatureComponent
- (SSVSAPSignatureComponent)initWithComponentType:(int64_t)a3 key:(id)a4;
- (id)_dataToSignWithDataSource:(id)a3;
- (id)dataToSignWithRequestProperties:(id)a3;
- (id)dataToSignWithURLRequest:(id)a3;
- (id)dataToSignWithURLResponse:(id)a3 responseData:(id)a4;
@end

@implementation SSVSAPSignatureComponent

- (SSVSAPSignatureComponent)initWithComponentType:(int64_t)a3 key:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SSVSAPSignatureComponent;
  v7 = [(SSVSAPSignatureComponent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_componentType = a3;
    v9 = [v6 copy];
    key = v8->_key;
    v8->_key = v9;
  }

  return v8;
}

- (id)dataToSignWithRequestProperties:(id)a3
{
  v4 = a3;
  v5 = [[SSVSAPSignatureDataSource alloc] initWithURLRequestProperties:v4];

  v6 = [(SSVSAPSignatureComponent *)self _dataToSignWithDataSource:v5];

  return v6;
}

- (id)dataToSignWithURLRequest:(id)a3
{
  v4 = a3;
  v5 = [[SSVSAPSignatureDataSource alloc] initWithURLRequest:v4];

  v6 = [(SSVSAPSignatureComponent *)self _dataToSignWithDataSource:v5];

  return v6;
}

- (id)dataToSignWithURLResponse:(id)a3 responseData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SSVSAPSignatureDataSource alloc] initWithURLResponse:v7 bodyData:v6];

  v9 = [(SSVSAPSignatureComponent *)self _dataToSignWithDataSource:v8];

  return v9;
}

- (id)_dataToSignWithDataSource:(id)a3
{
  v4 = a3;
  v5 = v4;
  componentType = self->_componentType;
  if (componentType == 2)
  {
    v8 = [v4 valueForQueryParameter:self->_key];
    goto LABEL_7;
  }

  if (componentType == 1)
  {
    v8 = [v4 valueForHTTPHeader:self->_key];
LABEL_7:
    v9 = v8;
    if (v8)
    {
      v7 = [v8 dataUsingEncoding:4];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_12;
  }

  if (componentType)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 HTTPBody];
  }

LABEL_12:

  return v7;
}

@end