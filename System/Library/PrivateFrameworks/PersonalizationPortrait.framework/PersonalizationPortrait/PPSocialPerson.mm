@interface PPSocialPerson
- (PPSocialPerson)initWithCoder:(id)coder;
- (PPSocialPerson)initWithHandle:(id)handle displayName:(id)name;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSocialPerson

- (PPSocialPerson)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = pp_social_highlights_log_handle();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"ha" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v7];

  v9 = MEMORY[0x1E69C5D78];
  v10 = objc_opt_class();
  v11 = pp_social_highlights_log_handle();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"dn" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v11];

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
    selfCopy = 0;
  }

  else
  {
    self = [(PPSocialPerson *)self initWithHandle:v8 displayName:v12];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"ha"];
  [coderCopy encodeObject:self->_displayName forKey:@"dn"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  handle = [(PPSocialPerson *)self handle];
  displayName = [(PPSocialPerson *)self displayName];
  v6 = [v3 initWithFormat:@"<PPSocialPerson ha:'%@' dn:'%@'>", handle, displayName];

  return v6;
}

- (PPSocialPerson)initWithHandle:(id)handle displayName:(id)name
{
  handleCopy = handle;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PPSocialPerson;
  v9 = [(PPSocialPerson *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, handle);
    objc_storeStrong(&v10->_displayName, name);
  }

  return v10;
}

@end