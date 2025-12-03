@interface AWDWiFiSlowWiFiReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLinkQualSample:(id)sample;
- (void)addUsbEvent:(id)event;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiSlowWiFiReport

- (void)dealloc
{
  [(AWDWiFiSlowWiFiReport *)self setSlowNotice:0];
  [(AWDWiFiSlowWiFiReport *)self setLinkQualSamples:0];
  [(AWDWiFiSlowWiFiReport *)self setUsbEvents:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiSlowWiFiReport;
  [(AWDWiFiSlowWiFiReport *)&v3 dealloc];
}

- (void)addLinkQualSample:(id)sample
{
  linkQualSamples = self->_linkQualSamples;
  if (!linkQualSamples)
  {
    linkQualSamples = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_linkQualSamples = linkQualSamples;
  }

  [(NSMutableArray *)linkQualSamples addObject:sample];
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
  v3.super_class = AWDWiFiSlowWiFiReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiSlowWiFiReport description](&v3, sel_description), -[AWDWiFiSlowWiFiReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  slowNotice = self->_slowNotice;
  if (slowNotice)
  {
    [dictionary setObject:-[AWDSlowWiFiNotification dictionaryRepresentation](slowNotice forKey:{"dictionaryRepresentation"), @"slowNotice"}];
  }

  if ([(NSMutableArray *)self->_linkQualSamples count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_linkQualSamples, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    linkQualSamples = self->_linkQualSamples;
    v7 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(linkQualSamples);
          }

          [v5 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"linkQualSample"];
  }

  if ([(NSMutableArray *)self->_usbEvents count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_usbEvents, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    usbEvents = self->_usbEvents;
    v13 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(usbEvents);
          }

          [v11 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"usbEvent"];
  }

  v17 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_slowNotice)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  linkQualSamples = self->_linkQualSamples;
  v6 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(linkQualSamples);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  usbEvents = self->_usbEvents;
  v12 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(usbEvents);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 40) |= 1u;
  }

  if (self->_slowNotice)
  {
    [to setSlowNotice:?];
  }

  if ([(AWDWiFiSlowWiFiReport *)self linkQualSamplesCount])
  {
    [to clearLinkQualSamples];
    linkQualSamplesCount = [(AWDWiFiSlowWiFiReport *)self linkQualSamplesCount];
    if (linkQualSamplesCount)
    {
      v6 = linkQualSamplesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addLinkQualSample:{-[AWDWiFiSlowWiFiReport linkQualSampleAtIndex:](self, "linkQualSampleAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiSlowWiFiReport *)self usbEventsCount])
  {
    [to clearUsbEvents];
    usbEventsCount = [(AWDWiFiSlowWiFiReport *)self usbEventsCount];
    if (usbEventsCount)
    {
      v9 = usbEventsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addUsbEvent:{-[AWDWiFiSlowWiFiReport usbEventAtIndex:](self, "usbEventAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  v6[3] = [(AWDSlowWiFiNotification *)self->_slowNotice copyWithZone:zone];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  linkQualSamples = self->_linkQualSamples;
  v8 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(linkQualSamples);
        }

        v12 = [*(*(&v25 + 1) + 8 * i) copyWithZone:zone];
        [v6 addLinkQualSample:v12];
      }

      v9 = [(NSMutableArray *)linkQualSamples countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  usbEvents = self->_usbEvents;
  v14 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(usbEvents);
        }

        v18 = [*(*(&v21 + 1) + 8 * j) copyWithZone:zone];
        [v6 addUsbEvent:v18];
      }

      v15 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 40);
    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_13;
      }
    }

    else if (*(equal + 40))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    slowNotice = self->_slowNotice;
    if (!(slowNotice | *(equal + 3)) || (v5 = [(AWDSlowWiFiNotification *)slowNotice isEqual:?]) != 0)
    {
      linkQualSamples = self->_linkQualSamples;
      if (!(linkQualSamples | *(equal + 2)) || (v5 = [(NSMutableArray *)linkQualSamples isEqual:?]) != 0)
      {
        usbEvents = self->_usbEvents;
        if (usbEvents | *(equal + 4))
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

  v4 = [(AWDSlowWiFiNotification *)self->_slowNotice hash]^ v3;
  v5 = [(NSMutableArray *)self->_linkQualSamples hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_usbEvents hash];
}

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x29EDCA608];
  if (*(from + 40))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  slowNotice = self->_slowNotice;
  v6 = *(from + 3);
  if (slowNotice)
  {
    if (v6)
    {
      [(AWDSlowWiFiNotification *)slowNotice mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDWiFiSlowWiFiReport *)self setSlowNotice:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(from + 2);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDWiFiSlowWiFiReport *)self addLinkQualSample:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(from + 4);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDWiFiSlowWiFiReport *)self addUsbEvent:*(*(&v18 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x29EDCA608];
}

@end