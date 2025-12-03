@interface SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPrescribedTool:(id)tool;
- (int)StringAsQueryType:(id)type;
- (int)prescribedTool;
- (int)queryType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasQueryType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 28);
  if (v6)
  {
    self->_prescribedTool = fromCopy[2];
    *&self->_has |= 1u;
    v6 = *(fromCopy + 28);
  }

  if ((v6 & 2) != 0)
  {
    self->_queryType = fromCopy[6];
    *&self->_has |= 2u;
  }

  query = self->_query;
  v8 = *(v5 + 2);
  if (query)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)query mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)self setQuery:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_prescribedTool;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)self->_query hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_queryType;
  return v7 ^ v6 ^ [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)self->_query hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_prescribedTool != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_queryType != *(equalCopy + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  query = self->_query;
  if (query | *(equalCopy + 2))
  {
    v7 = [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)query isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_prescribedTool;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_queryType;
    *(v5 + 28) |= 2u;
  }

  v8 = [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)self->_query copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_prescribedTool;
    *(toCopy + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[6] = self->_queryType;
    *(toCopy + 28) |= 2u;
  }

  if (self->_query)
  {
    v6 = toCopy;
    [toCopy setQuery:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    prescribedTool = self->_prescribedTool;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    queryType = self->_queryType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_query)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    prescribedTool = self->_prescribedTool;
    if (prescribedTool >= 5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_prescribedTool];
    }

    else
    {
      v6 = off_1E8327E78[prescribedTool];
    }

    [dictionary setObject:v6 forKey:@"prescribed_tool"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    queryType = self->_queryType;
    if (queryType >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_queryType];
    }

    else
    {
      v8 = off_1E8327EA0[queryType];
    }

    [dictionary setObject:v8 forKey:@"query_type"];
  }

  query = self->_query;
  if (query)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERAjaxQuery *)query dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"query"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsQueryType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"QUERY_TYPE_UNSET"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"QUERY_TYPE_IMPLICIT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"QUERY_TYPE_EXPLICIT"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasQueryType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)queryType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_queryType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsPrescribedTool:(id)tool
{
  toolCopy = tool;
  if ([toolCopy isEqualToString:@"PRESCRIBED_TOOL_UNSET"])
  {
    v4 = 0;
  }

  else if ([toolCopy isEqualToString:@"PRESCRIBED_TOOL_GENERATE_RICH_CONTENT_TOOL"])
  {
    v4 = 1;
  }

  else if ([toolCopy isEqualToString:@"PRESCRIBED_TOOL_GENERATE_RICH_CONTENT_FROM_MEDIA_INTENT_TOOL"])
  {
    v4 = 2;
  }

  else if ([toolCopy isEqualToString:@"PRESCRIBED_TOOL_GENERATE_IMAGE_INTENT_TOOL"])
  {
    v4 = 3;
  }

  else if ([toolCopy isEqualToString:@"PRESCRIBED_TOOL_GENERATE_KNOWLEDGE_RESPONSE_INTENT_TOOL"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)prescribedTool
{
  if (*&self->_has)
  {
    return self->_prescribedTool;
  }

  else
  {
    return 0;
  }
}

@end