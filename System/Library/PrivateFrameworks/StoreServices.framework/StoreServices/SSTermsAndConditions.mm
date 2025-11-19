@interface SSTermsAndConditions
- (SSTermsAndConditions)initWithResponseData:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SSTermsAndConditions

- (SSTermsAndConditions)initWithResponseData:(id)a3 error:(id *)a4
{
  v21 = 0;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v21];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_18:
    if (!a4)
    {
      return 0;
    }

    v17 = v21;
    if (!v21)
    {
      v17 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

    v8 = 0;
    *a4 = v17;
    return v8;
  }

  v20.receiver = self;
  v20.super_class = SSTermsAndConditions;
  v7 = [(SSTermsAndConditions *)&v20 init];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [v6 objectForKey:@"errorNumber"];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 integerValue];
    v12 = v10 == 5300 || v10 == 5601;
    v8->_requiresAuthentication = v12;
  }

  v13 = [v6 objectForKey:@"latestTermsVersionId"];
  if (objc_opt_respondsToSelector())
  {
    v8->_versionID = [v13 longLongValue];
  }

  v14 = [v6 objectForKey:@"isCurrent"];
  if (objc_opt_respondsToSelector())
  {
    v8->_userAccepted = [v14 BOOLValue];
  }

  v15 = [v6 objectForKey:@"termsContentText"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
LABEL_25:
    v8->_text = [v16 copy];
    return v8;
  }

  v18 = [v6 objectForKey:@"termsContextText"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v18;
    goto LABEL_25;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSTermsAndConditions;
  [(SSTermsAndConditions *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_requiresAuthentication;
  *(v5 + 16) = [(NSString *)self->_text copyWithZone:a3];
  *(v5 + 24) = self->_userAccepted;
  *(v5 + 32) = self->_versionID;
  return v5;
}

@end