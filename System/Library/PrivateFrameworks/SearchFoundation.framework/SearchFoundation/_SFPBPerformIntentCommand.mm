@interface _SFPBPerformIntentCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPerformIntentCommand)initWithDictionary:(id)dictionary;
- (_SFPBPerformIntentCommand)initWithFacade:(id)facade;
- (_SFPBPerformIntentCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setBiomeStreamIdentifier:(id)identifier;
- (void)setIntentMessageData:(id)data;
- (void)setIntentMessageName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPerformIntentCommand

- (_SFPBPerformIntentCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPerformIntentCommand *)self init];
  if (v5)
  {
    intentMessageName = [facadeCopy intentMessageName];

    if (intentMessageName)
    {
      intentMessageName2 = [facadeCopy intentMessageName];
      [(_SFPBPerformIntentCommand *)v5 setIntentMessageName:intentMessageName2];
    }

    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBPerformIntentCommand *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    intentMessageData = [facadeCopy intentMessageData];

    if (intentMessageData)
    {
      intentMessageData2 = [facadeCopy intentMessageData];
      [(_SFPBPerformIntentCommand *)v5 setIntentMessageData:intentMessageData2];
    }

    if ([facadeCopy hasIsRunnableWorkflow])
    {
      -[_SFPBPerformIntentCommand setIsRunnableWorkflow:](v5, "setIsRunnableWorkflow:", [facadeCopy isRunnableWorkflow]);
    }

    biomeStreamIdentifier = [facadeCopy biomeStreamIdentifier];

    if (biomeStreamIdentifier)
    {
      biomeStreamIdentifier2 = [facadeCopy biomeStreamIdentifier];
      [(_SFPBPerformIntentCommand *)v5 setBiomeStreamIdentifier:biomeStreamIdentifier2];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBPerformIntentCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = _SFPBPerformIntentCommand;
  v5 = [(_SFPBPerformIntentCommand *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"intentMessageName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPerformIntentCommand *)v5 setIntentMessageName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"applicationBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPerformIntentCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"intentMessageData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];
      [(_SFPBPerformIntentCommand *)v5 setIntentMessageData:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isRunnableWorkflow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformIntentCommand setIsRunnableWorkflow:](v5, "setIsRunnableWorkflow:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"biomeStreamIdentifier"];
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

- (_SFPBPerformIntentCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPerformIntentCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPerformIntentCommand *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_biomeStreamIdentifier)
  {
    biomeStreamIdentifier = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
    v7 = [biomeStreamIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"biomeStreamIdentifier"];
  }

  if (self->_intentMessageData)
  {
    intentMessageData = [(_SFPBPerformIntentCommand *)self intentMessageData];
    v9 = [intentMessageData base64EncodedStringWithOptions:0];
    if (v9)
    {
      [dictionary setObject:v9 forKeyedSubscript:@"intentMessageData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"intentMessageData"];
    }
  }

  if (self->_intentMessageName)
  {
    intentMessageName = [(_SFPBPerformIntentCommand *)self intentMessageName];
    v12 = [intentMessageName copy];
    [dictionary setObject:v12 forKeyedSubscript:@"intentMessageName"];
  }

  if (self->_isRunnableWorkflow)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPerformIntentCommand isRunnableWorkflow](self, "isRunnableWorkflow")}];
    [dictionary setObject:v13 forKeyedSubscript:@"isRunnableWorkflow"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  intentMessageName = [(_SFPBPerformIntentCommand *)self intentMessageName];
  intentMessageName2 = [equalCopy intentMessageName];
  if ((intentMessageName != 0) == (intentMessageName2 == 0))
  {
    goto LABEL_22;
  }

  intentMessageName3 = [(_SFPBPerformIntentCommand *)self intentMessageName];
  if (intentMessageName3)
  {
    v8 = intentMessageName3;
    intentMessageName4 = [(_SFPBPerformIntentCommand *)self intentMessageName];
    intentMessageName5 = [equalCopy intentMessageName];
    v11 = [intentMessageName4 isEqual:intentMessageName5];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  intentMessageName = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
  intentMessageName2 = [equalCopy applicationBundleIdentifier];
  if ((intentMessageName != 0) == (intentMessageName2 == 0))
  {
    goto LABEL_22;
  }

  applicationBundleIdentifier = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
    applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
    v16 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  intentMessageName = [(_SFPBPerformIntentCommand *)self intentMessageData];
  intentMessageName2 = [equalCopy intentMessageData];
  if ((intentMessageName != 0) == (intentMessageName2 == 0))
  {
    goto LABEL_22;
  }

  intentMessageData = [(_SFPBPerformIntentCommand *)self intentMessageData];
  if (intentMessageData)
  {
    v18 = intentMessageData;
    intentMessageData2 = [(_SFPBPerformIntentCommand *)self intentMessageData];
    intentMessageData3 = [equalCopy intentMessageData];
    v21 = [intentMessageData2 isEqual:intentMessageData3];

    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  isRunnableWorkflow = self->_isRunnableWorkflow;
  if (isRunnableWorkflow != [equalCopy isRunnableWorkflow])
  {
    goto LABEL_23;
  }

  intentMessageName = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
  intentMessageName2 = [equalCopy biomeStreamIdentifier];
  if ((intentMessageName != 0) == (intentMessageName2 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  biomeStreamIdentifier = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
  if (!biomeStreamIdentifier)
  {

LABEL_26:
    v28 = 1;
    goto LABEL_24;
  }

  v24 = biomeStreamIdentifier;
  biomeStreamIdentifier2 = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
  biomeStreamIdentifier3 = [equalCopy biomeStreamIdentifier];
  v27 = [biomeStreamIdentifier2 isEqual:biomeStreamIdentifier3];

  if (v27)
  {
    goto LABEL_26;
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMessageName = [(_SFPBPerformIntentCommand *)self intentMessageName];
  if (intentMessageName)
  {
    PBDataWriterWriteStringField();
  }

  applicationBundleIdentifier = [(_SFPBPerformIntentCommand *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  intentMessageData = [(_SFPBPerformIntentCommand *)self intentMessageData];
  if (intentMessageData)
  {
    PBDataWriterWriteDataField();
  }

  if ([(_SFPBPerformIntentCommand *)self isRunnableWorkflow])
  {
    PBDataWriterWriteBOOLField();
  }

  biomeStreamIdentifier = [(_SFPBPerformIntentCommand *)self biomeStreamIdentifier];
  if (biomeStreamIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setBiomeStreamIdentifier:(id)identifier
{
  v4 = [identifier copy];
  biomeStreamIdentifier = self->_biomeStreamIdentifier;
  self->_biomeStreamIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentMessageData:(id)data
{
  v4 = [data copy];
  intentMessageData = self->_intentMessageData;
  self->_intentMessageData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIntentMessageName:(id)name
{
  v4 = [name copy];
  intentMessageName = self->_intentMessageName;
  self->_intentMessageName = v4;

  MEMORY[0x1EEE66BB8]();
}

@end