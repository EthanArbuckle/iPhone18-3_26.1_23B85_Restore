@interface SFSafariCredential
- (BOOL)isEqual:(id)a3;
- (SFSafariCredential)initWithCoder:(id)a3;
- (SFSafariCredential)initWithExternalCredential:(id)a3;
- (SFSafariCredential)initWithOneTimeCode:(id)a3;
- (SFSafariCredential)initWithUser:(id)a3 password:(id)a4 site:(id)a5 creationDate:(id)a6 customTitle:(id)a7 groupName:(id)a8 requestedHost:(id)a9;
- (SFSafariCredential)initWithUser:(id)a3 password:(id)a4 site:(id)a5 creationDate:(id)a6 customTitle:(id)a7 requestedHost:(id)a8;
- (SFSafariCredential)initWithUser:(id)a3 password:(id)a4 site:(id)a5 creationDate:(id)a6 requestedHost:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSafariCredential

- (SFSafariCredential)initWithUser:(id)a3 password:(id)a4 site:(id)a5 creationDate:(id)a6 requestedHost:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = SFSafariCredential;
  v17 = [(SFSafariCredential *)&v28 init];
  if (v17)
  {
    v18 = [v12 copy];
    user = v17->_user;
    v17->_user = v18;

    v20 = [v13 copy];
    password = v17->_password;
    v17->_password = v20;

    v22 = [v14 copy];
    site = v17->_site;
    v17->_site = v22;

    objc_storeStrong(&v17->_creationDate, a6);
    v24 = [v16 copy];
    requestedHost = v17->_requestedHost;
    v17->_requestedHost = v24;

    v26 = v17;
  }

  return v17;
}

- (SFSafariCredential)initWithUser:(id)a3 password:(id)a4 site:(id)a5 creationDate:(id)a6 customTitle:(id)a7 requestedHost:(id)a8
{
  v14 = a7;
  v15 = [(SFSafariCredential *)self initWithUser:a3 password:a4 site:a5 creationDate:a6 requestedHost:a8];
  if (v15)
  {
    if ([v14 length])
    {
      v16 = [v14 copy];
      customTitle = v15->_customTitle;
      v15->_customTitle = v16;
    }

    v18 = v15;
  }

  return v15;
}

- (SFSafariCredential)initWithUser:(id)a3 password:(id)a4 site:(id)a5 creationDate:(id)a6 customTitle:(id)a7 groupName:(id)a8 requestedHost:(id)a9
{
  v15 = a7;
  v16 = a8;
  v17 = [(SFSafariCredential *)self initWithUser:a3 password:a4 site:a5 creationDate:a6 requestedHost:a9];
  if (v17)
  {
    if ([v15 length])
    {
      v18 = [v15 copy];
      customTitle = v17->_customTitle;
      v17->_customTitle = v18;
    }

    if ([v16 length])
    {
      v20 = [v16 copy];
      groupName = v17->_groupName;
      v17->_groupName = v20;
    }

    v22 = v17;
  }

  return v17;
}

- (SFSafariCredential)initWithOneTimeCode:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFSafariCredential;
  v5 = [(SFSafariCredential *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    oneTimeCode = v5->_oneTimeCode;
    v5->_oneTimeCode = v6;

    v8 = v5;
  }

  return v5;
}

- (SFSafariCredential)initWithExternalCredential:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = SFSafariCredential;
  v6 = [(SFSafariCredential *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalCredential, a3);
    v8 = [(SFSafariPasswordCredential *)v7->_externalCredential user];
    user = v7->_user;
    v7->_user = v8;

    v10 = [(SFSafariPasswordCredential *)v7->_externalCredential password];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_2875FD420;
    }

    objc_storeStrong(&v7->_password, v12);

    v13 = [(SFSafariPasswordCredential *)v7->_externalCredential site];
    site = v7->_site;
    v7->_site = v13;

    v15 = [(SFSafariPasswordCredential *)v7->_externalCredential creationDate];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [MEMORY[0x277CBEAA8] distantPast];
    }

    creationDate = v7->_creationDate;
    v7->_creationDate = v17;

    objc_opt_class();
    v7->_isExternalPasskey = objc_opt_isKindOfClass() & 1;
    v19 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  user = self->_user;
  return [v3 stringWithFormat:@"<%@: %p; site = %@; user = %@; date = %@", v4, self, self->_site, user, self->_creationDate];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      externalCredential = self->_externalCredential;
      if (externalCredential)
      {
        v8 = [(SFSafariCredential *)v6 externalCredential];
        v9 = [(SFSafariPasswordCredential *)externalCredential isEqual:v8];
      }

      else
      {
        user = self->_user;
        v8 = [(SFSafariCredential *)v6 user];
        if ([(NSString *)user isEqual:v8])
        {
          password = self->_password;
          v12 = [(SFSafariCredential *)v6 password];
          if ([(NSString *)password isEqual:v12])
          {
            site = self->_site;
            v14 = [(SFSafariCredential *)v6 site];
            if ([(NSString *)site isEqual:v14])
            {
              creationDate = self->_creationDate;
              v16 = [(SFSafariCredential *)v6 creationDate];
              if ([(NSDate *)creationDate isEqual:v16])
              {
                requestedHost = self->_requestedHost;
                v18 = [(SFSafariCredential *)v6 requestedHost];
                v9 = WBSIsEqual();
              }

              else
              {
                v9 = 0;
              }
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  externalCredential = self->_externalCredential;
  if (externalCredential)
  {

    return [(SFSafariPasswordCredential *)externalCredential hash];
  }

  else
  {
    v5 = [(NSString *)self->_user hash];
    v6 = [(NSString *)self->_password hash]^ v5;
    v7 = [(NSString *)self->_site hash];
    return v6 ^ v7 ^ [(NSDate *)self->_creationDate hash];
  }
}

- (SFSafariCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"externalCredential"];

  if (v6)
  {
    v7 = [(SFSafariCredential *)self initWithExternalCredential:v6];
  }

  else
  {
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"site"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customTitle"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oneTimeCode"];
    if (v13)
    {
      v7 = [(SFSafariCredential *)self initWithOneTimeCode:v13];
    }

    else
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedHost"];
      v7 = [(SFSafariCredential *)self initWithUser:v16 password:v8 site:v9 creationDate:v10 customTitle:v11 groupName:v12 requestedHost:v14];
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  externalCredential = self->_externalCredential;
  if (externalCredential)
  {
    v4 = a3;
    v5 = @"externalCredential";
    requestedHost = externalCredential;
  }

  else
  {
    user = self->_user;
    v9 = a3;
    [v9 encodeObject:user forKey:@"user"];
    [v9 encodeObject:self->_password forKey:@"password"];
    [v9 encodeObject:self->_site forKey:@"site"];
    [v9 encodeObject:self->_creationDate forKey:@"date"];
    [v9 encodeObject:self->_customTitle forKey:@"customTitle"];
    [v9 encodeObject:self->_groupName forKey:@"groupName"];
    [v9 encodeObject:self->_oneTimeCode forKey:@"oneTimeCode"];
    requestedHost = self->_requestedHost;
    v5 = @"requestedHost";
    v4 = v9;
  }

  [v4 encodeObject:requestedHost forKey:v5];
}

@end