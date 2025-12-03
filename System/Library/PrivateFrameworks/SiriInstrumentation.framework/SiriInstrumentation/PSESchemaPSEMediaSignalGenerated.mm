@interface PSESchemaPSEMediaSignalGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSEMediaSignalGenerated)initWithDictionary:(id)dictionary;
- (PSESchemaPSEMediaSignalGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSEMediaSignalGenerated

- (PSESchemaPSEMediaSignalGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PSESchemaPSEMediaSignalGenerated;
  v5 = [(PSESchemaPSEMediaSignalGenerated *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commonSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PSESchemaPSECommonSignal alloc] initWithDictionary:v6];
      [(PSESchemaPSEMediaSignalGenerated *)v5 setCommonSignal:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mediaSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PSESchemaPSEMedia alloc] initWithDictionary:v8];
      [(PSESchemaPSEMediaSignalGenerated *)v5 setMediaSignal:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PSESchemaPSEMediaSignalGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSEMediaSignalGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSEMediaSignalGenerated *)self dictionaryRepresentation];
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
  if (self->_commonSignal)
  {
    commonSignal = [(PSESchemaPSEMediaSignalGenerated *)self commonSignal];
    dictionaryRepresentation = [commonSignal dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commonSignal"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commonSignal"];
    }
  }

  if (self->_mediaSignal)
  {
    mediaSignal = [(PSESchemaPSEMediaSignalGenerated *)self mediaSignal];
    dictionaryRepresentation2 = [mediaSignal dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"mediaSignal"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"mediaSignal"];
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

  commonSignal = [(PSESchemaPSEMediaSignalGenerated *)self commonSignal];
  commonSignal2 = [equalCopy commonSignal];
  if ((commonSignal != 0) == (commonSignal2 == 0))
  {
    goto LABEL_11;
  }

  commonSignal3 = [(PSESchemaPSEMediaSignalGenerated *)self commonSignal];
  if (commonSignal3)
  {
    v8 = commonSignal3;
    commonSignal4 = [(PSESchemaPSEMediaSignalGenerated *)self commonSignal];
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

  commonSignal = [(PSESchemaPSEMediaSignalGenerated *)self mediaSignal];
  commonSignal2 = [equalCopy mediaSignal];
  if ((commonSignal != 0) != (commonSignal2 == 0))
  {
    mediaSignal = [(PSESchemaPSEMediaSignalGenerated *)self mediaSignal];
    if (!mediaSignal)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = mediaSignal;
    mediaSignal2 = [(PSESchemaPSEMediaSignalGenerated *)self mediaSignal];
    mediaSignal3 = [equalCopy mediaSignal];
    v16 = [mediaSignal2 isEqual:mediaSignal3];

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
  commonSignal = [(PSESchemaPSEMediaSignalGenerated *)self commonSignal];

  if (commonSignal)
  {
    commonSignal2 = [(PSESchemaPSEMediaSignalGenerated *)self commonSignal];
    PBDataWriterWriteSubmessage();
  }

  mediaSignal = [(PSESchemaPSEMediaSignalGenerated *)self mediaSignal];

  if (mediaSignal)
  {
    mediaSignal2 = [(PSESchemaPSEMediaSignalGenerated *)self mediaSignal];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PSESchemaPSEMediaSignalGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  commonSignal = [(PSESchemaPSEMediaSignalGenerated *)self commonSignal];
  v7 = [commonSignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PSESchemaPSEMediaSignalGenerated *)self deleteCommonSignal];
  }

  mediaSignal = [(PSESchemaPSEMediaSignalGenerated *)self mediaSignal];
  v10 = [mediaSignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PSESchemaPSEMediaSignalGenerated *)self deleteMediaSignal];
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