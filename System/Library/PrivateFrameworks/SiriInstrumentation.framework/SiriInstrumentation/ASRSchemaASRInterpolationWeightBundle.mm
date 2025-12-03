@interface ASRSchemaASRInterpolationWeightBundle
- (ASRSchemaASRInterpolationWeightBundle)initWithDictionary:(id)dictionary;
- (ASRSchemaASRInterpolationWeightBundle)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (float)weightsAtIndex:(unint64_t)index;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addWeights:(float)weights;
- (void)setHasEndTimeInNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRInterpolationWeightBundle

- (ASRSchemaASRInterpolationWeightBundle)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = ASRSchemaASRInterpolationWeightBundle;
  v5 = [(ASRSchemaASRInterpolationWeightBundle *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRInterpolationWeightBundle setStartTimeInNs:](v5, "setStartTimeInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"endTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRInterpolationWeightBundle setEndTimeInNs:](v5, "setEndTimeInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"weights"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v6;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          v13 = 0;
          do
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v14 floatValue];
              [(ASRSchemaASRInterpolationWeightBundle *)v5 addWeights:?];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v11);
      }

      v6 = v17;
    }

    v15 = v5;
  }

  return v5;
}

- (ASRSchemaASRInterpolationWeightBundle)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRInterpolationWeightBundle *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRInterpolationWeightBundle *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRInterpolationWeightBundle endTimeInNs](self, "endTimeInNs")}];
    [dictionary setObject:v5 forKeyedSubscript:@"endTimeInNs"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRInterpolationWeightBundle startTimeInNs](self, "startTimeInNs")}];
    [dictionary setObject:v6 forKeyedSubscript:@"startTimeInNs"];
  }

  if ([(NSArray *)self->_weights count])
  {
    weights = [(ASRSchemaASRInterpolationWeightBundle *)self weights];
    v8 = [weights copy];
    [dictionary setObject:v8 forKeyedSubscript:@"weights"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_startTimeInNs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSArray *)self->_weights hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761u * self->_endTimeInNs;
  return v7 ^ v6 ^ [(NSArray *)self->_weights hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    startTimeInNs = self->_startTimeInNs;
    if (startTimeInNs != [equalCopy startTimeInNs])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (endTimeInNs = self->_endTimeInNs, endTimeInNs == [equalCopy endTimeInNs]))
    {
      weights = [(ASRSchemaASRInterpolationWeightBundle *)self weights];
      weights2 = [equalCopy weights];
      v12 = weights2;
      if ((weights != 0) != (weights2 == 0))
      {
        weights3 = [(ASRSchemaASRInterpolationWeightBundle *)self weights];
        if (!weights3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = weights3;
        weights4 = [(ASRSchemaASRInterpolationWeightBundle *)self weights];
        weights5 = [equalCopy weights];
        v17 = [weights4 isEqual:weights5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_weights;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) floatValue];
        PBDataWriterWriteFloatField();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (float)weightsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_weights objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addWeights:(float)weights
{
  weights = self->_weights;
  if (!weights)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_weights;
    self->_weights = array;

    weights = self->_weights;
  }

  *&v8 = weights;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)weights addObject:v9];
}

- (void)setHasEndTimeInNs:(BOOL)ns
{
  if (ns)
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