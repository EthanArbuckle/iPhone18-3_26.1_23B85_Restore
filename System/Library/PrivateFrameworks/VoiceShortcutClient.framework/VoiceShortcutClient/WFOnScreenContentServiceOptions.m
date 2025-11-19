@interface WFOnScreenContentServiceOptions
- ($115C4C562B26FF47E01F9F4EA65B5887)originatingProcessAuditToken;
- (WFOnScreenContentServiceOptions)init;
- (WFOnScreenContentServiceOptions)initWithCoder:(id)a3;
- (WFOnScreenContentServiceOptions)initWithSupportedItemClasses:(id)a3 originatingProcessAuditToken:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setOriginatingProcessAuditToken:(id *)a3;
@end

@implementation WFOnScreenContentServiceOptions

- (void)setOriginatingProcessAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *self->_originatingProcessAuditToken.val = *a3->var0;
  *&self->_originatingProcessAuditToken.val[4] = v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)originatingProcessAuditToken
{
  v3 = *self[1].var0;
  *retstr->var0 = *&self->var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFOnScreenContentServiceOptions *)self supportedItemClasses];
  [v4 encodeObject:v5 forKey:@"supportedItemClasses"];

  v6 = *&self->_originatingProcessAuditToken.val[4];
  v8[0] = *self->_originatingProcessAuditToken.val;
  v8[1] = v6;
  v7 = [MEMORY[0x1E695DEF0] if_dataWithAuditToken:v8];
  [v4 encodeObject:v7 forKey:@"originatingProcessAuditToken"];
}

- (WFOnScreenContentServiceOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFOnScreenContentServiceOptions;
  v5 = [(WFOnScreenContentServiceOptions *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"supportedItemClasses"];
    supportedItemClasses = v5->_supportedItemClasses;
    v5->_supportedItemClasses = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingProcessAuditToken"];
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

- (WFOnScreenContentServiceOptions)initWithSupportedItemClasses:(id)a3 originatingProcessAuditToken:(id *)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = WFOnScreenContentServiceOptions;
  v8 = [(WFOnScreenContentServiceOptions *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_supportedItemClasses, a3);
    v10 = *&a4->var0[4];
    *v9->_originatingProcessAuditToken.val = *a4->var0;
    *&v9->_originatingProcessAuditToken.val[4] = v10;
    v11 = v9;
  }

  return v9;
}

- (WFOnScreenContentServiceOptions)init
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = v3;
  if (v3)
  {
    [v3 if_auditToken];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = [(WFOnScreenContentServiceOptions *)self initWithSupportedItemClasses:&unk_1F29315A8 originatingProcessAuditToken:v7];

  return v5;
}

@end