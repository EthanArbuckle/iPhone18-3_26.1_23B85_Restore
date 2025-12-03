@interface SISchemaRequestLink
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaRequestLink)initWithDictionary:(id)dictionary;
- (SISchemaRequestLink)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaRequestLink

- (SISchemaRequestLink)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaRequestLink;
  v5 = [(SISchemaRequestLink *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaRequestLinkInfo alloc] initWithDictionary:v6];
      [(SISchemaRequestLink *)v5 setSource:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"target"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaRequestLinkInfo alloc] initWithDictionary:v8];
      [(SISchemaRequestLink *)v5 setTarget:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaRequestLink)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaRequestLink *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaRequestLink *)self dictionaryRepresentation];
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
  if (self->_source)
  {
    source = [(SISchemaRequestLink *)self source];
    dictionaryRepresentation = [source dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"source"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"source"];
    }
  }

  if (self->_target)
  {
    target = [(SISchemaRequestLink *)self target];
    dictionaryRepresentation2 = [target dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"target"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"target"];
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

  source = [(SISchemaRequestLink *)self source];
  source2 = [equalCopy source];
  if ((source != 0) == (source2 == 0))
  {
    goto LABEL_11;
  }

  source3 = [(SISchemaRequestLink *)self source];
  if (source3)
  {
    v8 = source3;
    source4 = [(SISchemaRequestLink *)self source];
    source5 = [equalCopy source];
    v11 = [source4 isEqual:source5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  source = [(SISchemaRequestLink *)self target];
  source2 = [equalCopy target];
  if ((source != 0) != (source2 == 0))
  {
    target = [(SISchemaRequestLink *)self target];
    if (!target)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = target;
    target2 = [(SISchemaRequestLink *)self target];
    target3 = [equalCopy target];
    v16 = [target2 isEqual:target3];

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
  source = [(SISchemaRequestLink *)self source];

  if (source)
  {
    source2 = [(SISchemaRequestLink *)self source];
    PBDataWriterWriteSubmessage();
  }

  target = [(SISchemaRequestLink *)self target];

  if (target)
  {
    target2 = [(SISchemaRequestLink *)self target];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaRequestLink;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  source = [(SISchemaRequestLink *)self source];
  v7 = [source applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaRequestLink *)self deleteSource];
  }

  target = [(SISchemaRequestLink *)self target];
  v10 = [target applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaRequestLink *)self deleteTarget];
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