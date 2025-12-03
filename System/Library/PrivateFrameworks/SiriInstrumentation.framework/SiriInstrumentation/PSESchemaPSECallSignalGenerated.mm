@interface PSESchemaPSECallSignalGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSECallSignalGenerated)initWithDictionary:(id)dictionary;
- (PSESchemaPSECallSignalGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSECallSignalGenerated

- (PSESchemaPSECallSignalGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PSESchemaPSECallSignalGenerated;
  v5 = [(PSESchemaPSECallSignalGenerated *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commonSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PSESchemaPSECommonSignal alloc] initWithDictionary:v6];
      [(PSESchemaPSECallSignalGenerated *)v5 setCommonSignal:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"callSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PSESchemaPSECall alloc] initWithDictionary:v8];
      [(PSESchemaPSECallSignalGenerated *)v5 setCallSignal:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PSESchemaPSECallSignalGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSECallSignalGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSECallSignalGenerated *)self dictionaryRepresentation];
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
  if (self->_callSignal)
  {
    callSignal = [(PSESchemaPSECallSignalGenerated *)self callSignal];
    dictionaryRepresentation = [callSignal dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"callSignal"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"callSignal"];
    }
  }

  if (self->_commonSignal)
  {
    commonSignal = [(PSESchemaPSECallSignalGenerated *)self commonSignal];
    dictionaryRepresentation2 = [commonSignal dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"commonSignal"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"commonSignal"];
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

  commonSignal = [(PSESchemaPSECallSignalGenerated *)self commonSignal];
  commonSignal2 = [equalCopy commonSignal];
  if ((commonSignal != 0) == (commonSignal2 == 0))
  {
    goto LABEL_11;
  }

  commonSignal3 = [(PSESchemaPSECallSignalGenerated *)self commonSignal];
  if (commonSignal3)
  {
    v8 = commonSignal3;
    commonSignal4 = [(PSESchemaPSECallSignalGenerated *)self commonSignal];
    commonSignal5 = [equalCopy commonSignal];
    v11 = [commonSignal4 isEqual:commonSignal5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  commonSignal = [(PSESchemaPSECallSignalGenerated *)self callSignal];
  commonSignal2 = [equalCopy callSignal];
  if ((commonSignal != 0) != (commonSignal2 == 0))
  {
    callSignal = [(PSESchemaPSECallSignalGenerated *)self callSignal];
    if (!callSignal)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = callSignal;
    callSignal2 = [(PSESchemaPSECallSignalGenerated *)self callSignal];
    callSignal3 = [equalCopy callSignal];
    v16 = [callSignal2 isEqual:callSignal3];

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
  commonSignal = [(PSESchemaPSECallSignalGenerated *)self commonSignal];

  if (commonSignal)
  {
    commonSignal2 = [(PSESchemaPSECallSignalGenerated *)self commonSignal];
    PBDataWriterWriteSubmessage();
  }

  callSignal = [(PSESchemaPSECallSignalGenerated *)self callSignal];

  if (callSignal)
  {
    callSignal2 = [(PSESchemaPSECallSignalGenerated *)self callSignal];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PSESchemaPSECallSignalGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  commonSignal = [(PSESchemaPSECallSignalGenerated *)self commonSignal];
  v7 = [commonSignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PSESchemaPSECallSignalGenerated *)self deleteCommonSignal];
  }

  callSignal = [(PSESchemaPSECallSignalGenerated *)self callSignal];
  v10 = [callSignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PSESchemaPSECallSignalGenerated *)self deleteCallSignal];
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