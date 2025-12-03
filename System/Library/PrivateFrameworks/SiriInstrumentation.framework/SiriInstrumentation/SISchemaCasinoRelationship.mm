@interface SISchemaCasinoRelationship
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaCasinoRelationship)initWithDictionary:(id)dictionary;
- (SISchemaCasinoRelationship)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaCasinoRelationship

- (SISchemaCasinoRelationship)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaCasinoRelationship;
  v5 = [(SISchemaCasinoRelationship *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"viewIDFrom"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaCasinoRelationship *)v5 setViewIDFrom:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"viewIDTo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaCasinoRelationship *)v5 setViewIDTo:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"casinoFromType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaCasinoRelationship setCasinoFromType:](v5, "setCasinoFromType:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaCasinoRelationship)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaCasinoRelationship *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaCasinoRelationship *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    casinoFromType = [(SISchemaCasinoRelationship *)self casinoFromType];
    v5 = @"CASINO_UNKNOWN_CASINO_TYPE";
    if (casinoFromType == 1)
    {
      v5 = @"CASINO_COMPACT";
    }

    if (casinoFromType == 2)
    {
      v6 = @"CASINO_FULL";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"casinoFromType"];
  }

  if (self->_viewIDFrom)
  {
    viewIDFrom = [(SISchemaCasinoRelationship *)self viewIDFrom];
    v8 = [viewIDFrom copy];
    [dictionary setObject:v8 forKeyedSubscript:@"viewIDFrom"];
  }

  if (self->_viewIDTo)
  {
    viewIDTo = [(SISchemaCasinoRelationship *)self viewIDTo];
    v10 = [viewIDTo copy];
    [dictionary setObject:v10 forKeyedSubscript:@"viewIDTo"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_viewIDFrom hash];
  v4 = [(NSString *)self->_viewIDTo hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_casinoFromType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  viewIDFrom = [(SISchemaCasinoRelationship *)self viewIDFrom];
  viewIDFrom2 = [equalCopy viewIDFrom];
  if ((viewIDFrom != 0) == (viewIDFrom2 == 0))
  {
    goto LABEL_11;
  }

  viewIDFrom3 = [(SISchemaCasinoRelationship *)self viewIDFrom];
  if (viewIDFrom3)
  {
    v8 = viewIDFrom3;
    viewIDFrom4 = [(SISchemaCasinoRelationship *)self viewIDFrom];
    viewIDFrom5 = [equalCopy viewIDFrom];
    v11 = [viewIDFrom4 isEqual:viewIDFrom5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  viewIDFrom = [(SISchemaCasinoRelationship *)self viewIDTo];
  viewIDFrom2 = [equalCopy viewIDTo];
  if ((viewIDFrom != 0) == (viewIDFrom2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  viewIDTo = [(SISchemaCasinoRelationship *)self viewIDTo];
  if (viewIDTo)
  {
    v13 = viewIDTo;
    viewIDTo2 = [(SISchemaCasinoRelationship *)self viewIDTo];
    viewIDTo3 = [equalCopy viewIDTo];
    v16 = [viewIDTo2 isEqual:viewIDTo3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (casinoFromType = self->_casinoFromType, casinoFromType == [equalCopy casinoFromType]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  viewIDFrom = [(SISchemaCasinoRelationship *)self viewIDFrom];

  if (viewIDFrom)
  {
    PBDataWriterWriteStringField();
  }

  viewIDTo = [(SISchemaCasinoRelationship *)self viewIDTo];

  if (viewIDTo)
  {
    PBDataWriterWriteStringField();
  }

  v6 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end