@interface SIRINLUEXTERNALNLU_ROUTERMatchProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMaxTokenCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERMatchProperties

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 32);
  if ((v6 & 2) != 0)
  {
    self->_maxTokenCount = fromCopy[2];
    *&self->_has |= 2u;
    v6 = *(fromCopy + 32);
  }

  if (v6)
  {
    self->_matchedTokenCount = fromCopy[1];
    *&self->_has |= 1u;
  }

  matchedAliasTypes = self->_matchedAliasTypes;
  v8 = v5[3];
  if (matchedAliasTypes)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)matchedAliasTypes mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALNLU_ROUTERMatchProperties *)self setMatchedAliasTypes:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_maxTokenCount;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)self->_matchedAliasTypes hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_matchedTokenCount;
  return v7 ^ v6 ^ [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)self->_matchedAliasTypes hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_maxTokenCount != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_matchedTokenCount != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_14;
  }

  matchedAliasTypes = self->_matchedAliasTypes;
  if (matchedAliasTypes | *(equalCopy + 3))
  {
    v7 = [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)matchedAliasTypes isEqual:?];
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
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_maxTokenCount;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_matchedTokenCount;
    *(v5 + 32) |= 1u;
  }

  v8 = [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)self->_matchedAliasTypes copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_maxTokenCount;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[1] = self->_matchedTokenCount;
    *(toCopy + 32) |= 1u;
  }

  if (self->_matchedAliasTypes)
  {
    v6 = toCopy;
    [toCopy setMatchedAliasTypes:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    maxTokenCount = self->_maxTokenCount;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    matchedTokenCount = self->_matchedTokenCount;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }

  if (self->_matchedAliasTypes)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_maxTokenCount];
    [dictionary setObject:v5 forKey:@"maxTokenCount"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_matchedTokenCount];
    [dictionary setObject:v6 forKey:@"matchedTokenCount"];
  }

  matchedAliasTypes = self->_matchedAliasTypes;
  if (matchedAliasTypes)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)matchedAliasTypes dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"matchedAliasTypes"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERMatchProperties;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERMatchProperties *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERMatchProperties *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasMaxTokenCount:(BOOL)count
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

@end