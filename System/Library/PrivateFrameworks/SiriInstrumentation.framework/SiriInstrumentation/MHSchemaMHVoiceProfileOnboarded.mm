@interface MHSchemaMHVoiceProfileOnboarded
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHVoiceProfileOnboarded)initWithDictionary:(id)dictionary;
- (MHSchemaMHVoiceProfileOnboarded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addConfusionScoresForEnrollmentUtterance:(id)utterance;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHVoiceProfileOnboarded

- (MHSchemaMHVoiceProfileOnboarded)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = MHSchemaMHVoiceProfileOnboarded;
  v5 = [(MHSchemaMHVoiceProfileOnboarded *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceProfilePitchInHz"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceProfileOnboarded setVoiceProfilePitchInHz:](v5, "setVoiceProfilePitchInHz:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"confusionScoresForEnrollmentUtterance"];
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
              v14 = [[MHSchemaMHVoiceProfileConfusionScoresForEnrollmentUtterance alloc] initWithDictionary:v13];
              [(MHSchemaMHVoiceProfileOnboarded *)v5 addConfusionScoresForEnrollmentUtterance:v14];
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

- (MHSchemaMHVoiceProfileOnboarded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceProfileOnboarded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHVoiceProfileOnboarded *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_confusionScoresForEnrollmentUtterances count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_confusionScoresForEnrollmentUtterances;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"confusionScoresForEnrollmentUtterance"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceProfileOnboarded voiceProfilePitchInHz](self, "voiceProfilePitchInHz")}];
    [dictionary setObject:v12 forKeyedSubscript:@"voiceProfilePitchInHz"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v14];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_voiceProfilePitchInHz;
  }

  else
  {
    v2 = 0;
  }

  return [(NSArray *)self->_confusionScoresForEnrollmentUtterances hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (voiceProfilePitchInHz = self->_voiceProfilePitchInHz, voiceProfilePitchInHz == [equalCopy voiceProfilePitchInHz]))
      {
        confusionScoresForEnrollmentUtterances = [(MHSchemaMHVoiceProfileOnboarded *)self confusionScoresForEnrollmentUtterances];
        confusionScoresForEnrollmentUtterances2 = [equalCopy confusionScoresForEnrollmentUtterances];
        v8 = confusionScoresForEnrollmentUtterances2;
        if ((confusionScoresForEnrollmentUtterances != 0) != (confusionScoresForEnrollmentUtterances2 == 0))
        {
          confusionScoresForEnrollmentUtterances3 = [(MHSchemaMHVoiceProfileOnboarded *)self confusionScoresForEnrollmentUtterances];
          if (!confusionScoresForEnrollmentUtterances3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = confusionScoresForEnrollmentUtterances3;
          confusionScoresForEnrollmentUtterances4 = [(MHSchemaMHVoiceProfileOnboarded *)self confusionScoresForEnrollmentUtterances];
          confusionScoresForEnrollmentUtterances5 = [equalCopy confusionScoresForEnrollmentUtterances];
          v13 = [confusionScoresForEnrollmentUtterances4 isEqual:confusionScoresForEnrollmentUtterances5];

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
  v5 = self->_confusionScoresForEnrollmentUtterances;
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

- (void)addConfusionScoresForEnrollmentUtterance:(id)utterance
{
  utteranceCopy = utterance;
  confusionScoresForEnrollmentUtterances = self->_confusionScoresForEnrollmentUtterances;
  v8 = utteranceCopy;
  if (!confusionScoresForEnrollmentUtterances)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_confusionScoresForEnrollmentUtterances;
    self->_confusionScoresForEnrollmentUtterances = array;

    utteranceCopy = v8;
    confusionScoresForEnrollmentUtterances = self->_confusionScoresForEnrollmentUtterances;
  }

  [(NSArray *)confusionScoresForEnrollmentUtterances addObject:utteranceCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHVoiceProfileOnboarded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHVoiceProfileOnboarded *)self confusionScoresForEnrollmentUtterances:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(MHSchemaMHVoiceProfileOnboarded *)self setConfusionScoresForEnrollmentUtterances:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end