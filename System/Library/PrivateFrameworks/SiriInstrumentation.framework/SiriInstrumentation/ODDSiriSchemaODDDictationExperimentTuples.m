@interface ODDSiriSchemaODDDictationExperimentTuples
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationExperimentTuples)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDDictationExperimentTuples)initWithJSON:(id)a3;
- (float)endpointDelayInMsAtIndex:(unint64_t)a3;
- (float)launchTimeInMsAtIndex:(unint64_t)a3;
- (float)siriResponseTimeInMsAtIndex:(unint64_t)a3;
- (float)timeToFirstWordInMsAtIndex:(unint64_t)a3;
- (float)timeToUufrInMsAtIndex:(unint64_t)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEndpointDelayInMs:(float)a3;
- (void)addLaunchTimeInMs:(float)a3;
- (void)addSiriResponseTimeInMs:(float)a3;
- (void)addTimeToFirstWordInMs:(float)a3;
- (void)addTimeToUufrInMs:(float)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDDictationExperimentTuples

- (ODDSiriSchemaODDDictationExperimentTuples)initWithDictionary:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v66.receiver = self;
  v66.super_class = ODDSiriSchemaODDDictationExperimentTuples;
  v5 = [(ODDSiriSchemaODDDictationExperimentTuples *)&v66 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"launchTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v63;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v63 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v62 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v12 floatValue];
              [(ODDSiriSchemaODDDictationExperimentTuples *)v5 addLaunchTimeInMs:?];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v62 objects:v71 count:16];
        }

        while (v9);
      }
    }

    v13 = [v4 objectForKeyedSubscript:@"endpointDelayInMs"];
    objc_opt_class();
    v45 = v13;
    if (objc_opt_isKindOfClass())
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v59;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v59 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v58 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v19 floatValue];
              [(ODDSiriSchemaODDDictationExperimentTuples *)v5 addEndpointDelayInMs:?];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v16);
      }
    }

    v20 = [v4 objectForKeyedSubscript:@"siriResponseTimeInMs"];
    objc_opt_class();
    v44 = v20;
    if (objc_opt_isKindOfClass())
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v54 objects:v69 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v55;
        do
        {
          for (k = 0; k != v23; ++k)
          {
            if (*v55 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v54 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v26 floatValue];
              [(ODDSiriSchemaODDDictationExperimentTuples *)v5 addSiriResponseTimeInMs:?];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v54 objects:v69 count:16];
        }

        while (v23);
      }
    }

    v27 = [v4 objectForKeyedSubscript:@"timeToUufrInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = v27;
      v29 = [v28 countByEnumeratingWithState:&v50 objects:v68 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v51;
        do
        {
          for (m = 0; m != v30; ++m)
          {
            if (*v51 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v50 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v33 floatValue];
              [(ODDSiriSchemaODDDictationExperimentTuples *)v5 addTimeToUufrInMs:?];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v50 objects:v68 count:16];
        }

        while (v30);
      }
    }

    v34 = [v4 objectForKeyedSubscript:@"timeToFirstWordInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v6;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v35 = v34;
      v36 = [v35 countByEnumeratingWithState:&v46 objects:v67 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v47;
        do
        {
          for (n = 0; n != v37; ++n)
          {
            if (*v47 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v46 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v40 floatValue];
              [(ODDSiriSchemaODDDictationExperimentTuples *)v5 addTimeToFirstWordInMs:?];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v46 objects:v67 count:16];
        }

        while (v37);
      }

      v6 = v43;
    }

    v41 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDictationExperimentTuples)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationExperimentTuples *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDDictationExperimentTuples *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_endpointDelayInMs count])
  {
    v4 = [(ODDSiriSchemaODDDictationExperimentTuples *)self endpointDelayInMs];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"endpointDelayInMs"];
  }

  if ([(NSArray *)self->_launchTimeInMs count])
  {
    v6 = [(ODDSiriSchemaODDDictationExperimentTuples *)self launchTimeInMs];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"launchTimeInMs"];
  }

  if ([(NSArray *)self->_siriResponseTimeInMs count])
  {
    v8 = [(ODDSiriSchemaODDDictationExperimentTuples *)self siriResponseTimeInMs];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"siriResponseTimeInMs"];
  }

  if ([(NSArray *)self->_timeToFirstWordInMs count])
  {
    v10 = [(ODDSiriSchemaODDDictationExperimentTuples *)self timeToFirstWordInMs];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"timeToFirstWordInMs"];
  }

  if ([(NSArray *)self->_timeToUufrInMs count])
  {
    v12 = [(ODDSiriSchemaODDDictationExperimentTuples *)self timeToUufrInMs];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"timeToUufrInMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_launchTimeInMs hash];
  v4 = [(NSArray *)self->_endpointDelayInMs hash]^ v3;
  v5 = [(NSArray *)self->_siriResponseTimeInMs hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_timeToUufrInMs hash];
  return v6 ^ [(NSArray *)self->_timeToFirstWordInMs hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(ODDSiriSchemaODDDictationExperimentTuples *)self launchTimeInMs];
  v6 = [v4 launchTimeInMs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(ODDSiriSchemaODDDictationExperimentTuples *)self launchTimeInMs];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDDictationExperimentTuples *)self launchTimeInMs];
    v10 = [v4 launchTimeInMs];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDDictationExperimentTuples *)self endpointDelayInMs];
  v6 = [v4 endpointDelayInMs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(ODDSiriSchemaODDDictationExperimentTuples *)self endpointDelayInMs];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDDictationExperimentTuples *)self endpointDelayInMs];
    v15 = [v4 endpointDelayInMs];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDDictationExperimentTuples *)self siriResponseTimeInMs];
  v6 = [v4 siriResponseTimeInMs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(ODDSiriSchemaODDDictationExperimentTuples *)self siriResponseTimeInMs];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDDictationExperimentTuples *)self siriResponseTimeInMs];
    v20 = [v4 siriResponseTimeInMs];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDDictationExperimentTuples *)self timeToUufrInMs];
  v6 = [v4 timeToUufrInMs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(ODDSiriSchemaODDDictationExperimentTuples *)self timeToUufrInMs];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDDictationExperimentTuples *)self timeToUufrInMs];
    v25 = [v4 timeToUufrInMs];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDDictationExperimentTuples *)self timeToFirstWordInMs];
  v6 = [v4 timeToFirstWordInMs];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(ODDSiriSchemaODDDictationExperimentTuples *)self timeToFirstWordInMs];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(ODDSiriSchemaODDDictationExperimentTuples *)self timeToFirstWordInMs];
    v30 = [v4 timeToFirstWordInMs];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = self->_launchTimeInMs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v46 + 1) + 8 * v9) floatValue];
        PBDataWriterWriteFloatField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = self->_endpointDelayInMs;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v42 + 1) + 8 * v14) floatValue];
        PBDataWriterWriteFloatField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v12);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = self->_siriResponseTimeInMs;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      v19 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v38 + 1) + 8 * v19) floatValue];
        PBDataWriterWriteFloatField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_timeToUufrInMs;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v34 + 1) + 8 * v24) floatValue];
        PBDataWriterWriteFloatField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
    }

    while (v22);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = self->_timeToFirstWordInMs;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      v29 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v30 + 1) + 8 * v29) floatValue];
        PBDataWriterWriteFloatField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
    }

    while (v27);
  }
}

- (float)timeToFirstWordInMsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_timeToFirstWordInMs objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addTimeToFirstWordInMs:(float)a3
{
  timeToFirstWordInMs = self->_timeToFirstWordInMs;
  if (!timeToFirstWordInMs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_timeToFirstWordInMs;
    self->_timeToFirstWordInMs = v6;

    timeToFirstWordInMs = self->_timeToFirstWordInMs;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)timeToFirstWordInMs addObject:v9];
}

- (float)timeToUufrInMsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_timeToUufrInMs objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addTimeToUufrInMs:(float)a3
{
  timeToUufrInMs = self->_timeToUufrInMs;
  if (!timeToUufrInMs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_timeToUufrInMs;
    self->_timeToUufrInMs = v6;

    timeToUufrInMs = self->_timeToUufrInMs;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)timeToUufrInMs addObject:v9];
}

- (float)siriResponseTimeInMsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_siriResponseTimeInMs objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addSiriResponseTimeInMs:(float)a3
{
  siriResponseTimeInMs = self->_siriResponseTimeInMs;
  if (!siriResponseTimeInMs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_siriResponseTimeInMs;
    self->_siriResponseTimeInMs = v6;

    siriResponseTimeInMs = self->_siriResponseTimeInMs;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)siriResponseTimeInMs addObject:v9];
}

- (float)endpointDelayInMsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_endpointDelayInMs objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addEndpointDelayInMs:(float)a3
{
  endpointDelayInMs = self->_endpointDelayInMs;
  if (!endpointDelayInMs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_endpointDelayInMs;
    self->_endpointDelayInMs = v6;

    endpointDelayInMs = self->_endpointDelayInMs;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)endpointDelayInMs addObject:v9];
}

- (float)launchTimeInMsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_launchTimeInMs objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addLaunchTimeInMs:(float)a3
{
  launchTimeInMs = self->_launchTimeInMs;
  if (!launchTimeInMs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_launchTimeInMs;
    self->_launchTimeInMs = v6;

    launchTimeInMs = self->_launchTimeInMs;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)launchTimeInMs addObject:v9];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end