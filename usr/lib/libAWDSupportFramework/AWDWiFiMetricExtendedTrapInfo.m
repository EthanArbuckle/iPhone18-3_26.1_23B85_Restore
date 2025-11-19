@interface AWDWiFiMetricExtendedTrapInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)backplaneAtIndex:(unint64_t)a3;
- (unsigned)busAtIndex:(unint64_t)a3;
- (unsigned)deepSleepAtIndex:(unint64_t)a3;
- (unsigned)macAtIndex:(unint64_t)a3;
- (unsigned)macEnabAtIndex:(unint64_t)a3;
- (unsigned)memoryDumpAtIndex:(unint64_t)a3;
- (unsigned)pcieQueueStateAtIndex:(unint64_t)a3;
- (unsigned)phyAtIndex:(unint64_t)a3;
- (unsigned)phyTxErrThreshAtIndex:(unint64_t)a3;
- (unsigned)psmWDAtIndex:(unint64_t)a3;
- (unsigned)signatureAtIndex:(unint64_t)a3;
- (unsigned)stackTracesAtIndex:(unint64_t)a3;
- (unsigned)ucodeErrorsAtIndex:(unint64_t)a3;
- (unsigned)wlcStateAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricExtendedTrapInfo

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricExtendedTrapInfo;
  [(AWDWiFiMetricExtendedTrapInfo *)&v3 dealloc];
}

- (unsigned)signatureAtIndex:(unint64_t)a3
{
  p_signatures = &self->_signatures;
  count = self->_signatures.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_signatures->list[a3];
}

- (unsigned)stackTracesAtIndex:(unint64_t)a3
{
  p_stackTraces = &self->_stackTraces;
  count = self->_stackTraces.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_stackTraces->list[a3];
}

- (unsigned)ucodeErrorsAtIndex:(unint64_t)a3
{
  p_ucodeErrors = &self->_ucodeErrors;
  count = self->_ucodeErrors.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_ucodeErrors->list[a3];
}

- (unsigned)memoryDumpAtIndex:(unint64_t)a3
{
  p_memoryDumps = &self->_memoryDumps;
  count = self->_memoryDumps.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_memoryDumps->list[a3];
}

- (unsigned)deepSleepAtIndex:(unint64_t)a3
{
  p_deepSleeps = &self->_deepSleeps;
  count = self->_deepSleeps.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_deepSleeps->list[a3];
}

- (unsigned)psmWDAtIndex:(unint64_t)a3
{
  p_psmWDs = &self->_psmWDs;
  count = self->_psmWDs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_psmWDs->list[a3];
}

- (unsigned)phyAtIndex:(unint64_t)a3
{
  p_phys = &self->_phys;
  count = self->_phys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_phys->list[a3];
}

- (unsigned)busAtIndex:(unint64_t)a3
{
  p_bus = &self->_bus;
  count = self->_bus.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_bus->list[a3];
}

- (unsigned)macAtIndex:(unint64_t)a3
{
  p_macs = &self->_macs;
  count = self->_macs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_macs->list[a3];
}

- (unsigned)backplaneAtIndex:(unint64_t)a3
{
  p_backplanes = &self->_backplanes;
  count = self->_backplanes.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_backplanes->list[a3];
}

- (unsigned)pcieQueueStateAtIndex:(unint64_t)a3
{
  p_pcieQueueStates = &self->_pcieQueueStates;
  count = self->_pcieQueueStates.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_pcieQueueStates->list[a3];
}

- (unsigned)wlcStateAtIndex:(unint64_t)a3
{
  p_wlcStates = &self->_wlcStates;
  count = self->_wlcStates.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_wlcStates->list[a3];
}

- (unsigned)macEnabAtIndex:(unint64_t)a3
{
  p_macEnabs = &self->_macEnabs;
  count = self->_macEnabs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_macEnabs->list[a3];
}

- (unsigned)phyTxErrThreshAtIndex:(unint64_t)a3
{
  p_phyTxErrThreshs = &self->_phyTxErrThreshs;
  count = self->_phyTxErrThreshs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_phyTxErrThreshs->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricExtendedTrapInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricExtendedTrapInfo description](&v3, sel_description), -[AWDWiFiMetricExtendedTrapInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sequence), @"sequence"}];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"signature"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"stackTraces"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"ucodeErrors"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"memoryDump"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"deepSleep"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"psmWD"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"phy"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"bus"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"mac"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"backplane"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"pcieQueueState"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"wlcState"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"macEnab"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"phyTxErrThresh"];
  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    sequence = self->_sequence;
    PBDataWriterWriteUint32Field();
  }

  if (self->_signatures.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_signatures.list[v5];
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < self->_signatures.count);
  }

  if (self->_stackTraces.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_stackTraces.list[v7];
      PBDataWriterWriteUint32Field();
      ++v7;
    }

    while (v7 < self->_stackTraces.count);
  }

  if (self->_ucodeErrors.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_ucodeErrors.list[v9];
      PBDataWriterWriteUint32Field();
      ++v9;
    }

    while (v9 < self->_ucodeErrors.count);
  }

  if (self->_memoryDumps.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_memoryDumps.list[v11];
      PBDataWriterWriteUint32Field();
      ++v11;
    }

    while (v11 < self->_memoryDumps.count);
  }

  if (self->_deepSleeps.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_deepSleeps.list[v13];
      PBDataWriterWriteUint32Field();
      ++v13;
    }

    while (v13 < self->_deepSleeps.count);
  }

  if (self->_psmWDs.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_psmWDs.list[v15];
      PBDataWriterWriteUint32Field();
      ++v15;
    }

    while (v15 < self->_psmWDs.count);
  }

  if (self->_phys.count)
  {
    v17 = 0;
    do
    {
      v18 = self->_phys.list[v17];
      PBDataWriterWriteUint32Field();
      ++v17;
    }

    while (v17 < self->_phys.count);
  }

  if (self->_bus.count)
  {
    v19 = 0;
    do
    {
      v20 = self->_bus.list[v19];
      PBDataWriterWriteUint32Field();
      ++v19;
    }

    while (v19 < self->_bus.count);
  }

  if (self->_macs.count)
  {
    v21 = 0;
    do
    {
      v22 = self->_macs.list[v21];
      PBDataWriterWriteUint32Field();
      ++v21;
    }

    while (v21 < self->_macs.count);
  }

  if (self->_backplanes.count)
  {
    v23 = 0;
    do
    {
      v24 = self->_backplanes.list[v23];
      PBDataWriterWriteUint32Field();
      ++v23;
    }

    while (v23 < self->_backplanes.count);
  }

  if (self->_pcieQueueStates.count)
  {
    v25 = 0;
    do
    {
      v26 = self->_pcieQueueStates.list[v25];
      PBDataWriterWriteUint32Field();
      ++v25;
    }

    while (v25 < self->_pcieQueueStates.count);
  }

  if (self->_wlcStates.count)
  {
    v27 = 0;
    do
    {
      v28 = self->_wlcStates.list[v27];
      PBDataWriterWriteUint32Field();
      ++v27;
    }

    while (v27 < self->_wlcStates.count);
  }

  if (self->_macEnabs.count)
  {
    v29 = 0;
    do
    {
      v30 = self->_macEnabs.list[v29];
      PBDataWriterWriteUint32Field();
      ++v29;
    }

    while (v29 < self->_macEnabs.count);
  }

  p_phyTxErrThreshs = &self->_phyTxErrThreshs;
  if (p_phyTxErrThreshs->count)
  {
    v32 = 0;
    do
    {
      v33 = p_phyTxErrThreshs->list[v32];
      PBDataWriterWriteUint32Field();
      ++v32;
    }

    while (v32 < p_phyTxErrThreshs->count);
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 86) = self->_sequence;
    *(a3 + 348) |= 1u;
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self signaturesCount])
  {
    [a3 clearSignatures];
    v5 = [(AWDWiFiMetricExtendedTrapInfo *)self signaturesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addSignature:{-[AWDWiFiMetricExtendedTrapInfo signatureAtIndex:](self, "signatureAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self stackTracesCount])
  {
    [a3 clearStackTraces];
    v8 = [(AWDWiFiMetricExtendedTrapInfo *)self stackTracesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addStackTraces:{-[AWDWiFiMetricExtendedTrapInfo stackTracesAtIndex:](self, "stackTracesAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self ucodeErrorsCount])
  {
    [a3 clearUcodeErrors];
    v11 = [(AWDWiFiMetricExtendedTrapInfo *)self ucodeErrorsCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [a3 addUcodeErrors:{-[AWDWiFiMetricExtendedTrapInfo ucodeErrorsAtIndex:](self, "ucodeErrorsAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self memoryDumpsCount])
  {
    [a3 clearMemoryDumps];
    v14 = [(AWDWiFiMetricExtendedTrapInfo *)self memoryDumpsCount];
    if (v14)
    {
      v15 = v14;
      for (m = 0; m != v15; ++m)
      {
        [a3 addMemoryDump:{-[AWDWiFiMetricExtendedTrapInfo memoryDumpAtIndex:](self, "memoryDumpAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self deepSleepsCount])
  {
    [a3 clearDeepSleeps];
    v17 = [(AWDWiFiMetricExtendedTrapInfo *)self deepSleepsCount];
    if (v17)
    {
      v18 = v17;
      for (n = 0; n != v18; ++n)
      {
        [a3 addDeepSleep:{-[AWDWiFiMetricExtendedTrapInfo deepSleepAtIndex:](self, "deepSleepAtIndex:", n)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self psmWDsCount])
  {
    [a3 clearPsmWDs];
    v20 = [(AWDWiFiMetricExtendedTrapInfo *)self psmWDsCount];
    if (v20)
    {
      v21 = v20;
      for (ii = 0; ii != v21; ++ii)
      {
        [a3 addPsmWD:{-[AWDWiFiMetricExtendedTrapInfo psmWDAtIndex:](self, "psmWDAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self physCount])
  {
    [a3 clearPhys];
    v23 = [(AWDWiFiMetricExtendedTrapInfo *)self physCount];
    if (v23)
    {
      v24 = v23;
      for (jj = 0; jj != v24; ++jj)
      {
        [a3 addPhy:{-[AWDWiFiMetricExtendedTrapInfo phyAtIndex:](self, "phyAtIndex:", jj)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self busCount])
  {
    [a3 clearBus];
    v26 = [(AWDWiFiMetricExtendedTrapInfo *)self busCount];
    if (v26)
    {
      v27 = v26;
      for (kk = 0; kk != v27; ++kk)
      {
        [a3 addBus:{-[AWDWiFiMetricExtendedTrapInfo busAtIndex:](self, "busAtIndex:", kk)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self macsCount])
  {
    [a3 clearMacs];
    v29 = [(AWDWiFiMetricExtendedTrapInfo *)self macsCount];
    if (v29)
    {
      v30 = v29;
      for (mm = 0; mm != v30; ++mm)
      {
        [a3 addMac:{-[AWDWiFiMetricExtendedTrapInfo macAtIndex:](self, "macAtIndex:", mm)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self backplanesCount])
  {
    [a3 clearBackplanes];
    v32 = [(AWDWiFiMetricExtendedTrapInfo *)self backplanesCount];
    if (v32)
    {
      v33 = v32;
      for (nn = 0; nn != v33; ++nn)
      {
        [a3 addBackplane:{-[AWDWiFiMetricExtendedTrapInfo backplaneAtIndex:](self, "backplaneAtIndex:", nn)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self pcieQueueStatesCount])
  {
    [a3 clearPcieQueueStates];
    v35 = [(AWDWiFiMetricExtendedTrapInfo *)self pcieQueueStatesCount];
    if (v35)
    {
      v36 = v35;
      for (i1 = 0; i1 != v36; ++i1)
      {
        [a3 addPcieQueueState:{-[AWDWiFiMetricExtendedTrapInfo pcieQueueStateAtIndex:](self, "pcieQueueStateAtIndex:", i1)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self wlcStatesCount])
  {
    [a3 clearWlcStates];
    v38 = [(AWDWiFiMetricExtendedTrapInfo *)self wlcStatesCount];
    if (v38)
    {
      v39 = v38;
      for (i2 = 0; i2 != v39; ++i2)
      {
        [a3 addWlcState:{-[AWDWiFiMetricExtendedTrapInfo wlcStateAtIndex:](self, "wlcStateAtIndex:", i2)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self macEnabsCount])
  {
    [a3 clearMacEnabs];
    v41 = [(AWDWiFiMetricExtendedTrapInfo *)self macEnabsCount];
    if (v41)
    {
      v42 = v41;
      for (i3 = 0; i3 != v42; ++i3)
      {
        [a3 addMacEnab:{-[AWDWiFiMetricExtendedTrapInfo macEnabAtIndex:](self, "macEnabAtIndex:", i3)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self phyTxErrThreshsCount])
  {
    [a3 clearPhyTxErrThreshs];
    v44 = [(AWDWiFiMetricExtendedTrapInfo *)self phyTxErrThreshsCount];
    if (v44)
    {
      v45 = v44;
      for (i4 = 0; i4 != v45; ++i4)
      {
        [a3 addPhyTxErrThresh:{-[AWDWiFiMetricExtendedTrapInfo phyTxErrThreshAtIndex:](self, "phyTxErrThreshAtIndex:", i4)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 344) = self->_sequence;
    *(v4 + 348) |= 1u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 348);
  if (*&self->_has)
  {
    if ((*(a3 + 348) & 1) == 0 || self->_sequence != *(a3 + 86))
    {
      return 0;
    }
  }

  else if (*(a3 + 348))
  {
    return 0;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    return 0;
  }

  return PBRepeatedUInt32IsEqual();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_sequence;
  }

  else
  {
    v2 = 0;
  }

  v3 = PBRepeatedUInt32Hash() ^ v2;
  v4 = PBRepeatedUInt32Hash();
  v5 = v3 ^ v4 ^ PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  v7 = v6 ^ PBRepeatedUInt32Hash();
  v8 = v5 ^ v7 ^ PBRepeatedUInt32Hash();
  v9 = PBRepeatedUInt32Hash();
  v10 = v9 ^ PBRepeatedUInt32Hash();
  v11 = v10 ^ PBRepeatedUInt32Hash();
  v12 = v8 ^ v11 ^ PBRepeatedUInt32Hash();
  v13 = PBRepeatedUInt32Hash();
  v14 = v13 ^ PBRepeatedUInt32Hash();
  v15 = v14 ^ PBRepeatedUInt32Hash();
  return v12 ^ v15 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 348))
  {
    self->_sequence = *(a3 + 86);
    *&self->_has |= 1u;
  }

  v5 = [a3 signaturesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricExtendedTrapInfo addSignature:](self, "addSignature:", [a3 signatureAtIndex:i]);
    }
  }

  v8 = [a3 stackTracesCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricExtendedTrapInfo addStackTraces:](self, "addStackTraces:", [a3 stackTracesAtIndex:j]);
    }
  }

  v11 = [a3 ucodeErrorsCount];
  if (v11)
  {
    v12 = v11;
    for (k = 0; k != v12; ++k)
    {
      -[AWDWiFiMetricExtendedTrapInfo addUcodeErrors:](self, "addUcodeErrors:", [a3 ucodeErrorsAtIndex:k]);
    }
  }

  v14 = [a3 memoryDumpsCount];
  if (v14)
  {
    v15 = v14;
    for (m = 0; m != v15; ++m)
    {
      -[AWDWiFiMetricExtendedTrapInfo addMemoryDump:](self, "addMemoryDump:", [a3 memoryDumpAtIndex:m]);
    }
  }

  v17 = [a3 deepSleepsCount];
  if (v17)
  {
    v18 = v17;
    for (n = 0; n != v18; ++n)
    {
      -[AWDWiFiMetricExtendedTrapInfo addDeepSleep:](self, "addDeepSleep:", [a3 deepSleepAtIndex:n]);
    }
  }

  v20 = [a3 psmWDsCount];
  if (v20)
  {
    v21 = v20;
    for (ii = 0; ii != v21; ++ii)
    {
      -[AWDWiFiMetricExtendedTrapInfo addPsmWD:](self, "addPsmWD:", [a3 psmWDAtIndex:ii]);
    }
  }

  v23 = [a3 physCount];
  if (v23)
  {
    v24 = v23;
    for (jj = 0; jj != v24; ++jj)
    {
      -[AWDWiFiMetricExtendedTrapInfo addPhy:](self, "addPhy:", [a3 phyAtIndex:jj]);
    }
  }

  v26 = [a3 busCount];
  if (v26)
  {
    v27 = v26;
    for (kk = 0; kk != v27; ++kk)
    {
      -[AWDWiFiMetricExtendedTrapInfo addBus:](self, "addBus:", [a3 busAtIndex:kk]);
    }
  }

  v29 = [a3 macsCount];
  if (v29)
  {
    v30 = v29;
    for (mm = 0; mm != v30; ++mm)
    {
      -[AWDWiFiMetricExtendedTrapInfo addMac:](self, "addMac:", [a3 macAtIndex:mm]);
    }
  }

  v32 = [a3 backplanesCount];
  if (v32)
  {
    v33 = v32;
    for (nn = 0; nn != v33; ++nn)
    {
      -[AWDWiFiMetricExtendedTrapInfo addBackplane:](self, "addBackplane:", [a3 backplaneAtIndex:nn]);
    }
  }

  v35 = [a3 pcieQueueStatesCount];
  if (v35)
  {
    v36 = v35;
    for (i1 = 0; i1 != v36; ++i1)
    {
      -[AWDWiFiMetricExtendedTrapInfo addPcieQueueState:](self, "addPcieQueueState:", [a3 pcieQueueStateAtIndex:i1]);
    }
  }

  v38 = [a3 wlcStatesCount];
  if (v38)
  {
    v39 = v38;
    for (i2 = 0; i2 != v39; ++i2)
    {
      -[AWDWiFiMetricExtendedTrapInfo addWlcState:](self, "addWlcState:", [a3 wlcStateAtIndex:i2]);
    }
  }

  v41 = [a3 macEnabsCount];
  if (v41)
  {
    v42 = v41;
    for (i3 = 0; i3 != v42; ++i3)
    {
      -[AWDWiFiMetricExtendedTrapInfo addMacEnab:](self, "addMacEnab:", [a3 macEnabAtIndex:i3]);
    }
  }

  v44 = [a3 phyTxErrThreshsCount];
  if (v44)
  {
    v45 = v44;
    for (i4 = 0; i4 != v45; ++i4)
    {
      -[AWDWiFiMetricExtendedTrapInfo addPhyTxErrThresh:](self, "addPhyTxErrThresh:", [a3 phyTxErrThreshAtIndex:i4]);
    }
  }
}

@end