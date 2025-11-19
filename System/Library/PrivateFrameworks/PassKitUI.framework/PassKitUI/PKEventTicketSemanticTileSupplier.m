@interface PKEventTicketSemanticTileSupplier
+ (id)createSupplierForPass:(id)a3;
- (CLLocation)location;
- (MKLocalSearchRequest)mapsSearchRequest;
- (MKMapItemRequest)mapsItemRequest;
- (PKEventTicketSemanticTileSupplier)initWithPass:(id)a3;
- (id)weatherFetchDateForDate:(id)a3;
@end

@implementation PKEventTicketSemanticTileSupplier

+ (id)createSupplierForPass:(id)a3
{
  v3 = a3;
  result = [v3 style];
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

    v6 = [[PKEventTicketSemanticTileSupplier alloc] initWithPass:v3];
  }

  return v6;
}

- (PKEventTicketSemanticTileSupplier)initWithPass:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKEventTicketSemanticTileSupplier;
  v6 = [(PKEventTicketSemanticTileSupplier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
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
  v3 = [(PKEventTicketSemanticTileSupplier *)self venueName];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696F260]);
    [v4 setNaturalLanguageQuery:v3];
    v5 = [(PKEventTicketSemanticTileSupplier *)self location];
    v6 = v5;
    if (v5)
    {
      MEMORY[0x1BFB41730]([v5 coordinate]);
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
  v2 = [(PKPass *)self->_pass eventLocation];
  v3 = [v2 CLLocation];

  return v3;
}

- (id)weatherFetchDateForDate:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPass *)self->_pass relevantDates];
  if (![v5 count])
  {
    v18 = 0;
    goto LABEL_25;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v7)
  {

    goto LABEL_20;
  }

  v8 = v7;
  v23 = v5;
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
      v13 = [v12 interval];
      v14 = v13;
      if (v13)
      {
        if (![v13 containsDate:v4])
        {
          goto LABEL_14;
        }

        v15 = v9;
        v9 = v4;
      }

      else
      {
        v15 = [v12 earliestDate];
        if ([v4 compare:v15] == -1 || (objc_msgSend(MEMORY[0x1E695DEE8], "autoupdatingCurrentCalendar"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isDate:inSameDayAsDate:", v15, v4), v16, v17))
        {
          v15 = v15;

          v9 = v15;
        }
      }

LABEL_14:
    }

    v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v8);

  v5 = v23;
  if (!v9)
  {
LABEL_20:
    v19 = [MEMORY[0x1E69B8A68] findDateFromDates:v6 option:0];
    v20 = [MEMORY[0x1E69B8A68] findDateFromDates:v6 option:3];
    if ([v4 compare:v19] == -1)
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