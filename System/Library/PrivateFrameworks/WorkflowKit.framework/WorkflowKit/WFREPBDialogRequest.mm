@interface WFREPBDialogRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBDialogRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(WFREPBDialogRequest *)self setRunRequestIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(WFREPBDialogRequest *)self setDialogRequestData:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((runRequestIdentifier = self->_runRequestIdentifier, !(runRequestIdentifier | equalCopy[2])) || -[NSString isEqual:](runRequestIdentifier, "isEqual:")))
  {
    dialogRequestData = self->_dialogRequestData;
    if (dialogRequestData | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_runRequestIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_dialogRequestData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  runRequestIdentifier = self->_runRequestIdentifier;
  toCopy = to;
  [toCopy setRunRequestIdentifier:runRequestIdentifier];
  [toCopy setDialogRequestData:self->_dialogRequestData];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_runRequestIdentifier)
  {
    __assert_rtn("[WFREPBDialogRequest writeTo:]", "WFREPBDialogRequest.m", 83, "nil != self->_runRequestIdentifier");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_dialogRequestData)
  {
    __assert_rtn("[WFREPBDialogRequest writeTo:]", "WFREPBDialogRequest.m", 88, "nil != self->_dialogRequestData");
  }

  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  runRequestIdentifier = self->_runRequestIdentifier;
  if (runRequestIdentifier)
  {
    [dictionary setObject:runRequestIdentifier forKey:@"runRequestIdentifier"];
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
  dictionaryRepresentation = [(WFREPBDialogRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end