@interface REDuetEvent
+ (id)eventWithInterval:(id)interval value:(id)value confidence:(double)confidence;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation REDuetEvent

+ (id)eventWithInterval:(id)interval value:(id)value confidence:(double)confidence
{
  intervalCopy = interval;
  valueCopy = value;
  v9 = objc_opt_new();
  v10 = *(v9 + 8);
  *(v9 + 8) = intervalCopy;
  v11 = intervalCopy;

  v12 = [valueCopy copy];
  v13 = *(v9 + 16);
  *(v9 + 16) = v12;

  *(v9 + 24) = confidence;

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_interval hash];
  v4 = [(REFeatureValue *)self->_value hash]^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      interval = v5->_interval;
      v7 = self->_interval;
      v8 = v7;
      if (v7 == interval)
      {
      }

      else
      {
        v9 = [(NSDateInterval *)v7 isEqual:interval];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      value = v5->_value;
      v12 = self->_value;
      v13 = v12;
      if (v12 == value)
      {
      }

      else
      {
        v14 = [(REFeatureValue *)v12 isEqual:value];

        if (!v14)
        {
LABEL_11:
          v10 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      v15 = self->_confidence - v5->_confidence;
      if (v15 < 0.0)
      {
        v15 = -v15;
      }

      v10 = v15 < 0.00000011920929;
      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

@end