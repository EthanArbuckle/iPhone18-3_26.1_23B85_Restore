@interface _SFPBPunchout
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPunchout)initWithDictionary:(id)dictionary;
- (_SFPBPunchout)initWithFacade:(id)facade;
- (_SFPBPunchout)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUrls:(id)urls;
- (void)setActionTarget:(id)target;
- (void)setBundleIdentifier:(id)identifier;
- (void)setLabel:(id)label;
- (void)setName:(id)name;
- (void)setUrls:(id)urls;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPunchout

- (_SFPBPunchout)initWithFacade:(id)facade
{
  v34 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBPunchout *)self init];
  if (v5)
  {
    name = [facadeCopy name];

    if (name)
    {
      name2 = [facadeCopy name];
      [(_SFPBPunchout *)v5 setName:name2];
    }

    bundleIdentifier = [facadeCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [facadeCopy bundleIdentifier];
      [(_SFPBPunchout *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    label = [facadeCopy label];

    if (label)
    {
      label2 = [facadeCopy label];
      [(_SFPBPunchout *)v5 setLabel:label2];
    }

    urls = [facadeCopy urls];
    if (urls)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    urls2 = [facadeCopy urls];
    v15 = [urls2 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(urls2);
          }

          v19 = [[_SFPBURL alloc] initWithNSURL:*(*(&v29 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [urls2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    [(_SFPBPunchout *)v5 setUrls:v13];
    userActivityData = [facadeCopy userActivityData];

    if (userActivityData)
    {
      v21 = [_SFPBUserActivityData alloc];
      userActivityData2 = [facadeCopy userActivityData];
      v23 = [(_SFPBUserActivityData *)v21 initWithFacade:userActivityData2];
      [(_SFPBPunchout *)v5 setUserActivityData:v23];
    }

    actionTarget = [facadeCopy actionTarget];

    if (actionTarget)
    {
      actionTarget2 = [facadeCopy actionTarget];
      [(_SFPBPunchout *)v5 setActionTarget:actionTarget2];
    }

    if ([facadeCopy hasIsRunnableInBackground])
    {
      -[_SFPBPunchout setIsRunnableInBackground:](v5, "setIsRunnableInBackground:", [facadeCopy isRunnableInBackground]);
    }

    if ([facadeCopy hasHasClip])
    {
      -[_SFPBPunchout setHasClip:](v5, "setHasClip:", [facadeCopy hasClip]);
    }

    if ([facadeCopy hasForceOpenInBrowser])
    {
      -[_SFPBPunchout setForceOpenInBrowser:](v5, "setForceOpenInBrowser:", [facadeCopy forceOpenInBrowser]);
    }

    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPunchout)initWithDictionary:(id)dictionary
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = _SFPBPunchout;
  v5 = [(_SFPBPunchout *)&v36 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPunchout *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPunchout *)v5 setBundleIdentifier:v9];
    }

    v31 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBPunchout *)v5 setLabel:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"urls"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v6;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v33;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v32 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[_SFPBURL alloc] initWithDictionary:v18];
              [(_SFPBPunchout *)v5 addUrls:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v15);
      }

      v6 = v30;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"userActivityData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBUserActivityData alloc] initWithDictionary:v20];
      [(_SFPBPunchout *)v5 setUserActivityData:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"actionTarget"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBPunchout *)v5 setActionTarget:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"isRunnableInBackground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPunchout setIsRunnableInBackground:](v5, "setIsRunnableInBackground:", [v24 BOOLValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"hasClip"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPunchout setHasClip:](v5, "setHasClip:", [v25 BOOLValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"forceOpenInBrowser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPunchout setForceOpenInBrowser:](v5, "setForceOpenInBrowser:", [v26 BOOLValue]);
    }

    v27 = v5;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPunchout)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPunchout *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPunchout *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_actionTarget)
  {
    actionTarget = [(_SFPBPunchout *)self actionTarget];
    v5 = [actionTarget copy];
    [dictionary setObject:v5 forKeyedSubscript:@"actionTarget"];
  }

  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(_SFPBPunchout *)self bundleIdentifier];
    v7 = [bundleIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_forceOpenInBrowser)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPunchout forceOpenInBrowser](self, "forceOpenInBrowser")}];
    [dictionary setObject:v8 forKeyedSubscript:@"forceOpenInBrowser"];
  }

  if (self->_hasClip)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPunchout hasClip](self, "hasClip")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasClip"];
  }

  if (self->_isRunnableInBackground)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPunchout isRunnableInBackground](self, "isRunnableInBackground")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isRunnableInBackground"];
  }

  if (self->_label)
  {
    label = [(_SFPBPunchout *)self label];
    v12 = [label copy];
    [dictionary setObject:v12 forKeyedSubscript:@"label"];
  }

  if (self->_name)
  {
    name = [(_SFPBPunchout *)self name];
    v14 = [name copy];
    [dictionary setObject:v14 forKeyedSubscript:@"name"];
  }

  if ([(NSArray *)self->_urls count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = self->_urls;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array forKeyedSubscript:@"urls"];
  }

  if (self->_userActivityData)
  {
    userActivityData = [(_SFPBPunchout *)self userActivityData];
    dictionaryRepresentation2 = [userActivityData dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"userActivityData"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"userActivityData"];
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_bundleIdentifier hash];
  v5 = [(NSString *)self->_label hash];
  v6 = [(NSArray *)self->_urls hash];
  v7 = [(_SFPBUserActivityData *)self->_userActivityData hash];
  v8 = [(NSString *)self->_actionTarget hash];
  v9 = 2654435761;
  if (self->_isRunnableInBackground)
  {
    v10 = 2654435761;
  }

  else
  {
    v10 = 0;
  }

  if (self->_hasClip)
  {
    v11 = 2654435761;
  }

  else
  {
    v11 = 0;
  }

  if (!self->_forceOpenInBrowser)
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  name = [(_SFPBPunchout *)self name];
  name2 = [equalCopy name];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_31;
  }

  name3 = [(_SFPBPunchout *)self name];
  if (name3)
  {
    v8 = name3;
    name4 = [(_SFPBPunchout *)self name];
    name5 = [equalCopy name];
    v11 = [name4 isEqual:name5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  name = [(_SFPBPunchout *)self bundleIdentifier];
  name2 = [equalCopy bundleIdentifier];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_31;
  }

  bundleIdentifier = [(_SFPBPunchout *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    v13 = bundleIdentifier;
    bundleIdentifier2 = [(_SFPBPunchout *)self bundleIdentifier];
    bundleIdentifier3 = [equalCopy bundleIdentifier];
    v16 = [bundleIdentifier2 isEqual:bundleIdentifier3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  name = [(_SFPBPunchout *)self label];
  name2 = [equalCopy label];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_31;
  }

  label = [(_SFPBPunchout *)self label];
  if (label)
  {
    v18 = label;
    label2 = [(_SFPBPunchout *)self label];
    label3 = [equalCopy label];
    v21 = [label2 isEqual:label3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  name = [(_SFPBPunchout *)self urls];
  name2 = [equalCopy urls];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_31;
  }

  urls = [(_SFPBPunchout *)self urls];
  if (urls)
  {
    v23 = urls;
    urls2 = [(_SFPBPunchout *)self urls];
    urls3 = [equalCopy urls];
    v26 = [urls2 isEqual:urls3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  name = [(_SFPBPunchout *)self userActivityData];
  name2 = [equalCopy userActivityData];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_31;
  }

  userActivityData = [(_SFPBPunchout *)self userActivityData];
  if (userActivityData)
  {
    v28 = userActivityData;
    userActivityData2 = [(_SFPBPunchout *)self userActivityData];
    userActivityData3 = [equalCopy userActivityData];
    v31 = [userActivityData2 isEqual:userActivityData3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  name = [(_SFPBPunchout *)self actionTarget];
  name2 = [equalCopy actionTarget];
  if ((name != 0) == (name2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  actionTarget = [(_SFPBPunchout *)self actionTarget];
  if (actionTarget)
  {
    v33 = actionTarget;
    actionTarget2 = [(_SFPBPunchout *)self actionTarget];
    actionTarget3 = [equalCopy actionTarget];
    v36 = [actionTarget2 isEqual:actionTarget3];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  isRunnableInBackground = self->_isRunnableInBackground;
  if (isRunnableInBackground == [equalCopy isRunnableInBackground])
  {
    hasClip = self->_hasClip;
    if (hasClip == [equalCopy hasClip])
    {
      forceOpenInBrowser = self->_forceOpenInBrowser;
      v37 = forceOpenInBrowser == [equalCopy forceOpenInBrowser];
      goto LABEL_33;
    }
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  name = [(_SFPBPunchout *)self name];
  if (name)
  {
    PBDataWriterWriteStringField();
  }

  bundleIdentifier = [(_SFPBPunchout *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  label = [(_SFPBPunchout *)self label];
  if (label)
  {
    PBDataWriterWriteStringField();
  }

  urls = [(_SFPBPunchout *)self urls];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [urls countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(urls);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [urls countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  userActivityData = [(_SFPBPunchout *)self userActivityData];
  if (userActivityData)
  {
    PBDataWriterWriteSubmessage();
  }

  actionTarget = [(_SFPBPunchout *)self actionTarget];
  if (actionTarget)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBPunchout *)self isRunnableInBackground])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBPunchout *)self hasClip])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBPunchout *)self forceOpenInBrowser])
  {
    PBDataWriterWriteBOOLField();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setActionTarget:(id)target
{
  v4 = [target copy];
  actionTarget = self->_actionTarget;
  self->_actionTarget = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addUrls:(id)urls
{
  urlsCopy = urls;
  urls = self->_urls;
  v8 = urlsCopy;
  if (!urls)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_urls;
    self->_urls = array;

    urlsCopy = v8;
    urls = self->_urls;
  }

  [(NSArray *)urls addObject:urlsCopy];
}

- (void)setUrls:(id)urls
{
  v4 = [urls copy];
  urls = self->_urls;
  self->_urls = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabel:(id)label
{
  v4 = [label copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

@end