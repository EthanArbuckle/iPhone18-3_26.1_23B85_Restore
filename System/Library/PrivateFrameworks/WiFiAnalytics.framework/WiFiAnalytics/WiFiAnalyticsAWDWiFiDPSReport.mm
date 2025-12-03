@interface WiFiAnalyticsAWDWiFiDPSReport
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
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiDPSReport

- (void)addStallNotification:(id)notification
{
  notificationCopy = notification;
  stallNotifications = self->_stallNotifications;
  v8 = notificationCopy;
  if (!stallNotifications)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_stallNotifications;
    self->_stallNotifications = v6;

    notificationCopy = v8;
    stallNotifications = self->_stallNotifications;
  }

  [(NSMutableArray *)stallNotifications addObject:notificationCopy];
}

- (void)addProbeResult:(id)result
{
  resultCopy = result;
  probeResults = self->_probeResults;
  v8 = resultCopy;
  if (!probeResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_probeResults;
    self->_probeResults = v6;

    resultCopy = v8;
    probeResults = self->_probeResults;
  }

  [(NSMutableArray *)probeResults addObject:resultCopy];
}

- (void)addDpsCounterSample:(id)sample
{
  sampleCopy = sample;
  dpsCounterSamples = self->_dpsCounterSamples;
  v8 = sampleCopy;
  if (!dpsCounterSamples)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dpsCounterSamples;
    self->_dpsCounterSamples = v6;

    sampleCopy = v8;
    dpsCounterSamples = self->_dpsCounterSamples;
  }

  [(NSMutableArray *)dpsCounterSamples addObject:sampleCopy];
}

- (void)addUsbEvent:(id)event
{
  eventCopy = event;
  usbEvents = self->_usbEvents;
  v8 = eventCopy;
  if (!usbEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_usbEvents;
    self->_usbEvents = v6;

    eventCopy = v8;
    usbEvents = self->_usbEvents;
  }

  [(NSMutableArray *)usbEvents addObject:eventCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiDPSReport;
  v4 = [(WiFiAnalyticsAWDWiFiDPSReport *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiDPSReport *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v59 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_stallNotifications count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_stallNotifications, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v6 = self->_stallNotifications;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v52;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v52 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v51 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"stallNotification"];
  }

  if ([(NSMutableArray *)self->_probeResults count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_probeResults, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v13 = self->_probeResults;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v48;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v47 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"probeResult"];
  }

  if ([(NSMutableArray *)self->_dpsCounterSamples count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_dpsCounterSamples, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v20 = self->_dpsCounterSamples;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v43 objects:v56 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v43 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"dpsCounterSample"];
  }

  dpsEpiloge = self->_dpsEpiloge;
  if (dpsEpiloge)
  {
    dictionaryRepresentation4 = [(WiFiAnalyticsAWDWiFiDPSEpilogue *)dpsEpiloge dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"dpsEpiloge"];
  }

  snapshot = self->_snapshot;
  if (snapshot)
  {
    dictionaryRepresentation5 = [(WiFiAnalyticsAWDWiFiDPSSnapshot *)snapshot dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"snapshot"];
  }

  if ([(NSMutableArray *)self->_usbEvents count])
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_usbEvents, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v31 = self->_usbEvents;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v40;
      do
      {
        for (m = 0; m != v33; ++m)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation6 = [*(*(&v39 + 1) + 8 * m) dictionaryRepresentation];
          [v30 addObject:dictionaryRepresentation6];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v33);
    }

    [dictionary setObject:v30 forKey:@"usbEvent"];
  }

  v37 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v51 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = self->_stallNotifications;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = self->_probeResults;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      v16 = 0;
      do
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v39 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v14);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = self->_dpsCounterSamples;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      v22 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v35 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v20);
  }

  if (self->_dpsEpiloge)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_snapshot)
  {
    PBDataWriterWriteSubmessage();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = self->_usbEvents;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      v28 = 0;
      do
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v31 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v26);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 64) |= 1u;
  }

  v21 = toCopy;
  if ([(WiFiAnalyticsAWDWiFiDPSReport *)self stallNotificationsCount])
  {
    [v21 clearStallNotifications];
    stallNotificationsCount = [(WiFiAnalyticsAWDWiFiDPSReport *)self stallNotificationsCount];
    if (stallNotificationsCount)
    {
      v6 = stallNotificationsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(WiFiAnalyticsAWDWiFiDPSReport *)self stallNotificationAtIndex:i];
        [v21 addStallNotification:v8];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiDPSReport *)self probeResultsCount])
  {
    [v21 clearProbeResults];
    probeResultsCount = [(WiFiAnalyticsAWDWiFiDPSReport *)self probeResultsCount];
    if (probeResultsCount)
    {
      v10 = probeResultsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(WiFiAnalyticsAWDWiFiDPSReport *)self probeResultAtIndex:j];
        [v21 addProbeResult:v12];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiDPSReport *)self dpsCounterSamplesCount])
  {
    [v21 clearDpsCounterSamples];
    dpsCounterSamplesCount = [(WiFiAnalyticsAWDWiFiDPSReport *)self dpsCounterSamplesCount];
    if (dpsCounterSamplesCount)
    {
      v14 = dpsCounterSamplesCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(WiFiAnalyticsAWDWiFiDPSReport *)self dpsCounterSampleAtIndex:k];
        [v21 addDpsCounterSample:v16];
      }
    }
  }

  if (self->_dpsEpiloge)
  {
    [v21 setDpsEpiloge:?];
  }

  if (self->_snapshot)
  {
    [v21 setSnapshot:?];
  }

  if ([(WiFiAnalyticsAWDWiFiDPSReport *)self usbEventsCount])
  {
    [v21 clearUsbEvents];
    usbEventsCount = [(WiFiAnalyticsAWDWiFiDPSReport *)self usbEventsCount];
    if (usbEventsCount)
    {
      v18 = usbEventsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(WiFiAnalyticsAWDWiFiDPSReport *)self usbEventAtIndex:m];
        [v21 addUsbEvent:v20];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = self->_stallNotifications;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      v11 = 0;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v49 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addStallNotification:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v9);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = self->_probeResults;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    do
    {
      v17 = 0;
      do
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v45 + 1) + 8 * v17) copyWithZone:zone];
        [v6 addProbeResult:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v15);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = self->_dpsCounterSamples;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    do
    {
      v23 = 0;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v41 + 1) + 8 * v23) copyWithZone:zone];
        [v6 addDpsCounterSample:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v21);
  }

  v25 = [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self->_dpsEpiloge copyWithZone:zone];
  v26 = v6[3];
  v6[3] = v25;

  v27 = [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self->_snapshot copyWithZone:zone];
  v28 = v6[5];
  v6[5] = v27;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = self->_usbEvents;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v38;
    do
    {
      v33 = 0;
      do
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v37 + 1) + 8 * v33) copyWithZone:{zone, v37}];
        [v6 addUsbEvent:v34];

        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v31);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  stallNotifications = self->_stallNotifications;
  if (stallNotifications | *(equalCopy + 6) && ![(NSMutableArray *)stallNotifications isEqual:?])
  {
    goto LABEL_19;
  }

  probeResults = self->_probeResults;
  if (probeResults | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)probeResults isEqual:?])
    {
      goto LABEL_19;
    }
  }

  dpsCounterSamples = self->_dpsCounterSamples;
  if (dpsCounterSamples | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)dpsCounterSamples isEqual:?])
    {
      goto LABEL_19;
    }
  }

  dpsEpiloge = self->_dpsEpiloge;
  if (dpsEpiloge | *(equalCopy + 3))
  {
    if (![(WiFiAnalyticsAWDWiFiDPSEpilogue *)dpsEpiloge isEqual:?])
    {
      goto LABEL_19;
    }
  }

  snapshot = self->_snapshot;
  if (snapshot | *(equalCopy + 5))
  {
    if (![(WiFiAnalyticsAWDWiFiDPSSnapshot *)snapshot isEqual:?])
    {
      goto LABEL_19;
    }
  }

  usbEvents = self->_usbEvents;
  if (usbEvents | *(equalCopy + 7))
  {
    v12 = [(NSMutableArray *)usbEvents isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
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
  v7 = [(WiFiAnalyticsAWDWiFiDPSEpilogue *)self->_dpsEpiloge hash];
  v8 = v7 ^ [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self->_snapshot hash];
  return v6 ^ v8 ^ [(NSMutableArray *)self->_usbEvents hash];
}

- (void)mergeFrom:(id)from
{
  v51 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 64))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = *(fromCopy + 6);
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WiFiAnalyticsAWDWiFiDPSReport *)self addStallNotification:*(*(&v43 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v5[4];
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(WiFiAnalyticsAWDWiFiDPSReport *)self addProbeResult:*(*(&v39 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v13);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = v5[2];
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(WiFiAnalyticsAWDWiFiDPSReport *)self addDpsCounterSample:*(*(&v35 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v18);
  }

  dpsEpiloge = self->_dpsEpiloge;
  v22 = v5[3];
  if (dpsEpiloge)
  {
    if (v22)
    {
      [(WiFiAnalyticsAWDWiFiDPSEpilogue *)dpsEpiloge mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(WiFiAnalyticsAWDWiFiDPSReport *)self setDpsEpiloge:?];
  }

  snapshot = self->_snapshot;
  v24 = v5[5];
  if (snapshot)
  {
    if (v24)
    {
      [(WiFiAnalyticsAWDWiFiDPSSnapshot *)snapshot mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(WiFiAnalyticsAWDWiFiDPSReport *)self setSnapshot:?];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = v5[7];
  v26 = [v25 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v32;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(WiFiAnalyticsAWDWiFiDPSReport *)self addUsbEvent:*(*(&v31 + 1) + 8 * m), v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v27);
  }

  v30 = *MEMORY[0x1E69E9840];
}

@end