@interface STMapItem
- (STMapItem)initWithCoder:(id)a3;
- (STMapItem)initWithMKMapItem:(id)a3;
- (id)_aceContextObjectValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMapItem

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STMapItem;
  v4 = a3;
  [(STSiriModelObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_title forKey:{@"_title", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_location forKey:@"_location"];
  [v4 encodeObject:self->_placeData forKey:@"_placeData"];
  [v4 encodeBool:self->_isCurrentLocation forKey:@"_isCurrentLocation"];
  [v4 encodeObject:self->_businessID forKey:@"_businessID"];
  [v4 encodeObject:self->_localSearchProviderID forKey:@"_localSearchProviderID"];
}

- (STMapItem)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = STMapItem;
  v5 = [(STSiriModelObject *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_placeData"];
    placeData = v5->_placeData;
    v5->_placeData = v10;

    v5->_isCurrentLocation = [v4 decodeBoolForKey:@"_isCurrentLocation"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_businessID"];
    businessID = v5->_businessID;
    v5->_businessID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localSearchProviderID"];
    localSearchProviderID = v5->_localSearchProviderID;
    v5->_localSearchProviderID = v14;
  }

  return v5;
}

- (id)_aceContextObjectValue
{
  v3 = objc_alloc_init(MEMORY[0x277D474B8]);
  v4 = objc_alloc_init(MEMORY[0x277D47508]);
  v5 = MEMORY[0x277CCABB0];
  [(CLLocation *)self->_location coordinate];
  v6 = [v5 numberWithDouble:?];
  [v4 setLatitude:v6];

  v7 = MEMORY[0x277CCABB0];
  [(CLLocation *)self->_location coordinate];
  v9 = [v7 numberWithDouble:v8];
  [v4 setLongitude:v9];

  [v3 setLocation:v4];
  [v3 setLabel:self->_title];
  [v3 setPlaceData2:self->_placeData];
  [v3 setLocalSearchProviderId:self->_localSearchProviderID];
  if (self->_isCurrentLocation)
  {
    [v3 setDetailType:*MEMORY[0x277D48540]];
  }

  else if (self->_businessID)
  {
    [v3 setDetailType:*MEMORY[0x277D48538]];
    v10 = objc_alloc_init(MEMORY[0x277D47488]);
    if (self->_businessID)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"urn:places:%lld", -[NSNumber unsignedLongLongValue](self->_businessID, "unsignedLongLongValue")];
      v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];
      [v10 setIdentifier:v12];
    }

    [v3 setDetail:v10];
  }

  return v3;
}

- (STMapItem)initWithMKMapItem:(id)a3
{
  v4 = a3;
  if (initWithMKMapItem__onceToken != -1)
  {
    dispatch_once(&initWithMKMapItem__onceToken, &__block_literal_global);
  }

  v21.receiver = self;
  v21.super_class = STMapItem;
  v5 = [(STMapItem *)&v21 init];
  if (v5)
  {
    v6 = [v4 name];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [v4 placemark];
    v10 = [v9 location];
    v11 = [v10 copy];
    location = v5->_location;
    v5->_location = v11;

    v13 = [v4 _placeDataAsData];
    placeData = v5->_placeData;
    v5->_placeData = v13;

    v5->_isCurrentLocation = [v4 isCurrentLocation];
    if ([v4 _hasMUID])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "_muid")}];
      businessID = v5->_businessID;
      v5->_businessID = v15;
    }

    v17 = [v4 _geoMapItem];
    if ([v17 _hasResultProviderID])
    {
      v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v17, "_resultProviderID")}];
      localSearchProviderID = v5->_localSearchProviderID;
      v5->_localSearchProviderID = v18;
    }
  }

  return v5;
}

id __31__STMapItem_initWithMKMapItem___block_invoke()
{
  if (initMKMapItem_sOnce != -1)
  {
    dispatch_once(&initMKMapItem_sOnce, &__block_literal_global_55);
  }

  v1 = classMKMapItem;

  return v1;
}

@end