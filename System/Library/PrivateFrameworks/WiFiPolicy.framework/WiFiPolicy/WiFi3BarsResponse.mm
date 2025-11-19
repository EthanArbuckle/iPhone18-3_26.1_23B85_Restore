@interface WiFi3BarsResponse
- (WiFi3BarsResponse)initWithCoder:(id)a3;
@end

@implementation WiFi3BarsResponse

- (WiFi3BarsResponse)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = WiFi3BarsResponse;
  v3 = a3;
  v4 = [(WiFi3BarsResponse *)&v12 init];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v3 decodeObjectOfClasses:v8 forKey:@"results"];

  results = v4->_results;
  v4->_results = v9;

  return v4;
}

@end