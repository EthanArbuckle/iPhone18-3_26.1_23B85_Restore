@interface REElementOpenAction
- (BOOL)isEqual:(id)equal;
- (REElementOpenAction)initWithCoder:(id)coder;
- (REElementOpenAction)initWithURL:(id)l applicationID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_performWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REElementOpenAction

- (REElementOpenAction)initWithURL:(id)l applicationID:(id)d
{
  lCopy = l;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = REElementOpenAction;
  v9 = [(REElementOpenAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_applicationID, d);
  }

  return v10;
}

- (REElementOpenAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = REElementOpenAction;
  v5 = [(REElementAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectForKey:@"applicationID"];
    applicationID = v5->_applicationID;
    v5->_applicationID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = REElementOpenAction;
  coderCopy = coder;
  [(REElementAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"url", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_applicationID forKey:@"applicationID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REElementOpenAction;
  v4 = [(REElementOpenAction *)&v6 copy];
  objc_storeStrong(v4 + 3, self->_url);
  objc_storeStrong(v4 + 4, self->_applicationID);
  return v4;
}

- (void)_performWithContext:(id)context
{
  v4 = [(REElementOpenAction *)self url];
  if (v4)
  {
    v5 = v4;
    applicationID = [(REElementOpenAction *)self applicationID];

    if (applicationID)
    {
      v7 = [(REElementOpenAction *)self url];
      applicationID2 = [(REElementOpenAction *)self applicationID];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __43__REElementOpenAction__performWithContext___block_invoke;
      v9[3] = &unk_2785F9FF0;
      v9[4] = self;
      RELaunchApp(v7, applicationID2, v9);
    }
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = REElementOpenAction;
  v3 = [(REElementOpenAction *)&v7 description];
  url = self->_url;
  v5 = [v3 stringByAppendingFormat:@" url=%@, applicationId=%@", url, self->_applicationID];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[3];
    v7 = self->_url;
    v8 = v7;
    if (v7 == v6)
    {
    }

    else
    {
      v9 = [(NSURL *)v7 isEqual:v6];

      if (!v9)
      {
        v10 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    applicationID = self->_applicationID;
    v12 = v5[4];
    v13 = applicationID;
    v14 = v13;
    if (v13 == v12)
    {
      v10 = 1;
    }

    else
    {
      v10 = [(NSString *)v13 isEqual:v12];
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

@end