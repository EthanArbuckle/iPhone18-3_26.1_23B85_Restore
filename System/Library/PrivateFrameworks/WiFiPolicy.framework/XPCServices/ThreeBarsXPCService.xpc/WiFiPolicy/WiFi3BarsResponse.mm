@interface WiFi3BarsResponse
- (WiFi3BarsResponse)initWithCoder:(id)coder;
@end

@implementation WiFi3BarsResponse

- (WiFi3BarsResponse)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = WiFi3BarsResponse;
  coderCopy = coder;
  v4 = [(WiFi3BarsResponse *)&v11 init];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v5, v6, objc_opt_class(), 0];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"results"];

  results = v4->_results;
  v4->_results = v8;

  return v4;
}

@end