@interface ODDSiriSchemaODDAssetSetStatusDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssetSetStatusDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAssetSetStatusDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addClientProcessAssetAvailabilityStatus:(id)a3;
- (void)setHasAssetSetStatusEventTimestampInSecondsSince1970:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAssetSetStatusDimensions

- (ODDSiriSchemaODDAssetSetStatusDimensions)initWithDictionary:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = ODDSiriSchemaODDAssetSetStatusDimensions;
  v5 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssetSetStatusDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"previousSystemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDAssetSetStatusDimensions *)v5 setPreviousSystemBuild:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssetSetStatusDimensions setBuildInstallationTimestampInSecondsSince1970:](v5, "setBuildInstallationTimestampInSecondsSince1970:", [v10 unsignedLongLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"assetSetStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[UAFSchemaUAFAssetSetStatus alloc] initWithDictionary:v11];
      [(ODDSiriSchemaODDAssetSetStatusDimensions *)v5 setAssetSetStatus:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"clientProcessAssetAvailabilityStatus"];
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

    v21 = [v4 objectForKeyedSubscript:{@"assetSetStatusEventTimestampInSecondsSince1970", v24, v25, v26, v27, v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssetSetStatusDimensions setAssetSetStatusEventTimestampInSecondsSince1970:](v5, "setAssetSetStatusEventTimestampInSecondsSince1970:", [v21 unsignedLongLongValue]);
    }

    v22 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssetSetStatusDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_assetSetStatus)
  {
    v4 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"assetSetStatus"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"assetSetStatus"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDAssetSetStatusDimensions assetSetStatusEventTimestampInSecondsSince1970](self, "assetSetStatusEventTimestampInSecondsSince1970")}];
    [v3 setObject:v7 forKeyedSubscript:@"assetSetStatusEventTimestampInSecondsSince1970"];
  }

  if (self->_assistantDimensions)
  {
    v8 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"assistantDimensions"];
    }
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDAssetSetStatusDimensions buildInstallationTimestampInSecondsSince1970](self, "buildInstallationTimestampInSecondsSince1970")}];
    [v3 setObject:v11 forKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
  }

  if ([(NSArray *)self->_clientProcessAssetAvailabilityStatus count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
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

          v18 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = [MEMORY[0x1E695DFB0] null];
            [v12 addObject:v19];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"clientProcessAssetAvailabilityStatus"];
  }

  if (self->_previousSystemBuild)
  {
    v20 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"previousSystemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v23];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
  v6 = [v4 assistantDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v7 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
    v10 = [v4 assistantDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];
  v6 = [v4 previousSystemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v12 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];
    v15 = [v4 previousSystemBuild];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    buildInstallationTimestampInSecondsSince1970 = self->_buildInstallationTimestampInSecondsSince1970;
    if (buildInstallationTimestampInSecondsSince1970 != [v4 buildInstallationTimestampInSecondsSince1970])
    {
      goto LABEL_25;
    }
  }

  v5 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
  v6 = [v4 assetSetStatus];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v18 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
  if (v18)
  {
    v19 = v18;
    v20 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
    v21 = [v4 assetSetStatus];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self clientProcessAssetAvailabilityStatus];
  v6 = [v4 clientProcessAssetAvailabilityStatus];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  v23 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self clientProcessAssetAvailabilityStatus];
  if (v23)
  {
    v24 = v23;
    v25 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self clientProcessAssetAvailabilityStatus];
    v26 = [v4 clientProcessAssetAvailabilityStatus];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v30 = (*&self->_has >> 1) & 1;
  if (v30 == ((v4[56] >> 1) & 1))
  {
    if (!v30 || (assetSetStatusEventTimestampInSecondsSince1970 = self->_assetSetStatusEventTimestampInSecondsSince1970, assetSetStatusEventTimestampInSecondsSince1970 == [v4 assetSetStatusEventTimestampInSecondsSince1970]))
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

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self previousSystemBuild];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v8 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];

  if (v8)
  {
    v9 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
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

- (void)setHasAssetSetStatusEventTimestampInSecondsSince1970:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addClientProcessAssetAvailabilityStatus:(id)a3
{
  v4 = a3;
  clientProcessAssetAvailabilityStatus = self->_clientProcessAssetAvailabilityStatus;
  v8 = v4;
  if (!clientProcessAssetAvailabilityStatus)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_clientProcessAssetAvailabilityStatus;
    self->_clientProcessAssetAvailabilityStatus = v6;

    v4 = v8;
    clientProcessAssetAvailabilityStatus = self->_clientProcessAssetAvailabilityStatus;
  }

  [(NSArray *)clientProcessAssetAvailabilityStatus addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDAssetSetStatusDimensions;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assistantDimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDAssetSetStatusDimensions *)self deleteAssistantDimensions];
  }

  v9 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self assetSetStatus];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDAssetSetStatusDimensions *)self deleteAssetSetStatus];
  }

  v12 = [(ODDSiriSchemaODDAssetSetStatusDimensions *)self clientProcessAssetAvailabilityStatus];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
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