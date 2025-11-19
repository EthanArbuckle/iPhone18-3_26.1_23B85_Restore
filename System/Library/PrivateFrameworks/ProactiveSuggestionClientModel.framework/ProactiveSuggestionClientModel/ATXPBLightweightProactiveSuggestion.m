@interface ATXPBLightweightProactiveSuggestion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBLightweightProactiveSuggestion

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBLightweightProactiveSuggestion;
  v4 = [(ATXPBLightweightProactiveSuggestion *)&v8 description];
  v5 = [(ATXPBLightweightProactiveSuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  executableIdentifier = self->_executableIdentifier;
  if (executableIdentifier)
  {
    [v3 setObject:executableIdentifier forKey:@"executableIdentifier"];
  }

  executableType = self->_executableType;
  if (executableType)
  {
    [v4 setObject:executableType forKey:@"executableType"];
  }

  scoreSpecification = self->_scoreSpecification;
  if (scoreSpecification)
  {
    v8 = [(ATXPBProactiveSuggestionScoreSpecification *)scoreSpecification dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"scoreSpecification"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_predictionReasons];
    [v4 setObject:v9 forKey:@"predictionReasons"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_executableIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_executableType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_scoreSpecification)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    predictionReasons = self->_predictionReasons;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_executableIdentifier)
  {
    [v4 setExecutableIdentifier:?];
    v4 = v5;
  }

  if (self->_executableType)
  {
    [v5 setExecutableType:?];
    v4 = v5;
  }

  if (self->_scoreSpecification)
  {
    [v5 setScoreSpecification:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_predictionReasons;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_executableIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_executableType copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(ATXPBProactiveSuggestionScoreSpecification *)self->_scoreSpecification copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_predictionReasons;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  executableIdentifier = self->_executableIdentifier;
  if (executableIdentifier | *(v4 + 2))
  {
    if (![(NSString *)executableIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  executableType = self->_executableType;
  if (executableType | *(v4 + 3))
  {
    if (![(NSString *)executableType isEqual:?])
    {
      goto LABEL_12;
    }
  }

  scoreSpecification = self->_scoreSpecification;
  if (scoreSpecification | *(v4 + 4))
  {
    if (![(ATXPBProactiveSuggestionScoreSpecification *)scoreSpecification isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_predictionReasons == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[2];
  v8 = v4;
  if (v5)
  {
    [(ATXPBLightweightProactiveSuggestion *)self setExecutableIdentifier:v5, v4];
    v4 = v8;
  }

  if (v4[3])
  {
    [(ATXPBLightweightProactiveSuggestion *)self setExecutableType:?];
    v4 = v8;
  }

  scoreSpecification = self->_scoreSpecification;
  v7 = v4[4];
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

    [(ATXPBLightweightProactiveSuggestion *)self setScoreSpecification:v4[4]];
  }

  v4 = v8;
LABEL_11:
  if (v4[5])
  {
    self->_predictionReasons = v4[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66C30]();
}

@end