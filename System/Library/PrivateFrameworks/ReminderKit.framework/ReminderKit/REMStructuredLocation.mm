@interface REMStructuredLocation
- (BOOL)isContentEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (REMStructuredLocation)initWithCoder:(id)a3;
- (REMStructuredLocation)initWithTitle:(id)a3;
- (REMStructuredLocation)initWithTitle:(id)a3 locationUID:(id)a4;
- (REMStructuredLocation)initWithTitle:(id)a3 locationUID:(id)a4 latitude:(double)a5 longitude:(double)a6 radius:(double)a7 address:(id)a8 routing:(id)a9 referenceFrameString:(id)a10 contactLabel:(id)a11 mapKitHandle:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)displayName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMStructuredLocation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMStructuredLocation alloc];
  v5 = [(REMStructuredLocation *)self title];
  v6 = [(REMStructuredLocation *)self locationUID];
  [(REMStructuredLocation *)self latitude];
  v8 = v7;
  [(REMStructuredLocation *)self longitude];
  v10 = v9;
  [(REMStructuredLocation *)self radius];
  v12 = v11;
  v13 = [(REMStructuredLocation *)self address];
  v14 = [(REMStructuredLocation *)self routing];
  v15 = [(REMStructuredLocation *)self referenceFrameString];
  v16 = [(REMStructuredLocation *)self contactLabel];
  v17 = [(REMStructuredLocation *)self mapKitHandle];
  v18 = [(REMStructuredLocation *)v4 initWithTitle:v5 locationUID:v6 latitude:v13 longitude:v14 radius:v15 address:v16 routing:v8 referenceFrameString:v10 contactLabel:v12 mapKitHandle:v17];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMStructuredLocation *)self locationUID];
      v8 = [(REMStructuredLocation *)v6 locationUID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMStructuredLocation *)self locationUID];
        v11 = [(REMStructuredLocation *)v6 locationUID];
        v12 = [v10 isEqual:v11];

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

- (BOOL)isContentEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMStructuredLocation *)self title];
      v8 = [(REMStructuredLocation *)v6 title];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMStructuredLocation *)self title];
        v11 = [(REMStructuredLocation *)v6 title];
        v12 = [v10 isEqual:v11];

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

      v23 = [(REMStructuredLocation *)self address];
      v24 = [(REMStructuredLocation *)v6 address];
      v25 = v24;
      if (v23 == v24)
      {
      }

      else
      {
        v26 = [(REMStructuredLocation *)self address];
        v27 = [(REMStructuredLocation *)v6 address];
        v28 = [v26 isEqual:v27];

        if (!v28)
        {
          goto LABEL_25;
        }
      }

      v29 = [(REMStructuredLocation *)self routing];
      v30 = [(REMStructuredLocation *)v6 routing];
      v31 = v30;
      if (v29 == v30)
      {
      }

      else
      {
        v32 = [(REMStructuredLocation *)self routing];
        v33 = [(REMStructuredLocation *)v6 routing];
        v34 = [v32 isEqual:v33];

        if (!v34)
        {
          goto LABEL_25;
        }
      }

      v35 = [(REMStructuredLocation *)self referenceFrameString];
      v36 = [(REMStructuredLocation *)v6 referenceFrameString];
      v37 = v36;
      if (v35 == v36)
      {
      }

      else
      {
        v38 = [(REMStructuredLocation *)self referenceFrameString];
        v39 = [(REMStructuredLocation *)v6 referenceFrameString];
        v40 = [v38 isEqual:v39];

        if (!v40)
        {
          goto LABEL_25;
        }
      }

      v41 = [(REMStructuredLocation *)self contactLabel];
      v42 = [(REMStructuredLocation *)v6 contactLabel];
      v43 = v42;
      if (v41 == v42)
      {
      }

      else
      {
        v44 = [(REMStructuredLocation *)self contactLabel];
        v45 = [(REMStructuredLocation *)v6 contactLabel];
        v46 = [v44 isEqual:v45];

        if (!v46)
        {
          goto LABEL_25;
        }
      }

      v48 = [(REMStructuredLocation *)self mapKitHandle];
      v49 = [(REMStructuredLocation *)v6 mapKitHandle];
      if (v48 == v49)
      {
        v13 = 1;
      }

      else
      {
        v50 = [(REMStructuredLocation *)self mapKitHandle];
        v51 = [(REMStructuredLocation *)v6 mapKitHandle];
        v13 = [v50 isEqual:v51];
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
  v3 = [(REMStructuredLocation *)self title];
  v4 = [v3 hash];

  v5 = [(REMStructuredLocation *)self locationUID];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(REMStructuredLocation *)self address];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(REMStructuredLocation *)self routing];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = [(REMStructuredLocation *)self referenceFrameString];
  v12 = [v11 hash] - v10 + 32 * v10;

  v13 = [(REMStructuredLocation *)self contactLabel];
  v14 = [v13 hash] - v12 + 32 * v12;

  v15 = [(REMStructuredLocation *)self mapKitHandle];
  v16 = [v15 hash] - v14 + 32 * v14;

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMStructuredLocation *)self locationUID];
  v6 = [v3 stringWithFormat:@"%@ {locationUID = %@}", v4, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMStructuredLocation *)self title];
  [(REMStructuredLocation *)self latitude];
  v7 = v6;
  [(REMStructuredLocation *)self longitude];
  v9 = v8;
  [(REMStructuredLocation *)self radius];
  v11 = v10;
  v12 = [(REMStructuredLocation *)self locationUID];
  v13 = [v3 stringWithFormat:@"%@ {title: %@ latlong: (%f, %f); radius: %f; locationUID = %@}", v4, v5, v7, v9, v11, v12];;

  return v13;
}

- (REMStructuredLocation)initWithTitle:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [(REMStructuredLocation *)self initWithTitle:v5 locationUID:v7];

  return v8;
}

- (REMStructuredLocation)initWithTitle:(id)a3 locationUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMStructuredLocation;
  v9 = [(REMStructuredLocation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_locationUID, a4);
  }

  return v10;
}

- (REMStructuredLocation)initWithTitle:(id)a3 locationUID:(id)a4 latitude:(double)a5 longitude:(double)a6 radius:(double)a7 address:(id)a8 routing:(id)a9 referenceFrameString:(id)a10 contactLabel:(id)a11 mapKitHandle:(id)a12
{
  v31 = a3;
  v30 = a4;
  v29 = a8;
  v28 = a9;
  v27 = a10;
  v22 = a11;
  v23 = a12;
  v32.receiver = self;
  v32.super_class = REMStructuredLocation;
  v24 = [(REMStructuredLocation *)&v32 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_title, a3);
    objc_storeStrong(&v25->_locationUID, a4);
    v25->_latitude = a5;
    v25->_longitude = a6;
    v25->_radius = a7;
    objc_storeStrong(&v25->_address, a8);
    objc_storeStrong(&v25->_routing, a9);
    objc_storeStrong(&v25->_referenceFrameString, a10);
    objc_storeStrong(&v25->_contactLabel, a11);
    objc_storeStrong(&v25->_mapKitHandle, a12);
  }

  return v25;
}

- (id)displayName
{
  v3 = [(REMStructuredLocation *)self contactLabel];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(REMStructuredLocation *)self contactLabel];
    v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
    v7 = [v6 host];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [v6 host];
    }

    else
    {
      v9 = v5;
    }

    v10 = v9;
  }

  else
  {
    v10 = [(REMStructuredLocation *)self title];
  }

  return v10;
}

- (REMStructuredLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = REMStructuredLocation;
  v5 = [(REMStructuredLocation *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    [v4 decodeDoubleForKey:@"latitude"];
    v5->_latitude = v8;
    [v4 decodeDoubleForKey:@"longitude"];
    v5->_longitude = v9;
    [v4 decodeDoubleForKey:@"radius"];
    v5->_radius = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationUID"];
    locationUID = v5->_locationUID;
    v5->_locationUID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routing"];
    routing = v5->_routing;
    v5->_routing = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceFrameString"];
    referenceFrameString = v5->_referenceFrameString;
    v5->_referenceFrameString = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactLabel"];
    contactLabel = v5->_contactLabel;
    v5->_contactLabel = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapKitHandle"];
    mapKitHandle = v5->_mapKitHandle;
    v5->_mapKitHandle = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMStructuredLocation *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  [(REMStructuredLocation *)self latitude];
  [v4 encodeDouble:@"latitude" forKey:?];
  [(REMStructuredLocation *)self longitude];
  [v4 encodeDouble:@"longitude" forKey:?];
  [(REMStructuredLocation *)self radius];
  [v4 encodeDouble:@"radius" forKey:?];
  v6 = [(REMStructuredLocation *)self locationUID];
  [v4 encodeObject:v6 forKey:@"locationUID"];

  v7 = [(REMStructuredLocation *)self address];
  [v4 encodeObject:v7 forKey:@"address"];

  v8 = [(REMStructuredLocation *)self routing];
  [v4 encodeObject:v8 forKey:@"routing"];

  v9 = [(REMStructuredLocation *)self referenceFrameString];
  [v4 encodeObject:v9 forKey:@"referenceFrameString"];

  v10 = [(REMStructuredLocation *)self contactLabel];
  [v4 encodeObject:v10 forKey:@"contactLabel"];

  v11 = [(REMStructuredLocation *)self mapKitHandle];
  [v4 encodeObject:v11 forKey:@"mapKitHandle"];
}

@end