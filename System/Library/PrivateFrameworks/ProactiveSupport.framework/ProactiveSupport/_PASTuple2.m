@interface _PASTuple2
+ (id)tupleWithFirst:(id)a3 second:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTuple2:(id)a3;
- (_PASTuple2)initWithFirst:(id)a3 second:(id)a4;
- (id)description;
@end

@implementation _PASTuple2

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_PASTuple2(%@, %@)", self->_first, self->_second];

  return v2;
}

- (BOOL)isEqualToTuple2:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_first;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_PASTuple2 *)self isEqualToTuple2:v5];
  }

  return v6;
}

- (_PASTuple2)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PASTuple2;
  v9 = [(_PASTuple2 *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

+ (id)tupleWithFirst:(id)a3 second:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_PASTuple2 alloc] initWithFirst:v6 second:v5];

  return v7;
}

@end