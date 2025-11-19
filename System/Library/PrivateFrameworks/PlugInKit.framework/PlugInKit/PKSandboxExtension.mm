@interface PKSandboxExtension
- (BOOL)isEqual:(id)a3;
- (PKSandboxExtension)initWithExtension:(id)a3 provider:(id)a4;
- (void)consume;
- (void)dealloc;
- (void)expel;
@end

@implementation PKSandboxExtension

- (void)expel
{
  if ([(PKSandboxExtension *)self handle]!= -1)
  {
    v3 = [(PKSandboxExtension *)self provider];
    v4 = [v3 sandbox_extension_release:{-[PKSandboxExtension handle](self, "handle")}];

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
    v3 = [(PKSandboxExtension *)self provider];
    v4 = [(PKSandboxExtension *)self token];
    -[PKSandboxExtension setHandle:](self, "setHandle:", [v3 sandbox_extension_consume:{objc_msgSend(v4, "UTF8String")}]);

    v5 = [(PKSandboxExtension *)self handle];
    v6 = pklog_handle_for_category(4);
    v7 = v6;
    if (v5 == -1)
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

- (PKSandboxExtension)initWithExtension:(id)a3 provider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKSandboxExtension;
  v9 = [(PKSandboxExtension *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_token, a3);
    v10->_handle = -1;
    objc_storeStrong(&v10->_provider, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKSandboxExtension *)self token];
    v6 = [v4 token];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end