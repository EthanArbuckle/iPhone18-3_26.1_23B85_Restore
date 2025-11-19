@interface PPLocationClusterID
+ (BOOL)asClusterIDPlacemark:(id)a3 isEqualToPlacemark:(id)a4;
+ (id)broadenClusterId:(id)a3;
+ (id)clustersWithRecords:(id)a3;
+ (id)latLongTableWithClusters:(id)a3;
+ (id)lookupTableWithRecords:(id)a3;
+ (void)aggregateRecords:(void *)a3 toClusters:(void *)a4 withLookupTable:;
- (BOOL)isEqual:(id)a3;
- (PPLocationClusterID)initWithName:(id)a3 subThoroughfare:(id)a4 thoroughfare:(id)a5 subLocality:(id)a6 locality:(id)a7 administrativeArea:(id)a8;
- (PPLocationClusterID)initWithPlacemark:(id)a3;
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
  v4 = [(NSString *)self->_name lowercaseString];
  v5 = [v4 hash];

  v6 = [(NSString *)self->_thoroughfare lowercaseString];
  v7 = [v6 hash] - v5 + 32 * v5;

  objc_autoreleasePoolPop(v3);
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
        v9 = [(PPLocationClusterID *)v6 name];
        if (!(v8 | v9))
        {
          goto LABEL_6;
        }

        v15 = v9;
        v16 = 0;
        if (!v8 || !v9)
        {
          goto LABEL_37;
        }

        v17 = CFStringCompare(v8, v9, 1uLL);

        if (v17 == kCFCompareEqualTo)
        {
LABEL_6:
          v8 = self->_subThoroughfare;
          v10 = [(PPLocationClusterID *)v6 subThoroughfare];
          if (!(v8 | v10))
          {
            goto LABEL_7;
          }

          v15 = v10;
          v16 = 0;
          if (!v8 || !v10)
          {
            goto LABEL_37;
          }

          v18 = CFStringCompare(v8, v10, 1uLL);

          if (v18 == kCFCompareEqualTo)
          {
LABEL_7:
            v8 = self->_thoroughfare;
            v11 = [(PPLocationClusterID *)v6 thoroughfare];
            if (!(v8 | v11))
            {
              goto LABEL_8;
            }

            v15 = v11;
            v16 = 0;
            if (!v8 || !v11)
            {
              goto LABEL_37;
            }

            v19 = CFStringCompare(v8, v11, 1uLL);

            if (v19 == kCFCompareEqualTo)
            {
LABEL_8:
              v8 = self->_subLocality;
              v12 = [(PPLocationClusterID *)v6 subLocality];
              if (!(v8 | v12))
              {
                goto LABEL_9;
              }

              v15 = v12;
              v16 = 0;
              if (!v8 || !v12)
              {
                goto LABEL_37;
              }

              v20 = CFStringCompare(v8, v12, 1uLL);

              if (v20 == kCFCompareEqualTo)
              {
LABEL_9:
                v8 = self->_locality;
                v13 = [(PPLocationClusterID *)v6 locality];
                if (!(v8 | v13))
                {
                  goto LABEL_10;
                }

                v15 = v13;
                v16 = 0;
                if (v8 && v13)
                {
                  v21 = CFStringCompare(v8, v13, 1uLL);

                  if (v21 == kCFCompareEqualTo)
                  {
LABEL_10:
                    v8 = self->_administrativeArea;
                    v14 = [(PPLocationClusterID *)v6 administrativeArea];
                    if (v8 | v14)
                    {
                      v15 = v14;
                      v16 = 0;
                      if (v8 && v14)
                      {
                        v16 = CFStringCompare(v8, v14, 1uLL) == kCFCompareEqualTo;
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

- (PPLocationClusterID)initWithPlacemark:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 subThoroughfare];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v4 subThoroughfare];
    }

    else
    {
      v8 = &stru_284759D38;
    }

    v7 = v8;
  }

  v9 = [v4 thoroughfare];
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
      v11 = [v4 thoroughfare];
    }

    else
    {
      v11 = &stru_284759D38;
    }

    v10 = v11;
  }

  v12 = [v4 subLocality];
  v13 = v12;
  if (v10)
  {
    if (v12)
    {
      v14 = [v4 subLocality];
    }

    else
    {
      v14 = &stru_284759D38;
    }

    v13 = v14;
  }

  v15 = [v4 locality];
  v16 = v15;
  if (v13)
  {
    if (v15)
    {
      v17 = [v4 locality];
    }

    else
    {
      v17 = &stru_284759D38;
    }

    v16 = v17;
  }

  v18 = [v4 administrativeArea];
  v19 = v18;
  if (v16)
  {
    if (v18)
    {
      v20 = [v4 administrativeArea];
    }

    else
    {
      v20 = &stru_284759D38;
    }

    v19 = v20;
  }

  v21 = [(PPLocationClusterID *)self initWithName:v5 subThoroughfare:v7 thoroughfare:v10 subLocality:v13 locality:v16 administrativeArea:v19];

  return v21;
}

- (PPLocationClusterID)initWithName:(id)a3 subThoroughfare:(id)a4 thoroughfare:(id)a5 subLocality:(id)a6 locality:(id)a7 administrativeArea:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PPLocationClusterID;
  v18 = [(PPLocationClusterID *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, a3);
    objc_storeStrong(&v19->_subThoroughfare, a4);
    objc_storeStrong(&v19->_thoroughfare, a5);
    objc_storeStrong(&v19->_subLocality, a6);
    objc_storeStrong(&v19->_locality, a7);
    objc_storeStrong(&v19->_administrativeArea, a8);
  }

  return v19;
}

+ (id)latLongTableWithClusters:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PPLocationClusterID_latLongTableWithClusters___block_invoke;
  v7[3] = &unk_278976310;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

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

+ (id)lookupTableWithRecords:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [(PPLocationClusterID *)a1 aggregateRecords:v4 toClusters:0 withLookupTable:v5];

  return v5;
}

+ (void)aggregateRecords:(void *)a3 toClusters:(void *)a4 withLookupTable:
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v52 = a3;
  v7 = a4;
  objc_opt_self();
  if (!v7)
  {
    v7 = objc_opt_new();
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
        v12 = [v10 location];
        v13 = [v12 placemark];
        v14 = [(PPLocationClusterID *)v11 initWithPlacemark:v13];

        do
        {
          v15 = [v7 objectForKeyedSubscript:{v14, v52}];
          if (([v15 isAmbiguous] & 1) == 0)
          {
            v16 = [v10 location];
            v17 = [v16 placemark];
            v18 = [v15 location];
            v19 = [v18 placemark];
            v20 = [PPLocationClusterID asClusterIDPlacemark:v17 isEqualToPlacemark:v19];

            if (!v20)
            {
              v21 = [v10 location];
              v22 = [v21 placemark];
              v23 = [v15 location];
              v24 = [v23 placemark];
              v25 = [v22 pp_specificityCompare:v24];

              if (v25)
              {
                if (v25 == 1)
                {
                  [v7 setObject:v10 forKeyedSubscript:v14];
                }
              }

              else
              {
                v26 = [MEMORY[0x277D3A3F0] sharedAmbiguousRecord];
                [v7 setObject:v26 forKeyedSubscript:v14];
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

  v28 = v52;
  if (v52)
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
          v36 = [v33 location];
          v37 = [v36 placemark];
          v38 = [(PPLocationClusterID *)v35 initWithPlacemark:v37];

          v39 = [v7 objectForKeyedSubscript:v38];
          v57 = v39;
          contexta = v38;
          if ([v39 isAmbiguous])
          {
            v40 = v38;
          }

          else
          {
            v41 = [PPLocationClusterID alloc];
            v42 = [v39 location];
            [v42 placemark];
            v43 = v34;
            v44 = v30;
            v46 = v45 = v31;
            v40 = [(PPLocationClusterID *)v41 initWithPlacemark:v46];

            v31 = v45;
            v30 = v44;
            v34 = v43;
          }

          v47 = v52;
          v48 = [v52 objectForKeyedSubscript:{v40, v52}];

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

    v28 = v52;
    v8 = v55;
  }

  v51 = *MEMORY[0x277D85DE8];
}

+ (id)clustersWithRecords:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [(PPLocationClusterID *)a1 aggregateRecords:v4 toClusters:v5 withLookupTable:0];

  return v5;
}

+ (BOOL)asClusterIDPlacemark:(id)a3 isEqualToPlacemark:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPlacemark:v7];

  v9 = [[a1 alloc] initWithPlacemark:v6];
  LOBYTE(a1) = [v8 isEqual:v9];

  return a1;
}

+ (id)broadenClusterId:(id)a3
{
  v3 = a3;
  objc_opt_self();
  v4 = [v3 locality];

  if (v4)
  {
    v4 = objc_opt_new();
    v5 = [v3 administrativeArea];
    [v4 setAdministrativeArea:v5];

    v6 = [v3 subLocality];

    if (v6)
    {
      v7 = [v3 locality];
      [v4 setLocality:v7];

      v8 = [v3 thoroughfare];

      if (v8)
      {
        v9 = [v3 subLocality];
        [v4 setSubLocality:v9];

        v10 = [v3 subThoroughfare];

        if (v10)
        {
          v11 = [v3 thoroughfare];
          [v4 setThoroughfare:v11];

          v12 = [v3 name];

          if (v12)
          {
            v13 = [v3 subThoroughfare];
            [v4 setSubThoroughfare:v13];
          }
        }
      }
    }
  }

  v14 = [v4 name];
  v15 = [v14 length];

  if (v15)
  {
    goto LABEL_13;
  }

  [v4 setName:0];
  v16 = [v4 subThoroughfare];
  v17 = [v16 length];

  if (v17)
  {
    goto LABEL_13;
  }

  [v4 setSubThoroughfare:0];
  v18 = [v4 thoroughfare];
  v19 = [v18 length];

  if (v19)
  {
    goto LABEL_13;
  }

  [v4 setThoroughfare:0];
  v20 = [v4 subLocality];
  v21 = [v20 length];

  if (v21)
  {
    goto LABEL_13;
  }

  [v4 setSubLocality:0];
  v22 = [v4 locality];
  v23 = [v22 length];

  if (v23 || ([v4 setLocality:0], objc_msgSend(v4, "administrativeArea"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, v25))
  {
LABEL_13:
    v26 = v4;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end