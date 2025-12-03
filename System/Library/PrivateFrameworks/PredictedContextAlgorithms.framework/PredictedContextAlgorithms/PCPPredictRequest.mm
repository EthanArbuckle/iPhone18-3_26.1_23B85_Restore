@interface PCPPredictRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPPredictRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictRequest;
  v4 = [(PCPPredictRequest *)&v8 description];
  dictionaryRepresentation = [(PCPPredictRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  input = self->_input;
  if (input)
  {
    dictionaryRepresentation = [(PCPInputSignals *)input dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"input"];
  }

  v6 = self->_result;
  if (v6)
  {
    dictionaryRepresentation2 = [(PCPPredictedContextResult *)v6 dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"result"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_input)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_result)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_input)
  {
    [toCopy setInput:?];
    toCopy = v5;
  }

  if (self->_result)
  {
    [v5 setResult:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PCPInputSignals *)self->_input copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PCPPredictedContextResult *)self->_result copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((input = self->_input, !(input | equalCopy[1])) || -[PCPInputSignals isEqual:](input, "isEqual:")))
  {
    v6 = self->_result;
    if (v6 | equalCopy[2])
    {
      v7 = [(PCPPredictedContextResult *)v6 isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  input = self->_input;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (input)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PCPInputSignals *)input mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PCPPredictRequest *)self setInput:?];
  }

  fromCopy = v9;
LABEL_7:
  result = self->_result;
  v8 = fromCopy[2];
  if (result)
  {
    if (v8)
    {
      [(PCPPredictedContextResult *)result mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PCPPredictRequest *)self setResult:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end