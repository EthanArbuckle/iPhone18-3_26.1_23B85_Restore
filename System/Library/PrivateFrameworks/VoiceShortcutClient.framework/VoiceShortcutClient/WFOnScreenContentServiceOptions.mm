@interface WFOnScreenContentServiceOptions
- ($115C4C562B26FF47E01F9F4EA65B5887)originatingProcessAuditToken;
- (WFOnScreenContentServiceOptions)init;
- (WFOnScreenContentServiceOptions)initWithCoder:(id)coder;
- (WFOnScreenContentServiceOptions)initWithSupportedItemClasses:(id)classes originatingProcessAuditToken:(id *)token;
- (void)encodeWithCoder:(id)coder;
- (void)setOriginatingProcessAuditToken:(id *)token;
@end

@implementation WFOnScreenContentServiceOptions

- (void)setOriginatingProcessAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_originatingProcessAuditToken.val = *token->var0;
  *&self->_originatingProcessAuditToken.val[4] = v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)originatingProcessAuditToken
{
  v3 = *self[1].var0;
  *retstr->var0 = *&self->var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  supportedItemClasses = [(WFOnScreenContentServiceOptions *)self supportedItemClasses];
  [coderCopy encodeObject:supportedItemClasses forKey:@"supportedItemClasses"];

  v6 = *&self->_originatingProcessAuditToken.val[4];
  v8[0] = *self->_originatingProcessAuditToken.val;
  v8[1] = v6;
  v7 = [MEMORY[0x1E695DEF0] if_dataWithAuditToken:v8];
  [coderCopy encodeObject:v7 forKey:@"originatingProcessAuditToken"];
}

- (WFOnScreenContentServiceOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = WFOnScreenContentServiceOptions;
  v5 = [(WFOnScreenContentServiceOptions *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedItemClasses"];
    supportedItemClasses = v5->_supportedItemClasses;
    v5->_supportedItemClasses = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingProcessAuditToken"];
    v12 = v11;
    if (v11)
    {
      [v11 if_auditToken];
      *v5->_originatingProcessAuditToken.val = v15;
      *&v5->_originatingProcessAuditToken.val[4] = v16;
    }

    v13 = v5;
  }

  return v5;
}

- (WFOnScreenContentServiceOptions)initWithSupportedItemClasses:(id)classes originatingProcessAuditToken:(id *)token
{
  classesCopy = classes;
  v13.receiver = self;
  v13.super_class = WFOnScreenContentServiceOptions;
  v8 = [(WFOnScreenContentServiceOptions *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_supportedItemClasses, classes);
    v10 = *&token->var0[4];
    *v9->_originatingProcessAuditToken.val = *token->var0;
    *&v9->_originatingProcessAuditToken.val[4] = v10;
    v11 = v9;
  }

  return v9;
}

- (WFOnScreenContentServiceOptions)init
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v4 = processInfo;
  if (processInfo)
  {
    [processInfo if_auditToken];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = [(WFOnScreenContentServiceOptions *)self initWithSupportedItemClasses:&unk_1F29315A8 originatingProcessAuditToken:v7];

  return v5;
}

@end