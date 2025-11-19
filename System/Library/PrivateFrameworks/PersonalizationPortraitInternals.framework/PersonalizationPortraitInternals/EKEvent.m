@interface EKEvent
- (id)pp_eventNameForCategory:(void *)a1;
@end

@implementation EKEvent

- (id)pp_eventNameForCategory:(void *)a1
{
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [a1 customObjectForKey:*MEMORY[0x277D3A760]];
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = 0;
LABEL_23:

      objc_autoreleasePoolPop(v4);
      goto LABEL_24;
    }

    v6 = [v5 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    v7 = v6;
    if (!v6 || ![v6 count])
    {
      v10 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v8 = [v7 firstObject];
    v9 = v8;
    v10 = 0;
    if (a2 > 4)
    {
      if ((a2 - 6) >= 2)
      {
        if (a2 == 5)
        {
          v11 = [v8 objectForKeyedSubscript:@"reservationFor"];
          v12 = v11;
          v13 = @"arrivalBoatTerminal";
          goto LABEL_19;
        }

        if (a2 != 10)
        {
          goto LABEL_21;
        }
      }
    }

    else if (a2 != 2)
    {
      if (a2 == 3)
      {
        v11 = [v8 objectForKeyedSubscript:@"reservationFor"];
        v12 = v11;
        v13 = @"arrivalStation";
        goto LABEL_19;
      }

      if (a2 == 4)
      {
        v11 = [v8 objectForKeyedSubscript:@"reservationFor"];
        v12 = v11;
        v13 = @"arrivalBusStop";
LABEL_19:
        v14 = [v11 objectForKeyedSubscript:v13];
        v10 = [v14 objectForKeyedSubscript:@"name"];

        goto LABEL_20;
      }

LABEL_21:

      goto LABEL_22;
    }

    v12 = [v8 objectForKeyedSubscript:@"reservationFor"];
    v10 = [v12 objectForKeyedSubscript:@"name"];
LABEL_20:

    goto LABEL_21;
  }

  v10 = 0;
LABEL_24:

  return v10;
}

@end