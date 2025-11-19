@interface SBINAppIntentSystemContext
- (BOOL)isEqual:(id)a3;
- (SBINAppIntentSystemContext)initWithPreciseTimestamp:(id)a3 actionSource:(unint64_t)a4;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBINAppIntentSystemContext

- (SBINAppIntentSystemContext)initWithPreciseTimestamp:(id)a3 actionSource:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBINAppIntentSystemContext;
  v8 = [(SBINAppIntentSystemContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_preciseTimestamp, a3);
    v9->_actionSource = a4;
  }

  return v9;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  preciseTimestamp = self->_preciseTimestamp;
  v5 = a3;
  v6 = [v5 appendObject:preciseTimestamp withName:@"preciseTimestamp"];
  v7 = NSStringFromSBINAppIntentActionSource(self->_actionSource);
  [v5 appendString:v7 withName:@"actionSource"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      preciseTimestamp = self->_preciseTimestamp;
      v9 = v7->_preciseTimestamp;
      if (BSEqualObjects())
      {
        v10 = self->_actionSource == v7->_actionSource;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end