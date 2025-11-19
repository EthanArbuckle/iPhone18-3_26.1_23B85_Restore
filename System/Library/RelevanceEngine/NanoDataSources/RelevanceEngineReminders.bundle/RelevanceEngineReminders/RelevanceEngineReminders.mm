id TTRBundleGet()
{
  if (qword_8550 != -1)
  {
    sub_2248();
  }

  v1 = qword_8548;

  return v1;
}

void sub_1A74(id a1)
{
  qword_8548 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id REReminderBundle()
{
  if (qword_8560 != -1)
  {
    sub_225C();
  }

  v1 = qword_8558;

  return v1;
}

void sub_1B14(id a1)
{
  qword_8558 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id REReminderDescription2TextProvider(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    if (v3)
    {
      [CLKTimeTextProvider textProviderWithDate:v3];
    }

    else
    {
      [CLKSimpleTextProvider textProviderWithText:v4];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id REReminderHeaderImageProvider(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4 && (!v3 ? (v5 = @"location.fill") : (v5 = @"clock"), [UIImage systemImageNamed:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [CLKImageProvider imageProviderWithOnePieceImage:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id REReminderLocationName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 radius];
    if (v3 <= 0.0 || ([v2 contactLabel], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v5 = +[NSCharacterSet newlineCharacterSet];
      v6 = [v2 title];
      v4 = [v6 _stringByReplacingCharactersInSet:v5 withCharacter:32];
    }

    if ([v4 length])
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id REReminderContent(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = REReminderLocationName(a3);
  v10 = REReminderDescription2TextProvider(v8, v9);
  if (v10)
  {
    if ((a4 - 1) > 2)
    {
      v11 = &stru_4358;
    }

    else
    {
      v11 = off_4208[a4 - 1];
    }

    if ([(__CFString *)v11 length])
    {
      v11 = [NSString stringWithFormat:@"%@ ", v11];
    }

    v12 = objc_alloc_init(REContent);
    v13 = [NSString stringWithFormat:@"%@%@", v11, v7];
    v14 = REReminderBundle();
    v15 = [v14 localizedStringForKey:@"UP_NEXT_REMINDERS_TITLE" value:&stru_4358 table:@"ReminderDataSource"];
    v16 = [CLKSimpleTextProvider textProviderWithText:v15];
    [v12 setHeaderTextProvider:v16];

    v17 = [CLKSimpleTextProvider textProviderWithText:v13];
    [v12 setDescription1TextProvider:v17];

    [v12 setDescription2TextProvider:v10];
    v18 = +[UIColor whiteColor];
    [v12 setTintColor:v18];

    v19 = REReminderHeaderImageProvider(v8, v9);
    [v12 setHeaderImageProvider:v19];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id REReminderRelevanceProvider(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [NSMutableArray arrayWithCapacity:2];
  v10 = [REPriorityRelevanceProvider alloc];
  *&v11 = (a4 * 0.16333) + 0.5;
  v12 = [v10 initWithPriority:v11];
  [v9 addObject:v12];
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    v18 = [v8 title];
    v19 = v18;
    v20 = &stru_4358;
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v22 = [CLCircularRegion alloc];
    [v8 latitude];
    v24 = v23;
    [v8 longitude];
    v26 = CLLocationCoordinate2DMake(v24, v25);
    [v8 radius];
    v13 = [v22 initWithCenter:v21 radius:v26.latitude identifier:{v26.longitude, v27}];

    v28 = [v8 referenceFrameString];
    [v13 setGeoReferenceFrame:{objc_msgSend(v28, "intValue")}];

    if (a3 == 1)
    {
      v30 = 0;
      v29 = 1;
    }

    else
    {
      if (a3 != 2)
      {
LABEL_11:
        v14 = [[REGeofenceRelevanceProvider alloc] initWithRegion:v13];
        [v9 addObject:v14];
        goto LABEL_12;
      }

      v29 = 0;
      v30 = 1;
    }

    [v13 setNotifyOnEntry:v29];
    [v13 setNotifyOnExit:v30];
    goto LABEL_11;
  }

  v13 = REEndOfDayForDate();
  v14 = [[NSDateInterval alloc] initWithStartDate:v7 endDate:v13];
  [v13 timeIntervalSinceDate:v7];
  v16 = [v7 dateByAddingTimeInterval:{fmin(v15, 900.0)}];
  v17 = [[REDateRelevanceProvider alloc] initWithEventInterval:v14 becomesIrrelevantDate:v16];
  [v9 addObject:v17];

LABEL_12:
LABEL_13:

  return v9;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}