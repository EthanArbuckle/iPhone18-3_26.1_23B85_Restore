@interface WiFiAnalyticsAWDWiFiSlowWiFiReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLinkQualSample:(id)sample;
- (void)addUsbEvent:(id)event;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiSlowWiFiReport

- (void)addLinkQualSample:(id)sample
{
  sampleCopy = sample;
  linkQualSamples = self->_linkQualSamples;
  v8 = sampleCopy;
  if (!linkQualSamples)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_linkQualSamples;
    self->_linkQualSamples = v6;

    sampleCopy = v8;
    linkQualSamples = self->_linkQualSamples;
  }

  [(NSMutableArray *)linkQualSamples addObject:sampleCopy];
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
  v8.super_class = WiFiAnalyticsAWDWiFiSlowWiFiReport;
  v4 = [(WiFiAnalyticsAWDWiFiSlowWiFiReport *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  slowNotice = self->_slowNotice;
  if (slowNotice)
  {
    dictionaryRepresentation = [(WiFiAnalyticsAWDSlowWiFiNotification *)slowNotice dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"slowNotice"];
  }

  if ([(NSMutableArray *)self->_linkQualSamples count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_linkQualSamples, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = self->_linkQualSamples;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"linkQualSample"];
  }

  if ([(NSMutableArray *)self->_usbEvents count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_usbEvents, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->_usbEvents;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation3 = [*(*(&v23 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation3];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"usbEvent"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_slowNotice)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_linkQualSamples;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_usbEvents;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 40) |= 1u;
  }

  v13 = toCopy;
  if (self->_slowNotice)
  {
    [toCopy setSlowNotice:?];
  }

  if ([(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self linkQualSamplesCount])
  {
    [v13 clearLinkQualSamples];
    linkQualSamplesCount = [(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self linkQualSamplesCount];
    if (linkQualSamplesCount)
    {
      v6 = linkQualSamplesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self linkQualSampleAtIndex:i];
        [v13 addLinkQualSample:v8];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self usbEventsCount])
  {
    [v13 clearUsbEvents];
    usbEventsCount = [(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self usbEventsCount];
    if (usbEventsCount)
    {
      v10 = usbEventsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self usbEventAtIndex:j];
        [v13 addUsbEvent:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  v7 = [(WiFiAnalyticsAWDSlowWiFiNotification *)self->_slowNotice copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_linkQualSamples;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v27 + 1) + 8 * v13) copyWithZone:zone];
        [v6 addLinkQualSample:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = self->_usbEvents;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * v19) copyWithZone:{zone, v23}];
        [v6 addUsbEvent:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  slowNotice = self->_slowNotice;
  if (slowNotice | *(equalCopy + 3) && ![(WiFiAnalyticsAWDSlowWiFiNotification *)slowNotice isEqual:?])
  {
    goto LABEL_13;
  }

  linkQualSamples = self->_linkQualSamples;
  if (linkQualSamples | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)linkQualSamples isEqual:?])
    {
      goto LABEL_13;
    }
  }

  usbEvents = self->_usbEvents;
  if (usbEvents | *(equalCopy + 4))
  {
    v9 = [(NSMutableArray *)usbEvents isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
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

  v4 = [(WiFiAnalyticsAWDSlowWiFiNotification *)self->_slowNotice hash]^ v3;
  v5 = [(NSMutableArray *)self->_linkQualSamples hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_usbEvents hash];
}

- (void)mergeFrom:(id)from
{
  v29 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  slowNotice = self->_slowNotice;
  v7 = *(v5 + 3);
  if (slowNotice)
  {
    if (v7)
    {
      [(WiFiAnalyticsAWDSlowWiFiNotification *)slowNotice mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self setSlowNotice:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = *(v5 + 2);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self addLinkQualSample:*(*(&v23 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = *(v5 + 4);
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(WiFiAnalyticsAWDWiFiSlowWiFiReport *)self addUsbEvent:*(*(&v19 + 1) + 8 * j), v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end