@interface AWDMETRICSKCellularPowerLogAggregatedDLTBSHistMBin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBinId:(id)a3;
- (int)binId;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogAggregatedDLTBSHistMBin

- (int)binId
{
  if (*&self->_has)
  {
    return self->_binId;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsBinId:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DL_TBS_0_TO_500"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DL_TBS_500_TO_1k"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DL_TBS_1k_TO_2k"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DL_TBS_2k_TO_4k"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DL_TBS_4k_TO_8k"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DL_TBS_8k_TO_16k"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"DL_TBS_16k_TO_32k"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DL_TBS_32k_TO_64k"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"DL_TBS_64k_TO_128k"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"DL_TBS_128k_TO_256k"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"DL_TBS_256k_TO_512k"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"DL_TBS_512k_TO_1024k"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"DL_TBS_OVER_1024k"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogAggregatedDLTBSHistMBin;
  v4 = [(AWDMETRICSKCellularPowerLogAggregatedDLTBSHistMBin *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogAggregatedDLTBSHistMBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    binId = self->_binId;
    if (binId >= 0xD)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_binId];
    }

    else
    {
      v6 = off_27825AF88[binId];
    }

    [v3 setObject:v6 forKey:@"bin_id"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [v3 setObject:v7 forKey:@"duration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    binId = self->_binId;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_binId;
    *(v4 + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[3] = self->_duration;
    *(v4 + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_binId;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 3) = self->_duration;
    *(result + 16) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_binId != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 16))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_duration != *(v4 + 3))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_binId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_duration;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_binId = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_duration = *(v4 + 3);
    *&self->_has |= 2u;
  }
}

@end