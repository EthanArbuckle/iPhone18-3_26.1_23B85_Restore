@interface KCellularFwCoreStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularFwCoreStats

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularFwCoreStats;
  v4 = [(KCellularFwCoreStats *)&v8 description];
  v5 = [(KCellularFwCoreStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  geraStats = self->_geraStats;
  if (geraStats)
  {
    v6 = [(GeraStats *)geraStats dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"gera_stats"];
  }

  utraFddStats = self->_utraFddStats;
  if (utraFddStats)
  {
    v8 = [(UtraFddStats *)utraFddStats dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"utra_fdd_stats"];
  }

  utraTddStats = self->_utraTddStats;
  if (utraTddStats)
  {
    v10 = [(UtraTddStats *)utraTddStats dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"utra_tdd_stats"];
  }

  eutraStats = self->_eutraStats;
  if (eutraStats)
  {
    v12 = [(EutraStats *)eutraStats dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"eutra_stats"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v13 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_geraStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_utraFddStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_utraTddStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_eutraStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 56) |= 1u;
  }

  v5 = v4;
  if (self->_geraStats)
  {
    [v4 setGeraStats:?];
    v4 = v5;
  }

  if (self->_utraFddStats)
  {
    [v5 setUtraFddStats:?];
    v4 = v5;
  }

  if (self->_utraTddStats)
  {
    [v5 setUtraTddStats:?];
    v4 = v5;
  }

  if (self->_eutraStats)
  {
    [v5 setEutraStats:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 8) = self->_subsId;
    *(v4 + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 56) |= 1u;
  }

  v7 = [(GeraStats *)self->_geraStats copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(UtraFddStats *)self->_utraFddStats copyWithZone:a3];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(UtraTddStats *)self->_utraTddStats copyWithZone:a3];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  v13 = [(EutraStats *)self->_eutraStats copyWithZone:a3];
  v14 = *(v6 + 16);
  *(v6 + 16) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 32) = self->_subsId;
    *(v6 + 56) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  geraStats = self->_geraStats;
  if (geraStats | *(v4 + 3) && ![(GeraStats *)geraStats isEqual:?])
  {
    goto LABEL_19;
  }

  utraFddStats = self->_utraFddStats;
  if (utraFddStats | *(v4 + 5))
  {
    if (![(UtraFddStats *)utraFddStats isEqual:?])
    {
      goto LABEL_19;
    }
  }

  utraTddStats = self->_utraTddStats;
  if (utraTddStats | *(v4 + 6))
  {
    if (![(UtraTddStats *)utraTddStats isEqual:?])
    {
      goto LABEL_19;
    }
  }

  eutraStats = self->_eutraStats;
  if (eutraStats | *(v4 + 2))
  {
    if (![(EutraStats *)eutraStats isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(v4 + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_subsId != *(v4 + 8))
    {
      goto LABEL_19;
    }

    v10 = 1;
  }

LABEL_20:

  return v10;
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

  v4 = [(GeraStats *)self->_geraStats hash];
  v5 = [(UtraFddStats *)self->_utraFddStats hash];
  v6 = [(UtraTddStats *)self->_utraTddStats hash];
  v7 = [(EutraStats *)self->_eutraStats hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_subsId;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[7])
  {
    self->_timestamp = v4[1];
    *&self->_has |= 1u;
  }

  geraStats = self->_geraStats;
  v7 = v5[3];
  v14 = v5;
  if (geraStats)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(GeraStats *)geraStats mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(KCellularFwCoreStats *)self setGeraStats:?];
  }

  v5 = v14;
LABEL_9:
  utraFddStats = self->_utraFddStats;
  v9 = v5[5];
  if (utraFddStats)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(UtraFddStats *)utraFddStats mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(KCellularFwCoreStats *)self setUtraFddStats:?];
  }

  v5 = v14;
LABEL_15:
  utraTddStats = self->_utraTddStats;
  v11 = v5[6];
  if (utraTddStats)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(UtraTddStats *)utraTddStats mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(KCellularFwCoreStats *)self setUtraTddStats:?];
  }

  v5 = v14;
LABEL_21:
  eutraStats = self->_eutraStats;
  v13 = v5[2];
  if (eutraStats)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(EutraStats *)eutraStats mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(KCellularFwCoreStats *)self setEutraStats:?];
  }

  v5 = v14;
LABEL_27:
  if ((v5[7] & 2) != 0)
  {
    self->_subsId = *(v5 + 8);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end