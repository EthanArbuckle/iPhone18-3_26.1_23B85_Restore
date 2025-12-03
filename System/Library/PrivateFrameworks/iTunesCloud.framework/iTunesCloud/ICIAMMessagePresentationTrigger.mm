@interface ICIAMMessagePresentationTrigger
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)kindAsString:(int)string;
- (int)StringAsKind:(id)kind;
- (int)kind;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ICIAMMessagePresentationTrigger

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(ICIAMMessagePresentationTrigger *)self setTriggerName:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_kind = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(ICIAMMessagePresentationTrigger *)self setBundleIdentifier:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_triggerName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_kind;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_bundleIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  triggerName = self->_triggerName;
  if (triggerName | *(equalCopy + 3))
  {
    if (![(NSString *)triggerName isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_kind != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
  {
    v7 = [(NSString *)bundleIdentifier isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_triggerName copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_kind;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_triggerName)
  {
    [toCopy setTriggerName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_kind;
    *(toCopy + 32) |= 1u;
  }

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_triggerName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  triggerName = self->_triggerName;
  if (triggerName)
  {
    [dictionary setObject:triggerName forKey:@"triggerName"];
  }

  if (*&self->_has)
  {
    kind = self->_kind;
    if (kind)
    {
      if (kind == 1)
      {
        v7 = @"ContextProperty";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_kind];
      }
    }

    else
    {
      v7 = @"Event";
    }

    [v4 setObject:v7 forKey:@"kind"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMMessagePresentationTrigger;
  v4 = [(ICIAMMessagePresentationTrigger *)&v8 description];
  dictionaryRepresentation = [(ICIAMMessagePresentationTrigger *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsKind:(id)kind
{
  kindCopy = kind;
  if ([kindCopy isEqualToString:@"Event"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [kindCopy isEqualToString:@"ContextProperty"];
  }

  return v4;
}

- (id)kindAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"ContextProperty";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"Event";
  }

  return v4;
}

- (int)kind
{
  if (*&self->_has)
  {
    return self->_kind;
  }

  else
  {
    return 0;
  }
}

@end