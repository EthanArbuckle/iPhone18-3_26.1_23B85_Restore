@interface SISchemaActiveStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaActiveStatus)initWithDictionary:(id)dictionary;
- (SISchemaActiveStatus)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAudioDevicesActiveWithin24Hours:(id)hours;
- (void)addCarBluetoothHeadUnitsActiveWithinLast24Hours:(id)hours;
- (void)writeTo:(id)to;
@end

@implementation SISchemaActiveStatus

- (SISchemaActiveStatus)initWithDictionary:(id)dictionary
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = SISchemaActiveStatus;
  v5 = [(SISchemaActiveStatus *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioDevicesActiveWithin24Hours"];
    objc_opt_class();
    v26 = v6;
    if (objc_opt_isKindOfClass())
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v32;
        do
        {
          v11 = 0;
          do
          {
            if (*v32 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v31 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[SISchemaActiveAudioDevice alloc] initWithDictionary:v12];
              [(SISchemaActiveStatus *)v5 addAudioDevicesActiveWithin24Hours:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v9);
      }

      v6 = v26;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"carPlayActiveWithin24Hours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaActiveStatus setCarPlayActiveWithin24Hours:](v5, "setCarPlayActiveWithin24Hours:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"carBluetoothHeadUnitsActiveWithinLast24Hours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = dictionaryCopy;
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
              v22 = [[SISchemaCarBluetoothHeadUnit alloc] initWithDictionary:v21];
              [(SISchemaActiveStatus *)v5 addCarBluetoothHeadUnitsActiveWithinLast24Hours:v22];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
        }

        while (v18);
      }

      dictionaryCopy = v25;
      v6 = v26;
    }

    v23 = v5;
  }

  return v5;
}

- (SISchemaActiveStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaActiveStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaActiveStatus *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_audioDevicesActiveWithin24Hours count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_audioDevicesActiveWithin24Hours;
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

    [dictionary setObject:array forKeyedSubscript:@"audioDevicesActiveWithin24Hours"];
  }

  if ([(NSArray *)self->_carBluetoothHeadUnitsActiveWithinLast24Hours count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = self->_carBluetoothHeadUnitsActiveWithinLast24Hours;
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

    [dictionary setObject:array2 forKeyedSubscript:@"carBluetoothHeadUnitsActiveWithinLast24Hours"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaActiveStatus carPlayActiveWithin24Hours](self, "carPlayActiveWithin24Hours")}];
    [dictionary setObject:v20 forKeyedSubscript:@"carPlayActiveWithin24Hours"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v22];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_audioDevicesActiveWithin24Hours hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_carPlayActiveWithin24Hours;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSArray *)self->_carBluetoothHeadUnitsActiveWithinLast24Hours hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  audioDevicesActiveWithin24Hours = [(SISchemaActiveStatus *)self audioDevicesActiveWithin24Hours];
  audioDevicesActiveWithin24Hours2 = [equalCopy audioDevicesActiveWithin24Hours];
  if ((audioDevicesActiveWithin24Hours != 0) == (audioDevicesActiveWithin24Hours2 == 0))
  {
    goto LABEL_14;
  }

  audioDevicesActiveWithin24Hours3 = [(SISchemaActiveStatus *)self audioDevicesActiveWithin24Hours];
  if (audioDevicesActiveWithin24Hours3)
  {
    v8 = audioDevicesActiveWithin24Hours3;
    audioDevicesActiveWithin24Hours4 = [(SISchemaActiveStatus *)self audioDevicesActiveWithin24Hours];
    audioDevicesActiveWithin24Hours5 = [equalCopy audioDevicesActiveWithin24Hours];
    v11 = [audioDevicesActiveWithin24Hours4 isEqual:audioDevicesActiveWithin24Hours5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    carPlayActiveWithin24Hours = self->_carPlayActiveWithin24Hours;
    if (carPlayActiveWithin24Hours != [equalCopy carPlayActiveWithin24Hours])
    {
      goto LABEL_15;
    }
  }

  audioDevicesActiveWithin24Hours = [(SISchemaActiveStatus *)self carBluetoothHeadUnitsActiveWithinLast24Hours];
  audioDevicesActiveWithin24Hours2 = [equalCopy carBluetoothHeadUnitsActiveWithinLast24Hours];
  if ((audioDevicesActiveWithin24Hours != 0) != (audioDevicesActiveWithin24Hours2 == 0))
  {
    carBluetoothHeadUnitsActiveWithinLast24Hours = [(SISchemaActiveStatus *)self carBluetoothHeadUnitsActiveWithinLast24Hours];
    if (!carBluetoothHeadUnitsActiveWithinLast24Hours)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = carBluetoothHeadUnitsActiveWithinLast24Hours;
    carBluetoothHeadUnitsActiveWithinLast24Hours2 = [(SISchemaActiveStatus *)self carBluetoothHeadUnitsActiveWithinLast24Hours];
    carBluetoothHeadUnitsActiveWithinLast24Hours3 = [equalCopy carBluetoothHeadUnitsActiveWithinLast24Hours];
    v17 = [carBluetoothHeadUnitsActiveWithinLast24Hours2 isEqual:carBluetoothHeadUnitsActiveWithinLast24Hours3];

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
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_audioDevicesActiveWithin24Hours;
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

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_carBluetoothHeadUnitsActiveWithinLast24Hours;
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

- (void)addCarBluetoothHeadUnitsActiveWithinLast24Hours:(id)hours
{
  hoursCopy = hours;
  carBluetoothHeadUnitsActiveWithinLast24Hours = self->_carBluetoothHeadUnitsActiveWithinLast24Hours;
  v8 = hoursCopy;
  if (!carBluetoothHeadUnitsActiveWithinLast24Hours)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_carBluetoothHeadUnitsActiveWithinLast24Hours;
    self->_carBluetoothHeadUnitsActiveWithinLast24Hours = array;

    hoursCopy = v8;
    carBluetoothHeadUnitsActiveWithinLast24Hours = self->_carBluetoothHeadUnitsActiveWithinLast24Hours;
  }

  [(NSArray *)carBluetoothHeadUnitsActiveWithinLast24Hours addObject:hoursCopy];
}

- (void)addAudioDevicesActiveWithin24Hours:(id)hours
{
  hoursCopy = hours;
  audioDevicesActiveWithin24Hours = self->_audioDevicesActiveWithin24Hours;
  v8 = hoursCopy;
  if (!audioDevicesActiveWithin24Hours)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioDevicesActiveWithin24Hours;
    self->_audioDevicesActiveWithin24Hours = array;

    hoursCopy = v8;
    audioDevicesActiveWithin24Hours = self->_audioDevicesActiveWithin24Hours;
  }

  [(NSArray *)audioDevicesActiveWithin24Hours addObject:hoursCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = SISchemaActiveStatus;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaActiveStatus *)self audioDevicesActiveWithin24Hours:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(SISchemaActiveStatus *)self setAudioDevicesActiveWithin24Hours:v7];

  carBluetoothHeadUnitsActiveWithinLast24Hours = [(SISchemaActiveStatus *)self carBluetoothHeadUnitsActiveWithinLast24Hours];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:carBluetoothHeadUnitsActiveWithinLast24Hours underConditions:policyCopy];

  [(SISchemaActiveStatus *)self setCarBluetoothHeadUnitsActiveWithinLast24Hours:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end