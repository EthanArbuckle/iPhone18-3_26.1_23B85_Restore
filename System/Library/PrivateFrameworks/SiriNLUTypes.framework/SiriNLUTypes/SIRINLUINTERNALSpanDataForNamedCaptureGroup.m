@interface SIRINLUINTERNALSpanDataForNamedCaptureGroup
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTargetUdaIdx:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSpanDataForNamedCaptureGroup

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(SIRINLUINTERNALSpanDataForNamedCaptureGroup *)self setLabel:?];
    v4 = v6;
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    self->_targetNodeIdx = v4[4];
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_targetUdaIdx = v4[5];
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_label hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_targetNodeIdx;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_targetUdaIdx;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  label = self->_label;
  if (label | *(v4 + 1))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_targetNodeIdx != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_targetUdaIdx != *(v4 + 5))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_label copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_targetNodeIdx;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_targetUdaIdx;
    *(v5 + 24) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_label)
  {
    v6 = v4;
    [v4 setLabel:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 4) = self->_targetNodeIdx;
    *(v4 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_targetUdaIdx;
    *(v4 + 24) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    targetNodeIdx = self->_targetNodeIdx;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    targetUdaIdx = self->_targetUdaIdx;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_targetNodeIdx];
    [v4 setObject:v7 forKey:@"target_node_idx"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_targetUdaIdx];
    [v4 setObject:v8 forKey:@"target_uda_idx"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSpanDataForNamedCaptureGroup;
  v4 = [(SIRINLUINTERNALSpanDataForNamedCaptureGroup *)&v8 description];
  v5 = [(SIRINLUINTERNALSpanDataForNamedCaptureGroup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasTargetUdaIdx:(BOOL)a3
{
  if (a3)
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