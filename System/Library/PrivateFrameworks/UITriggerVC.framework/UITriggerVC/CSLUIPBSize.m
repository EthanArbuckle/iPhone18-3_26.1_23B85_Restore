@interface CSLUIPBSize
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation CSLUIPBSize

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CSLUIPBSize;
  v4 = [(CSLUIPBSize *)&v8 description];
  v5 = [(CSLUIPBSize *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  *&v4 = self->_width;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"width"];

  *&v6 = self->_height;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v3 setObject:v7 forKey:@"height"];

  return v3;
}

- (void)writeTo:(id)a3
{
  width = self->_width;
  v6 = a3;
  PBDataWriterWriteFloatField();
  height = self->_height;
  PBDataWriterWriteFloatField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = LODWORD(self->_width);
  *(result + 2) = LODWORD(self->_height);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_width == v4[3] && self->_height == v4[2];

  return v5;
}

- (unint64_t)hash
{
  width = self->_width;
  if (width >= 0.0)
  {
    v6 = width;
  }

  else
  {
    v6 = -width;
  }

  *v3.i64 = floor(v6 + 0.5);
  v7 = v6 - *v3.i64;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  v10 = vbslq_s8(v9, v4, v3);
  v11 = v7 * 1.84467441e19;
  v12 = 2654435761u * *v10.i64;
  v13 = v12 + v11;
  if (v11 <= 0.0)
  {
    v13 = 2654435761u * *v10.i64;
  }

  v14 = v12 - fabs(v11);
  if (v11 >= 0.0)
  {
    v14 = v13;
  }

  height = self->_height;
  if (height >= 0.0)
  {
    v16 = height;
  }

  else
  {
    v16 = -height;
  }

  *v2.i64 = floor(v16 + 0.5);
  v17 = (v16 - *v2.i64) * 1.84467441e19;
  *v10.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v2.i64[0] = vbslq_s8(v9, v10, v2).i64[0];
  v18 = 2654435761u * *v2.i64;
  v19 = v18 + v17;
  if (v17 <= 0.0)
  {
    v19 = 2654435761u * *v2.i64;
  }

  v20 = v18 - fabs(v17);
  if (v17 >= 0.0)
  {
    v20 = v19;
  }

  return v20 ^ v14;
}

@end