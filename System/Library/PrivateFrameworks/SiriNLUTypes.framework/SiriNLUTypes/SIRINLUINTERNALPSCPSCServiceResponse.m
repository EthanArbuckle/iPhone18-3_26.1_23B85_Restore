@interface SIRINLUINTERNALPSCPSCServiceResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALPSCPSCServiceResponse

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_pommesProbability = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    return 0;
  }

  pommesProbability = self->_pommesProbability;
  if (pommesProbability < 0.0)
  {
    pommesProbability = -pommesProbability;
  }

  *v2.i32 = floorf(pommesProbability + 0.5);
  v6 = (pommesProbability - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  result = 2654435761u * *vbslq_s8(v7, v3, v2).i32;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      result += v6;
    }
  }

  else
  {
    result -= fabsf(v6);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_pommesProbability == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = LODWORD(self->_pommesProbability);
    *(result + 12) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = LODWORD(self->_pommesProbability);
    *(a3 + 12) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    pommesProbability = self->_pommesProbability;
    PBDataWriterWriteFloatField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    *&v4 = self->_pommesProbability;
    v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v3 setObject:v5 forKey:@"pommes_probability"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALPSCPSCServiceResponse;
  v4 = [(SIRINLUINTERNALPSCPSCServiceResponse *)&v8 description];
  v5 = [(SIRINLUINTERNALPSCPSCServiceResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end