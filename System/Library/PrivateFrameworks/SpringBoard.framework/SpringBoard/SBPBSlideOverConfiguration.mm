@interface SBPBSlideOverConfiguration
- (BOOL)isEqual:(id)a3;
- (double)copyTo:(uint64_t)a1;
- (double)mergeFrom:(uint64_t)a1;
- (double)slideOverSizeHeight;
- (double)slideOverSizeWidth;
- (double)slideOverYOffsetFromCorner;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)setSlideOverCorner:(uint64_t)result;
- (uint64_t)setSlideOverDodgesDock:(uint64_t)result;
- (uint64_t)setSlideOverIsActive:(uint64_t)result;
- (uint64_t)setSlideOverIsStashed:(uint64_t)result;
- (uint64_t)setSlideOverSizeHeight:(uint64_t)result;
- (uint64_t)setSlideOverSizeWidth:(uint64_t)result;
- (uint64_t)setSlideOverYOffsetFromCorner:(uint64_t)result;
- (uint64_t)slideOverCorner;
- (uint64_t)slideOverDodgesDock;
- (uint64_t)slideOverIsActive;
- (uint64_t)slideOverIsStashed;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SBPBSlideOverConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBPBSlideOverConfiguration;
  v4 = [(SBPBSlideOverConfiguration *)&v8 description];
  v5 = [(SBPBSlideOverConfiguration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_slideOverCorner];
  [v3 setObject:v4 forKey:@"slideOverCorner"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_slideOverYOffsetFromCorner];
  [v3 setObject:v5 forKey:@"slideOverYOffsetFromCorner"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_slideOverSizeHeight];
  [v3 setObject:v6 forKey:@"slideOverSizeHeight"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_slideOverSizeWidth];
  [v3 setObject:v7 forKey:@"slideOverSizeWidth"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_slideOverIsActive];
  [v3 setObject:v8 forKey:@"slideOverIsActive"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_slideOverIsStashed];
  [v3 setObject:v9 forKey:@"slideOverIsStashed"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_slideOverDodgesDock];
  [v3 setObject:v10 forKey:@"slideOverDodgesDock"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteBOOLField();
  PBDataWriterWriteBOOLField();
  PBDataWriterWriteBOOLField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = self->_slideOverCorner;
  *(result + 4) = *&self->_slideOverYOffsetFromCorner;
  *(result + 2) = *&self->_slideOverSizeHeight;
  *(result + 3) = *&self->_slideOverSizeWidth;
  *(result + 41) = self->_slideOverIsActive;
  *(result + 42) = self->_slideOverIsStashed;
  *(result + 40) = self->_slideOverDodgesDock;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_slideOverCorner != *(v4 + 1) || self->_slideOverYOffsetFromCorner != *(v4 + 4) || self->_slideOverSizeHeight != *(v4 + 2) || self->_slideOverSizeWidth != *(v4 + 3))
  {
    goto LABEL_12;
  }

  if (self->_slideOverIsActive)
  {
    if ((v4[41] & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (self->_slideOverIsStashed)
    {
      if ((v4[42] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v4[42])
    {
      goto LABEL_12;
    }

    v5 = self->_slideOverDodgesDock == v4[40];
    goto LABEL_13;
  }

  if ((v4[41] & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v5 = 0;
LABEL_13:

  return v5;
}

- (unint64_t)hash
{
  slideOverYOffsetFromCorner = self->_slideOverYOffsetFromCorner;
  v7 = -slideOverYOffsetFromCorner;
  if (slideOverYOffsetFromCorner >= 0.0)
  {
    v7 = self->_slideOverYOffsetFromCorner;
  }

  *v3.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v3.i64[0] = vbslq_s8(v10, v4, v3).i64[0];
  v11 = 2654435761u * *v3.i64;
  v12 = v11 + v8;
  if (v8 <= 0.0)
  {
    v12 = 2654435761u * *v3.i64;
  }

  v13 = v11 - fabs(v8);
  if (v8 >= 0.0)
  {
    v13 = v12;
  }

  slideOverSizeHeight = self->_slideOverSizeHeight;
  if (slideOverSizeHeight < 0.0)
  {
    slideOverSizeHeight = -slideOverSizeHeight;
  }

  *v4.i64 = floor(slideOverSizeHeight + 0.5);
  v15 = (slideOverSizeHeight - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v16 = vbslq_s8(v10, v5, v4);
  v17 = 2654435761u * *v16.i64;
  v18 = v17 + v15;
  if (v15 <= 0.0)
  {
    v18 = 2654435761u * *v16.i64;
  }

  v19 = v17 - fabs(v15);
  if (v15 >= 0.0)
  {
    v19 = v18;
  }

  slideOverSizeWidth = self->_slideOverSizeWidth;
  if (slideOverSizeWidth < 0.0)
  {
    slideOverSizeWidth = -slideOverSizeWidth;
  }

  *v2.i64 = floor(slideOverSizeWidth + 0.5);
  v21 = (slideOverSizeWidth - *v2.i64) * 1.84467441e19;
  *v16.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v2.i64[0] = vbslq_s8(v10, v16, v2).i64[0];
  v22 = 2654435761u * *v2.i64;
  v23 = v22 + v21;
  if (v21 <= 0.0)
  {
    v23 = 2654435761u * *v2.i64;
  }

  v24 = v22 - fabs(v21);
  if (v21 >= 0.0)
  {
    v24 = v23;
  }

  return v13 ^ (2654435761 * self->_slideOverCorner) ^ v19 ^ v24 ^ (2654435761 * self->_slideOverIsActive) ^ (2654435761 * self->_slideOverIsStashed) ^ (2654435761 * self->_slideOverDodgesDock);
}

- (double)copyTo:(uint64_t)a1
{
  if (a1)
  {
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = *(a1 + 16);
    result = *(a1 + 24);
    *(a2 + 24) = result;
    *(a2 + 41) = *(a1 + 41);
    *(a2 + 42) = *(a1 + 42);
    *(a2 + 40) = *(a1 + 40);
  }

  return result;
}

- (double)mergeFrom:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a2 + 24);
    *(a1 + 24) = result;
    *(a1 + 41) = *(a2 + 41);
    *(a1 + 42) = *(a2 + 42);
    *(a1 + 40) = *(a2 + 40);
  }

  return result;
}

- (uint64_t)slideOverCorner
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)setSlideOverCorner:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (double)slideOverYOffsetFromCorner
{
  if (a1)
  {
    return OUTLINED_FUNCTION_2_1(a1, 32);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setSlideOverYOffsetFromCorner:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (double)slideOverSizeHeight
{
  if (a1)
  {
    return OUTLINED_FUNCTION_2_1(a1, 16);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setSlideOverSizeHeight:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (double)slideOverSizeWidth
{
  if (a1)
  {
    return OUTLINED_FUNCTION_2_1(a1, 24);
  }

  else
  {
    return OUTLINED_FUNCTION_1_8();
  }
}

- (uint64_t)setSlideOverSizeWidth:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)slideOverIsActive
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 41));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)setSlideOverIsActive:(uint64_t)result
{
  if (result)
  {
    *(result + 41) = a2;
  }

  return result;
}

- (uint64_t)slideOverIsStashed
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 42));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)setSlideOverIsStashed:(uint64_t)result
{
  if (result)
  {
    *(result + 42) = a2;
  }

  return result;
}

- (uint64_t)slideOverDodgesDock
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 40));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (uint64_t)setSlideOverDodgesDock:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

@end