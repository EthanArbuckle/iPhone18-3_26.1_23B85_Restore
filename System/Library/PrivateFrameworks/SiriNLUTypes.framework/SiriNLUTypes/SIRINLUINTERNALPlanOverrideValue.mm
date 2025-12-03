@interface SIRINLUINTERNALPlanOverrideValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALPlanOverrideValue

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(SIRINLUINTERNALPlanOverrideValue *)self setPlan:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    plan = self->_plan;
    if (plan | equalCopy[1])
    {
      v6 = [(NSString *)plan isEqual:?];
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
  v6 = [(NSString *)self->_plan copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  plan = self->_plan;
  if (plan)
  {
    [to setPlan:plan];
  }
}

- (void)writeTo:(id)to
{
  if (self->_plan)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  plan = self->_plan;
  if (plan)
  {
    [dictionary setObject:plan forKey:@"plan"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALPlanOverrideValue;
  v4 = [(SIRINLUINTERNALPlanOverrideValue *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALPlanOverrideValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end