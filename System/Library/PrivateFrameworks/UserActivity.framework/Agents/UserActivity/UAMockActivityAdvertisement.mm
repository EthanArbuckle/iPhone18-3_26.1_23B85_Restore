@interface UAMockActivityAdvertisement
- (UAMockActivityAdvertisement)init;
- (UAMockActivityAdvertisement)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UAMockActivityAdvertisement

- (UAMockActivityAdvertisement)init
{
  v3.receiver = self;
  v3.super_class = UAMockActivityAdvertisement;
  return [(UAMockActivityAdvertisement *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[UAMockActivityAdvertisement advertisementVersion](self forKey:{"advertisementVersion"), @"version"}];
  advertisementPayload = [(UAMockActivityAdvertisement *)self advertisementPayload];
  [coderCopy encodeObject:advertisementPayload forKey:@"payload"];

  options = [(UAMockActivityAdvertisement *)self options];
  [coderCopy encodeObject:options forKey:@"options"];

  device = [(UAMockActivityAdvertisement *)self device];
  [coderCopy encodeObject:device forKey:@"device"];
}

- (UAMockActivityAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UAMockActivityAdvertisement;
  v5 = [(UAMockActivityAdvertisement *)&v13 init];
  if (v5)
  {
    v5->_advertisementVersion = [coderCopy decodeInt32ForKey:@"version"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    advertisementPayload = v5->_advertisementPayload;
    v5->_advertisementPayload = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    options = v5->_options;
    v5->_options = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v10;
  }

  return v5;
}

- (id)description
{
  advertisementPayload = [(UAMockActivityAdvertisement *)self advertisementPayload];
  v6 = sub_100006EF4(advertisementPayload);
  options = [(UAMockActivityAdvertisement *)self options];
  if (options)
  {
    options2 = [(UAMockActivityAdvertisement *)self options];
    v3 = [options2 description];
    v8 = sub_100009684(v3);
  }

  else
  {
    v8 = &stru_1000C67D0;
  }

  device = [(UAMockActivityAdvertisement *)self device];
  v10 = [NSString stringWithFormat:@"MockAdvertisement($%@/%@ from %@)", v6, v8, device];

  if (options)
  {
  }

  return v10;
}

@end