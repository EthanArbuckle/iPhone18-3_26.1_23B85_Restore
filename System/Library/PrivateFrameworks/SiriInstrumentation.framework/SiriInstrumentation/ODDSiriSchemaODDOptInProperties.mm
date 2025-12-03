@interface ODDSiriSchemaODDOptInProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDOptInProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDOptInProperties)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addGradingOptInStateChanges:(id)changes;
- (void)setHasDataSharingOptInStatus:(BOOL)status;
- (void)setHasIsServerUserDataSyncEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDOptInProperties

- (ODDSiriSchemaODDOptInProperties)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = ODDSiriSchemaODDOptInProperties;
  v5 = [(ODDSiriSchemaODDOptInProperties *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isMteUploadEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDOptInProperties setIsMteUploadEnabled:](v5, "setIsMteUploadEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDOptInProperties setDataSharingOptInStatus:](v5, "setDataSharingOptInStatus:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"gradingOptInStateChanges"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v7;
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[SISchemaGradingOptInStateChange alloc] initWithDictionary:v14];
              [(ODDSiriSchemaODDOptInProperties *)v5 addGradingOptInStateChanges:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v11);
      }

      v7 = v19;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"isServerUserDataSyncEnabled", v19, v20, v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDOptInProperties setIsServerUserDataSyncEnabled:](v5, "setIsServerUserDataSyncEnabled:", [v16 BOOLValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDOptInProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDOptInProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDOptInProperties *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*(&self->_isServerUserDataSyncEnabled + 1) & 2) != 0)
  {
    v4 = [(ODDSiriSchemaODDOptInProperties *)self dataSharingOptInStatus]- 1;
    if (v4 > 2)
    {
      v5 = @"UNKNOWN";
    }

    else
    {
      v5 = off_1E78DD950[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"dataSharingOptInStatus"];
  }

  if ([(NSArray *)self->_gradingOptInStateChanges count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_gradingOptInStateChanges;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"gradingOptInStateChanges"];
  }

  v14 = *(&self->_isServerUserDataSyncEnabled + 1);
  if (v14)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDOptInProperties isMteUploadEnabled](self, "isMteUploadEnabled")}];
    [dictionary setObject:v15 forKeyedSubscript:@"isMteUploadEnabled"];

    v14 = *(&self->_isServerUserDataSyncEnabled + 1);
  }

  if ((v14 & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDOptInProperties isServerUserDataSyncEnabled](self, "isServerUserDataSyncEnabled")}];
    [dictionary setObject:v16 forKeyedSubscript:@"isServerUserDataSyncEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isServerUserDataSyncEnabled + 1))
  {
    v3 = 2654435761 * self->_isMteUploadEnabled;
    if ((*(&self->_isServerUserDataSyncEnabled + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*(&self->_isServerUserDataSyncEnabled + 1) & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_dataSharingOptInStatus;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSArray *)self->_gradingOptInStateChanges hash];
  if ((*(&self->_isServerUserDataSyncEnabled + 1) & 4) != 0)
  {
    v6 = 2654435761 * self->_isServerUserDataSyncEnabled;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(&self->_isServerUserDataSyncEnabled + 1);
  v6 = equalCopy[25];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (v5)
  {
    isMteUploadEnabled = self->_isMteUploadEnabled;
    if (isMteUploadEnabled != [equalCopy isMteUploadEnabled])
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

    v5 = *(&self->_isServerUserDataSyncEnabled + 1);
    v6 = equalCopy[25];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    if (dataSharingOptInStatus != [equalCopy dataSharingOptInStatus])
    {
      goto LABEL_19;
    }
  }

  gradingOptInStateChanges = [(ODDSiriSchemaODDOptInProperties *)self gradingOptInStateChanges];
  gradingOptInStateChanges2 = [equalCopy gradingOptInStateChanges];
  v12 = gradingOptInStateChanges2;
  if ((gradingOptInStateChanges != 0) == (gradingOptInStateChanges2 == 0))
  {

    goto LABEL_19;
  }

  gradingOptInStateChanges3 = [(ODDSiriSchemaODDOptInProperties *)self gradingOptInStateChanges];
  if (gradingOptInStateChanges3)
  {
    v14 = gradingOptInStateChanges3;
    gradingOptInStateChanges4 = [(ODDSiriSchemaODDOptInProperties *)self gradingOptInStateChanges];
    gradingOptInStateChanges5 = [equalCopy gradingOptInStateChanges];
    v17 = [gradingOptInStateChanges4 isEqual:gradingOptInStateChanges5];

    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v18 = (*(&self->_isServerUserDataSyncEnabled + 1) >> 2) & 1;
  if (v18 != ((equalCopy[25] >> 2) & 1))
  {
    goto LABEL_19;
  }

  if (v18)
  {
    isServerUserDataSyncEnabled = self->_isServerUserDataSyncEnabled;
    if (isServerUserDataSyncEnabled != [equalCopy isServerUserDataSyncEnabled])
    {
      goto LABEL_19;
    }
  }

  v20 = 1;
LABEL_20:

  return v20;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = *(&self->_isServerUserDataSyncEnabled + 1);
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    v5 = *(&self->_isServerUserDataSyncEnabled + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_gradingOptInStateChanges;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*(&self->_isServerUserDataSyncEnabled + 1) & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsServerUserDataSyncEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isServerUserDataSyncEnabled + 1) = *(&self->_isServerUserDataSyncEnabled + 1) & 0xFB | v3;
}

- (void)addGradingOptInStateChanges:(id)changes
{
  changesCopy = changes;
  gradingOptInStateChanges = self->_gradingOptInStateChanges;
  v8 = changesCopy;
  if (!gradingOptInStateChanges)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_gradingOptInStateChanges;
    self->_gradingOptInStateChanges = array;

    changesCopy = v8;
    gradingOptInStateChanges = self->_gradingOptInStateChanges;
  }

  [(NSArray *)gradingOptInStateChanges addObject:changesCopy];
}

- (void)setHasDataSharingOptInStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isServerUserDataSyncEnabled + 1) = *(&self->_isServerUserDataSyncEnabled + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDOptInProperties;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDOptInProperties *)self gradingOptInStateChanges:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(ODDSiriSchemaODDOptInProperties *)self setGradingOptInStateChanges:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end