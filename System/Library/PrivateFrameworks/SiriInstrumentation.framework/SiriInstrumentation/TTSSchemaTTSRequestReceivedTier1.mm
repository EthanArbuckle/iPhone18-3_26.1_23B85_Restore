@interface TTSSchemaTTSRequestReceivedTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (TTSSchemaTTSRequestReceivedTier1)initWithDictionary:(id)a3;
- (TTSSchemaTTSRequestReceivedTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation TTSSchemaTTSRequestReceivedTier1

- (TTSSchemaTTSRequestReceivedTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TTSSchemaTTSRequestReceivedTier1;
  v5 = [(TTSSchemaTTSRequestReceivedTier1 *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"textToSynthesize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(TTSSchemaTTSRequestReceivedTier1 *)v5 setTextToSynthesize:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(TTSSchemaTTSRequestReceivedTier1 *)v5 setLinkId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(TTSSchemaTTSRequestReceivedTier1 *)v5 setContextId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (TTSSchemaTTSRequestReceivedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(TTSSchemaTTSRequestReceivedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(TTSSchemaTTSRequestReceivedTier1 *)self dictionaryRepresentation];
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
  if (self->_contextId)
  {
    v4 = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contextId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_linkId)
  {
    v7 = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_textToSynthesize)
  {
    v10 = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"textToSynthesize"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_textToSynthesize hash];
  v4 = [(SISchemaUUID *)self->_linkId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_contextId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];
  v6 = [v4 textToSynthesize];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];
  if (v7)
  {
    v8 = v7;
    v9 = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];
    v10 = [v4 textToSynthesize];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
  if (v12)
  {
    v13 = v12;
    v14 = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
    v15 = [v4 linkId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
  v6 = [v4 contextId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
    v20 = [v4 contextId];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(TTSSchemaTTSRequestReceivedTier1 *)self textToSynthesize];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];

  if (v5)
  {
    v6 = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];

  v8 = v10;
  if (v7)
  {
    v9 = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TTSSchemaTTSRequestReceivedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([v4 isConditionSet:4])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([v4 isConditionSet:5])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([v4 isConditionSet:6])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([v4 isConditionSet:7])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([v4 isConditionSet:9])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  if ([v4 isConditionSet:10])
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteTextToSynthesize];
  }

  v6 = [(TTSSchemaTTSRequestReceivedTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteLinkId];
  }

  v9 = [(TTSSchemaTTSRequestReceivedTier1 *)self contextId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(TTSSchemaTTSRequestReceivedTier1 *)self deleteContextId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end