@interface NETSchemaNETDebugSessionConnectionPingInfo
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETDebugSessionConnectionPingInfo)initWithDictionary:(id)dictionary;
- (NETSchemaNETDebugSessionConnectionPingInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMeanPingInMs:(BOOL)ms;
- (void)setHasUnacknowledgedPingCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETDebugSessionConnectionPingInfo

- (NETSchemaNETDebugSessionConnectionPingInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NETSchemaNETDebugSessionConnectionPingInfo;
  v5 = [(NETSchemaNETDebugSessionConnectionPingInfo *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pingCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionPingInfo setPingCount:](v5, "setPingCount:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"meanPingInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(NETSchemaNETDebugSessionConnectionPingInfo *)v5 setMeanPingInMs:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"unacknowledgedPingCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETDebugSessionConnectionPingInfo setUnacknowledgedPingCount:](v5, "setUnacknowledgedPingCount:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (NETSchemaNETDebugSessionConnectionPingInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETDebugSessionConnectionPingInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETDebugSessionConnectionPingInfo *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(NETSchemaNETDebugSessionConnectionPingInfo *)self meanPingInMs];
    v8 = [v7 numberWithDouble:?];
    [dictionary setObject:v8 forKeyedSubscript:@"meanPingInMs"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugSessionConnectionPingInfo pingCount](self, "pingCount")}];
  [dictionary setObject:v9 forKeyedSubscript:@"pingCount"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETDebugSessionConnectionPingInfo unacknowledgedPingCount](self, "unacknowledgedPingCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"unacknowledgedPingCount"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_pingCount;
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
  meanPingInMs = self->_meanPingInMs;
  if (meanPingInMs < 0.0)
  {
    meanPingInMs = -meanPingInMs;
  }

  *v2.i64 = floor(meanPingInMs + 0.5);
  v6 = (meanPingInMs - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
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
    v9 = 2654435761 * self->_unacknowledgedPingCount;
  }

  else
  {
    v9 = 0;
  }

  return v8 ^ v4 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    pingCount = self->_pingCount;
    if (pingCount != [equalCopy pingCount])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    meanPingInMs = self->_meanPingInMs;
    [equalCopy meanPingInMs];
    if (meanPingInMs == v10)
    {
      has = self->_has;
      v6 = equalCopy[28];
      goto LABEL_10;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v11 = (*&has >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v11)
  {
    unacknowledgedPingCount = self->_unacknowledgedPingCount;
    if (unacknowledgedPingCount != [equalCopy unacknowledgedPingCount])
    {
      goto LABEL_14;
    }
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasUnacknowledgedPingCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMeanPingInMs:(BOOL)ms
{
  if (ms)
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