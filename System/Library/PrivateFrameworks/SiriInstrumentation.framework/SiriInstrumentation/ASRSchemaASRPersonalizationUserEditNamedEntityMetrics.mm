@interface ASRSchemaASRPersonalizationUserEditNamedEntityMetrics
- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)initWithDictionary:(id)dictionary;
- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addLmeOverActivationEdits:(id)edits;
- (void)addNamedEntityUserEdits:(id)edits;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRPersonalizationUserEditNamedEntityMetrics

- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)initWithDictionary:(id)dictionary
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = ASRSchemaASRPersonalizationUserEditNamedEntityMetrics;
  v5 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numTotalEdit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRPersonalizationUserEditNamedEntityMetrics setNumTotalEdit:](v5, "setNumTotalEdit:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"namedEntityUserEdits"];
    objc_opt_class();
    v26 = v7;
    if (objc_opt_isKindOfClass())
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          v12 = 0;
          do
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[ASRSchemaASRNamedEntityUserEdit alloc] initWithDictionary:v13];
              [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)v5 addNamedEntityUserEdits:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v10);
      }

      v7 = v26;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"lmeOverActivationEdits"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          v20 = 0;
          do
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[ASRSchemaASRLMEOverActivationEdit alloc] initWithDictionary:v21];
              [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)v5 addLmeOverActivationEdits:v22];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
        }

        while (v18);
      }

      v6 = v25;
      v7 = v26;
    }

    v23 = v5;
  }

  return v5;
}

- (ASRSchemaASRPersonalizationUserEditNamedEntityMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self dictionaryRepresentation];
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
  v32 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_lmeOverActivationEdits count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_lmeOverActivationEdits;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"lmeOverActivationEdits"];
  }

  if ([(NSArray *)self->_namedEntityUserEdits count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = self->_namedEntityUserEdits;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"namedEntityUserEdits"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSchemaASRPersonalizationUserEditNamedEntityMetrics numTotalEdit](self, "numTotalEdit")}];
    [dictionary setObject:v20 forKeyedSubscript:@"numTotalEdit"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v22];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_numTotalEdit;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_namedEntityUserEdits hash]^ v3;
  return v4 ^ [(NSArray *)self->_lmeOverActivationEdits hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    numTotalEdit = self->_numTotalEdit;
    if (numTotalEdit != [equalCopy numTotalEdit])
    {
      goto LABEL_15;
    }
  }

  namedEntityUserEdits = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self namedEntityUserEdits];
  namedEntityUserEdits2 = [equalCopy namedEntityUserEdits];
  if ((namedEntityUserEdits != 0) == (namedEntityUserEdits2 == 0))
  {
    goto LABEL_14;
  }

  namedEntityUserEdits3 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self namedEntityUserEdits];
  if (namedEntityUserEdits3)
  {
    v9 = namedEntityUserEdits3;
    namedEntityUserEdits4 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self namedEntityUserEdits];
    namedEntityUserEdits5 = [equalCopy namedEntityUserEdits];
    v12 = [namedEntityUserEdits4 isEqual:namedEntityUserEdits5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  namedEntityUserEdits = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self lmeOverActivationEdits];
  namedEntityUserEdits2 = [equalCopy lmeOverActivationEdits];
  if ((namedEntityUserEdits != 0) != (namedEntityUserEdits2 == 0))
  {
    lmeOverActivationEdits = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self lmeOverActivationEdits];
    if (!lmeOverActivationEdits)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = lmeOverActivationEdits;
    lmeOverActivationEdits2 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self lmeOverActivationEdits];
    lmeOverActivationEdits3 = [equalCopy lmeOverActivationEdits];
    v17 = [lmeOverActivationEdits2 isEqual:lmeOverActivationEdits3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_namedEntityUserEdits;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_lmeOverActivationEdits;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)addLmeOverActivationEdits:(id)edits
{
  editsCopy = edits;
  lmeOverActivationEdits = self->_lmeOverActivationEdits;
  v8 = editsCopy;
  if (!lmeOverActivationEdits)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_lmeOverActivationEdits;
    self->_lmeOverActivationEdits = array;

    editsCopy = v8;
    lmeOverActivationEdits = self->_lmeOverActivationEdits;
  }

  [(NSArray *)lmeOverActivationEdits addObject:editsCopy];
}

- (void)addNamedEntityUserEdits:(id)edits
{
  editsCopy = edits;
  namedEntityUserEdits = self->_namedEntityUserEdits;
  v8 = editsCopy;
  if (!namedEntityUserEdits)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_namedEntityUserEdits;
    self->_namedEntityUserEdits = array;

    editsCopy = v8;
    namedEntityUserEdits = self->_namedEntityUserEdits;
  }

  [(NSArray *)namedEntityUserEdits addObject:editsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = ASRSchemaASRPersonalizationUserEditNamedEntityMetrics;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self namedEntityUserEdits:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self setNamedEntityUserEdits:v7];

  lmeOverActivationEdits = [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self lmeOverActivationEdits];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:lmeOverActivationEdits underConditions:policyCopy];

  [(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics *)self setLmeOverActivationEdits:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end