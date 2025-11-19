@interface KCellularLtePdcchStateStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)pccPdcchStateAtIndex:(unint64_t)a3;
- (unsigned)scc0PdcchStateAtIndex:(unint64_t)a3;
- (unsigned)scc1PdcchStateAtIndex:(unint64_t)a3;
- (unsigned)scc2PdcchStateAtIndex:(unint64_t)a3;
- (unsigned)scc3PdcchStateAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLtePdcchStateStats

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = KCellularLtePdcchStateStats;
  [(KCellularLtePdcchStateStats *)&v3 dealloc];
}

- (unsigned)pccPdcchStateAtIndex:(unint64_t)a3
{
  p_pccPdcchStates = &self->_pccPdcchStates;
  count = self->_pccPdcchStates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_pccPdcchStates->list[a3];
}

- (unsigned)scc0PdcchStateAtIndex:(unint64_t)a3
{
  p_scc0PdcchStates = &self->_scc0PdcchStates;
  count = self->_scc0PdcchStates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_scc0PdcchStates->list[a3];
}

- (unsigned)scc1PdcchStateAtIndex:(unint64_t)a3
{
  p_scc1PdcchStates = &self->_scc1PdcchStates;
  count = self->_scc1PdcchStates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_scc1PdcchStates->list[a3];
}

- (void)setHasDurationMs:(BOOL)a3
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

- (unsigned)scc2PdcchStateAtIndex:(unint64_t)a3
{
  p_scc2PdcchStates = &self->_scc2PdcchStates;
  count = self->_scc2PdcchStates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_scc2PdcchStates->list[a3];
}

- (unsigned)scc3PdcchStateAtIndex:(unint64_t)a3
{
  p_scc3PdcchStates = &self->_scc3PdcchStates;
  count = self->_scc3PdcchStates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_scc3PdcchStates->list[a3];
}

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularLtePdcchStateStats;
  v4 = [(KCellularLtePdcchStateStats *)&v8 description];
  v5 = [(KCellularLtePdcchStateStats *)self dictionaryRepresentation];
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

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"pcc_pdcch_state"];

  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"scc0_pdcch_state"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"scc1_pdcch_state"];

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [v3 setObject:v8 forKey:@"duration_ms"];
  }

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"scc2_pdcch_state"];

  v10 = PBRepeatedUInt32NSArray();
  [v3 setObject:v10 forKey:@"scc3_pdcch_state"];

  if ((*&self->_has & 4) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v11 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v18 = v4;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v18;
  }

  if (self->_pccPdcchStates.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_pccPdcchStates.list[v6];
      PBDataWriterWriteUint32Field();
      v4 = v18;
      ++v6;
    }

    while (v6 < self->_pccPdcchStates.count);
  }

  if (self->_scc0PdcchStates.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_scc0PdcchStates.list[v8];
      PBDataWriterWriteUint32Field();
      v4 = v18;
      ++v8;
    }

    while (v8 < self->_scc0PdcchStates.count);
  }

  if (self->_scc1PdcchStates.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_scc1PdcchStates.list[v10];
      PBDataWriterWriteUint32Field();
      v4 = v18;
      ++v10;
    }

    while (v10 < self->_scc1PdcchStates.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    v4 = v18;
  }

  if (self->_scc2PdcchStates.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_scc2PdcchStates.list[v13];
      PBDataWriterWriteUint32Field();
      v4 = v18;
      ++v13;
    }

    while (v13 < self->_scc2PdcchStates.count);
  }

  if (self->_scc3PdcchStates.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_scc3PdcchStates.list[v15];
      PBDataWriterWriteUint32Field();
      v4 = v18;
      ++v15;
    }

    while (v15 < self->_scc3PdcchStates.count);
  }

  if ((*&self->_has & 4) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v4 = v18;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_timestamp;
    *(v4 + 144) |= 1u;
  }

  v20 = v4;
  if ([(KCellularLtePdcchStateStats *)self pccPdcchStatesCount])
  {
    [v20 clearPccPdcchStates];
    v5 = [(KCellularLtePdcchStateStats *)self pccPdcchStatesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v20 addPccPdcchState:{-[KCellularLtePdcchStateStats pccPdcchStateAtIndex:](self, "pccPdcchStateAtIndex:", i)}];
      }
    }
  }

  if ([(KCellularLtePdcchStateStats *)self scc0PdcchStatesCount])
  {
    [v20 clearScc0PdcchStates];
    v8 = [(KCellularLtePdcchStateStats *)self scc0PdcchStatesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [v20 addScc0PdcchState:{-[KCellularLtePdcchStateStats scc0PdcchStateAtIndex:](self, "scc0PdcchStateAtIndex:", j)}];
      }
    }
  }

  if ([(KCellularLtePdcchStateStats *)self scc1PdcchStatesCount])
  {
    [v20 clearScc1PdcchStates];
    v11 = [(KCellularLtePdcchStateStats *)self scc1PdcchStatesCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [v20 addScc1PdcchState:{-[KCellularLtePdcchStateStats scc1PdcchStateAtIndex:](self, "scc1PdcchStateAtIndex:", k)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v20 + 34) = self->_durationMs;
    *(v20 + 144) |= 2u;
  }

  if ([(KCellularLtePdcchStateStats *)self scc2PdcchStatesCount])
  {
    [v20 clearScc2PdcchStates];
    v14 = [(KCellularLtePdcchStateStats *)self scc2PdcchStatesCount];
    if (v14)
    {
      v15 = v14;
      for (m = 0; m != v15; ++m)
      {
        [v20 addScc2PdcchState:{-[KCellularLtePdcchStateStats scc2PdcchStateAtIndex:](self, "scc2PdcchStateAtIndex:", m)}];
      }
    }
  }

  if ([(KCellularLtePdcchStateStats *)self scc3PdcchStatesCount])
  {
    [v20 clearScc3PdcchStates];
    v17 = [(KCellularLtePdcchStateStats *)self scc3PdcchStatesCount];
    if (v17)
    {
      v18 = v17;
      for (n = 0; n != v18; ++n)
      {
        [v20 addScc3PdcchState:{-[KCellularLtePdcchStateStats scc3PdcchStateAtIndex:](self, "scc3PdcchStateAtIndex:", n)}];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v20 + 35) = self->_subsId;
    *(v20 + 144) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 128) = self->_timestamp;
    *(v4 + 144) |= 1u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 136) = self->_durationMs;
    *(v5 + 144) |= 2u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 140) = self->_subsId;
    *(v5 + 144) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 144);
  if (*&self->_has)
  {
    if ((*(v4 + 144) & 1) == 0 || self->_timestamp != *(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 144))
  {
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_21;
  }

  v6 = *(v4 + 144);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 144) & 2) == 0 || self->_durationMs != *(v4 + 34))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 144) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_21;
  }

  v7 = (*(v4 + 144) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 144) & 4) == 0 || self->_subsId != *(v4 + 35))
    {
      goto LABEL_21;
    }

    v7 = 1;
  }

LABEL_22:

  return v7;
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

  v4 = PBRepeatedUInt32Hash();
  v5 = PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_durationMs;
  }

  else
  {
    v7 = 0;
  }

  v8 = PBRepeatedUInt32Hash();
  v9 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_subsId;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[36])
  {
    self->_timestamp = *(v4 + 16);
    *&self->_has |= 1u;
  }

  v20 = v4;
  v5 = [v4 pccPdcchStatesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[KCellularLtePdcchStateStats addPccPdcchState:](self, "addPccPdcchState:", [v20 pccPdcchStateAtIndex:i]);
    }
  }

  v8 = [v20 scc0PdcchStatesCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[KCellularLtePdcchStateStats addScc0PdcchState:](self, "addScc0PdcchState:", [v20 scc0PdcchStateAtIndex:j]);
    }
  }

  v11 = [v20 scc1PdcchStatesCount];
  if (v11)
  {
    v12 = v11;
    for (k = 0; k != v12; ++k)
    {
      -[KCellularLtePdcchStateStats addScc1PdcchState:](self, "addScc1PdcchState:", [v20 scc1PdcchStateAtIndex:k]);
    }
  }

  if ((v20[36] & 2) != 0)
  {
    self->_durationMs = v20[34];
    *&self->_has |= 2u;
  }

  v14 = [v20 scc2PdcchStatesCount];
  if (v14)
  {
    v15 = v14;
    for (m = 0; m != v15; ++m)
    {
      -[KCellularLtePdcchStateStats addScc2PdcchState:](self, "addScc2PdcchState:", [v20 scc2PdcchStateAtIndex:m]);
    }
  }

  v17 = [v20 scc3PdcchStatesCount];
  if (v17)
  {
    v18 = v17;
    for (n = 0; n != v18; ++n)
    {
      -[KCellularLtePdcchStateStats addScc3PdcchState:](self, "addScc3PdcchState:", [v20 scc3PdcchStateAtIndex:n]);
    }
  }

  if ((v20[36] & 4) != 0)
  {
    self->_subsId = v20[35];
    *&self->_has |= 4u;
  }
}

@end