@interface REMStructuredLocation
- (BOOL)isContentEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (REMStructuredLocation)initWithCoder:(id)coder;
- (REMStructuredLocation)initWithTitle:(id)title;
- (REMStructuredLocation)initWithTitle:(id)title locationUID:(id)d;
- (REMStructuredLocation)initWithTitle:(id)title locationUID:(id)d latitude:(double)latitude longitude:(double)longitude radius:(double)radius address:(id)address routing:(id)routing referenceFrameString:(id)self0 contactLabel:(id)self1 mapKitHandle:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)displayName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMStructuredLocation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMStructuredLocation alloc];
  title = [(REMStructuredLocation *)self title];
  locationUID = [(REMStructuredLocation *)self locationUID];
  [(REMStructuredLocation *)self latitude];
  v8 = v7;
  [(REMStructuredLocation *)self longitude];
  v10 = v9;
  [(REMStructuredLocation *)self radius];
  v12 = v11;
  address = [(REMStructuredLocation *)self address];
  routing = [(REMStructuredLocation *)self routing];
  referenceFrameString = [(REMStructuredLocation *)self referenceFrameString];
  contactLabel = [(REMStructuredLocation *)self contactLabel];
  mapKitHandle = [(REMStructuredLocation *)self mapKitHandle];
  v18 = [(REMStructuredLocation *)v4 initWithTitle:title locationUID:locationUID latitude:address longitude:routing radius:referenceFrameString address:contactLabel routing:v8 referenceFrameString:v10 contactLabel:v12 mapKitHandle:mapKitHandle];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      locationUID = [(REMStructuredLocation *)self locationUID];
      locationUID2 = [(REMStructuredLocation *)v6 locationUID];
      v9 = locationUID2;
      if (locationUID == locationUID2)
      {
      }

      else
      {
        locationUID3 = [(REMStructuredLocation *)self locationUID];
        locationUID4 = [(REMStructuredLocation *)v6 locationUID];
        v12 = [locationUID3 isEqual:locationUID4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v13 = [(REMStructuredLocation *)self isContentEqual:v6];
      goto LABEL_9;
    }

LABEL_5:
    v13 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v13 = 1;
LABEL_10:

  return v13;
}

- (BOOL)isContentEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      title = [(REMStructuredLocation *)self title];
      title2 = [(REMStructuredLocation *)v6 title];
      v9 = title2;
      if (title == title2)
      {
      }

      else
      {
        title3 = [(REMStructuredLocation *)self title];
        title4 = [(REMStructuredLocation *)v6 title];
        v12 = [title3 isEqual:title4];

        if (!v12)
        {
          goto LABEL_25;
        }
      }

      [(REMStructuredLocation *)self latitude];
      v15 = v14;
      [(REMStructuredLocation *)v6 latitude];
      if (vabdd_f64(v15, v16) >= 2.22044605e-16)
      {
        goto LABEL_25;
      }

      [(REMStructuredLocation *)self longitude];
      v18 = v17;
      [(REMStructuredLocation *)v6 longitude];
      if (vabdd_f64(v18, v19) >= 2.22044605e-16)
      {
        goto LABEL_25;
      }

      [(REMStructuredLocation *)self radius];
      v21 = v20;
      [(REMStructuredLocation *)v6 radius];
      if (vabdd_f64(v21, v22) >= 2.22044605e-16)
      {
        goto LABEL_25;
      }

      address = [(REMStructuredLocation *)self address];
      address2 = [(REMStructuredLocation *)v6 address];
      v25 = address2;
      if (address == address2)
      {
      }

      else
      {
        address3 = [(REMStructuredLocation *)self address];
        address4 = [(REMStructuredLocation *)v6 address];
        v28 = [address3 isEqual:address4];

        if (!v28)
        {
          goto LABEL_25;
        }
      }

      routing = [(REMStructuredLocation *)self routing];
      routing2 = [(REMStructuredLocation *)v6 routing];
      v31 = routing2;
      if (routing == routing2)
      {
      }

      else
      {
        routing3 = [(REMStructuredLocation *)self routing];
        routing4 = [(REMStructuredLocation *)v6 routing];
        v34 = [routing3 isEqual:routing4];

        if (!v34)
        {
          goto LABEL_25;
        }
      }

      referenceFrameString = [(REMStructuredLocation *)self referenceFrameString];
      referenceFrameString2 = [(REMStructuredLocation *)v6 referenceFrameString];
      v37 = referenceFrameString2;
      if (referenceFrameString == referenceFrameString2)
      {
      }

      else
      {
        referenceFrameString3 = [(REMStructuredLocation *)self referenceFrameString];
        referenceFrameString4 = [(REMStructuredLocation *)v6 referenceFrameString];
        v40 = [referenceFrameString3 isEqual:referenceFrameString4];

        if (!v40)
        {
          goto LABEL_25;
        }
      }

      contactLabel = [(REMStructuredLocation *)self contactLabel];
      contactLabel2 = [(REMStructuredLocation *)v6 contactLabel];
      v43 = contactLabel2;
      if (contactLabel == contactLabel2)
      {
      }

      else
      {
        contactLabel3 = [(REMStructuredLocation *)self contactLabel];
        contactLabel4 = [(REMStructuredLocation *)v6 contactLabel];
        v46 = [contactLabel3 isEqual:contactLabel4];

        if (!v46)
        {
          goto LABEL_25;
        }
      }

      mapKitHandle = [(REMStructuredLocation *)self mapKitHandle];
      mapKitHandle2 = [(REMStructuredLocation *)v6 mapKitHandle];
      if (mapKitHandle == mapKitHandle2)
      {
        v13 = 1;
      }

      else
      {
        mapKitHandle3 = [(REMStructuredLocation *)self mapKitHandle];
        mapKitHandle4 = [(REMStructuredLocation *)v6 mapKitHandle];
        v13 = [mapKitHandle3 isEqual:mapKitHandle4];
      }

      goto LABEL_26;
    }

LABEL_25:
    v13 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v13 = 1;
LABEL_27:

  return v13 & 1;
}

- (unint64_t)hash
{
  title = [(REMStructuredLocation *)self title];
  v4 = [title hash];

  locationUID = [(REMStructuredLocation *)self locationUID];
  v6 = [locationUID hash] - v4 + 32 * v4;

  address = [(REMStructuredLocation *)self address];
  v8 = [address hash] - v6 + 32 * v6;

  routing = [(REMStructuredLocation *)self routing];
  v10 = [routing hash] - v8 + 32 * v8;

  referenceFrameString = [(REMStructuredLocation *)self referenceFrameString];
  v12 = [referenceFrameString hash] - v10 + 32 * v10;

  contactLabel = [(REMStructuredLocation *)self contactLabel];
  v14 = [contactLabel hash] - v12 + 32 * v12;

  mapKitHandle = [(REMStructuredLocation *)self mapKitHandle];
  v16 = [mapKitHandle hash] - v14 + 32 * v14;

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  locationUID = [(REMStructuredLocation *)self locationUID];
  v6 = [v3 stringWithFormat:@"%@ {locationUID = %@}", v4, locationUID];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(REMStructuredLocation *)self title];
  [(REMStructuredLocation *)self latitude];
  v7 = v6;
  [(REMStructuredLocation *)self longitude];
  v9 = v8;
  [(REMStructuredLocation *)self radius];
  v11 = v10;
  locationUID = [(REMStructuredLocation *)self locationUID];
  v13 = [v3 stringWithFormat:@"%@ {title: %@ latlong: (%f, %f); radius: %f; locationUID = %@}", v4, title, v7, v9, v11, locationUID];;

  return v13;
}

- (REMStructuredLocation)initWithTitle:(id)title
{
  v4 = MEMORY[0x1E696AFB0];
  titleCopy = title;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [(REMStructuredLocation *)self initWithTitle:titleCopy locationUID:uUIDString];

  return v8;
}

- (REMStructuredLocation)initWithTitle:(id)title locationUID:(id)d
{
  titleCopy = title;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = REMStructuredLocation;
  v9 = [(REMStructuredLocation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_locationUID, d);
  }

  return v10;
}

- (REMStructuredLocation)initWithTitle:(id)title locationUID:(id)d latitude:(double)latitude longitude:(double)longitude radius:(double)radius address:(id)address routing:(id)routing referenceFrameString:(id)self0 contactLabel:(id)self1 mapKitHandle:(id)self2
{
  titleCopy = title;
  dCopy = d;
  addressCopy = address;
  routingCopy = routing;
  stringCopy = string;
  labelCopy = label;
  handleCopy = handle;
  v32.receiver = self;
  v32.super_class = REMStructuredLocation;
  v24 = [(REMStructuredLocation *)&v32 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_title, title);
    objc_storeStrong(&v25->_locationUID, d);
    v25->_latitude = latitude;
    v25->_longitude = longitude;
    v25->_radius = radius;
    objc_storeStrong(&v25->_address, address);
    objc_storeStrong(&v25->_routing, routing);
    objc_storeStrong(&v25->_referenceFrameString, string);
    objc_storeStrong(&v25->_contactLabel, label);
    objc_storeStrong(&v25->_mapKitHandle, handle);
  }

  return v25;
}

- (id)displayName
{
  contactLabel = [(REMStructuredLocation *)self contactLabel];
  v4 = [contactLabel length];

  if (v4)
  {
    contactLabel2 = [(REMStructuredLocation *)self contactLabel];
    v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:contactLabel2];
    host = [v6 host];
    v8 = [host length];

    if (v8)
    {
      host2 = [v6 host];
    }

    else
    {
      host2 = contactLabel2;
    }

    title = host2;
  }

  else
  {
    title = [(REMStructuredLocation *)self title];
  }

  return title;
}

- (REMStructuredLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = REMStructuredLocation;
  v5 = [(REMStructuredLocation *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    [coderCopy decodeDoubleForKey:@"latitude"];
    v5->_latitude = v8;
    [coderCopy decodeDoubleForKey:@"longitude"];
    v5->_longitude = v9;
    [coderCopy decodeDoubleForKey:@"radius"];
    v5->_radius = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationUID"];
    locationUID = v5->_locationUID;
    v5->_locationUID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routing"];
    routing = v5->_routing;
    v5->_routing = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceFrameString"];
    referenceFrameString = v5->_referenceFrameString;
    v5->_referenceFrameString = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactLabel"];
    contactLabel = v5->_contactLabel;
    v5->_contactLabel = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapKitHandle"];
    mapKitHandle = v5->_mapKitHandle;
    v5->_mapKitHandle = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(REMStructuredLocation *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [(REMStructuredLocation *)self latitude];
  [coderCopy encodeDouble:@"latitude" forKey:?];
  [(REMStructuredLocation *)self longitude];
  [coderCopy encodeDouble:@"longitude" forKey:?];
  [(REMStructuredLocation *)self radius];
  [coderCopy encodeDouble:@"radius" forKey:?];
  locationUID = [(REMStructuredLocation *)self locationUID];
  [coderCopy encodeObject:locationUID forKey:@"locationUID"];

  address = [(REMStructuredLocation *)self address];
  [coderCopy encodeObject:address forKey:@"address"];

  routing = [(REMStructuredLocation *)self routing];
  [coderCopy encodeObject:routing forKey:@"routing"];

  referenceFrameString = [(REMStructuredLocation *)self referenceFrameString];
  [coderCopy encodeObject:referenceFrameString forKey:@"referenceFrameString"];

  contactLabel = [(REMStructuredLocation *)self contactLabel];
  [coderCopy encodeObject:contactLabel forKey:@"contactLabel"];

  mapKitHandle = [(REMStructuredLocation *)self mapKitHandle];
  [coderCopy encodeObject:mapKitHandle forKey:@"mapKitHandle"];
}

@end