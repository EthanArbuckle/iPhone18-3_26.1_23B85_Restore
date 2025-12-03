@interface PLUSSchemaPLUSRECTIFIPatternSequenceGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addConstraints:(id)constraints;
- (void)addSequence:(id)sequence;
- (void)setHasNumberOfUniqueRequestsReviewed:(BOOL)reviewed;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSRECTIFIPatternSequenceGenerated

- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)initWithDictionary:(id)dictionary
{
  v45 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = PLUSSchemaPLUSRECTIFIPatternSequenceGenerated;
  v5 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)&v42 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"patternId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)v5 setPatternId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sequence"];
    objc_opt_class();
    v30 = v8;
    v32 = v6;
    if (objc_opt_isKindOfClass())
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v39;
        do
        {
          v13 = 0;
          do
          {
            if (*v39 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v38 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[PLUSSchemaPLUSRECTIFIPatternItem alloc] initWithDictionary:v14];
              [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)v5 addSequence:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v11);
      }

      v8 = v30;
      v6 = v32;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"constraints", v30, v32}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v35;
        do
        {
          v21 = 0;
          do
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v34 + 1) + 8 * v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[PLUSSchemaPLUSRECTIFIPatternConstraint alloc] initWithDictionary:v22];
              [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)v5 addConstraints:v23];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v19);
      }

      v8 = v31;
      v6 = v33;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SISchemaUUID alloc] initWithDictionary:v24];
      [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)v5 setOriginalRequestId:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"numberOfRequestsReviewed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternSequenceGenerated setNumberOfRequestsReviewed:](v5, "setNumberOfRequestsReviewed:", [v26 unsignedIntValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"numberOfUniqueRequestsReviewed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternSequenceGenerated setNumberOfUniqueRequestsReviewed:](v5, "setNumberOfUniqueRequestsReviewed:", [v27 unsignedIntValue]);
    }

    v28 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self dictionaryRepresentation];
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
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_constraints count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = self->_constraints;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"constraints"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSRECTIFIPatternSequenceGenerated numberOfRequestsReviewed](self, "numberOfRequestsReviewed")}];
    [dictionary setObject:v13 forKeyedSubscript:@"numberOfRequestsReviewed"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSRECTIFIPatternSequenceGenerated numberOfUniqueRequestsReviewed](self, "numberOfUniqueRequestsReviewed")}];
    [dictionary setObject:v14 forKeyedSubscript:@"numberOfUniqueRequestsReviewed"];
  }

  if (self->_originalRequestId)
  {
    originalRequestId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
    dictionaryRepresentation2 = [originalRequestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_patternId)
  {
    patternId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
    dictionaryRepresentation3 = [patternId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"patternId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"patternId"];
    }
  }

  if ([(NSArray *)self->_sequences count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = self->_sequences;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation4 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"sequence"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v30];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_patternId hash];
  v4 = [(NSArray *)self->_sequences hash];
  v5 = [(NSArray *)self->_constraints hash];
  v6 = [(SISchemaUUID *)self->_originalRequestId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_numberOfRequestsReviewed;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_numberOfUniqueRequestsReviewed;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  patternId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
  patternId2 = [equalCopy patternId];
  if ((patternId != 0) == (patternId2 == 0))
  {
    goto LABEL_21;
  }

  patternId3 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
  if (patternId3)
  {
    v8 = patternId3;
    patternId4 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
    patternId5 = [equalCopy patternId];
    v11 = [patternId4 isEqual:patternId5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  patternId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self sequences];
  patternId2 = [equalCopy sequences];
  if ((patternId != 0) == (patternId2 == 0))
  {
    goto LABEL_21;
  }

  sequences = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self sequences];
  if (sequences)
  {
    v13 = sequences;
    sequences2 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self sequences];
    sequences3 = [equalCopy sequences];
    v16 = [sequences2 isEqual:sequences3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  patternId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self constraints];
  patternId2 = [equalCopy constraints];
  if ((patternId != 0) == (patternId2 == 0))
  {
    goto LABEL_21;
  }

  constraints = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self constraints];
  if (constraints)
  {
    v18 = constraints;
    constraints2 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self constraints];
    constraints3 = [equalCopy constraints];
    v21 = [constraints2 isEqual:constraints3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  patternId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
  patternId2 = [equalCopy originalRequestId];
  if ((patternId != 0) == (patternId2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  originalRequestId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
  if (originalRequestId)
  {
    v23 = originalRequestId;
    originalRequestId2 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
    originalRequestId3 = [equalCopy originalRequestId];
    v26 = [originalRequestId2 isEqual:originalRequestId3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  has = self->_has;
  v30 = equalCopy[48];
  if ((*&has & 1) == (v30 & 1))
  {
    if (*&has)
    {
      numberOfRequestsReviewed = self->_numberOfRequestsReviewed;
      if (numberOfRequestsReviewed != [equalCopy numberOfRequestsReviewed])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v30 = equalCopy[48];
    }

    v32 = (*&has >> 1) & 1;
    if (v32 == ((v30 >> 1) & 1))
    {
      if (!v32 || (numberOfUniqueRequestsReviewed = self->_numberOfUniqueRequestsReviewed, numberOfUniqueRequestsReviewed == [equalCopy numberOfUniqueRequestsReviewed]))
      {
        v27 = 1;
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  patternId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];

  if (patternId)
  {
    patternId2 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
    PBDataWriterWriteSubmessage();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_sequences;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_constraints;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  originalRequestId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasNumberOfUniqueRequestsReviewed:(BOOL)reviewed
{
  if (reviewed)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addConstraints:(id)constraints
{
  constraintsCopy = constraints;
  constraints = self->_constraints;
  v8 = constraintsCopy;
  if (!constraints)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_constraints;
    self->_constraints = array;

    constraintsCopy = v8;
    constraints = self->_constraints;
  }

  [(NSArray *)constraints addObject:constraintsCopy];
}

- (void)addSequence:(id)sequence
{
  sequenceCopy = sequence;
  sequences = self->_sequences;
  v8 = sequenceCopy;
  if (!sequences)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sequences;
    self->_sequences = array;

    sequenceCopy = v8;
    sequences = self->_sequences;
  }

  [(NSArray *)sequences addObject:sequenceCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v17.receiver = self;
  v17.super_class = PLUSSchemaPLUSRECTIFIPatternSequenceGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v17 applySensitiveConditionsPolicy:policyCopy];
  patternId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
  v7 = [patternId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self deletePatternId];
  }

  sequences = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self sequences];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:sequences underConditions:policyCopy];
  [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self setSequences:v10];

  constraints = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self constraints];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:constraints underConditions:policyCopy];
  [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self setConstraints:v12];

  originalRequestId = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
  v14 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v14 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self deleteOriginalRequestId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end