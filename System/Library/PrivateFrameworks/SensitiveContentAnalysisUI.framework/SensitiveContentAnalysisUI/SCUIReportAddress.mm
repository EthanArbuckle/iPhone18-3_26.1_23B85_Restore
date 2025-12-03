@interface SCUIReportAddress
- (SCUIReportAddress)initWithAddress:(id)address city:(id)city state:(id)state country:(id)country postCode:(id)code;
@end

@implementation SCUIReportAddress

- (SCUIReportAddress)initWithAddress:(id)address city:(id)city state:(id)state country:(id)country postCode:(id)code
{
  addressCopy = address;
  cityCopy = city;
  stateCopy = state;
  countryCopy = country;
  codeCopy = code;
  v29.receiver = self;
  v29.super_class = SCUIReportAddress;
  v17 = [(SCUIReportAddress *)&v29 init];
  if (v17)
  {
    v18 = [addressCopy copy];
    address = v17->_address;
    v17->_address = v18;

    v20 = [cityCopy copy];
    city = v17->_city;
    v17->_city = v20;

    v22 = [stateCopy copy];
    state = v17->_state;
    v17->_state = v22;

    v24 = [countryCopy copy];
    country = v17->_country;
    v17->_country = v24;

    v26 = [codeCopy copy];
    postCode = v17->_postCode;
    v17->_postCode = v26;
  }

  return v17;
}

@end