@interface SIRINLUEXTERNALSystemReportedFailure
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSystemReportedFailure

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  taskId = self->_taskId;
  v6 = v4[3];
  v11 = v4;
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

    [(SIRINLUEXTERNALSystemReportedFailure *)self setTaskId:?];
  }

  v4 = v11;
LABEL_7:
  reason = self->_reason;
  v8 = v4[1];
  if (reason)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SIRINLUEXTERNALUsoGraph *)reason mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SIRINLUEXTERNALSystemReportedFailure *)self setReason:?];
  }

  v4 = v11;
LABEL_13:
  task = self->_task;
  v10 = v4[2];
  if (task)
  {
    if (v10)
    {
      [(SIRINLUEXTERNALUsoGraph *)task mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUEXTERNALSystemReportedFailure *)self setTask:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_taskId hash];
  v4 = [(SIRINLUEXTERNALUsoGraph *)self->_reason hash]^ v3;
  return v4 ^ [(SIRINLUEXTERNALUsoGraph *)self->_task hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((taskId = self->_taskId, !(taskId | v4[3])) || -[SIRINLUEXTERNALUUID isEqual:](taskId, "isEqual:")) && ((reason = self->_reason, !(reason | v4[1])) || -[SIRINLUEXTERNALUsoGraph isEqual:](reason, "isEqual:")))
  {
    task = self->_task;
    if (task | v4[2])
    {
      v8 = [(SIRINLUEXTERNALUsoGraph *)task isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_taskId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_reason copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(SIRINLUEXTERNALUsoGraph *)self->_task copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

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

  if (self->_reason)
  {
    [v5 setReason:?];
    v4 = v5;
  }

  if (self->_task)
  {
    [v5 setTask:?];
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

  if (self->_reason)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_task)
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

  reason = self->_reason;
  if (reason)
  {
    v7 = [(SIRINLUEXTERNALUsoGraph *)reason dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"reason"];
  }

  task = self->_task;
  if (task)
  {
    v9 = [(SIRINLUEXTERNALUsoGraph *)task dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"task"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSystemReportedFailure;
  v4 = [(SIRINLUEXTERNALSystemReportedFailure *)&v8 description];
  v5 = [(SIRINLUEXTERNALSystemReportedFailure *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end