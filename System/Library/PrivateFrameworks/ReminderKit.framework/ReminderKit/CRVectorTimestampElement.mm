@interface CRVectorTimestampElement
- (CRVectorTimestampElement)initWithCoder:(id)coder;
- (int64_t)rem_compareToVectorTimestampElement:(id)element;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRVectorTimestampElement

- (int64_t)rem_compareToVectorTimestampElement:(id)element
{
  elementCopy = element;
  clock = [(CRVectorTimestampElement *)self clock];
  if (clock >= [elementCopy clock])
  {
    clock2 = [(CRVectorTimestampElement *)self clock];
    if (clock2 > [elementCopy clock])
    {
      v6 = 1;
      goto LABEL_7;
    }

    subclock = [(CRVectorTimestampElement *)self subclock];
    if (subclock >= [elementCopy subclock])
    {
      subclock2 = [(CRVectorTimestampElement *)self subclock];
      v6 = subclock2 > [elementCopy subclock];
      goto LABEL_7;
    }
  }

  v6 = -1;
LABEL_7:

  return v6;
}

- (CRVectorTimestampElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CRVectorTimestampElement;
  v5 = [(CRVectorTimestampElement *)&v7 init];
  if (v5)
  {
    -[CRVectorTimestampElement setClock:](v5, "setClock:", [coderCopy decodeInt64ForKey:@"clock"]);
    -[CRVectorTimestampElement setSubclock:](v5, "setSubclock:", [coderCopy decodeInt64ForKey:@"subclock"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[CRVectorTimestampElement clock](self forKey:{"clock"), @"clock"}];
  [coderCopy encodeInt64:-[CRVectorTimestampElement subclock](self forKey:{"subclock"), @"subclock"}];
}

@end