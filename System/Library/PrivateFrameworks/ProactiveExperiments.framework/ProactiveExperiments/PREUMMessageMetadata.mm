@interface PREUMMessageMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAgeGroup:(id)group;
- (int)ageGroup;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCharCount:(BOOL)count;
- (void)setHasHasQuestionMark:(BOOL)mark;
- (void)setHasIsApricotDevice:(BOOL)device;
- (void)writeTo:(id)to;
@end

@implementation PREUMMessageMetadata

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PREUMMessageMetadata *)self setHostProcess:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(PREUMMessageMetadata *)self setLocale:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(PREUMMessageMetadata *)self setLang:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 44);
  if ((v5 & 8) != 0)
  {
    self->_isApricotDevice = *(fromCopy + 41);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 44);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*(fromCopy + 44) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_charCount = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 44);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  self->_ageGroup = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 44) & 4) != 0)
  {
LABEL_11:
    self->_hasQuestionMark = *(fromCopy + 40);
    *&self->_has |= 4u;
  }

LABEL_12:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_hostProcess hash];
  v4 = [(NSString *)self->_locale hash];
  v5 = [(NSString *)self->_lang hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_isApricotDevice;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_charCount;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_ageGroup;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_hasQuestionMark;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  hostProcess = self->_hostProcess;
  if (hostProcess | *(equalCopy + 2))
  {
    if (![(NSString *)hostProcess isEqual:?])
    {
      goto LABEL_28;
    }
  }

  locale = self->_locale;
  if (locale | *(equalCopy + 4))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_28;
    }
  }

  lang = self->_lang;
  if (lang | *(equalCopy + 3))
  {
    if (![(NSString *)lang isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 44) & 8) == 0)
    {
      goto LABEL_28;
    }

    v8 = *(equalCopy + 41);
    if (self->_isApricotDevice)
    {
      if ((*(equalCopy + 41) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(equalCopy + 41))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 44) & 8) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_charCount != *(equalCopy + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_ageGroup != *(equalCopy + 2))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_28;
  }

  v9 = (*(equalCopy + 44) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) != 0)
    {
      if (self->_hasQuestionMark)
      {
        if ((*(equalCopy + 40) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else if (*(equalCopy + 40))
      {
        goto LABEL_28;
      }

      v9 = 1;
      goto LABEL_29;
    }

LABEL_28:
    v9 = 0;
  }

LABEL_29:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_hostProcess copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_locale copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_lang copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 41) = self->_isApricotDevice;
    *(v5 + 44) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 8) = self->_ageGroup;
      *(v5 + 44) |= 1u;
      if ((*&self->_has & 4) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_charCount;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 40) = self->_hasQuestionMark;
    *(v5 + 44) |= 4u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_hostProcess)
  {
    [toCopy setHostProcess:?];
    toCopy = v6;
  }

  if (self->_locale)
  {
    [v6 setLocale:?];
    toCopy = v6;
  }

  if (self->_lang)
  {
    [v6 setLang:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 41) = self->_isApricotDevice;
    *(toCopy + 44) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 3) = self->_charCount;
  *(toCopy + 44) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  *(toCopy + 2) = self->_ageGroup;
  *(toCopy + 44) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    *(toCopy + 40) = self->_hasQuestionMark;
    *(toCopy + 44) |= 4u;
  }

LABEL_12:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_hostProcess)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_lang)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    isApricotDevice = self->_isApricotDevice;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  charCount = self->_charCount;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  ageGroup = self->_ageGroup;
  PBDataWriterWriteInt32Field();
  toCopy = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    hasQuestionMark = self->_hasQuestionMark;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_12:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  hostProcess = self->_hostProcess;
  if (hostProcess)
  {
    [dictionary setObject:hostProcess forKey:@"host_process"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v4 setObject:locale forKey:@"locale"];
  }

  lang = self->_lang;
  if (lang)
  {
    [v4 setObject:lang forKey:@"lang"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isApricotDevice];
    [v4 setObject:v11 forKey:@"is_apricot_device"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_charCount];
  [v4 setObject:v12 forKey:@"char_count"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  ageGroup = self->_ageGroup;
  if (ageGroup >= 7)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ageGroup];
  }

  else
  {
    v14 = *(&off_279ABAD78 + ageGroup);
  }

  [v4 setObject:v14 forKey:@"age_group"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasQuestionMark];
  [v4 setObject:v9 forKey:@"has_question_mark"];

LABEL_12:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREUMMessageMetadata;
  v4 = [(PREUMMessageMetadata *)&v8 description];
  dictionaryRepresentation = [(PREUMMessageMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasHasQuestionMark:(BOOL)mark
{
  if (mark)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsAgeGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isEqualToString:@"GROUP_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([groupCopy isEqualToString:@"GROUP_0TO18"])
  {
    v4 = 1;
  }

  else if ([groupCopy isEqualToString:@"GROUP_19TO30"])
  {
    v4 = 2;
  }

  else if ([groupCopy isEqualToString:@"GROUP_31TO50"])
  {
    v4 = 3;
  }

  else if ([groupCopy isEqualToString:@"GROUP_51TO65"])
  {
    v4 = 4;
  }

  else if ([groupCopy isEqualToString:@"GROUP_66TO75"])
  {
    v4 = 5;
  }

  else if ([groupCopy isEqualToString:@"GROUP_76UP"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)ageGroup
{
  if (*&self->_has)
  {
    return self->_ageGroup;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCharCount:(BOOL)count
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

- (void)setHasIsApricotDevice:(BOOL)device
{
  if (device)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

@end