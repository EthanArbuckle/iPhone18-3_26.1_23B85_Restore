@interface PCPSource
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPSource

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPSource;
  v4 = [(PCPSource *)&v8 description];
  v5 = [(PCPSource *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  predictedContextSource = self->_predictedContextSource;
  if (predictedContextSource)
  {
    v7 = [(PCPPredictedContextSource *)predictedContextSource dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"predictedContextSource"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_predictedContextSource)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_predictedContextSource)
  {
    [v5 setPredictedContextSource:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PCPPredictedContextSource *)self->_predictedContextSource copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[1])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    predictedContextSource = self->_predictedContextSource;
    if (predictedContextSource | v4[2])
    {
      v7 = [(PCPPredictedContextSource *)predictedContextSource isEqual:?];
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
  v7 = v4;
  if (v4[1])
  {
    [(PCPSource *)self setIdentifier:?];
    v4 = v7;
  }

  predictedContextSource = self->_predictedContextSource;
  v6 = v4[2];
  if (predictedContextSource)
  {
    if (v6)
    {
      [(PCPPredictedContextSource *)predictedContextSource mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PCPSource *)self setPredictedContextSource:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end