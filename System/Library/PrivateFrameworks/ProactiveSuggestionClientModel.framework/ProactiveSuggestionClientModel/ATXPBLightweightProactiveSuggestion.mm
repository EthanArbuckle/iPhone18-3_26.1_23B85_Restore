@interface ATXPBLightweightProactiveSuggestion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBLightweightProactiveSuggestion

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBLightweightProactiveSuggestion;
  v4 = [(ATXPBLightweightProactiveSuggestion *)&v8 description];
  dictionaryRepresentation = [(ATXPBLightweightProactiveSuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  executableIdentifier = self->_executableIdentifier;
  if (executableIdentifier)
  {
    [dictionary setObject:executableIdentifier forKey:@"executableIdentifier"];
  }

  executableType = self->_executableType;
  if (executableType)
  {
    [v4 setObject:executableType forKey:@"executableType"];
  }

  scoreSpecification = self->_scoreSpecification;
  if (scoreSpecification)
  {
    dictionaryRepresentation = [(ATXPBProactiveSuggestionScoreSpecification *)scoreSpecification dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"scoreSpecification"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_predictionReasons];
    [v4 setObject:v9 forKey:@"predictionReasons"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_executableIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_executableType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_scoreSpecification)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    predictionReasons = self->_predictionReasons;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_executableIdentifier)
  {
    [toCopy setExecutableIdentifier:?];
    toCopy = v5;
  }

  if (self->_executableType)
  {
    [v5 setExecutableType:?];
    toCopy = v5;
  }

  if (self->_scoreSpecification)
  {
    [v5 setScoreSpecification:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_predictionReasons;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_executableIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_executableType copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(ATXPBProactiveSuggestionScoreSpecification *)self->_scoreSpecification copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_predictionReasons;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  executableIdentifier = self->_executableIdentifier;
  if (executableIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)executableIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  executableType = self->_executableType;
  if (executableType | *(equalCopy + 3))
  {
    if (![(NSString *)executableType isEqual:?])
    {
      goto LABEL_12;
    }
  }

  scoreSpecification = self->_scoreSpecification;
  if (scoreSpecification | *(equalCopy + 4))
  {
    if (![(ATXPBProactiveSuggestionScoreSpecification *)scoreSpecification isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_predictionReasons == *(equalCopy + 1))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_executableIdentifier hash];
  v4 = [(NSString *)self->_executableType hash];
  v5 = [(ATXPBProactiveSuggestionScoreSpecification *)self->_scoreSpecification hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_predictionReasons;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[2];
  v8 = fromCopy;
  if (v5)
  {
    [(ATXPBLightweightProactiveSuggestion *)self setExecutableIdentifier:v5, fromCopy];
    fromCopy = v8;
  }

  if (fromCopy[3])
  {
    [(ATXPBLightweightProactiveSuggestion *)self setExecutableType:?];
    fromCopy = v8;
  }

  scoreSpecification = self->_scoreSpecification;
  v7 = fromCopy[4];
  if (scoreSpecification)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(ATXPBProactiveSuggestionScoreSpecification *)scoreSpecification mergeFrom:v7];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(ATXPBLightweightProactiveSuggestion *)self setScoreSpecification:fromCopy[4]];
  }

  fromCopy = v8;
LABEL_11:
  if (fromCopy[5])
  {
    self->_predictionReasons = fromCopy[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66C30]();
}

@end