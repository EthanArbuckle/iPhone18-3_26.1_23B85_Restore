@interface AWDWiFiSlowWiFiReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLinkQualSample:(id)a3;
- (void)addUsbEvent:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)addLinkQualSample:(id)a3
{
  linkQualSamples = self->_linkQualSamples;
  if (!linkQualSamples)
  {
    linkQualSamples = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_linkQualSamples = linkQualSamples;
  }

  [(NSMutableArray *)linkQualSamples addObject:a3];
}

- (void)addUsbEvent:(id)a3
{
  usbEvents = self->_usbEvents;
  if (!usbEvents)
  {
    usbEvents = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_usbEvents = usbEvents;
  }

  [(NSMutableArray *)usbEvents addObject:a3];
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  slowNotice = self->_slowNotice;
  if (slowNotice)
  {
    [v3 setObject:-[AWDSlowWiFiNotification dictionaryRepresentation](slowNotice forKey:{"dictionaryRepresentation"), @"slowNotice"}];
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

    [v3 setObject:v5 forKey:@"linkQualSample"];
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

    [v3 setObject:v11 forKey:@"usbEvent"];
  }

  v17 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 40) |= 1u;
  }

  if (self->_slowNotice)
  {
    [a3 setSlowNotice:?];
  }

  if ([(AWDWiFiSlowWiFiReport *)self linkQualSamplesCount])
  {
    [a3 clearLinkQualSamples];
    v5 = [(AWDWiFiSlowWiFiReport *)self linkQualSamplesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addLinkQualSample:{-[AWDWiFiSlowWiFiReport linkQualSampleAtIndex:](self, "linkQualSampleAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiSlowWiFiReport *)self usbEventsCount])
  {
    [a3 clearUsbEvents];
    v8 = [(AWDWiFiSlowWiFiReport *)self usbEventsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addUsbEvent:{-[AWDWiFiSlowWiFiReport usbEventAtIndex:](self, "usbEventAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  v6[3] = [(AWDSlowWiFiNotification *)self->_slowNotice copyWithZone:a3];
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

        v12 = [*(*(&v25 + 1) + 8 * i) copyWithZone:a3];
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

        v18 = [*(*(&v21 + 1) + 8 * j) copyWithZone:a3];
        [v6 addUsbEvent:v18];
      }

      v15 = [(NSMutableArray *)usbEvents countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 40);
    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_13;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    slowNotice = self->_slowNotice;
    if (!(slowNotice | *(a3 + 3)) || (v5 = [(AWDSlowWiFiNotification *)slowNotice isEqual:?]) != 0)
    {
      linkQualSamples = self->_linkQualSamples;
      if (!(linkQualSamples | *(a3 + 2)) || (v5 = [(NSMutableArray *)linkQualSamples isEqual:?]) != 0)
      {
        usbEvents = self->_usbEvents;
        if (usbEvents | *(a3 + 4))
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

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x29EDCA608];
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  slowNotice = self->_slowNotice;
  v6 = *(a3 + 3);
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
  v7 = *(a3 + 2);
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
  v12 = *(a3 + 4);
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