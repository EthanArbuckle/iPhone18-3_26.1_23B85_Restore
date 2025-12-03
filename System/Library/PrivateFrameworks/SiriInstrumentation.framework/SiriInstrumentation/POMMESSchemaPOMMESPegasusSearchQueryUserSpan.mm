@interface POMMESSchemaPOMMESPegasusSearchQueryUserSpan
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusSearchQueryUserSpan)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESPegasusSearchQueryUserSpan)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESPegasusSearchQueryUserSpan

- (POMMESSchemaPOMMESPegasusSearchQueryUserSpan)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = POMMESSchemaPOMMESPegasusSearchQueryUserSpan;
  v5 = [(POMMESSchemaPOMMESPegasusSearchQueryUserSpan *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(POMMESSchemaPOMMESPegasusSearchQueryUserSpan *)v5 setLabel:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusSearchQueryUserSpan)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusSearchQueryUserSpan *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESPegasusSearchQueryUserSpan *)self dictionaryRepresentation];
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
  if (self->_label)
  {
    label = [(POMMESSchemaPOMMESPegasusSearchQueryUserSpan *)self label];
    v5 = [label copy];
    [dictionary setObject:v5 forKeyedSubscript:@"label"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    label = [(POMMESSchemaPOMMESPegasusSearchQueryUserSpan *)self label];
    label2 = [equalCopy label];
    v7 = label2;
    if ((label != 0) != (label2 == 0))
    {
      label3 = [(POMMESSchemaPOMMESPegasusSearchQueryUserSpan *)self label];
      if (!label3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = label3;
      label4 = [(POMMESSchemaPOMMESPegasusSearchQueryUserSpan *)self label];
      label5 = [equalCopy label];
      v12 = [label4 isEqual:label5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  label = [(POMMESSchemaPOMMESPegasusSearchQueryUserSpan *)self label];

  if (label)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end