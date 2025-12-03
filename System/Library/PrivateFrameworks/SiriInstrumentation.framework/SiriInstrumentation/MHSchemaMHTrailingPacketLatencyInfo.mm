@interface MHSchemaMHTrailingPacketLatencyInfo
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHTrailingPacketLatencyInfo)initWithDictionary:(id)dictionary;
- (MHSchemaMHTrailingPacketLatencyInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAvg:(BOOL)avg;
- (void)setHasMax:(BOOL)max;
- (void)setHasMedian:(BOOL)median;
- (void)setHasMin:(BOOL)min;
- (void)setHasP95:(BOOL)p95;
- (void)setHasStd:(BOOL)std;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHTrailingPacketLatencyInfo

- (MHSchemaMHTrailingPacketLatencyInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = MHSchemaMHTrailingPacketLatencyInfo;
  v5 = [(MHSchemaMHTrailingPacketLatencyInfo *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"num"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHTrailingPacketLatencyInfo setNum:](v5, "setNum:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"max"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHTrailingPacketLatencyInfo setMax:](v5, "setMax:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHTrailingPacketLatencyInfo setMin:](v5, "setMin:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"avg"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHTrailingPacketLatencyInfo setAvg:](v5, "setAvg:", [v9 unsignedLongLongValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"median"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHTrailingPacketLatencyInfo setMedian:](v5, "setMedian:", [v10 unsignedLongLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"p95"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHTrailingPacketLatencyInfo setP95:](v5, "setP95:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"std"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHTrailingPacketLatencyInfo setStd:](v5, "setStd:", [v12 unsignedLongLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (MHSchemaMHTrailingPacketLatencyInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHTrailingPacketLatencyInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHTrailingPacketLatencyInfo *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHTrailingPacketLatencyInfo avg](self, "avg")}];
    [dictionary setObject:v7 forKeyedSubscript:@"avg"];

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

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHTrailingPacketLatencyInfo max](self, "max")}];
  [dictionary setObject:v8 forKeyedSubscript:@"max"];

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
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHTrailingPacketLatencyInfo median](self, "median")}];
  [dictionary setObject:v9 forKeyedSubscript:@"median"];

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
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHTrailingPacketLatencyInfo min](self, "min")}];
  [dictionary setObject:v10 forKeyedSubscript:@"min"];

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
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHTrailingPacketLatencyInfo num](self, "num")}];
  [dictionary setObject:v11 forKeyedSubscript:@"num"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHTrailingPacketLatencyInfo p95](self, "p95")}];
  [dictionary setObject:v12 forKeyedSubscript:@"p95"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHTrailingPacketLatencyInfo std](self, "std")}];
    [dictionary setObject:v5 forKeyedSubscript:@"std"];
  }

LABEL_9:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_num;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_max;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_min;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761u * self->_avg;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761u * self->_median;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761u * self->_p95;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761u * self->_std;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = equalCopy[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (*&has)
  {
    num = self->_num;
    if (num != [equalCopy num])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_30;
  }

  if (v8)
  {
    max = self->_max;
    if (max != [equalCopy max])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_30;
  }

  if (v10)
  {
    min = self->_min;
    if (min != [equalCopy min])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_30;
  }

  if (v12)
  {
    avg = self->_avg;
    if (avg != [equalCopy avg])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_30;
  }

  if (v14)
  {
    median = self->_median;
    if (median != [equalCopy median])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_30;
  }

  if (v16)
  {
    p95 = self->_p95;
    if (p95 == [equalCopy p95])
    {
      has = self->_has;
      v6 = equalCopy[64];
      goto LABEL_26;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

LABEL_26:
  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_30;
  }

  if (v18)
  {
    std = self->_std;
    if (std != [equalCopy std])
    {
      goto LABEL_30;
    }
  }

  v20 = 1;
LABEL_31:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint64Field();
  }

LABEL_9:
}

- (void)setHasStd:(BOOL)std
{
  if (std)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasP95:(BOOL)p95
{
  if (p95)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMedian:(BOOL)median
{
  if (median)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAvg:(BOOL)avg
{
  if (avg)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMin:(BOOL)min
{
  if (min)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMax:(BOOL)max
{
  if (max)
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