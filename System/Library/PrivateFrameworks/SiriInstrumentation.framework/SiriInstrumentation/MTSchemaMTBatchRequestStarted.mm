@interface MTSchemaMTBatchRequestStarted
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTBatchRequestStarted)initWithDictionary:(id)dictionary;
- (MTSchemaMTBatchRequestStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTBatchRequestStarted

- (MTSchemaMTBatchRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MTSchemaMTBatchRequestStarted;
  v5 = [(MTSchemaMTBatchRequestStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numParagraphs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTBatchRequestStarted setNumParagraphs:](v5, "setNumParagraphs:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"sequenceNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(MTSchemaMTBatchRequestStarted *)v5 setSequenceNumber:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (MTSchemaMTBatchRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTBatchRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTBatchRequestStarted *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MTSchemaMTBatchRequestStarted numParagraphs](self, "numParagraphs")}];
    [dictionary setObject:v4 forKeyedSubscript:@"numParagraphs"];
  }

  if (self->_sequenceNumber)
  {
    sequenceNumber = [(MTSchemaMTBatchRequestStarted *)self sequenceNumber];
    v6 = [sequenceNumber copy];
    [dictionary setObject:v6 forKeyedSubscript:@"sequenceNumber"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_numParagraphs;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_sequenceNumber hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (numParagraphs = self->_numParagraphs, numParagraphs == [equalCopy numParagraphs]))
      {
        sequenceNumber = [(MTSchemaMTBatchRequestStarted *)self sequenceNumber];
        sequenceNumber2 = [equalCopy sequenceNumber];
        v8 = sequenceNumber2;
        if ((sequenceNumber != 0) != (sequenceNumber2 == 0))
        {
          sequenceNumber3 = [(MTSchemaMTBatchRequestStarted *)self sequenceNumber];
          if (!sequenceNumber3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = sequenceNumber3;
          sequenceNumber4 = [(MTSchemaMTBatchRequestStarted *)self sequenceNumber];
          sequenceNumber5 = [equalCopy sequenceNumber];
          v13 = [sequenceNumber4 isEqual:sequenceNumber5];

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
    PBDataWriterWriteUint32Field();
  }

  sequenceNumber = [(MTSchemaMTBatchRequestStarted *)self sequenceNumber];

  v5 = toCopy;
  if (sequenceNumber)
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