@interface SIRINLUEXTERNALSystemPrompted
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSystemPrompted

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

    [(SIRINLUEXTERNALSystemPrompted *)self setTaskId:?];
  }

  fromCopy = v9;
LABEL_7:
  target = self->_target;
  v8 = fromCopy[1];
  if (target)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUsoGraph *)target mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALSystemPrompted *)self setTarget:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((taskId = self->_taskId, !(taskId | equalCopy[2])) || -[SIRINLUEXTERNALUUID isEqual:](taskId, "isEqual:")))
  {
    target = self->_target;
    if (target | equalCopy[1])
    {
      v7 = [(SIRINLUEXTERNALUsoGraph *)target isEqual:?];
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

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_target copyWithZone:zone];
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

  if (self->_target)
  {
    [v5 setTarget:?];
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

  if (self->_target)
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

  target = self->_target;
  if (target)
  {
    dictionaryRepresentation2 = [(SIRINLUEXTERNALUsoGraph *)target dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"target"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSystemPrompted;
  v4 = [(SIRINLUEXTERNALSystemPrompted *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSystemPrompted *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end