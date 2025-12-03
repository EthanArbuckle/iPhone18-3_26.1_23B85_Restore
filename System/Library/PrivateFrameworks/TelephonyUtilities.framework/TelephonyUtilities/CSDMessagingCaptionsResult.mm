@interface CSDMessagingCaptionsResult
- (BOOL)isEqual:(id)equal;
- (CSDMessagingCaptionsResult)initWithCaptionsResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)tuCaptionsResult;
- (unint64_t)hash;
- (void)addTokens:(id)tokens;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasUpdateNumber:(BOOL)number;
- (void)setHasUtteranceComplete:(BOOL)complete;
- (void)setHasUtteranceNumber:(BOOL)number;
- (void)setHasUtteranceStartTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingCaptionsResult

- (CSDMessagingCaptionsResult)initWithCaptionsResult:(id)result
{
  resultCopy = result;
  v5 = [(CSDMessagingCaptionsResult *)self init];
  if (v5)
  {
    text = [resultCopy text];
    [(CSDMessagingCaptionsResult *)v5 setText:text];

    -[CSDMessagingCaptionsResult setUtteranceComplete:](v5, "setUtteranceComplete:", [resultCopy utteranceComplete]);
    -[CSDMessagingCaptionsResult setUtteranceNumber:](v5, "setUtteranceNumber:", [resultCopy utteranceNumber]);
    -[CSDMessagingCaptionsResult setUpdateNumber:](v5, "setUpdateNumber:", [resultCopy updateNumber]);
    [resultCopy utteranceStartTimestamp];
    [(CSDMessagingCaptionsResult *)v5 setUtteranceStartTimestamp:?];
    [resultCopy utteranceDuration];
    [(CSDMessagingCaptionsResult *)v5 setUtteranceDuration:?];
    tokens = [resultCopy tokens];
    v8 = [tokens count];

    if (v8)
    {
      v9 = +[NSMutableArray array];
      [(CSDMessagingCaptionsResult *)v5 setTokens:v9];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    tokens2 = [resultCopy tokens];
    v11 = [tokens2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(tokens2);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = objc_alloc_init(CSDMessagingCaptionsToken);
          text2 = [v15 text];
          [(CSDMessagingCaptionsToken *)v16 setText:text2];

          [v15 confidence];
          [(CSDMessagingCaptionsToken *)v16 setConfidence:?];
          -[CSDMessagingCaptionsToken setLocation:](v16, "setLocation:", [v15 range]);
          [v15 range];
          [(CSDMessagingCaptionsToken *)v16 setLength:v18];
          tokens3 = [(CSDMessagingCaptionsResult *)v5 tokens];
          [tokens3 addObject:v16];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [tokens2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }

  return v5;
}

- (id)tuCaptionsResult
{
  v3 = [NSMutableArray alloc];
  tokens = [(CSDMessagingCaptionsResult *)self tokens];
  v5 = [v3 initWithCapacity:{objc_msgSend(tokens, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  tokens2 = [(CSDMessagingCaptionsResult *)self tokens];
  v7 = [tokens2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(tokens2);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [TUCaption alloc];
        text = [v11 text];
        [v11 confidence];
        v15 = [v12 initWithText:text confidence:objc_msgSend(v11 range:{"location"), objc_msgSend(v11, "length"), v14}];
        [v5 addObject:v15];
      }

      v8 = [tokens2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v16 = [TUCaptionsResult alloc];
  text2 = [(CSDMessagingCaptionsResult *)selfCopy text];
  utteranceComplete = [(CSDMessagingCaptionsResult *)selfCopy utteranceComplete];
  utteranceNumber = [(CSDMessagingCaptionsResult *)selfCopy utteranceNumber];
  updateNumber = [(CSDMessagingCaptionsResult *)selfCopy updateNumber];
  [(CSDMessagingCaptionsResult *)selfCopy utteranceStartTimestamp];
  v22 = v21;
  [(CSDMessagingCaptionsResult *)selfCopy utteranceDuration];
  v24 = [v16 initWithText:text2 utteranceComplete:utteranceComplete tokens:v5 utteranceNumber:utteranceNumber updateNumber:updateNumber utteranceStartTimestamp:v22 utteranceDuration:v23];

  return v24;
}

- (void)setHasUtteranceComplete:(BOOL)complete
{
  if (complete)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addTokens:(id)tokens
{
  tokensCopy = tokens;
  tokens = self->_tokens;
  v8 = tokensCopy;
  if (!tokens)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tokens;
    self->_tokens = v6;

    tokensCopy = v8;
    tokens = self->_tokens;
  }

  [(NSMutableArray *)tokens addObject:tokensCopy];
}

- (void)setHasUtteranceNumber:(BOOL)number
{
  if (number)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUpdateNumber:(BOOL)number
{
  if (number)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUtteranceStartTimestamp:(BOOL)timestamp
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingCaptionsResult;
  v3 = [(CSDMessagingCaptionsResult *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingCaptionsResult *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [NSNumber numberWithBool:self->_utteranceComplete];
    [v3 setObject:v4 forKey:@"utteranceComplete"];
  }

  if ([(NSMutableArray *)self->_tokens count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_tokens, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_tokens;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"tokens"];
  }

  if (self->_text)
  {
    [v3 setObject:@"REDACTED" forKey:@"text"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v15 = [NSNumber numberWithUnsignedInt:self->_utteranceNumber];
    [v3 setObject:v15 forKey:@"utteranceNumber"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_16:
      if ((has & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

  v16 = [NSNumber numberWithUnsignedInt:self->_updateNumber, v18];
  [v3 setObject:v16 forKey:@"updateNumber"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_17:
    if ((has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_24:
  v17 = [NSNumber numberWithDouble:self->_utteranceStartTimestamp, v18];
  [v3 setObject:v17 forKey:@"utteranceStartTimestamp"];

  if (*&self->_has)
  {
LABEL_18:
    v13 = [NSNumber numberWithDouble:self->_utteranceDuration, v18];
    [v3 setObject:v13 forKey:@"utteranceDuration"];
  }

LABEL_19:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    utteranceComplete = self->_utteranceComplete;
    PBDataWriterWriteBOOLField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_tokens;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if (self->_text)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    utteranceNumber = self->_utteranceNumber;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_14:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      utteranceStartTimestamp = self->_utteranceStartTimestamp;
      PBDataWriterWriteDoubleField();
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

  updateNumber = self->_updateNumber;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (has)
  {
LABEL_16:
    utteranceDuration = self->_utteranceDuration;
    PBDataWriterWriteDoubleField();
  }

LABEL_17:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[48] = self->_utteranceComplete;
    toCopy[52] |= 0x10u;
  }

  v10 = toCopy;
  if ([(CSDMessagingCaptionsResult *)self tokensCount])
  {
    [v10 clearTokens];
    tokensCount = [(CSDMessagingCaptionsResult *)self tokensCount];
    if (tokensCount)
    {
      v6 = tokensCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(CSDMessagingCaptionsResult *)self tokensAtIndex:i];
        [v10 addTokens:v8];
      }
    }
  }

  if (self->_text)
  {
    [v10 setText:?];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v10 + 11) = self->_utteranceNumber;
    *(v10 + 52) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

  *(v10 + 10) = self->_updateNumber;
  *(v10 + 52) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  *(v10 + 2) = *&self->_utteranceStartTimestamp;
  *(v10 + 52) |= 2u;
  if (*&self->_has)
  {
LABEL_13:
    *(v10 + 1) = *&self->_utteranceDuration;
    *(v10 + 52) |= 1u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    v5[48] = self->_utteranceComplete;
    v5[52] |= 0x10u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_tokens;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{zone, v17}];
        [v6 addTokens:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(NSString *)self->_text copyWithZone:zone];
  v14 = *(v6 + 3);
  *(v6 + 3) = v13;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 11) = self->_utteranceNumber;
    *(v6 + 52) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_12:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      *(v6 + 2) = *&self->_utteranceStartTimestamp;
      *(v6 + 52) |= 2u;
      if ((*&self->_has & 1) == 0)
      {
        return v6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 10) = self->_updateNumber;
  *(v6 + 52) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (has)
  {
LABEL_14:
    *(v6 + 1) = *&self->_utteranceDuration;
    *(v6 + 52) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = *(equalCopy + 52);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 52) & 0x10) == 0)
    {
      goto LABEL_12;
    }

    v10 = *(equalCopy + 48);
    if (self->_utteranceComplete)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 48))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 52) & 0x10) != 0)
  {
    goto LABEL_12;
  }

  tokens = self->_tokens;
  if (tokens | *(equalCopy + 4) && ![(NSMutableArray *)tokens isEqual:?])
  {
    goto LABEL_12;
  }

  text = self->_text;
  if (text | *(equalCopy + 3))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0 || self->_utteranceNumber != *(equalCopy + 11))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_updateNumber != *(equalCopy + 10))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_utteranceStartTimestamp != *(equalCopy + 2))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_12;
  }

  v8 = (*(equalCopy + 52) & 1) == 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((*(equalCopy + 52) & 1) != 0 && self->_utteranceDuration == *(equalCopy + 1))
  {
    v8 = 1;
    goto LABEL_13;
  }

LABEL_12:
  v8 = 0;
LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_utteranceComplete;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_tokens hash];
  v5 = [(NSString *)self->_text hash];
  if ((*&self->_has & 8) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v8 = 2654435761 * self->_utteranceNumber;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = 2654435761 * self->_updateNumber;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  utteranceStartTimestamp = self->_utteranceStartTimestamp;
  if (utteranceStartTimestamp < 0.0)
  {
    utteranceStartTimestamp = -utteranceStartTimestamp;
  }

  *v6.i64 = floor(utteranceStartTimestamp + 0.5);
  v11 = (utteranceStartTimestamp - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v12), v7, v6);
  v13 = 2654435761u * *v6.i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_14:
  if (*&self->_has)
  {
    utteranceDuration = self->_utteranceDuration;
    if (utteranceDuration < 0.0)
    {
      utteranceDuration = -utteranceDuration;
    }

    *v6.i64 = floor(utteranceDuration + 0.5);
    v16 = (utteranceDuration - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v7, v6).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v9 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((*(fromCopy + 52) & 0x10) != 0)
  {
    self->_utteranceComplete = *(fromCopy + 48);
    *&self->_has |= 0x10u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 4);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CSDMessagingCaptionsResult *)self addTokens:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (*(v5 + 3))
  {
    [(CSDMessagingCaptionsResult *)self setText:?];
  }

  v11 = *(v5 + 52);
  if ((v11 & 8) != 0)
  {
    self->_utteranceNumber = *(v5 + 11);
    *&self->_has |= 8u;
    v11 = *(v5 + 52);
    if ((v11 & 4) == 0)
    {
LABEL_14:
      if ((v11 & 2) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      self->_utteranceStartTimestamp = *(v5 + 2);
      *&self->_has |= 2u;
      if ((*(v5 + 52) & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(v5 + 52) & 4) == 0)
  {
    goto LABEL_14;
  }

  self->_updateNumber = *(v5 + 10);
  *&self->_has |= 4u;
  v11 = *(v5 + 52);
  if ((v11 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v11)
  {
LABEL_16:
    self->_utteranceDuration = *(v5 + 1);
    *&self->_has |= 1u;
  }

LABEL_17:
}

@end