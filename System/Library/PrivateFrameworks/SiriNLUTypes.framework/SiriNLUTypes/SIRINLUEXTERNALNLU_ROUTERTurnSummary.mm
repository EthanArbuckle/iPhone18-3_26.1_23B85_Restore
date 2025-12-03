@interface SIRINLUEXTERNALNLU_ROUTERTurnSummary
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsExecutionSource:(id)source;
- (int)executionSource;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERTurnSummary

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(SIRINLUEXTERNALNLU_ROUTERTurnSummary *)self setExecutedQuery:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(SIRINLUEXTERNALNLU_ROUTERTurnSummary *)self setResponseText:?];
    fromCopy = v7;
  }

  if (fromCopy[10])
  {
    self->_executionSource = fromCopy[4];
    *&self->_has |= 1u;
  }

  genAiMetadata = self->_genAiMetadata;
  v6 = *(fromCopy + 3);
  if (genAiMetadata)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)genAiMetadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALNLU_ROUTERTurnSummary *)self setGenAiMetadata:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_executedQuery hash];
  v4 = [(NSString *)self->_responseText hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_executionSource;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)self->_genAiMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  executedQuery = self->_executedQuery;
  if (executedQuery | *(equalCopy + 1))
  {
    if (![(NSString *)executedQuery isEqual:?])
    {
      goto LABEL_13;
    }
  }

  responseText = self->_responseText;
  if (responseText | *(equalCopy + 4))
  {
    if (![(NSString *)responseText isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_executionSource != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  genAiMetadata = self->_genAiMetadata;
  if (genAiMetadata | *(equalCopy + 3))
  {
    v9 = [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)genAiMetadata isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_executedQuery copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_responseText copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_executionSource;
    *(v5 + 40) |= 1u;
  }

  v10 = [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)self->_genAiMetadata copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_executedQuery)
  {
    [toCopy setExecutedQuery:?];
    toCopy = v5;
  }

  if (self->_responseText)
  {
    [v5 setResponseText:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_executionSource;
    *(toCopy + 40) |= 1u;
  }

  if (self->_genAiMetadata)
  {
    [v5 setGenAiMetadata:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_executedQuery)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_responseText)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    executionSource = self->_executionSource;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_genAiMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  executedQuery = self->_executedQuery;
  if (executedQuery)
  {
    [dictionary setObject:executedQuery forKey:@"executed_query"];
  }

  responseText = self->_responseText;
  if (responseText)
  {
    [v4 setObject:responseText forKey:@"response_text"];
  }

  if (*&self->_has)
  {
    executionSource = self->_executionSource;
    if (executionSource >= 5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_executionSource];
    }

    else
    {
      v8 = off_1E83283F8[executionSource];
    }

    [v4 setObject:v8 forKey:@"execution_source"];
  }

  genAiMetadata = self->_genAiMetadata;
  if (genAiMetadata)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)genAiMetadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"gen_ai_metadata"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERTurnSummary;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERTurnSummary *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERTurnSummary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsExecutionSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"EXECUTION_SOURCE_UNSET"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"EXECUTION_SOURCE_SIRI_X"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"EXECUTION_SOURCE_PLANNER"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"EXECUTION_SOURCE_PQA_SEARCH"])
  {
    v4 = 3;
  }

  else if ([sourceCopy isEqualToString:@"EXECUTION_SOURCE_GENAI"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)executionSource
{
  if (*&self->_has)
  {
    return self->_executionSource;
  }

  else
  {
    return 0;
  }
}

@end