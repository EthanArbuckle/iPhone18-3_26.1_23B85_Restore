@interface ASRSchemaASRFinalResultGenerated
- (ASRSchemaASRFinalResultGenerated)initWithDictionary:(id)dictionary;
- (ASRSchemaASRFinalResultGenerated)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)correctAlignedPartialResultIndexListAtIndex:(unint64_t)index;
- (int)correctAlignedUnfilteredPartialResultIndexListAtIndex:(unint64_t)index;
- (int)correctPartialResultIndexListAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)tokenSilenceStartTimeInNsListAtIndex:(unint64_t)index;
- (void)addCorrectAlignedPartialResultIndexList:(int)list;
- (void)addCorrectAlignedUnfilteredPartialResultIndexList:(int)list;
- (void)addCorrectPartialResultIndexList:(int)list;
- (void)addTokenSilenceStartTimeInNsList:(unint64_t)list;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRFinalResultGenerated

- (ASRSchemaASRFinalResultGenerated)initWithDictionary:(id)dictionary
{
  v62 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v57.receiver = self;
  v57.super_class = ASRSchemaASRFinalResultGenerated;
  v5 = [(ASRSchemaASRFinalResultGenerated *)&v57 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tokenSilenceStartTimeInNsList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v54;
        do
        {
          v11 = 0;
          do
          {
            if (*v54 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v53 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRFinalResultGenerated addTokenSilenceStartTimeInNsList:](v5, "addTokenSilenceStartTimeInNsList:", [v12 unsignedLongLongValue]);
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v9);
      }
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"correctPartialResultIndexList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v49 objects:v60 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v50;
        do
        {
          v18 = 0;
          do
          {
            if (*v50 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v49 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRFinalResultGenerated addCorrectPartialResultIndexList:](v5, "addCorrectPartialResultIndexList:", [v19 intValue]);
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v49 objects:v60 count:16];
        }

        while (v16);
      }
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"isAfterResume"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRFinalResultGenerated setIsAfterResume:](v5, "setIsAfterResume:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"correctAlignedPartialResultIndexList"];
    objc_opt_class();
    v39 = v20;
    v40 = v13;
    if (objc_opt_isKindOfClass())
    {
      v22 = v6;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v46;
        do
        {
          v27 = 0;
          do
          {
            if (*v46 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v45 + 1) + 8 * v27);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRFinalResultGenerated addCorrectAlignedPartialResultIndexList:](v5, "addCorrectAlignedPartialResultIndexList:", [v28 intValue]);
            }

            ++v27;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v45 objects:v59 count:16];
        }

        while (v25);
      }

      v6 = v22;
      v20 = v39;
      v13 = v40;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"correctAlignedUnfilteredPartialResultIndexList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v6;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v41 objects:v58 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v42;
        do
        {
          v34 = 0;
          do
          {
            if (*v42 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v41 + 1) + 8 * v34);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRFinalResultGenerated addCorrectAlignedUnfilteredPartialResultIndexList:](v5, "addCorrectAlignedUnfilteredPartialResultIndexList:", [v35 intValue]);
            }

            ++v34;
          }

          while (v32 != v34);
          v32 = [v30 countByEnumeratingWithState:&v41 objects:v58 count:16];
        }

        while (v32);
      }

      v6 = v38;
      v20 = v39;
      v13 = v40;
    }

    v36 = v5;
  }

  return v5;
}

- (ASRSchemaASRFinalResultGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRFinalResultGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRFinalResultGenerated *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_correctAlignedPartialResultIndexLists count])
  {
    correctAlignedPartialResultIndexLists = [(ASRSchemaASRFinalResultGenerated *)self correctAlignedPartialResultIndexLists];
    v5 = [correctAlignedPartialResultIndexLists copy];
    [dictionary setObject:v5 forKeyedSubscript:@"correctAlignedPartialResultIndexList"];
  }

  if ([(NSArray *)self->_correctAlignedUnfilteredPartialResultIndexLists count])
  {
    correctAlignedUnfilteredPartialResultIndexLists = [(ASRSchemaASRFinalResultGenerated *)self correctAlignedUnfilteredPartialResultIndexLists];
    v7 = [correctAlignedUnfilteredPartialResultIndexLists copy];
    [dictionary setObject:v7 forKeyedSubscript:@"correctAlignedUnfilteredPartialResultIndexList"];
  }

  if ([(NSArray *)self->_correctPartialResultIndexLists count])
  {
    correctPartialResultIndexLists = [(ASRSchemaASRFinalResultGenerated *)self correctPartialResultIndexLists];
    v9 = [correctPartialResultIndexLists copy];
    [dictionary setObject:v9 forKeyedSubscript:@"correctPartialResultIndexList"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRFinalResultGenerated isAfterResume](self, "isAfterResume")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isAfterResume"];
  }

  if ([(NSArray *)self->_tokenSilenceStartTimeInNsLists count])
  {
    tokenSilenceStartTimeInNsLists = [(ASRSchemaASRFinalResultGenerated *)self tokenSilenceStartTimeInNsLists];
    v12 = [tokenSilenceStartTimeInNsLists copy];
    [dictionary setObject:v12 forKeyedSubscript:@"tokenSilenceStartTimeInNsList"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_tokenSilenceStartTimeInNsLists hash];
  v4 = [(NSArray *)self->_correctPartialResultIndexLists hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isAfterResume;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSArray *)self->_correctAlignedPartialResultIndexLists hash];
  return v6 ^ [(NSArray *)self->_correctAlignedUnfilteredPartialResultIndexLists hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  tokenSilenceStartTimeInNsLists = [(ASRSchemaASRFinalResultGenerated *)self tokenSilenceStartTimeInNsLists];
  tokenSilenceStartTimeInNsLists2 = [equalCopy tokenSilenceStartTimeInNsLists];
  if ((tokenSilenceStartTimeInNsLists != 0) == (tokenSilenceStartTimeInNsLists2 == 0))
  {
    goto LABEL_24;
  }

  tokenSilenceStartTimeInNsLists3 = [(ASRSchemaASRFinalResultGenerated *)self tokenSilenceStartTimeInNsLists];
  if (tokenSilenceStartTimeInNsLists3)
  {
    v8 = tokenSilenceStartTimeInNsLists3;
    tokenSilenceStartTimeInNsLists4 = [(ASRSchemaASRFinalResultGenerated *)self tokenSilenceStartTimeInNsLists];
    tokenSilenceStartTimeInNsLists5 = [equalCopy tokenSilenceStartTimeInNsLists];
    v11 = [tokenSilenceStartTimeInNsLists4 isEqual:tokenSilenceStartTimeInNsLists5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  tokenSilenceStartTimeInNsLists = [(ASRSchemaASRFinalResultGenerated *)self correctPartialResultIndexLists];
  tokenSilenceStartTimeInNsLists2 = [equalCopy correctPartialResultIndexLists];
  if ((tokenSilenceStartTimeInNsLists != 0) == (tokenSilenceStartTimeInNsLists2 == 0))
  {
    goto LABEL_24;
  }

  correctPartialResultIndexLists = [(ASRSchemaASRFinalResultGenerated *)self correctPartialResultIndexLists];
  if (correctPartialResultIndexLists)
  {
    v13 = correctPartialResultIndexLists;
    correctPartialResultIndexLists2 = [(ASRSchemaASRFinalResultGenerated *)self correctPartialResultIndexLists];
    correctPartialResultIndexLists3 = [equalCopy correctPartialResultIndexLists];
    v16 = [correctPartialResultIndexLists2 isEqual:correctPartialResultIndexLists3];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    isAfterResume = self->_isAfterResume;
    if (isAfterResume != [equalCopy isAfterResume])
    {
      goto LABEL_25;
    }
  }

  tokenSilenceStartTimeInNsLists = [(ASRSchemaASRFinalResultGenerated *)self correctAlignedPartialResultIndexLists];
  tokenSilenceStartTimeInNsLists2 = [equalCopy correctAlignedPartialResultIndexLists];
  if ((tokenSilenceStartTimeInNsLists != 0) == (tokenSilenceStartTimeInNsLists2 == 0))
  {
    goto LABEL_24;
  }

  correctAlignedPartialResultIndexLists = [(ASRSchemaASRFinalResultGenerated *)self correctAlignedPartialResultIndexLists];
  if (correctAlignedPartialResultIndexLists)
  {
    v19 = correctAlignedPartialResultIndexLists;
    correctAlignedPartialResultIndexLists2 = [(ASRSchemaASRFinalResultGenerated *)self correctAlignedPartialResultIndexLists];
    correctAlignedPartialResultIndexLists3 = [equalCopy correctAlignedPartialResultIndexLists];
    v22 = [correctAlignedPartialResultIndexLists2 isEqual:correctAlignedPartialResultIndexLists3];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  tokenSilenceStartTimeInNsLists = [(ASRSchemaASRFinalResultGenerated *)self correctAlignedUnfilteredPartialResultIndexLists];
  tokenSilenceStartTimeInNsLists2 = [equalCopy correctAlignedUnfilteredPartialResultIndexLists];
  if ((tokenSilenceStartTimeInNsLists != 0) != (tokenSilenceStartTimeInNsLists2 == 0))
  {
    correctAlignedUnfilteredPartialResultIndexLists = [(ASRSchemaASRFinalResultGenerated *)self correctAlignedUnfilteredPartialResultIndexLists];
    if (!correctAlignedUnfilteredPartialResultIndexLists)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = correctAlignedUnfilteredPartialResultIndexLists;
    correctAlignedUnfilteredPartialResultIndexLists2 = [(ASRSchemaASRFinalResultGenerated *)self correctAlignedUnfilteredPartialResultIndexLists];
    correctAlignedUnfilteredPartialResultIndexLists3 = [equalCopy correctAlignedUnfilteredPartialResultIndexLists];
    v27 = [correctAlignedUnfilteredPartialResultIndexLists2 isEqual:correctAlignedUnfilteredPartialResultIndexLists3];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = self->_tokenSilenceStartTimeInNsLists;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v37 + 1) + 8 * v9) unsignedLongLongValue];
        PBDataWriterWriteUint64Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_correctPartialResultIndexLists;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v33 + 1) + 8 * v14) intValue];
        PBDataWriterWriteInt32Field();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_correctAlignedPartialResultIndexLists;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v29 + 1) + 8 * v19) intValue];
        PBDataWriterWriteInt32Field();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_correctAlignedUnfilteredPartialResultIndexLists;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v25 + 1) + 8 * v24) intValue];
        PBDataWriterWriteInt32Field();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (int)correctAlignedUnfilteredPartialResultIndexListAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_correctAlignedUnfilteredPartialResultIndexLists objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addCorrectAlignedUnfilteredPartialResultIndexList:(int)list
{
  v3 = *&list;
  correctAlignedUnfilteredPartialResultIndexLists = self->_correctAlignedUnfilteredPartialResultIndexLists;
  if (!correctAlignedUnfilteredPartialResultIndexLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_correctAlignedUnfilteredPartialResultIndexLists;
    self->_correctAlignedUnfilteredPartialResultIndexLists = array;

    correctAlignedUnfilteredPartialResultIndexLists = self->_correctAlignedUnfilteredPartialResultIndexLists;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)correctAlignedUnfilteredPartialResultIndexLists addObject:v8];
}

- (int)correctAlignedPartialResultIndexListAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_correctAlignedPartialResultIndexLists objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addCorrectAlignedPartialResultIndexList:(int)list
{
  v3 = *&list;
  correctAlignedPartialResultIndexLists = self->_correctAlignedPartialResultIndexLists;
  if (!correctAlignedPartialResultIndexLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_correctAlignedPartialResultIndexLists;
    self->_correctAlignedPartialResultIndexLists = array;

    correctAlignedPartialResultIndexLists = self->_correctAlignedPartialResultIndexLists;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)correctAlignedPartialResultIndexLists addObject:v8];
}

- (int)correctPartialResultIndexListAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_correctPartialResultIndexLists objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addCorrectPartialResultIndexList:(int)list
{
  v3 = *&list;
  correctPartialResultIndexLists = self->_correctPartialResultIndexLists;
  if (!correctPartialResultIndexLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_correctPartialResultIndexLists;
    self->_correctPartialResultIndexLists = array;

    correctPartialResultIndexLists = self->_correctPartialResultIndexLists;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)correctPartialResultIndexLists addObject:v8];
}

- (unint64_t)tokenSilenceStartTimeInNsListAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_tokenSilenceStartTimeInNsLists objectAtIndexedSubscript:index];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)addTokenSilenceStartTimeInNsList:(unint64_t)list
{
  tokenSilenceStartTimeInNsLists = self->_tokenSilenceStartTimeInNsLists;
  if (!tokenSilenceStartTimeInNsLists)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tokenSilenceStartTimeInNsLists;
    self->_tokenSilenceStartTimeInNsLists = array;

    tokenSilenceStartTimeInNsLists = self->_tokenSilenceStartTimeInNsLists;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:list];
  [(NSArray *)tokenSilenceStartTimeInNsLists addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end