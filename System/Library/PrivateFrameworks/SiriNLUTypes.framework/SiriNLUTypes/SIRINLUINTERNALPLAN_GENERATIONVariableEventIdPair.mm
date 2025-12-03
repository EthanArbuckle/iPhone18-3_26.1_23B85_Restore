@interface SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair *)self setVariable:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair *)self setEventId:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((variable = self->_variable, !(variable | equalCopy[2])) || -[NSString isEqual:](variable, "isEqual:")))
  {
    eventId = self->_eventId;
    if (eventId | equalCopy[1])
    {
      v7 = [(NSString *)eventId isEqual:?];
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
  v6 = [(NSString *)self->_variable copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_eventId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_variable)
  {
    [toCopy setVariable:?];
    toCopy = v5;
  }

  if (self->_eventId)
  {
    [v5 setEventId:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_variable)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_eventId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  variable = self->_variable;
  if (variable)
  {
    [dictionary setObject:variable forKey:@"variable"];
  }

  eventId = self->_eventId;
  if (eventId)
  {
    [v4 setObject:eventId forKey:@"eventId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair;
  v4 = [(SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end