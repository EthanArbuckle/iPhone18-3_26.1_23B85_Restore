@interface MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance)initWithDictionary:(id)dictionary;
- (MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addVoiceProfileConfusionScores:(id)scores;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance

- (MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance;
  v5 = [(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentUtteranceNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance setEnrollmentUtteranceNumber:](v5, "setEnrollmentUtteranceNumber:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"voiceProfileConfusionScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v6;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[MHSchemaMHVoiceProfileConfusionScore alloc] initWithDictionary:v13];
              [(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance *)v5 addVoiceProfileConfusionScores:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v10);
      }

      v6 = v17;
    }

    v15 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance *)self dictionaryRepresentation];
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
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance enrollmentUtteranceNumber](self, "enrollmentUtteranceNumber")}];
    [dictionary setObject:v4 forKeyedSubscript:@"enrollmentUtteranceNumber"];
  }

  if ([(NSArray *)self->_voiceProfileConfusionScores count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_voiceProfileConfusionScores;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"voiceProfileConfusionScores"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v14];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_enrollmentUtteranceNumber;
  }

  else
  {
    v2 = 0;
  }

  return [(NSArray *)self->_voiceProfileConfusionScores hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (enrollmentUtteranceNumber = self->_enrollmentUtteranceNumber, enrollmentUtteranceNumber == [equalCopy enrollmentUtteranceNumber]))
      {
        voiceProfileConfusionScores = [(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance *)self voiceProfileConfusionScores];
        voiceProfileConfusionScores2 = [equalCopy voiceProfileConfusionScores];
        v8 = voiceProfileConfusionScores2;
        if ((voiceProfileConfusionScores != 0) != (voiceProfileConfusionScores2 == 0))
        {
          voiceProfileConfusionScores3 = [(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance *)self voiceProfileConfusionScores];
          if (!voiceProfileConfusionScores3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = voiceProfileConfusionScores3;
          voiceProfileConfusionScores4 = [(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance *)self voiceProfileConfusionScores];
          voiceProfileConfusionScores5 = [equalCopy voiceProfileConfusionScores];
          v13 = [voiceProfileConfusionScores4 isEqual:voiceProfileConfusionScores5];

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
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_voiceProfileConfusionScores;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addVoiceProfileConfusionScores:(id)scores
{
  scoresCopy = scores;
  voiceProfileConfusionScores = self->_voiceProfileConfusionScores;
  v8 = scoresCopy;
  if (!voiceProfileConfusionScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_voiceProfileConfusionScores;
    self->_voiceProfileConfusionScores = array;

    scoresCopy = v8;
    voiceProfileConfusionScores = self->_voiceProfileConfusionScores;
  }

  [(NSArray *)voiceProfileConfusionScores addObject:scoresCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance *)self voiceProfileConfusionScores:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance *)self setVoiceProfileConfusionScores:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end