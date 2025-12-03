@interface _PASStringPairs
- (_PASStringPairs)initWithKeys:(id)keys values:(id)values;
@end

@implementation _PASStringPairs

- (_PASStringPairs)initWithKeys:(id)keys values:(id)values
{
  keysCopy = keys;
  valuesCopy = values;
  v10 = [keysCopy count];
  if (v10 != [valuesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASStringPairs.m" lineNumber:16 description:{@"number of elements don't match: keys - %lu, values - %lu", -[NSArray count](self->_keys, "count"), -[NSArray count](self->_values, "count")}];
  }

  v15.receiver = self;
  v15.super_class = _PASStringPairs;
  v11 = [(_PASStringPairs *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keys, keys);
    objc_storeStrong(&v12->_values, values);
  }

  return v12;
}

@end