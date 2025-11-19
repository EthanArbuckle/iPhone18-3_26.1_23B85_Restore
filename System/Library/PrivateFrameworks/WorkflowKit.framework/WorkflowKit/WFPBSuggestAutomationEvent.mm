@interface WFPBSuggestAutomationEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInteracted:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBSuggestAutomationEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 1))
  {
    [(WFPBSuggestAutomationEvent *)self setKey:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(WFPBSuggestAutomationEvent *)self setSuggestedAutomationIdentifier:?];
    v4 = v6;
  }

  v5 = v4[36];
  if ((v5 & 2) != 0)
  {
    self->_interacted = v4[33];
    *&self->_has |= 2u;
    v5 = v4[36];
  }

  if (v5)
  {
    self->_completed = v4[32];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(WFPBSuggestAutomationEvent *)self setSource:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_suggestedAutomationIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_interacted;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_source hash];
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_completed;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_source hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  key = self->_key;
  if (key | *(v4 + 1))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_21;
    }
  }

  suggestedAutomationIdentifier = self->_suggestedAutomationIdentifier;
  if (suggestedAutomationIdentifier | *(v4 + 3))
  {
    if (![(NSString *)suggestedAutomationIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v7 = *(v4 + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(v4 + 33);
    if (self->_interacted)
    {
      if ((*(v4 + 33) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(v4 + 33))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*(v4 + 36) & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = *(v4 + 32);
  if (!self->_completed)
  {
LABEL_9:
    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  if ((*(v4 + 32) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  source = self->_source;
  if (source | *(v4 + 2))
  {
    v9 = [(NSString *)source isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_suggestedAutomationIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 33) = self->_interacted;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 32) = self->_completed;
    *(v5 + 36) |= 1u;
  }

  v11 = [(NSString *)self->_source copyWithZone:a3];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v6;
  }

  if (self->_suggestedAutomationIdentifier)
  {
    [v6 setSuggestedAutomationIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[33] = self->_interacted;
    v4[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[32] = self->_completed;
    v4[36] |= 1u;
  }

  if (self->_source)
  {
    [v6 setSource:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_suggestedAutomationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    interacted = self->_interacted;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  suggestedAutomationIdentifier = self->_suggestedAutomationIdentifier;
  if (suggestedAutomationIdentifier)
  {
    [v4 setObject:suggestedAutomationIdentifier forKey:@"suggestedAutomationIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_interacted];
    [v4 setObject:v8 forKey:@"interacted"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
    [v4 setObject:v9 forKey:@"completed"];
  }

  source = self->_source;
  if (source)
  {
    [v4 setObject:source forKey:@"source"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBSuggestAutomationEvent;
  v4 = [(WFPBSuggestAutomationEvent *)&v8 description];
  v5 = [(WFPBSuggestAutomationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasInteracted:(BOOL)a3
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

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"SuggestAutomation";
  }
}

@end