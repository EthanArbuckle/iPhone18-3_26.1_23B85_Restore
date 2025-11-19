@interface WFREPBError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBError

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(WFREPBError *)self setDomain:?];
    v4 = v5;
  }

  self->_code = v4[1];
  if (v4[3])
  {
    [(WFREPBError *)self setLocalizedDescription:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(WFREPBError *)self setLocalizedFailureReason:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = 2654435761 * self->_code;
  v5 = v3 ^ [(NSString *)self->_localizedDescription hash];
  return v4 ^ v5 ^ [(NSString *)self->_localizedFailureReason hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | v4[2])) || -[NSString isEqual:](domain, "isEqual:")) && self->_code == v4[1] && ((localizedDescription = self->_localizedDescription, !(localizedDescription | v4[3])) || -[NSString isEqual:](localizedDescription, "isEqual:")))
  {
    localizedFailureReason = self->_localizedFailureReason;
    if (localizedFailureReason | v4[4])
    {
      v8 = [(NSString *)localizedFailureReason isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_code;
  v8 = [(NSString *)self->_localizedDescription copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_localizedFailureReason copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setDomain:self->_domain];
  v4 = v5;
  v5[1] = self->_code;
  if (self->_localizedDescription)
  {
    [v5 setLocalizedDescription:?];
    v4 = v5;
  }

  if (self->_localizedFailureReason)
  {
    [v5 setLocalizedFailureReason:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_domain)
  {
    __assert_rtn("[WFREPBError writeTo:]", "WFREPBError.m", 109, "nil != self->_domain");
  }

  v6 = v4;
  PBDataWriterWriteStringField();
  code = self->_code;
  PBDataWriterWriteInt64Field();
  if (self->_localizedDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedFailureReason)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_code];
  [v4 setObject:v6 forKey:@"code"];

  localizedDescription = self->_localizedDescription;
  if (localizedDescription)
  {
    [v4 setObject:localizedDescription forKey:@"localizedDescription"];
  }

  localizedFailureReason = self->_localizedFailureReason;
  if (localizedFailureReason)
  {
    [v4 setObject:localizedFailureReason forKey:@"localizedFailureReason"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBError;
  v4 = [(WFREPBError *)&v8 description];
  v5 = [(WFREPBError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end