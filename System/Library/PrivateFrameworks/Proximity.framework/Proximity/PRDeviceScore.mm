@interface PRDeviceScore
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPRDeviceScore:(id)a3;
- (PRDeviceScore)init;
- (PRDeviceScore)initWithValues:(id)a3 proximity:(int64_t)a4 range:(id)a5 angle:(id)a6 score:(double)a7 scoreUncertainty:(double)a8;
@end

@implementation PRDeviceScore

- (PRDeviceScore)init
{
  [(PRDeviceScore *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRDeviceScore)initWithValues:(id)a3 proximity:(int64_t)a4 range:(id)a5 angle:(id)a6 score:(double)a7 scoreUncertainty:(double)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  if (!v15)
  {
    [PRDeviceScore initWithValues:a2 proximity:self range:? angle:? score:? scoreUncertainty:?];
  }

  v26.receiver = self;
  v26.super_class = PRDeviceScore;
  v18 = [(PRDeviceScore *)&v26 init];
  if (v18)
  {
    v19 = [v15 copy];
    btAddress = v18->_btAddress;
    v18->_btAddress = v19;

    v18->_proximity = a4;
    v21 = [v16 copy];
    range = v18->_range;
    v18->_range = v21;

    v23 = [v17 copy];
    angle = v18->_angle;
    v18->_angle = v23;

    v18->_score = a7;
    v18->_scoreUncertainty = a8;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PRDeviceScore *)self isEqualToPRDeviceScore:v5];
  }

  return v6;
}

- (BOOL)isEqualToPRDeviceScore:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    btAddress = self->_btAddress;
    v7 = [(PRDeviceScore *)v4 btAddress];
    LODWORD(btAddress) = [(NSData *)btAddress isEqual:v7];

    if (!btAddress)
    {
      goto LABEL_17;
    }

    v8 = [(PRDeviceScore *)self proximity];
    if (v8 != [(PRDeviceScore *)v5 proximity])
    {
      goto LABEL_17;
    }

    v9 = [(PRDeviceScore *)self range];
    if (v9 && (v10 = v9, [(PRDeviceScore *)v5 range], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      v12 = [(PRDeviceScore *)self range];
      v13 = [(PRDeviceScore *)v5 range];
      v14 = [v12 isEqual:v13];

      if ((v14 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = [(PRDeviceScore *)self range];
      if (v16)
      {
        goto LABEL_16;
      }

      v17 = [(PRDeviceScore *)v5 range];

      if (v17)
      {
        goto LABEL_17;
      }
    }

    v18 = [(PRDeviceScore *)self angle];
    if (v18)
    {
      v19 = v18;
      v20 = [(PRDeviceScore *)v5 angle];

      if (v20)
      {
        v21 = [(PRDeviceScore *)self angle];
        v22 = [(PRDeviceScore *)v5 angle];
        v23 = [v21 isEqual:v22];

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

    v16 = [(PRDeviceScore *)self angle];
    if (!v16)
    {
      v25 = [(PRDeviceScore *)v5 angle];

      if (!v25)
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