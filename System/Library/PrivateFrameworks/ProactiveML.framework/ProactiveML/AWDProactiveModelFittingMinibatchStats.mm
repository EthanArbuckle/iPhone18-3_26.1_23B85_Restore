@interface AWDProactiveModelFittingMinibatchStats
+ (AWDProactiveModelFittingMinibatchStats)statsWithPerLabelCounts:(id)a3;
+ (AWDProactiveModelFittingMinibatchStats)statsWithSize:(unint64_t)a3 support:(float)a4;
- (BOOL)isEqual:(id)a3;
- (float)supportForLabel:(unint64_t)a3;
- (id)combineWithStats:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)toDictionary;
- (unint64_t)hash;
- (void)addPerLabelSupport:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSupport:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingMinibatchStats

- (id)toDictionary
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"size";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AWDProactiveModelFittingMinibatchStats batchSize](self, "batchSize")}];
  v9[1] = @"support";
  v10[0] = v3;
  v4 = MEMORY[0x277CCABB0];
  [(AWDProactiveModelFittingMinibatchStats *)self support];
  v5 = [v4 numberWithFloat:?];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if ((v6 & 2) != 0)
  {
    self->_support = *(v4 + 6);
    *&self->_has |= 2u;
    v6 = *(v4 + 28);
  }

  if (v6)
  {
    self->_batchSize = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDProactiveModelFittingMinibatchStats *)self addPerLabelSupport:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    support = self->_support;
    if (support >= 0.0)
    {
      v10 = support;
    }

    else
    {
      v10 = -support;
    }

    *v6.i64 = floor(v10 + 0.5);
    v11 = (v10 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*&self->_has)
  {
    v13 = 2654435761u * self->_batchSize;
  }

  else
  {
    v13 = 0;
  }

  return v13 ^ v8 ^ [(NSMutableArray *)self->_perLabelSupports hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_support != *(v4 + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_batchSize != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_14;
  }

  perLabelSupports = self->_perLabelSupports;
  if (perLabelSupports | *(v4 + 2))
  {
    v7 = [(NSMutableArray *)perLabelSupports isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_support;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_batchSize;
    *(v5 + 28) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_perLabelSupports;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{a3, v16}];
        [v6 addPerLabelSupport:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[6] = LODWORD(self->_support);
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_batchSize;
    *(v4 + 28) |= 1u;
  }

  v10 = v4;
  if ([(AWDProactiveModelFittingMinibatchStats *)self perLabelSupportsCount])
  {
    [v10 clearPerLabelSupports];
    v6 = [(AWDProactiveModelFittingMinibatchStats *)self perLabelSupportsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDProactiveModelFittingMinibatchStats *)self perLabelSupportAtIndex:i];
        [v10 addPerLabelSupport:v9];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    support = self->_support;
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if (has)
  {
    batchSize = self->_batchSize;
    PBDataWriterWriteUint64Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_perLabelSupports;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *&v4 = self->_support;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v6 forKey:@"support"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_batchSize];
    [v3 setObject:v7 forKey:@"batchSize"];
  }

  if ([(NSMutableArray *)self->_perLabelSupports count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_perLabelSupports, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_perLabelSupports;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"perLabelSupport"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingMinibatchStats;
  v4 = [(AWDProactiveModelFittingMinibatchStats *)&v8 description];
  v5 = [(AWDProactiveModelFittingMinibatchStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addPerLabelSupport:(id)a3
{
  v4 = a3;
  perLabelSupports = self->_perLabelSupports;
  v8 = v4;
  if (!perLabelSupports)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_perLabelSupports;
    self->_perLabelSupports = v6;

    v4 = v8;
    perLabelSupports = self->_perLabelSupports;
  }

  [(NSMutableArray *)perLabelSupports addObject:v4];
}

- (void)setHasSupport:(BOOL)a3
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

- (float)supportForLabel:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(AWDProactiveModelFittingMinibatchStats *)self perLabelSupports];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v6 = 0.0;
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
        if ([v10 label] == a3)
        {
          [v10 support];
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

- (id)combineWithStats:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(AWDProactiveModelFittingMinibatchStats *)self perLabelSupports];
  collectPerLabelCounts(v6, [(AWDProactiveModelFittingMinibatchStats *)self batchSize], v5);

  v7 = [v4 perLabelSupports];
  v8 = [v4 batchSize];

  collectPerLabelCounts(v7, v8, v5);
  v9 = [AWDProactiveModelFittingMinibatchStats statsWithPerLabelCounts:v5];

  return v9;
}

+ (AWDProactiveModelFittingMinibatchStats)statsWithPerLabelCounts:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [*(*(&v17 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  [v4 setBatchSize:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__AWDProactiveModelFittingMinibatchStats_VisibleForTesting__statsWithPerLabelCounts___block_invoke;
  v14[3] = &unk_279AC0860;
  v16 = v8;
  v11 = v4;
  v15 = v11;
  [v3 enumerateKeysAndObjectsUsingBlock:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __85__AWDProactiveModelFittingMinibatchStats_VisibleForTesting__statsWithPerLabelCounts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v11 = objc_opt_new();
  v7 = [v6 unsignedIntegerValue];

  [v11 setLabel:v7];
  [v5 floatValue];
  v9 = v8;

  *&v10 = v9 / *(a1 + 40);
  [v11 setSupport:v10];
  [*(a1 + 32) addPerLabelSupport:v11];
}

+ (AWDProactiveModelFittingMinibatchStats)statsWithSize:(unint64_t)a3 support:(float)a4
{
  v6 = objc_opt_new();
  [v6 setBatchSize:a3];
  *&v7 = a4;
  [v6 setSupport:v7];

  return v6;
}

@end