@interface WFREPBRunRequestProgress
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBRunRequestProgress

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(WFREPBRunRequestProgress *)self setRunRequestIdentifier:?];
    v4 = v5;
  }

  self->_progress = v4[1];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_runRequestIdentifier hash];
  progress = self->_progress;
  if (progress < 0.0)
  {
    progress = -progress;
  }

  *v4.i64 = floor(progress + 0.5);
  v7 = (progress - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v4.i64[0] = vbslq_s8(vnegq_f64(v8), v5, v4).i64[0];
  v9 = 2654435761u * *v4.i64;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v4.i64;
  }

  v11 = v9 - fabs(v7);
  if (v7 >= 0.0)
  {
    v11 = v10;
  }

  return v11 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((runRequestIdentifier = self->_runRequestIdentifier, !(runRequestIdentifier | *(v4 + 2))) || -[NSString isEqual:](runRequestIdentifier, "isEqual:")) && self->_progress == *(v4 + 1);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_runRequestIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_progress;
  return v5;
}

- (void)copyTo:(id)a3
{
  runRequestIdentifier = self->_runRequestIdentifier;
  v5 = a3;
  [v5 setRunRequestIdentifier:runRequestIdentifier];
  v5[1] = self->_progress;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_runRequestIdentifier)
  {
    __assert_rtn("[WFREPBRunRequestProgress writeTo:]", "WFREPBRunRequestProgress.m", 79, "nil != self->_runRequestIdentifier");
  }

  v6 = v4;
  PBDataWriterWriteStringField();
  progress = self->_progress;
  PBDataWriterWriteDoubleField();
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

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_progress];
  [v4 setObject:v6 forKey:@"progress"];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBRunRequestProgress;
  v4 = [(WFREPBRunRequestProgress *)&v8 description];
  v5 = [(WFREPBRunRequestProgress *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end