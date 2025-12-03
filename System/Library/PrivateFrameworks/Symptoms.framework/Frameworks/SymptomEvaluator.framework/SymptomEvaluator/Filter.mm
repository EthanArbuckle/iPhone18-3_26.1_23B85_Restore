@interface Filter
+ (id)initForSymptom:(unsigned int)symptom withParams:(id)params;
- (BOOL)isEqual:(id)equal;
@end

@implementation Filter

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [v5 subsystemId] == self->_subsystemId && objc_msgSend(v5, "symptomId") == self->_symptomId && objc_msgSend(v5, "queueLenAlert") == self->_queueLenAlert && objc_msgSend(v5, "queueLenDrop") == self->_queueLenDrop && objc_msgSend(v5, "queueTimeLimit") == self->_queueTimeLimit;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)initForSymptom:(unsigned int)symptom withParams:(id)params
{
  if (params)
  {
    paramsCopy = params;
    v6 = [paramsCopy objectForKey:@"SYMPTOM_QUEUE_LENGTH_FOR_ALERT"];
    v7 = [paramsCopy objectForKey:@"SYMPTOM_QUEUE_TIME_LIMIT"];

    v8 = objc_alloc_init(Filter);
    v9 = v8;
    if (v8)
    {
      v8->_symptomId = symptom;
      if (v6)
      {
        queueLenAlert = [v6 integerValue];
      }

      else
      {
        queueLenAlert = 0;
      }

      v9->_queueLenAlert = queueLenAlert;
      if (v7)
      {
        integerValue = [v7 integerValue];
        queueLenAlert = v9->_queueLenAlert;
      }

      else
      {
        integerValue = 0;
      }

      v12 = 40;
      if (!queueLenAlert)
      {
        v12 = 0;
      }

      v9->_queueLenDrop = v12;
      v9->_queueTimeLimit = integerValue;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end