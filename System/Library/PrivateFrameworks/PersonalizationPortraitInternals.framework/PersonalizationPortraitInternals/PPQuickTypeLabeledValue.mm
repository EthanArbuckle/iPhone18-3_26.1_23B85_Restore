@interface PPQuickTypeLabeledValue
+ (id)labeledValueWithLabel:(id)label value:(id)value;
+ (id)labeledValueWithLabel:(id)label value:(id)value scoreBoost:(double)boost;
- (PPQuickTypeLabeledValue)initWithLabel:(id)label value:(id)value scoreBoost:(double)boost fields:(unsigned int)fields;
@end

@implementation PPQuickTypeLabeledValue

- (PPQuickTypeLabeledValue)initWithLabel:(id)label value:(id)value scoreBoost:(double)boost fields:(unsigned int)fields
{
  labelCopy = label;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = PPQuickTypeLabeledValue;
  v13 = [(PPQuickTypeLabeledValue *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_label, label);
    objc_storeStrong(&v14->_value, value);
    v14->_scoreBoost = boost;
    v14->_fields = fields;
  }

  return v14;
}

+ (id)labeledValueWithLabel:(id)label value:(id)value scoreBoost:(double)boost
{
  valueCopy = value;
  labelCopy = label;
  v9 = [[PPQuickTypeLabeledValue alloc] initWithLabel:labelCopy value:valueCopy scoreBoost:0 fields:boost];

  return v9;
}

+ (id)labeledValueWithLabel:(id)label value:(id)value
{
  valueCopy = value;
  labelCopy = label;
  v7 = [[PPQuickTypeLabeledValue alloc] initWithLabel:labelCopy value:valueCopy scoreBoost:0 fields:0.0];

  return v7;
}

@end