@interface SIRINLUEXTERNALTask
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALTask

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

    [(SIRINLUEXTERNALTask *)self setTaskId:?];
  }

  v4 = v11;
LABEL_7:
  task = self->_task;
  v8 = v4[2];
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

  v4 = v11;
LABEL_13:
  score = self->_score;
  v10 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((taskId = self->_taskId, !(taskId | v4[3])) || -[SIRINLUEXTERNALUUID isEqual:](taskId, "isEqual:")) && ((task = self->_task, !(task | v4[2])) || -[SIRINLUEXTERNALUsoGraph isEqual:](task, "isEqual:")))
  {
    score = self->_score;
    if (score | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_taskId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(SIRINLUEXTERNALUsoGraph *)self->_task copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SIRICOMMONDoubleValue *)self->_score copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

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

  if (self->_task)
  {
    [v5 setTask:?];
    v4 = v5;
  }

  if (self->_score)
  {
    [v5 setScore:?];
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

  if (self->_task)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_score)
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

  task = self->_task;
  if (task)
  {
    v7 = [(SIRINLUEXTERNALUsoGraph *)task dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"task"];
  }

  score = self->_score;
  if (score)
  {
    v9 = [(SIRICOMMONDoubleValue *)score dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"score"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALTask;
  v4 = [(SIRINLUEXTERNALTask *)&v8 description];
  v5 = [(SIRINLUEXTERNALTask *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end