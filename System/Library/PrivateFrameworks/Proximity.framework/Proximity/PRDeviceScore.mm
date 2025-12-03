@interface PRDeviceScore
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPRDeviceScore:(id)score;
- (PRDeviceScore)init;
- (PRDeviceScore)initWithValues:(id)values proximity:(int64_t)proximity range:(id)range angle:(id)angle score:(double)score scoreUncertainty:(double)uncertainty;
@end

@implementation PRDeviceScore

- (PRDeviceScore)init
{
  [(PRDeviceScore *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRDeviceScore)initWithValues:(id)values proximity:(int64_t)proximity range:(id)range angle:(id)angle score:(double)score scoreUncertainty:(double)uncertainty
{
  valuesCopy = values;
  rangeCopy = range;
  angleCopy = angle;
  if (!valuesCopy)
  {
    [PRDeviceScore initWithValues:a2 proximity:self range:? angle:? score:? scoreUncertainty:?];
  }

  v26.receiver = self;
  v26.super_class = PRDeviceScore;
  v18 = [(PRDeviceScore *)&v26 init];
  if (v18)
  {
    v19 = [valuesCopy copy];
    btAddress = v18->_btAddress;
    v18->_btAddress = v19;

    v18->_proximity = proximity;
    v21 = [rangeCopy copy];
    range = v18->_range;
    v18->_range = v21;

    v23 = [angleCopy copy];
    angle = v18->_angle;
    v18->_angle = v23;

    v18->_score = score;
    v18->_scoreUncertainty = uncertainty;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PRDeviceScore *)self isEqualToPRDeviceScore:v5];
  }

  return v6;
}

- (BOOL)isEqualToPRDeviceScore:(id)score
{
  scoreCopy = score;
  v5 = scoreCopy;
  if (self != scoreCopy)
  {
    btAddress = self->_btAddress;
    btAddress = [(PRDeviceScore *)scoreCopy btAddress];
    LODWORD(btAddress) = [(NSData *)btAddress isEqual:btAddress];

    if (!btAddress)
    {
      goto LABEL_17;
    }

    proximity = [(PRDeviceScore *)self proximity];
    if (proximity != [(PRDeviceScore *)v5 proximity])
    {
      goto LABEL_17;
    }

    range = [(PRDeviceScore *)self range];
    if (range && (v10 = range, [(PRDeviceScore *)v5 range], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      range2 = [(PRDeviceScore *)self range];
      range3 = [(PRDeviceScore *)v5 range];
      v14 = [range2 isEqual:range3];

      if ((v14 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      range4 = [(PRDeviceScore *)self range];
      if (range4)
      {
        goto LABEL_16;
      }

      range5 = [(PRDeviceScore *)v5 range];

      if (range5)
      {
        goto LABEL_17;
      }
    }

    angle = [(PRDeviceScore *)self angle];
    if (angle)
    {
      v19 = angle;
      angle2 = [(PRDeviceScore *)v5 angle];

      if (angle2)
      {
        angle3 = [(PRDeviceScore *)self angle];
        angle4 = [(PRDeviceScore *)v5 angle];
        v23 = [angle3 isEqual:angle4];

        if (v23)
        {
LABEL_20:
          [(PRDeviceScore *)self score];
          v27 = v26;
          [(PRDeviceScore *)v5 score];
          if (v27 == v28)
          {
            [(PRDeviceScore *)self scoreUncertainty];
            v30 = v29;
            [(PRDeviceScore *)v5 scoreUncertainty];
            v15 = v30 == v31;
            goto LABEL_18;
          }
        }

LABEL_17:
        v15 = 0;
        goto LABEL_18;
      }
    }

    range4 = [(PRDeviceScore *)self angle];
    if (!range4)
    {
      angle5 = [(PRDeviceScore *)v5 angle];

      if (!angle5)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

LABEL_16:

    goto LABEL_17;
  }

  v15 = 1;
LABEL_18:

  return v15;
}

- (void)initWithValues:(uint64_t)a1 proximity:(uint64_t)a2 range:angle:score:scoreUncertainty:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRDeviceScore.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"btAddress"}];
}

@end