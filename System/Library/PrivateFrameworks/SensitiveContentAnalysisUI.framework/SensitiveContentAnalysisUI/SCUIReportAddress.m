@interface SCUIReportAddress
- (SCUIReportAddress)initWithAddress:(id)a3 city:(id)a4 state:(id)a5 country:(id)a6 postCode:(id)a7;
@end

@implementation SCUIReportAddress

- (SCUIReportAddress)initWithAddress:(id)a3 city:(id)a4 state:(id)a5 country:(id)a6 postCode:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = SCUIReportAddress;
  v17 = [(SCUIReportAddress *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    address = v17->_address;
    v17->_address = v18;

    v20 = [v13 copy];
    city = v17->_city;
    v17->_city = v20;

    v22 = [v14 copy];
    state = v17->_state;
    v17->_state = v22;

    v24 = [v15 copy];
    country = v17->_country;
    v17->_country = v24;

    v26 = [v16 copy];
    postCode = v17->_postCode;
    v17->_postCode = v26;
  }

  return v17;
}

@end