@interface AWDWiFiDPSReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDpsCounterSample:(id)sample;
- (void)addProbeResult:(id)result;
- (void)addStallNotification:(id)notification;
- (void)addUsbEvent:(id)event;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiDPSReport

- (void)dealloc
{
  [(AWDWiFiDPSReport *)self setStallNotifications:0];
  [(AWDWiFiDPSReport *)self setProbeResults:0];
  [(AWDWiFiDPSReport *)self setDpsCounterSamples:0];
  [(AWDWiFiDPSReport *)self setDpsEpiloge:0];
  [(AWDWiFiDPSReport *)self setSnapshot:0];
  [(AWDWiFiDPSReport *)self setUsbEvents:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSReport;
  [(AWDWiFiDPSReport *)&v3 dealloc];
}

- (void)addStallNotification:(id)notification
{
  stallNotifications = self->_stallNotifications;
  if (!stallNotifications)
  {
    stallNotifications = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_stallNotifications = stallNotifications;
  }

  [(NSMutableArray *)stallNotifications addObject:notification];
}

- (void)addProbeResult:(id)result
{
  probeResults = self->_probeResults;
  if (!probeResults)
  {
    probeResults = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_probeResults = probeResults;
  }

  [(NSMutableArray *)probeResults addObject:result];
}

- (void)addDpsCounterSample:(id)sample
{
  dpsCounterSamples = self->_dpsCounterSamples;
  if (!dpsCounterSamples)
  {
    dpsCounterSamples = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_dpsCounterSamples = dpsCounterSamples;
  }

  [(NSMutableArray *)dpsCounterSamples addObject:sample];
}

- (void)addUsbEvent:(id)event
{
  usbEvents = self->_usbEvents;
  if (!usbEvents)
  {
    usbEvents = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_usbEvents = usbEvents;
  }

  [(NSMutableArray *)usbEvents addObject:event];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiDPSReport description](&v3, sel_description), -[AWDWiFiDPSReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v52 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_stallNotifications count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_stallNotifications, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    stallNotifications = self->_stallNotifications;
    v6 = [(NSMutableArray *)stallNotifications countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v45;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(stallNotifications);
          }

          [v4 addObject:{objc_msgSend(*(*(&v44 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)stallNotifications countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"stallNotification"];
  }

  if ([(NSMutableArray *)self->_probeResults count])
  {
    v10 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_probeResults, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    probeResults = self->_probeResults;
    v12 = [(NSMutableArray *)probeResults countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(probeResults);
          }

          [v10 addObject:{objc_msgSend(*(*(&v40 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)probeResults countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"probeResult"];
  }

  if ([(NSMutableArray *)self->_dpsCounterSamples count])
  {
    v16 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_dpsCounterSamples, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    dpsCounterSamples = self->_dpsCounterSamples;
    v18 = [(NSMutableArray *)dpsCounterSamples countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(dpsCounterSamples);
          }

          [v16 addObject:{objc_msgSend(*(*(&v36 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v19 = [(NSMutableArray *)dpsCounterSamples countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v19);
    }

    [dictionary setObject:v16 forKey:@"dpsCounterSample"];
  }

  dpsEpiloge = self->_dpsEpiloge;
  if (dpsEpiloge)
  {
    [dictionary setObject:-[AWDWiFiDPSEpilogue dictionaryRepresentation](dpsEpiloge forKey:{"dictionaryRepresentation"), @"dpsEpiloge"}];
  }

  snapshot = self->_snapshot;
  if (snapshot)
  {
    [dictionary setObject:-[AWDWiFiDPSSnapshot dictionaryRepresentation](snapshot forKey:{"dictionaryRepresentation"), @"snapshot"}];
  }

  if ([(NSMutableArray *)self->_usbEvents count])
  {
    v24 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_usbEvents, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    usbEvents = self->_usbEvents;
    v26 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v32 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v33;
      do
      {
        for (m = 0; m != v27; ++m)
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(usbEvents);
          }

          [v24 addObject:{objc_msgSend(*(*(&v32 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v27 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v32 objects:v48 count:16];
      }

      while (v27);
    }

    [dictionary setObject:v24 forKey:@"usbEvent"];
  }

  v30 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v50 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  stallNotifications = self->_stallNotifications;
  v6 = [(NSMutableArray *)stallNotifications countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(stallNotifications);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)stallNotifications countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  probeResults = self->_probeResults;
  v12 = [(NSMutableArray *)probeResults countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(probeResults);
        }

        v16 = *(*(&v38 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)probeResults countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  dpsCounterSamples = self->_dpsCounterSamples;
  v18 = [(NSMutableArray *)dpsCounterSamples countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(dpsCounterSamples);
        }

        v22 = *(*(&v34 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)dpsCounterSamples countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v19);
  }

  if (self->_dpsEpiloge)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_snapshot)
  {
    PBDataWriterWriteSubmessage();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  usbEvents = self->_usbEvents;
  v24 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(usbEvents);
        }

        v28 = *(*(&v30 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 64) |= 1u;
  }

  if ([(AWDWiFiDPSReport *)self stallNotificationsCount])
  {
    [to clearStallNotifications];
    stallNotificationsCount = [(AWDWiFiDPSReport *)self stallNotificationsCount];
    if (stallNotificationsCount)
    {
      v6 = stallNotificationsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addStallNotification:{-[AWDWiFiDPSReport stallNotificationAtIndex:](self, "stallNotificationAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiDPSReport *)self probeResultsCount])
  {
    [to clearProbeResults];
    probeResultsCount = [(AWDWiFiDPSReport *)self probeResultsCount];
    if (probeResultsCount)
    {
      v9 = probeResultsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addProbeResult:{-[AWDWiFiDPSReport probeResultAtIndex:](self, "probeResultAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiDPSReport *)self dpsCounterSamplesCount])
  {
    [to clearDpsCounterSamples];
    dpsCounterSamplesCount = [(AWDWiFiDPSReport *)self dpsCounterSamplesCount];
    if (dpsCounterSamplesCount)
    {
      v12 = dpsCounterSamplesCount;
      for (k = 0; k != v12; ++k)
      {
        [to addDpsCounterSample:{-[AWDWiFiDPSReport dpsCounterSampleAtIndex:](self, "dpsCounterSampleAtIndex:", k)}];
      }
    }
  }

  if (self->_dpsEpiloge)
  {
    [to setDpsEpiloge:?];
  }

  if (self->_snapshot)
  {
    [to setSnapshot:?];
  }

  if ([(AWDWiFiDPSReport *)self usbEventsCount])
  {
    [to clearUsbEvents];
    usbEventsCount = [(AWDWiFiDPSReport *)self usbEventsCount];
    if (usbEventsCount)
    {
      v15 = usbEventsCount;
      for (m = 0; m != v15; ++m)
      {
        [to addUsbEvent:{-[AWDWiFiDPSReport usbEventAtIndex:](self, "usbEventAtIndex:", m)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v53 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  stallNotifications = self->_stallNotifications;
  v8 = [(NSMutableArray *)stallNotifications countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(stallNotifications);
        }

        v12 = [*(*(&v45 + 1) + 8 * i) copyWithZone:zone];
        [v6 addStallNotification:v12];
      }

      v9 = [(NSMutableArray *)stallNotifications countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v9);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  probeResults = self->_probeResults;
  v14 = [(NSMutableArray *)probeResults countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(probeResults);
        }

        v18 = [*(*(&v41 + 1) + 8 * j) copyWithZone:zone];
        [v6 addProbeResult:v18];
      }

      v15 = [(NSMutableArray *)probeResults countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v15);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  dpsCounterSamples = self->_dpsCounterSamples;
  v20 = [(NSMutableArray *)dpsCounterSamples countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(dpsCounterSamples);
        }

        v24 = [*(*(&v37 + 1) + 8 * k) copyWithZone:zone];
        [v6 addDpsCounterSample:v24];
      }

      v21 = [(NSMutableArray *)dpsCounterSamples countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v21);
  }

  v6[3] = [(AWDWiFiDPSEpilogue *)self->_dpsEpiloge copyWithZone:zone];
  v6[5] = [(AWDWiFiDPSSnapshot *)self->_snapshot copyWithZone:zone];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  usbEvents = self->_usbEvents;
  v26 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v34;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(usbEvents);
        }

        v30 = [*(*(&v33 + 1) + 8 * m) copyWithZone:zone];
        [v6 addUsbEvent:v30];
      }

      v27 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 64);
    if (*&self->_has)
    {
      if ((*(equal + 64) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 64))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    stallNotifications = self->_stallNotifications;
    if (!(stallNotifications | *(equal + 6)) || (v5 = [(NSMutableArray *)stallNotifications isEqual:?]) != 0)
    {
      probeResults = self->_probeResults;
      if (!(probeResults | *(equal + 4)) || (v5 = [(NSMutableArray *)probeResults isEqual:?]) != 0)
      {
        dpsCounterSamples = self->_dpsCounterSamples;
        if (!(dpsCounterSamples | *(equal + 2)) || (v5 = [(NSMutableArray *)dpsCounterSamples isEqual:?]) != 0)
        {
          dpsEpiloge = self->_dpsEpiloge;
          if (!(dpsEpiloge | *(equal + 3)) || (v5 = [(AWDWiFiDPSEpilogue *)dpsEpiloge isEqual:?]) != 0)
          {
            snapshot = self->_snapshot;
            if (!(snapshot | *(equal + 5)) || (v5 = [(AWDWiFiDPSSnapshot *)snapshot isEqual:?]) != 0)
            {
              usbEvents = self->_usbEvents;
              if (usbEvents | *(equal + 7))
              {

                LOBYTE(v5) = [(NSMutableArray *)usbEvents isEqual:?];
              }

              else
              {
                LOBYTE(v5) = 1;
              }
            }
          }
        }
      }
    }
  }

  return v5;
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

  v4 = [(NSMutableArray *)self->_stallNotifications hash]^ v3;
  v5 = [(NSMutableArray *)self->_probeResults hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_dpsCounterSamples hash];
  v7 = [(AWDWiFiDPSEpilogue *)self->_dpsEpiloge hash];
  v8 = v7 ^ [(AWDWiFiDPSSnapshot *)self->_snapshot hash];
  return v6 ^ v8 ^ [(NSMutableArray *)self->_usbEvents hash];
}

- (void)mergeFrom:(id)from
{
  v50 = *MEMORY[0x29EDCA608];
  if (*(from + 64))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = *(from + 6);
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDWiFiDPSReport *)self addStallNotification:*(*(&v42 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = *(from + 4);
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDWiFiDPSReport *)self addProbeResult:*(*(&v38 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v12);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = *(from + 2);
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(AWDWiFiDPSReport *)self addDpsCounterSample:*(*(&v34 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v17);
  }

  dpsEpiloge = self->_dpsEpiloge;
  v21 = *(from + 3);
  if (dpsEpiloge)
  {
    if (v21)
    {
      [(AWDWiFiDPSEpilogue *)dpsEpiloge mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(AWDWiFiDPSReport *)self setDpsEpiloge:?];
  }

  snapshot = self->_snapshot;
  v23 = *(from + 5);
  if (snapshot)
  {
    if (v23)
    {
      [(AWDWiFiDPSSnapshot *)snapshot mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(AWDWiFiDPSReport *)self setSnapshot:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = *(from + 7);
  v25 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v31;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(AWDWiFiDPSReport *)self addUsbEvent:*(*(&v30 + 1) + 8 * m)];
      }

      v26 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v26);
  }

  v29 = *MEMORY[0x29EDCA608];
}

@end