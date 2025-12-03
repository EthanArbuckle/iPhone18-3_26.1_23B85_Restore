@interface NETSchemaNETDebugSessionConnectionNetwork
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETDebugSessionConnectionNetwork)initWithDictionary:(id)dictionary;
- (NETSchemaNETDebugSessionConnectionNetwork)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConnectedSubflowCount:(BOOL)count;
- (void)setHasOpenTimeInMs:(BOOL)ms;
- (void)setHasSignalStrengthBars:(BOOL)bars;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETDebugSessionConnectionNetwork

- (NETSchemaNETDebugSessionConnectionNetwork)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NETSchemaNETDebugSessionConnectionNetwork;
  v5 = [(NETSchemaNETDebugSessionConnectionNetwork *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"wiFiPhyMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionNetwork setWiFiPhyMode:](v5, "setWiFiPhyMode:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"signalStrengthBars"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(NETSchemaNETDebugSessionConnectionNetwork *)v5 setSignalStrengthBars:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"openTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(NETSchemaNETDebugSessionConnectionNetwork *)v5 setOpenTimeInMs:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"connectedSubflowCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionNetwork setConnectedSubflowCount:](v5, "setConnectedSubflowCount:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NETSchemaNETDebugSessionConnectionNetwork)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETDebugSessionConnectionNetwork *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETDebugSessionConnectionNetwork *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugSessionConnectionNetwork connectedSubflowCount](self, "connectedSubflowCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"connectedSubflowCount"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = MEMORY[0x1E696AD98];
      [(NETSchemaNETDebugSessionConnectionNetwork *)self signalStrengthBars];
      v9 = [v8 numberWithDouble:?];
      [dictionary setObject:v9 forKeyedSubscript:@"signalStrengthBars"];

      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_9:
      v10 = [(NETSchemaNETDebugSessionConnectionNetwork *)self wiFiPhyMode]- 1;
      if (v10 > 8)
      {
        v11 = @"NETPHYMODE_UNKNOWN";
      }

      else
      {
        v11 = off_1E78DB0F0[v10];
      }

      [dictionary setObject:v11 forKeyedSubscript:@"wiFiPhyMode"];
      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E696AD98];
  [(NETSchemaNETDebugSessionConnectionNetwork *)self openTimeInMs];
  v7 = [v6 numberWithDouble:?];
  [dictionary setObject:v7 forKeyedSubscript:@"openTimeInMs"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (has)
  {
    goto LABEL_9;
  }

LABEL_13:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_wiFiPhyMode;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  signalStrengthBars = self->_signalStrengthBars;
  if (signalStrengthBars < 0.0)
  {
    signalStrengthBars = -signalStrengthBars;
  }

  *v2.i64 = floor(signalStrengthBars + 0.5);
  v6 = (signalStrengthBars - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
  v8 = 2654435761u * *v2.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    openTimeInMs = self->_openTimeInMs;
    if (openTimeInMs < 0.0)
    {
      openTimeInMs = -openTimeInMs;
    }

    *v2.i64 = floor(openTimeInMs + 0.5);
    v11 = (openTimeInMs - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v13 = 2654435761 * self->_connectedSubflowCount;
  }

  else
  {
    v13 = 0;
  }

  return v8 ^ v4 ^ v9 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    wiFiPhyMode = self->_wiFiPhyMode;
    if (wiFiPhyMode != [equalCopy wiFiPhyMode])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    signalStrengthBars = self->_signalStrengthBars;
    [equalCopy signalStrengthBars];
    if (signalStrengthBars != v10)
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v11 = (*&has >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v11)
  {
    openTimeInMs = self->_openTimeInMs;
    [equalCopy openTimeInMs];
    if (openTimeInMs == v13)
    {
      has = self->_has;
      v6 = equalCopy[36];
      goto LABEL_14;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v14 = (*&has >> 3) & 1;
  if (v14 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v14)
  {
    connectedSubflowCount = self->_connectedSubflowCount;
    if (connectedSubflowCount != [equalCopy connectedSubflowCount])
    {
      goto LABEL_18;
    }
  }

  v16 = 1;
LABEL_19:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)setHasConnectedSubflowCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasOpenTimeInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSignalStrengthBars:(BOOL)bars
{
  if (bars)
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