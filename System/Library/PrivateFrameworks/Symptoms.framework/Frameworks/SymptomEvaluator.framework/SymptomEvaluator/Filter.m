@interface Filter
+ (id)initForSymptom:(unsigned int)a3 withParams:(id)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation Filter

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 subsystemId] == self->_subsystemId && objc_msgSend(v5, "symptomId") == self->_symptomId && objc_msgSend(v5, "queueLenAlert") == self->_queueLenAlert && objc_msgSend(v5, "queueLenDrop") == self->_queueLenDrop && objc_msgSend(v5, "queueTimeLimit") == self->_queueTimeLimit;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)initForSymptom:(unsigned int)a3 withParams:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [v5 objectForKey:@"SYMPTOM_QUEUE_LENGTH_FOR_ALERT"];
    v7 = [v5 objectForKey:@"SYMPTOM_QUEUE_TIME_LIMIT"];

    v8 = objc_alloc_init(Filter);
    v9 = v8;
    if (v8)
    {
      v8->_symptomId = a3;
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
        v11 = [v7 integerValue];
        queueLenAlert = v9->_queueLenAlert;
      }

      else
      {
        v11 = 0;
      }

      v12 = 40;
      if (!queueLenAlert)
      {
        v12 = 0;
      }

      v9->_queueLenDrop = v12;
      v9->_queueTimeLimit = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end