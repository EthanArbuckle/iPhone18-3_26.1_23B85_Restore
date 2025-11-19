@interface WiFiAnalyticsAWDWiFiNWActivityHistogramBin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityHistogramBin

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityHistogramBin;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityHistogramBin *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityHistogramBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  bin = self->_bin;
  if (bin)
  {
    [v3 setObject:bin forKey:@"bin"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_hits];
    [v4 setObject:v6 forKey:@"hits"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_bin)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    hits = self->_hits;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_bin)
  {
    v5 = v4;
    [v4 setBin:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_hits;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bin copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_hits;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  bin = self->_bin;
  if (bin | *(v4 + 2))
  {
    if (![(NSString *)bin isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_hits == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bin hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_hits;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(WiFiAnalyticsAWDWiFiNWActivityHistogramBin *)self setBin:?];
    v4 = v5;
  }

  if (v4[3])
  {
    self->_hits = v4[1];
    *&self->_has |= 1u;
  }
}

@end