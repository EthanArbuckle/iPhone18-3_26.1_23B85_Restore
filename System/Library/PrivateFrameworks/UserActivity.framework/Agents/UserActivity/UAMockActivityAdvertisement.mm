@interface UAMockActivityAdvertisement
- (UAMockActivityAdvertisement)init;
- (UAMockActivityAdvertisement)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UAMockActivityAdvertisement

- (UAMockActivityAdvertisement)init
{
  v3.receiver = self;
  v3.super_class = UAMockActivityAdvertisement;
  return [(UAMockActivityAdvertisement *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[UAMockActivityAdvertisement advertisementVersion](self forKey:{"advertisementVersion"), @"version"}];
  v5 = [(UAMockActivityAdvertisement *)self advertisementPayload];
  [v4 encodeObject:v5 forKey:@"payload"];

  v6 = [(UAMockActivityAdvertisement *)self options];
  [v4 encodeObject:v6 forKey:@"options"];

  v7 = [(UAMockActivityAdvertisement *)self device];
  [v4 encodeObject:v7 forKey:@"device"];
}

- (UAMockActivityAdvertisement)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UAMockActivityAdvertisement;
  v5 = [(UAMockActivityAdvertisement *)&v13 init];
  if (v5)
  {
    v5->_advertisementVersion = [v4 decodeInt32ForKey:@"version"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    advertisementPayload = v5->_advertisementPayload;
    v5->_advertisementPayload = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    options = v5->_options;
    v5->_options = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v10;
  }

  return v5;
}

- (id)description
{
  v5 = [(UAMockActivityAdvertisement *)self advertisementPayload];
  v6 = sub_100006EF4(v5);
  v7 = [(UAMockActivityAdvertisement *)self options];
  if (v7)
  {
    v2 = [(UAMockActivityAdvertisement *)self options];
    v3 = [v2 description];
    v8 = sub_100009684(v3);
  }

  else
  {
    v8 = &stru_1000C67D0;
  }

  v9 = [(UAMockActivityAdvertisement *)self device];
  v10 = [NSString stringWithFormat:@"MockAdvertisement($%@/%@ from %@)", v6, v8, v9];

  if (v7)
  {
  }

  return v10;
}

@end