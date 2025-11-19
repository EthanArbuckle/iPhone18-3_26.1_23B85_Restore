@interface SYUserActivityIdentifierInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActivityIdentifierInfo:(id)a3;
- (NSString)description;
- (SYUserActivityIdentifierInfo)initWithActivityType:(id)a3;
- (SYUserActivityIdentifierInfo)initWithCoder:(id)a3;
- (SYUserActivityIdentifierInfo)initWithUserActivity:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SYUserActivityIdentifierInfo

- (SYUserActivityIdentifierInfo)initWithActivityType:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SYUserActivityIdentifierInfo *)a2 initWithActivityType:?];
  }

  v10.receiver = self;
  v10.super_class = SYUserActivityIdentifierInfo;
  v6 = [(SYUserActivityIdentifierInfo *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    activityType = v6->_activityType;
    v6->_activityType = v7;
  }

  return v6;
}

- (SYUserActivityIdentifierInfo)initWithUserActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [(SYUserActivityIdentifierInfo *)self initWithActivityType:v5];

  if (v6)
  {
    v7 = [v4 webpageURL];
    v8 = [v7 copy];
    webpageURL = v6->_webpageURL;
    v6->_webpageURL = v8;

    v10 = [v4 _canonicalURL];
    v11 = [v10 copy];
    canonicalURL = v6->_canonicalURL;
    v6->_canonicalURL = v11;

    v13 = [v4 targetContentIdentifier];
    v14 = [v13 copy];
    targetContentIdentifier = v6->_targetContentIdentifier;
    v6->_targetContentIdentifier = v14;

    v16 = [v4 persistentIdentifier];
    v17 = [v16 copy];
    persistentIdentifier = v6->_persistentIdentifier;
    v6->_persistentIdentifier = v17;
  }

  return v6;
}

- (NSString)description
{
  v21.receiver = self;
  v21.super_class = SYUserActivityIdentifierInfo;
  v20 = [(SYUserActivityIdentifierInfo *)&v21 description];
  v19 = [(SYUserActivityIdentifierInfo *)self activityType];
  v3 = [(SYUserActivityIdentifierInfo *)self webpageURL];
  v4 = [v3 absoluteString];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_2838DFF18;
  }

  v7 = [(SYUserActivityIdentifierInfo *)self canonicalURL];
  v8 = [v7 absoluteString];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2838DFF18;
  }

  v11 = [(SYUserActivityIdentifierInfo *)self targetContentIdentifier];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_2838DFF18;
  }

  v14 = [(SYUserActivityIdentifierInfo *)self persistentIdentifier];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_2838DFF18;
  }

  v17 = [v20 stringByAppendingFormat:@" activityType: %@, webpageURL: %@, canonicalURL: %@, targetContentID: %@, persistendID: %@", v19, v6, v10, v13, v16];

  return v17;
}

- (BOOL)isEqualToActivityIdentifierInfo:(id)a3
{
  v5 = a3;
  activityType = self->_activityType;
  v7 = [v5 activityType];
  LODWORD(activityType) = [(NSString *)activityType isEqualToString:v7];

  if (activityType)
  {
    webpageURL = self->_webpageURL;
    v9 = [v5 webpageURL];
    if (webpageURL != v9)
    {
      v10 = [v5 webpageURL];
      if (!v10)
      {
        LOBYTE(v13) = 0;
        goto LABEL_36;
      }

      v3 = v10;
      v11 = self->_webpageURL;
      v12 = [v5 webpageURL];
      if (![(NSURL *)v11 isEqual:v12])
      {
        LOBYTE(v13) = 0;
LABEL_35:

        goto LABEL_36;
      }

      v38 = v12;
    }

    canonicalURL = self->_canonicalURL;
    v15 = [v5 canonicalURL];
    if (canonicalURL == v15)
    {
      v37 = canonicalURL;
    }

    else
    {
      v16 = [v5 canonicalURL];
      if (!v16)
      {
        LOBYTE(v13) = 0;
LABEL_33:

LABEL_34:
        v12 = v38;
        if (webpageURL != v9)
        {
          goto LABEL_35;
        }

LABEL_36:

        goto LABEL_37;
      }

      v17 = v16;
      v18 = self->_canonicalURL;
      v13 = [v5 canonicalURL];
      if (([(NSURL *)v18 isEqual:v13]& 1) == 0)
      {

        LOBYTE(v13) = 0;
        goto LABEL_34;
      }

      v37 = canonicalURL;
      v34 = v13;
      v35 = v17;
    }

    targetContentIdentifier = self->_targetContentIdentifier;
    v20 = [v5 targetContentIdentifier];
    if (targetContentIdentifier == v20)
    {
      v36 = v3;
    }

    else
    {
      v13 = [v5 targetContentIdentifier];
      if (!v13)
      {
LABEL_26:

LABEL_30:
        v30 = v37;
LABEL_31:
        if (v30 != v15)
        {
        }

        goto LABEL_33;
      }

      v21 = self->_targetContentIdentifier;
      v22 = [v5 targetContentIdentifier];
      v23 = v21;
      v24 = v22;
      if (![(NSString *)v23 isEqualToString:v22])
      {

        LOBYTE(v13) = 0;
        goto LABEL_30;
      }

      v32 = v24;
      v33 = v13;
      v36 = v3;
    }

    persistentIdentifier = self->_persistentIdentifier;
    v26 = [v5 persistentIdentifier];
    LOBYTE(v13) = persistentIdentifier == v26;
    if (persistentIdentifier != v26)
    {
      v27 = [v5 persistentIdentifier];
      if (v27)
      {
        v28 = v27;
        v13 = self->_persistentIdentifier;
        v29 = [v5 persistentIdentifier];
        LOBYTE(v13) = [v13 isEqualToString:v29];

        if (targetContentIdentifier != v20)
        {
        }

        goto LABEL_27;
      }
    }

    if (targetContentIdentifier == v20)
    {
LABEL_27:

      v3 = v36;
      v30 = v37;
      goto LABEL_31;
    }

    v3 = v36;
    goto LABEL_26;
  }

  LOBYTE(v13) = 0;
LABEL_37:

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SYUserActivityIdentifierInfo *)self isEqualToActivityIdentifierInfo:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SYUserActivityIdentifierInfo *)self activityType];
  v4 = [v3 hash];
  v5 = [(SYUserActivityIdentifierInfo *)self webpageURL];
  v6 = [v5 hash] ^ v4;
  v7 = [(SYUserActivityIdentifierInfo *)self targetContentIdentifier];
  v8 = [v7 hash];
  v9 = [(SYUserActivityIdentifierInfo *)self persistentIdentifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (SYUserActivityIdentifierInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  v6 = v5;
  v7 = &stru_2838DFF18;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(SYUserActivityIdentifierInfo *)self initWithActivityType:v8];
  if (v9)
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webpageURL"];
    webpageURL = v9->_webpageURL;
    v9->_webpageURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"canonicalURL"];
    canonicalURL = v9->_canonicalURL;
    v9->_canonicalURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifier"];
    targetContentIdentifier = v9->_targetContentIdentifier;
    v9->_targetContentIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
    persistentIdentifier = v9->_persistentIdentifier;
    v9->_persistentIdentifier = v16;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SYUserActivityIdentifierInfo *)self activityType];
  [v4 encodeObject:v5 forKey:@"activityType"];

  v6 = [(SYUserActivityIdentifierInfo *)self webpageURL];
  [v4 encodeObject:v6 forKey:@"webpageURL"];

  v7 = [(SYUserActivityIdentifierInfo *)self canonicalURL];
  [v4 encodeObject:v7 forKey:@"canonicalURL"];

  v8 = [(SYUserActivityIdentifierInfo *)self targetContentIdentifier];
  [v4 encodeObject:v8 forKey:@"targetContentIdentifier"];

  v9 = [(SYUserActivityIdentifierInfo *)self persistentIdentifier];
  [v4 encodeObject:v9 forKey:@"persistentIdentifier"];
}

- (void)initWithActivityType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYUserActivityIdentifierInfo.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"activityType"}];
}

@end