@interface RTStateDepictionOneState
- (RTStateDepictionOneState)initWithCoder:(id)coder;
- (RTStateDepictionOneState)initWithLocation:(id)location type:(int64_t)type typeSource:(unint64_t)source customLabel:(id)label mapItem:(id)item;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStateDepictionOneState

- (RTStateDepictionOneState)initWithLocation:(id)location type:(int64_t)type typeSource:(unint64_t)source customLabel:(id)label mapItem:(id)item
{
  locationCopy = location;
  labelCopy = label;
  itemCopy = item;
  v24.receiver = self;
  v24.super_class = RTStateDepictionOneState;
  v16 = [(RTStateDepictionOneState *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_location, location);
    v17->_type = type;
    v17->_typeSource = source;
    objc_storeStrong(&v17->_mapItem, item);
    geocodeDate = v17->_geocodeDate;
    v17->_geocodeDate = 0;

    v19 = objc_opt_new();
    histEntryExit_s = v17->_histEntryExit_s;
    v17->_histEntryExit_s = v19;

    v21 = [labelCopy copy];
    customLabel = v17->_customLabel;
    v17->_customLabel = v21;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(RTStateDepictionOneState *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  [coderCopy encodeInteger:-[RTStateDepictionOneState type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[RTStateDepictionOneState typeSource](self forKey:{"typeSource"), @"typeSource2.0"}];
  v6 = MEMORY[0x277D0EBC0];
  geoMapItem = [(RTStateDepictionOneState *)self geoMapItem];
  v8 = [v6 mapItemStorageForGEOMapItem:geoMapItem];
  [coderCopy encodeObject:v8 forKey:@"mapItem"];

  [coderCopy encodeInteger:-[RTStateDepictionOneState mapItemSource](self forKey:{"mapItemSource"), @"mapItemSource"}];
  geocodeDate = [(RTStateDepictionOneState *)self geocodeDate];
  [coderCopy encodeObject:geocodeDate forKey:@"geocodeDate"];

  histEntryExit_s = [(RTStateDepictionOneState *)self histEntryExit_s];
  [coderCopy encodeObject:histEntryExit_s forKey:@"histEntryExit_s"];

  customLabel = [(RTStateDepictionOneState *)self customLabel];
  [coderCopy encodeObject:customLabel forKey:@"customLabel"];
}

- (RTStateDepictionOneState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = RTStateDepictionOneState;
  v5 = [(RTStateDepictionOneState *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v6;

    if ([coderCopy containsValueForKey:@"type"])
    {
      v8 = [coderCopy decodeIntegerForKey:@"type"];
    }

    else
    {
      v8 = -1;
    }

    v5->_type = v8;
    if ([coderCopy containsValueForKey:@"typeSource2.0"])
    {
      v9 = [coderCopy decodeIntegerForKey:@"typeSource2.0"];
    }

    else
    {
      v9 = 0;
    }

    v5->_typeSource = v9;
    if ([coderCopy containsValueForKey:@"typeSource"])
    {
      v10 = [coderCopy decodeIntegerForKey:@"typeSource"] + 1;
      if (v10 <= 6)
      {
        v5->_typeSource = qword_230B01578[v10];
      }
    }

    if ([coderCopy containsValueForKey:@"mapItem"])
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
      geoMapItem = v5->_geoMapItem;
      v5->_geoMapItem = v11;
    }

    if ([coderCopy containsValueForKey:@"mapItemSource"])
    {
      v13 = [coderCopy decodeIntegerForKey:@"mapItemSource"];
    }

    else
    {
      v13 = 0;
    }

    v5->_mapItemSource = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geocodeDate"];
    geocodeDate = v5->_geocodeDate;
    v5->_geocodeDate = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"histEntryExit_s"];
    histEntryExit_s = v5->_histEntryExit_s;
    v5->_histEntryExit_s = v19;

    if ([coderCopy containsValueForKey:@"customLabel"])
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customLabel"];
      customLabel = v5->_customLabel;
      v5->_customLabel = v21;
    }
  }

  return v5;
}

- (id)description
{
  v27 = MEMORY[0x277CCACA8];
  location = [(RTStateDepictionOneState *)self location];
  v23 = [MEMORY[0x277D01170] locationOfInterestTypeToString:{-[RTStateDepictionOneState type](self, "type")}];
  v21 = [MEMORY[0x277D01170] locationOfInterestTypeSourceToString:{-[RTStateDepictionOneState typeSource](self, "typeSource")}];
  histEntryExit_s = [(RTStateDepictionOneState *)self histEntryExit_s];
  v19 = [histEntryExit_s count];
  mapItem = [(RTStateDepictionOneState *)self mapItem];
  address = [mapItem address];
  mapItem2 = [(RTStateDepictionOneState *)self mapItem];
  location2 = [mapItem2 location];
  [location2 latitude];
  v5 = v4;
  mapItem3 = [(RTStateDepictionOneState *)self mapItem];
  location3 = [mapItem3 location];
  [location3 longitude];
  v7 = v6;
  mapItem4 = [(RTStateDepictionOneState *)self mapItem];
  extendedAttributes = [mapItem4 extendedAttributes];
  addressIdentifier = [extendedAttributes addressIdentifier];
  mapItem5 = [(RTStateDepictionOneState *)self mapItem];
  extendedAttributes2 = [mapItem5 extendedAttributes];
  if ([extendedAttributes2 isMe])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = MEMORY[0x277D011A0];
  mapItem6 = [(RTStateDepictionOneState *)self mapItem];
  v15 = [v13 sourceToString:{objc_msgSend(mapItem6, "source")}];
  customLabel = [(RTStateDepictionOneState *)self customLabel];
  v28 = [v27 stringWithFormat:@"location, %@, type, %@, typeSource, %@, visits, %lu, mapItem, address, %@, location, <%f, %f>, addressIdentifier, %@, isMe, %@, mapItemSource, %@, customLabel, %@", location, v23, v21, v19, address, v5, v7, addressIdentifier, v12, v15, customLabel];

  return v28;
}

@end