@interface REMTemplatePublicLink
- (BOOL)isEqual:(id)a3;
- (REMTemplatePublicLink)initWithCoder:(id)a3;
- (REMTemplatePublicLink)initWithURL:(id)a3 configuration:(id)a4 creationDate:(id)a5 lastModifiedDate:(id)a6 expirationDate:(id)a7 canBeUpdated:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMTemplatePublicLink

- (REMTemplatePublicLink)initWithURL:(id)a3 configuration:(id)a4 creationDate:(id)a5 lastModifiedDate:(id)a6 expirationDate:(id)a7 canBeUpdated:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = REMTemplatePublicLink;
  v18 = [(REMTemplatePublicLink *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_url, a3);
    objc_storeStrong(&v19->_configuration, a4);
    objc_storeStrong(&v19->_creationDate, a5);
    objc_storeStrong(&v19->_lastModifiedDate, a6);
    objc_storeStrong(&v19->_expirationDate, a7);
    v19->_canBeUpdated = a8;
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMTemplatePublicLink *)self url];
  v6 = [(REMTemplatePublicLink *)self configuration];
  v7 = [(REMTemplatePublicLink *)self creationDate];
  v8 = [(REMTemplatePublicLink *)self lastModifiedDate];
  v9 = [(REMTemplatePublicLink *)self expirationDate];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplatePublicLink canBeUpdated](self, "canBeUpdated")}];
  v11 = [v3 stringWithFormat:@"<%@: %p url: %@, configuration: %@, creationDate: %@, lastModifiedDate: %@, expirationDate: %@, canBeUpdated: %@>", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = [(REMTemplatePublicLink *)self url];
  v6 = [v4 url];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMTemplatePublicLink *)self url];
    v9 = [v4 url];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_20;
    }
  }

  v11 = [(REMTemplatePublicLink *)self configuration];
  v12 = [v4 configuration];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMTemplatePublicLink *)self configuration];
    v15 = [v4 configuration];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  v17 = [(REMTemplatePublicLink *)self creationDate];
  v18 = [v4 creationDate];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [(REMTemplatePublicLink *)self creationDate];
    v21 = [v4 creationDate];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  v23 = [(REMTemplatePublicLink *)self lastModifiedDate];
  v24 = [v4 lastModifiedDate];
  v25 = v24;
  if (v23 == v24)
  {
  }

  else
  {
    v26 = [(REMTemplatePublicLink *)self lastModifiedDate];
    v27 = [v4 lastModifiedDate];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_20;
    }
  }

  v29 = [(REMTemplatePublicLink *)self expirationDate];
  v30 = [v4 expirationDate];
  v31 = v30;
  if (v29 == v30)
  {

    goto LABEL_23;
  }

  v32 = [(REMTemplatePublicLink *)self expirationDate];
  v33 = [v4 expirationDate];
  v34 = [v32 isEqual:v33];

  if (v34)
  {
LABEL_23:
    v37 = [(REMTemplatePublicLink *)self canBeUpdated];
    v35 = v37 ^ [v4 canBeUpdated] ^ 1;
    goto LABEL_21;
  }

LABEL_20:
  LOBYTE(v35) = 0;
LABEL_21:

  return v35;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMTemplatePublicLink alloc];
  v5 = [(REMTemplatePublicLink *)self url];
  v6 = [(REMTemplatePublicLink *)self configuration];
  v7 = [(REMTemplatePublicLink *)self creationDate];
  v8 = [(REMTemplatePublicLink *)self lastModifiedDate];
  v9 = [(REMTemplatePublicLink *)self expirationDate];
  v10 = [(REMTemplatePublicLink *)v4 initWithURL:v5 configuration:v6 creationDate:v7 lastModifiedDate:v8 expirationDate:v9 canBeUpdated:[(REMTemplatePublicLink *)self canBeUpdated]];

  return v10;
}

- (REMTemplatePublicLink)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v10 = [v4 decodeBoolForKey:@"canBeUpdated"];

  v11 = [(REMTemplatePublicLink *)self initWithURL:v5 configuration:v6 creationDate:v7 lastModifiedDate:v8 expirationDate:v9 canBeUpdated:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(REMTemplatePublicLink *)self url];
  [v9 encodeObject:v4 forKey:@"url"];

  v5 = [(REMTemplatePublicLink *)self configuration];
  [v9 encodeObject:v5 forKey:@"configuration"];

  v6 = [(REMTemplatePublicLink *)self creationDate];
  [v9 encodeObject:v6 forKey:@"creationDate"];

  v7 = [(REMTemplatePublicLink *)self lastModifiedDate];
  [v9 encodeObject:v7 forKey:@"lastModifiedDate"];

  v8 = [(REMTemplatePublicLink *)self expirationDate];
  [v9 encodeObject:v8 forKey:@"expirationDate"];

  [v9 encodeBool:-[REMTemplatePublicLink canBeUpdated](self forKey:{"canBeUpdated"), @"canBeUpdated"}];
}

@end