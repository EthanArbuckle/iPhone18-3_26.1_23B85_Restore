@interface WFREPBDialogRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBDialogRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(WFREPBDialogRequest *)self setRunRequestIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(WFREPBDialogRequest *)self setDialogRequestData:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((runRequestIdentifier = self->_runRequestIdentifier, !(runRequestIdentifier | v4[2])) || -[NSString isEqual:](runRequestIdentifier, "isEqual:")))
  {
    dialogRequestData = self->_dialogRequestData;
    if (dialogRequestData | v4[1])
    {
      v7 = [(NSData *)dialogRequestData isEqual:?];
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
  v6 = [(NSString *)self->_runRequestIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_dialogRequestData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  runRequestIdentifier = self->_runRequestIdentifier;
  v5 = a3;
  [v5 setRunRequestIdentifier:runRequestIdentifier];
  [v5 setDialogRequestData:self->_dialogRequestData];
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_runRequestIdentifier)
  {
    __assert_rtn("[WFREPBDialogRequest writeTo:]", "WFREPBDialogRequest.m", 83, "nil != self->_runRequestIdentifier");
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_dialogRequestData)
  {
    __assert_rtn("[WFREPBDialogRequest writeTo:]", "WFREPBDialogRequest.m", 88, "nil != self->_dialogRequestData");
  }

  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  runRequestIdentifier = self->_runRequestIdentifier;
  if (runRequestIdentifier)
  {
    [v3 setObject:runRequestIdentifier forKey:@"runRequestIdentifier"];
  }

  dialogRequestData = self->_dialogRequestData;
  if (dialogRequestData)
  {
    [v4 setObject:dialogRequestData forKey:@"dialogRequestData"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBDialogRequest;
  v4 = [(WFREPBDialogRequest *)&v8 description];
  v5 = [(WFREPBDialogRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end