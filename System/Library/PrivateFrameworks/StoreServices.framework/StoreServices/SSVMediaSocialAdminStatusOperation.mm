@interface SSVMediaSocialAdminStatusOperation
- (SSVMediaSocialAdminStatusOperation)init;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)block;
@end

@implementation SSVMediaSocialAdminStatusOperation

- (SSVMediaSocialAdminStatusOperation)init
{
  v6.receiver = self;
  v6.super_class = SSVMediaSocialAdminStatusOperation;
  v2 = [(SSVOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;

    [(NSLock *)v2->_lock setName:@"com.apple.MediaSocial.adminStatus"];
  }

  return v2;
}

- (id)outputBlock
{
  [(NSLock *)self->_lock lock];
  v3 = [self->_outputBlock copy];
  [(NSLock *)self->_lock unlock];
  v4 = MEMORY[0x1DA6DFBB0](v3);

  return v4;
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

- (void)main
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__71;
  v31 = __Block_byref_object_dispose__71;
  v32 = 0;
  uRLBagDictionary = [(SSVComplexOperation *)self URLBagDictionary];
  v4 = [uRLBagDictionary objectForKey:@"musicConnect"];

  if (!v4)
  {
    uRLBagDictionary2 = [(SSVComplexOperation *)self URLBagDictionary];
    v4 = [uRLBagDictionary2 objectForKey:@"aucAdminStatus"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKey:@"adminStatus"];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc(MEMORY[0x1E696AD68]);
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    v9 = [v7 initWithURL:v8];

    SSVAddMediaSocialHeadersToURLRequest(v9);
    v10 = [(SSVComplexOperation *)self newLoadURLOperationWithRequest:v9];
    v11 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
    [v10 setDataConsumer:v11];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__71;
    v25 = __Block_byref_object_dispose__71;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__SSVMediaSocialAdminStatusOperation_main__block_invoke;
    v20[3] = &unk_1E84B1CC8;
    v20[4] = &v21;
    v20[5] = &v27;
    [v10 setOutputBlock:v20];
    [(SSVOperation *)self runChildOperation:v10];
    v12 = v22[5];
    if (v12)
    {
      v13 = [v12 objectForKey:@"status"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 isEqualToString:@"success"];
      }

      else
      {
        v14 = 0;
      }

      v17 = [v22[5] objectForKey:@"isAdmin"];
      if (objc_opt_respondsToSelector())
      {
        bOOLValue = [v17 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
      v14 = 0;
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = SSError(@"SSErrorDomain", 124, 0, 0);
    bOOLValue = 0;
    v14 = 0;
    v9 = v28[5];
    v28[5] = v15;
  }

  outputBlock = [(SSVMediaSocialAdminStatusOperation *)self outputBlock];
  v19 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v14, bOOLValue, v28[5]);
  }

  _Block_object_dispose(&v27, 8);
}

void __42__SSVMediaSocialAdminStatusOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
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

  v9 = SSError(@"SSErrorDomain", 100, 0, 0);
  v10 = *(*(a1 + 40) + 8);
  v8 = *(v10 + 40);
  *(v10 + 40) = v9;
LABEL_6:
}

@end