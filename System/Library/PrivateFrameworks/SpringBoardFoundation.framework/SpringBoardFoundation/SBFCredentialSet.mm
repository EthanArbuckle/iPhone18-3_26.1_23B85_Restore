@interface SBFCredentialSet
- (SBFCredentialSet)initWithCoder:(id)coder;
- (SBFCredentialSet)initWithSerializedCredentialSet:(id)set;
- (id)serializedCredentialSet;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBFCredentialSet

- (SBFCredentialSet)initWithSerializedCredentialSet:(id)set
{
  setCopy = set;
  v15.receiver = self;
  v15.super_class = SBFCredentialSet;
  v6 = [(SBFCredentialSet *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (setCopy)
  {
    *(v6 + 16) = 0;
    objc_storeStrong(v6 + 3, set);
    v8 = ACMContextCreateWithExternalForm([setCopy bytes], objc_msgSend(setCopy, "length"));
    v7[1] = v8;
    if (!v8)
    {
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SBFCredentialSet initWithSerializedCredentialSet:v9];
      }

      v10 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v10 = v7;
    goto LABEL_12;
  }

  *(v6 + 16) = 1;
  v11 = ACMContextCreate(v6 + 1);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = SBLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(SBFCredentialSet *)v12 initWithSerializedCredentialSet:v13];
  }

  v10 = 0;
  v7[1] = 0;
LABEL_12:

  return v10;
}

- (void)dealloc
{
  acmContext = self->_acmContext;
  if (acmContext)
  {
    ACMContextDelete(acmContext, self->_ownsContext);
    self->_acmContext = 0;
  }

  v4.receiver = self;
  v4.super_class = SBFCredentialSet;
  [(SBFCredentialSet *)&v4 dealloc];
}

- (id)serializedCredentialSet
{
  cachedCredentials = self->_cachedCredentials;
  if (!cachedCredentials)
  {
    acmContext = self->_acmContext;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__SBFCredentialSet_serializedCredentialSet__block_invoke;
    v7[3] = &unk_1E8080200;
    v7[4] = self;
    ACMContextGetExternalForm(acmContext, v7);
    cachedCredentials = self->_cachedCredentials;
  }

  v5 = cachedCredentials;

  return v5;
}

uint64_t __43__SBFCredentialSet_serializedCredentialSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  return MEMORY[0x1EEE66BB8](v4, v6);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serializedCredentialSet = [(SBFCredentialSet *)self serializedCredentialSet];
  [coderCopy encodeDataObject:serializedCredentialSet];
}

- (SBFCredentialSet)initWithCoder:(id)coder
{
  decodeDataObject = [coder decodeDataObject];
  if (decodeDataObject)
  {
    self = [(SBFCredentialSet *)self initWithSerializedCredentialSet:decodeDataObject];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithSerializedCredentialSet:(int)a1 .cold.2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BEA11000, a2, OS_LOG_TYPE_ERROR, "ACMContextCreate failed: %d", v2, 8u);
}

@end