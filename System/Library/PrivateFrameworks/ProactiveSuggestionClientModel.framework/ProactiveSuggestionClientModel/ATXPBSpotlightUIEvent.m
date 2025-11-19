@interface ATXPBSpotlightUIEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBSpotlightUIEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSpotlightUIEvent;
  v4 = [(ATXPBSpotlightUIEvent *)&v8 description];
  v5 = [(ATXPBSpotlightUIEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  suggestionUniqueId = self->_suggestionUniqueId;
  if (suggestionUniqueId)
  {
    [v3 setObject:suggestionUniqueId forKey:@"suggestionUniqueId"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_suggestionUniqueId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_suggestionType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_suggestionSubtype)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_suggestionContext)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_suggestionUniqueId)
  {
    [v4 setSuggestionUniqueId:?];
    v4 = v5;
  }

  if (self->_suggestionType)
  {
    [v5 setSuggestionType:?];
    v4 = v5;
  }

  if (self->_suggestionSubtype)
  {
    [v5 setSuggestionSubtype:?];
    v4 = v5;
  }

  if (self->_suggestionContext)
  {
    [v5 setSuggestionContext:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_eventType;
    *(v4 + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_suggestionUniqueId copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_suggestionType copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_suggestionSubtype copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_suggestionContext copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_eventType;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  suggestionUniqueId = self->_suggestionUniqueId;
  if (suggestionUniqueId | *(v4 + 5))
  {
    if (![(NSString *)suggestionUniqueId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  suggestionType = self->_suggestionType;
  if (suggestionType | *(v4 + 4))
  {
    if (![(NSString *)suggestionType isEqual:?])
    {
      goto LABEL_14;
    }
  }

  suggestionSubtype = self->_suggestionSubtype;
  if (suggestionSubtype | *(v4 + 3))
  {
    if (![(NSString *)suggestionSubtype isEqual:?])
    {
      goto LABEL_14;
    }
  }

  suggestionContext = self->_suggestionContext;
  if (suggestionContext | *(v4 + 2))
  {
    if (![(NSString *)suggestionContext isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(v4 + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) != 0 && self->_eventType == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    [(ATXPBSpotlightUIEvent *)self setSuggestionUniqueId:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(ATXPBSpotlightUIEvent *)self setSuggestionType:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(ATXPBSpotlightUIEvent *)self setSuggestionSubtype:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(ATXPBSpotlightUIEvent *)self setSuggestionContext:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_eventType = v4[1];
    *&self->_has |= 1u;
  }
}

@end