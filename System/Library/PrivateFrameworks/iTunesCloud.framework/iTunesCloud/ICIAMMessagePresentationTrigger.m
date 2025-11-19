@interface ICIAMMessagePresentationTrigger
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)kindAsString:(int)a3;
- (int)StringAsKind:(id)a3;
- (int)kind;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMMessagePresentationTrigger

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(ICIAMMessagePresentationTrigger *)self setTriggerName:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_kind = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(ICIAMMessagePresentationTrigger *)self setBundleIdentifier:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  triggerName = self->_triggerName;
  if (triggerName | *(v4 + 3))
  {
    if (![(NSString *)triggerName isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_kind != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_triggerName copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_kind;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_triggerName)
  {
    [v4 setTriggerName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_kind;
    *(v4 + 32) |= 1u;
  }

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_triggerName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  triggerName = self->_triggerName;
  if (triggerName)
  {
    [v3 setObject:triggerName forKey:@"triggerName"];
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
  v5 = [(ICIAMMessagePresentationTrigger *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsKind:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Event"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ContextProperty"];
  }

  return v4;
}

- (id)kindAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"ContextProperty";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
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