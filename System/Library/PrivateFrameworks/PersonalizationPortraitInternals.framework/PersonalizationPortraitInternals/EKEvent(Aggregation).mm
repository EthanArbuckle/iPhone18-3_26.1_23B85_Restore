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
    startDate = [v6 startDate];
    startDate2 = [self startDate];
    [startDate timeIntervalSinceDate:startDate2];
    if (v11 <= 86400.0)
    {
      endDate = [v7 endDate];
      endDate2 = [self endDate];
      [endDate timeIntervalSinceDate:endDate2];
      v15 = v14;

      if (v15 <= 86400.0)
      {
        v16 = [(EKEvent *)self pp_eventNameForCategory:a4];
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

  v8 = [self pp_isDupeOfFlightEvent:v6];
LABEL_12:

  return v8;
}

- (uint64_t)pp_isDupeOfFlightEvent:()Aggregation
{
  v4 = a3;
  pp_airports = [self pp_airports];
  first = [pp_airports first];
  iataCode = [first iataCode];
  pp_airports2 = [v4 pp_airports];
  first2 = [pp_airports2 first];
  iataCode2 = [first2 iataCode];
  if (![iataCode isEqualToString:iataCode2])
  {

    goto LABEL_7;
  }

  selfCopy = self;
  pp_airports3 = [self pp_airports];
  second = [pp_airports3 second];
  iataCode3 = [second iataCode];
  [v4 pp_airports];
  v13 = v24 = v4;
  second2 = [v13 second];
  [second2 iataCode];
  v15 = v23 = pp_airports;
  v21 = [iataCode3 isEqualToString:v15];

  v4 = v24;
  if (!v21)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  pp_airports = [selfCopy startDate];
  first = [v24 startDate];
  if (pp_airports != first)
  {
LABEL_7:

    goto LABEL_8;
  }

  endDate = [selfCopy endDate];
  endDate2 = [v24 endDate];

  if (endDate != endDate2)
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
  v3 = [self customObjectForKey:*MEMORY[0x277D3A760]];
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
  if ([self isEqual:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    pp_airports = [self pp_airports];
    pp_airports2 = [v4 pp_airports];
    second = [pp_airports second];
    first = [pp_airports2 first];
    v11 = [second isEqualToPPFlightAirport:first];

    if (v11)
    {
      v5 = 1;
    }

    else
    {
      startDate = [v4 startDate];
      endDate = [self endDate];
      [startDate timeIntervalSinceDate:endDate];
      v15 = v14;

      if (v15 <= 5184000.0)
      {
        endLocation = [self endLocation];
        geoLocation = [endLocation geoLocation];

        structuredLocation = [v4 structuredLocation];
        geoLocation2 = [structuredLocation geoLocation];

        v5 = 0;
        if (geoLocation)
        {
          if (geoLocation2)
          {
            [geoLocation distanceFromLocation:geoLocation2];
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
  pp_suggestedCategory = [self pp_suggestedCategory];
  if (pp_suggestedCategory > 4)
  {
    if (pp_suggestedCategory > 6)
    {
      if (pp_suggestedCategory != 7)
      {
        if (pp_suggestedCategory != 10)
        {
          goto LABEL_35;
        }

        structuredLocation = [self structuredLocation];
        title = [structuredLocation title];
        if (title)
        {
          v24 = title;
          structuredLocation2 = [self structuredLocation];
          title2 = [structuredLocation2 title];
          v27 = [title2 length];

          if (v27)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        pp_lodgingName = [self pp_lodgingName];
        goto LABEL_58;
      }

      structuredLocation3 = [self structuredLocation];
      title3 = [structuredLocation3 title];
      if (title3)
      {
        v48 = title3;
        structuredLocation4 = [self structuredLocation];
        title4 = [structuredLocation4 title];
        v51 = [title4 length];

        if (v51)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      pp_lodgingName = [self pp_carRentalDropoffReservationTitle];
    }

    else
    {
      if (pp_suggestedCategory != 5)
      {
        structuredLocation5 = [self structuredLocation];
        title5 = [structuredLocation5 title];
        if (title5)
        {
          v12 = title5;
          structuredLocation6 = [self structuredLocation];
          title6 = [structuredLocation6 title];
          v15 = [title6 length];

          if (v15)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        pp_lodgingName = [self pp_carRentalPickupReservationTitle];
        goto LABEL_58;
      }

      structuredLocation7 = [self structuredLocation];
      title7 = [structuredLocation7 title];
      if (title7)
      {
        v36 = title7;
        structuredLocation8 = [self structuredLocation];
        title8 = [structuredLocation8 title];
        v39 = [title8 length];

        if (v39)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      pp_lodgingName = [self pp_boatReservationTitle];
    }

LABEL_58:
    v54 = pp_lodgingName;
    goto LABEL_59;
  }

  if (pp_suggestedCategory > 2)
  {
    if (pp_suggestedCategory != 3)
    {
      structuredLocation9 = [self structuredLocation];
      title9 = [structuredLocation9 title];
      if (title9)
      {
        v18 = title9;
        structuredLocation10 = [self structuredLocation];
        title10 = [structuredLocation10 title];
        v21 = [title10 length];

        if (v21)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      pp_lodgingName = [self pp_busReservationTitle];
      goto LABEL_58;
    }

    structuredLocation11 = [self structuredLocation];
    title11 = [structuredLocation11 title];
    if (title11)
    {
      v42 = title11;
      structuredLocation12 = [self structuredLocation];
      title12 = [structuredLocation12 title];
      v45 = [title12 length];

      if (v45)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    pp_lodgingName = [self pp_trainReservationTitle];
    goto LABEL_58;
  }

  if (pp_suggestedCategory == 1)
  {
    structuredLocation13 = [self structuredLocation];
    title13 = [structuredLocation13 title];
    if (!title13)
    {

LABEL_39:
      pp_airports = [self pp_airports];
      second = [pp_airports second];

      if (!second)
      {
        goto LABEL_43;
      }

      name = [second name];
      if (!name)
      {
        goto LABEL_43;
      }

      v58 = name;
      name2 = [second name];
      v60 = [name2 length];

      if (v60)
      {
        name3 = [second name];
      }

      else
      {
LABEL_43:
        name3 = [second iataCode];
      }

      goto LABEL_34;
    }

    v30 = title13;
    structuredLocation14 = [self structuredLocation];
    title14 = [structuredLocation14 title];
    v33 = [title14 length];

    if (!v33)
    {
      goto LABEL_39;
    }

LABEL_33:
    second = [self structuredLocation];
    name3 = [second title];
LABEL_34:
    v54 = name3;

    goto LABEL_59;
  }

  if (pp_suggestedCategory == 2)
  {
    structuredLocation15 = [self structuredLocation];
    title15 = [structuredLocation15 title];
    if (!title15)
    {

LABEL_51:
      pp_lodgingName = [self pp_foodReservationTitle];
      goto LABEL_58;
    }

    v6 = title15;
    structuredLocation16 = [self structuredLocation];
    title16 = [structuredLocation16 title];
    v9 = [title16 length];

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
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v63 = [v54 componentsSeparatedByCharactersInSet:newlineCharacterSet];
  v64 = [v63 _pas_componentsJoinedByString:@" "];

  objc_autoreleasePoolPop(v2);

  return v64;
}

- (uint64_t)pp_suggestedCategory
{
  v2 = objc_autoreleasePoolPush();
  v3 = [self customObjectForKey:*MEMORY[0x277D3A760]];
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