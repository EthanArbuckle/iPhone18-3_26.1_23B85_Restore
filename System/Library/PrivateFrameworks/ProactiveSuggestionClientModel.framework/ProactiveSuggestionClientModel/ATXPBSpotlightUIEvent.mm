@interface ATXPBSpotlightUIEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBSpotlightUIEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSpotlightUIEvent;
  v4 = [(ATXPBSpotlightUIEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBSpotlightUIEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  suggestionUniqueId = self->_suggestionUniqueId;
  if (suggestionUniqueId)
  {
    [dictionary setObject:suggestionUniqueId forKey:@"suggestionUniqueId"];
  }

  suggestionType = self->_suggestionType;
  if (suggestionType)
  {
    [v4 setObject:suggestionType forKey:@"suggestionType"];
  }

  suggestionSubtype = self->_suggestionSubtype;
  if (suggestionSubtype)
  {
    [v4 setObject:suggestionSubtype forKey:@"suggestionSubtype"];
  }

  suggestionContext = self->_suggestionContext;
  if (suggestionContext)
  {
    [v4 setObject:suggestionContext forKey:@"suggestionContext"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_eventType];
    [v4 setObject:v9 forKey:@"eventType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_suggestionUniqueId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_suggestionType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_suggestionSubtype)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_suggestionContext)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_suggestionUniqueId)
  {
    [toCopy setSuggestionUniqueId:?];
    toCopy = v5;
  }

  if (self->_suggestionType)
  {
    [v5 setSuggestionType:?];
    toCopy = v5;
  }

  if (self->_suggestionSubtype)
  {
    [v5 setSuggestionSubtype:?];
    toCopy = v5;
  }

  if (self->_suggestionContext)
  {
    [v5 setSuggestionContext:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_eventType;
    *(toCopy + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_suggestionUniqueId copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_suggestionType copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_suggestionSubtype copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_suggestionContext copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_eventType;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  suggestionUniqueId = self->_suggestionUniqueId;
  if (suggestionUniqueId | *(equalCopy + 5))
  {
    if (![(NSString *)suggestionUniqueId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  suggestionType = self->_suggestionType;
  if (suggestionType | *(equalCopy + 4))
  {
    if (![(NSString *)suggestionType isEqual:?])
    {
      goto LABEL_14;
    }
  }

  suggestionSubtype = self->_suggestionSubtype;
  if (suggestionSubtype | *(equalCopy + 3))
  {
    if (![(NSString *)suggestionSubtype isEqual:?])
    {
      goto LABEL_14;
    }
  }

  suggestionContext = self->_suggestionContext;
  if (suggestionContext | *(equalCopy + 2))
  {
    if (![(NSString *)suggestionContext isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(equalCopy + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) != 0 && self->_eventType == *(equalCopy + 1))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_suggestionUniqueId hash];
  v4 = [(NSString *)self->_suggestionType hash];
  v5 = [(NSString *)self->_suggestionSubtype hash];
  v6 = [(NSString *)self->_suggestionContext hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_eventType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    [(ATXPBSpotlightUIEvent *)self setSuggestionUniqueId:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(ATXPBSpotlightUIEvent *)self setSuggestionType:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(ATXPBSpotlightUIEvent *)self setSuggestionSubtype:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(ATXPBSpotlightUIEvent *)self setSuggestionContext:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_eventType = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end