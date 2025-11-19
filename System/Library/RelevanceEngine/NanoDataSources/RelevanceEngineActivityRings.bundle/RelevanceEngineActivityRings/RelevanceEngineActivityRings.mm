void sub_FFC(uint64_t a1)
{
  v2 = REUISampleRelevanceProviderForSamplePosition();
  v3 = objc_alloc_init(HKActivitySummary);
  v4 = +[HKUnit kilocalorieUnit];
  v5 = [HKQuantity quantityWithUnit:v4 doubleValue:500.0];
  [v3 setActiveEnergyBurnedGoal:v5];

  v6 = [v3 activeEnergyBurnedGoal];
  [v3 setActiveEnergyBurned:v6];

  v7 = +[HKUnit minuteUnit];
  v8 = [HKQuantity quantityWithUnit:v7 doubleValue:30.0];
  [v3 setAppleExerciseTimeGoal:v8];

  v9 = [v3 appleExerciseTimeGoal];
  [v3 setAppleExerciseTime:v9];

  v10 = +[HKUnit countUnit];
  v11 = [HKQuantity quantityWithUnit:v10 doubleValue:12.0];
  [v3 setAppleStandHoursGoal:v11];

  v12 = [v3 appleStandHoursGoal];
  [v3 setAppleStandHours:v12];

  v13 = RingsElementWithActivitySummary(v3, v2);
  v14 = *(a1 + 32);
  v16 = v13;
  v15 = [NSArray arrayWithObjects:&v16 count:1];
  (*(v14 + 16))(v14, v15);
}

id _FormattingManager()
{
  if (qword_C760 != -1)
  {
    sub_3164();
  }

  v1 = qword_C758;

  return v1;
}

void sub_126C(id a1)
{
  v4 = +[HKHealthStore fiui_sharedHealthStoreForCarousel];
  v1 = [[FIUIUnitManager alloc] initWithHealthStore:v4];
  v2 = [[FIUIFormattingManager alloc] initWithUnitManager:v1];
  v3 = qword_C758;
  qword_C758 = v2;
}

id RingsElementWithActivitySummary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v113 = v3;
  if (FIActivitySummaryHasNonZeroMoveGoal())
  {
    v112 = objc_alloc_init(REContent);
    [v112 setStyle:3];
    v110 = v4;
    if ([v3 activityMoveMode] == &dword_0 + 2)
    {
      v5 = +[HKUnit minuteUnit];
    }

    else
    {
      v8 = _FormattingManager();
      v9 = [v8 unitManager];
      v5 = [v9 userActiveEnergyBurnedUnit];
    }

    v10 = FIMoveQuantityForActivitySummary();
    v11 = FIMoveGoalQuantityForActivitySummary();
    v108 = v10;
    [v10 doubleValueForUnit:v5];
    v13 = v12;
    v107 = v11;
    [v11 doubleValueForUnit:v5];
    v104 = v14;
    v15 = [NSNumber numberWithDouble:v13];
    v16 = +[HKUnit minuteUnit];
    LODWORD(v11) = [v5 isEqual:v16];

    v109 = v5;
    if (v11)
    {
      v17 = FIUIBundle();
      v18 = @"Localizable-tinker";
      v19 = [v17 localizedStringForKey:@"ACTIVITY_MOVE_VALUE_MIN_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable-tinker"];

      v20 = FIUIBundle();
      v21 = v20;
      v22 = @"ACTIVITY_MOVE_VALUE_MIN_UNIT";
    }

    else
    {
      v23 = [HKUnit jouleUnitWithMetricPrefix:9];
      v24 = [v5 isEqual:v23];

      if (!v24)
      {
        v28 = +[HKUnit largeCalorieUnit];
        v29 = [v5 isEqual:v28];

        v30 = FIUIBundle();
        v27 = [v30 localizedStringForKey:@"ACTIVITY_MOVE_VALUE_KCAL_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable"];

        v20 = FIUIBundle();
        v21 = v20;
        if (v29)
        {
          v22 = @"ACTIVITY_MOVE_VALUE_CAL_UNIT";
        }

        else
        {
          v22 = @"ACTIVITY_MOVE_VALUE_KCAL_UNIT";
        }

        v26 = @"Localizable";
        goto LABEL_17;
      }

      v25 = FIUIBundle();
      v18 = @"Localizable";
      v19 = [v25 localizedStringForKey:@"ACTIVITY_MOVE_VALUE_KJ_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable"];

      v20 = FIUIBundle();
      v21 = v20;
      v22 = @"ACTIVITY_MOVE_VALUE_KJ_UNIT";
    }

    v26 = v18;
    v27 = v19;
LABEL_17:
    v31 = [v20 localizedStringForKey:v22 value:&stru_84F0 table:v26];
    v32 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v31, [v15 integerValue]);

    v33 = [FIUIFormattingManager stringWithNumber:v15 decimalPrecision:1];
    v34 = [v32 localizedLowercaseString];

    v35 = [v27 rangeOfString:@"<value>"];
    v105 = v27;
    v106 = v15;
    v102 = v34;
    v103 = v33;
    if (v35 <= [v27 rangeOfString:@"<unit>"])
    {
      [NSString stringWithFormat:@"%@ %@", v33, v34];
    }

    else
    {
      [NSString stringWithFormat:@"%@ %@", v34, v33];
    }
    v101 = ;
    v36 = [CLKSimpleTextProvider textProviderWithText:v101];
    [v36 setUseLowercaseSmallCaps:1];
    v100 = v36;
    [v112 setHeaderTextProvider:v36];
    [v112 setHeaderFontStyle:0];
    v37 = [v3 appleExerciseTime];
    v38 = +[HKUnit minuteUnit];
    [v37 doubleValueForUnit:v38];
    v40 = v39;

    v41 = [v3 appleExerciseTimeGoal];
    v42 = +[HKUnit minuteUnit];
    [v41 doubleValueForUnit:v42];
    v44 = v43;

    v45 = [NSNumber numberWithDouble:v40];
    v46 = FIUIBundle();
    v47 = [v46 localizedStringForKey:@"ACTIVITY_EXERCISE_VALUE_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable"];

    v48 = [FIUIFormattingManager stringWithNumber:v45 decimalPrecision:1];
    v49 = FIUIBundle();
    v50 = [v49 localizedStringForKey:@"ACTIVITY_EXERCISE_VALUE_UNIT" value:&stru_84F0 table:@"Localizable"];
    v99 = v45;
    v51 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v50, [v45 integerValue]);

    v52 = [v51 localizedLowercaseString];

    v53 = [v47 rangeOfString:@"<value>"];
    v98 = v47;
    v96 = v52;
    if (v53 <= [v47 rangeOfString:@"<unit>"])
    {
      [NSString stringWithFormat:@"%@ %@", v48, v52];
    }

    else
    {
      [NSString stringWithFormat:@"%@ %@", v52, v48];
    }
    v95 = ;
    v54 = [CLKSimpleTextProvider textProviderWithText:v95];
    [v54 setUseLowercaseSmallCaps:1];
    v94 = v54;
    [v112 setDescription1TextProvider:v54];
    [v112 setDescription1FontStyle:0];
    v55 = [v3 appleStandHours];
    v56 = +[HKUnit countUnit];
    [v55 doubleValueForUnit:v56];
    v58 = v57;

    v59 = [v3 appleStandHoursGoal];
    v60 = +[HKUnit countUnit];
    [v59 doubleValueForUnit:v60];
    v62 = v61;

    v63 = [NSNumber numberWithDouble:v58];
    v64 = FIUIBundle();
    v65 = [v64 localizedStringForKey:@"ACTIVITY_STAND_VALUE_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable"];

    v111 = [FIUIFormattingManager stringWithNumber:v63 decimalPrecision:1];
    v66 = FIUIBundle();
    v67 = [v66 localizedStringForKey:@"ACTIVITY_STAND_VALUE_UNIT" value:&stru_84F0 table:@"Localizable"];
    v93 = v63;
    v68 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v67, [v63 integerValue]);

    v69 = [v68 localizedLowercaseString];

    v70 = [v65 rangeOfString:@"<value>"];
    v92 = v65;
    v97 = v48;
    v91 = v69;
    if (v70 <= [v65 rangeOfString:@"<unit>"])
    {
      [NSString stringWithFormat:@"%@ %@", v111, v69];
    }

    else
    {
      [NSString stringWithFormat:@"%@ %@", v69, v111];
    }
    v90 = ;
    v71 = [CLKSimpleTextProvider textProviderWithText:v90];
    [v71 setUseLowercaseSmallCaps:1];
    [v112 setDescription2TextProvider:v71];
    [v112 setDescription2FontStyle:0];
    v88 = [ARUIRingGroupController ringGroupControllerConfiguredForWatchWithRingType:3 withIcon:0];
    v89 = +[CLKUIMetalResourceManager sharedCommandQueue];
    v87 = [[ARUIRingsViewRenderer alloc] initWithMaximumRingCount:3 commandQueue:v89];
    v72 = [[ARUIRingsView alloc] initWithRingGroupController:v88 renderer:v87];
    v73 = sub_1E28();
    sub_1E28();
    v75 = v74;
    sub_1E28();
    v77 = v76;
    v78 = [UIColor colorWithWhite:0.45 alpha:0.15];
    v79 = [ARUIRingsImageFactory renderRingsWithBackgroundColor:v78 usingRingsView:v72 forMovePercentage:v13 / v104 exercisePercentage:v40 / v44 standPercentage:v58 / v62 withDiameter:v73 thickness:v75 interspacing:v77];

    [v112 setOverrideBodyImage:v79];
    v80 = objc_alloc_init(CLKImageProvider);
    [v80 setForegroundAccentImage:v79];
    [v80 setForegroundAccentImageTinted:1];
    [v112 setBodyImageProvider:v80];
    v81 = [REElementOpenAction alloc];
    v82 = [NSURL URLWithString:@"ActivityMonitorApp://"];
    v83 = [v81 initWithURL:v82 applicationID:@"com.apple.ActivityMonitorApp"];

    v84 = [REElement alloc];
    v4 = v110;
    v115 = v110;
    v85 = [NSArray arrayWithObjects:&v115 count:1];
    v7 = [v84 initWithIdentifier:@"com.apple.Activity.Rings" content:v112 action:v83 relevanceProviders:v85 privacyBehavior:1];

    goto LABEL_27;
  }

  _HKInitializeLogging();
  v6 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] Activity is not configured by user--returning nil element", buf, 2u);
  }

  v7 = 0;
LABEL_27:

  return v7;
}

double sub_1E28()
{
  if (qword_C780 != -1)
  {
    sub_3178();
  }

  return *&qword_C768;
}

void sub_1E70(id a1)
{
  qword_C768 = 0x404AA66666666666;
  qword_C770 = 0x4016000000000000;
  qword_C778 = 0x4004000000000000;
}

void sub_225C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NLActivityRingsElementIdentifier();
  *(*(*(a1 + 40) + 8) + 24) = [v2 hasElementWithId:v3 inSectionWithIdentifier:REDefaultSectionIdentifier];
}

void sub_22CC(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v3 = @"Reloading";
    }

    else
    {
      v3 = @"Adding";
    }

    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 currentSummary];
    *buf = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] %@ element with current summary = %@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) currentSummary];
  v8 = [*(a1 + 32) downtimeRelevanceProvider];
  v9 = RingsElementWithActivitySummary(v7, v8);

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 40) reloadElement:v9];
  }

  else if (v9)
  {
    v10 = *(a1 + 40);
    v12 = v9;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v10 addElements:v11 toSectionWithIdentifier:REDefaultSectionIdentifier];
  }
}

void sub_275C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSummary];

  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_283C;
    v5[3] = &unk_83B8;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_283C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSummary];
  v3 = [*(a1 + 32) downtimeRelevanceProvider];
  v4 = RingsElementWithActivitySummary(v2, v3);

  _HKInitializeLogging();
  v5 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] Returning element %@", buf, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v4)
  {
    v8 = v4;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, &__NSArray0__struct);
  }
}

void sub_2B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2B28(uint64_t a1, void *a2, void *a3, void *a4)
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
      v13 = HKLogCoaching;
      if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_ERROR))
      {
        sub_31D0(v9, v12, v13);
      }

      v14 = [v11 healthStore];
      [v14 stopQuery:v7];

      [v11 _startCurrentActivitySummaryQueryWithRemainingRetries:v12];
    }

    else if (v8)
    {
      v15 = WeakRetained[2];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_2C80;
      v16[3] = &unk_83E0;
      v16[4] = WeakRetained;
      v17 = v8;
      dispatch_async(v15, v16);
    }
  }
}

void sub_2C80(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSummary];
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  v4 = [*(a1 + 32) currentSummary];
  v5 = *(a1 + 40);
  v6 = _FormattingManager();
  v7 = [v6 unitManager];
  v8 = [v7 userActiveEnergyBurnedUnit];
  LODWORD(v5) = [v4 isNoticeablyDifferentFromActivitySummary:v5 comparingGoalTypes:0 userActiveEnergyBurnedUnit:v8];

  if (v5)
  {
LABEL_3:
    [*(a1 + 32) setCurrentSummary:*(a1 + 40)];
    v9 = *(a1 + 32);

    [v9 _generateRingsElement];
  }
}

void sub_2E08(uint64_t a1)
{
  v2 = [*(a1 + 32) healthStore];
  [v2 executeQuery:*(a1 + 40)];

  v4 = [*(a1 + 32) queries];
  v3 = [v4 setByAddingObject:*(a1 + 40)];
  [*(a1 + 32) setQueries:v3];
}

void sub_2F0C(uint64_t a1)
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

void sub_31D0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[Supergreen-Rings] Current activity summary query encountered error %@, remaining retries %lu.", &v3, 0x16u);
}