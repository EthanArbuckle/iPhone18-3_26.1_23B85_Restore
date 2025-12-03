@interface DODMLASRSchemaDODMLASRModelMetrics
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRModelMetrics)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRModelMetrics)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConversionDurationInMs:(BOOL)ms;
- (void)setHasModelTrainingStatusCode:(BOOL)code;
- (void)setHasNgramOrder:(BOOL)order;
- (void)setHasNumFiniteStateTransducerArcs:(BOOL)arcs;
- (void)setHasNumFiniteStateTransducerStates:(BOOL)states;
- (void)setHasOptimizationDurationInMs:(BOOL)ms;
- (void)setHasResidualAdaptationWeight:(BOOL)weight;
- (void)setHasTotalDurationInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRModelMetrics

- (DODMLASRSchemaDODMLASRModelMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = DODMLASRSchemaDODMLASRModelMetrics;
  v5 = [(DODMLASRSchemaDODMLASRModelMetrics *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"configName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRModelMetrics *)v5 setConfigName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"trainingDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRModelMetrics setTrainingDurationInMs:](v5, "setTrainingDurationInMs:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"conversionDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRModelMetrics setConversionDurationInMs:](v5, "setConversionDurationInMs:", [v9 unsignedLongLongValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"optimizationDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRModelMetrics setOptimizationDurationInMs:](v5, "setOptimizationDurationInMs:", [v10 unsignedLongLongValue]);
    }

    v20 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"totalDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRModelMetrics setTotalDurationInMs:](v5, "setTotalDurationInMs:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"ngramOrder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRModelMetrics setNgramOrder:](v5, "setNgramOrder:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"residualAdaptationWeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(DODMLASRSchemaDODMLASRModelMetrics *)v5 setResidualAdaptationWeight:?];
    }

    v21 = v9;
    v22 = v8;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"modelTrainingStatusCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRModelMetrics setModelTrainingStatusCode:](v5, "setModelTrainingStatusCode:", [v14 unsignedIntValue]);
    }

    v15 = v6;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"numFiniteStateTransducerArcs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRModelMetrics setNumFiniteStateTransducerArcs:](v5, "setNumFiniteStateTransducerArcs:", [v16 unsignedIntValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"numFiniteStateTransducerStates"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRModelMetrics setNumFiniteStateTransducerStates:](v5, "setNumFiniteStateTransducerStates:", [v17 unsignedIntValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRModelMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRModelMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRModelMetrics *)self dictionaryRepresentation];
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
  if (self->_configName)
  {
    configName = [(DODMLASRSchemaDODMLASRModelMetrics *)self configName];
    v5 = [configName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"configName"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRModelMetrics conversionDurationInMs](self, "conversionDurationInMs")}];
    [dictionary setObject:v9 forKeyedSubscript:@"conversionDurationInMs"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRModelMetrics modelTrainingStatusCode](self, "modelTrainingStatusCode")}];
  [dictionary setObject:v10 forKeyedSubscript:@"modelTrainingStatusCode"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRModelMetrics ngramOrder](self, "ngramOrder")}];
  [dictionary setObject:v11 forKeyedSubscript:@"ngramOrder"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRModelMetrics numFiniteStateTransducerArcs](self, "numFiniteStateTransducerArcs")}];
  [dictionary setObject:v12 forKeyedSubscript:@"numFiniteStateTransducerArcs"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRModelMetrics numFiniteStateTransducerStates](self, "numFiniteStateTransducerStates")}];
  [dictionary setObject:v13 forKeyedSubscript:@"numFiniteStateTransducerStates"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRModelMetrics optimizationDurationInMs](self, "optimizationDurationInMs")}];
  [dictionary setObject:v14 forKeyedSubscript:@"optimizationDurationInMs"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = MEMORY[0x1E696AD98];
  [(DODMLASRSchemaDODMLASRModelMetrics *)self residualAdaptationWeight];
  v16 = [v15 numberWithFloat:?];
  [dictionary setObject:v16 forKeyedSubscript:@"residualAdaptationWeight"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRModelMetrics totalDurationInMs](self, "totalDurationInMs")}];
  [dictionary setObject:v17 forKeyedSubscript:@"totalDurationInMs"];

  if (*&self->_has)
  {
LABEL_12:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRModelMetrics trainingDurationInMs](self, "trainingDurationInMs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"trainingDurationInMs"];
  }

LABEL_13:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_configName hash];
  has = self->_has;
  if (has)
  {
    v7 = 2654435761u * self->_trainingDurationInMs;
    if ((has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761u * self->_conversionDurationInMs;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v9 = 2654435761u * self->_optimizationDurationInMs;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v10 = 2654435761u * self->_totalDurationInMs;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v11 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

LABEL_15:
  v10 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  v11 = 2654435761 * self->_ngramOrder;
  if ((has & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  residualAdaptationWeight = self->_residualAdaptationWeight;
  if (residualAdaptationWeight >= 0.0)
  {
    v13 = residualAdaptationWeight;
  }

  else
  {
    v13 = -residualAdaptationWeight;
  }

  *v4.i64 = floor(v13 + 0.5);
  v14 = (v13 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v16 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v5, v4).i64;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabs(v14);
  }

LABEL_18:
  if ((has & 0x40) == 0)
  {
    v17 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v18 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    v19 = 0;
    return v7 ^ v3 ^ v8 ^ v9 ^ v10 ^ v11 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v17 = 2654435761 * self->_modelTrainingStatusCode;
  if ((has & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v18 = 2654435761 * self->_numFiniteStateTransducerArcs;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v19 = 2654435761 * self->_numFiniteStateTransducerStates;
  return v7 ^ v3 ^ v8 ^ v9 ^ v10 ^ v11 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  configName = [(DODMLASRSchemaDODMLASRModelMetrics *)self configName];
  configName2 = [equalCopy configName];
  v7 = configName2;
  if ((configName != 0) == (configName2 == 0))
  {

    goto LABEL_44;
  }

  configName3 = [(DODMLASRSchemaDODMLASRModelMetrics *)self configName];
  if (configName3)
  {
    v9 = configName3;
    configName4 = [(DODMLASRSchemaDODMLASRModelMetrics *)self configName];
    configName5 = [equalCopy configName];
    v12 = [configName4 isEqual:configName5];

    if (!v12)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[34];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_44:
    v33 = 0;
    goto LABEL_45;
  }

  if (*&has)
  {
    trainingDurationInMs = self->_trainingDurationInMs;
    if (trainingDurationInMs != [equalCopy trainingDurationInMs])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[34];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v16)
  {
    conversionDurationInMs = self->_conversionDurationInMs;
    if (conversionDurationInMs != [equalCopy conversionDurationInMs])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[34];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v18)
  {
    optimizationDurationInMs = self->_optimizationDurationInMs;
    if (optimizationDurationInMs != [equalCopy optimizationDurationInMs])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[34];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v20)
  {
    totalDurationInMs = self->_totalDurationInMs;
    if (totalDurationInMs != [equalCopy totalDurationInMs])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[34];
  }

  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v22)
  {
    ngramOrder = self->_ngramOrder;
    if (ngramOrder != [equalCopy ngramOrder])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[34];
  }

  v24 = (*&has >> 5) & 1;
  if (v24 != ((v14 >> 5) & 1))
  {
    goto LABEL_44;
  }

  if (v24)
  {
    residualAdaptationWeight = self->_residualAdaptationWeight;
    [equalCopy residualAdaptationWeight];
    if (residualAdaptationWeight != v26)
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[34];
  }

  v27 = (*&has >> 6) & 1;
  if (v27 != ((v14 >> 6) & 1))
  {
    goto LABEL_44;
  }

  if (v27)
  {
    modelTrainingStatusCode = self->_modelTrainingStatusCode;
    if (modelTrainingStatusCode != [equalCopy modelTrainingStatusCode])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[34];
  }

  v29 = (*&has >> 7) & 1;
  if (v29 != ((v14 >> 7) & 1))
  {
    goto LABEL_44;
  }

  if (v29)
  {
    numFiniteStateTransducerArcs = self->_numFiniteStateTransducerArcs;
    if (numFiniteStateTransducerArcs == [equalCopy numFiniteStateTransducerArcs])
    {
      has = self->_has;
      v14 = equalCopy[34];
      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_40:
  v31 = (*&has >> 8) & 1;
  if (v31 != ((v14 >> 8) & 1))
  {
    goto LABEL_44;
  }

  if (v31)
  {
    numFiniteStateTransducerStates = self->_numFiniteStateTransducerStates;
    if (numFiniteStateTransducerStates != [equalCopy numFiniteStateTransducerStates])
    {
      goto LABEL_44;
    }
  }

  v33 = 1;
LABEL_45:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  configName = [(DODMLASRSchemaDODMLASRModelMetrics *)self configName];

  if (configName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    v6 = toCopy;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint64Field();
  v6 = toCopy;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint64Field();
  v6 = toCopy;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  v6 = toCopy;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteFloatField();
  v6 = toCopy;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint32Field();
  v6 = toCopy;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  v6 = toCopy;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    PBDataWriterWriteUint32Field();
    v6 = toCopy;
  }

LABEL_14:
}

- (void)setHasNumFiniteStateTransducerStates:(BOOL)states
{
  if (states)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumFiniteStateTransducerArcs:(BOOL)arcs
{
  if (arcs)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasModelTrainingStatusCode:(BOOL)code
{
  if (code)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasResidualAdaptationWeight:(BOOL)weight
{
  if (weight)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNgramOrder:(BOOL)order
{
  if (order)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTotalDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasOptimizationDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasConversionDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end