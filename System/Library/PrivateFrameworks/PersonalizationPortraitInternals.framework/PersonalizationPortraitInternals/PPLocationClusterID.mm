@interface PPLocationClusterID
+ (BOOL)asClusterIDPlacemark:(id)placemark isEqualToPlacemark:(id)toPlacemark;
+ (id)broadenClusterId:(id)id;
+ (id)clustersWithRecords:(id)records;
+ (id)latLongTableWithClusters:(id)clusters;
+ (id)lookupTableWithRecords:(id)records;
+ (void)aggregateRecords:(void *)records toClusters:(void *)clusters withLookupTable:;
- (BOOL)isEqual:(id)equal;
- (PPLocationClusterID)initWithName:(id)name subThoroughfare:(id)thoroughfare thoroughfare:(id)a5 subLocality:(id)locality locality:(id)a7 administrativeArea:(id)area;
- (PPLocationClusterID)initWithPlacemark:(id)placemark;
- (id)description;
- (unint64_t)hash;
@end

@implementation PPLocationClusterID

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_name;
  v5 = [v3 initWithFormat:@"%@:%@:%@:%@:%@:%@", self->_name, self->_subThoroughfare, self->_thoroughfare, self->_subLocality, self->_locality, self->_administrativeArea];

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  lowercaseString = [(NSString *)self->_name lowercaseString];
  v5 = [lowercaseString hash];

  lowercaseString2 = [(NSString *)self->_thoroughfare lowercaseString];
  v7 = [lowercaseString2 hash] - v5 + 32 * v5;

  objc_autoreleasePoolPop(v3);
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v16 = 1;
LABEL_38:

      goto LABEL_39;
    }

    if (v5)
    {
      v7 = [(PPLocationClusterID *)self hash];
      if (v7 == [(PPLocationClusterID *)v6 hash])
      {
        v8 = self->_name;
        name = [(PPLocationClusterID *)v6 name];
        if (!(v8 | name))
        {
          goto LABEL_6;
        }

        v15 = name;
        v16 = 0;
        if (!v8 || !name)
        {
          goto LABEL_37;
        }

        v17 = CFStringCompare(v8, name, 1uLL);

        if (v17 == kCFCompareEqualTo)
        {
LABEL_6:
          v8 = self->_subThoroughfare;
          subThoroughfare = [(PPLocationClusterID *)v6 subThoroughfare];
          if (!(v8 | subThoroughfare))
          {
            goto LABEL_7;
          }

          v15 = subThoroughfare;
          v16 = 0;
          if (!v8 || !subThoroughfare)
          {
            goto LABEL_37;
          }

          v18 = CFStringCompare(v8, subThoroughfare, 1uLL);

          if (v18 == kCFCompareEqualTo)
          {
LABEL_7:
            v8 = self->_thoroughfare;
            thoroughfare = [(PPLocationClusterID *)v6 thoroughfare];
            if (!(v8 | thoroughfare))
            {
              goto LABEL_8;
            }

            v15 = thoroughfare;
            v16 = 0;
            if (!v8 || !thoroughfare)
            {
              goto LABEL_37;
            }

            v19 = CFStringCompare(v8, thoroughfare, 1uLL);

            if (v19 == kCFCompareEqualTo)
            {
LABEL_8:
              v8 = self->_subLocality;
              subLocality = [(PPLocationClusterID *)v6 subLocality];
              if (!(v8 | subLocality))
              {
                goto LABEL_9;
              }

              v15 = subLocality;
              v16 = 0;
              if (!v8 || !subLocality)
              {
                goto LABEL_37;
              }

              v20 = CFStringCompare(v8, subLocality, 1uLL);

              if (v20 == kCFCompareEqualTo)
              {
LABEL_9:
                v8 = self->_locality;
                locality = [(PPLocationClusterID *)v6 locality];
                if (!(v8 | locality))
                {
                  goto LABEL_10;
                }

                v15 = locality;
                v16 = 0;
                if (v8 && locality)
                {
                  v21 = CFStringCompare(v8, locality, 1uLL);

                  if (v21 == kCFCompareEqualTo)
                  {
LABEL_10:
                    v8 = self->_administrativeArea;
                    administrativeArea = [(PPLocationClusterID *)v6 administrativeArea];
                    if (v8 | administrativeArea)
                    {
                      v15 = administrativeArea;
                      v16 = 0;
                      if (v8 && administrativeArea)
                      {
                        v16 = CFStringCompare(v8, administrativeArea, 1uLL) == kCFCompareEqualTo;
                      }
                    }

                    else
                    {
                      v15 = 0;
                      v8 = 0;
                      v16 = 1;
                    }

                    goto LABEL_37;
                  }

                  goto LABEL_33;
                }

LABEL_37:

                goto LABEL_38;
              }
            }
          }
        }
      }
    }

LABEL_33:
    v16 = 0;
    goto LABEL_38;
  }

  v16 = 0;
LABEL_39:

  return v16;
}

- (PPLocationClusterID)initWithPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  name = [placemarkCopy name];
  subThoroughfare = [placemarkCopy subThoroughfare];
  v7 = subThoroughfare;
  if (name)
  {
    if (subThoroughfare)
    {
      subThoroughfare2 = [placemarkCopy subThoroughfare];
    }

    else
    {
      subThoroughfare2 = &stru_284759D38;
    }

    v7 = subThoroughfare2;
  }

  thoroughfare = [placemarkCopy thoroughfare];
  v10 = thoroughfare;
  if (v7)
  {
    if (thoroughfare)
    {
      thoroughfare2 = [placemarkCopy thoroughfare];
    }

    else
    {
      thoroughfare2 = &stru_284759D38;
    }

    v10 = thoroughfare2;
  }

  subLocality = [placemarkCopy subLocality];
  v13 = subLocality;
  if (v10)
  {
    if (subLocality)
    {
      subLocality2 = [placemarkCopy subLocality];
    }

    else
    {
      subLocality2 = &stru_284759D38;
    }

    v13 = subLocality2;
  }

  locality = [placemarkCopy locality];
  v16 = locality;
  if (v13)
  {
    if (locality)
    {
      locality2 = [placemarkCopy locality];
    }

    else
    {
      locality2 = &stru_284759D38;
    }

    v16 = locality2;
  }

  administrativeArea = [placemarkCopy administrativeArea];
  v19 = administrativeArea;
  if (v16)
  {
    if (administrativeArea)
    {
      administrativeArea2 = [placemarkCopy administrativeArea];
    }

    else
    {
      administrativeArea2 = &stru_284759D38;
    }

    v19 = administrativeArea2;
  }

  v21 = [(PPLocationClusterID *)self initWithName:name subThoroughfare:v7 thoroughfare:v10 subLocality:v13 locality:v16 administrativeArea:v19];

  return v21;
}

- (PPLocationClusterID)initWithName:(id)name subThoroughfare:(id)thoroughfare thoroughfare:(id)a5 subLocality:(id)locality locality:(id)a7 administrativeArea:(id)area
{
  nameCopy = name;
  thoroughfareCopy = thoroughfare;
  v21 = a5;
  localityCopy = locality;
  v16 = a7;
  areaCopy = area;
  v24.receiver = self;
  v24.super_class = PPLocationClusterID;
  v18 = [(PPLocationClusterID *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v19->_subThoroughfare, thoroughfare);
    objc_storeStrong(&v19->_thoroughfare, a5);
    objc_storeStrong(&v19->_subLocality, locality);
    objc_storeStrong(&v19->_locality, a7);
    objc_storeStrong(&v19->_administrativeArea, area);
  }

  return v19;
}

+ (id)latLongTableWithClusters:(id)clusters
{
  clustersCopy = clusters;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PPLocationClusterID_latLongTableWithClusters___block_invoke;
  v7[3] = &unk_278976310;
  v5 = v4;
  v8 = v5;
  [clustersCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __48__PPLocationClusterID_latLongTableWithClusters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  obj = v6;
  if (v7)
  {
    v8 = v7;
    v28 = a1;
    v29 = v5;
    v6 = 0;
    v9 = *v32;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 location];
        v14 = [v13 placemark];
        v15 = [v14 location];

        v16 = [v11 location];
        v17 = [v16 placemark];
        v18 = [v17 location];
        if (v18)
        {
          v19 = v18;
          [v15 coordinate];
          v20 = CLLocationCoordinate2DIsValid(v37);

          if (v20)
          {
            if (v6)
            {
              [v6 coordinate];
              v22 = v21;
              [v15 coordinate];
              if (v22 != v23 || ([v6 coordinate], v25 = v24, objc_msgSend(v15, "coordinate"), v25 != v26))
              {

                objc_autoreleasePoolPop(v12);
                v5 = v29;
                v6 = obj;
                goto LABEL_19;
              }
            }

            else
            {
              v6 = v15;
            }
          }
        }

        else
        {
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v5 = v29;
    if (v6)
    {
      [*(v28 + 32) setObject:v6 forKeyedSubscript:v29];
      goto LABEL_19;
    }
  }

  else
  {
LABEL_19:
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)lookupTableWithRecords:(id)records
{
  recordsCopy = records;
  v5 = objc_opt_new();
  [(PPLocationClusterID *)self aggregateRecords:recordsCopy toClusters:0 withLookupTable:v5];

  return v5;
}

+ (void)aggregateRecords:(void *)records toClusters:(void *)clusters withLookupTable:
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a2;
  recordsCopy = records;
  clustersCopy = clusters;
  objc_opt_self();
  if (!clustersCopy)
  {
    clustersCopy = objc_opt_new();
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v8 = v6;
  v55 = v8;
  v56 = [v8 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v56)
  {
    obj = *v67;
    do
    {
      v9 = 0;
      do
      {
        if (*v67 != obj)
        {
          objc_enumerationMutation(v8);
        }

        v60 = v9;
        v10 = *(*(&v66 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v11 = [PPLocationClusterID alloc];
        location = [v10 location];
        placemark = [location placemark];
        v14 = [(PPLocationClusterID *)v11 initWithPlacemark:placemark];

        do
        {
          v15 = [clustersCopy objectForKeyedSubscript:{v14, recordsCopy}];
          if (([v15 isAmbiguous] & 1) == 0)
          {
            location2 = [v10 location];
            placemark2 = [location2 placemark];
            location3 = [v15 location];
            placemark3 = [location3 placemark];
            v20 = [PPLocationClusterID asClusterIDPlacemark:placemark2 isEqualToPlacemark:placemark3];

            if (!v20)
            {
              location4 = [v10 location];
              placemark4 = [location4 placemark];
              location5 = [v15 location];
              placemark5 = [location5 placemark];
              v25 = [placemark4 pp_specificityCompare:placemark5];

              if (v25)
              {
                if (v25 == 1)
                {
                  [clustersCopy setObject:v10 forKeyedSubscript:v14];
                }
              }

              else
              {
                mEMORY[0x277D3A3F0] = [MEMORY[0x277D3A3F0] sharedAmbiguousRecord];
                [clustersCopy setObject:mEMORY[0x277D3A3F0] forKeyedSubscript:v14];
              }
            }
          }

          v27 = [PPLocationClusterID broadenClusterId:v14];

          v14 = v27;
        }

        while (v27);
        objc_autoreleasePoolPop(context);
        v9 = v60 + 1;
        v8 = v55;
      }

      while (v60 + 1 != v56);
      v56 = [v55 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v56);
  }

  v28 = recordsCopy;
  if (recordsCopy)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obja = v8;
    v29 = [obja countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v63;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v62 + 1) + 8 * i);
          v34 = objc_autoreleasePoolPush();
          v35 = [PPLocationClusterID alloc];
          v61 = v33;
          location6 = [v33 location];
          placemark6 = [location6 placemark];
          v38 = [(PPLocationClusterID *)v35 initWithPlacemark:placemark6];

          v39 = [clustersCopy objectForKeyedSubscript:v38];
          v57 = v39;
          contexta = v38;
          if ([v39 isAmbiguous])
          {
            v40 = v38;
          }

          else
          {
            v41 = [PPLocationClusterID alloc];
            location7 = [v39 location];
            [location7 placemark];
            v43 = v34;
            v44 = v30;
            v46 = v45 = v31;
            v40 = [(PPLocationClusterID *)v41 initWithPlacemark:v46];

            v31 = v45;
            v30 = v44;
            v34 = v43;
          }

          v47 = recordsCopy;
          v48 = [recordsCopy objectForKeyedSubscript:{v40, recordsCopy}];

          if (!v48)
          {
            v49 = objc_opt_new();
            [v47 setObject:v49 forKeyedSubscript:v40];
          }

          v50 = [v47 objectForKeyedSubscript:v40];
          [v50 addObject:v61];

          objc_autoreleasePoolPop(v34);
        }

        v30 = [obja countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v30);
    }

    v28 = recordsCopy;
    v8 = v55;
  }

  v51 = *MEMORY[0x277D85DE8];
}

+ (id)clustersWithRecords:(id)records
{
  recordsCopy = records;
  v5 = objc_opt_new();
  [(PPLocationClusterID *)self aggregateRecords:recordsCopy toClusters:v5 withLookupTable:0];

  return v5;
}

+ (BOOL)asClusterIDPlacemark:(id)placemark isEqualToPlacemark:(id)toPlacemark
{
  toPlacemarkCopy = toPlacemark;
  placemarkCopy = placemark;
  v8 = [[self alloc] initWithPlacemark:placemarkCopy];

  v9 = [[self alloc] initWithPlacemark:toPlacemarkCopy];
  LOBYTE(self) = [v8 isEqual:v9];

  return self;
}

+ (id)broadenClusterId:(id)id
{
  idCopy = id;
  objc_opt_self();
  locality = [idCopy locality];

  if (locality)
  {
    locality = objc_opt_new();
    administrativeArea = [idCopy administrativeArea];
    [locality setAdministrativeArea:administrativeArea];

    subLocality = [idCopy subLocality];

    if (subLocality)
    {
      locality2 = [idCopy locality];
      [locality setLocality:locality2];

      thoroughfare = [idCopy thoroughfare];

      if (thoroughfare)
      {
        subLocality2 = [idCopy subLocality];
        [locality setSubLocality:subLocality2];

        subThoroughfare = [idCopy subThoroughfare];

        if (subThoroughfare)
        {
          thoroughfare2 = [idCopy thoroughfare];
          [locality setThoroughfare:thoroughfare2];

          name = [idCopy name];

          if (name)
          {
            subThoroughfare2 = [idCopy subThoroughfare];
            [locality setSubThoroughfare:subThoroughfare2];
          }
        }
      }
    }
  }

  name2 = [locality name];
  v15 = [name2 length];

  if (v15)
  {
    goto LABEL_13;
  }

  [locality setName:0];
  subThoroughfare3 = [locality subThoroughfare];
  v17 = [subThoroughfare3 length];

  if (v17)
  {
    goto LABEL_13;
  }

  [locality setSubThoroughfare:0];
  thoroughfare3 = [locality thoroughfare];
  v19 = [thoroughfare3 length];

  if (v19)
  {
    goto LABEL_13;
  }

  [locality setThoroughfare:0];
  subLocality3 = [locality subLocality];
  v21 = [subLocality3 length];

  if (v21)
  {
    goto LABEL_13;
  }

  [locality setSubLocality:0];
  v4Locality = [locality locality];
  v23 = [v4Locality length];

  if (v23 || ([locality setLocality:0], objc_msgSend(locality, "administrativeArea"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, v25))
  {
LABEL_13:
    v26 = locality;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end