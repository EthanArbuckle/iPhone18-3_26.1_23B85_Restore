@interface SPSearchResultMarker
- (SPSearchResultMarker)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPSearchResultMarker

- (SPSearchResultMarker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  [(SPSearchResultMarker *)self setDate:v5];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(SPSearchResultMarker *)self date];
  [coderCopy encodeObject:date forKey:@"date"];
}

@end