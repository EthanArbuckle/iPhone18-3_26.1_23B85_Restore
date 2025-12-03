@interface PPConnectionsLocation
+ (unint64_t)round:(double)round toNearest:(double)nearest;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConnectionsLocation:(id)location;
- (PPConnectionsLocation)initWithCoder:(id)coder;
- (PPConnectionsLocation)initWithOriginatingBundleID:(id)d;
- (id)addressDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)quickTypeItem;
- (unint64_t)_roundedPredictionAge;
- (unsigned)_pexItemSource;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPConnectionsLocation

- (BOOL)isEqualToConnectionsLocation:(id)location
{
  locationCopy = location;
  v5 = self->_identifier;
  v6 = v5;
  if (v5 == locationCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v8 = self->_name;
  v9 = v8;
  if (v8 == locationCopy[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v11 = self->_originatingBundleID;
  v12 = v11;
  if (v11 == locationCopy[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v14 = self->_fullFormattedAddress;
  v15 = v14;
  if (v14 == locationCopy[5])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v17 = self->_thoroughfare;
  v18 = v17;
  if (v17 == locationCopy[6])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v20 = self->_subThoroughfare;
  v21 = v20;
  if (v20 == locationCopy[7])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v23 = self->_locality;
  v24 = v23;
  if (v23 == locationCopy[8])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v26 = self->_administrativeArea;
  v27 = v26;
  if (v26 == locationCopy[9])
  {
  }

  else
  {
    v28 = [(NSString *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v29 = self->_postalCode;
  v30 = v29;
  if (v29 == locationCopy[10])
  {
  }

  else
  {
    v31 = [(NSString *)v29 isEqual:?];

    if ((v31 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v32 = self->_country;
  v33 = v32;
  if (v32 == locationCopy[11])
  {
  }

  else
  {
    v34 = [(NSString *)v32 isEqual:?];

    if ((v34 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v35 = self->_latitude;
  v36 = v35;
  if (v35 == locationCopy[12])
  {
  }

  else
  {
    v37 = [(NSNumber *)v35 isEqual:?];

    if ((v37 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v38 = self->_longitude;
  v39 = v38;
  if (v38 == locationCopy[13])
  {
  }

  else
  {
    v40 = [(NSNumber *)v38 isEqual:?];

    if ((v40 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v41 = self->_originatingWebsiteURL;
  v42 = v41;
  if (v41 == locationCopy[14])
  {
  }

  else
  {
    v43 = [(NSURL *)v41 isEqual:?];

    if ((v43 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v44 = self->_mapItemURL;
  v45 = v44;
  if (v44 == locationCopy[15])
  {
  }

  else
  {
    v46 = [(NSURL *)v44 isEqual:?];

    if ((v46 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v47 = self->_label;
  v48 = v47;
  if (v47 == locationCopy[18])
  {
  }

  else
  {
    v49 = [(NSString *)v47 isEqual:?];

    if ((v49 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v50 = self->_value;
  v51 = v50;
  if (v50 == locationCopy[19])
  {
  }

  else
  {
    v52 = [(NSString *)v50 isEqual:?];

    if ((v52 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  v53 = self->_shortValue;
  v54 = v53;
  if (v53 == locationCopy[20])
  {
  }

  else
  {
    v55 = [(NSString *)v53 isEqual:?];

    if ((v55 & 1) == 0)
    {
      goto LABEL_96;
    }
  }

  if (self->_shouldAggregate == *(locationCopy + 9))
  {
    v56 = self->_addressComponents;
    v57 = v56;
    if (v56 == locationCopy[22])
    {
    }

    else
    {
      v58 = [(NSDictionary *)v56 isEqual:?];

      if ((v58 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    v59 = self->_source;
    v60 = v59;
    if (v59 == locationCopy[23])
    {
    }

    else
    {
      v61 = [(NSString *)v59 isEqual:?];

      if ((v61 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    v62 = self->_trigger;
    v63 = v62;
    if (v62 == locationCopy[24])
    {
    }

    else
    {
      v64 = [(NSString *)v62 isEqual:?];

      if ((v64 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    v65 = self->_createdAt;
    v66 = v65;
    if (v65 == locationCopy[25])
    {
    }

    else
    {
      v67 = [(NSDate *)v65 isEqual:?];

      if ((v67 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    v68 = self->_lifetime;
    v69 = v68;
    if (v68 == locationCopy[26])
    {
    }

    else
    {
      v70 = [(NSNumber *)v68 isEqual:?];

      if ((v70 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    v71 = self->_authorHandle;
    v72 = v71;
    if (v71 == locationCopy[17])
    {
    }

    else
    {
      v73 = [(NSString *)v71 isEqual:?];

      if ((v73 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    v74 = self->_contactHandles;
    v75 = v74;
    if (v74 == locationCopy[16])
    {
    }

    else
    {
      v76 = [(NSArray *)v74 isEqual:?];

      if ((v76 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    v77 = *(locationCopy + 8) == self->_copiedToPasteboard;
    goto LABEL_97;
  }

LABEL_96:
  v77 = 0;
LABEL_97:

  return v77;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPConnectionsLocation *)self isEqualToConnectionsLocation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  if (v5)
  {
    v6 = [(NSString *)self->_identifier copyWithZone:zone];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(NSString *)self->_name copyWithZone:zone];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSString *)self->_originatingBundleID copyWithZone:zone];
    v11 = *(v5 + 32);
    *(v5 + 32) = v10;

    v12 = [(NSString *)self->_fullFormattedAddress copyWithZone:zone];
    v13 = *(v5 + 40);
    *(v5 + 40) = v12;

    v14 = [(NSString *)self->_thoroughfare copyWithZone:zone];
    v15 = *(v5 + 48);
    *(v5 + 48) = v14;

    v16 = [(NSString *)self->_subThoroughfare copyWithZone:zone];
    v17 = *(v5 + 56);
    *(v5 + 56) = v16;

    v18 = [(NSString *)self->_locality copyWithZone:zone];
    v19 = *(v5 + 64);
    *(v5 + 64) = v18;

    v20 = [(NSString *)self->_administrativeArea copyWithZone:zone];
    v21 = *(v5 + 72);
    *(v5 + 72) = v20;

    v22 = [(NSString *)self->_postalCode copyWithZone:zone];
    v23 = *(v5 + 80);
    *(v5 + 80) = v22;

    v24 = [(NSString *)self->_country copyWithZone:zone];
    v25 = *(v5 + 88);
    *(v5 + 88) = v24;

    v26 = [(NSNumber *)self->_latitude copyWithZone:zone];
    v27 = *(v5 + 96);
    *(v5 + 96) = v26;

    v28 = [(NSNumber *)self->_longitude copyWithZone:zone];
    v29 = *(v5 + 104);
    *(v5 + 104) = v28;

    v30 = [(NSURL *)self->_originatingWebsiteURL copyWithZone:zone];
    v31 = *(v5 + 112);
    *(v5 + 112) = v30;

    v32 = [(NSURL *)self->_mapItemURL copyWithZone:zone];
    v33 = *(v5 + 120);
    *(v5 + 120) = v32;

    v34 = [(NSString *)self->_label copyWithZone:zone];
    v35 = *(v5 + 144);
    *(v5 + 144) = v34;

    v36 = [(NSString *)self->_value copyWithZone:zone];
    v37 = *(v5 + 152);
    *(v5 + 152) = v36;

    v38 = [(NSString *)self->_shortValue copyWithZone:zone];
    v39 = *(v5 + 160);
    *(v5 + 160) = v38;

    *(v5 + 9) = self->_shouldAggregate;
    v40 = [(NSDictionary *)self->_addressComponents copyWithZone:zone];
    v41 = *(v5 + 176);
    *(v5 + 176) = v40;

    v42 = [(NSString *)self->_source copyWithZone:zone];
    v43 = *(v5 + 184);
    *(v5 + 184) = v42;

    v44 = [(NSString *)self->_trigger copyWithZone:zone];
    v45 = *(v5 + 192);
    *(v5 + 192) = v44;

    v46 = [(NSDate *)self->_createdAt copyWithZone:zone];
    v47 = *(v5 + 200);
    *(v5 + 200) = v46;

    v48 = [(NSNumber *)self->_lifetime copyWithZone:zone];
    v49 = *(v5 + 208);
    *(v5 + 208) = v48;

    v50 = [(NSString *)self->_authorHandle copyWithZone:zone];
    v51 = *(v5 + 136);
    *(v5 + 136) = v50;

    v52 = [(NSArray *)self->_contactHandles copyWithZone:zone];
    v53 = *(v5 + 128);
    *(v5 + 128) = v52;

    *(v5 + 8) = self->_copiedToPasteboard;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"ide"];
  [coderCopy encodeObject:self->_name forKey:@"nam"];
  [coderCopy encodeObject:self->_originatingBundleID forKey:@"bid"];
  [coderCopy encodeObject:self->_fullFormattedAddress forKey:@"ffa"];
  [coderCopy encodeObject:self->_thoroughfare forKey:@"thr"];
  [coderCopy encodeObject:self->_subThoroughfare forKey:@"sth"];
  [coderCopy encodeObject:self->_locality forKey:@"loc"];
  [coderCopy encodeObject:self->_administrativeArea forKey:@"aar"];
  [coderCopy encodeObject:self->_postalCode forKey:@"poc"];
  [coderCopy encodeObject:self->_country forKey:@"cnt"];
  [coderCopy encodeObject:self->_latitude forKey:@"lat"];
  [coderCopy encodeObject:self->_longitude forKey:@"lon"];
  [coderCopy encodeObject:self->_originatingWebsiteURL forKey:@"owu"];
  [coderCopy encodeObject:self->_mapItemURL forKey:@"miu"];
  [coderCopy encodeObject:self->_label forKey:@"lab"];
  [coderCopy encodeObject:self->_value forKey:@"val"];
  [coderCopy encodeObject:self->_shortValue forKey:@"shv"];
  [coderCopy encodeBool:self->_shouldAggregate forKey:@"sha"];
  [coderCopy encodeObject:self->_addressComponents forKey:@"add"];
  [coderCopy encodeObject:self->_source forKey:@"src"];
  [coderCopy encodeObject:self->_trigger forKey:@"trg"];
  [coderCopy encodeObject:self->_createdAt forKey:@"cra"];
  [coderCopy encodeObject:self->_lifetime forKey:@"lft"];
  [coderCopy encodeObject:self->_authorHandle forKey:@"auh"];
  [coderCopy encodeObject:self->_contactHandles forKey:@"cnh"];
  [coderCopy encodeBool:self->_copiedToPasteboard forKey:@"cpb"];
}

- (PPConnectionsLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [coderCopy decodeObjectOfClass:v5 forKey:@"bid"];
  v12 = [coderCopy decodeObjectOfClass:v5 forKey:@"ide"];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    selfCopy = 0;
  }

  else
  {
    v67.receiver = self;
    v67.super_class = PPConnectionsLocation;
    v16 = [(PPConnectionsLocation *)&v67 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_identifier, v13);
      v18 = [coderCopy decodeObjectOfClass:v5 forKey:@"nam"];
      name = v17->_name;
      v17->_name = v18;

      objc_storeStrong(&v17->_originatingBundleID, v11);
      v20 = [coderCopy decodeObjectOfClass:v5 forKey:@"ffa"];
      fullFormattedAddress = v17->_fullFormattedAddress;
      v17->_fullFormattedAddress = v20;

      v22 = [coderCopy decodeObjectOfClass:v5 forKey:@"thr"];
      thoroughfare = v17->_thoroughfare;
      v17->_thoroughfare = v22;

      v24 = [coderCopy decodeObjectOfClass:v5 forKey:@"sth"];
      subThoroughfare = v17->_subThoroughfare;
      v17->_subThoroughfare = v24;

      v26 = [coderCopy decodeObjectOfClass:v5 forKey:@"loc"];
      locality = v17->_locality;
      v17->_locality = v26;

      v28 = [coderCopy decodeObjectOfClass:v5 forKey:@"aar"];
      administrativeArea = v17->_administrativeArea;
      v17->_administrativeArea = v28;

      v30 = [coderCopy decodeObjectOfClass:v5 forKey:@"poc"];
      postalCode = v17->_postalCode;
      v17->_postalCode = v30;

      v32 = [coderCopy decodeObjectOfClass:v5 forKey:@"cnt"];
      country = v17->_country;
      v17->_country = v32;

      v34 = [coderCopy decodeObjectOfClass:v6 forKey:@"lat"];
      latitude = v17->_latitude;
      v17->_latitude = v34;

      v36 = [coderCopy decodeObjectOfClass:v6 forKey:@"lon"];
      longitude = v17->_longitude;
      v17->_longitude = v36;

      v38 = [coderCopy decodeObjectOfClass:v7 forKey:@"owu"];
      originatingWebsiteURL = v17->_originatingWebsiteURL;
      v17->_originatingWebsiteURL = v38;

      v40 = [coderCopy decodeObjectOfClass:v7 forKey:@"miu"];
      mapItemURL = v17->_mapItemURL;
      v17->_mapItemURL = v40;

      v42 = [coderCopy decodeObjectOfClass:v5 forKey:@"lab"];
      label = v17->_label;
      v17->_label = v42;

      v44 = [coderCopy decodeObjectOfClass:v5 forKey:@"val"];
      value = v17->_value;
      v17->_value = v44;

      v46 = [coderCopy decodeObjectOfClass:v5 forKey:@"shv"];
      shortValue = v17->_shortValue;
      v17->_shortValue = v46;

      v17->_shouldAggregate = [coderCopy decodeBoolForKey:@"sha"];
      v48 = objc_autoreleasePoolPush();
      v49 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v8, v5, 0}];
      objc_autoreleasePoolPop(v48);
      v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"add"];
      addressComponents = v17->_addressComponents;
      v17->_addressComponents = v50;

      v52 = [coderCopy decodeObjectOfClass:v5 forKey:@"src"];
      source = v17->_source;
      v17->_source = v52;

      v54 = [coderCopy decodeObjectOfClass:v5 forKey:@"trg"];
      trigger = v17->_trigger;
      v17->_trigger = v54;

      v56 = [coderCopy decodeObjectOfClass:v10 forKey:@"cra"];
      createdAt = v17->_createdAt;
      v17->_createdAt = v56;

      v58 = [coderCopy decodeObjectOfClass:v6 forKey:@"lft"];
      lifetime = v17->_lifetime;
      v17->_lifetime = v58;

      v60 = [coderCopy decodeObjectOfClass:v5 forKey:@"auh"];
      authorHandle = v17->_authorHandle;
      v17->_authorHandle = v60;

      v62 = objc_autoreleasePoolPush();
      v63 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v9, v5, 0}];
      objc_autoreleasePoolPop(v62);
      v64 = [coderCopy decodeObjectOfClasses:v63 forKey:@"cnh"];
      contactHandles = v17->_contactHandles;
      v17->_contactHandles = v64;

      v17->_copiedToPasteboard = [coderCopy decodeBoolForKey:@"cpb"];
    }

    self = v17;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *&self->_identifier;
  v5 = [v3 initWithFormat:@"<PPConnectionsLocation i:%@ n:%@ l:%@ v:%@ b:%@ t:%@ s:%@ loc:%@ a:%@ p:%@ c:%@ ll:(%@, %@) w:%@ lt:%@ pb:%d mu:%@ ah:%@ ch:%@>", self->_identifier, self->_name, self->_label, self->_value, self->_originatingBundleID, self->_thoroughfare, self->_subThoroughfare, self->_locality, self->_administrativeArea, self->_postalCode, self->_country, self->_latitude, self->_longitude, self->_originatingWebsiteURL, self->_lifetime, self->_copiedToPasteboard, self->_mapItemURL, self->_authorHandle, self->_contactHandles];

  return v5;
}

- (id)addressDictionary
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (addressDictionary_onceToken != -1)
  {
    dispatch_once(&addressDictionary_onceToken, &__block_literal_global_2062);
  }

  v3 = objc_opt_new();
  v4 = PPCollapseWhitespaceAndStrip(self->_value);
  v5 = v4;
  if (v4)
  {
    v16[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v3 setObject:v6 forKeyedSubscript:@"FormattedAddressLines"];
  }

  v7 = PPCollapseWhitespaceAndStrip(self->_name);
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"Name"];
  }

  v8 = addressDictionary_mapping;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__PPConnectionsLocation_addressDictionary__block_invoke_2;
  v14[3] = &unk_1E77F6858;
  v14[4] = self;
  v9 = v3;
  v15 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];
  v10 = v15;
  v11 = v9;

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

void __42__PPConnectionsLocation_addressDictionary__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:a2];
  v6 = PPCollapseWhitespaceAndStrip(v5);

  if (v6)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

void __42__PPConnectionsLocation_addressDictionary__block_invoke()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696A910];
  v5[0] = *MEMORY[0x1E696A930];
  v5[1] = v0;
  v6[0] = @"Street";
  v6[1] = @"City";
  v1 = *MEMORY[0x1E696A938];
  v5[2] = *MEMORY[0x1E696A928];
  v5[3] = v1;
  v6[2] = @"State";
  v6[3] = @"ZIP";
  v5[4] = *MEMORY[0x1E696A918];
  v6[4] = @"Country";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = addressDictionary_mapping;
  addressDictionary_mapping = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_roundedPredictionAge
{
  createdAt = [(PPConnectionsLocation *)self createdAt];
  v3 = createdAt;
  if (createdAt)
  {
    v4 = createdAt;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  v6 = objc_opt_class();
  v7 = objc_opt_new();
  [v7 timeIntervalSinceDate:v5];
  v9 = v8;
  if (v8 < 0)
  {
    v9 = -v9;
  }

  v10 = [v6 round:v9 toNearest:30.0];

  return v10;
}

- (unsigned)_pexItemSource
{
  if ([(NSString *)self->_source isEqualToString:@"calendar"])
  {
    return 3;
  }

  if ([(NSString *)self->_source isEqualToString:@"donation"])
  {
    return 5;
  }

  if ([(NSString *)self->_source isEqualToString:@"schemaorg"])
  {
    return 6;
  }

  if ([(NSString *)self->_source isEqualToString:@"siri"])
  {
    return 8;
  }

  if ([(NSString *)self->_source isEqualToString:@"pasteboard"])
  {
    return 7;
  }

  return 0;
}

- (id)quickTypeItem
{
  label = [(PPConnectionsLocation *)self label];
  if (label)
  {
    value = [(PPConnectionsLocation *)self value];
    label2 = [(PPConnectionsLocation *)self label];
    if (value)
    {
      value2 = [(PPConnectionsLocation *)self value];
      if (([(__CFString *)label2 isEqualToString:value2]& 1) != 0)
      {
        label3 = 0;
      }

      else
      {
        label3 = [(PPConnectionsLocation *)self label];
      }

      label2 = label3;
    }
  }

  else
  {
    label2 = [(PPConnectionsLocation *)self label];
  }

  value3 = [(PPConnectionsLocation *)self value];

  if (value3)
  {
    v9 = &stru_1F1B327D8;
    if (label2)
    {
      v9 = label2;
    }

    v21 = v9;
    value4 = [(PPConnectionsLocation *)self value];
    name = [(PPConnectionsLocation *)self name];
    originatingBundleID = [(PPConnectionsLocation *)self originatingBundleID];
    originatingWebsiteURL = [(PPConnectionsLocation *)self originatingWebsiteURL];
    _roundedPredictionAge = [(PPConnectionsLocation *)self _roundedPredictionAge];
    shouldAggregate = [(PPConnectionsLocation *)self shouldAggregate];
    _pexItemSource = [(PPConnectionsLocation *)self _pexItemSource];
    source = [(PPConnectionsLocation *)self source];
    BYTE2(v20) = _pexItemSource;
    LOWORD(v20) = shouldAggregate;
    v18 = [PPQuickTypeItem quickTypeItemWithLabel:"quickTypeItemWithLabel:value:name:date:fields:originatingBundleID:originatingWebsiteURL:predictionAge:shouldAggregate:flags:score:source:sourceIdentifier:" value:v21 name:value4 date:name fields:0 originatingBundleID:4 originatingWebsiteURL:originatingBundleID predictionAge:200.0 shouldAggregate:originatingWebsiteURL flags:_roundedPredictionAge score:v20 source:source sourceIdentifier:?];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (PPConnectionsLocation)initWithOriginatingBundleID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PPConnectionsLocation;
  v5 = [(PPConnectionsLocation *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_new();
    uUIDString = [v6 UUIDString];
    identifier = v5->_identifier;
    v5->_identifier = uUIDString;

    v9 = [dCopy copy];
    originatingBundleID = v5->_originatingBundleID;
    v5->_originatingBundleID = v9;
  }

  return v5;
}

+ (unint64_t)round:(double)round toNearest:(double)nearest
{
  v4 = round / nearest + 0.5;
  v5 = floorf(v4) * nearest;
  return vcvtas_u32_f32(v5);
}

@end