@interface PPLocationSupport
+ (BOOL)fuzzyMatchingLocations:(id)a3 and:(id)a4;
+ (id)fullAddressOfLocation:(id)a3;
+ (id)locationFromThoroughfare:(id)a3 subThoroughfare:(id)a4 locality:(id)a5 subLocality:(id)a6 administrativeArea:(id)a7 postalCode:(id)a8 category:(unsigned __int16)a9;
+ (id)mapTitleForLocation:(id)a3;
+ (id)streetAddressOfLocation:(id)a3;
@end

@implementation PPLocationSupport

+ (id)locationFromThoroughfare:(id)a3 subThoroughfare:(id)a4 locality:(id)a5 subLocality:(id)a6 administrativeArea:(id)a7 postalCode:(id)a8 category:(unsigned __int16)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_opt_new();
  [v20 setObject:v19 forKeyedSubscript:@"Thoroughfare"];

  [v20 setObject:v18 forKeyedSubscript:@"SubThoroughfare"];
  [v20 setObject:v17 forKeyedSubscript:@"City"];

  [v20 setObject:v16 forKeyedSubscript:@"SubLocality"];
  [v20 setObject:v15 forKeyedSubscript:@"State"];

  [v20 setObject:v14 forKeyedSubscript:@"ZIP"];
  v21 = [objc_alloc(MEMORY[0x277CBFC40]) initWithLocation:0 addressDictionary:v20 region:0 areasOfInterest:0];
  v22 = [objc_alloc(MEMORY[0x277D3A3D8]) initWithPlacemark:v21 category:a9 mostRelevantRecord:0];

  return v22;
}

+ (BOOL)fuzzyMatchingLocations:(id)a3 and:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 == v6)
  {
    v16 = 1;
    goto LABEL_42;
  }

  v7 = [v5 placemark];
  v8 = [v7 name];
  if (!v8)
  {

LABEL_8:
    v17 = [v5 placemark];
    v18 = [v17 postalCode];
    if (v18)
    {
      v19 = v18;
      v20 = [v6 placemark];
      v21 = [v20 postalCode];

      if (v21)
      {
        v22 = [v5 placemark];
        v23 = [v22 postalCode];
        v24 = [v6 placemark];
        v25 = [v24 postalCode];
        v26 = [v23 caseInsensitiveCompare:v25];

        if (v26)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    v27 = [v5 placemark];
    v28 = [v27 country];
    if (v28)
    {
      v29 = v28;
      v30 = [v6 placemark];
      v31 = [v30 country];

      if (v31)
      {
        v32 = [v5 placemark];
        v33 = [v32 country];
        v34 = [v6 placemark];
        v35 = [v34 country];
        v36 = [v33 caseInsensitiveCompare:v35];

        if (v36)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    v37 = [v5 placemark];
    v38 = [v37 locality];
    if (v38)
    {
      v39 = v38;
      v40 = [v6 placemark];
      v41 = [v40 locality];

      if (v41)
      {
        v42 = [v5 placemark];
        v43 = [v42 locality];
        v44 = [v6 placemark];
        v45 = [v44 locality];
        v46 = [v43 caseInsensitiveCompare:v45];

        if (v46)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    v47 = [v5 placemark];
    v48 = [v47 subLocality];
    if (v48)
    {
      v49 = v48;
      v50 = [v6 placemark];
      v51 = [v50 subLocality];

      if (v51)
      {
        v52 = [v5 placemark];
        v53 = [v52 subLocality];
        v54 = [v6 placemark];
        v55 = [v54 subLocality];
        v56 = [v53 caseInsensitiveCompare:v55];

        if (v56)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    v57 = [v5 placemark];
    v58 = [v57 thoroughfare];
    if (v58)
    {
      v59 = v58;
      v60 = [v6 placemark];
      v61 = [v60 thoroughfare];

      if (v61)
      {
        v62 = [v5 placemark];
        v63 = [v62 thoroughfare];
        v64 = [v6 placemark];
        v65 = [v64 thoroughfare];
        v66 = [v63 caseInsensitiveCompare:v65];

        if (v66)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    v67 = [v5 placemark];
    v68 = [v67 subThoroughfare];
    if (v68)
    {
      v69 = v68;
      v70 = [v6 placemark];
      v71 = [v70 subThoroughfare];

      if (v71)
      {
        v72 = [v5 placemark];
        v73 = [v72 subThoroughfare];
        v74 = [v6 placemark];
        v75 = [v74 subThoroughfare];
        v76 = [v73 caseInsensitiveCompare:v75];

        if (v76)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
    }

    v77 = [v5 placemark];
    v78 = [v77 administrativeArea];
    if (v78)
    {
      v79 = v78;
      v80 = [v6 placemark];
      v81 = [v80 administrativeArea];

      if (v81)
      {
        v82 = [v5 placemark];
        v83 = [v82 administrativeArea];
        v84 = [v6 placemark];
        v85 = [v84 administrativeArea];
        v86 = [v83 caseInsensitiveCompare:v85];

        if (v86)
        {
LABEL_41:
          v16 = 0;
          goto LABEL_42;
        }
      }
    }

    else
    {
    }

    v12 = [PPLocationSupport fullAddressOfLocation:v5];
    v88 = [PPLocationSupport fullAddressOfLocation:v6];
    v13 = v88;
    v16 = 0;
    if (v12 && v88)
    {
      v16 = [v12 caseInsensitiveCompare:v88] == 0;
    }

    goto LABEL_5;
  }

  v9 = v8;
  v10 = [v6 placemark];
  v11 = [v10 name];

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = [v5 placemark];
  v13 = [v12 name];
  v14 = [v6 placemark];
  v15 = [v14 name];
  v16 = [v13 caseInsensitiveCompare:v15] == 0;

LABEL_5:
LABEL_42:

  return v16;
}

+ (id)mapTitleForLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 placemark];
  v6 = [v5 name];

  if (v6)
  {
    v7 = [v4 placemark];

    v8 = [v7 name];
    v4 = v7;
  }

  else
  {
    v8 = [a1 streetAddressOfLocation:v4];
  }

  return v8;
}

+ (id)fullAddressOfLocation:(id)a3
{
  v4 = a3;
  v5 = [a1 streetAddressOfLocation:v4];
  v6 = [v4 placemark];
  v7 = [v6 locality];
  v8 = [v4 placemark];
  v9 = [v8 administrativeArea];
  v10 = [v4 placemark];
  v11 = [v10 postalCode];
  v12 = [v4 placemark];

  v13 = [v12 country];
  v14 = [PPNamedEntitySupport fullAddressForStreetAddress:v5 city:v7 state:v9 postalCode:v11 country:v13];

  return v14;
}

+ (id)streetAddressOfLocation:(id)a3
{
  v3 = a3;
  v4 = [v3 placemark];
  v5 = [v4 thoroughfare];
  v6 = [v3 placemark];

  v7 = [v6 subThoroughfare];
  v8 = [PPNamedEntitySupport streetAddressFromThoroughfare:v5 subThoroughfare:v7];

  return v8;
}

@end