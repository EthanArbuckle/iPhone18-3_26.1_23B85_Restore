@interface AWDProactiveModelFittingEvaluation
- (BOOL)isEqual:(id)a3;
- (float)precisionAtK:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPrecisionAtK:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingEvaluation

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[6])
  {
    self->_timestamp = v4[1];
    *&self->_has |= 1u;
  }

  modelInfo = self->_modelInfo;
  v7 = *(v5 + 4);
  if (modelInfo)
  {
    if (v7)
    {
      [(AWDProactiveModelFittingModelInfo *)modelInfo mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDProactiveModelFittingEvaluation *)self setModelInfo:?];
  }

  minibatchStats = self->_minibatchStats;
  v9 = *(v5 + 3);
  if (minibatchStats)
  {
    if (v9)
    {
      [(AWDProactiveModelFittingMinibatchStats *)minibatchStats mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDProactiveModelFittingEvaluation *)self setMinibatchStats:?];
  }

  evaluationMetrics = self->_evaluationMetrics;
  v11 = *(v5 + 2);
  if (evaluationMetrics)
  {
    if (v11)
    {
      [(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDProactiveModelFittingEvaluation *)self setEvaluationMetrics:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v5 + 5);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDProactiveModelFittingEvaluation *)self addPrecisionAtK:*(*(&v18 + 1) + 8 * i), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo hash]^ v3;
  v5 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats hash];
  v6 = v4 ^ v5 ^ [(AWDProactiveModelFittingEvalMetrics *)self->_evaluationMetrics hash];
  return v6 ^ [(NSMutableArray *)self->_precisionAtKs hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  modelInfo = self->_modelInfo;
  if (modelInfo | *(v4 + 4) && ![(AWDProactiveModelFittingModelInfo *)modelInfo isEqual:?])
  {
    goto LABEL_15;
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats | *(v4 + 3))
  {
    if (![(AWDProactiveModelFittingMinibatchStats *)minibatchStats isEqual:?])
    {
      goto LABEL_15;
    }
  }

  evaluationMetrics = self->_evaluationMetrics;
  if (evaluationMetrics | *(v4 + 2))
  {
    if (![(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics isEqual:?])
    {
      goto LABEL_15;
    }
  }

  precisionAtKs = self->_precisionAtKs;
  if (precisionAtKs | *(v4 + 5))
  {
    v10 = [(NSMutableArray *)precisionAtKs isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(AWDProactiveModelFittingEvalMetrics *)self->_evaluationMetrics copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_precisionAtKs;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) copyWithZone:{a3, v21}];
        [v6 addPrecisionAtK:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 48) |= 1u;
  }

  v9 = v4;
  if (self->_modelInfo)
  {
    [v4 setModelInfo:?];
  }

  if (self->_minibatchStats)
  {
    [v9 setMinibatchStats:?];
  }

  if (self->_evaluationMetrics)
  {
    [v9 setEvaluationMetrics:?];
  }

  if ([(AWDProactiveModelFittingEvaluation *)self precisionAtKsCount])
  {
    [v9 clearPrecisionAtKs];
    v5 = [(AWDProactiveModelFittingEvaluation *)self precisionAtKsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDProactiveModelFittingEvaluation *)self precisionAtKAtIndex:i];
        [v9 addPrecisionAtK:v8];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_modelInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_minibatchStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_evaluationMetrics)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_precisionAtKs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  modelInfo = self->_modelInfo;
  if (modelInfo)
  {
    v6 = [(AWDProactiveModelFittingModelInfo *)modelInfo dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"modelInfo"];
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats)
  {
    v8 = [(AWDProactiveModelFittingMinibatchStats *)minibatchStats dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"minibatchStats"];
  }

  evaluationMetrics = self->_evaluationMetrics;
  if (evaluationMetrics)
  {
    v10 = [(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"evaluationMetrics"];
  }

  if ([(NSMutableArray *)self->_precisionAtKs count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_precisionAtKs, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_precisionAtKs;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"precisionAtK"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingEvaluation;
  v4 = [(AWDProactiveModelFittingEvaluation *)&v8 description];
  v5 = [(AWDProactiveModelFittingEvaluation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addPrecisionAtK:(id)a3
{
  v4 = a3;
  precisionAtKs = self->_precisionAtKs;
  v8 = v4;
  if (!precisionAtKs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_precisionAtKs;
    self->_precisionAtKs = v6;

    v4 = v8;
    precisionAtKs = self->_precisionAtKs;
  }

  [(NSMutableArray *)precisionAtKs addObject:v4];
}

- (float)precisionAtK:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(AWDProactiveModelFittingEvaluation *)self precisionAtKs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v6 = -1.0;
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 k] == a3)
        {
          [v10 precision];
          v6 = v11;
          goto LABEL_11;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

@end