@interface PAPBLocationAccess
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PAPBLocationAccess

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PAPBLocationAccess;
  v4 = [(PAPBLocationAccess *)&v8 description];
  v5 = [(PAPBLocationAccess *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  access = self->_access;
  if (access)
  {
    v5 = [(PAPBAccess *)access dictionaryRepresentation];
    [v3 setObject:v5 forKeyedSubscript:@"access"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_access)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PAPBAccess *)self->_access copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    access = self->_access;
    if (access | v4[1])
    {
      v6 = [(PAPBAccess *)access isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  access = self->_access;
  v6 = v4[1];
  if (access)
  {
    if (v6)
    {
      [(PAPBAccess *)access mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PAPBLocationAccess *)self setAccess:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end