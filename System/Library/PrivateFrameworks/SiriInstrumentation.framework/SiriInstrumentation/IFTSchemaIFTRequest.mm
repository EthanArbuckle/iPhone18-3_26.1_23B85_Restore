@interface IFTSchemaIFTRequest
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTRequest)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTRequest)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsSafetyMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTRequest

- (IFTSchemaIFTRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTRequest;
  v5 = [(IFTSchemaIFTRequest *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTRequest setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTRequestContent alloc] initWithDictionary:v7];
      [(IFTSchemaIFTRequest *)v5 setContent:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isSafetyMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTRequest setIsSafetyMode:](v5, "setIsSafetyMode:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"prescribedPlan"];
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

- (IFTSchemaIFTRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTRequest *)self dictionaryRepresentation];
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
  if (self->_content)
  {
    content = [(IFTSchemaIFTRequest *)self content];
    dictionaryRepresentation = [content dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"content"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"content"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTRequest exists](self, "exists")}];
    [dictionary setObject:v8 forKeyedSubscript:@"exists"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTRequest isSafetyMode](self, "isSafetyMode")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isSafetyMode"];
  }

  if (self->_prescribedPlan)
  {
    prescribedPlan = [(IFTSchemaIFTRequest *)self prescribedPlan];
    dictionaryRepresentation2 = [prescribedPlan dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"prescribedPlan"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"prescribedPlan"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_18;
    }
  }

  content = [(IFTSchemaIFTRequest *)self content];
  content2 = [equalCopy content];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_17;
  }

  content3 = [(IFTSchemaIFTRequest *)self content];
  if (content3)
  {
    v9 = content3;
    content4 = [(IFTSchemaIFTRequest *)self content];
    content5 = [equalCopy content];
    v12 = [content4 isEqual:content5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((equalCopy[40] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    isSafetyMode = self->_isSafetyMode;
    if (isSafetyMode != [equalCopy isSafetyMode])
    {
      goto LABEL_18;
    }
  }

  content = [(IFTSchemaIFTRequest *)self prescribedPlan];
  content2 = [equalCopy prescribedPlan];
  if ((content != 0) != (content2 == 0))
  {
    prescribedPlan = [(IFTSchemaIFTRequest *)self prescribedPlan];
    if (!prescribedPlan)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = prescribedPlan;
    prescribedPlan2 = [(IFTSchemaIFTRequest *)self prescribedPlan];
    prescribedPlan3 = [equalCopy prescribedPlan];
    v19 = [prescribedPlan2 isEqual:prescribedPlan3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  content = [(IFTSchemaIFTRequest *)self content];

  if (content)
  {
    content2 = [(IFTSchemaIFTRequest *)self content];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  prescribedPlan = [(IFTSchemaIFTRequest *)self prescribedPlan];

  v7 = toCopy;
  if (prescribedPlan)
  {
    prescribedPlan2 = [(IFTSchemaIFTRequest *)self prescribedPlan];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (void)setHasIsSafetyMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTRequest;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  content = [(IFTSchemaIFTRequest *)self content];
  v7 = [content applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTRequest *)self deleteContent];
  }

  prescribedPlan = [(IFTSchemaIFTRequest *)self prescribedPlan];
  v10 = [prescribedPlan applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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