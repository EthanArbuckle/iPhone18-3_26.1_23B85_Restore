@interface REMTemplatePublicLink
- (BOOL)isEqual:(id)equal;
- (REMTemplatePublicLink)initWithCoder:(id)coder;
- (REMTemplatePublicLink)initWithURL:(id)l configuration:(id)configuration creationDate:(id)date lastModifiedDate:(id)modifiedDate expirationDate:(id)expirationDate canBeUpdated:(BOOL)updated;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTemplatePublicLink

- (REMTemplatePublicLink)initWithURL:(id)l configuration:(id)configuration creationDate:(id)date lastModifiedDate:(id)modifiedDate expirationDate:(id)expirationDate canBeUpdated:(BOOL)updated
{
  lCopy = l;
  configurationCopy = configuration;
  dateCopy = date;
  modifiedDateCopy = modifiedDate;
  expirationDateCopy = expirationDate;
  v23.receiver = self;
  v23.super_class = REMTemplatePublicLink;
  v18 = [(REMTemplatePublicLink *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_url, l);
    objc_storeStrong(&v19->_configuration, configuration);
    objc_storeStrong(&v19->_creationDate, date);
    objc_storeStrong(&v19->_lastModifiedDate, modifiedDate);
    objc_storeStrong(&v19->_expirationDate, expirationDate);
    v19->_canBeUpdated = updated;
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMTemplatePublicLink *)self url];
  configuration = [(REMTemplatePublicLink *)self configuration];
  creationDate = [(REMTemplatePublicLink *)self creationDate];
  lastModifiedDate = [(REMTemplatePublicLink *)self lastModifiedDate];
  expirationDate = [(REMTemplatePublicLink *)self expirationDate];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplatePublicLink canBeUpdated](self, "canBeUpdated")}];
  v11 = [v3 stringWithFormat:@"<%@: %p url: %@, configuration: %@, creationDate: %@, lastModifiedDate: %@, expirationDate: %@, canBeUpdated: %@>", v4, self, v5, configuration, creationDate, lastModifiedDate, expirationDate, v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = [(REMTemplatePublicLink *)self url];
  v6 = [equalCopy url];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMTemplatePublicLink *)self url];
    v9 = [equalCopy url];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_20;
    }
  }

  configuration = [(REMTemplatePublicLink *)self configuration];
  configuration2 = [equalCopy configuration];
  v13 = configuration2;
  if (configuration == configuration2)
  {
  }

  else
  {
    configuration3 = [(REMTemplatePublicLink *)self configuration];
    configuration4 = [equalCopy configuration];
    v16 = [configuration3 isEqual:configuration4];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  creationDate = [(REMTemplatePublicLink *)self creationDate];
  creationDate2 = [equalCopy creationDate];
  v19 = creationDate2;
  if (creationDate == creationDate2)
  {
  }

  else
  {
    creationDate3 = [(REMTemplatePublicLink *)self creationDate];
    creationDate4 = [equalCopy creationDate];
    v22 = [creationDate3 isEqual:creationDate4];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  lastModifiedDate = [(REMTemplatePublicLink *)self lastModifiedDate];
  lastModifiedDate2 = [equalCopy lastModifiedDate];
  v25 = lastModifiedDate2;
  if (lastModifiedDate == lastModifiedDate2)
  {
  }

  else
  {
    lastModifiedDate3 = [(REMTemplatePublicLink *)self lastModifiedDate];
    lastModifiedDate4 = [equalCopy lastModifiedDate];
    v28 = [lastModifiedDate3 isEqual:lastModifiedDate4];

    if (!v28)
    {
      goto LABEL_20;
    }
  }

  expirationDate = [(REMTemplatePublicLink *)self expirationDate];
  expirationDate2 = [equalCopy expirationDate];
  v31 = expirationDate2;
  if (expirationDate == expirationDate2)
  {

    goto LABEL_23;
  }

  expirationDate3 = [(REMTemplatePublicLink *)self expirationDate];
  expirationDate4 = [equalCopy expirationDate];
  v34 = [expirationDate3 isEqual:expirationDate4];

  if (v34)
  {
LABEL_23:
    canBeUpdated = [(REMTemplatePublicLink *)self canBeUpdated];
    v35 = canBeUpdated ^ [equalCopy canBeUpdated] ^ 1;
    goto LABEL_21;
  }

LABEL_20:
  LOBYTE(v35) = 0;
LABEL_21:

  return v35;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMTemplatePublicLink alloc];
  v5 = [(REMTemplatePublicLink *)self url];
  configuration = [(REMTemplatePublicLink *)self configuration];
  creationDate = [(REMTemplatePublicLink *)self creationDate];
  lastModifiedDate = [(REMTemplatePublicLink *)self lastModifiedDate];
  expirationDate = [(REMTemplatePublicLink *)self expirationDate];
  v10 = [(REMTemplatePublicLink *)v4 initWithURL:v5 configuration:configuration creationDate:creationDate lastModifiedDate:lastModifiedDate expirationDate:expirationDate canBeUpdated:[(REMTemplatePublicLink *)self canBeUpdated]];

  return v10;
}

- (REMTemplatePublicLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v10 = [coderCopy decodeBoolForKey:@"canBeUpdated"];

  v11 = [(REMTemplatePublicLink *)self initWithURL:v5 configuration:v6 creationDate:v7 lastModifiedDate:v8 expirationDate:v9 canBeUpdated:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(REMTemplatePublicLink *)self url];
  [coderCopy encodeObject:v4 forKey:@"url"];

  configuration = [(REMTemplatePublicLink *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  creationDate = [(REMTemplatePublicLink *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  lastModifiedDate = [(REMTemplatePublicLink *)self lastModifiedDate];
  [coderCopy encodeObject:lastModifiedDate forKey:@"lastModifiedDate"];

  expirationDate = [(REMTemplatePublicLink *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  [coderCopy encodeBool:-[REMTemplatePublicLink canBeUpdated](self forKey:{"canBeUpdated"), @"canBeUpdated"}];
}

@end