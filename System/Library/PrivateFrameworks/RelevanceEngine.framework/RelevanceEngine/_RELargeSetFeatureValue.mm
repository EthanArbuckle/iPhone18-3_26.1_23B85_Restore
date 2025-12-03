@interface _RELargeSetFeatureValue
- (_RELargeSetFeatureValue)initWithSet:(id)set;
@end

@implementation _RELargeSetFeatureValue

- (_RELargeSetFeatureValue)initWithSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = _RELargeSetFeatureValue;
  v5 = [(_RELargeSetFeatureValue *)&v9 init];
  if (v5)
  {
    v6 = [setCopy copy];
    values = v5->_values;
    v5->_values = v6;
  }

  return v5;
}

@end