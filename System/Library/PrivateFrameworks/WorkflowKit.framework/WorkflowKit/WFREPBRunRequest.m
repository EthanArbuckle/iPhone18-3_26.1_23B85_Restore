@interface WFREPBRunRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPayloadType:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBRunRequest

- (void)mergeFrom:(id)a3
{
  self->_payloadType = *(a3 + 4);
  if (*(a3 + 1))
  {
    [(WFREPBRunRequest *)self setPayload:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_payloadType == *(v4 + 4))
  {
    payload = self->_payload;
    if (payload | v4[1])
    {
      v6 = [(NSData *)payload isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_payloadType;
  v6 = [(NSData *)self->_payload copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  payloadType = self->_payloadType;
  v6 = v4;
  PBDataWriterWriteInt32Field();
  if (!self->_payload)
  {
    __assert_rtn("[WFREPBRunRequest writeTo:]", "WFREPBRunRequest.m", 91, "nil != self->_payload");
  }

  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  payloadType = self->_payloadType;
  if (payloadType == 1)
  {
    v5 = @"SingleActionExecution";
  }

  else if (payloadType == 2)
  {
    v5 = @"WorkflowExecution";
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_payloadType];
  }

  [v3 setObject:v5 forKey:@"payloadType"];

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBRunRequest;
  v4 = [(WFREPBRunRequest *)&v8 description];
  v5 = [(WFREPBRunRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsPayloadType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"SingleActionExecution"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"WorkflowExecution"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

@end