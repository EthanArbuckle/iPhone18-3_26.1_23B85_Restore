@interface _SFPBPunchout
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPunchout)initWithDictionary:(id)a3;
- (_SFPBPunchout)initWithFacade:(id)a3;
- (_SFPBPunchout)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUrls:(id)a3;
- (void)setActionTarget:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setLabel:(id)a3;
- (void)setName:(id)a3;
- (void)setUrls:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPunchout

- (_SFPBPunchout)initWithFacade:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBPunchout *)self init];
  if (v5)
  {
    v6 = [v4 name];

    if (v6)
    {
      v7 = [v4 name];
      [(_SFPBPunchout *)v5 setName:v7];
    }

    v8 = [v4 bundleIdentifier];

    if (v8)
    {
      v9 = [v4 bundleIdentifier];
      [(_SFPBPunchout *)v5 setBundleIdentifier:v9];
    }

    v10 = [v4 label];

    if (v10)
    {
      v11 = [v4 label];
      [(_SFPBPunchout *)v5 setLabel:v11];
    }

    v12 = [v4 urls];
    if (v12)
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
    v14 = [v4 urls];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [[_SFPBURL alloc] initWithNSURL:*(*(&v29 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    [(_SFPBPunchout *)v5 setUrls:v13];
    v20 = [v4 userActivityData];

    if (v20)
    {
      v21 = [_SFPBUserActivityData alloc];
      v22 = [v4 userActivityData];
      v23 = [(_SFPBUserActivityData *)v21 initWithFacade:v22];
      [(_SFPBPunchout *)v5 setUserActivityData:v23];
    }

    v24 = [v4 actionTarget];

    if (v24)
    {
      v25 = [v4 actionTarget];
      [(_SFPBPunchout *)v5 setActionTarget:v25];
    }

    if ([v4 hasIsRunnableInBackground])
    {
      -[_SFPBPunchout setIsRunnableInBackground:](v5, "setIsRunnableInBackground:", [v4 isRunnableInBackground]);
    }

    if ([v4 hasHasClip])
    {
      -[_SFPBPunchout setHasClip:](v5, "setHasClip:", [v4 hasClip]);
    }

    if ([v4 hasForceOpenInBrowser])
    {
      -[_SFPBPunchout setForceOpenInBrowser:](v5, "setForceOpenInBrowser:", [v4 forceOpenInBrowser]);
    }

    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPunchout)initWithDictionary:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = _SFPBPunchout;
  v5 = [(_SFPBPunchout *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPunchout *)v5 setName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPunchout *)v5 setBundleIdentifier:v9];
    }

    v31 = v8;
    v10 = [v4 objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBPunchout *)v5 setLabel:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"urls"];
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

    v20 = [v4 objectForKeyedSubscript:@"userActivityData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBUserActivityData alloc] initWithDictionary:v20];
      [(_SFPBPunchout *)v5 setUserActivityData:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"actionTarget"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBPunchout *)v5 setActionTarget:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"isRunnableInBackground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPunchout setIsRunnableInBackground:](v5, "setIsRunnableInBackground:", [v24 BOOLValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"hasClip"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPunchout setHasClip:](v5, "setHasClip:", [v25 BOOLValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"forceOpenInBrowser"];
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

- (_SFPBPunchout)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPunchout *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPunchout *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_actionTarget)
  {
    v4 = [(_SFPBPunchout *)self actionTarget];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"actionTarget"];
  }

  if (self->_bundleIdentifier)
  {
    v6 = [(_SFPBPunchout *)self bundleIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_forceOpenInBrowser)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPunchout forceOpenInBrowser](self, "forceOpenInBrowser")}];
    [v3 setObject:v8 forKeyedSubscript:@"forceOpenInBrowser"];
  }

  if (self->_hasClip)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPunchout hasClip](self, "hasClip")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasClip"];
  }

  if (self->_isRunnableInBackground)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPunchout isRunnableInBackground](self, "isRunnableInBackground")}];
    [v3 setObject:v10 forKeyedSubscript:@"isRunnableInBackground"];
  }

  if (self->_label)
  {
    v11 = [(_SFPBPunchout *)self label];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"label"];
  }

  if (self->_name)
  {
    v13 = [(_SFPBPunchout *)self name];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"name"];
  }

  if ([(NSArray *)self->_urls count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
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

          v21 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          if (v21)
          {
            [v15 addObject:v21];
          }

          else
          {
            v22 = [MEMORY[0x1E695DFB0] null];
            [v15 addObject:v22];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"urls"];
  }

  if (self->_userActivityData)
  {
    v23 = [(_SFPBPunchout *)self userActivityData];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"userActivityData"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"userActivityData"];
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_SFPBPunchout *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_SFPBPunchout *)self name];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPunchout *)self name];
    v10 = [v4 name];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPunchout *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_SFPBPunchout *)self bundleIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBPunchout *)self bundleIdentifier];
    v15 = [v4 bundleIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPunchout *)self label];
  v6 = [v4 label];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_SFPBPunchout *)self label];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBPunchout *)self label];
    v20 = [v4 label];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPunchout *)self urls];
  v6 = [v4 urls];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_SFPBPunchout *)self urls];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBPunchout *)self urls];
    v25 = [v4 urls];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPunchout *)self userActivityData];
  v6 = [v4 userActivityData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_SFPBPunchout *)self userActivityData];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBPunchout *)self userActivityData];
    v30 = [v4 userActivityData];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPunchout *)self actionTarget];
  v6 = [v4 actionTarget];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v32 = [(_SFPBPunchout *)self actionTarget];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBPunchout *)self actionTarget];
    v35 = [v4 actionTarget];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  isRunnableInBackground = self->_isRunnableInBackground;
  if (isRunnableInBackground == [v4 isRunnableInBackground])
  {
    hasClip = self->_hasClip;
    if (hasClip == [v4 hasClip])
    {
      forceOpenInBrowser = self->_forceOpenInBrowser;
      v37 = forceOpenInBrowser == [v4 forceOpenInBrowser];
      goto LABEL_33;
    }
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBPunchout *)self name];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBPunchout *)self bundleIdentifier];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBPunchout *)self label];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBPunchout *)self urls];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(_SFPBPunchout *)self userActivityData];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBPunchout *)self actionTarget];
  if (v15)
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

- (void)setActionTarget:(id)a3
{
  v4 = [a3 copy];
  actionTarget = self->_actionTarget;
  self->_actionTarget = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addUrls:(id)a3
{
  v4 = a3;
  urls = self->_urls;
  v8 = v4;
  if (!urls)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_urls;
    self->_urls = v6;

    v4 = v8;
    urls = self->_urls;
  }

  [(NSArray *)urls addObject:v4];
}

- (void)setUrls:(id)a3
{
  v4 = [a3 copy];
  urls = self->_urls;
  self->_urls = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabel:(id)a3
{
  v4 = [a3 copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

@end