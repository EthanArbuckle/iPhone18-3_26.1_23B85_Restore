@interface AVPlayerMediaSelectionCriteria(TVPAdditions)
- (uint64_t)tvp_isEqualToCriteria:()TVPAdditions;
@end

@implementation AVPlayerMediaSelectionCriteria(TVPAdditions)

- (uint64_t)tvp_isEqualToCriteria:()TVPAdditions
{
  v6 = a3;
  if (self != v6)
  {
    preferredLanguages = [self preferredLanguages];
    preferredLanguages2 = [v6 preferredLanguages];
    if (preferredLanguages != preferredLanguages2)
    {
      preferredLanguages3 = [self preferredLanguages];
      preferredLanguages4 = [v6 preferredLanguages];
      v34 = preferredLanguages3;
      if (![preferredLanguages3 isEqual:preferredLanguages4])
      {
        v10 = 0;
        goto LABEL_23;
      }
    }

    preferredMediaCharacteristics = [self preferredMediaCharacteristics];
    preferredMediaCharacteristics2 = [v6 preferredMediaCharacteristics];
    if (preferredMediaCharacteristics != preferredMediaCharacteristics2)
    {
      preferredMediaCharacteristics3 = [self preferredMediaCharacteristics];
      preferredMediaCharacteristics4 = [v6 preferredMediaCharacteristics];
      if (![preferredMediaCharacteristics3 isEqual:preferredMediaCharacteristics4])
      {
        v10 = 0;
LABEL_21:

LABEL_22:
        if (preferredLanguages == preferredLanguages2)
        {
LABEL_24:

          goto LABEL_25;
        }

LABEL_23:

        goto LABEL_24;
      }

      v32 = preferredMediaCharacteristics3;
    }

    principalMediaCharacteristics = [self principalMediaCharacteristics];
    principalMediaCharacteristics2 = [v6 principalMediaCharacteristics];
    v33 = principalMediaCharacteristics;
    if (principalMediaCharacteristics == principalMediaCharacteristics2)
    {
      v30 = preferredMediaCharacteristics4;
      v31 = preferredMediaCharacteristics2;
    }

    else
    {
      principalMediaCharacteristics3 = [self principalMediaCharacteristics];
      principalMediaCharacteristics4 = [v6 principalMediaCharacteristics];
      v29 = principalMediaCharacteristics3;
      if (![principalMediaCharacteristics3 isEqual:?])
      {
        v10 = 0;
        v25 = v33;
        goto LABEL_19;
      }

      v30 = preferredMediaCharacteristics4;
      v31 = preferredMediaCharacteristics2;
    }

    premiumMediaCharacteristics = [self premiumMediaCharacteristics];
    premiumMediaCharacteristics2 = [v6 premiumMediaCharacteristics];
    v19 = premiumMediaCharacteristics2;
    if (premiumMediaCharacteristics == premiumMediaCharacteristics2)
    {

      v10 = 1;
    }

    else
    {
      premiumMediaCharacteristics3 = [self premiumMediaCharacteristics];
      [v6 premiumMediaCharacteristics];
      v27 = preferredLanguages2;
      v21 = preferredLanguages;
      v22 = preferredMediaCharacteristics;
      v24 = v23 = preferredLanguages4;
      v10 = [premiumMediaCharacteristics3 isEqual:v24];

      preferredLanguages4 = v23;
      preferredMediaCharacteristics = v22;
      preferredLanguages = v21;
      preferredLanguages2 = v27;
    }

    v25 = v33;
    preferredMediaCharacteristics4 = v30;
    preferredMediaCharacteristics2 = v31;
    if (v33 == principalMediaCharacteristics2)
    {
LABEL_20:

      preferredMediaCharacteristics3 = v32;
      if (preferredMediaCharacteristics == preferredMediaCharacteristics2)
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