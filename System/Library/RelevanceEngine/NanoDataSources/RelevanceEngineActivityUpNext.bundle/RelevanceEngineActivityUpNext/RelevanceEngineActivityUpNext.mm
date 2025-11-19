void sub_F5C(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    v4 = [REElementOpenAction alloc];
    v5 = [NSURL URLWithString:@"ActivityMonitorApp://"];
    v6 = [v4 initWithURL:v5 applicationID:@"com.apple.ActivityMonitorApp"];

    v7 = REDemoDateForIdentifier();
    v8 = REAbsoluteRelevanceProviderForDate();
    v9 = [REElement alloc];
    v10 = [v3 content];
    v16 = v8;
    v11 = [NSArray arrayWithObjects:&v16 count:1];
    v12 = [v9 initWithIdentifier:@"rings" content:v10 action:v6 relevanceProviders:v11];

    v13 = *(a1 + 32);
    v15 = v12;
    v14 = [NSArray arrayWithObjects:&v15 count:1];
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id _CoachingProgressUpdatesEnabled()
{
  v0 = [NSUserDefaults alloc];
  v1 = [v0 initWithSuiteName:kHKNanolifestylePreferencesDomain];
  v2 = [v1 valueForKey:@"EnableProgressUpdates"];
  if (v2)
  {
    v3 = [v1 BOOLForKey:@"EnableProgressUpdates"];
  }

  else
  {
    v3 = &dword_0 + 1;
  }

  return v3;
}

void sub_1B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA8(uint64_t a1)
{
  v2 = [*(a1 + 32) currentCalendar];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [NSSet alloc];
  v10 = [*(a1 + 32) historicalSummariesByIndex];
  v6 = [v10 allValues];
  v7 = [v5 initWithArray:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1EE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _significantTimeChangeOccurred];
}

void sub_1F50(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 persistentDomainForName:kHKNanolifestylePreferencesDomain];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[Supergreen] Coaching preferences changed: %@", &v10, 0xCu);
  }

  v6 = _CoachingProgressUpdatesEnabled();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setProgressUpdatesEnabled:v6];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 delegate];
  [v9 invalidateElements];
}

void sub_2260(uint64_t a1)
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEBUG))
  {
    sub_4EF8();
  }

  v2 = [*(a1 + 32) _createWalkSuggestionElement];
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEBUG))
  {
    sub_4F2C();
  }

  v3 = *(a1 + 40);
  if (v2)
  {
    v5 = v2;
    v4 = [NSArray arrayWithObjects:&v5 count:1];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    (*(v3 + 16))(v3, &__NSArray0__struct);
  }
}

void sub_2DF8(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[Supergreen] Calling into typical day model to cache values.", buf, 2u);
  }

  v3 = [*(a1 + 32) typicalDayModel];
  v4 = [v3 willCompleteMoveGoalWithBufferPercentage:0.15];

  v5 = [*(a1 + 32) typicalDayModel];
  v6 = [*(a1 + 32) settingsController];
  LOBYTE(v3) = [v5 shouldSuggestWalkWithActivitySettingsController:v6];

  v7 = [*(a1 + 32) typicalDayModel];
  v8 = [*(a1 + 32) settingsController];
  [v7 briskWalkTimeToCompleteMoveGoalWithAcitivitySettingsController:v8];
  v10 = v9;

  v11 = [*(a1 + 32) serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2F88;
  block[3] = &unk_C450;
  block[4] = *(a1 + 32);
  v13 = v4;
  v14 = v3;
  block[5] = v10;
  dispatch_async(v11, block);
}

id sub_2F88(uint64_t a1)
{
  if (*(a1 + 48) == [*(a1 + 32) willCompleteGoal] && *(a1 + 49) == objc_msgSend(*(a1 + 32), "shouldSuggestWalk") && (objc_msgSend(*(a1 + 32), "suggestedWalkTime"), v2 == *(a1 + 40)))
  {
    _HKInitializeLogging();
    v3 = HKLogCoaching;
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[Supergreen] Values for willCompleteGoal, shouldSuggestWalk, and suggestedWalkTime are unchanged; not refreshing elements", v11, 2u);
    }
  }

  else
  {
    [*(a1 + 32) setWillCompleteGoal:*(a1 + 48)];
    [*(a1 + 32) setShouldSuggestWalk:*(a1 + 49)];
    [*(a1 + 32) setSuggestedWalkTime:*(a1 + 40)];
    _HKInitializeLogging();
    v4 = HKLogCoaching;
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      LODWORD(v5) = [v5 willCompleteGoal];
      v7 = [*(a1 + 32) shouldSuggestWalk];
      [*(a1 + 32) suggestedWalkTime];
      v11[0] = 67109632;
      v11[1] = v5;
      v12 = 1024;
      v13 = v7;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[Supergreen] New cached values: willCompleteGoal = %{BOOL}d, shouldSuggestWalk = %{BOOL}d, suggestedWalkTime = %lf.", v11, 0x18u);
    }

    v9 = [*(a1 + 32) delegate];
    [v9 invalidateElements];
  }

  return [*(a1 + 32) setIsUpdatingTypicalDayCachedValues:0];
}

void sub_31CC(uint64_t a1)
{
  if ([*(a1 + 32) isRebuildingTypicalDayModel])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEBUG))
    {
      sub_5044();
    }
  }

  else
  {
    [*(a1 + 32) setIsRebuildingTypicalDayModel:1];
    v2 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_32A4;
    block[3] = &unk_C428;
    block[4] = *(a1 + 32);
    dispatch_async(v2, block);
  }
}

void sub_32A4(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[Supergreen] Rebuilding the typical day model.", buf, 2u);
  }

  v3 = [*(a1 + 32) typicalDayModel];
  v4 = [*(a1 + 32) _typicalDayDateInterval];
  [v3 rebuildWithInterval:v4];

  v5 = [*(a1 + 32) serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_33B8;
  block[3] = &unk_C428;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

id sub_33B8(uint64_t a1)
{
  [*(a1 + 32) setIsRebuildingTypicalDayModel:0];
  v2 = *(a1 + 32);

  return [v2 _queue_updateCachedTypicalDayValues];
}

void sub_3898(uint64_t a1)
{
  v2 = [*(a1 + 32) typicalDayModel];
  [v2 handleUpdatedCurrentActivitySummary:*(a1 + 40)];
}

void sub_3C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3C68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = *(a1 + 40) - 1;
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_ERROR))
      {
        sub_50B8();
      }

      v12 = [WeakRetained healthStore];
      [v12 stopQuery:v7];

      [WeakRetained _queryActivitySummaryHistoryWithRemainingRetries:v11];
    }

    else if (v8)
    {
      _HKInitializeLogging();
      v13 = HKLogCoaching;
      if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        *buf = 134217984;
        v19 = [v8 count];
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[Supergreen] Historical activity summary query found %lu summaries.", buf, 0xCu);
      }

      v15 = [WeakRetained serialQueue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_3E5C;
      v16[3] = &unk_C478;
      v16[4] = WeakRetained;
      v17 = v8;
      dispatch_async(v15, v16);
    }
  }
}

id sub_3E5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSSet setWithArray:*(a1 + 40)];
  [v2 _queue_handleNewActivitySummaries:v3];

  v4 = *(a1 + 32);

  return [v4 _rebuildTypicalDayModel];
}

void sub_4040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4064(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v9)
    {
      v12 = *(a1 + 40) - 1;
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_ERROR))
      {
        sub_516C();
      }

      v13 = [v11 healthStore];
      [v13 stopQuery:v7];

      [v11 _startCurrentActivitySummaryQueryWithRemainingRetries:v12];
    }

    else if (v8)
    {
      v14 = [WeakRetained serialQueue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_41C4;
      v15[3] = &unk_C478;
      v15[4] = v11;
      v16 = v8;
      dispatch_async(v14, v15);
    }
  }
}

void sub_4270(uint64_t a1)
{
  v2 = [*(a1 + 32) healthStore];
  [v2 executeQuery:*(a1 + 40)];

  v4 = [*(a1 + 32) queries];
  v3 = [v4 setByAddingObject:*(a1 + 40)];
  [*(a1 + 32) setQueries:v3];
}

void sub_4374(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) queries];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 32) healthStore];
        [v8 stopQuery:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = +[NSSet set];
  [*(a1 + 32) setQueries:v9];
}

void sub_4720(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_4754(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id NLActivityUpNextRelevanceEngineDemoDateFormatter()
{
  if (qword_11040 != -1)
  {
    sub_51E0();
  }

  v1 = qword_11038;

  return v1;
}

void sub_47B8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_11038;
  qword_11038 = v1;

  v3 = qword_11038;

  [v3 setDateFormat:@"HH:mm"];
}

id NLActivityUpNextRelevanceEngineContent(unint64_t a1)
{
  v2 = objc_alloc_init(REContent);
  v19 = [UIImageSymbolConfiguration configurationWithPointSize:30.55];
  v3 = [UIImage _systemImageNamed:@"figure.walk.circle" withConfiguration:v19];
  [v2 setOverrideBodyImage:v3];

  v4 = +[NSDate date];
  v18 = +[NSCalendar currentCalendar];
  v5 = [v18 dateByAddingUnit:64 value:a1 toDate:v4 options:0];
  v6 = [CLKRelativeDateTextProvider textProviderWithDate:v5 style:0 units:64];
  [v6 setOverrideDate:v4];
  v7 = @"UP_NEXT_ACTIVITY_DESCRIPTION_AN";
  if (((1 << a1) & 0x40900) == 0)
  {
    v7 = @"UP_NEXT_ACTIVITY_DESCRIPTION";
  }

  if (a1 <= 0x12)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"UP_NEXT_ACTIVITY_DESCRIPTION";
  }

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v8 value:&stru_C820 table:@"Localizable"];

  v11 = [CLKTextProvider textProviderWithFormat:v10, v6];
  [v2 setDescription1TextProvider:v11];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"UP_NEXT_ACTIVITY_HEADER" value:&stru_C820 table:@"Localizable"];
  v14 = [CLKSimpleTextProvider textProviderWithText:v13];
  [v2 setHeaderTextProvider:v14];

  v15 = +[ARUIMetricColors energyColors];
  v16 = [v15 nonGradientTextColor];
  [v2 setTintColor:v16];

  return v2;
}

id _NLActivityUpNextRelevanceEngineSampleFeature()
{
  if (qword_11050 != -1)
  {
    sub_51F4();
  }

  v1 = qword_11048;

  return v1;
}

void sub_4AE8(id a1)
{
  qword_11048 = [REFeature featureWithName:@"SamplePosition" featureType:2];

  _objc_release_x1();
}

id NLActivityUpNextRelevanceEngineSampleRelevanceProviderForPosition(double a1)
{
  v2 = _NLActivityUpNextRelevanceEngineSampleFeature();
  v3 = [REFeatureValue featureValueWithDouble:a1];
  v4 = [RERelevanceProvider customRelevanceProviderForFeature:v2 withValue:v3];

  return v4;
}

void sub_4FA0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 currentSummary];
  sub_4748();
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "[Supergreen] Creating element! Current summary = %@", v5, 0xCu);
}