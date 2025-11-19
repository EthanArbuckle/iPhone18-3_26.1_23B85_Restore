@interface SPSearchResultMarker
- (SPSearchResultMarker)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSearchResultMarker

- (SPSearchResultMarker)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  [(SPSearchResultMarker *)self setDate:v5];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPSearchResultMarker *)self date];
  [v4 encodeObject:v5 forKey:@"date"];
}

@end