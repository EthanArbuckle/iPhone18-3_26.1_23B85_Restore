@interface DODMLASRSchemaDODMLASREvaluationMetrics
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASREvaluationMetrics)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASREvaluationMetrics)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDev:(id)a3;
- (void)addExternal:(id)a3;
- (void)addTest:(id)a3;
- (void)addTrain:(id)a3;
- (void)setHasTotalDurationInMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASREvaluationMetrics

- (DODMLASRSchemaDODMLASREvaluationMetrics)initWithDictionary:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v63.receiver = self;
  v63.super_class = DODMLASRSchemaDODMLASREvaluationMetrics;
  v5 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)&v63 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bestWeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(DODMLASRSchemaDODMLASREvaluationMetrics *)v5 setBestWeight:?];
    }

    v44 = v6;
    v7 = [v4 objectForKeyedSubscript:@"totalDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASREvaluationMetrics setTotalDurationInMs:](v5, "setTotalDurationInMs:", [v7 unsignedLongLongValue]);
    }

    v43 = v7;
    v8 = [v4 objectForKeyedSubscript:@"train"];
    objc_opt_class();
    v46 = v8;
    if (objc_opt_isKindOfClass())
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v60;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v60 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v59 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[DODMLASRSchemaDODMLASRLanguageModelMetrics alloc] initWithDictionary:v14];
              [(DODMLASRSchemaDODMLASREvaluationMetrics *)v5 addTrain:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v11);
      }
    }

    v16 = [v4 objectForKeyedSubscript:@"dev"];
    objc_opt_class();
    v45 = v16;
    if (objc_opt_isKindOfClass())
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v56;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v56 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v55 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[DODMLASRSchemaDODMLASRLanguageModelMetrics alloc] initWithDictionary:v22];
              [(DODMLASRSchemaDODMLASREvaluationMetrics *)v5 addDev:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v55 objects:v66 count:16];
        }

        while (v19);
      }
    }

    v24 = [v4 objectForKeyedSubscript:@"test"];
    objc_opt_class();
    v42 = v24;
    if (objc_opt_isKindOfClass())
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v51 objects:v65 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v52;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v52 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v51 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = [[DODMLASRSchemaDODMLASRLanguageModelMetrics alloc] initWithDictionary:v30];
              [(DODMLASRSchemaDODMLASREvaluationMetrics *)v5 addTest:v31];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v51 objects:v65 count:16];
        }

        while (v27);
      }

      v24 = v42;
    }

    v32 = [v4 objectForKeyedSubscript:@"external"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v33 = v32;
      v34 = [v33 countByEnumeratingWithState:&v47 objects:v64 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v48;
        do
        {
          for (m = 0; m != v35; ++m)
          {
            if (*v48 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v47 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = [[DODMLASRSchemaDODMLASRLanguageModelMetrics alloc] initWithDictionary:v38];
              [(DODMLASRSchemaDODMLASREvaluationMetrics *)v5 addExternal:v39];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v47 objects:v64 count:16];
        }

        while (v35);
      }

      v24 = v42;
    }

    v40 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASREvaluationMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self dictionaryRepresentation];
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
  v60 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASREvaluationMetrics *)self bestWeight];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"bestWeight"];
  }

  if ([(NSArray *)self->_devs count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v7 = self->_devs;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v53;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v52 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"dev"];
  }

  if ([(NSArray *)self->_externals count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = self->_externals;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v49;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v48 + 1) + 8 * j) dictionaryRepresentation];
          if (v20)
          {
            [v14 addObject:v20];
          }

          else
          {
            v21 = [MEMORY[0x1E695DFB0] null];
            [v14 addObject:v21];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"external"];
  }

  if ([(NSArray *)self->_tests count])
  {
    v22 = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v23 = self->_tests;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v45;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v44 + 1) + 8 * k) dictionaryRepresentation];
          if (v28)
          {
            [v22 addObject:v28];
          }

          else
          {
            v29 = [MEMORY[0x1E695DFB0] null];
            [v22 addObject:v29];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"test"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASREvaluationMetrics totalDurationInMs](self, "totalDurationInMs")}];
    [v3 setObject:v30 forKeyedSubscript:@"totalDurationInMs"];
  }

  if ([(NSArray *)self->_trains count])
  {
    v31 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = self->_trains;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v41;
      do
      {
        for (m = 0; m != v34; ++m)
        {
          if (*v41 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v40 + 1) + 8 * m) dictionaryRepresentation];
          if (v37)
          {
            [v31 addObject:v37];
          }

          else
          {
            v38 = [MEMORY[0x1E695DFB0] null];
            [v31 addObject:v38];
          }
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v34);
    }

    [v3 setObject:v31 forKeyedSubscript:@"train"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    bestWeight = self->_bestWeight;
    if (bestWeight >= 0.0)
    {
      v7 = bestWeight;
    }

    else
    {
      v7 = -bestWeight;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761u * self->_totalDurationInMs;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 ^ v5 ^ [(NSArray *)self->_trains hash];
  v12 = [(NSArray *)self->_devs hash];
  v13 = v11 ^ v12 ^ [(NSArray *)self->_tests hash];
  return v13 ^ [(NSArray *)self->_externals hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = v4[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    bestWeight = self->_bestWeight;
    [v4 bestWeight];
    if (bestWeight != v8)
    {
      goto LABEL_29;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v9)
  {
    totalDurationInMs = self->_totalDurationInMs;
    if (totalDurationInMs != [v4 totalDurationInMs])
    {
      goto LABEL_29;
    }
  }

  v11 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self trains];
  v12 = [v4 trains];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_28;
  }

  v13 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self trains];
  if (v13)
  {
    v14 = v13;
    v15 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self trains];
    v16 = [v4 trains];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v11 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self devs];
  v12 = [v4 devs];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_28;
  }

  v18 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self devs];
  if (v18)
  {
    v19 = v18;
    v20 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self devs];
    v21 = [v4 devs];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v11 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self tests];
  v12 = [v4 tests];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_28;
  }

  v23 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self tests];
  if (v23)
  {
    v24 = v23;
    v25 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self tests];
    v26 = [v4 tests];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v11 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self externals];
  v12 = [v4 externals];
  if ((v11 != 0) != (v12 == 0))
  {
    v28 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self externals];
    if (!v28)
    {

LABEL_32:
      v33 = 1;
      goto LABEL_30;
    }

    v29 = v28;
    v30 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self externals];
    v31 = [v4 externals];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_28:
  }

LABEL_29:
  v33 = 0;
LABEL_30:

  return v33;
}

- (void)writeTo:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = self->_trains;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = self->_devs;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = self->_tests;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v18);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = self->_externals;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteSubmessage();
      }

      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v23);
  }
}

- (void)addExternal:(id)a3
{
  v4 = a3;
  externals = self->_externals;
  v8 = v4;
  if (!externals)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_externals;
    self->_externals = v6;

    v4 = v8;
    externals = self->_externals;
  }

  [(NSArray *)externals addObject:v4];
}

- (void)addTest:(id)a3
{
  v4 = a3;
  tests = self->_tests;
  v8 = v4;
  if (!tests)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_tests;
    self->_tests = v6;

    v4 = v8;
    tests = self->_tests;
  }

  [(NSArray *)tests addObject:v4];
}

- (void)addDev:(id)a3
{
  v4 = a3;
  devs = self->_devs;
  v8 = v4;
  if (!devs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_devs;
    self->_devs = v6;

    v4 = v8;
    devs = self->_devs;
  }

  [(NSArray *)devs addObject:v4];
}

- (void)addTrain:(id)a3
{
  v4 = a3;
  trains = self->_trains;
  v8 = v4;
  if (!trains)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_trains;
    self->_trains = v6;

    v4 = v8;
    trains = self->_trains;
  }

  [(NSArray *)trains addObject:v4];
}

- (void)setHasTotalDurationInMs:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASREvaluationMetrics;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self trains:v15.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(DODMLASRSchemaDODMLASREvaluationMetrics *)self setTrains:v7];

  v8 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self devs];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];
  [(DODMLASRSchemaDODMLASREvaluationMetrics *)self setDevs:v9];

  v10 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self tests];
  v11 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v10 underConditions:v4];
  [(DODMLASRSchemaDODMLASREvaluationMetrics *)self setTests:v11];

  v12 = [(DODMLASRSchemaDODMLASREvaluationMetrics *)self externals];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];

  [(DODMLASRSchemaDODMLASREvaluationMetrics *)self setExternals:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end