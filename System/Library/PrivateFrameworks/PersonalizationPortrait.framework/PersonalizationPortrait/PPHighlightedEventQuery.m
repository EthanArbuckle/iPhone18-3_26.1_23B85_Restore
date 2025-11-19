@interface PPHighlightedEventQuery
- (id)description;
@end

@implementation PPHighlightedEventQuery

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PPEventQuery *)self fromDate];
  v5 = [(PPEventQuery *)self toDate];
  v6 = [v3 initWithFormat:@"<PPHighlightedEventQuery f:%@ t:%@ o:%d>", v4, v5, self->_highlightsOptions];

  return v6;
}

@end