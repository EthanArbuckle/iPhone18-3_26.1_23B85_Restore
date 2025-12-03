@interface PKEventTicketFaceBucketsFactory
+ (id)auxiliaryFieldsForPass:(id)pass;
+ (id)headerFieldsForPass:(id)pass;
+ (id)primaryFieldsForPass:(id)pass;
+ (id)secondaryFieldsForPass:(id)pass;
@end

@implementation PKEventTicketFaceBucketsFactory

+ (id)headerFieldsForPass:(id)pass
{
  v32[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v4 = objc_alloc_init(MEMORY[0x1E69B8A50]);
  [v4 setType:0];
  v5 = *MEMORY[0x1E69BBC58];
  v6 = [passCopy eventDateInfoForSemanticKey:*MEMORY[0x1E69BBCB8]];
  date = [v6 date];
  v8 = date;
  if (date)
  {
    v9 = date;
  }

  else
  {
    v9 = [passCopy dateForSemanticKey:v5];
  }

  v10 = v9;

  v11 = [passCopy timeZoneForSemanticKey:*MEMORY[0x1E69BBF88]];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    timeZone = [v6 timeZone];
    v15 = timeZone;
    if (timeZone)
    {
      localTimeZone = timeZone;
    }

    else
    {
      localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    }

    v13 = localTimeZone;
  }

  v17 = [passCopy dateForSemanticKey:*MEMORY[0x1E69BBC50]];
  [v4 setKey:v5];
  if (v10)
  {
    v18 = PKMediumDayAndMonthStringFromDate(v10, v13);
    if (v17)
    {
      v31 = v5;
      autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
      [autoupdatingCurrentCalendar setTimeZone:v13];
      v20 = [autoupdatingCurrentCalendar component:4 fromDate:v10];
      if (v20 == [autoupdatingCurrentCalendar component:4 fromDate:v17])
      {
        v21 = PKDateRangeStringFromDateToDate(v10, v17, 0, 0, 0, v13);
      }

      else
      {
        PKMediumDayAndMonthStringFromDate(v17, v13);
        v23 = v30 = v12;
        v21 = PKLocalizedTicketingString(&cfstr_LocalizedDateR.isa, &stru_1F3BD6370.isa, v18, v23);

        v18 = v23;
        v12 = v30;
      }

      v18 = v21;
      v5 = v31;
    }

    if ([v6 ignoreTimeComponents])
    {
      goto LABEL_29;
    }

    if ([v6 isUndetermined])
    {
      v24 = @"LABEL_TIME_TBD";
    }

    else
    {
      if (![v6 isUnannounced])
      {
        v25 = PKTimeStringFromDate(v10, v13);
        goto LABEL_28;
      }

      v24 = @"LABEL_TIME_TBA";
    }

    v25 = PKLocalizedTicketingString(&v24->isa);
LABEL_28:
    v26 = v25;
    [v4 setLabel:v25];

LABEL_29:
    pk_uppercaseStringForPreferredLocale = [v18 pk_uppercaseStringForPreferredLocale];
    [v4 setUnformattedValue:pk_uppercaseStringForPreferredLocale];

    goto LABEL_30;
  }

  if ([v6 isUndetermined])
  {
    v22 = @"LABEL_DATE_TBD";
  }

  else
  {
    if (![v6 isUnannounced])
    {
      goto LABEL_31;
    }

    v22 = @"LABEL_DATE_TBA";
  }

  v18 = PKLocalizedTicketingString(&v22->isa);
  [v4 setUnformattedValue:v18];
LABEL_30:

LABEL_31:
  v32[0] = v4;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];

  return v28;
}

+ (id)primaryFieldsForPass:(id)pass
{
  v22[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v4 = [PKEventTicketFaceBucketsFactory secondaryFieldsForPass:passCopy];
  v5 = [v4 count];

  if (v5 >= 1)
  {
    if (v5 > 3)
    {
      v6 = MEMORY[0x1E695E0F0];
      goto LABEL_23;
    }

    v7 = *MEMORY[0x1E69BBD18];
    seatingInformation = [passCopy seatingInformation];
    firstSeat = [seatingInformation firstSeat];
    v12 = firstSeat;
    if (firstSeat && ([firstSeat type], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v13;
    }

    else
    {
      v14 = *MEMORY[0x1E69BBED0];

      v15 = [passCopy stringForSemanticKey:v14];
      if (v15)
      {
        v8 = v15;
        v7 = v14;
      }

      else
      {
        v7 = *MEMORY[0x1E69BBD30];

        v8 = [passCopy stringForSemanticKey:v7];
        if (!v8 && v5 != 3)
        {
          v18 = *MEMORY[0x1E69BBE18];

          v8 = [passCopy stringForSemanticKey:v18];
          v7 = v18;
        }

        if (!v8)
        {
          goto LABEL_20;
        }
      }
    }

    v19 = objc_alloc_init(MEMORY[0x1E69B8A50]);
    [v19 setType:1];
    [v19 setKey:v7];
    [v19 setUnformattedValue:v8];
    if (v19)
    {
      v22[0] = v19;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

LABEL_21:
      goto LABEL_22;
    }

LABEL_20:
    v6 = MEMORY[0x1E695E0F0];
    goto LABEL_21;
  }

  v7 = objc_alloc_init(MEMORY[0x1E69B8A50]);
  [v7 setType:1];
  v8 = *MEMORY[0x1E69BBD28];
  v9 = [passCopy stringForSemanticKey:v8];
  if (!v9)
  {
    v16 = *MEMORY[0x1E69BBD40];

    v17 = [passCopy stringForSemanticKey:v16];
    if (v17)
    {
      seatingInformation = v17;
      v8 = v16;
      goto LABEL_13;
    }

    v8 = *MEMORY[0x1E69BBE18];

    v9 = [passCopy stringForSemanticKey:v8];
  }

  seatingInformation = v9;
LABEL_13:
  [v7 setKey:v8];
  [v7 setUnformattedValue:seatingInformation];
  v21 = v7;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
LABEL_22:

LABEL_23:

  return v6;
}

+ (id)secondaryFieldsForPass:(id)pass
{
  passCopy = pass;
  seatingInformation = [passCopy seatingInformation];
  firstSeat = [seatingInformation firstSeat];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  designation = [firstSeat designation];
  if (designation)
  {
    v8 = *MEMORY[0x1E69BBD00];
    v9 = objc_alloc_init(MEMORY[0x1E69B8A50]);
    [v9 setType:2];
    [v9 setTextAlignment:1];
    [v9 setKey:v8];
    v10 = PKLocalizedTicketingString(&cfstr_LabelSeatNumbe.isa);
    [v9 setLabel:v10];

    pk_uppercaseStringForPreferredLocale = [designation pk_uppercaseStringForPreferredLocale];
    [v9 setUnformattedValue:pk_uppercaseStringForPreferredLocale];

    [v6 addObject:v9];
  }

  v12 = [firstSeat row];

  if (v12)
  {
    v13 = *MEMORY[0x1E69BBD08];
    v14 = objc_alloc_init(MEMORY[0x1E69B8A50]);
    [v14 setType:2];
    [v14 setTextAlignment:1];
    [v14 setKey:v13];
    v15 = PKLocalizedTicketingString(&cfstr_LabelSeatRow.isa);
    [v14 setLabel:v15];

    pk_uppercaseStringForPreferredLocale2 = [v12 pk_uppercaseStringForPreferredLocale];
    [v14 setUnformattedValue:pk_uppercaseStringForPreferredLocale2];

    [v6 addObject:v14];
  }

  section = [firstSeat section];

  if (section)
  {
    v18 = *MEMORY[0x1E69BBD10];
    v19 = objc_alloc_init(MEMORY[0x1E69B8A50]);
    [v19 setType:2];
    [v19 setTextAlignment:1];
    [v19 setKey:v18];
    v20 = PKLocalizedTicketingString(&cfstr_LabelSeatSecti.isa);
    [v19 setLabel:v20];

    pk_uppercaseStringForPreferredLocale3 = [section pk_uppercaseStringForPreferredLocale];
    [v19 setUnformattedValue:pk_uppercaseStringForPreferredLocale3];

    [v6 addObject:v19];
  }

  aisle = [firstSeat aisle];

  if (aisle)
  {
    v23 = *MEMORY[0x1E69BBCF0];
    v24 = objc_alloc_init(MEMORY[0x1E69B8A50]);
    [v24 setType:2];
    [v24 setTextAlignment:1];
    [v24 setKey:v23];
    v25 = PKLocalizedTicketingString(&cfstr_LabelSeatAisle.isa);
    [v24 setLabel:v25];

    pk_uppercaseStringForPreferredLocale4 = [aisle pk_uppercaseStringForPreferredLocale];
    [v24 setUnformattedValue:pk_uppercaseStringForPreferredLocale4];

    [v6 addObject:v24];
  }

  level = [firstSeat level];

  if (level)
  {
    v28 = *MEMORY[0x1E69BBCF8];
    v29 = objc_alloc_init(MEMORY[0x1E69B8A50]);
    [v29 setType:2];
    [v29 setTextAlignment:1];
    [v29 setKey:v28];
    v30 = PKLocalizedTicketingString(&cfstr_LabelSeatLevel.isa);
    [v29 setLabel:v30];

    pk_uppercaseStringForPreferredLocale5 = [level pk_uppercaseStringForPreferredLocale];
    [v29 setUnformattedValue:pk_uppercaseStringForPreferredLocale5];

    [v6 addObject:v29];
  }

  v32 = *MEMORY[0x1E69BBEE8];
  v33 = [passCopy stringForSemanticKey:*MEMORY[0x1E69BBEE8]];

  if (v33)
  {
    v34 = objc_alloc_init(MEMORY[0x1E69B8A50]);
    [v34 setType:2];
    [v34 setTextAlignment:1];
    [v34 setKey:v32];
    v35 = PKLocalizedTicketingString(&cfstr_LabelEntranceP.isa);
    [v34 setLabel:v35];

    pk_uppercaseStringForPreferredLocale6 = [v33 pk_uppercaseStringForPreferredLocale];
    [v34 setUnformattedValue:pk_uppercaseStringForPreferredLocale6];

    [v6 addObject:v34];
  }

  v37 = *MEMORY[0x1E69BBED8];
  v38 = [passCopy stringForSemanticKey:*MEMORY[0x1E69BBED8]];

  if (v38)
  {
    v39 = objc_alloc_init(MEMORY[0x1E69B8A50]);
    [v39 setType:2];
    [v39 setTextAlignment:1];
    [v39 setKey:v37];
    v40 = PKLocalizedTicketingString(&cfstr_LabelEntranceD.isa);
    [v39 setLabel:v40];

    pk_uppercaseStringForPreferredLocale7 = [v38 pk_uppercaseStringForPreferredLocale];
    [v39 setUnformattedValue:pk_uppercaseStringForPreferredLocale7];

    [v6 addObject:v39];
  }

  v42 = *MEMORY[0x1E69BBEE0];
  v43 = [passCopy stringForSemanticKey:*MEMORY[0x1E69BBEE0]];

  if (v43)
  {
    v44 = objc_alloc_init(MEMORY[0x1E69B8A50]);
    [v44 setType:2];
    [v44 setTextAlignment:1];
    [v44 setKey:v42];
    v45 = PKLocalizedTicketingString(&cfstr_LabelEntranceG.isa);
    [v44 setLabel:v45];

    pk_uppercaseStringForPreferredLocale8 = [v43 pk_uppercaseStringForPreferredLocale];
    [v44 setUnformattedValue:pk_uppercaseStringForPreferredLocale8];

    [v6 addObject:v44];
  }

  v47 = [v6 count];
  if (v47 >= 5)
  {
    [v6 removeObjectsInRange:{4, v47 - 4}];
  }

  return v6;
}

+ (id)auxiliaryFieldsForPass:(id)pass
{
  v13[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v4 = objc_alloc_init(MEMORY[0x1E69B8A50]);
  [v4 setType:3];
  v5 = *MEMORY[0x1E69BBEF0];
  v6 = [passCopy stringForSemanticKey:v5];
  if (v6)
  {
    goto LABEL_2;
  }

  v8 = *MEMORY[0x1E69BBF08];

  v9 = [passCopy stringForSemanticKey:v8];
  if (!v9)
  {
    v5 = *MEMORY[0x1E69BBF10];

    v6 = [passCopy stringForSemanticKey:v5];
LABEL_2:
    v7 = v6;
    goto LABEL_5;
  }

  v7 = v9;
  v5 = v8;
LABEL_5:
  [v4 setKey:v5];
  v10 = [passCopy stringForSemanticKey:*MEMORY[0x1E69BBD20]];
  [v4 setLabel:v10];

  [v4 setUnformattedValue:v7];
  v13[0] = v4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v11;
}

@end