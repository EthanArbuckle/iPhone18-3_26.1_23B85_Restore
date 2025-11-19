@interface MHSchemaMHStatisticDistributionInfo
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHStatisticDistributionInfo)initWithDictionary:(id)a3;
- (MHSchemaMHStatisticDistributionInfo)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAvg:(BOOL)a3;
- (void)setHasMax:(BOOL)a3;
- (void)setHasMedian:(BOOL)a3;
- (void)setHasMin:(BOOL)a3;
- (void)setHasP95:(BOOL)a3;
- (void)setHasStd:(BOOL)a3;
- (void)setHasWarmup:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHStatisticDistributionInfo

- (MHSchemaMHStatisticDistributionInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MHSchemaMHStatisticDistributionInfo;
  v5 = [(MHSchemaMHStatisticDistributionInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"num"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHStatisticDistributionInfo setNum:](v5, "setNum:", [v6 unsignedIntValue]);
    }

    v16 = v6;
    v7 = [v4 objectForKeyedSubscript:@"max"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHStatisticDistributionInfo setMax:](v5, "setMax:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHStatisticDistributionInfo setMin:](v5, "setMin:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"avg"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHStatisticDistributionInfo setAvg:](v5, "setAvg:", [v9 unsignedLongLongValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"median"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHStatisticDistributionInfo setMedian:](v5, "setMedian:", [v10 unsignedLongLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"p95"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHStatisticDistributionInfo setP95:](v5, "setP95:", [v11 unsignedLongLongValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"std"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(MHSchemaMHStatisticDistributionInfo *)v5 setStd:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"warmup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHStatisticDistributionInfo setWarmup:](v5, "setWarmup:", [v13 unsignedLongLongValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (MHSchemaMHStatisticDistributionInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHStatisticDistributionInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHStatisticDistributionInfo *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 8) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHStatisticDistributionInfo avg](self, "avg")}];
    [v3 setObject:v6 forKeyedSubscript:@"avg"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHStatisticDistributionInfo max](self, "max")}];
  [v3 setObject:v7 forKeyedSubscript:@"max"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHStatisticDistributionInfo median](self, "median")}];
  [v3 setObject:v8 forKeyedSubscript:@"median"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHStatisticDistributionInfo min](self, "min")}];
  [v3 setObject:v9 forKeyedSubscript:@"min"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHStatisticDistributionInfo num](self, "num")}];
  [v3 setObject:v10 forKeyedSubscript:@"num"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v12 = MEMORY[0x1E696AD98];
    [(MHSchemaMHStatisticDistributionInfo *)self std];
    v13 = [v12 numberWithFloat:?];
    [v3 setObject:v13 forKeyedSubscript:@"std"];

    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHStatisticDistributionInfo p95](self, "p95")}];
  [v3 setObject:v11 forKeyedSubscript:@"p95"];

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHStatisticDistributionInfo warmup](self, "warmup")}];
  [v3 setObject:v14 forKeyedSubscript:@"warmup"];

LABEL_9:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_num;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761u * self->_max;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761u * self->_min;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v7 = 2654435761u * self->_avg;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v8 = 2654435761u * self->_median;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v9 = 2654435761u * self->_p95;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

LABEL_18:
  v9 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  std = self->_std;
  if (std >= 0.0)
  {
    v11 = std;
  }

  else
  {
    v11 = -std;
  }

  *v2.i64 = floor(v11 + 0.5);
  v12 = (v11 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_20:
  if ((*&self->_has & 0x80) != 0)
  {
    v15 = 2654435761u * self->_warmup;
  }

  else
  {
    v15 = 0;
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v14 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = v4[72];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    num = self->_num;
    if (num != [v4 num])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[72];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v8)
  {
    max = self->_max;
    if (max != [v4 max])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[72];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_34;
  }

  if (v10)
  {
    min = self->_min;
    if (min != [v4 min])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[72];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_34;
  }

  if (v12)
  {
    avg = self->_avg;
    if (avg != [v4 avg])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[72];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_34;
  }

  if (v14)
  {
    median = self->_median;
    if (median != [v4 median])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[72];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_34;
  }

  if (v16)
  {
    p95 = self->_p95;
    if (p95 != [v4 p95])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[72];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_34;
  }

  if (v18)
  {
    std = self->_std;
    [v4 std];
    if (std == v20)
    {
      has = self->_has;
      v6 = v4[72];
      goto LABEL_30;
    }

LABEL_34:
    v22 = 0;
    goto LABEL_35;
  }

LABEL_30:
  if (((v6 ^ *&has) & 0x80) != 0)
  {
    goto LABEL_34;
  }

  if ((*&has & 0x80) != 0)
  {
    warmup = self->_warmup;
    if (warmup != [v4 warmup])
    {
      goto LABEL_34;
    }
  }

  v22 = 1;
LABEL_35:

  return v22;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PBDataWriterWriteFloatField();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PBDataWriterWriteUint64Field();
LABEL_9:
}

- (void)setHasWarmup:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasStd:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasP95:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMedian:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAvg:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMin:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMax:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end