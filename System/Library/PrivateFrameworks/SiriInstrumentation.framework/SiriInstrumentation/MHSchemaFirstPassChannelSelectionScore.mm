@interface MHSchemaFirstPassChannelSelectionScore
- (BOOL)isEqual:(id)equal;
- (MHSchemaFirstPassChannelSelectionScore)initWithDictionary:(id)dictionary;
- (MHSchemaFirstPassChannelSelectionScore)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaFirstPassChannelSelectionScore

- (MHSchemaFirstPassChannelSelectionScore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MHSchemaFirstPassChannelSelectionScore;
  v5 = [(MHSchemaFirstPassChannelSelectionScore *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"channelString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaFirstPassChannelSelectionScore *)v5 setChannelString:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"firstPassScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaFirstPassChannelSelectionScore *)v5 setFirstPassScore:?];
    }

    v9 = v5;
  }

  return v5;
}

- (MHSchemaFirstPassChannelSelectionScore)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaFirstPassChannelSelectionScore *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaFirstPassChannelSelectionScore *)self dictionaryRepresentation];
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
  if (self->_channelString)
  {
    channelString = [(MHSchemaFirstPassChannelSelectionScore *)self channelString];
    v5 = [channelString copy];
    [dictionary setObject:v5 forKeyedSubscript:@"channelString"];
  }

  if (*&self->_has)
  {
    v6 = MEMORY[0x1E696AD98];
    [(MHSchemaFirstPassChannelSelectionScore *)self firstPassScore];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"firstPassScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_channelString hash];
  if (*&self->_has)
  {
    firstPassScore = self->_firstPassScore;
    if (firstPassScore >= 0.0)
    {
      v8 = firstPassScore;
    }

    else
    {
      v8 = -firstPassScore;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  channelString = [(MHSchemaFirstPassChannelSelectionScore *)self channelString];
  channelString2 = [equalCopy channelString];
  v7 = channelString2;
  if ((channelString != 0) != (channelString2 == 0))
  {
    channelString3 = [(MHSchemaFirstPassChannelSelectionScore *)self channelString];
    if (channelString3)
    {
      v9 = channelString3;
      channelString4 = [(MHSchemaFirstPassChannelSelectionScore *)self channelString];
      channelString5 = [equalCopy channelString];
      v12 = [channelString4 isEqual:channelString5];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if ((*&self->_has & 1) == (equalCopy[20] & 1))
    {
      if ((*&self->_has & 1) == 0 || (firstPassScore = self->_firstPassScore, [equalCopy firstPassScore], firstPassScore == v14))
      {
        v15 = 1;
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

LABEL_11:
  v15 = 0;
LABEL_12:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  channelString = [(MHSchemaFirstPassChannelSelectionScore *)self channelString];

  if (channelString)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end