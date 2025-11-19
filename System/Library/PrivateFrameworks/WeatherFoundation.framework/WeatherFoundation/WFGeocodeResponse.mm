@interface WFGeocodeResponse
- (WFGeocodeResponse)initWithCoder:(id)a3;
- (WFGeocodeResponse)initWithIdentifier:(id)a3 location:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFGeocodeResponse

- (WFGeocodeResponse)initWithIdentifier:(id)a3 location:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WFGeocodeResponse;
  v8 = [(WFResponse *)&v12 initWithIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, a4);
    v10 = v9;
  }

  return v9;
}

- (WFGeocodeResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFGeocodeResponse;
  v5 = [(WFResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFGeocodeResponse;
  v4 = a3;
  [(WFResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFGeocodeResponse *)self location:v6.receiver];
  [v4 encodeObject:v5 forKey:@"location"];
}

@end