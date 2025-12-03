@interface PPHighlightedEventQuery
- (id)description;
@end

@implementation PPHighlightedEventQuery

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  fromDate = [(PPEventQuery *)self fromDate];
  toDate = [(PPEventQuery *)self toDate];
  v6 = [v3 initWithFormat:@"<PPHighlightedEventQuery f:%@ t:%@ o:%d>", fromDate, toDate, self->_highlightsOptions];

  return v6;
}

@end