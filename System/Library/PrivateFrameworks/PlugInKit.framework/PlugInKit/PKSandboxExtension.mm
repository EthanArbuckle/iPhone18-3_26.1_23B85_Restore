@interface PKSandboxExtension
- (BOOL)isEqual:(id)equal;
- (PKSandboxExtension)initWithExtension:(id)extension provider:(id)provider;
- (void)consume;
- (void)dealloc;
- (void)expel;
@end

@implementation PKSandboxExtension

- (void)expel
{
  if ([(PKSandboxExtension *)self handle]!= -1)
  {
    provider = [(PKSandboxExtension *)self provider];
    v4 = [provider sandbox_extension_release:{-[PKSandboxExtension handle](self, "handle")}];

    v5 = pklog_handle_for_category(4);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B7538(self);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1C6895964(self);
    }

    [(PKSandboxExtension *)self setHandle:-1];
  }
}

- (void)dealloc
{
  [(PKSandboxExtension *)self expel];
  v3.receiver = self;
  v3.super_class = PKSandboxExtension;
  [(PKSandboxExtension *)&v3 dealloc];
}

- (void)consume
{
  if ([(PKSandboxExtension *)self handle]== -1)
  {
    provider = [(PKSandboxExtension *)self provider];
    token = [(PKSandboxExtension *)self token];
    -[PKSandboxExtension setHandle:](self, "setHandle:", [provider sandbox_extension_consume:{objc_msgSend(token, "UTF8String")}]);

    handle = [(PKSandboxExtension *)self handle];
    v6 = pklog_handle_for_category(4);
    v7 = v6;
    if (handle == -1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B74B0();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1C689585C(self);
    }
  }
}

- (PKSandboxExtension)initWithExtension:(id)extension provider:(id)provider
{
  extensionCopy = extension;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PKSandboxExtension;
  v9 = [(PKSandboxExtension *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_token, extension);
    v10->_handle = -1;
    objc_storeStrong(&v10->_provider, provider);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    token = [(PKSandboxExtension *)self token];
    token2 = [equalCopy token];
    v7 = [token isEqualToString:token2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end