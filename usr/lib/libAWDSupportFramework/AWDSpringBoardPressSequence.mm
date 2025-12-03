@interface AWDSpringBoardPressSequence
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSequence:(id)sequence;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDidTriggerSOS:(BOOL)s;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDSpringBoardPressSequence

- (void)dealloc
{
  [(AWDSpringBoardPressSequence *)self setSequences:0];
  [(AWDSpringBoardPressSequence *)self setType:0];
  [(AWDSpringBoardPressSequence *)self setUUID:0];
  v3.receiver = self;
  v3.super_class = AWDSpringBoardPressSequence;
  [(AWDSpringBoardPressSequence *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSequence:(id)sequence
{
  sequences = self->_sequences;
  if (!sequences)
  {
    sequences = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_sequences = sequences;
  }

  [(NSMutableArray *)sequences addObject:sequence];
}

- (void)setHasDidTriggerSOS:(BOOL)s
{
  if (s)
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
  v3.receiver = self;
  v3.super_class = AWDSpringBoardPressSequence;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSpringBoardPressSequence description](&v3, sel_description), -[AWDSpringBoardPressSequence dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_sequences count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_sequences, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    sequences = self->_sequences;
    v6 = [(NSMutableArray *)sequences countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(sequences);
          }

          [v4 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)sequences countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"sequence"];
  }

  type = self->_type;
  if (type)
  {
    [dictionary setObject:type forKey:@"type"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_didTriggerSOS), @"didTriggerSOS"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_clickMax), @"clickMax"}];
  }

  uUID = self->_uUID;
  if (uUID)
  {
    [dictionary setObject:uUID forKey:@"UUID"];
  }

  v13 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x29EDCA608];
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sequences = self->_sequences;
  v6 = [(NSMutableArray *)sequences countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(sequences);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)sequences countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    didTriggerSOS = self->_didTriggerSOS;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    clickMax = self->_clickMax;
    PBDataWriterWriteUint64Field();
  }

  if (self->_uUID)
  {
    PBDataWriterWriteStringField();
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 52) |= 2u;
  }

  if ([(AWDSpringBoardPressSequence *)self sequencesCount])
  {
    [to clearSequences];
    sequencesCount = [(AWDSpringBoardPressSequence *)self sequencesCount];
    if (sequencesCount)
    {
      v6 = sequencesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addSequence:{-[AWDSpringBoardPressSequence sequenceAtIndex:](self, "sequenceAtIndex:", i)}];
      }
    }
  }

  if (self->_type)
  {
    [to setType:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 48) = self->_didTriggerSOS;
    *(to + 52) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_clickMax;
    *(to + 52) |= 1u;
  }

  if (self->_uUID)
  {

    [to setUUID:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 52) |= 2u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  sequences = self->_sequences;
  v8 = [(NSMutableArray *)sequences countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(sequences);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addSequence:v12];
      }

      v9 = [(NSMutableArray *)sequences countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  *(v6 + 32) = [(NSString *)self->_type copyWithZone:zone];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 48) = self->_didTriggerSOS;
    *(v6 + 52) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_clickMax;
    *(v6 + 52) |= 1u;
  }

  *(v6 + 40) = [(NSString *)self->_uUID copyWithZone:zone];
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 52);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 52) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_25;
      }
    }

    else if ((*(equal + 52) & 2) != 0)
    {
      goto LABEL_25;
    }

    sequences = self->_sequences;
    if (!(sequences | *(equal + 3)) || (v5 = [(NSMutableArray *)sequences isEqual:?]) != 0)
    {
      type = self->_type;
      if (!(type | *(equal + 4)) || (v5 = [(NSString *)type isEqual:?]) != 0)
      {
        v9 = *(equal + 52);
        if ((*&self->_has & 4) != 0)
        {
          if ((*(equal + 52) & 4) != 0)
          {
            v10 = *(equal + 48);
            if (self->_didTriggerSOS)
            {
              if ((*(equal + 48) & 1) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_13;
            }

            if ((*(equal + 48) & 1) == 0)
            {
LABEL_13:
              if (*&self->_has)
              {
                if ((*(equal + 52) & 1) == 0 || self->_clickMax != *(equal + 1))
                {
                  goto LABEL_25;
                }
              }

              else if (*(equal + 52))
              {
                goto LABEL_25;
              }

              uUID = self->_uUID;
              if (uUID | *(equal + 5))
              {

                LOBYTE(v5) = [(NSString *)uUID isEqual:?];
              }

              else
              {
                LOBYTE(v5) = 1;
              }

              return v5;
            }
          }
        }

        else if ((*(equal + 52) & 4) == 0)
        {
          goto LABEL_13;
        }

LABEL_25:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_sequences hash];
  v5 = [(NSString *)self->_type hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_didTriggerSOS;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_uUID hash];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 2654435761u * self->_clickMax;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_uUID hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x29EDCA608];
  if ((*(from + 52) & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(from + 3);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDSpringBoardPressSequence *)self addSequence:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (*(from + 4))
  {
    [(AWDSpringBoardPressSequence *)self setType:?];
  }

  v10 = *(from + 52);
  if ((v10 & 4) != 0)
  {
    self->_didTriggerSOS = *(from + 48);
    *&self->_has |= 4u;
    v10 = *(from + 52);
  }

  if (v10)
  {
    self->_clickMax = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 5))
  {
    [(AWDSpringBoardPressSequence *)self setUUID:?];
  }

  v11 = *MEMORY[0x29EDCA608];
}

@end