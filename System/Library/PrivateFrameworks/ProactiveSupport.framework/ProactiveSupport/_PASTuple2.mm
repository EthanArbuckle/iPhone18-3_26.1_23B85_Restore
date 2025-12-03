@interface _PASTuple2
+ (id)tupleWithFirst:(id)first second:(id)second;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTuple2:(id)tuple2;
- (_PASTuple2)initWithFirst:(id)first second:(id)second;
- (id)description;
@end

@implementation _PASTuple2

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_PASTuple2(%@, %@)", self->_first, self->_second];

  return v2;
}

- (BOOL)isEqualToTuple2:(id)tuple2
{
  tuple2Copy = tuple2;
  if (!tuple2Copy)
  {
    goto LABEL_4;
  }

  v5 = self->_first;
  v6 = v5;
  if (v5 == tuple2Copy[1])
  {
  }

  else
  {
    v7 = [v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_second;
  v10 = v9;
  if (v9 == tuple2Copy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v9 isEqual:?];
  }

LABEL_10:
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_PASTuple2 *)self isEqualToTuple2:v5];
  }

  return v6;
}

- (_PASTuple2)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = _PASTuple2;
  v9 = [(_PASTuple2 *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
  }

  return v10;
}

+ (id)tupleWithFirst:(id)first second:(id)second
{
  secondCopy = second;
  firstCopy = first;
  v7 = [[_PASTuple2 alloc] initWithFirst:firstCopy second:secondCopy];

  return v7;
}

@end