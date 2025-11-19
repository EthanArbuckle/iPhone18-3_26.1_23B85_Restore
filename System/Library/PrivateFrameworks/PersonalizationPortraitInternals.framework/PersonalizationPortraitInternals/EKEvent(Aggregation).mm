@interface EKEvent(Aggregation)
- (BOOL)pp_isConnectionFromFlight:()Aggregation;
- (id)pp_airports;
- (id)pp_locationString;
- (uint64_t)pp_isDupeOfEvent:()Aggregation forCategory:;
- (uint64_t)pp_isDupeOfFlightEvent:()Aggregation;
- (uint64_t)pp_suggestedCategory;
@end

@implementation EKEvent(Aggregation)

- (uint64_t)pp_isDupeOfEvent:()Aggregation forCategory:
{
  v6 = a3;
  v7 = v6;
  if (a4 != 1)
  {
    v9 = [v6 startDate];
    v10 = [a1 startDate];
    [v9 timeIntervalSinceDate:v10];
    if (v11 <= 86400.0)
    {
      v12 = [v7 endDate];
      v13 = [a1 endDate];
      [v12 timeIntervalSinceDate:v13];
      v15 = v14;

      if (v15 <= 86400.0)
      {
        v16 = [(EKEvent *)a1 pp_eventNameForCategory:a4];
        v17 = [(EKEvent *)v7 pp_eventNameForCategory:a4];
        v18 = v17;
        if (v16 && v17 && ([v16 isEqualToString:v17] & 1) != 0)
        {

          v8 = 1;
          goto LABEL_12;
        }
      }
    }

    else
    {
    }

    v8 = 0;
    goto LABEL_12;
  }

  v8 = [a1 pp_isDupeOfFlightEvent:v6];
LABEL_12:

  return v8;
}

- (uint64_t)pp_isDupeOfFlightEvent:()Aggregation
{
  v4 = a3;
  v5 = [a1 pp_airports];
  v6 = [v5 first];
  v7 = [v6 iataCode];
  v8 = [v4 pp_airports];
  v9 = [v8 first];
  v10 = [v9 iataCode];
  if (![v7 isEqualToString:v10])
  {

    goto LABEL_7;
  }

  v20 = a1;
  v22 = [a1 pp_airports];
  v11 = [v22 second];
  v12 = [v11 iataCode];
  [v4 pp_airports];
  v13 = v24 = v4;
  v14 = [v13 second];
  [v14 iataCode];
  v15 = v23 = v5;
  v21 = [v12 isEqualToString:v15];

  v4 = v24;
  if (!v21)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v5 = [v20 startDate];
  v6 = [v24 startDate];
  if (v5 != v6)
  {
LABEL_7:

    goto LABEL_8;
  }

  v16 = [v20 endDate];
  v17 = [v24 endDate];

  if (v16 != v17)
  {
    goto LABEL_8;
  }

  v18 = 1;
LABEL_9:

  return v18;
}

- (id)pp_airports
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 customObjectForKey:*MEMORY[0x277D3A760]];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    v5 = v4;
    if (v4 && [v4 count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 objectForKeyedSubscript:@"reservationFor"];
      v8 = [v7 objectForKeyedSubscript:@"departureAirport"];
      v9 = [v8 objectForKeyedSubscript:@"iataCode"];

      if (!v9 || ![v9 length])
      {
        v10 = [v5 objectAtIndexedSubscript:0];
        v11 = [v10 objectForKeyedSubscript:@"reservationFor"];
        v12 = [v11 objectForKeyedSubscript:@"departureAirportCode"];

        v9 = v12;
      }

      v13 = [v5 objectAtIndexedSubscript:0];
      v14 = [v13 objectForKeyedSubscript:@"reservationFor"];
      v15 = [v14 objectForKeyedSubscript:@"departureAirport"];
      v16 = [v15 objectForKeyedSubscript:@"name"];

      v32 = v16;
      v17 = [[PPFlightAirport alloc] initWithName:v16 iataCode:v9 role:0];
      v18 = [v5 objectAtIndexedSubscript:0];
      v19 = [v18 objectForKeyedSubscript:@"reservationFor"];
      v20 = [v19 objectForKeyedSubscript:@"arrivalAirport"];
      v21 = [v20 objectForKeyedSubscript:@"iataCode"];

      if (!v21 || ![v21 length])
      {
        v22 = [v5 objectAtIndexedSubscript:0];
        v23 = [v22 objectForKeyedSubscript:@"reservationFor"];
        v24 = [v23 objectForKeyedSubscript:@"arrivalAirportCode"];

        v21 = v24;
      }

      v25 = [v5 objectAtIndexedSubscript:0];
      v26 = [v25 objectForKeyedSubscript:@"reservationFor"];
      v27 = [v26 objectForKeyedSubscript:@"arrivalAirport"];
      v28 = [v27 objectForKeyedSubscript:@"name"];

      v29 = [[PPFlightAirport alloc] initWithName:v28 iataCode:v21 role:1];
      v30 = [MEMORY[0x277D42648] tupleWithFirst:v17 second:v29];
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  objc_autoreleasePoolPop(v2);

  return v30;
}

- (BOOL)pp_isConnectionFromFlight:()Aggregation
{
  v4 = a3;
  if ([a1 isEqual:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [a1 pp_airports];
    v8 = [v4 pp_airports];
    v9 = [v7 second];
    v10 = [v8 first];
    v11 = [v9 isEqualToPPFlightAirport:v10];

    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v12 = [v4 startDate];
      v13 = [a1 endDate];
      [v12 timeIntervalSinceDate:v13];
      v15 = v14;

      if (v15 <= 5184000.0)
      {
        v16 = [a1 endLocation];
        v17 = [v16 geoLocation];

        v18 = [v4 structuredLocation];
        v19 = [v18 geoLocation];

        v5 = 0;
        if (v17)
        {
          if (v19)
          {
            [v17 distanceFromLocation:v19];
            if (v20 < 100000.0)
            {
              v5 = 1;
            }
          }
        }
      }

      else
      {
        v5 = 0;
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)pp_locationString
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 pp_suggestedCategory];
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 != 7)
      {
        if (v3 != 10)
        {
          goto LABEL_35;
        }

        v22 = [a1 structuredLocation];
        v23 = [v22 title];
        if (v23)
        {
          v24 = v23;
          v25 = [a1 structuredLocation];
          v26 = [v25 title];
          v27 = [v26 length];

          if (v27)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        v61 = [a1 pp_lodgingName];
        goto LABEL_58;
      }

      v46 = [a1 structuredLocation];
      v47 = [v46 title];
      if (v47)
      {
        v48 = v47;
        v49 = [a1 structuredLocation];
        v50 = [v49 title];
        v51 = [v50 length];

        if (v51)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      v61 = [a1 pp_carRentalDropoffReservationTitle];
    }

    else
    {
      if (v3 != 5)
      {
        v10 = [a1 structuredLocation];
        v11 = [v10 title];
        if (v11)
        {
          v12 = v11;
          v13 = [a1 structuredLocation];
          v14 = [v13 title];
          v15 = [v14 length];

          if (v15)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        v61 = [a1 pp_carRentalPickupReservationTitle];
        goto LABEL_58;
      }

      v34 = [a1 structuredLocation];
      v35 = [v34 title];
      if (v35)
      {
        v36 = v35;
        v37 = [a1 structuredLocation];
        v38 = [v37 title];
        v39 = [v38 length];

        if (v39)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      v61 = [a1 pp_boatReservationTitle];
    }

LABEL_58:
    v54 = v61;
    goto LABEL_59;
  }

  if (v3 > 2)
  {
    if (v3 != 3)
    {
      v16 = [a1 structuredLocation];
      v17 = [v16 title];
      if (v17)
      {
        v18 = v17;
        v19 = [a1 structuredLocation];
        v20 = [v19 title];
        v21 = [v20 length];

        if (v21)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      v61 = [a1 pp_busReservationTitle];
      goto LABEL_58;
    }

    v40 = [a1 structuredLocation];
    v41 = [v40 title];
    if (v41)
    {
      v42 = v41;
      v43 = [a1 structuredLocation];
      v44 = [v43 title];
      v45 = [v44 length];

      if (v45)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    v61 = [a1 pp_trainReservationTitle];
    goto LABEL_58;
  }

  if (v3 == 1)
  {
    v28 = [a1 structuredLocation];
    v29 = [v28 title];
    if (!v29)
    {

LABEL_39:
      v56 = [a1 pp_airports];
      v52 = [v56 second];

      if (!v52)
      {
        goto LABEL_43;
      }

      v57 = [v52 name];
      if (!v57)
      {
        goto LABEL_43;
      }

      v58 = v57;
      v59 = [v52 name];
      v60 = [v59 length];

      if (v60)
      {
        v53 = [v52 name];
      }

      else
      {
LABEL_43:
        v53 = [v52 iataCode];
      }

      goto LABEL_34;
    }

    v30 = v29;
    v31 = [a1 structuredLocation];
    v32 = [v31 title];
    v33 = [v32 length];

    if (!v33)
    {
      goto LABEL_39;
    }

LABEL_33:
    v52 = [a1 structuredLocation];
    v53 = [v52 title];
LABEL_34:
    v54 = v53;

    goto LABEL_59;
  }

  if (v3 == 2)
  {
    v4 = [a1 structuredLocation];
    v5 = [v4 title];
    if (!v5)
    {

LABEL_51:
      v61 = [a1 pp_foodReservationTitle];
      goto LABEL_58;
    }

    v6 = v5;
    v7 = [a1 structuredLocation];
    v8 = [v7 title];
    v9 = [v8 length];

    if (!v9)
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }

LABEL_35:
  v55 = pp_default_log_handle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
  {
    *v66 = 0;
    _os_log_fault_impl(&dword_23224A000, v55, OS_LOG_TYPE_FAULT, "[EKEvent+Aggregation pp_location] Dealing with an unexpected PPSuggestedEventCategory", v66, 2u);
  }

  v54 = 0;
LABEL_59:
  v62 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v63 = [v54 componentsSeparatedByCharactersInSet:v62];
  v64 = [v63 _pas_componentsJoinedByString:@" "];

  objc_autoreleasePoolPop(v2);

  return v64;
}

- (uint64_t)pp_suggestedCategory
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 customObjectForKey:*MEMORY[0x277D3A760]];
  objc_autoreleasePoolPop(v2);
  if (v3)
  {
    v4 = [MEMORY[0x277D3A390] suggestedEventCategoryFromMetadata:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end