@interface AVPlayerMediaSelectionCriteria(TVPAdditions)
- (uint64_t)tvp_isEqualToCriteria:()TVPAdditions;
@end

@implementation AVPlayerMediaSelectionCriteria(TVPAdditions)

- (uint64_t)tvp_isEqualToCriteria:()TVPAdditions
{
  v6 = a3;
  if (a1 != v6)
  {
    v7 = [a1 preferredLanguages];
    v8 = [v6 preferredLanguages];
    if (v7 != v8)
    {
      v9 = [a1 preferredLanguages];
      v3 = [v6 preferredLanguages];
      v34 = v9;
      if (![v9 isEqual:v3])
      {
        v10 = 0;
        goto LABEL_23;
      }
    }

    v11 = [a1 preferredMediaCharacteristics];
    v12 = [v6 preferredMediaCharacteristics];
    if (v11 != v12)
    {
      v13 = [a1 preferredMediaCharacteristics];
      v4 = [v6 preferredMediaCharacteristics];
      if (![v13 isEqual:v4])
      {
        v10 = 0;
LABEL_21:

LABEL_22:
        if (v7 == v8)
        {
LABEL_24:

          goto LABEL_25;
        }

LABEL_23:

        goto LABEL_24;
      }

      v32 = v13;
    }

    v14 = [a1 principalMediaCharacteristics];
    v15 = [v6 principalMediaCharacteristics];
    v33 = v14;
    if (v14 == v15)
    {
      v30 = v4;
      v31 = v12;
    }

    else
    {
      v16 = [a1 principalMediaCharacteristics];
      v28 = [v6 principalMediaCharacteristics];
      v29 = v16;
      if (![v16 isEqual:?])
      {
        v10 = 0;
        v25 = v33;
        goto LABEL_19;
      }

      v30 = v4;
      v31 = v12;
    }

    v17 = [a1 premiumMediaCharacteristics];
    v18 = [v6 premiumMediaCharacteristics];
    v19 = v18;
    if (v17 == v18)
    {

      v10 = 1;
    }

    else
    {
      v20 = [a1 premiumMediaCharacteristics];
      [v6 premiumMediaCharacteristics];
      v27 = v8;
      v21 = v7;
      v22 = v11;
      v24 = v23 = v3;
      v10 = [v20 isEqual:v24];

      v3 = v23;
      v11 = v22;
      v7 = v21;
      v8 = v27;
    }

    v25 = v33;
    v4 = v30;
    v12 = v31;
    if (v33 == v15)
    {
LABEL_20:

      v13 = v32;
      if (v11 == v12)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_19:

    goto LABEL_20;
  }

  v10 = 1;
LABEL_25:

  return v10;
}

@end