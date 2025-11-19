@interface PPQuickTypeLabeledValue
+ (id)labeledValueWithLabel:(id)a3 value:(id)a4;
+ (id)labeledValueWithLabel:(id)a3 value:(id)a4 scoreBoost:(double)a5;
- (PPQuickTypeLabeledValue)initWithLabel:(id)a3 value:(id)a4 scoreBoost:(double)a5 fields:(unsigned int)a6;
@end

@implementation PPQuickTypeLabeledValue

- (PPQuickTypeLabeledValue)initWithLabel:(id)a3 value:(id)a4 scoreBoost:(double)a5 fields:(unsigned int)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = PPQuickTypeLabeledValue;
  v13 = [(PPQuickTypeLabeledValue *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_label, a3);
    objc_storeStrong(&v14->_value, a4);
    v14->_scoreBoost = a5;
    v14->_fields = a6;
  }

  return v14;
}

+ (id)labeledValueWithLabel:(id)a3 value:(id)a4 scoreBoost:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[PPQuickTypeLabeledValue alloc] initWithLabel:v8 value:v7 scoreBoost:0 fields:a5];

  return v9;
}

+ (id)labeledValueWithLabel:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PPQuickTypeLabeledValue alloc] initWithLabel:v6 value:v5 scoreBoost:0 fields:0.0];

  return v7;
}

@end