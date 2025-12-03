@interface PPTripEventQuery
- (PPTripEventQuery)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPTripEventQuery

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  fromDate = [(PPEventQuery *)self fromDate];
  toDate = [(PPEventQuery *)self toDate];
  v6 = [v3 initWithFormat:@"<PPTripEventQuery f:%@ t:%@ o:%d>", fromDate, toDate, self->_tripOptions];

  return v6;
}

- (PPTripEventQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PPTripEventQuery;
  v5 = [(PPEventQuery *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_tripOptions = [coderCopy decodeInt32ForKey:@"triop"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PPTripEventQuery;
  coderCopy = coder;
  [(PPEventQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_tripOptions forKey:{@"triop", v5.receiver, v5.super_class}];
}

@end