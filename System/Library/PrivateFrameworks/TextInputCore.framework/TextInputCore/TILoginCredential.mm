@interface TILoginCredential
- (BOOL)isEqual:(id)equal;
- (TILoginCredential)initWithUsername:(id)username password:(id)password site:(id)site;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TILoginCredential

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  username = [(TILoginCredential *)self username];
  [v3 appendFormat:@"; username = %@", username];

  password = [(TILoginCredential *)self password];
  [v3 appendFormat:@"; password = %@", password];

  site = [(TILoginCredential *)self site];
  [v3 appendFormat:@"; site = %@", site];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    username = [(TILoginCredential *)self username];
    username2 = [v5 username];
    v8 = username2;
    if (username == username2)
    {
    }

    else
    {
      username3 = [(TILoginCredential *)self username];
      username4 = [(TILoginCredential *)self username];
      v11 = [username3 isEqual:username4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    password = [(TILoginCredential *)self password];
    password2 = [v5 password];
    v15 = password2;
    if (password == password2)
    {
    }

    else
    {
      password3 = [(TILoginCredential *)self password];
      password4 = [(TILoginCredential *)self password];
      v18 = [password3 isEqual:password4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    site = [(TILoginCredential *)self site];
    site2 = [v5 site];
    if (site == site2)
    {
      v12 = 1;
    }

    else
    {
      site3 = [(TILoginCredential *)self site];
      site4 = [(TILoginCredential *)self site];
      v12 = [site3 isEqual:site4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(NSString *)self->_username copy];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(NSString *)self->_password copy];
    v8 = v4[2];
    v4[2] = v7;

    v9 = [(NSString *)self->_site copy];
    v10 = v4[3];
    v4[3] = v9;
  }

  return v4;
}

- (TILoginCredential)initWithUsername:(id)username password:(id)password site:(id)site
{
  usernameCopy = username;
  passwordCopy = password;
  siteCopy = site;
  v15.receiver = self;
  v15.super_class = TILoginCredential;
  v12 = [(TILoginCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_username, username);
    objc_storeStrong(&v13->_password, password);
    objc_storeStrong(&v13->_site, site);
  }

  return v13;
}

@end