@interface SUXMLHTTPStoreRequestOperation
- (SUXMLHTTPStoreRequestOperation)initWithRequestProperties:(id)properties;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)block;
@end

@implementation SUXMLHTTPStoreRequestOperation

- (SUXMLHTTPStoreRequestOperation)initWithRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = SUXMLHTTPStoreRequestOperation;
  v5 = [(SUXMLHTTPStoreRequestOperation *)&v9 init];
  if (v5)
  {
    v6 = [propertiesCopy copy];
    requestProperties = v5->_requestProperties;
    v5->_requestProperties = v6;
  }

  return v5;
}

- (id)outputBlock
{
  [(SUXMLHTTPStoreRequestOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(SUXMLHTTPStoreRequestOperation *)self unlock];
  v4 = MEMORY[0x1C6916C70](v3);

  return v4;
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(SUXMLHTTPStoreRequestOperation *)self lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(SUXMLHTTPStoreRequestOperation *)self unlock];
}

- (void)run
{
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v15 = 0;
  v4 = [(SUXMLHTTPStoreRequestOperation *)self loadedURLBagWithContext:v3 returningError:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69E47E0]);
    [v6 setRequestProperties:self->_requestProperties];
    [v6 setAuthenticationContext:self->_authenticationContext];
    [v6 setDataProvider:self->_dataProvider];
    v14 = v5;
    v7 = [(SUXMLHTTPStoreRequestOperation *)self runSubOperation:v6 returningError:&v14];
    v8 = v14;

    dataProvider = [v6 dataProvider];
    output = [dataProvider output];

    response = [v6 response];

    v5 = v8;
  }

  else
  {
    v7 = 0;
    response = 0;
    output = 0;
  }

  outputBlock = [(SUXMLHTTPStoreRequestOperation *)self outputBlock];
  v13 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v7, v5, response, output);
    [(SUXMLHTTPStoreRequestOperation *)self setOutputBlock:0];
  }
}

@end