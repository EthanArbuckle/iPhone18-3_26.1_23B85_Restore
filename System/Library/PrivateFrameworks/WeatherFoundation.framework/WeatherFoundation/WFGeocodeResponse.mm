@interface WFGeocodeResponse
- (WFGeocodeResponse)initWithCoder:(id)coder;
- (WFGeocodeResponse)initWithIdentifier:(id)identifier location:(id)location;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFGeocodeResponse

- (WFGeocodeResponse)initWithIdentifier:(id)identifier location:(id)location
{
  locationCopy = location;
  v12.receiver = self;
  v12.super_class = WFGeocodeResponse;
  v8 = [(WFResponse *)&v12 initWithIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, location);
    v10 = v9;
  }

  return v9;
}

- (WFGeocodeResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFGeocodeResponse;
  v5 = [(WFResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFGeocodeResponse;
  coderCopy = coder;
  [(WFResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFGeocodeResponse *)self location:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"location"];
}

@end