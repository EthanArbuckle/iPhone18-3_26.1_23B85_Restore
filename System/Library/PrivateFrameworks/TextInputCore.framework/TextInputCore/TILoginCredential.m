@interface TILoginCredential
- (BOOL)isEqual:(id)a3;
- (TILoginCredential)initWithUsername:(id)a3 password:(id)a4 site:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TILoginCredential

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(TILoginCredential *)self username];
  [v3 appendFormat:@"; username = %@", v4];

  v5 = [(TILoginCredential *)self password];
  [v3 appendFormat:@"; password = %@", v5];

  v6 = [(TILoginCredential *)self site];
  [v3 appendFormat:@"; site = %@", v6];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(TILoginCredential *)self username];
    v7 = [v5 username];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(TILoginCredential *)self username];
      v10 = [(TILoginCredential *)self username];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(TILoginCredential *)self password];
    v14 = [v5 password];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(TILoginCredential *)self password];
      v17 = [(TILoginCredential *)self password];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(TILoginCredential *)self site];
    v20 = [v5 site];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(TILoginCredential *)self site];
      v22 = [(TILoginCredential *)self site];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (TILoginCredential)initWithUsername:(id)a3 password:(id)a4 site:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TILoginCredential;
  v12 = [(TILoginCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_username, a3);
    objc_storeStrong(&v13->_password, a4);
    objc_storeStrong(&v13->_site, a5);
  }

  return v13;
}

@end