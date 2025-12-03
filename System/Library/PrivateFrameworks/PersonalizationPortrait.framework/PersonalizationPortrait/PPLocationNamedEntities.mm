@interface PPLocationNamedEntities
- (PPLocationNamedEntities)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setScore:(double)score;
@end

@implementation PPLocationNamedEntities

- (PPLocationNamedEntities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = PPLocationNamedEntities;
  v5 = [(PPLocationNamedEntities *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loc"];
    locationName = v5->_locationName;
    v5->_locationName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"str"];
    streetAddress = v5->_streetAddress;
    v5->_streetAddress = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cty"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sta"];
    stateOrProvince = v5->_stateOrProvince;
    v5->_stateOrProvince = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pst"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cnt"];
    country = v5->_country;
    v5->_country = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uls"];
    unstructuredLocationString = v5->_unstructuredLocationString;
    v5->_unstructuredLocationString = v18;

    [coderCopy decodeDoubleForKey:@"sco"];
    v5->_score = v20;
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doc"];
    documentId = v5->_documentId;
    v5->_documentId = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mit"];
    mapItem = v5->_mapItem;
    v5->_mapItem = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cll"];
    location = v5->_location;
    v5->_location = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dat"];
    date = v5->_date;
    v5->_date = v27;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  locationName = self->_locationName;
  coderCopy = coder;
  [coderCopy encodeObject:locationName forKey:@"loc"];
  [coderCopy encodeObject:self->_streetAddress forKey:@"str"];
  [coderCopy encodeObject:self->_city forKey:@"cty"];
  [coderCopy encodeObject:self->_stateOrProvince forKey:@"sta"];
  [coderCopy encodeObject:self->_postalCode forKey:@"pst"];
  [coderCopy encodeObject:self->_country forKey:@"cnt"];
  [coderCopy encodeObject:self->_unstructuredLocationString forKey:@"uls"];
  [coderCopy encodeDouble:@"sco" forKey:self->_score];
  [coderCopy encodeObject:self->_documentId forKey:@"doc"];
  [coderCopy encodeObject:self->_mapItem forKey:@"mit"];
  [coderCopy encodeObject:self->_location forKey:@"cll"];
  [coderCopy encodeObject:self->_date forKey:@"dat"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_locationName copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_streetAddress copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_city copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_stateOrProvince copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_postalCode copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSString *)self->_country copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSString *)self->_unstructuredLocationString copyWithZone:zone];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  *(v5 + 64) = self->_score;
  v20 = [(NSString *)self->_documentId copyWithZone:zone];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  v22 = [(NSData *)self->_mapItem copyWithZone:zone];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  v24 = [(CLLocation *)self->_location copyWithZone:zone];
  v25 = *(v5 + 88);
  *(v5 + 88) = v24;

  v26 = [(NSDate *)self->_date copyWithZone:zone];
  v27 = *(v5 + 96);
  *(v5 + 96) = v26;

  return v5;
}

- (void)setScore:(double)score
{
  v3 = fmax(score, 0.0);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  self->_score = v3;
}

@end