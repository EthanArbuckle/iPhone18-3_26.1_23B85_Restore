@interface PPConnectionsLocation
+ (unint64_t)round:(double)a3 toNearest:(double)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConnectionsLocation:(id)a3;
- (PPConnectionsLocation)initWithCoder:(id)a3;
- (PPConnectionsLocation)initWithOriginatingBundleID:(id)a3;
- (id)addressDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)quickTypeItem;
- (unint64_t)_roundedPredictionAge;
- (unsigned)_pexItemSource;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPConnectionsLocation

- (BOOL)isEqualToConnectionsLocation:(id)a3
{
  v4 = a3;
  v5 = self->_identifier;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
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
  if (v11 == v4[4])
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
  if (v14 == v4[5])
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
  if (v17 == v4[6])
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
  if (v20 == v4[7])
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
  if (v23 == v4[8])
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
  if (v26 == v4[9])
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
  if (v29 == v4[10])
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
  if (v32 == v4[11])
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
  if (v35 == v4[12])
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
  if (v38 == v4[13])
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
  if (v41 == v4[14])
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
  if (v44 == v4[15])
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
  if (v47 == v4[18])
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
  if (v50 == v4[19])
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
  if (v53 == v4[20])
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

  if (self->_shouldAggregate == *(v4 + 9))
  {
    v56 = self->_addressComponents;
    v57 = v56;
    if (v56 == v4[22])
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
    if (v59 == v4[23])
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
    if (v62 == v4[24])
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
    if (v65 == v4[25])
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
    if (v68 == v4[26])
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
    if (v71 == v4[17])
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
    if (v74 == v4[16])
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

    v77 = *(v4 + 8) == self->_copiedToPasteboard;
    goto LABEL_97;
  }

LABEL_96:
  v77 = 0;
LABEL_97:

  return v77;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPConnectionsLocation *)self isEqualToConnectionsLocation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  if (v5)
  {
    v6 = [(NSString *)self->_identifier copyWithZone:a3];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(NSString *)self->_name copyWithZone:a3];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSString *)self->_originatingBundleID copyWithZone:a3];
    v11 = *(v5 + 32);
    *(v5 + 32) = v10;

    v12 = [(NSString *)self->_fullFormattedAddress copyWithZone:a3];
    v13 = *(v5 + 40);
    *(v5 + 40) = v12;

    v14 = [(NSString *)self->_thoroughfare copyWithZone:a3];
    v15 = *(v5 + 48);
    *(v5 + 48) = v14;

    v16 = [(NSString *)self->_subThoroughfare copyWithZone:a3];
    v17 = *(v5 + 56);
    *(v5 + 56) = v16;

    v18 = [(NSString *)self->_locality copyWithZone:a3];
    v19 = *(v5 + 64);
    *(v5 + 64) = v18;

    v20 = [(NSString *)self->_administrativeArea copyWithZone:a3];
    v21 = *(v5 + 72);
    *(v5 + 72) = v20;

    v22 = [(NSString *)self->_postalCode copyWithZone:a3];
    v23 = *(v5 + 80);
    *(v5 + 80) = v22;

    v24 = [(NSString *)self->_country copyWithZone:a3];
    v25 = *(v5 + 88);
    *(v5 + 88) = v24;

    v26 = [(NSNumber *)self->_latitude copyWithZone:a3];
    v27 = *(v5 + 96);
    *(v5 + 96) = v26;

    v28 = [(NSNumber *)self->_longitude copyWithZone:a3];
    v29 = *(v5 + 104);
    *(v5 + 104) = v28;

    v30 = [(NSURL *)self->_originatingWebsiteURL copyWithZone:a3];
    v31 = *(v5 + 112);
    *(v5 + 112) = v30;

    v32 = [(NSURL *)self->_mapItemURL copyWithZone:a3];
    v33 = *(v5 + 120);
    *(v5 + 120) = v32;

    v34 = [(NSString *)self->_label copyWithZone:a3];
    v35 = *(v5 + 144);
    *(v5 + 144) = v34;

    v36 = [(NSString *)self->_value copyWithZone:a3];
    v37 = *(v5 + 152);
    *(v5 + 152) = v36;

    v38 = [(NSString *)self->_shortValue copyWithZone:a3];
    v39 = *(v5 + 160);
    *(v5 + 160) = v38;

    *(v5 + 9) = self->_shouldAggregate;
    v40 = [(NSDictionary *)self->_addressComponents copyWithZone:a3];
    v41 = *(v5 + 176);
    *(v5 + 176) = v40;

    v42 = [(NSString *)self->_source copyWithZone:a3];
    v43 = *(v5 + 184);
    *(v5 + 184) = v42;

    v44 = [(NSString *)self->_trigger copyWithZone:a3];
    v45 = *(v5 + 192);
    *(v5 + 192) = v44;

    v46 = [(NSDate *)self->_createdAt copyWithZone:a3];
    v47 = *(v5 + 200);
    *(v5 + 200) = v46;

    v48 = [(NSNumber *)self->_lifetime copyWithZone:a3];
    v49 = *(v5 + 208);
    *(v5 + 208) = v48;

    v50 = [(NSString *)self->_authorHandle copyWithZone:a3];
    v51 = *(v5 + 136);
    *(v5 + 136) = v50;

    v52 = [(NSArray *)self->_contactHandles copyWithZone:a3];
    v53 = *(v5 + 128);
    *(v5 + 128) = v52;

    *(v5 + 8) = self->_copiedToPasteboard;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"ide"];
  [v5 encodeObject:self->_name forKey:@"nam"];
  [v5 encodeObject:self->_originatingBundleID forKey:@"bid"];
  [v5 encodeObject:self->_fullFormattedAddress forKey:@"ffa"];
  [v5 encodeObject:self->_thoroughfare forKey:@"thr"];
  [v5 encodeObject:self->_subThoroughfare forKey:@"sth"];
  [v5 encodeObject:self->_locality forKey:@"loc"];
  [v5 encodeObject:self->_administrativeArea forKey:@"aar"];
  [v5 encodeObject:self->_postalCode forKey:@"poc"];
  [v5 encodeObject:self->_country forKey:@"cnt"];
  [v5 encodeObject:self->_latitude forKey:@"lat"];
  [v5 encodeObject:self->_longitude forKey:@"lon"];
  [v5 encodeObject:self->_originatingWebsiteURL forKey:@"owu"];
  [v5 encodeObject:self->_mapItemURL forKey:@"miu"];
  [v5 encodeObject:self->_label forKey:@"lab"];
  [v5 encodeObject:self->_value forKey:@"val"];
  [v5 encodeObject:self->_shortValue forKey:@"shv"];
  [v5 encodeBool:self->_shouldAggregate forKey:@"sha"];
  [v5 encodeObject:self->_addressComponents forKey:@"add"];
  [v5 encodeObject:self->_source forKey:@"src"];
  [v5 encodeObject:self->_trigger forKey:@"trg"];
  [v5 encodeObject:self->_createdAt forKey:@"cra"];
  [v5 encodeObject:self->_lifetime forKey:@"lft"];
  [v5 encodeObject:self->_authorHandle forKey:@"auh"];
  [v5 encodeObject:self->_contactHandles forKey:@"cnh"];
  [v5 encodeBool:self->_copiedToPasteboard forKey:@"cpb"];
}

- (PPConnectionsLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 decodeObjectOfClass:v5 forKey:@"bid"];
  v12 = [v4 decodeObjectOfClass:v5 forKey:@"ide"];
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
    v15 = 0;
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
      v18 = [v4 decodeObjectOfClass:v5 forKey:@"nam"];
      name = v17->_name;
      v17->_name = v18;

      objc_storeStrong(&v17->_originatingBundleID, v11);
      v20 = [v4 decodeObjectOfClass:v5 forKey:@"ffa"];
      fullFormattedAddress = v17->_fullFormattedAddress;
      v17->_fullFormattedAddress = v20;

      v22 = [v4 decodeObjectOfClass:v5 forKey:@"thr"];
      thoroughfare = v17->_thoroughfare;
      v17->_thoroughfare = v22;

      v24 = [v4 decodeObjectOfClass:v5 forKey:@"sth"];
      subThoroughfare = v17->_subThoroughfare;
      v17->_subThoroughfare = v24;

      v26 = [v4 decodeObjectOfClass:v5 forKey:@"loc"];
      locality = v17->_locality;
      v17->_locality = v26;

      v28 = [v4 decodeObjectOfClass:v5 forKey:@"aar"];
      administrativeArea = v17->_administrativeArea;
      v17->_administrativeArea = v28;

      v30 = [v4 decodeObjectOfClass:v5 forKey:@"poc"];
      postalCode = v17->_postalCode;
      v17->_postalCode = v30;

      v32 = [v4 decodeObjectOfClass:v5 forKey:@"cnt"];
      country = v17->_country;
      v17->_country = v32;

      v34 = [v4 decodeObjectOfClass:v6 forKey:@"lat"];
      latitude = v17->_latitude;
      v17->_latitude = v34;

      v36 = [v4 decodeObjectOfClass:v6 forKey:@"lon"];
      longitude = v17->_longitude;
      v17->_longitude = v36;

      v38 = [v4 decodeObjectOfClass:v7 forKey:@"owu"];
      originatingWebsiteURL = v17->_originatingWebsiteURL;
      v17->_originatingWebsiteURL = v38;

      v40 = [v4 decodeObjectOfClass:v7 forKey:@"miu"];
      mapItemURL = v17->_mapItemURL;
      v17->_mapItemURL = v40;

      v42 = [v4 decodeObjectOfClass:v5 forKey:@"lab"];
      label = v17->_label;
      v17->_label = v42;

      v44 = [v4 decodeObjectOfClass:v5 forKey:@"val"];
      value = v17->_value;
      v17->_value = v44;

      v46 = [v4 decodeObjectOfClass:v5 forKey:@"shv"];
      shortValue = v17->_shortValue;
      v17->_shortValue = v46;

      v17->_shouldAggregate = [v4 decodeBoolForKey:@"sha"];
      v48 = objc_autoreleasePoolPush();
      v49 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v8, v5, 0}];
      objc_autoreleasePoolPop(v48);
      v50 = [v4 decodeObjectOfClasses:v49 forKey:@"add"];
      addressComponents = v17->_addressComponents;
      v17->_addressComponents = v50;

      v52 = [v4 decodeObjectOfClass:v5 forKey:@"src"];
      source = v17->_source;
      v17->_source = v52;

      v54 = [v4 decodeObjectOfClass:v5 forKey:@"trg"];
      trigger = v17->_trigger;
      v17->_trigger = v54;

      v56 = [v4 decodeObjectOfClass:v10 forKey:@"cra"];
      createdAt = v17->_createdAt;
      v17->_createdAt = v56;

      v58 = [v4 decodeObjectOfClass:v6 forKey:@"lft"];
      lifetime = v17->_lifetime;
      v17->_lifetime = v58;

      v60 = [v4 decodeObjectOfClass:v5 forKey:@"auh"];
      authorHandle = v17->_authorHandle;
      v17->_authorHandle = v60;

      v62 = objc_autoreleasePoolPush();
      v63 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v9, v5, 0}];
      objc_autoreleasePoolPop(v62);
      v64 = [v4 decodeObjectOfClasses:v63 forKey:@"cnh"];
      contactHandles = v17->_contactHandles;
      v17->_contactHandles = v64;

      v17->_copiedToPasteboard = [v4 decodeBoolForKey:@"cpb"];
    }

    self = v17;
    v15 = self;
  }

  return v15;
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
  v2 = [(PPConnectionsLocation *)self createdAt];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v3 = [(PPConnectionsLocation *)self label];
  if (v3)
  {
    v4 = [(PPConnectionsLocation *)self value];
    v5 = [(PPConnectionsLocation *)self label];
    if (v4)
    {
      v6 = [(PPConnectionsLocation *)self value];
      if (([(__CFString *)v5 isEqualToString:v6]& 1) != 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = [(PPConnectionsLocation *)self label];
      }

      v5 = v7;
    }
  }

  else
  {
    v5 = [(PPConnectionsLocation *)self label];
  }

  v8 = [(PPConnectionsLocation *)self value];

  if (v8)
  {
    v9 = &stru_1F1B327D8;
    if (v5)
    {
      v9 = v5;
    }

    v21 = v9;
    v10 = [(PPConnectionsLocation *)self value];
    v11 = [(PPConnectionsLocation *)self name];
    v12 = [(PPConnectionsLocation *)self originatingBundleID];
    v13 = [(PPConnectionsLocation *)self originatingWebsiteURL];
    v14 = [(PPConnectionsLocation *)self _roundedPredictionAge];
    v15 = [(PPConnectionsLocation *)self shouldAggregate];
    v16 = [(PPConnectionsLocation *)self _pexItemSource];
    v17 = [(PPConnectionsLocation *)self source];
    BYTE2(v20) = v16;
    LOWORD(v20) = v15;
    v18 = [PPQuickTypeItem quickTypeItemWithLabel:"quickTypeItemWithLabel:value:name:date:fields:originatingBundleID:originatingWebsiteURL:predictionAge:shouldAggregate:flags:score:source:sourceIdentifier:" value:v21 name:v10 date:v11 fields:0 originatingBundleID:4 originatingWebsiteURL:v12 predictionAge:200.0 shouldAggregate:v13 flags:v14 score:v20 source:v17 sourceIdentifier:?];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (PPConnectionsLocation)initWithOriginatingBundleID:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PPConnectionsLocation;
  v5 = [(PPConnectionsLocation *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v6 UUIDString];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 copy];
    originatingBundleID = v5->_originatingBundleID;
    v5->_originatingBundleID = v9;
  }

  return v5;
}

+ (unint64_t)round:(double)a3 toNearest:(double)a4
{
  v4 = a3 / a4 + 0.5;
  v5 = floorf(v4) * a4;
  return vcvtas_u32_f32(v5);
}

@end