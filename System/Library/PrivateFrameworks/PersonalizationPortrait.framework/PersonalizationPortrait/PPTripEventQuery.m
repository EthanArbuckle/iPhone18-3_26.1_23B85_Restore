@interface PPTripEventQuery
- (PPTripEventQuery)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPTripEventQuery

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PPEventQuery *)self fromDate];
  v5 = [(PPEventQuery *)self toDate];
  v6 = [v3 initWithFormat:@"<PPTripEventQuery f:%@ t:%@ o:%d>", v4, v5, self->_tripOptions];

  return v6;
}

- (PPTripEventQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PPTripEventQuery;
  v5 = [(PPEventQuery *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_tripOptions = [v4 decodeInt32ForKey:@"triop"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PPTripEventQuery;
  v4 = a3;
  [(PPEventQuery *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_tripOptions forKey:{@"triop", v5.receiver, v5.super_class}];
}

@end