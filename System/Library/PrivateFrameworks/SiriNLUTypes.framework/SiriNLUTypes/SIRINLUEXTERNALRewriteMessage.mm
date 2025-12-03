@interface SIRINLUEXTERNALRewriteMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRewriteType:(id)type;
- (int)rewriteType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALRewriteMessage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_rewriteType = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(SIRINLUEXTERNALRewriteMessage *)self setRewrittenUtterance:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_rewriteType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_rewrittenUtterance hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_rewriteType != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  if (rewrittenUtterance | *(equalCopy + 2))
  {
    v7 = [(NSString *)rewrittenUtterance isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_rewriteType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_rewrittenUtterance copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_rewriteType;
    *(toCopy + 24) |= 1u;
  }

  if (self->_rewrittenUtterance)
  {
    v5 = toCopy;
    [toCopy setRewrittenUtterance:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    rewriteType = self->_rewriteType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_rewrittenUtterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    rewriteType = self->_rewriteType;
    if (rewriteType >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_rewriteType];
    }

    else
    {
      v5 = off_1E8328180[rewriteType];
    }

    [dictionary setObject:v5 forKey:@"rewrite_type"];
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  if (rewrittenUtterance)
  {
    [dictionary setObject:rewrittenUtterance forKey:@"rewritten_utterance"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRewriteMessage;
  v4 = [(SIRINLUEXTERNALRewriteMessage *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALRewriteMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsRewriteType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"REWRITE_TYPE_NONE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"REWRITE_TYPE_AER"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"REWRITE_TYPE_CBR"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"REWRITE_TYPE_MRR"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rewriteType
{
  if (*&self->_has)
  {
    return self->_rewriteType;
  }

  else
  {
    return 0;
  }
}

@end