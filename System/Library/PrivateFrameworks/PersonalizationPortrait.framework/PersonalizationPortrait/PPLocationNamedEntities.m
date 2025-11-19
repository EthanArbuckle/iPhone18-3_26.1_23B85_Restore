@interface PPLocationNamedEntities
- (PPLocationNamedEntities)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setScore:(double)a3;
@end

@implementation PPLocationNamedEntities

- (PPLocationNamedEntities)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PPLocationNamedEntities;
  v5 = [(PPLocationNamedEntities *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loc"];
    locationName = v5->_locationName;
    v5->_locationName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"str"];
    streetAddress = v5->_streetAddress;
    v5->_streetAddress = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cty"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sta"];
    stateOrProvince = v5->_stateOrProvince;
    v5->_stateOrProvince = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pst"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cnt"];
    country = v5->_country;
    v5->_country = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uls"];
    unstructuredLocationString = v5->_unstructuredLocationString;
    v5->_unstructuredLocationString = v18;

    [v4 decodeDoubleForKey:@"sco"];
    v5->_score = v20;
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doc"];
    documentId = v5->_documentId;
    v5->_documentId = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mit"];
    mapItem = v5->_mapItem;
    v5->_mapItem = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cll"];
    location = v5->_location;
    v5->_location = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dat"];
    date = v5->_date;
    v5->_date = v27;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  locationName = self->_locationName;
  v5 = a3;
  [v5 encodeObject:locationName forKey:@"loc"];
  [v5 encodeObject:self->_streetAddress forKey:@"str"];
  [v5 encodeObject:self->_city forKey:@"cty"];
  [v5 encodeObject:self->_stateOrProvince forKey:@"sta"];
  [v5 encodeObject:self->_postalCode forKey:@"pst"];
  [v5 encodeObject:self->_country forKey:@"cnt"];
  [v5 encodeObject:self->_unstructuredLocationString forKey:@"uls"];
  [v5 encodeDouble:@"sco" forKey:self->_score];
  [v5 encodeObject:self->_documentId forKey:@"doc"];
  [v5 encodeObject:self->_mapItem forKey:@"mit"];
  [v5 encodeObject:self->_location forKey:@"cll"];
  [v5 encodeObject:self->_date forKey:@"dat"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_locationName copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_streetAddress copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_city copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_stateOrProvince copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_postalCode copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSString *)self->_country copyWithZone:a3];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSString *)self->_unstructuredLocationString copyWithZone:a3];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  *(v5 + 64) = self->_score;
  v20 = [(NSString *)self->_documentId copyWithZone:a3];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  v22 = [(NSData *)self->_mapItem copyWithZone:a3];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  v24 = [(CLLocation *)self->_location copyWithZone:a3];
  v25 = *(v5 + 88);
  *(v5 + 88) = v24;

  v26 = [(NSDate *)self->_date copyWithZone:a3];
  v27 = *(v5 + 96);
  *(v5 + 96) = v26;

  return v5;
}

- (void)setScore:(double)a3
{
  v3 = fmax(a3, 0.0);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  self->_score = v3;
}

@end