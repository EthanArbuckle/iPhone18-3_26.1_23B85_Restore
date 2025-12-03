@interface SFSafariCredential
- (BOOL)isEqual:(id)equal;
- (SFSafariCredential)initWithCoder:(id)coder;
- (SFSafariCredential)initWithExternalCredential:(id)credential;
- (SFSafariCredential)initWithOneTimeCode:(id)code;
- (SFSafariCredential)initWithUser:(id)user password:(id)password site:(id)site creationDate:(id)date customTitle:(id)title groupName:(id)name requestedHost:(id)host;
- (SFSafariCredential)initWithUser:(id)user password:(id)password site:(id)site creationDate:(id)date customTitle:(id)title requestedHost:(id)host;
- (SFSafariCredential)initWithUser:(id)user password:(id)password site:(id)site creationDate:(id)date requestedHost:(id)host;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSafariCredential

- (SFSafariCredential)initWithUser:(id)user password:(id)password site:(id)site creationDate:(id)date requestedHost:(id)host
{
  userCopy = user;
  passwordCopy = password;
  siteCopy = site;
  dateCopy = date;
  hostCopy = host;
  v28.receiver = self;
  v28.super_class = SFSafariCredential;
  v17 = [(SFSafariCredential *)&v28 init];
  if (v17)
  {
    v18 = [userCopy copy];
    user = v17->_user;
    v17->_user = v18;

    v20 = [passwordCopy copy];
    password = v17->_password;
    v17->_password = v20;

    v22 = [siteCopy copy];
    site = v17->_site;
    v17->_site = v22;

    objc_storeStrong(&v17->_creationDate, date);
    v24 = [hostCopy copy];
    requestedHost = v17->_requestedHost;
    v17->_requestedHost = v24;

    v26 = v17;
  }

  return v17;
}

- (SFSafariCredential)initWithUser:(id)user password:(id)password site:(id)site creationDate:(id)date customTitle:(id)title requestedHost:(id)host
{
  titleCopy = title;
  v15 = [(SFSafariCredential *)self initWithUser:user password:password site:site creationDate:date requestedHost:host];
  if (v15)
  {
    if ([titleCopy length])
    {
      v16 = [titleCopy copy];
      customTitle = v15->_customTitle;
      v15->_customTitle = v16;
    }

    v18 = v15;
  }

  return v15;
}

- (SFSafariCredential)initWithUser:(id)user password:(id)password site:(id)site creationDate:(id)date customTitle:(id)title groupName:(id)name requestedHost:(id)host
{
  titleCopy = title;
  nameCopy = name;
  v17 = [(SFSafariCredential *)self initWithUser:user password:password site:site creationDate:date requestedHost:host];
  if (v17)
  {
    if ([titleCopy length])
    {
      v18 = [titleCopy copy];
      customTitle = v17->_customTitle;
      v17->_customTitle = v18;
    }

    if ([nameCopy length])
    {
      v20 = [nameCopy copy];
      groupName = v17->_groupName;
      v17->_groupName = v20;
    }

    v22 = v17;
  }

  return v17;
}

- (SFSafariCredential)initWithOneTimeCode:(id)code
{
  codeCopy = code;
  v10.receiver = self;
  v10.super_class = SFSafariCredential;
  v5 = [(SFSafariCredential *)&v10 init];
  if (v5)
  {
    v6 = [codeCopy copy];
    oneTimeCode = v5->_oneTimeCode;
    v5->_oneTimeCode = v6;

    v8 = v5;
  }

  return v5;
}

- (SFSafariCredential)initWithExternalCredential:(id)credential
{
  credentialCopy = credential;
  v21.receiver = self;
  v21.super_class = SFSafariCredential;
  v6 = [(SFSafariCredential *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalCredential, credential);
    user = [(SFSafariPasswordCredential *)v7->_externalCredential user];
    user = v7->_user;
    v7->_user = user;

    password = [(SFSafariPasswordCredential *)v7->_externalCredential password];
    v11 = password;
    if (password)
    {
      v12 = password;
    }

    else
    {
      v12 = &stru_2875FD420;
    }

    objc_storeStrong(&v7->_password, v12);

    site = [(SFSafariPasswordCredential *)v7->_externalCredential site];
    site = v7->_site;
    v7->_site = site;

    creationDate = [(SFSafariPasswordCredential *)v7->_externalCredential creationDate];
    v16 = creationDate;
    if (creationDate)
    {
      distantPast = creationDate;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    creationDate = v7->_creationDate;
    v7->_creationDate = distantPast;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      externalCredential = self->_externalCredential;
      if (externalCredential)
      {
        externalCredential = [(SFSafariCredential *)v6 externalCredential];
        v9 = [(SFSafariPasswordCredential *)externalCredential isEqual:externalCredential];
      }

      else
      {
        user = self->_user;
        externalCredential = [(SFSafariCredential *)v6 user];
        if ([(NSString *)user isEqual:externalCredential])
        {
          password = self->_password;
          password = [(SFSafariCredential *)v6 password];
          if ([(NSString *)password isEqual:password])
          {
            site = self->_site;
            site = [(SFSafariCredential *)v6 site];
            if ([(NSString *)site isEqual:site])
            {
              creationDate = self->_creationDate;
              creationDate = [(SFSafariCredential *)v6 creationDate];
              if ([(NSDate *)creationDate isEqual:creationDate])
              {
                requestedHost = self->_requestedHost;
                requestedHost = [(SFSafariCredential *)v6 requestedHost];
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

- (SFSafariCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"externalCredential"];

  if (v6)
  {
    v7 = [(SFSafariCredential *)self initWithExternalCredential:v6];
  }

  else
  {
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"site"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customTitle"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oneTimeCode"];
    if (v13)
    {
      v7 = [(SFSafariCredential *)self initWithOneTimeCode:v13];
    }

    else
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedHost"];
      v7 = [(SFSafariCredential *)self initWithUser:v16 password:v8 site:v9 creationDate:v10 customTitle:v11 groupName:v12 requestedHost:v14];
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  externalCredential = self->_externalCredential;
  if (externalCredential)
  {
    coderCopy = coder;
    v5 = @"externalCredential";
    requestedHost = externalCredential;
  }

  else
  {
    user = self->_user;
    coderCopy2 = coder;
    [coderCopy2 encodeObject:user forKey:@"user"];
    [coderCopy2 encodeObject:self->_password forKey:@"password"];
    [coderCopy2 encodeObject:self->_site forKey:@"site"];
    [coderCopy2 encodeObject:self->_creationDate forKey:@"date"];
    [coderCopy2 encodeObject:self->_customTitle forKey:@"customTitle"];
    [coderCopy2 encodeObject:self->_groupName forKey:@"groupName"];
    [coderCopy2 encodeObject:self->_oneTimeCode forKey:@"oneTimeCode"];
    requestedHost = self->_requestedHost;
    v5 = @"requestedHost";
    coderCopy = coderCopy2;
  }

  [coderCopy encodeObject:requestedHost forKey:v5];
}

@end