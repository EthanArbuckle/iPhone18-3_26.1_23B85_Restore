@interface PEGASUSSchemaPEGASUSIntentArg
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSIntentArg)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSIntentArg)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSIntentArg

- (PEGASUSSchemaPEGASUSIntentArg)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSIntentArg;
  v5 = [(PEGASUSSchemaPEGASUSIntentArg *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSIntentArg *)v5 setKey:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"attributeType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSIntentArg *)v5 setAttributeType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"entity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSEntityInfo alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSIntentArg *)v5 setEntity:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSIntentArg)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSIntentArg *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSIntentArg *)self dictionaryRepresentation];
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
  if (self->_attributeType)
  {
    v4 = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"attributeType"];
  }

  if (self->_entity)
  {
    v6 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"entity"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"entity"];
    }
  }

  if (self->_key)
  {
    v9 = [(PEGASUSSchemaPEGASUSIntentArg *)self key];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"key"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_attributeType hash]^ v3;
  return v4 ^ [(PEGASUSSchemaPEGASUSEntityInfo *)self->_entity hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PEGASUSSchemaPEGASUSIntentArg *)self key];
  v6 = [v4 key];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PEGASUSSchemaPEGASUSIntentArg *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSIntentArg *)self key];
    v10 = [v4 key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];
  v6 = [v4 attributeType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];
    v15 = [v4 attributeType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
  v6 = [v4 entity];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
    v20 = [v4 entity];
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
  v9 = a3;
  v4 = [(PEGASUSSchemaPEGASUSIntentArg *)self key];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSIntentArg *)self attributeType];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];

  v7 = v9;
  if (v6)
  {
    v8 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PEGASUSSchemaPEGASUSIntentArg;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSIntentArg *)self entity:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(PEGASUSSchemaPEGASUSIntentArg *)self deleteEntity];
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