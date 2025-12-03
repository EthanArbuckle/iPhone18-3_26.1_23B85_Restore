@interface UWLMessageWireEnvelope
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLiveActivityEvents:(id)events;
- (void)addOptInEvents:(id)events;
- (void)addOptOutEvents:(id)events;
- (void)addPlayEvents:(id)events;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation UWLMessageWireEnvelope

- (void)addPlayEvents:(id)events
{
  eventsCopy = events;
  playEvents = self->_playEvents;
  v8 = eventsCopy;
  if (!playEvents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_playEvents;
    self->_playEvents = v6;

    eventsCopy = v8;
    playEvents = self->_playEvents;
  }

  [(NSMutableArray *)playEvents addObject:eventsCopy];
}

- (void)addOptInEvents:(id)events
{
  eventsCopy = events;
  optInEvents = self->_optInEvents;
  v8 = eventsCopy;
  if (!optInEvents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_optInEvents;
    self->_optInEvents = v6;

    eventsCopy = v8;
    optInEvents = self->_optInEvents;
  }

  [(NSMutableArray *)optInEvents addObject:eventsCopy];
}

- (void)addOptOutEvents:(id)events
{
  eventsCopy = events;
  optOutEvents = self->_optOutEvents;
  v8 = eventsCopy;
  if (!optOutEvents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_optOutEvents;
    self->_optOutEvents = v6;

    eventsCopy = v8;
    optOutEvents = self->_optOutEvents;
  }

  [(NSMutableArray *)optOutEvents addObject:eventsCopy];
}

- (void)addLiveActivityEvents:(id)events
{
  eventsCopy = events;
  liveActivityEvents = self->_liveActivityEvents;
  v8 = eventsCopy;
  if (!liveActivityEvents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_liveActivityEvents;
    self->_liveActivityEvents = v6;

    eventsCopy = v8;
    liveActivityEvents = self->_liveActivityEvents;
  }

  [(NSMutableArray *)liveActivityEvents addObject:eventsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLMessageWireEnvelope;
  v3 = [(UWLMessageWireEnvelope *)&v7 description];
  dictionaryRepresentation = [(UWLMessageWireEnvelope *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  headers = self->_headers;
  if (headers)
  {
    dictionaryRepresentation = [(UWLMessageHeaders *)headers dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"headers"];
  }

  if ([(NSMutableArray *)self->_playEvents count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_playEvents, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = self->_playEvents;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v49;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"play_events"];
  }

  if ([(NSMutableArray *)self->_optInEvents count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_optInEvents, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v15 = self->_optInEvents;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation3 = [*(*(&v44 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation3];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"opt_in_events"];
  }

  if ([(NSMutableArray *)self->_optOutEvents count])
  {
    v21 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_optOutEvents, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = self->_optOutEvents;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v41;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation4 = [*(*(&v40 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation4];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKey:@"opt_out_events"];
  }

  if ([(NSMutableArray *)self->_liveActivityEvents count])
  {
    v28 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_liveActivityEvents, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = self->_liveActivityEvents;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v52 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v37;
      do
      {
        for (m = 0; m != v31; m = m + 1)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation5 = [*(*(&v36 + 1) + 8 * m) dictionaryRepresentation];
          [v28 addObject:dictionaryRepresentation5];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v52 count:16];
      }

      while (v31);
    }

    [v3 setObject:v28 forKey:@"live_activity_events"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  version = self->_version;
  PBDataWriterWriteInt32Field();
  headers = self->_headers;
  PBDataWriterWriteSubmessage();
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = self->_playEvents;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v9);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = self->_optInEvents;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      v17 = 0;
      do
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v15);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = self->_optOutEvents;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      v23 = 0;
      do
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v21);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = self->_liveActivityEvents;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v32;
    do
    {
      v29 = 0;
      do
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v31 + 1) + 8 * v29);
        PBDataWriterWriteSubmessage();
        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v27);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[12] = self->_version;
  v21 = toCopy;
  [toCopy setHeaders:self->_headers];
  if ([(UWLMessageWireEnvelope *)self playEventsCount])
  {
    [v21 clearPlayEvents];
    playEventsCount = [(UWLMessageWireEnvelope *)self playEventsCount];
    if (playEventsCount)
    {
      v6 = playEventsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(UWLMessageWireEnvelope *)self playEventsAtIndex:i];
        [v21 addPlayEvents:v8];
      }
    }
  }

  if ([(UWLMessageWireEnvelope *)self optInEventsCount])
  {
    [v21 clearOptInEvents];
    optInEventsCount = [(UWLMessageWireEnvelope *)self optInEventsCount];
    if (optInEventsCount)
    {
      v10 = optInEventsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(UWLMessageWireEnvelope *)self optInEventsAtIndex:j];
        [v21 addOptInEvents:v12];
      }
    }
  }

  if ([(UWLMessageWireEnvelope *)self optOutEventsCount])
  {
    [v21 clearOptOutEvents];
    optOutEventsCount = [(UWLMessageWireEnvelope *)self optOutEventsCount];
    if (optOutEventsCount)
    {
      v14 = optOutEventsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(UWLMessageWireEnvelope *)self optOutEventsAtIndex:k];
        [v21 addOptOutEvents:v16];
      }
    }
  }

  if ([(UWLMessageWireEnvelope *)self liveActivityEventsCount])
  {
    [v21 clearLiveActivityEvents];
    liveActivityEventsCount = [(UWLMessageWireEnvelope *)self liveActivityEventsCount];
    if (liveActivityEventsCount)
    {
      v18 = liveActivityEventsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(UWLMessageWireEnvelope *)self liveActivityEventsAtIndex:m];
        [v21 addLiveActivityEvents:v20];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[12] = self->_version;
  v6 = [(UWLMessageHeaders *)self->_headers copyWithZone:zone];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = self->_playEvents;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      v12 = 0;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v45 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addPlayEvents:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v10);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = self->_optInEvents;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      v18 = 0;
      do
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v41 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addOptInEvents:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v16);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = self->_optOutEvents;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      v24 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v37 + 1) + 8 * v24) copyWithZone:zone];
        [v5 addOptOutEvents:v25];

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v22);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = self->_liveActivityEvents;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      v30 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v33 + 1) + 8 * v30) copyWithZone:{zone, v33}];
        [v5 addLiveActivityEvents:v31];

        v30 = v30 + 1;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v28);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_version == *(equalCopy + 12) && ((headers = self->_headers, !(headers | equalCopy[1])) || -[UWLMessageHeaders isEqual:](headers, "isEqual:")) && ((playEvents = self->_playEvents, !(playEvents | equalCopy[5])) || -[NSMutableArray isEqual:](playEvents, "isEqual:")) && ((optInEvents = self->_optInEvents, !(optInEvents | equalCopy[3])) || -[NSMutableArray isEqual:](optInEvents, "isEqual:")) && ((optOutEvents = self->_optOutEvents, !(optOutEvents | equalCopy[4])) || -[NSMutableArray isEqual:](optOutEvents, "isEqual:")))
  {
    liveActivityEvents = self->_liveActivityEvents;
    if (liveActivityEvents | equalCopy[2])
    {
      v10 = [(NSMutableArray *)liveActivityEvents isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_version;
  v4 = [(UWLMessageHeaders *)self->_headers hash];
  v5 = v4 ^ [(NSMutableArray *)self->_playEvents hash];
  v6 = v5 ^ [(NSMutableArray *)self->_optInEvents hash];
  v7 = v6 ^ [(NSMutableArray *)self->_optOutEvents hash];
  return v7 ^ [(NSMutableArray *)self->_liveActivityEvents hash]^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = *(fromCopy + 12);
  headers = self->_headers;
  v6 = *(fromCopy + 1);
  if (headers)
  {
    if (v6)
    {
      [(UWLMessageHeaders *)headers mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(UWLMessageWireEnvelope *)self setHeaders:?];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = *(fromCopy + 5);
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(UWLMessageWireEnvelope *)self addPlayEvents:*(*(&v39 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = *(fromCopy + 3);
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(UWLMessageWireEnvelope *)self addOptInEvents:*(*(&v35 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v14);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = *(fromCopy + 4);
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(UWLMessageWireEnvelope *)self addOptOutEvents:*(*(&v31 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v19);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = *(fromCopy + 2);
  v23 = [v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v28;
    do
    {
      for (m = 0; m != v24; m = m + 1)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(UWLMessageWireEnvelope *)self addLiveActivityEvents:*(*(&v27 + 1) + 8 * m), v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v24);
  }
}

@end