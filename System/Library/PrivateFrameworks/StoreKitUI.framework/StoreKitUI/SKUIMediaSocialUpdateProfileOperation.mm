@interface SKUIMediaSocialUpdateProfileOperation
- (NSNumber)identifier;
- (NSString)entityType;
- (SKUIMediaSocialUpdateProfileOperation)initWithClientContext:(id)context;
- (id)_imageDictionaryFromPhotoUpload:(id)upload;
- (id)_requestBodyWithError:(id *)error;
- (id)_requestWithError:(id *)error;
- (id)outputBlock;
- (void)main;
- (void)setEntityType:(id)type;
- (void)setIdentifier:(id)identifier;
- (void)setOutputBlock:(id)block;
- (void)setValue:(id)value forProfileField:(id)field;
@end

@implementation SKUIMediaSocialUpdateProfileOperation

- (SKUIMediaSocialUpdateProfileOperation)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMediaSocialUpdateProfileOperation initWithClientContext:];
  }

  v11.receiver = self;
  v11.super_class = SKUIMediaSocialUpdateProfileOperation;
  v6 = [(SSVOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v7->_lock;
    v7->_lock = v8;

    [(NSLock *)v7->_lock setName:@"com.apple.MediaSocial.updateProfile"];
  }

  return v7;
}

- (NSString)entityType
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSString *)self->_entityType copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (NSNumber)identifier
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSNumber *)self->_identifier copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)outputBlock
{
  [(NSLock *)self->_lock lock];
  v3 = [self->_outputBlock copy];
  [(NSLock *)self->_lock unlock];
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setEntityType:(id)type
{
  lock = self->_lock;
  typeCopy = type;
  [(NSLock *)lock lock];
  v6 = [typeCopy copy];

  entityType = self->_entityType;
  self->_entityType = v6;

  v8 = self->_lock;

  [(NSLock *)v8 unlock];
}

- (void)setIdentifier:(id)identifier
{
  lock = self->_lock;
  identifierCopy = identifier;
  [(NSLock *)lock lock];
  v6 = [identifierCopy copy];

  identifier = self->_identifier;
  self->_identifier = v6;

  v8 = self->_lock;

  [(NSLock *)v8 unlock];
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(NSLock *)self->_lock lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setValue:(id)value forProfileField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  [(NSLock *)self->_lock lock];
  if (!self->_parameters)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parameters = self->_parameters;
    self->_parameters = v7;
  }

  if ([fieldCopy isEqualToString:@"backgroundImage"] || objc_msgSend(fieldCopy, "isEqualToString:", @"profileImage"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v9 = [(SKUIMediaSocialUpdateProfileOperation *)self _imageDictionaryFromPhotoUpload:valueCopy];
    v10 = self->_parameters;
  }

  else
  {
    v11 = self->_parameters;
    v9 = [valueCopy copy];
    v10 = v11;
  }

  [(NSMutableDictionary *)v10 setObject:v9 forKey:fieldCopy];

LABEL_9:
  [(NSLock *)self->_lock unlock];
}

- (void)main
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__76;
  v30 = __Block_byref_object_dispose__76;
  v31 = 0;
  obj = 0;
  v3 = [(SKUIMediaSocialUpdateProfileOperation *)self _requestWithError:&obj];
  objc_storeStrong(&v31, obj);
  if (!v3)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v4 = [(SKUIClientContext *)self->_clientContext newLoadStoreURLOperationWithURLRequest:v3];
  consumer = [MEMORY[0x277D69D48] consumer];
  [v4 setDataConsumer:consumer];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__76;
  v23 = __Block_byref_object_dispose__76;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__SKUIMediaSocialUpdateProfileOperation_main__block_invoke;
  v18[3] = &unk_2781FBAC8;
  v18[4] = &v19;
  v18[5] = &v26;
  [v4 setOutputBlock:v18];
  [(SSVOperation *)self runChildOperation:v4];
  v6 = v20[5];
  if (!v6)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v7 = [v6 objectForKey:@"status"];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"success"])
    {
      v9 = 1;
      goto LABEL_12;
    }

    if (([v8 isEqualToString:@"handleAlreadyExists"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"ResourceAlreadyExists"))
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SKUIErrorDomain" code:5 userInfo:0];
      v11 = v27[5];
      v27[5] = v10;
    }
  }

  v9 = 0;
LABEL_12:

  if ((v9 & 1) == 0)
  {
LABEL_13:
    if (!v27[5])
    {
      uRLResponse = [v4 URLResponse];
      if ([uRLResponse statusCode] == 403)
      {
        v13 = 3;
      }

      else
      {
        v13 = 0;
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SKUIErrorDomain" code:v13 userInfo:0];
      v15 = v27[5];
      v27[5] = v14;
    }
  }

  _Block_object_dispose(&v19, 8);

LABEL_19:
  outputBlock = [(SKUIMediaSocialUpdateProfileOperation *)self outputBlock];
  v17 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v9, v27[5]);
  }

  _Block_object_dispose(&v26, 8);
}

void __45__SKUIMediaSocialUpdateProfileOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = v11;
LABEL_5:
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    goto LABEL_6;
  }

  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    goto LABEL_5;
  }

  v9 = SSError();
  v10 = *(*(a1 + 40) + 8);
  v8 = *(v10 + 40);
  *(v10 + 40) = v9;
LABEL_6:
}

- (id)_imageDictionaryFromPhotoUpload:(id)upload
{
  v3 = MEMORY[0x277CBEAC0];
  uploadCopy = upload;
  v5 = [v3 alloc];
  token = [uploadCopy token];
  tokenType = [uploadCopy tokenType];

  v8 = [v5 initWithObjectsAndKeys:{token, @"contentToken", tokenType, @"contentTokenType", 0}];

  return v8;
}

- (id)_requestWithError:(id *)error
{
  uRLBag = [(SKUIClientContext *)self->_clientContext URLBag];
  v6 = [uRLBag valueForKey:*MEMORY[0x277D6A670] error:error];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:@"updateProfile"];
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(SKUIMediaSocialUpdateProfileOperation *)self _requestBodyWithError:error];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CBAB50]);
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      v11 = [v9 initWithURL:v10];

      [v11 setHTTPMethod:@"POST"];
      [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      [v11 setHTTPBody:v8];
      SSVAddMediaSocialHeadersToURLRequest();
    }

    else
    {
      v11 = 0;
    }
  }

  else if (error)
  {
    SSError();
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_requestBodyWithError:(id *)error
{
  if (self->_entityType && self->_identifier && (parameters = self->_parameters) != 0)
  {
    v6 = [(NSMutableDictionary *)parameters mutableCopy];
    v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{self->_entityType, @"type", self->_identifier, @"id", 0}];
    [v6 setObject:v7 forKey:@"owner"];
    v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:error];
  }

  else
  {
    v8 = 0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SKUIErrorDomain" code:4 userInfo:0];
    }
  }

  return v8;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaSocialUpdateProfileOperation initWithClientContext:]";
}

@end