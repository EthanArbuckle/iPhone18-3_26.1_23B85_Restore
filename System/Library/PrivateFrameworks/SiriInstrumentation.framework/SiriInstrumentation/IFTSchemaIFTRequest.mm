@interface IFTSchemaIFTRequest
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTRequest)initWithDictionary:(id)a3;
- (IFTSchemaIFTRequest)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsSafetyMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTRequest

- (IFTSchemaIFTRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTRequest;
  v5 = [(IFTSchemaIFTRequest *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTRequest setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTRequestContent alloc] initWithDictionary:v7];
      [(IFTSchemaIFTRequest *)v5 setContent:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"isSafetyMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTRequest setIsSafetyMode:](v5, "setIsSafetyMode:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"prescribedPlan"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTRequestPrescribedPlan alloc] initWithDictionary:v10];
      [(IFTSchemaIFTRequest *)v5 setPrescribedPlan:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (IFTSchemaIFTRequest)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequest *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTRequest *)self dictionaryRepresentation];
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
  if (self->_content)
  {
    v4 = [(IFTSchemaIFTRequest *)self content];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"content"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"content"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTRequest exists](self, "exists")}];
    [v3 setObject:v8 forKeyedSubscript:@"exists"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTRequest isSafetyMode](self, "isSafetyMode")}];
    [v3 setObject:v9 forKeyedSubscript:@"isSafetyMode"];
  }

  if (self->_prescribedPlan)
  {
    v10 = [(IFTSchemaIFTRequest *)self prescribedPlan];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"prescribedPlan"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"prescribedPlan"];
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

  v4 = [(IFTSchemaIFTRequestContent *)self->_content hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_isSafetyMode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(IFTSchemaIFTRequestPrescribedPlan *)self->_prescribedPlan hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_18;
    }
  }

  v6 = [(IFTSchemaIFTRequest *)self content];
  v7 = [v4 content];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(IFTSchemaIFTRequest *)self content];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTRequest *)self content];
    v11 = [v4 content];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((v4[40] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    isSafetyMode = self->_isSafetyMode;
    if (isSafetyMode != [v4 isSafetyMode])
    {
      goto LABEL_18;
    }
  }

  v6 = [(IFTSchemaIFTRequest *)self prescribedPlan];
  v7 = [v4 prescribedPlan];
  if ((v6 != 0) != (v7 == 0))
  {
    v15 = [(IFTSchemaIFTRequest *)self prescribedPlan];
    if (!v15)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = v15;
    v17 = [(IFTSchemaIFTRequest *)self prescribedPlan];
    v18 = [v4 prescribedPlan];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTRequest *)self content];

  if (v4)
  {
    v5 = [(IFTSchemaIFTRequest *)self content];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(IFTSchemaIFTRequest *)self prescribedPlan];

  v7 = v9;
  if (v6)
  {
    v8 = [(IFTSchemaIFTRequest *)self prescribedPlan];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (void)setHasIsSafetyMode:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTRequest;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTRequest *)self content];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTRequest *)self deleteContent];
  }

  v9 = [(IFTSchemaIFTRequest *)self prescribedPlan];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTRequest *)self deletePrescribedPlan];
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