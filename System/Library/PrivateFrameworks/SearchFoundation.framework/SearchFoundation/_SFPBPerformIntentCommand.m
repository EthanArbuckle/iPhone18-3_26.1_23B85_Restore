@interface _SFPBPerformIntentCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPerformIntentCommand)initWithDictionary:(id)a3;
- (_SFPBPerformIntentCommand)initWithFacade:(id)a3;
- (_SFPBPerformIntentCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)setBiomeStreamIdentifier:(id)a3;
- (void)setIntentMessageData:(id)a3;
- (void)setIntentMessageName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPerformIntentCommand

- (_SFPBPerformIntentCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPerformIntentCommand *)self init];
  if (v5)
  {
    v6 = [v4 intentMessageName];

    if (v6)
    {
      v7 = [v4 intentMessageName];
      [(_SFPBPerformIntentCommand *)v5 setIntentMessageName:v7];
    }

    v8 = [v4 applicationBundleIdentifier];

    if (v8)
    {
      v9 = [v4 applicationBundleIdentifier];
      [(_SFPBPerformIntentCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [v4 intentMessageData];

    if (v10)
    {
      v11 = [v4 intentMessageData];
      [(_SFPBPerformIntentCommand *)v5 setIntentMessageData:v11];
    }

    if ([v4 hasIsRunnableWorkflow])
    {
      -[_SFPBPerformIntentCommand setIsRunnableWorkflow:](v5, "setIsRunnableWorkflow:", [v4 isRunnableWorkflow]);
    }

    v12 = [v4 biomeStreamIdentifier];

    if (v12)
    {
      v13 = [v4 biomeStreamIdentifier];
      [(_SFPBPerformIntentCommand *)v5 setBiomeStreamIdentifier:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBPerformIntentCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _SFPBPerformIntentCommand;
  v5 = [(_SFPBPerformIntentCommand *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"intentMessageName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPerformIntentCommand *)v5 setIntentMessageName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPerformIntentCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"intentMessageData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];
      [(_SFPBPerformIntentCommand *)v5 setIntentMessageData:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"isRunnableWorkflow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformIntentCommand setIsRunnableWorkflow:](v5, "setIsRunnableWorkflow:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"biomeStreamIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(_SFPBPerformIntentCommand *)v5 setBiomeStreamIdentifier:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (_SFPBPerformIntentCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPerformIntentCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPerformIntentCommand *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    v4 = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_biomeStreamIdentifier)
  {
    v6 = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"biomeStreamIdentifier"];
  }

  if (self->_intentMessageData)
  {
    v8 = [(_SFPBPerformIntentCommand *)self intentMessageData];
    v9 = [v8 base64EncodedStringWithOptions:0];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"intentMessageData"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"intentMessageData"];
    }
  }

  if (self->_intentMessageName)
  {
    v11 = [(_SFPBPerformIntentCommand *)self intentMessageName];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"intentMessageName"];
  }

  if (self->_isRunnableWorkflow)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPerformIntentCommand isRunnableWorkflow](self, "isRunnableWorkflow")}];
    [v3 setObject:v13 forKeyedSubscript:@"isRunnableWorkflow"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_intentMessageName hash];
  v4 = [(NSString *)self->_applicationBundleIdentifier hash];
  v5 = [(NSData *)self->_intentMessageData hash];
  if (self->_isRunnableWorkflow)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_biomeStreamIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = [(_SFPBPerformIntentCommand *)self intentMessageName];
  v6 = [v4 intentMessageName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v7 = [(_SFPBPerformIntentCommand *)self intentMessageName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPerformIntentCommand *)self intentMessageName];
    v10 = [v4 intentMessageName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v12 = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
    v15 = [v4 applicationBundleIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformIntentCommand *)self intentMessageData];
  v6 = [v4 intentMessageData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v17 = [(_SFPBPerformIntentCommand *)self intentMessageData];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBPerformIntentCommand *)self intentMessageData];
    v20 = [v4 intentMessageData];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  isRunnableWorkflow = self->_isRunnableWorkflow;
  if (isRunnableWorkflow != [v4 isRunnableWorkflow])
  {
    goto LABEL_23;
  }

  v5 = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
  v6 = [v4 biomeStreamIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  v23 = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
  if (!v23)
  {

LABEL_26:
    v28 = 1;
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
  v26 = [v4 biomeStreamIdentifier];
  v27 = [v25 isEqual:v26];

  if (v27)
  {
    goto LABEL_26;
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBPerformIntentCommand *)self intentMessageName];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBPerformIntentCommand *)self intentMessageData];
  if (v6)
  {
    PBDataWriterWriteDataField();
  }

  if ([(_SFPBPerformIntentCommand *)self isRunnableWorkflow])
  {
    PBDataWriterWriteBOOLField();
  }

  v7 = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setBiomeStreamIdentifier:(id)a3
{
  v4 = [a3 copy];
  biomeStreamIdentifier = self->_biomeStreamIdentifier;
  self->_biomeStreamIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentMessageData:(id)a3
{
  v4 = [a3 copy];
  intentMessageData = self->_intentMessageData;
  self->_intentMessageData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentMessageName:(id)a3
{
  v4 = [a3 copy];
  intentMessageName = self->_intentMessageName;
  self->_intentMessageName = v4;

  MEMORY[0x1EEE66BB8]();
}

@end