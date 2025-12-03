@interface RGSiriSchemaRGOverrideEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RGSiriSchemaRGOverrideEnded)initWithDictionary:(id)dictionary;
- (RGSiriSchemaRGOverrideEnded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RGSiriSchemaRGOverrideEnded

- (RGSiriSchemaRGOverrideEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RGSiriSchemaRGOverrideEnded;
  v5 = [(RGSiriSchemaRGOverrideEnded *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"overrideType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGOverrideEnded setOverrideType:](v5, "setOverrideType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"overrideId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(RGSiriSchemaRGOverrideEnded *)v5 setOverrideId:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGOverrideEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGOverrideEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RGSiriSchemaRGOverrideEnded *)self dictionaryRepresentation];
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
  if (self->_overrideId)
  {
    overrideId = [(RGSiriSchemaRGOverrideEnded *)self overrideId];
    v5 = [overrideId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"overrideId"];
  }

  if (*&self->_has)
  {
    v6 = [(RGSiriSchemaRGOverrideEnded *)self overrideType]- 1;
    if (v6 > 2)
    {
      v7 = @"RGOVERRIDETYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E1F90[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"overrideType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_overrideType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_overrideId hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (overrideType = self->_overrideType, overrideType == [equalCopy overrideType]))
      {
        overrideId = [(RGSiriSchemaRGOverrideEnded *)self overrideId];
        overrideId2 = [equalCopy overrideId];
        v8 = overrideId2;
        if ((overrideId != 0) != (overrideId2 == 0))
        {
          overrideId3 = [(RGSiriSchemaRGOverrideEnded *)self overrideId];
          if (!overrideId3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = overrideId3;
          overrideId4 = [(RGSiriSchemaRGOverrideEnded *)self overrideId];
          overrideId5 = [equalCopy overrideId];
          v13 = [overrideId4 isEqual:overrideId5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  overrideId = [(RGSiriSchemaRGOverrideEnded *)self overrideId];

  v5 = toCopy;
  if (overrideId)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end