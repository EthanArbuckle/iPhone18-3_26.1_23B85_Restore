@interface _PASStringPairs
- (_PASStringPairs)initWithKeys:(id)a3 values:(id)a4;
@end

@implementation _PASStringPairs

- (_PASStringPairs)initWithKeys:(id)a3 values:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 count];
  if (v10 != [v9 count])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_PASStringPairs.m" lineNumber:16 description:{@"number of elements don't match: keys - %lu, values - %lu", -[NSArray count](self->_keys, "count"), -[NSArray count](self->_values, "count")}];
  }

  v15.receiver = self;
  v15.super_class = _PASStringPairs;
  v11 = [(_PASStringPairs *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keys, a3);
    objc_storeStrong(&v12->_values, a4);
  }

  return v12;
}

@end