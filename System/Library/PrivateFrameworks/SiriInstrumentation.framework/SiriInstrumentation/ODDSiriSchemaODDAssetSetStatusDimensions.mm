@interface ODDSiriSchemaODDAssetSetStatusDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssetSetStatusDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssetSetStatusDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addClientProcessAssetAvailabilityStatus:(id)status;
- (void)setHasAssetSetStatusEventTimestampInSecondsSince1970:(BOOL)since1970;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssetSetStatusDimensions

- (ODDSiriSchemaODDAssetSetStatusDimensions)initWithDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = ODDSiriSchemaODDAssetSetStatusDimensions;
  v5 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssetSetStatusDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"previousSystemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDAssetSetStatusDimensions *)v5 setPreviousSystemBuild:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssetSetStatusDimensions setBuildInstallationTimestampInSecondsSince1970:](v5, "setBuildInstallationTimestampInSecondsSince1970:", [v10 unsignedLongLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"assetSetStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[UAFSchemaUAFAssetSetStatus alloc] initWithDictionary:v11];
      [(ODDSiriSchemaODDAssetSetStatusDimensions *)v5 setAssetSetStatus:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"clientProcessAssetAvailabilityStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v11;
      v25 = v10;
      v26 = v8;
      v27 = v6;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[ODDSiriSchemaODDClientProcessAssetAvailabilityStatus alloc] initWithDictionary:v19];
              [(ODDSiriSchemaODDAssetSetStatusDimensions *)v5 addClientProcessAssetAvailabilityStatus:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v16);
      }

      v8 = v26;
      v6 = v27;
      v11 = v24;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:{@"assetSetStatusEventTimestampInSecondsSince1970", v24, v25, v26, v27, v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssetSetStatusDimensions setAssetSetStatusEventTimestampInSecondsSince1970:](v5, "setAssetSetStatusEventTimestampInSecondsSince1970:", [v21 unsignedLongLongValue]);
    }

    v22 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssetSetStatusDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_assetSetStatus)
  {
    assetSetStatus = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
    dictionaryRepresentation = [assetSetStatus dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assetSetStatus"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assetSetStatus"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDAssetSetStatusDimensions assetSetStatusEventTimestampInSecondsSince1970](self, "assetSetStatusEventTimestampInSecondsSince1970")}];
    [dictionary setObject:v7 forKeyedSubscript:@"assetSetStatusEventTimestampInSecondsSince1970"];
  }

  if (self->_assistantDimensions)
  {
    assistantDimensions = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
    dictionaryRepresentation2 = [assistantDimensions dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"assistantDimensions"];
    }
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDAssetSetStatusDimensions buildInstallationTimestampInSecondsSince1970](self, "buildInstallationTimestampInSecondsSince1970")}];
    [dictionary setObject:v11 forKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
  }

  if ([(NSArray *)self->_clientProcessAssetAvailabilityStatus count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = self->_clientProcessAssetAvailabilityStatus;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation3 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"clientProcessAssetAvailabilityStatus"];
  }

  if (self->_previousSystemBuild)
  {
    previousSystemBuild = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];
    v21 = [previousSystemBuild copy];
    [dictionary setObject:v21 forKeyedSubscript:@"previousSystemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v23];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDAssistantDimensions *)self->_assistantDimensions hash];
  v4 = [(NSString *)self->_previousSystemBuild hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_buildInstallationTimestampInSecondsSince1970;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(UAFSchemaUAFAssetSetStatus *)self->_assetSetStatus hash];
  v7 = [(NSArray *)self->_clientProcessAssetAvailabilityStatus hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761u * self->_assetSetStatusEventTimestampInSecondsSince1970;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  assistantDimensions = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
  assistantDimensions2 = [equalCopy assistantDimensions];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_24;
  }

  assistantDimensions3 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
  if (assistantDimensions3)
  {
    v8 = assistantDimensions3;
    assistantDimensions4 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
    assistantDimensions5 = [equalCopy assistantDimensions];
    v11 = [assistantDimensions4 isEqual:assistantDimensions5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];
  assistantDimensions2 = [equalCopy previousSystemBuild];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_24;
  }

  previousSystemBuild = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];
  if (previousSystemBuild)
  {
    v13 = previousSystemBuild;
    previousSystemBuild2 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];
    previousSystemBuild3 = [equalCopy previousSystemBuild];
    v16 = [previousSystemBuild2 isEqual:previousSystemBuild3];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    buildInstallationTimestampInSecondsSince1970 = self->_buildInstallationTimestampInSecondsSince1970;
    if (buildInstallationTimestampInSecondsSince1970 != [equalCopy buildInstallationTimestampInSecondsSince1970])
    {
      goto LABEL_25;
    }
  }

  assistantDimensions = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
  assistantDimensions2 = [equalCopy assetSetStatus];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_24;
  }

  assetSetStatus = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
  if (assetSetStatus)
  {
    v19 = assetSetStatus;
    assetSetStatus2 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
    assetSetStatus3 = [equalCopy assetSetStatus];
    v22 = [assetSetStatus2 isEqual:assetSetStatus3];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self clientProcessAssetAvailabilityStatus];
  assistantDimensions2 = [equalCopy clientProcessAssetAvailabilityStatus];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  clientProcessAssetAvailabilityStatus = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self clientProcessAssetAvailabilityStatus];
  if (clientProcessAssetAvailabilityStatus)
  {
    v24 = clientProcessAssetAvailabilityStatus;
    clientProcessAssetAvailabilityStatus2 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self clientProcessAssetAvailabilityStatus];
    clientProcessAssetAvailabilityStatus3 = [equalCopy clientProcessAssetAvailabilityStatus];
    v27 = [clientProcessAssetAvailabilityStatus2 isEqual:clientProcessAssetAvailabilityStatus3];

    if (!v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v30 = (*&self->_has >> 1) & 1;
  if (v30 == ((equalCopy[56] >> 1) & 1))
  {
    if (!v30 || (assetSetStatusEventTimestampInSecondsSince1970 = self->_assetSetStatusEventTimestampInSecondsSince1970, assetSetStatusEventTimestampInSecondsSince1970 == [equalCopy assetSetStatusEventTimestampInSecondsSince1970]))
    {
      v28 = 1;
      goto LABEL_26;
    }
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  assistantDimensions = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];

  if (assistantDimensions)
  {
    assistantDimensions2 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  previousSystemBuild = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];

  if (previousSystemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  assetSetStatus = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];

  if (assetSetStatus)
  {
    assetSetStatus2 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_clientProcessAssetAvailabilityStatus;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)setHasAssetSetStatusEventTimestampInSecondsSince1970:(BOOL)since1970
{
  if (since1970)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addClientProcessAssetAvailabilityStatus:(id)status
{
  statusCopy = status;
  clientProcessAssetAvailabilityStatus = self->_clientProcessAssetAvailabilityStatus;
  v8 = statusCopy;
  if (!clientProcessAssetAvailabilityStatus)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_clientProcessAssetAvailabilityStatus;
    self->_clientProcessAssetAvailabilityStatus = array;

    statusCopy = v8;
    clientProcessAssetAvailabilityStatus = self->_clientProcessAssetAvailabilityStatus;
  }

  [(NSArray *)clientProcessAssetAvailabilityStatus addObject:statusCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDAssetSetStatusDimensions;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  assistantDimensions = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
  v7 = [assistantDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAssetSetStatusDimensions *)self deleteAssistantDimensions];
  }

  assetSetStatus = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
  v10 = [assetSetStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDAssetSetStatusDimensions *)self deleteAssetSetStatus];
  }

  clientProcessAssetAvailabilityStatus = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self clientProcessAssetAvailabilityStatus];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:clientProcessAssetAvailabilityStatus underConditions:policyCopy];
  [(ODDSiriSchemaODDAssetSetStatusDimensions *)self setClientProcessAssetAvailabilityStatus:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end