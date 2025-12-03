@interface AWDWiFiMetricExtendedTrapInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)backplaneAtIndex:(unint64_t)index;
- (unsigned)busAtIndex:(unint64_t)index;
- (unsigned)deepSleepAtIndex:(unint64_t)index;
- (unsigned)macAtIndex:(unint64_t)index;
- (unsigned)macEnabAtIndex:(unint64_t)index;
- (unsigned)memoryDumpAtIndex:(unint64_t)index;
- (unsigned)pcieQueueStateAtIndex:(unint64_t)index;
- (unsigned)phyAtIndex:(unint64_t)index;
- (unsigned)phyTxErrThreshAtIndex:(unint64_t)index;
- (unsigned)psmWDAtIndex:(unint64_t)index;
- (unsigned)signatureAtIndex:(unint64_t)index;
- (unsigned)stackTracesAtIndex:(unint64_t)index;
- (unsigned)ucodeErrorsAtIndex:(unint64_t)index;
- (unsigned)wlcStateAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (unsigned)signatureAtIndex:(unint64_t)index
{
  p_signatures = &self->_signatures;
  count = self->_signatures.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_signatures->list[index];
}

- (unsigned)stackTracesAtIndex:(unint64_t)index
{
  p_stackTraces = &self->_stackTraces;
  count = self->_stackTraces.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_stackTraces->list[index];
}

- (unsigned)ucodeErrorsAtIndex:(unint64_t)index
{
  p_ucodeErrors = &self->_ucodeErrors;
  count = self->_ucodeErrors.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_ucodeErrors->list[index];
}

- (unsigned)memoryDumpAtIndex:(unint64_t)index
{
  p_memoryDumps = &self->_memoryDumps;
  count = self->_memoryDumps.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_memoryDumps->list[index];
}

- (unsigned)deepSleepAtIndex:(unint64_t)index
{
  p_deepSleeps = &self->_deepSleeps;
  count = self->_deepSleeps.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_deepSleeps->list[index];
}

- (unsigned)psmWDAtIndex:(unint64_t)index
{
  p_psmWDs = &self->_psmWDs;
  count = self->_psmWDs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_psmWDs->list[index];
}

- (unsigned)phyAtIndex:(unint64_t)index
{
  p_phys = &self->_phys;
  count = self->_phys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_phys->list[index];
}

- (unsigned)busAtIndex:(unint64_t)index
{
  p_bus = &self->_bus;
  count = self->_bus.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_bus->list[index];
}

- (unsigned)macAtIndex:(unint64_t)index
{
  p_macs = &self->_macs;
  count = self->_macs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_macs->list[index];
}

- (unsigned)backplaneAtIndex:(unint64_t)index
{
  p_backplanes = &self->_backplanes;
  count = self->_backplanes.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_backplanes->list[index];
}

- (unsigned)pcieQueueStateAtIndex:(unint64_t)index
{
  p_pcieQueueStates = &self->_pcieQueueStates;
  count = self->_pcieQueueStates.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_pcieQueueStates->list[index];
}

- (unsigned)wlcStateAtIndex:(unint64_t)index
{
  p_wlcStates = &self->_wlcStates;
  count = self->_wlcStates.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_wlcStates->list[index];
}

- (unsigned)macEnabAtIndex:(unint64_t)index
{
  p_macEnabs = &self->_macEnabs;
  count = self->_macEnabs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_macEnabs->list[index];
}

- (unsigned)phyTxErrThreshAtIndex:(unint64_t)index
{
  p_phyTxErrThreshs = &self->_phyTxErrThreshs;
  count = self->_phyTxErrThreshs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_phyTxErrThreshs->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricExtendedTrapInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricExtendedTrapInfo description](&v3, sel_description), -[AWDWiFiMetricExtendedTrapInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sequence), @"sequence"}];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"signature"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"stackTraces"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"ucodeErrors"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"memoryDump"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"deepSleep"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"psmWD"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"phy"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"bus"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"mac"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"backplane"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"pcieQueueState"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"wlcState"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"macEnab"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"phyTxErrThresh"];
  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 86) = self->_sequence;
    *(to + 348) |= 1u;
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self signaturesCount])
  {
    [to clearSignatures];
    signaturesCount = [(AWDWiFiMetricExtendedTrapInfo *)self signaturesCount];
    if (signaturesCount)
    {
      v6 = signaturesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addSignature:{-[AWDWiFiMetricExtendedTrapInfo signatureAtIndex:](self, "signatureAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self stackTracesCount])
  {
    [to clearStackTraces];
    stackTracesCount = [(AWDWiFiMetricExtendedTrapInfo *)self stackTracesCount];
    if (stackTracesCount)
    {
      v9 = stackTracesCount;
      for (j = 0; j != v9; ++j)
      {
        [to addStackTraces:{-[AWDWiFiMetricExtendedTrapInfo stackTracesAtIndex:](self, "stackTracesAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self ucodeErrorsCount])
  {
    [to clearUcodeErrors];
    ucodeErrorsCount = [(AWDWiFiMetricExtendedTrapInfo *)self ucodeErrorsCount];
    if (ucodeErrorsCount)
    {
      v12 = ucodeErrorsCount;
      for (k = 0; k != v12; ++k)
      {
        [to addUcodeErrors:{-[AWDWiFiMetricExtendedTrapInfo ucodeErrorsAtIndex:](self, "ucodeErrorsAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self memoryDumpsCount])
  {
    [to clearMemoryDumps];
    memoryDumpsCount = [(AWDWiFiMetricExtendedTrapInfo *)self memoryDumpsCount];
    if (memoryDumpsCount)
    {
      v15 = memoryDumpsCount;
      for (m = 0; m != v15; ++m)
      {
        [to addMemoryDump:{-[AWDWiFiMetricExtendedTrapInfo memoryDumpAtIndex:](self, "memoryDumpAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self deepSleepsCount])
  {
    [to clearDeepSleeps];
    deepSleepsCount = [(AWDWiFiMetricExtendedTrapInfo *)self deepSleepsCount];
    if (deepSleepsCount)
    {
      v18 = deepSleepsCount;
      for (n = 0; n != v18; ++n)
      {
        [to addDeepSleep:{-[AWDWiFiMetricExtendedTrapInfo deepSleepAtIndex:](self, "deepSleepAtIndex:", n)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self psmWDsCount])
  {
    [to clearPsmWDs];
    psmWDsCount = [(AWDWiFiMetricExtendedTrapInfo *)self psmWDsCount];
    if (psmWDsCount)
    {
      v21 = psmWDsCount;
      for (ii = 0; ii != v21; ++ii)
      {
        [to addPsmWD:{-[AWDWiFiMetricExtendedTrapInfo psmWDAtIndex:](self, "psmWDAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self physCount])
  {
    [to clearPhys];
    physCount = [(AWDWiFiMetricExtendedTrapInfo *)self physCount];
    if (physCount)
    {
      v24 = physCount;
      for (jj = 0; jj != v24; ++jj)
      {
        [to addPhy:{-[AWDWiFiMetricExtendedTrapInfo phyAtIndex:](self, "phyAtIndex:", jj)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self busCount])
  {
    [to clearBus];
    busCount = [(AWDWiFiMetricExtendedTrapInfo *)self busCount];
    if (busCount)
    {
      v27 = busCount;
      for (kk = 0; kk != v27; ++kk)
      {
        [to addBus:{-[AWDWiFiMetricExtendedTrapInfo busAtIndex:](self, "busAtIndex:", kk)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self macsCount])
  {
    [to clearMacs];
    macsCount = [(AWDWiFiMetricExtendedTrapInfo *)self macsCount];
    if (macsCount)
    {
      v30 = macsCount;
      for (mm = 0; mm != v30; ++mm)
      {
        [to addMac:{-[AWDWiFiMetricExtendedTrapInfo macAtIndex:](self, "macAtIndex:", mm)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self backplanesCount])
  {
    [to clearBackplanes];
    backplanesCount = [(AWDWiFiMetricExtendedTrapInfo *)self backplanesCount];
    if (backplanesCount)
    {
      v33 = backplanesCount;
      for (nn = 0; nn != v33; ++nn)
      {
        [to addBackplane:{-[AWDWiFiMetricExtendedTrapInfo backplaneAtIndex:](self, "backplaneAtIndex:", nn)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self pcieQueueStatesCount])
  {
    [to clearPcieQueueStates];
    pcieQueueStatesCount = [(AWDWiFiMetricExtendedTrapInfo *)self pcieQueueStatesCount];
    if (pcieQueueStatesCount)
    {
      v36 = pcieQueueStatesCount;
      for (i1 = 0; i1 != v36; ++i1)
      {
        [to addPcieQueueState:{-[AWDWiFiMetricExtendedTrapInfo pcieQueueStateAtIndex:](self, "pcieQueueStateAtIndex:", i1)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self wlcStatesCount])
  {
    [to clearWlcStates];
    wlcStatesCount = [(AWDWiFiMetricExtendedTrapInfo *)self wlcStatesCount];
    if (wlcStatesCount)
    {
      v39 = wlcStatesCount;
      for (i2 = 0; i2 != v39; ++i2)
      {
        [to addWlcState:{-[AWDWiFiMetricExtendedTrapInfo wlcStateAtIndex:](self, "wlcStateAtIndex:", i2)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self macEnabsCount])
  {
    [to clearMacEnabs];
    macEnabsCount = [(AWDWiFiMetricExtendedTrapInfo *)self macEnabsCount];
    if (macEnabsCount)
    {
      v42 = macEnabsCount;
      for (i3 = 0; i3 != v42; ++i3)
      {
        [to addMacEnab:{-[AWDWiFiMetricExtendedTrapInfo macEnabAtIndex:](self, "macEnabAtIndex:", i3)}];
      }
    }
  }

  if ([(AWDWiFiMetricExtendedTrapInfo *)self phyTxErrThreshsCount])
  {
    [to clearPhyTxErrThreshs];
    phyTxErrThreshsCount = [(AWDWiFiMetricExtendedTrapInfo *)self phyTxErrThreshsCount];
    if (phyTxErrThreshsCount)
    {
      v45 = phyTxErrThreshsCount;
      for (i4 = 0; i4 != v45; ++i4)
      {
        [to addPhyTxErrThresh:{-[AWDWiFiMetricExtendedTrapInfo phyTxErrThreshAtIndex:](self, "phyTxErrThreshAtIndex:", i4)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 348);
  if (*&self->_has)
  {
    if ((*(equal + 348) & 1) == 0 || self->_sequence != *(equal + 86))
    {
      return 0;
    }
  }

  else if (*(equal + 348))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 348))
  {
    self->_sequence = *(from + 86);
    *&self->_has |= 1u;
  }

  signaturesCount = [from signaturesCount];
  if (signaturesCount)
  {
    v6 = signaturesCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricExtendedTrapInfo addSignature:](self, "addSignature:", [from signatureAtIndex:i]);
    }
  }

  stackTracesCount = [from stackTracesCount];
  if (stackTracesCount)
  {
    v9 = stackTracesCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricExtendedTrapInfo addStackTraces:](self, "addStackTraces:", [from stackTracesAtIndex:j]);
    }
  }

  ucodeErrorsCount = [from ucodeErrorsCount];
  if (ucodeErrorsCount)
  {
    v12 = ucodeErrorsCount;
    for (k = 0; k != v12; ++k)
    {
      -[AWDWiFiMetricExtendedTrapInfo addUcodeErrors:](self, "addUcodeErrors:", [from ucodeErrorsAtIndex:k]);
    }
  }

  memoryDumpsCount = [from memoryDumpsCount];
  if (memoryDumpsCount)
  {
    v15 = memoryDumpsCount;
    for (m = 0; m != v15; ++m)
    {
      -[AWDWiFiMetricExtendedTrapInfo addMemoryDump:](self, "addMemoryDump:", [from memoryDumpAtIndex:m]);
    }
  }

  deepSleepsCount = [from deepSleepsCount];
  if (deepSleepsCount)
  {
    v18 = deepSleepsCount;
    for (n = 0; n != v18; ++n)
    {
      -[AWDWiFiMetricExtendedTrapInfo addDeepSleep:](self, "addDeepSleep:", [from deepSleepAtIndex:n]);
    }
  }

  psmWDsCount = [from psmWDsCount];
  if (psmWDsCount)
  {
    v21 = psmWDsCount;
    for (ii = 0; ii != v21; ++ii)
    {
      -[AWDWiFiMetricExtendedTrapInfo addPsmWD:](self, "addPsmWD:", [from psmWDAtIndex:ii]);
    }
  }

  physCount = [from physCount];
  if (physCount)
  {
    v24 = physCount;
    for (jj = 0; jj != v24; ++jj)
    {
      -[AWDWiFiMetricExtendedTrapInfo addPhy:](self, "addPhy:", [from phyAtIndex:jj]);
    }
  }

  busCount = [from busCount];
  if (busCount)
  {
    v27 = busCount;
    for (kk = 0; kk != v27; ++kk)
    {
      -[AWDWiFiMetricExtendedTrapInfo addBus:](self, "addBus:", [from busAtIndex:kk]);
    }
  }

  macsCount = [from macsCount];
  if (macsCount)
  {
    v30 = macsCount;
    for (mm = 0; mm != v30; ++mm)
    {
      -[AWDWiFiMetricExtendedTrapInfo addMac:](self, "addMac:", [from macAtIndex:mm]);
    }
  }

  backplanesCount = [from backplanesCount];
  if (backplanesCount)
  {
    v33 = backplanesCount;
    for (nn = 0; nn != v33; ++nn)
    {
      -[AWDWiFiMetricExtendedTrapInfo addBackplane:](self, "addBackplane:", [from backplaneAtIndex:nn]);
    }
  }

  pcieQueueStatesCount = [from pcieQueueStatesCount];
  if (pcieQueueStatesCount)
  {
    v36 = pcieQueueStatesCount;
    for (i1 = 0; i1 != v36; ++i1)
    {
      -[AWDWiFiMetricExtendedTrapInfo addPcieQueueState:](self, "addPcieQueueState:", [from pcieQueueStateAtIndex:i1]);
    }
  }

  wlcStatesCount = [from wlcStatesCount];
  if (wlcStatesCount)
  {
    v39 = wlcStatesCount;
    for (i2 = 0; i2 != v39; ++i2)
    {
      -[AWDWiFiMetricExtendedTrapInfo addWlcState:](self, "addWlcState:", [from wlcStateAtIndex:i2]);
    }
  }

  macEnabsCount = [from macEnabsCount];
  if (macEnabsCount)
  {
    v42 = macEnabsCount;
    for (i3 = 0; i3 != v42; ++i3)
    {
      -[AWDWiFiMetricExtendedTrapInfo addMacEnab:](self, "addMacEnab:", [from macEnabAtIndex:i3]);
    }
  }

  phyTxErrThreshsCount = [from phyTxErrThreshsCount];
  if (phyTxErrThreshsCount)
  {
    v45 = phyTxErrThreshsCount;
    for (i4 = 0; i4 != v45; ++i4)
    {
      -[AWDWiFiMetricExtendedTrapInfo addPhyTxErrThresh:](self, "addPhyTxErrThresh:", [from phyTxErrThreshAtIndex:i4]);
    }
  }
}

@end