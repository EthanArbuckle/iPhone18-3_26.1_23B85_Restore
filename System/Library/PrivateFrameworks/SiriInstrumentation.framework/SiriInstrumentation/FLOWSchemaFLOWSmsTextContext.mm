@interface FLOWSchemaFLOWSmsTextContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWSmsTextContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWSmsTextContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWSmsTextContext

- (FLOWSchemaFLOWSmsTextContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLOWSchemaFLOWSmsTextContext;
  v5 = [(FLOWSchemaFLOWSmsTextContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"smsTextContentMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWSmsTextContentMetadata alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWSmsTextContext *)v5 setSmsTextContentMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"smsAttachmentMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWSmsAttachmentMetadata alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWSmsTextContext *)v5 setSmsAttachmentMetadata:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWSmsTextContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWSmsTextContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWSmsTextContext *)self dictionaryRepresentation];
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
  if (self->_smsAttachmentMetadata)
  {
    smsAttachmentMetadata = [(FLOWSchemaFLOWSmsTextContext *)self smsAttachmentMetadata];
    dictionaryRepresentation = [smsAttachmentMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"smsAttachmentMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"smsAttachmentMetadata"];
    }
  }

  if (self->_smsTextContentMetadata)
  {
    smsTextContentMetadata = [(FLOWSchemaFLOWSmsTextContext *)self smsTextContentMetadata];
    dictionaryRepresentation2 = [smsTextContentMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"smsTextContentMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"smsTextContentMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  smsTextContentMetadata = [(FLOWSchemaFLOWSmsTextContext *)self smsTextContentMetadata];
  smsTextContentMetadata2 = [equalCopy smsTextContentMetadata];
  if ((smsTextContentMetadata != 0) == (smsTextContentMetadata2 == 0))
  {
    goto LABEL_11;
  }

  smsTextContentMetadata3 = [(FLOWSchemaFLOWSmsTextContext *)self smsTextContentMetadata];
  if (smsTextContentMetadata3)
  {
    v8 = smsTextContentMetadata3;
    smsTextContentMetadata4 = [(FLOWSchemaFLOWSmsTextContext *)self smsTextContentMetadata];
    smsTextContentMetadata5 = [equalCopy smsTextContentMetadata];
    v11 = [smsTextContentMetadata4 isEqual:smsTextContentMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  smsTextContentMetadata = [(FLOWSchemaFLOWSmsTextContext *)self smsAttachmentMetadata];
  smsTextContentMetadata2 = [equalCopy smsAttachmentMetadata];
  if ((smsTextContentMetadata != 0) != (smsTextContentMetadata2 == 0))
  {
    smsAttachmentMetadata = [(FLOWSchemaFLOWSmsTextContext *)self smsAttachmentMetadata];
    if (!smsAttachmentMetadata)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = smsAttachmentMetadata;
    smsAttachmentMetadata2 = [(FLOWSchemaFLOWSmsTextContext *)self smsAttachmentMetadata];
    smsAttachmentMetadata3 = [equalCopy smsAttachmentMetadata];
    v16 = [smsAttachmentMetadata2 isEqual:smsAttachmentMetadata3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  smsTextContentMetadata = [(FLOWSchemaFLOWSmsTextContext *)self smsTextContentMetadata];

  if (smsTextContentMetadata)
  {
    smsTextContentMetadata2 = [(FLOWSchemaFLOWSmsTextContext *)self smsTextContentMetadata];
    PBDataWriterWriteSubmessage();
  }

  smsAttachmentMetadata = [(FLOWSchemaFLOWSmsTextContext *)self smsAttachmentMetadata];

  if (smsAttachmentMetadata)
  {
    smsAttachmentMetadata2 = [(FLOWSchemaFLOWSmsTextContext *)self smsAttachmentMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWSmsTextContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  smsTextContentMetadata = [(FLOWSchemaFLOWSmsTextContext *)self smsTextContentMetadata];
  v7 = [smsTextContentMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWSmsTextContext *)self deleteSmsTextContentMetadata];
  }

  smsAttachmentMetadata = [(FLOWSchemaFLOWSmsTextContext *)self smsAttachmentMetadata];
  v10 = [smsAttachmentMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWSmsTextContext *)self deleteSmsAttachmentMetadata];
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