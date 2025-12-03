@interface WFPBCreateFolderEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasShortcutCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation WFPBCreateFolderEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(WFPBCreateFolderEvent *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_icon = fromCopy[4];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_shortcutCount = fromCopy[8];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBCreateFolderEvent *)self setFolderSource:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_icon;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSString *)self->_folderSource hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_shortcutCount;
  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_folderSource hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  key = self->_key;
  if (key | *(equalCopy + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_icon != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_shortcutCount != *(equalCopy + 8))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_16;
  }

  folderSource = self->_folderSource;
  if (folderSource | *(equalCopy + 1))
  {
    v8 = [(NSString *)folderSource isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_icon;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_shortcutCount;
    *(v5 + 36) |= 2u;
  }

  v9 = [(NSString *)self->_folderSource copyWithZone:zone];
  v10 = *(v5 + 8);
  *(v5 + 8) = v9;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = self->_icon;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_shortcutCount;
    *(toCopy + 36) |= 2u;
  }

  if (self->_folderSource)
  {
    [v6 setFolderSource:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    icon = self->_icon;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    shortcutCount = self->_shortcutCount;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_folderSource)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_icon];
    [v4 setObject:v7 forKey:@"icon"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_shortcutCount];
    [v4 setObject:v8 forKey:@"shortcutCount"];
  }

  folderSource = self->_folderSource;
  if (folderSource)
  {
    [v4 setObject:folderSource forKey:@"folderSource"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBCreateFolderEvent;
  v4 = [(WFPBCreateFolderEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBCreateFolderEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasShortcutCount:(BOOL)count
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

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"CreateFolderEvent";
  }
}

@end