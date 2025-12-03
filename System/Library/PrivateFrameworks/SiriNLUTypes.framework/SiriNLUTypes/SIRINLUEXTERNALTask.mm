@interface SIRINLUEXTERNALTask
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALTask

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

    [(SIRINLUEXTERNALTask *)self setTaskId:?];
  }

  fromCopy = v11;
LABEL_7:
  task = self->_task;
  v8 = fromCopy[2];
  if (task)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SIRINLUEXTERNALUsoGraph *)task mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SIRINLUEXTERNALTask *)self setTask:?];
  }

  fromCopy = v11;
LABEL_13:
  score = self->_score;
  v10 = fromCopy[1];
  if (score)
  {
    if (v10)
    {
      [(SIRICOMMONDoubleValue *)score mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUEXTERNALTask *)self setScore:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_taskId hash];
  v4 = [(SIRINLUEXTERNALUsoGraph *)self->_task hash]^ v3;
  return v4 ^ [(SIRICOMMONDoubleValue *)self->_score hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((taskId = self->_taskId, !(taskId | equalCopy[3])) || -[SIRINLUEXTERNALUUID isEqual:](taskId, "isEqual:")) && ((task = self->_task, !(task | equalCopy[2])) || -[SIRINLUEXTERNALUsoGraph isEqual:](task, "isEqual:")))
  {
    score = self->_score;
    if (score | equalCopy[1])
    {
      v8 = [(SIRICOMMONDoubleValue *)score isEqual:?];
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

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_task copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SIRICOMMONDoubleValue *)self->_score copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

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

  if (self->_score)
  {
    [v5 setScore:?];
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

  if (self->_score)
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

  score = self->_score;
  if (score)
  {
    dictionaryRepresentation3 = [(SIRICOMMONDoubleValue *)score dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"score"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALTask;
  v4 = [(SIRINLUEXTERNALTask *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALTask *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end