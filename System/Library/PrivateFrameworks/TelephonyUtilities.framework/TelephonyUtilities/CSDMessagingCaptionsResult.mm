@interface CSDMessagingCaptionsResult
- (BOOL)isEqual:(id)a3;
- (CSDMessagingCaptionsResult)initWithCaptionsResult:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)tuCaptionsResult;
- (unint64_t)hash;
- (void)addTokens:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasUpdateNumber:(BOOL)a3;
- (void)setHasUtteranceComplete:(BOOL)a3;
- (void)setHasUtteranceNumber:(BOOL)a3;
- (void)setHasUtteranceStartTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingCaptionsResult

- (CSDMessagingCaptionsResult)initWithCaptionsResult:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingCaptionsResult *)self init];
  if (v5)
  {
    v6 = [v4 text];
    [(CSDMessagingCaptionsResult *)v5 setText:v6];

    -[CSDMessagingCaptionsResult setUtteranceComplete:](v5, "setUtteranceComplete:", [v4 utteranceComplete]);
    -[CSDMessagingCaptionsResult setUtteranceNumber:](v5, "setUtteranceNumber:", [v4 utteranceNumber]);
    -[CSDMessagingCaptionsResult setUpdateNumber:](v5, "setUpdateNumber:", [v4 updateNumber]);
    [v4 utteranceStartTimestamp];
    [(CSDMessagingCaptionsResult *)v5 setUtteranceStartTimestamp:?];
    [v4 utteranceDuration];
    [(CSDMessagingCaptionsResult *)v5 setUtteranceDuration:?];
    v7 = [v4 tokens];
    v8 = [v7 count];

    if (v8)
    {
      v9 = +[NSMutableArray array];
      [(CSDMessagingCaptionsResult *)v5 setTokens:v9];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v4 tokens];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = objc_alloc_init(CSDMessagingCaptionsToken);
          v17 = [v15 text];
          [(CSDMessagingCaptionsToken *)v16 setText:v17];

          [v15 confidence];
          [(CSDMessagingCaptionsToken *)v16 setConfidence:?];
          -[CSDMessagingCaptionsToken setLocation:](v16, "setLocation:", [v15 range]);
          [v15 range];
          [(CSDMessagingCaptionsToken *)v16 setLength:v18];
          v19 = [(CSDMessagingCaptionsResult *)v5 tokens];
          [v19 addObject:v16];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }

  return v5;
}

- (id)tuCaptionsResult
{
  v3 = [NSMutableArray alloc];
  v4 = [(CSDMessagingCaptionsResult *)self tokens];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = self;
  v6 = [(CSDMessagingCaptionsResult *)self tokens];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [TUCaption alloc];
        v13 = [v11 text];
        [v11 confidence];
        v15 = [v12 initWithText:v13 confidence:objc_msgSend(v11 range:{"location"), objc_msgSend(v11, "length"), v14}];
        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v16 = [TUCaptionsResult alloc];
  v17 = [(CSDMessagingCaptionsResult *)v26 text];
  v18 = [(CSDMessagingCaptionsResult *)v26 utteranceComplete];
  v19 = [(CSDMessagingCaptionsResult *)v26 utteranceNumber];
  v20 = [(CSDMessagingCaptionsResult *)v26 updateNumber];
  [(CSDMessagingCaptionsResult *)v26 utteranceStartTimestamp];
  v22 = v21;
  [(CSDMessagingCaptionsResult *)v26 utteranceDuration];
  v24 = [v16 initWithText:v17 utteranceComplete:v18 tokens:v5 utteranceNumber:v19 updateNumber:v20 utteranceStartTimestamp:v22 utteranceDuration:v23];

  return v24;
}

- (void)setHasUtteranceComplete:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addTokens:(id)a3
{
  v4 = a3;
  tokens = self->_tokens;
  v8 = v4;
  if (!tokens)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tokens;
    self->_tokens = v6;

    v4 = v8;
    tokens = self->_tokens;
  }

  [(NSMutableArray *)tokens addObject:v4];
}

- (void)setHasUtteranceNumber:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUpdateNumber:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUtteranceStartTimestamp:(BOOL)a3
{
  if (a3)
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
  v4 = [(CSDMessagingCaptionsResult *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

          v11 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x10) != 0)
  {
    v4[48] = self->_utteranceComplete;
    v4[52] |= 0x10u;
  }

  v10 = v4;
  if ([(CSDMessagingCaptionsResult *)self tokensCount])
  {
    [v10 clearTokens];
    v5 = [(CSDMessagingCaptionsResult *)self tokensCount];
    if (v5)
    {
      v6 = v5;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v12 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{a3, v17}];
        [v6 addTokens:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(NSString *)self->_text copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 52);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 52) & 0x10) == 0)
    {
      goto LABEL_12;
    }

    v10 = *(v4 + 48);
    if (self->_utteranceComplete)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 52) & 0x10) != 0)
  {
    goto LABEL_12;
  }

  tokens = self->_tokens;
  if (tokens | *(v4 + 4) && ![(NSMutableArray *)tokens isEqual:?])
  {
    goto LABEL_12;
  }

  text = self->_text;
  if (text | *(v4 + 3))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0 || self->_utteranceNumber != *(v4 + 11))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 52) & 8) != 0)
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_updateNumber != *(v4 + 10))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_utteranceStartTimestamp != *(v4 + 2))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_12;
  }

  v8 = (*(v4 + 52) & 1) == 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((*(v4 + 52) & 1) != 0 && self->_utteranceDuration == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*(v4 + 52) & 0x10) != 0)
  {
    self->_utteranceComplete = *(v4 + 48);
    *&self->_has |= 0x10u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 4);
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