@interface RTStateDepictionOneState
- (RTStateDepictionOneState)initWithCoder:(id)a3;
- (RTStateDepictionOneState)initWithLocation:(id)a3 type:(int64_t)a4 typeSource:(unint64_t)a5 customLabel:(id)a6 mapItem:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStateDepictionOneState

- (RTStateDepictionOneState)initWithLocation:(id)a3 type:(int64_t)a4 typeSource:(unint64_t)a5 customLabel:(id)a6 mapItem:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = RTStateDepictionOneState;
  v16 = [(RTStateDepictionOneState *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_location, a3);
    v17->_type = a4;
    v17->_typeSource = a5;
    objc_storeStrong(&v17->_mapItem, a7);
    geocodeDate = v17->_geocodeDate;
    v17->_geocodeDate = 0;

    v19 = objc_opt_new();
    histEntryExit_s = v17->_histEntryExit_s;
    v17->_histEntryExit_s = v19;

    v21 = [v14 copy];
    customLabel = v17->_customLabel;
    v17->_customLabel = v21;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTStateDepictionOneState *)self location];
  [v4 encodeObject:v5 forKey:@"location"];

  [v4 encodeInteger:-[RTStateDepictionOneState type](self forKey:{"type"), @"type"}];
  [v4 encodeInteger:-[RTStateDepictionOneState typeSource](self forKey:{"typeSource"), @"typeSource2.0"}];
  v6 = MEMORY[0x277D0EBC0];
  v7 = [(RTStateDepictionOneState *)self geoMapItem];
  v8 = [v6 mapItemStorageForGEOMapItem:v7];
  [v4 encodeObject:v8 forKey:@"mapItem"];

  [v4 encodeInteger:-[RTStateDepictionOneState mapItemSource](self forKey:{"mapItemSource"), @"mapItemSource"}];
  v9 = [(RTStateDepictionOneState *)self geocodeDate];
  [v4 encodeObject:v9 forKey:@"geocodeDate"];

  v10 = [(RTStateDepictionOneState *)self histEntryExit_s];
  [v4 encodeObject:v10 forKey:@"histEntryExit_s"];

  v11 = [(RTStateDepictionOneState *)self customLabel];
  [v4 encodeObject:v11 forKey:@"customLabel"];
}

- (RTStateDepictionOneState)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = RTStateDepictionOneState;
  v5 = [(RTStateDepictionOneState *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v6;

    if ([v4 containsValueForKey:@"type"])
    {
      v8 = [v4 decodeIntegerForKey:@"type"];
    }

    else
    {
      v8 = -1;
    }

    v5->_type = v8;
    if ([v4 containsValueForKey:@"typeSource2.0"])
    {
      v9 = [v4 decodeIntegerForKey:@"typeSource2.0"];
    }

    else
    {
      v9 = 0;
    }

    v5->_typeSource = v9;
    if ([v4 containsValueForKey:@"typeSource"])
    {
      v10 = [v4 decodeIntegerForKey:@"typeSource"] + 1;
      if (v10 <= 6)
      {
        v5->_typeSource = qword_230B01578[v10];
      }
    }

    if ([v4 containsValueForKey:@"mapItem"])
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
      geoMapItem = v5->_geoMapItem;
      v5->_geoMapItem = v11;
    }

    if ([v4 containsValueForKey:@"mapItemSource"])
    {
      v13 = [v4 decodeIntegerForKey:@"mapItemSource"];
    }

    else
    {
      v13 = 0;
    }

    v5->_mapItemSource = v13;
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geocodeDate"];
    geocodeDate = v5->_geocodeDate;
    v5->_geocodeDate = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"histEntryExit_s"];
    histEntryExit_s = v5->_histEntryExit_s;
    v5->_histEntryExit_s = v19;

    if ([v4 containsValueForKey:@"customLabel"])
    {
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customLabel"];
      customLabel = v5->_customLabel;
      v5->_customLabel = v21;
    }
  }

  return v5;
}

- (id)description
{
  v27 = MEMORY[0x277CCACA8];
  v26 = [(RTStateDepictionOneState *)self location];
  v23 = [MEMORY[0x277D01170] locationOfInterestTypeToString:{-[RTStateDepictionOneState type](self, "type")}];
  v21 = [MEMORY[0x277D01170] locationOfInterestTypeSourceToString:{-[RTStateDepictionOneState typeSource](self, "typeSource")}];
  v30 = [(RTStateDepictionOneState *)self histEntryExit_s];
  v19 = [v30 count];
  v29 = [(RTStateDepictionOneState *)self mapItem];
  v3 = [v29 address];
  v25 = [(RTStateDepictionOneState *)self mapItem];
  v24 = [v25 location];
  [v24 latitude];
  v5 = v4;
  v22 = [(RTStateDepictionOneState *)self mapItem];
  v20 = [v22 location];
  [v20 longitude];
  v7 = v6;
  v18 = [(RTStateDepictionOneState *)self mapItem];
  v8 = [v18 extendedAttributes];
  v9 = [v8 addressIdentifier];
  v10 = [(RTStateDepictionOneState *)self mapItem];
  v11 = [v10 extendedAttributes];
  if ([v11 isMe])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = MEMORY[0x277D011A0];
  v14 = [(RTStateDepictionOneState *)self mapItem];
  v15 = [v13 sourceToString:{objc_msgSend(v14, "source")}];
  v16 = [(RTStateDepictionOneState *)self customLabel];
  v28 = [v27 stringWithFormat:@"location, %@, type, %@, typeSource, %@, visits, %lu, mapItem, address, %@, location, <%f, %f>, addressIdentifier, %@, isMe, %@, mapItemSource, %@, customLabel, %@", v26, v23, v21, v19, v3, v5, v7, v9, v12, v15, v16];

  return v28;
}

@end