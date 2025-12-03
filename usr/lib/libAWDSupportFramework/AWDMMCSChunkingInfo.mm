@interface AWDMMCSChunkingInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addChunkingError:(id)error;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCancelled:(BOOL)cancelled;
- (void)setHasChunkCount:(BOOL)count;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasStartTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation AWDMMCSChunkingInfo

- (void)dealloc
{
  [(AWDMMCSChunkingInfo *)self setErrorDomain:0];
  [(AWDMMCSChunkingInfo *)self setChunkingErrors:0];
  v3.receiver = self;
  v3.super_class = AWDMMCSChunkingInfo;
  [(AWDMMCSChunkingInfo *)&v3 dealloc];
}

- (void)setHasChunkCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCancelled:(BOOL)cancelled
{
  if (cancelled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addChunkingError:(id)error
{
  chunkingErrors = self->_chunkingErrors;
  if (!chunkingErrors)
  {
    chunkingErrors = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_chunkingErrors = chunkingErrors;
  }

  [(NSMutableArray *)chunkingErrors addObject:error];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMMCSChunkingInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMMCSChunkingInfo description](&v3, sel_description), -[AWDMMCSChunkingInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_chunkCount), @"chunkCount"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_byteCount), @"byteCount"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_startTime), @"startTime"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_duration), @"duration"}];
  }

LABEL_6:
  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [dictionary setObject:errorDomain forKey:@"errorDomain"];
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_errorCode), @"errorCode"}];
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_cancelled), @"cancelled"}];
  }

  if ([(NSMutableArray *)self->_chunkingErrors count])
  {
    v7 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_chunkingErrors, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    chunkingErrors = self->_chunkingErrors;
    v9 = [(NSMutableArray *)chunkingErrors countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(chunkingErrors);
          }

          [v7 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v10 = [(NSMutableArray *)chunkingErrors countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"chunkingError"];
  }

  v13 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 2) != 0)
  {
    chunkCount = self->_chunkCount;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  byteCount = self->_byteCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  startTime = self->_startTime;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    duration = self->_duration;
    PBDataWriterWriteInt64Field();
  }

LABEL_6:
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    cancelled = self->_cancelled;
    PBDataWriterWriteBOOLField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  chunkingErrors = self->_chunkingErrors;
  v10 = [(NSMutableArray *)chunkingErrors countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(chunkingErrors);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)chunkingErrors countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_chunkCount;
    *(to + 68) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(to + 1) = self->_byteCount;
  *(to + 68) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  *(to + 4) = self->_startTime;
  *(to + 68) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(to + 3) = self->_duration;
    *(to + 68) |= 4u;
  }

LABEL_6:
  if (self->_errorDomain)
  {
    [to setErrorDomain:?];
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(to + 12) = self->_errorCode;
    *(to + 68) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    *(to + 64) = self->_cancelled;
    *(to + 68) |= 0x20u;
  }

  if ([(AWDMMCSChunkingInfo *)self chunkingErrorsCount])
  {
    [to clearChunkingErrors];
    chunkingErrorsCount = [(AWDMMCSChunkingInfo *)self chunkingErrorsCount];
    if (chunkingErrorsCount)
    {
      v8 = chunkingErrorsCount;
      for (i = 0; i != v8; ++i)
      {
        [to addChunkingError:{-[AWDMMCSChunkingInfo chunkingErrorAtIndex:](self, "chunkingErrorAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_chunkCount;
    *(v5 + 68) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_byteCount;
  *(v5 + 68) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_20:
  *(v5 + 32) = self->_startTime;
  *(v5 + 68) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(v5 + 24) = self->_duration;
    *(v5 + 68) |= 4u;
  }

LABEL_6:

  *(v6 + 56) = [(NSString *)self->_errorDomain copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 0x10) != 0)
  {
    *(v6 + 48) = self->_errorCode;
    *(v6 + 68) |= 0x10u;
    v8 = self->_has;
  }

  if ((v8 & 0x20) != 0)
  {
    *(v6 + 64) = self->_cancelled;
    *(v6 + 68) |= 0x20u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  chunkingErrors = self->_chunkingErrors;
  v10 = [(NSMutableArray *)chunkingErrors countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(chunkingErrors);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) copyWithZone:zone];
        [v6 addChunkingError:v14];
      }

      v11 = [(NSMutableArray *)chunkingErrors countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 68);
  if ((has & 2) != 0)
  {
    if ((*(equal + 68) & 2) == 0 || self->_chunkCount != *(equal + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equal + 68) & 2) != 0)
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    if ((*(equal + 68) & 1) == 0 || self->_byteCount != *(equal + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(equal + 68))
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 68) & 8) == 0 || self->_startTime != *(equal + 4))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equal + 68) & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 68) & 4) == 0 || self->_duration != *(equal + 3))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equal + 68) & 4) != 0)
  {
    goto LABEL_35;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equal + 7))
  {
    v5 = [(NSString *)errorDomain isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v9 = *(equal + 68);
  if ((has & 0x10) != 0)
  {
    if ((*(equal + 68) & 0x10) == 0 || self->_errorCode != *(equal + 12))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equal + 68) & 0x10) != 0)
  {
    goto LABEL_35;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(equal + 68) & 0x20) != 0)
    {
      v11 = *(equal + 64);
      if (self->_cancelled)
      {
        if ((*(equal + 64) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (*(equal + 64))
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

LABEL_35:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 68) & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  chunkingErrors = self->_chunkingErrors;
  if (chunkingErrors | *(equal + 5))
  {

    LOBYTE(v5) = [(NSMutableArray *)chunkingErrors isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_chunkCount;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_byteCount;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_startTime;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_duration;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(NSString *)self->_errorDomain hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_errorCode;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v7 ^ [(NSMutableArray *)self->_chunkingErrors hash];
  }

  v8 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v9 = 2654435761 * self->_cancelled;
  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v7 ^ [(NSMutableArray *)self->_chunkingErrors hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(from + 68);
  if ((v5 & 2) != 0)
  {
    self->_chunkCount = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 68);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*(from + 68) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_byteCount = *(from + 1);
  *&self->_has |= 1u;
  v5 = *(from + 68);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  self->_startTime = *(from + 4);
  *&self->_has |= 8u;
  if ((*(from + 68) & 4) != 0)
  {
LABEL_5:
    self->_duration = *(from + 3);
    *&self->_has |= 4u;
  }

LABEL_6:
  if (*(from + 7))
  {
    [(AWDMMCSChunkingInfo *)self setErrorDomain:?];
  }

  v6 = *(from + 68);
  if ((v6 & 0x10) != 0)
  {
    self->_errorCode = *(from + 12);
    *&self->_has |= 0x10u;
    v6 = *(from + 68);
  }

  if ((v6 & 0x20) != 0)
  {
    self->_cancelled = *(from + 64);
    *&self->_has |= 0x20u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(from + 5);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDMMCSChunkingInfo *)self addChunkingError:*(*(&v13 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x29EDCA608];
}

@end