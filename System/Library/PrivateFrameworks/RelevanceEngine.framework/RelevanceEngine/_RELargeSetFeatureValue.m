@interface _RELargeSetFeatureValue
- (_RELargeSetFeatureValue)initWithSet:(id)a3;
@end

@implementation _RELargeSetFeatureValue

- (_RELargeSetFeatureValue)initWithSet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _RELargeSetFeatureValue;
  v5 = [(_RELargeSetFeatureValue *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    values = v5->_values;
    v5->_values = v6;
  }

  return v5;
}

@end