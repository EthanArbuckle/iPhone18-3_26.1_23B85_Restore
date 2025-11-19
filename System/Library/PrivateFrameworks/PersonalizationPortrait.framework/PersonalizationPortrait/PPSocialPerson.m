@interface PPSocialPerson
- (PPSocialPerson)initWithCoder:(id)a3;
- (PPSocialPerson)initWithHandle:(id)a3 displayName:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSocialPerson

- (PPSocialPerson)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = pp_social_highlights_log_handle();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"ha" withCoder:v5 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v7];

  v9 = MEMORY[0x1E69C5D78];
  v10 = objc_opt_class();
  v11 = pp_social_highlights_log_handle();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"dn" withCoder:v5 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v11];

  if (v8)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    self = [(PPSocialPerson *)self initWithHandle:v8 displayName:v12];
    v14 = self;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  [v5 encodeObject:handle forKey:@"ha"];
  [v5 encodeObject:self->_displayName forKey:@"dn"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PPSocialPerson *)self handle];
  v5 = [(PPSocialPerson *)self displayName];
  v6 = [v3 initWithFormat:@"<PPSocialPerson ha:'%@' dn:'%@'>", v4, v5];

  return v6;
}

- (PPSocialPerson)initWithHandle:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PPSocialPerson;
  v9 = [(PPSocialPerson *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, a3);
    objc_storeStrong(&v10->_displayName, a4);
  }

  return v10;
}

@end