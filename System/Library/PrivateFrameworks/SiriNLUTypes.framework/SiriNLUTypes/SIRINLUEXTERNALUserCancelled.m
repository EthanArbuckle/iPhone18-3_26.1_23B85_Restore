@interface SIRINLUEXTERNALUserCancelled
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUserCancelled

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  taskId = self->_taskId;
  v6 = v4[2];
  v9 = v4;
  if (taskId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALUUID *)taskId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALUserCancelled *)self setTaskId:?];
  }

  v4 = v9;
LABEL_7:
  reference = self->_reference;
  v8 = v4[1];
  if (reference)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUsoGraph *)reference mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALUserCancelled *)self setReference:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((taskId = self->_taskId, !(taskId | v4[2])) || -[SIRINLUEXTERNALUUID isEqual:](taskId, "isEqual:")))
  {
    reference = self->_reference;
    if (reference | v4[1])
    {
      v7 = [(SIRINLUEXTERNALUsoGraph *)reference isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_taskId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_reference copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_taskId)
  {
    [v4 setTaskId:?];
    v4 = v5;
  }

  if (self->_reference)
  {
    [v5 setReference:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_taskId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_reference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  taskId = self->_taskId;
  if (taskId)
  {
    v5 = [(SIRINLUEXTERNALUUID *)taskId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"task_id"];
  }

  reference = self->_reference;
  if (reference)
  {
    v7 = [(SIRINLUEXTERNALUsoGraph *)reference dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"reference"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUserCancelled;
  v4 = [(SIRINLUEXTERNALUserCancelled *)&v8 description];
  v5 = [(SIRINLUEXTERNALUserCancelled *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end