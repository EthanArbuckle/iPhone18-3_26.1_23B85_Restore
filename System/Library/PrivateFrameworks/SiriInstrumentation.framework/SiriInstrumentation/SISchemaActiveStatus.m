@interface SISchemaActiveStatus
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaActiveStatus)initWithDictionary:(id)a3;
- (SISchemaActiveStatus)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAudioDevicesActiveWithin24Hours:(id)a3;
- (void)addCarBluetoothHeadUnitsActiveWithinLast24Hours:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaActiveStatus

- (SISchemaActiveStatus)initWithDictionary:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = SISchemaActiveStatus;
  v5 = [(SISchemaActiveStatus *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioDevicesActiveWithin24Hours"];
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

    v14 = [v4 objectForKeyedSubscript:@"carPlayActiveWithin24Hours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaActiveStatus setCarPlayActiveWithin24Hours:](v5, "setCarPlayActiveWithin24Hours:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"carBluetoothHeadUnitsActiveWithinLast24Hours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v4;
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

      v4 = v25;
      v6 = v26;
    }

    v23 = v5;
  }

  return v5;
}

- (SISchemaActiveStatus)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaActiveStatus *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaActiveStatus *)self dictionaryRepresentation];
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
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_audioDevicesActiveWithin24Hours count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"audioDevicesActiveWithin24Hours"];
  }

  if ([(NSArray *)self->_carBluetoothHeadUnitsActiveWithinLast24Hours count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
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

          v18 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = [MEMORY[0x1E695DFB0] null];
            [v12 addObject:v19];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"carBluetoothHeadUnitsActiveWithinLast24Hours"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaActiveStatus carPlayActiveWithin24Hours](self, "carPlayActiveWithin24Hours")}];
    [v3 setObject:v20 forKeyedSubscript:@"carPlayActiveWithin24Hours"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v22];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(SISchemaActiveStatus *)self audioDevicesActiveWithin24Hours];
  v6 = [v4 audioDevicesActiveWithin24Hours];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(SISchemaActiveStatus *)self audioDevicesActiveWithin24Hours];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaActiveStatus *)self audioDevicesActiveWithin24Hours];
    v10 = [v4 audioDevicesActiveWithin24Hours];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    carPlayActiveWithin24Hours = self->_carPlayActiveWithin24Hours;
    if (carPlayActiveWithin24Hours != [v4 carPlayActiveWithin24Hours])
    {
      goto LABEL_15;
    }
  }

  v5 = [(SISchemaActiveStatus *)self carBluetoothHeadUnitsActiveWithinLast24Hours];
  v6 = [v4 carBluetoothHeadUnitsActiveWithinLast24Hours];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(SISchemaActiveStatus *)self carBluetoothHeadUnitsActiveWithinLast24Hours];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SISchemaActiveStatus *)self carBluetoothHeadUnitsActiveWithinLast24Hours];
    v16 = [v4 carBluetoothHeadUnitsActiveWithinLast24Hours];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)addCarBluetoothHeadUnitsActiveWithinLast24Hours:(id)a3
{
  v4 = a3;
  carBluetoothHeadUnitsActiveWithinLast24Hours = self->_carBluetoothHeadUnitsActiveWithinLast24Hours;
  v8 = v4;
  if (!carBluetoothHeadUnitsActiveWithinLast24Hours)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_carBluetoothHeadUnitsActiveWithinLast24Hours;
    self->_carBluetoothHeadUnitsActiveWithinLast24Hours = v6;

    v4 = v8;
    carBluetoothHeadUnitsActiveWithinLast24Hours = self->_carBluetoothHeadUnitsActiveWithinLast24Hours;
  }

  [(NSArray *)carBluetoothHeadUnitsActiveWithinLast24Hours addObject:v4];
}

- (void)addAudioDevicesActiveWithin24Hours:(id)a3
{
  v4 = a3;
  audioDevicesActiveWithin24Hours = self->_audioDevicesActiveWithin24Hours;
  v8 = v4;
  if (!audioDevicesActiveWithin24Hours)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioDevicesActiveWithin24Hours;
    self->_audioDevicesActiveWithin24Hours = v6;

    v4 = v8;
    audioDevicesActiveWithin24Hours = self->_audioDevicesActiveWithin24Hours;
  }

  [(NSArray *)audioDevicesActiveWithin24Hours addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = SISchemaActiveStatus;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaActiveStatus *)self audioDevicesActiveWithin24Hours:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(SISchemaActiveStatus *)self setAudioDevicesActiveWithin24Hours:v7];

  v8 = [(SISchemaActiveStatus *)self carBluetoothHeadUnitsActiveWithinLast24Hours];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];

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