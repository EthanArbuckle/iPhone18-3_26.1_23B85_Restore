@interface SIRINLUEXTERNALRewriteMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRewriteType:(id)a3;
- (int)rewriteType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALRewriteMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_rewriteType = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(SIRINLUEXTERNALRewriteMessage *)self setRewrittenUtterance:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_rewriteType != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  if (rewrittenUtterance | *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_rewriteType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_rewrittenUtterance copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_rewriteType;
    *(v4 + 24) |= 1u;
  }

  if (self->_rewrittenUtterance)
  {
    v5 = v4;
    [v4 setRewrittenUtterance:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    rewriteType = self->_rewriteType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_rewrittenUtterance)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"rewrite_type"];
  }

  rewrittenUtterance = self->_rewrittenUtterance;
  if (rewrittenUtterance)
  {
    [v3 setObject:rewrittenUtterance forKey:@"rewritten_utterance"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRewriteMessage;
  v4 = [(SIRINLUEXTERNALRewriteMessage *)&v8 description];
  v5 = [(SIRINLUEXTERNALRewriteMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsRewriteType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"REWRITE_TYPE_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"REWRITE_TYPE_AER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REWRITE_TYPE_CBR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"REWRITE_TYPE_MRR"])
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