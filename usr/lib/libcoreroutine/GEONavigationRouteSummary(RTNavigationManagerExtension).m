@interface GEONavigationRouteSummary(RTNavigationManagerExtension)
- (id)description;
- (uint64_t)isEqual:()RTNavigationManagerExtension;
- (uint64_t)isEqualToRouteSummary:()RTNavigationManagerExtension;
@end

@implementation GEONavigationRouteSummary(RTNavigationManagerExtension)

- (uint64_t)isEqualToRouteSummary:()RTNavigationManagerExtension
{
  v5 = a3;
  if (v5)
  {
    v6 = [a1 destinationName];
    if (v6 || ([v5 destinationName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [a1 destinationName];
      v8 = [v5 destinationName];
      v9 = [v7 isEqualToString:v8];

      if (v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = 1;
    }

LABEL_9:
    v11 = [a1 destination];
    v12 = [v11 latLng];
    if (!v12)
    {
      v30 = [v5 destination];
      v13 = [v30 latLng];
      if (!v13)
      {
        v29 = 0;
        v27 = 1;
LABEL_18:

LABEL_19:
        v10 = v9 & v27;
        goto LABEL_20;
      }

      v29 = v13;
    }

    v14 = [a1 destination];
    v15 = [v14 latLng];
    [v15 lat];
    v17 = v16;
    v18 = [v5 destination];
    v19 = [v18 latLng];
    [v19 lat];
    if (vabdd_f64(v17, v20) >= 2.22044605e-16)
    {
      v27 = 0;
    }

    else
    {
      v31 = [a1 destination];
      [v31 latLng];
      v21 = v32 = v14;
      [v21 lng];
      v23 = v22;
      [v5 destination];
      v24 = v33 = v9;
      v25 = [v24 latLng];
      [v25 lng];
      v27 = vabdd_f64(v23, v26) < 2.22044605e-16;

      v9 = v33;
      v14 = v32;
    }

    if (v12)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v10 = 0;
LABEL_20:

  return v10;
}

- (uint64_t)isEqual:()RTNavigationManagerExtension
{
  v4 = a3;
  if (a1 == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 isEqualToRouteSummary:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v23 = MEMORY[0x277CCACA8];
  v25 = [a1 origin];
  if ([v25 hasMapItemStorage])
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v22 = v2;
  v24 = [a1 origin];
  v3 = [v24 latLng];
  [v3 lat];
  v5 = v4;
  v6 = [a1 origin];
  v7 = [v6 latLng];
  [v7 lng];
  v9 = v8;
  v10 = [a1 destination];
  if ([v10 hasMapItemStorage])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [a1 destinationName];
  v13 = [a1 destination];
  v14 = [v13 latLng];
  [v14 lat];
  v16 = v15;
  v17 = [a1 destination];
  v18 = [v17 latLng];
  [v18 lng];
  v20 = [v23 stringWithFormat:@"origin, hasMapItem, %@, location, <%f, %f>, destination, hasMapItem, %@, name, %@, location, <%f, %f>", v22, v5, v9, v11, v12, v16, v19];

  return v20;
}

@end