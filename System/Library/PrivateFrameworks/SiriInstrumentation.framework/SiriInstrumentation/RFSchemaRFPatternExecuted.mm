@interface RFSchemaRFPatternExecuted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFPatternExecuted)initWithDictionary:(id)dictionary;
- (RFSchemaRFPatternExecuted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation RFSchemaRFPatternExecuted

- (RFSchemaRFPatternExecuted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = RFSchemaRFPatternExecuted;
  v5 = [(RFSchemaRFPatternExecuted *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"patternId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RFSchemaRFPatternExecuted *)v5 setPatternId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pattern"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFPatternExecuted setPattern:](v5, "setPattern:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"mode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFPatternExecuted setMode:](v5, "setMode:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"responseViewId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(RFSchemaRFPatternExecuted *)v5 setResponseViewId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (RFSchemaRFPatternExecuted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFPatternExecuted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFPatternExecuted *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [(RFSchemaRFPatternExecuted *)self mode]- 1;
    if (v5 > 3)
    {
      v6 = @"RFSIRIMODE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E1E48[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"mode"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [(RFSchemaRFPatternExecuted *)self pattern]- 1;
    if (v7 > 0x11)
    {
      v8 = @"RFPATTERN_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E1E68[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"pattern"];
  }

  if (self->_patternId)
  {
    patternId = [(RFSchemaRFPatternExecuted *)self patternId];
    v10 = [patternId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"patternId"];
  }

  if (self->_responseViewId)
  {
    responseViewId = [(RFSchemaRFPatternExecuted *)self responseViewId];
    v12 = [responseViewId copy];
    [dictionary setObject:v12 forKeyedSubscript:@"responseViewId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_patternId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_pattern;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSString *)self->_responseViewId hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_mode;
  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_responseViewId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  patternId = [(RFSchemaRFPatternExecuted *)self patternId];
  patternId2 = [equalCopy patternId];
  if ((patternId != 0) == (patternId2 == 0))
  {
    goto LABEL_18;
  }

  patternId3 = [(RFSchemaRFPatternExecuted *)self patternId];
  if (patternId3)
  {
    v8 = patternId3;
    patternId4 = [(RFSchemaRFPatternExecuted *)self patternId];
    patternId5 = [equalCopy patternId];
    v11 = [patternId4 isEqual:patternId5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    pattern = self->_pattern;
    if (pattern != [equalCopy pattern])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    mode = self->_mode;
    if (mode != [equalCopy mode])
    {
      goto LABEL_19;
    }
  }

  patternId = [(RFSchemaRFPatternExecuted *)self responseViewId];
  patternId2 = [equalCopy responseViewId];
  if ((patternId != 0) == (patternId2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  responseViewId = [(RFSchemaRFPatternExecuted *)self responseViewId];
  if (!responseViewId)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = responseViewId;
  responseViewId2 = [(RFSchemaRFPatternExecuted *)self responseViewId];
  responseViewId3 = [equalCopy responseViewId];
  v21 = [responseViewId2 isEqual:responseViewId3];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  patternId = [(RFSchemaRFPatternExecuted *)self patternId];

  if (patternId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  responseViewId = [(RFSchemaRFPatternExecuted *)self responseViewId];

  v7 = toCopy;
  if (responseViewId)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (void)setHasMode:(BOOL)mode
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end