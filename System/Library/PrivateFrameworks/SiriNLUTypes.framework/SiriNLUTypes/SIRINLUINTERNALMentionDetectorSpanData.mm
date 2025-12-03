@interface SIRINLUINTERNALMentionDetectorSpanData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALMentionDetectorSpanData

- (void)mergeFrom:(id)from
{
  if (*(from + 16))
  {
    self->_score = *(from + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    return 0;
  }

  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v2.i64 = floor(score + 0.5);
  v6 = (score - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  result = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      result += v6;
    }
  }

  else
  {
    result -= fabs(v6);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_score == *(equalCopy + 1))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 1) = *&self->_score;
    *(result + 16) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = *&self->_score;
    *(to + 16) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
    [dictionary setObject:v4 forKey:@"score"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALMentionDetectorSpanData;
  v4 = [(SIRINLUINTERNALMentionDetectorSpanData *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALMentionDetectorSpanData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end