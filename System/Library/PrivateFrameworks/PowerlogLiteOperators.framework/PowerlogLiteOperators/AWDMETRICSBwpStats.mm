@interface AWDMETRICSBwpStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBandwidth:(id)a3;
- (int)bandwidth;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasScsSpacing:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSBwpStats

- (void)setHasScsSpacing:(BOOL)a3
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

- (void)setHasDuration:(BOOL)a3
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

- (int)bandwidth
{
  if (*&self->_has)
  {
    return self->_bandwidth;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsBandwidth:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NR5G_BW_5MHz"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_10MHz"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_15MHz"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_20MHz"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_25MHz"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_30MHz"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_35MHz"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_40MHz"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_45MHz"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_50MHz"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_60MHz"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_70MHz"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_80MHz"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_90MHz"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_100MHz"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_200MHz"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_400MHz"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NR5G_BW_INVALID"])
  {
    v4 = 17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSBwpStats;
  v4 = [(AWDMETRICSBwpStats *)&v8 description];
  v5 = [(AWDMETRICSBwpStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [v3 setObject:v6 forKey:@"duration"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    bandwidth = self->_bandwidth;
    if (bandwidth >= 0x12)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_bandwidth];
    }

    else
    {
      v8 = off_278259248[bandwidth];
    }

    [v3 setObject:v8 forKey:@"bandwidth"];

    goto LABEL_11;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scsSpacing];
  [v3 setObject:v5 forKey:@"scs_spacing"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (has)
  {
    goto LABEL_7;
  }

LABEL_11:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    scsSpacing = self->_scsSpacing;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    bandwidth = self->_bandwidth;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[4] = self->_scsSpacing;
    *(v4 + 20) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v4[3] = self->_duration;
  *(v4 + 20) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    v4[2] = self->_bandwidth;
    *(v4 + 20) |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_scsSpacing;
    *(result + 20) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_duration;
  *(result + 20) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = self->_bandwidth;
  *(result + 20) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0 || self->_scsSpacing != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 20) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_duration != *(v4 + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_bandwidth != *(v4 + 2))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_scsSpacing;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_duration;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_bandwidth;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 4) != 0)
  {
    self->_scsSpacing = *(v4 + 4);
    *&self->_has |= 4u;
    v5 = *(v4 + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(v4 + 3);
  *&self->_has |= 2u;
  if (*(v4 + 20))
  {
LABEL_4:
    self->_bandwidth = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end