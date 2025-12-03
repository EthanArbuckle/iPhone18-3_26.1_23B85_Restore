@interface SYUserActivityIdentifierInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActivityIdentifierInfo:(id)info;
- (NSString)description;
- (SYUserActivityIdentifierInfo)initWithActivityType:(id)type;
- (SYUserActivityIdentifierInfo)initWithCoder:(id)coder;
- (SYUserActivityIdentifierInfo)initWithUserActivity:(id)activity;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SYUserActivityIdentifierInfo

- (SYUserActivityIdentifierInfo)initWithActivityType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    [(SYUserActivityIdentifierInfo *)a2 initWithActivityType:?];
  }

  v10.receiver = self;
  v10.super_class = SYUserActivityIdentifierInfo;
  v6 = [(SYUserActivityIdentifierInfo *)&v10 init];
  if (v6)
  {
    v7 = [typeCopy copy];
    activityType = v6->_activityType;
    v6->_activityType = v7;
  }

  return v6;
}

- (SYUserActivityIdentifierInfo)initWithUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [(SYUserActivityIdentifierInfo *)self initWithActivityType:activityType];

  if (v6)
  {
    webpageURL = [activityCopy webpageURL];
    v8 = [webpageURL copy];
    webpageURL = v6->_webpageURL;
    v6->_webpageURL = v8;

    _canonicalURL = [activityCopy _canonicalURL];
    v11 = [_canonicalURL copy];
    canonicalURL = v6->_canonicalURL;
    v6->_canonicalURL = v11;

    targetContentIdentifier = [activityCopy targetContentIdentifier];
    v14 = [targetContentIdentifier copy];
    targetContentIdentifier = v6->_targetContentIdentifier;
    v6->_targetContentIdentifier = v14;

    persistentIdentifier = [activityCopy persistentIdentifier];
    v17 = [persistentIdentifier copy];
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
  activityType = [(SYUserActivityIdentifierInfo *)self activityType];
  webpageURL = [(SYUserActivityIdentifierInfo *)self webpageURL];
  absoluteString = [webpageURL absoluteString];
  v5 = absoluteString;
  if (absoluteString)
  {
    v6 = absoluteString;
  }

  else
  {
    v6 = &stru_2838DFF18;
  }

  canonicalURL = [(SYUserActivityIdentifierInfo *)self canonicalURL];
  absoluteString2 = [canonicalURL absoluteString];
  v9 = absoluteString2;
  if (absoluteString2)
  {
    v10 = absoluteString2;
  }

  else
  {
    v10 = &stru_2838DFF18;
  }

  targetContentIdentifier = [(SYUserActivityIdentifierInfo *)self targetContentIdentifier];
  v12 = targetContentIdentifier;
  if (targetContentIdentifier)
  {
    v13 = targetContentIdentifier;
  }

  else
  {
    v13 = &stru_2838DFF18;
  }

  persistentIdentifier = [(SYUserActivityIdentifierInfo *)self persistentIdentifier];
  v15 = persistentIdentifier;
  if (persistentIdentifier)
  {
    v16 = persistentIdentifier;
  }

  else
  {
    v16 = &stru_2838DFF18;
  }

  v17 = [v20 stringByAppendingFormat:@" activityType: %@, webpageURL: %@, canonicalURL: %@, targetContentID: %@, persistendID: %@", activityType, v6, v10, v13, v16];

  return v17;
}

- (BOOL)isEqualToActivityIdentifierInfo:(id)info
{
  infoCopy = info;
  activityType = self->_activityType;
  activityType = [infoCopy activityType];
  LODWORD(activityType) = [(NSString *)activityType isEqualToString:activityType];

  if (activityType)
  {
    webpageURL = self->_webpageURL;
    webpageURL = [infoCopy webpageURL];
    if (webpageURL != webpageURL)
    {
      webpageURL2 = [infoCopy webpageURL];
      if (!webpageURL2)
      {
        LOBYTE(canonicalURL3) = 0;
        goto LABEL_36;
      }

      v3 = webpageURL2;
      v11 = self->_webpageURL;
      webpageURL3 = [infoCopy webpageURL];
      if (![(NSURL *)v11 isEqual:webpageURL3])
      {
        LOBYTE(canonicalURL3) = 0;
LABEL_35:

        goto LABEL_36;
      }

      v38 = webpageURL3;
    }

    canonicalURL = self->_canonicalURL;
    canonicalURL = [infoCopy canonicalURL];
    if (canonicalURL == canonicalURL)
    {
      v37 = canonicalURL;
    }

    else
    {
      canonicalURL2 = [infoCopy canonicalURL];
      if (!canonicalURL2)
      {
        LOBYTE(canonicalURL3) = 0;
LABEL_33:

LABEL_34:
        webpageURL3 = v38;
        if (webpageURL != webpageURL)
        {
          goto LABEL_35;
        }

LABEL_36:

        goto LABEL_37;
      }

      v17 = canonicalURL2;
      v18 = self->_canonicalURL;
      canonicalURL3 = [infoCopy canonicalURL];
      if (([(NSURL *)v18 isEqual:canonicalURL3]& 1) == 0)
      {

        LOBYTE(canonicalURL3) = 0;
        goto LABEL_34;
      }

      v37 = canonicalURL;
      v34 = canonicalURL3;
      v35 = v17;
    }

    targetContentIdentifier = self->_targetContentIdentifier;
    targetContentIdentifier = [infoCopy targetContentIdentifier];
    if (targetContentIdentifier == targetContentIdentifier)
    {
      v36 = v3;
    }

    else
    {
      canonicalURL3 = [infoCopy targetContentIdentifier];
      if (!canonicalURL3)
      {
LABEL_26:

LABEL_30:
        v30 = v37;
LABEL_31:
        if (v30 != canonicalURL)
        {
        }

        goto LABEL_33;
      }

      v21 = self->_targetContentIdentifier;
      targetContentIdentifier2 = [infoCopy targetContentIdentifier];
      v23 = v21;
      v24 = targetContentIdentifier2;
      if (![(NSString *)v23 isEqualToString:targetContentIdentifier2])
      {

        LOBYTE(canonicalURL3) = 0;
        goto LABEL_30;
      }

      v32 = v24;
      v33 = canonicalURL3;
      v36 = v3;
    }

    persistentIdentifier = self->_persistentIdentifier;
    persistentIdentifier = [infoCopy persistentIdentifier];
    LOBYTE(canonicalURL3) = persistentIdentifier == persistentIdentifier;
    if (persistentIdentifier != persistentIdentifier)
    {
      persistentIdentifier2 = [infoCopy persistentIdentifier];
      if (persistentIdentifier2)
      {
        v28 = persistentIdentifier2;
        canonicalURL3 = self->_persistentIdentifier;
        persistentIdentifier3 = [infoCopy persistentIdentifier];
        LOBYTE(canonicalURL3) = [canonicalURL3 isEqualToString:persistentIdentifier3];

        if (targetContentIdentifier != targetContentIdentifier)
        {
        }

        goto LABEL_27;
      }
    }

    if (targetContentIdentifier == targetContentIdentifier)
    {
LABEL_27:

      v3 = v36;
      v30 = v37;
      goto LABEL_31;
    }

    v3 = v36;
    goto LABEL_26;
  }

  LOBYTE(canonicalURL3) = 0;
LABEL_37:

  return canonicalURL3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SYUserActivityIdentifierInfo *)self isEqualToActivityIdentifierInfo:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  activityType = [(SYUserActivityIdentifierInfo *)self activityType];
  v4 = [activityType hash];
  webpageURL = [(SYUserActivityIdentifierInfo *)self webpageURL];
  v6 = [webpageURL hash] ^ v4;
  targetContentIdentifier = [(SYUserActivityIdentifierInfo *)self targetContentIdentifier];
  v8 = [targetContentIdentifier hash];
  persistentIdentifier = [(SYUserActivityIdentifierInfo *)self persistentIdentifier];
  v10 = v8 ^ [persistentIdentifier hash];

  return v6 ^ v10;
}

- (SYUserActivityIdentifierInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
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
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webpageURL"];
    webpageURL = v9->_webpageURL;
    v9->_webpageURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canonicalURL"];
    canonicalURL = v9->_canonicalURL;
    v9->_canonicalURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifier"];
    targetContentIdentifier = v9->_targetContentIdentifier;
    v9->_targetContentIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
    persistentIdentifier = v9->_persistentIdentifier;
    v9->_persistentIdentifier = v16;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityType = [(SYUserActivityIdentifierInfo *)self activityType];
  [coderCopy encodeObject:activityType forKey:@"activityType"];

  webpageURL = [(SYUserActivityIdentifierInfo *)self webpageURL];
  [coderCopy encodeObject:webpageURL forKey:@"webpageURL"];

  canonicalURL = [(SYUserActivityIdentifierInfo *)self canonicalURL];
  [coderCopy encodeObject:canonicalURL forKey:@"canonicalURL"];

  targetContentIdentifier = [(SYUserActivityIdentifierInfo *)self targetContentIdentifier];
  [coderCopy encodeObject:targetContentIdentifier forKey:@"targetContentIdentifier"];

  persistentIdentifier = [(SYUserActivityIdentifierInfo *)self persistentIdentifier];
  [coderCopy encodeObject:persistentIdentifier forKey:@"persistentIdentifier"];
}

- (void)initWithActivityType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYUserActivityIdentifierInfo.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"activityType"}];
}

@end