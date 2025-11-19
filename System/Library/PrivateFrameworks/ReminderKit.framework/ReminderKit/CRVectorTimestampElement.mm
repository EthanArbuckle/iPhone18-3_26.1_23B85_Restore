@interface CRVectorTimestampElement
- (CRVectorTimestampElement)initWithCoder:(id)a3;
- (int64_t)rem_compareToVectorTimestampElement:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRVectorTimestampElement

- (int64_t)rem_compareToVectorTimestampElement:(id)a3
{
  v4 = a3;
  v5 = [(CRVectorTimestampElement *)self clock];
  if (v5 >= [v4 clock])
  {
    v7 = [(CRVectorTimestampElement *)self clock];
    if (v7 > [v4 clock])
    {
      v6 = 1;
      goto LABEL_7;
    }

    v8 = [(CRVectorTimestampElement *)self subclock];
    if (v8 >= [v4 subclock])
    {
      v9 = [(CRVectorTimestampElement *)self subclock];
      v6 = v9 > [v4 subclock];
      goto LABEL_7;
    }
  }

  v6 = -1;
LABEL_7:

  return v6;
}

- (CRVectorTimestampElement)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CRVectorTimestampElement;
  v5 = [(CRVectorTimestampElement *)&v7 init];
  if (v5)
  {
    -[CRVectorTimestampElement setClock:](v5, "setClock:", [v4 decodeInt64ForKey:@"clock"]);
    -[CRVectorTimestampElement setSubclock:](v5, "setSubclock:", [v4 decodeInt64ForKey:@"subclock"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[CRVectorTimestampElement clock](self forKey:{"clock"), @"clock"}];
  [v4 encodeInt64:-[CRVectorTimestampElement subclock](self forKey:{"subclock"), @"subclock"}];
}

@end