@interface PCPPredictRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPPredictRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictRequest;
  v4 = [(PCPPredictRequest *)&v8 description];
  v5 = [(PCPPredictRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  input = self->_input;
  if (input)
  {
    v5 = [(PCPInputSignals *)input dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"input"];
  }

  v6 = self->_result;
  if (v6)
  {
    v7 = [(PCPPredictedContextResult *)v6 dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"result"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_input)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_result)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_input)
  {
    [v4 setInput:?];
    v4 = v5;
  }

  if (self->_result)
  {
    [v5 setResult:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PCPInputSignals *)self->_input copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PCPPredictedContextResult *)self->_result copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((input = self->_input, !(input | v4[1])) || -[PCPInputSignals isEqual:](input, "isEqual:")))
  {
    v6 = self->_result;
    if (v6 | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  input = self->_input;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  result = self->_result;
  v8 = v4[2];
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