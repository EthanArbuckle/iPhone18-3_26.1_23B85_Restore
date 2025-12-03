@interface SIRINLUEXTERNALUserStatedTask
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUserStatedTask

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  task = self->_task;
  v6 = fromCopy[1];
  if (task)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALUsoGraph *)task mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALUserStatedTask *)self setTask:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    task = self->_task;
    if (task | equalCopy[1])
    {
      v6 = [(SIRINLUEXTERNALUsoGraph *)task isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUsoGraph *)self->_task copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  task = self->_task;
  if (task)
  {
    [to setTask:task];
  }
}

- (void)writeTo:(id)to
{
  if (self->_task)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  task = self->_task;
  if (task)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUsoGraph *)task dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"task"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUserStatedTask;
  v4 = [(SIRINLUEXTERNALUserStatedTask *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUserStatedTask *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end