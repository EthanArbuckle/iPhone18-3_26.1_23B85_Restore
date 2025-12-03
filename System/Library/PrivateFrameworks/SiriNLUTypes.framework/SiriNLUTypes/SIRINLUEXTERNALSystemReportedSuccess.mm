@interface SIRINLUEXTERNALSystemReportedSuccess
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSystemReportedSuccess

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  taskId = self->_taskId;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

    [(SIRINLUEXTERNALSystemReportedSuccess *)self setTaskId:?];
  }

  fromCopy = v9;
LABEL_7:
  task = self->_task;
  v8 = fromCopy[1];
  if (task)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUsoGraph *)task mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALSystemReportedSuccess *)self setTask:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((taskId = self->_taskId, !(taskId | equalCopy[2])) || -[SIRINLUEXTERNALUUID isEqual:](taskId, "isEqual:")))
  {
    task = self->_task;
    if (task | equalCopy[1])
    {
      v7 = [(SIRINLUEXTERNALUsoGraph *)task isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_taskId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_task copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

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

  task = self->_task;
  if (task)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUsoGraph *)task dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"task"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSystemReportedSuccess;
  v4 = [(SIRINLUEXTERNALSystemReportedSuccess *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSystemReportedSuccess *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end