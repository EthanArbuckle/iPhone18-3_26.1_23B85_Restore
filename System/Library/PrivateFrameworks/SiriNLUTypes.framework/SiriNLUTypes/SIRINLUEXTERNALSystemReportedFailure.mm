@interface SIRINLUEXTERNALSystemReportedFailure
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSystemReportedFailure

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  taskId = self->_taskId;
  v6 = fromCopy[3];
  v11 = fromCopy;
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

  fromCopy = v11;
LABEL_7:
  reason = self->_reason;
  v8 = fromCopy[1];
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

  fromCopy = v11;
LABEL_13:
  task = self->_task;
  v10 = fromCopy[2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((taskId = self->_taskId, !(taskId | equalCopy[3])) || -[SIRINLUEXTERNALUUID isEqual:](taskId, "isEqual:")) && ((reason = self->_reason, !(reason | equalCopy[1])) || -[SIRINLUEXTERNALUsoGraph isEqual:](reason, "isEqual:")))
  {
    task = self->_task;
    if (task | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_taskId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_reason copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(SIRINLUEXTERNALUsoGraph *)self->_task copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_taskId)
  {
    [toCopy setTaskId:?];
    toCopy = v5;
  }

  if (self->_reason)
  {
    [v5 setReason:?];
    toCopy = v5;
  }

  if (self->_task)
  {
    [v5 setTask:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_taskId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_reason)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_task)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  taskId = self->_taskId;
  if (taskId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)taskId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"task_id"];
  }

  reason = self->_reason;
  if (reason)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUsoGraph *)reason dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"reason"];
  }

  task = self->_task;
  if (task)
  {
    dictionaryRepresentation3 = [(SIRINLUEXTERNALUsoGraph *)task dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"task"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSystemReportedFailure;
  v4 = [(SIRINLUEXTERNALSystemReportedFailure *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSystemReportedFailure *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end