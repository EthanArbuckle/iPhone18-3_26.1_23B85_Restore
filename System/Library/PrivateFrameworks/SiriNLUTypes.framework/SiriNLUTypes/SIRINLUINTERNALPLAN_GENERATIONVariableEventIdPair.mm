@interface SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair *)self setVariable:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair *)self setEventId:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((variable = self->_variable, !(variable | v4[2])) || -[NSString isEqual:](variable, "isEqual:")))
  {
    eventId = self->_eventId;
    if (eventId | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_variable copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_eventId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_variable)
  {
    [v4 setVariable:?];
    v4 = v5;
  }

  if (self->_eventId)
  {
    [v5 setEventId:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_variable)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_eventId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  variable = self->_variable;
  if (variable)
  {
    [v3 setObject:variable forKey:@"variable"];
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
  v5 = [(SIRINLUINTERNALPLAN_GENERATIONVariableEventIdPair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end