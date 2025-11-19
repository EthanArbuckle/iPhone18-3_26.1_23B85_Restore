@interface IFTSchemaASTFlatExprPickVariant
- (BOOL)isEqual:(id)a3;
- (IFTSchemaASTFlatExprPickVariant)initWithDictionary:(id)a3;
- (IFTSchemaASTFlatExprPickVariant)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaASTFlatExprPickVariant

- (IFTSchemaASTFlatExprPickVariant)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaASTFlatExprPickVariant;
  v5 = [(IFTSchemaASTFlatExprPickVariant *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaASTFlatExprPickVariant setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"rawEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(IFTSchemaASTFlatExprPickVariant *)v5 setRawEventId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"pickType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaASTPickType alloc] initWithDictionary:v9];
      [(IFTSchemaASTFlatExprPickVariant *)v5 setPickType:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaASTFlatExprPickVariant)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaASTFlatExprPickVariant *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaASTFlatExprPickVariant *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaASTFlatExprPickVariant exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_pickType)
  {
    v5 = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"pickType"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"pickType"];
    }
  }

  if (self->_rawEventId)
  {
    v8 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"rawEventId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"rawEventId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaUUID *)self->_rawEventId hash]^ v3;
  return v4 ^ [(IFTSchemaASTPickType *)self->_pickType hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_15;
    }
  }

  v6 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
  v7 = [v4 rawEventId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
    v11 = [v4 rawEventId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
  v7 = [v4 pickType];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
    v16 = [v4 pickType];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];

  if (v4)
  {
    v5 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaASTFlatExprPickVariant *)self pickType];

  v7 = v9;
  if (v6)
  {
    v8 = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaASTFlatExprPickVariant;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaASTFlatExprPickVariant *)self rawEventId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaASTFlatExprPickVariant *)self deleteRawEventId];
  }

  v9 = [(IFTSchemaASTFlatExprPickVariant *)self pickType];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaASTFlatExprPickVariant *)self deletePickType];
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