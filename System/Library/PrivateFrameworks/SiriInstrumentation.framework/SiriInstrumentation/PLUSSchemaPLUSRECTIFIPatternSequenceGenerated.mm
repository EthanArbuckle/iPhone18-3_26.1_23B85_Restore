@interface PLUSSchemaPLUSRECTIFIPatternSequenceGenerated
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addConstraints:(id)a3;
- (void)addSequence:(id)a3;
- (void)setHasNumberOfUniqueRequestsReviewed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSRECTIFIPatternSequenceGenerated

- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)initWithDictionary:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = PLUSSchemaPLUSRECTIFIPatternSequenceGenerated;
  v5 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)&v42 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"patternId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)v5 setPatternId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sequence"];
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

    v16 = [v4 objectForKeyedSubscript:{@"constraints", v30, v32}];
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

    v24 = [v4 objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SISchemaUUID alloc] initWithDictionary:v24];
      [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)v5 setOriginalRequestId:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"numberOfRequestsReviewed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternSequenceGenerated setNumberOfRequestsReviewed:](v5, "setNumberOfRequestsReviewed:", [v26 unsignedIntValue]);
    }

    v27 = [v4 objectForKeyedSubscript:@"numberOfUniqueRequestsReviewed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternSequenceGenerated setNumberOfUniqueRequestsReviewed:](v5, "setNumberOfUniqueRequestsReviewed:", [v27 unsignedIntValue]);
    }

    v28 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSRECTIFIPatternSequenceGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_constraints count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"constraints"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSRECTIFIPatternSequenceGenerated numberOfRequestsReviewed](self, "numberOfRequestsReviewed")}];
    [v3 setObject:v13 forKeyedSubscript:@"numberOfRequestsReviewed"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSRECTIFIPatternSequenceGenerated numberOfUniqueRequestsReviewed](self, "numberOfUniqueRequestsReviewed")}];
    [v3 setObject:v14 forKeyedSubscript:@"numberOfUniqueRequestsReviewed"];
  }

  if (self->_originalRequestId)
  {
    v15 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_patternId)
  {
    v18 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"patternId"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"patternId"];
    }
  }

  if ([(NSArray *)self->_sequences count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
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

          v27 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          if (v27)
          {
            [v21 addObject:v27];
          }

          else
          {
            v28 = [MEMORY[0x1E695DFB0] null];
            [v21 addObject:v28];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"sequence"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v30];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
  v6 = [v4 patternId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
    v10 = [v4 patternId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self sequences];
  v6 = [v4 sequences];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self sequences];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self sequences];
    v15 = [v4 sequences];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self constraints];
  v6 = [v4 constraints];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self constraints];
  if (v17)
  {
    v18 = v17;
    v19 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self constraints];
    v20 = [v4 constraints];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
  v6 = [v4 originalRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
  if (v22)
  {
    v23 = v22;
    v24 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
    v25 = [v4 originalRequestId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  has = self->_has;
  v30 = v4[48];
  if ((*&has & 1) == (v30 & 1))
  {
    if (*&has)
    {
      numberOfRequestsReviewed = self->_numberOfRequestsReviewed;
      if (numberOfRequestsReviewed != [v4 numberOfRequestsReviewed])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v30 = v4[48];
    }

    v32 = (*&has >> 1) & 1;
    if (v32 == ((v30 >> 1) & 1))
    {
      if (!v32 || (numberOfUniqueRequestsReviewed = self->_numberOfUniqueRequestsReviewed, numberOfUniqueRequestsReviewed == [v4 numberOfUniqueRequestsReviewed]))
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

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];

  if (v5)
  {
    v6 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
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

  v17 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];

  if (v17)
  {
    v18 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
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

- (void)setHasNumberOfUniqueRequestsReviewed:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addConstraints:(id)a3
{
  v4 = a3;
  constraints = self->_constraints;
  v8 = v4;
  if (!constraints)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_constraints;
    self->_constraints = v6;

    v4 = v8;
    constraints = self->_constraints;
  }

  [(NSArray *)constraints addObject:v4];
}

- (void)addSequence:(id)a3
{
  v4 = a3;
  sequences = self->_sequences;
  v8 = v4;
  if (!sequences)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_sequences;
    self->_sequences = v6;

    v4 = v8;
    sequences = self->_sequences;
  }

  [(NSArray *)sequences addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PLUSSchemaPLUSRECTIFIPatternSequenceGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v17 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self patternId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self deletePatternId];
  }

  v9 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self sequences];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self setSequences:v10];

  v11 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self constraints];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
  [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self setConstraints:v12];

  v13 = [(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated *)self originalRequestId];
  v14 = [v13 applySensitiveConditionsPolicy:v4];
  v15 = [v14 suppressMessage];

  if (v15)
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