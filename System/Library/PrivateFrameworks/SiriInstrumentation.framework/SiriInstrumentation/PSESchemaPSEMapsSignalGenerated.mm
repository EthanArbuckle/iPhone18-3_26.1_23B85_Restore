@interface PSESchemaPSEMapsSignalGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSEMapsSignalGenerated)initWithDictionary:(id)dictionary;
- (PSESchemaPSEMapsSignalGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSEMapsSignalGenerated

- (PSESchemaPSEMapsSignalGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PSESchemaPSEMapsSignalGenerated;
  v5 = [(PSESchemaPSEMapsSignalGenerated *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commonSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PSESchemaPSECommonSignal alloc] initWithDictionary:v6];
      [(PSESchemaPSEMapsSignalGenerated *)v5 setCommonSignal:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mapsSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PSESchemaPSEMaps alloc] initWithDictionary:v8];
      [(PSESchemaPSEMapsSignalGenerated *)v5 setMapsSignal:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PSESchemaPSEMapsSignalGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSEMapsSignalGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSEMapsSignalGenerated *)self dictionaryRepresentation];
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
    commonSignal = [(PSESchemaPSEMapsSignalGenerated *)self commonSignal];
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

  if (self->_mapsSignal)
  {
    mapsSignal = [(PSESchemaPSEMapsSignalGenerated *)self mapsSignal];
    dictionaryRepresentation2 = [mapsSignal dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"mapsSignal"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"mapsSignal"];
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

  commonSignal = [(PSESchemaPSEMapsSignalGenerated *)self commonSignal];
  commonSignal2 = [equalCopy commonSignal];
  if ((commonSignal != 0) == (commonSignal2 == 0))
  {
    goto LABEL_11;
  }

  commonSignal3 = [(PSESchemaPSEMapsSignalGenerated *)self commonSignal];
  if (commonSignal3)
  {
    v8 = commonSignal3;
    commonSignal4 = [(PSESchemaPSEMapsSignalGenerated *)self commonSignal];
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

  commonSignal = [(PSESchemaPSEMapsSignalGenerated *)self mapsSignal];
  commonSignal2 = [equalCopy mapsSignal];
  if ((commonSignal != 0) != (commonSignal2 == 0))
  {
    mapsSignal = [(PSESchemaPSEMapsSignalGenerated *)self mapsSignal];
    if (!mapsSignal)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = mapsSignal;
    mapsSignal2 = [(PSESchemaPSEMapsSignalGenerated *)self mapsSignal];
    mapsSignal3 = [equalCopy mapsSignal];
    v16 = [mapsSignal2 isEqual:mapsSignal3];

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
  commonSignal = [(PSESchemaPSEMapsSignalGenerated *)self commonSignal];

  if (commonSignal)
  {
    commonSignal2 = [(PSESchemaPSEMapsSignalGenerated *)self commonSignal];
    PBDataWriterWriteSubmessage();
  }

  mapsSignal = [(PSESchemaPSEMapsSignalGenerated *)self mapsSignal];

  if (mapsSignal)
  {
    mapsSignal2 = [(PSESchemaPSEMapsSignalGenerated *)self mapsSignal];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PSESchemaPSEMapsSignalGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  commonSignal = [(PSESchemaPSEMapsSignalGenerated *)self commonSignal];
  v7 = [commonSignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PSESchemaPSEMapsSignalGenerated *)self deleteCommonSignal];
  }

  mapsSignal = [(PSESchemaPSEMapsSignalGenerated *)self mapsSignal];
  v10 = [mapsSignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PSESchemaPSEMapsSignalGenerated *)self deleteMapsSignal];
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