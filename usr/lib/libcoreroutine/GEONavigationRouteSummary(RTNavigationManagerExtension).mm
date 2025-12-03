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
    destinationName = [self destinationName];
    if (destinationName || ([v5 destinationName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      destinationName2 = [self destinationName];
      destinationName3 = [v5 destinationName];
      v9 = [destinationName2 isEqualToString:destinationName3];

      if (destinationName)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = 1;
    }

LABEL_9:
    destination = [self destination];
    latLng = [destination latLng];
    if (!latLng)
    {
      destination2 = [v5 destination];
      latLng2 = [destination2 latLng];
      if (!latLng2)
      {
        v29 = 0;
        v27 = 1;
LABEL_18:

LABEL_19:
        v10 = v9 & v27;
        goto LABEL_20;
      }

      v29 = latLng2;
    }

    destination3 = [self destination];
    latLng3 = [destination3 latLng];
    [latLng3 lat];
    v17 = v16;
    destination4 = [v5 destination];
    latLng4 = [destination4 latLng];
    [latLng4 lat];
    if (vabdd_f64(v17, v20) >= 2.22044605e-16)
    {
      v27 = 0;
    }

    else
    {
      destination5 = [self destination];
      [destination5 latLng];
      v21 = v32 = destination3;
      [v21 lng];
      v23 = v22;
      [v5 destination];
      v24 = v33 = v9;
      latLng5 = [v24 latLng];
      [latLng5 lng];
      v27 = vabdd_f64(v23, v26) < 2.22044605e-16;

      v9 = v33;
      destination3 = v32;
    }

    if (latLng)
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
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self isEqualToRouteSummary:v4];
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
  origin = [self origin];
  if ([origin hasMapItemStorage])
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v22 = v2;
  origin2 = [self origin];
  latLng = [origin2 latLng];
  [latLng lat];
  v5 = v4;
  origin3 = [self origin];
  latLng2 = [origin3 latLng];
  [latLng2 lng];
  v9 = v8;
  destination = [self destination];
  if ([destination hasMapItemStorage])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  destinationName = [self destinationName];
  destination2 = [self destination];
  latLng3 = [destination2 latLng];
  [latLng3 lat];
  v16 = v15;
  destination3 = [self destination];
  latLng4 = [destination3 latLng];
  [latLng4 lng];
  v20 = [v23 stringWithFormat:@"origin, hasMapItem, %@, location, <%f, %f>, destination, hasMapItem, %@, name, %@, location, <%f, %f>", v22, v5, v9, v11, destinationName, v16, v19];

  return v20;
}

@end