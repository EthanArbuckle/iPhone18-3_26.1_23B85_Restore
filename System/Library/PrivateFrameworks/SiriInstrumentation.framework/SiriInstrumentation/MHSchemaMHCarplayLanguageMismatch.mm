@interface MHSchemaMHCarplayLanguageMismatch
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHCarplayLanguageMismatch)initWithDictionary:(id)dictionary;
- (MHSchemaMHCarplayLanguageMismatch)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHCarplayLanguageMismatch

- (MHSchemaMHCarplayLanguageMismatch)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MHSchemaMHCarplayLanguageMismatch;
  v5 = [(MHSchemaMHCarplayLanguageMismatch *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"carHeadUnitSelectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHCarplayLanguageMismatch *)v5 setCarHeadUnitSelectedLocale:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"carplayTriggerMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHCarplayLanguageMismatch setCarplayTriggerMode:](v5, "setCarplayTriggerMode:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (MHSchemaMHCarplayLanguageMismatch)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHCarplayLanguageMismatch *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHCarplayLanguageMismatch *)self dictionaryRepresentation];
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
  if (self->_carHeadUnitSelectedLocale)
  {
    carHeadUnitSelectedLocale = [(MHSchemaMHCarplayLanguageMismatch *)self carHeadUnitSelectedLocale];
    v5 = [carHeadUnitSelectedLocale copy];
    [dictionary setObject:v5 forKeyedSubscript:@"carHeadUnitSelectedLocale"];
  }

  if (*&self->_has)
  {
    v6 = [(MHSchemaMHCarplayLanguageMismatch *)self carplayTriggerMode]- 1;
    if (v6 > 2)
    {
      v7 = @"MHFIRSTPASSENHANCEDCARPLAYTRIGGERMODE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78D9348[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"carplayTriggerMode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_carHeadUnitSelectedLocale hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_carplayTriggerMode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  carHeadUnitSelectedLocale = [(MHSchemaMHCarplayLanguageMismatch *)self carHeadUnitSelectedLocale];
  carHeadUnitSelectedLocale2 = [equalCopy carHeadUnitSelectedLocale];
  v7 = carHeadUnitSelectedLocale2;
  if ((carHeadUnitSelectedLocale != 0) == (carHeadUnitSelectedLocale2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  carHeadUnitSelectedLocale3 = [(MHSchemaMHCarplayLanguageMismatch *)self carHeadUnitSelectedLocale];
  if (carHeadUnitSelectedLocale3)
  {
    v9 = carHeadUnitSelectedLocale3;
    carHeadUnitSelectedLocale4 = [(MHSchemaMHCarplayLanguageMismatch *)self carHeadUnitSelectedLocale];
    carHeadUnitSelectedLocale5 = [equalCopy carHeadUnitSelectedLocale];
    v12 = [carHeadUnitSelectedLocale4 isEqual:carHeadUnitSelectedLocale5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    carplayTriggerMode = self->_carplayTriggerMode;
    if (carplayTriggerMode != [equalCopy carplayTriggerMode])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  carHeadUnitSelectedLocale = [(MHSchemaMHCarplayLanguageMismatch *)self carHeadUnitSelectedLocale];

  if (carHeadUnitSelectedLocale)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end