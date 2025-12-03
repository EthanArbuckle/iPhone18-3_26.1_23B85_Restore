@interface PKEventTicketSemanticTileSupplier
+ (id)createSupplierForPass:(id)pass;
- (CLLocation)location;
- (MKLocalSearchRequest)mapsSearchRequest;
- (MKMapItemRequest)mapsItemRequest;
- (PKEventTicketSemanticTileSupplier)initWithPass:(id)pass;
- (id)weatherFetchDateForDate:(id)date;
@end

@implementation PKEventTicketSemanticTileSupplier

+ (id)createSupplierForPass:(id)pass
{
  passCopy = pass;
  result = [passCopy style];
  if (result < 9 || result == 10)
  {
    v6 = 0;
  }

  else
  {
    if (result == 13)
    {
      __break(1u);
      return result;
    }

    v6 = [[PKEventTicketSemanticTileSupplier alloc] initWithPass:passCopy];
  }

  return v6;
}

- (PKEventTicketSemanticTileSupplier)initWithPass:(id)pass
{
  passCopy = pass;
  v9.receiver = self;
  v9.super_class = PKEventTicketSemanticTileSupplier;
  v6 = [(PKEventTicketSemanticTileSupplier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
  }

  return v7;
}

- (MKMapItemRequest)mapsItemRequest
{
  v2 = [(PKPass *)self->_pass stringForSemanticKey:*MEMORY[0x1E69BBF00]];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696F290]);
    v4 = [objc_alloc(MEMORY[0x1E696F280]) initWithIdentifierString:v2];
    v5 = [v3 initWithMapItemIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MKLocalSearchRequest)mapsSearchRequest
{
  venueName = [(PKEventTicketSemanticTileSupplier *)self venueName];
  if (venueName)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696F260]);
    [v4 setNaturalLanguageQuery:venueName];
    location = [(PKEventTicketSemanticTileSupplier *)self location];
    v6 = location;
    if (location)
    {
      MEMORY[0x1BFB41730]([location coordinate]);
      [v4 setRegion:?];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CLLocation)location
{
  eventLocation = [(PKPass *)self->_pass eventLocation];
  cLLocation = [eventLocation CLLocation];

  return cLLocation;
}

- (id)weatherFetchDateForDate:(id)date
{
  v29 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  relevantDates = [(PKPass *)self->_pass relevantDates];
  if (![relevantDates count])
  {
    v18 = 0;
    goto LABEL_25;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = relevantDates;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v7)
  {

    goto LABEL_20;
  }

  v8 = v7;
  v23 = relevantDates;
  v9 = 0;
  v10 = *v25;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v24 + 1) + 8 * i);
      interval = [v12 interval];
      v14 = interval;
      if (interval)
      {
        if (![interval containsDate:dateCopy])
        {
          goto LABEL_14;
        }

        earliestDate = v9;
        v9 = dateCopy;
      }

      else
      {
        earliestDate = [v12 earliestDate];
        if ([dateCopy compare:earliestDate] == -1 || (objc_msgSend(MEMORY[0x1E695DEE8], "autoupdatingCurrentCalendar"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isDate:inSameDayAsDate:", earliestDate, dateCopy), v16, v17))
        {
          earliestDate = earliestDate;

          v9 = earliestDate;
        }
      }

LABEL_14:
    }

    v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v8);

  relevantDates = v23;
  if (!v9)
  {
LABEL_20:
    v19 = [MEMORY[0x1E69B8A68] findDateFromDates:v6 option:0];
    v20 = [MEMORY[0x1E69B8A68] findDateFromDates:v6 option:3];
    if ([dateCopy compare:v19] == -1)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v9 = v21;
  }

  v18 = v9;
LABEL_25:

  return v18;
}

@end