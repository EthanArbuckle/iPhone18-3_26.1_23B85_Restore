@interface PXCuratedLibraryAnimationTracker
+ (PXCuratedLibraryAnimationTracker)sharedTracker;
+ (void)_scrollAnimationOccurredWithContext:(id)a3 isBegin:(BOOL)a4;
- (PXCuratedLibraryAnimationTracker)init;
- (void)_zoomLevelTransitionOccurred:(id)a3 isPreparation:(BOOL)a4 isBegin:(BOOL)a5;
- (void)zoomLevelTransitionDidBegin:(id)a3;
- (void)zoomLevelTransitionsDidEndEarly;
@end

@implementation PXCuratedLibraryAnimationTracker

- (void)zoomLevelTransitionsDidEndEarly
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PXCuratedLibraryAnimationTracker *)self inFlightAnimations];
  v4 = [v3 copy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PXCuratedLibraryAnimationTracker *)self _zoomLevelTransitionOccurred:*(*(&v10 + 1) + 8 * v9++) isPreparation:0 isBegin:0, v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_zoomLevelTransitionOccurred:(id)a3 isPreparation:(BOOL)a4 isBegin:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = operator||(v8, @"PXCuratedLibraryZoomLevelChangeFromKey");
  v10 = operator||(v8, @"PXCuratedLibraryZoomLevelChangeToKey");
  v11 = [(PXCuratedLibraryAnimationTracker *)self inFlightAnimations];
  v12 = v11;
  if (v9 | v10)
  {
    if (v5)
    {
      [v11 addObject:v8];
    }

    if ([v12 containsObject:v8])
    {
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          if (v10 > 2)
          {
            if (v10 == 3)
            {
              v13 = PLAnimationTelemetryGetLog();
              v32 = PLAnimationTelemetryGetLog();
              v15 = os_signpost_id_make_with_pointer(v32, v8);

              if (v6)
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "DaysToDaysPreparation";
                  v17 = " enableTelemetry=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "DaysToDaysPreparation";
                v34 = " enableTelemetry=YES ";
              }

              else
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "DaysToDays";
                  v17 = " enableTelemetry=YES  isAnimation=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "DaysToDays";
                v34 = " enableTelemetry=YES  isAnimation=YES ";
              }

              goto LABEL_274;
            }

            if (v10 == 4)
            {
              v13 = PLAnimationTelemetryGetLog();
              v24 = PLAnimationTelemetryGetLog();
              v15 = os_signpost_id_make_with_pointer(v24, v8);

              if (v6)
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "DaysToAllPhotosPreparation";
                  v17 = " enableTelemetry=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "DaysToAllPhotosPreparation";
                v34 = " enableTelemetry=YES ";
              }

              else
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "DaysToAllPhotos";
                  v17 = " enableTelemetry=YES  isAnimation=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "DaysToAllPhotos";
                v34 = " enableTelemetry=YES  isAnimation=YES ";
              }

              goto LABEL_274;
            }
          }

          else
          {
            if (v10 == 1)
            {
              v13 = PLAnimationTelemetryGetLog();
              v30 = PLAnimationTelemetryGetLog();
              v15 = os_signpost_id_make_with_pointer(v30, v8);

              if (v6)
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "DaysToYearsPreparation";
                  v17 = " enableTelemetry=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "DaysToYearsPreparation";
                v34 = " enableTelemetry=YES ";
              }

              else
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "DaysToYears";
                  v17 = " enableTelemetry=YES  isAnimation=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "DaysToYears";
                v34 = " enableTelemetry=YES  isAnimation=YES ";
              }

              goto LABEL_274;
            }

            if (v10 == 2)
            {
              v13 = PLAnimationTelemetryGetLog();
              v20 = PLAnimationTelemetryGetLog();
              v15 = os_signpost_id_make_with_pointer(v20, v8);

              if (v6)
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "DaysToMonthsPreparation";
                  v17 = " enableTelemetry=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "DaysToMonthsPreparation";
                v34 = " enableTelemetry=YES ";
              }

              else
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "DaysToMonths";
                  v17 = " enableTelemetry=YES  isAnimation=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "DaysToMonths";
                v34 = " enableTelemetry=YES  isAnimation=YES ";
              }

              goto LABEL_274;
            }
          }
        }

        else if (v9 == 4)
        {
          if (v10 > 2)
          {
            if (v10 == 3)
            {
              v13 = PLAnimationTelemetryGetLog();
              v28 = PLAnimationTelemetryGetLog();
              v15 = os_signpost_id_make_with_pointer(v28, v8);

              if (v6)
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "AllPhotosToDaysPreparation";
                  v17 = " enableTelemetry=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "AllPhotosToDaysPreparation";
                v34 = " enableTelemetry=YES ";
              }

              else
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "AllPhotosToDays";
                  v17 = " enableTelemetry=YES  isAnimation=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "AllPhotosToDays";
                v34 = " enableTelemetry=YES  isAnimation=YES ";
              }

              goto LABEL_274;
            }

            if (v10 == 4)
            {
              v13 = PLAnimationTelemetryGetLog();
              v22 = PLAnimationTelemetryGetLog();
              v15 = os_signpost_id_make_with_pointer(v22, v8);

              if (v6)
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "AllPhotosToAllPhotosPreparation";
                  v17 = " enableTelemetry=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "AllPhotosToAllPhotosPreparation";
                v34 = " enableTelemetry=YES ";
              }

              else
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "AllPhotosToAllPhotos";
                  v17 = " enableTelemetry=YES  isAnimation=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "AllPhotosToAllPhotos";
                v34 = " enableTelemetry=YES  isAnimation=YES ";
              }

              goto LABEL_274;
            }
          }

          else
          {
            if (v10 == 1)
            {
              v13 = PLAnimationTelemetryGetLog();
              v26 = PLAnimationTelemetryGetLog();
              v15 = os_signpost_id_make_with_pointer(v26, v8);

              if (v6)
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "AllPhotosToYearsPreparation";
                  v17 = " enableTelemetry=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "AllPhotosToYearsPreparation";
                v34 = " enableTelemetry=YES ";
              }

              else
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "AllPhotosToYears";
                  v17 = " enableTelemetry=YES  isAnimation=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "AllPhotosToYears";
                v34 = " enableTelemetry=YES  isAnimation=YES ";
              }

              goto LABEL_274;
            }

            if (v10 == 2)
            {
              v13 = PLAnimationTelemetryGetLog();
              v18 = PLAnimationTelemetryGetLog();
              v15 = os_signpost_id_make_with_pointer(v18, v8);

              if (v6)
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "AllPhotosToMonthsPreparation";
                  v17 = " enableTelemetry=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "AllPhotosToMonthsPreparation";
                v34 = " enableTelemetry=YES ";
              }

              else
              {
                if (v5)
                {
                  if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                  {
                    goto LABEL_177;
                  }

                  *v35 = 0;
                  v16 = "AllPhotosToMonths";
                  v17 = " enableTelemetry=YES  isAnimation=YES ";
                  goto LABEL_176;
                }

                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_275;
                }

                *v35 = 0;
                v33 = "AllPhotosToMonths";
                v34 = " enableTelemetry=YES  isAnimation=YES ";
              }

              goto LABEL_274;
            }
          }
        }
      }

      else if (v9 == 1)
      {
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v13 = PLAnimationTelemetryGetLog();
            v31 = PLAnimationTelemetryGetLog();
            v15 = os_signpost_id_make_with_pointer(v31, v8);

            if (v6)
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "YearsToDaysPreparation";
                v17 = " enableTelemetry=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "YearsToDaysPreparation";
              v34 = " enableTelemetry=YES ";
            }

            else
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "YearsToDays";
                v17 = " enableTelemetry=YES  isAnimation=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "YearsToDays";
              v34 = " enableTelemetry=YES  isAnimation=YES ";
            }

            goto LABEL_274;
          }

          if (v10 == 4)
          {
            v13 = PLAnimationTelemetryGetLog();
            v23 = PLAnimationTelemetryGetLog();
            v15 = os_signpost_id_make_with_pointer(v23, v8);

            if (v6)
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "YearsToAllPhotosPreparation";
                v17 = " enableTelemetry=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "YearsToAllPhotosPreparation";
              v34 = " enableTelemetry=YES ";
            }

            else
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "YearsToAllPhotos";
                v17 = " enableTelemetry=YES  isAnimation=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "YearsToAllPhotos";
              v34 = " enableTelemetry=YES  isAnimation=YES ";
            }

            goto LABEL_274;
          }
        }

        else
        {
          if (v10 == 1)
          {
            v13 = PLAnimationTelemetryGetLog();
            v29 = PLAnimationTelemetryGetLog();
            v15 = os_signpost_id_make_with_pointer(v29, v8);

            if (v6)
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "YearsToYearsPreparation";
                v17 = " enableTelemetry=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "YearsToYearsPreparation";
              v34 = " enableTelemetry=YES ";
            }

            else
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "YearsToYears";
                v17 = " enableTelemetry=YES  isAnimation=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "YearsToYears";
              v34 = " enableTelemetry=YES  isAnimation=YES ";
            }

            goto LABEL_274;
          }

          if (v10 == 2)
          {
            v13 = PLAnimationTelemetryGetLog();
            v19 = PLAnimationTelemetryGetLog();
            v15 = os_signpost_id_make_with_pointer(v19, v8);

            if (v6)
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "YearsToMonthsPreparation";
                v17 = " enableTelemetry=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "YearsToMonthsPreparation";
              v34 = " enableTelemetry=YES ";
            }

            else
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "YearsToMonths";
                v17 = " enableTelemetry=YES  isAnimation=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "YearsToMonths";
              v34 = " enableTelemetry=YES  isAnimation=YES ";
            }

            goto LABEL_274;
          }
        }
      }

      else if (v9 == 2)
      {
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v13 = PLAnimationTelemetryGetLog();
            v27 = PLAnimationTelemetryGetLog();
            v15 = os_signpost_id_make_with_pointer(v27, v8);

            if (v6)
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "MonthsToDaysPreparation";
                v17 = " enableTelemetry=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "MonthsToDaysPreparation";
              v34 = " enableTelemetry=YES ";
            }

            else
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "MonthsToDays";
                v17 = " enableTelemetry=YES  isAnimation=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "MonthsToDays";
              v34 = " enableTelemetry=YES  isAnimation=YES ";
            }

            goto LABEL_274;
          }

          if (v10 == 4)
          {
            v13 = PLAnimationTelemetryGetLog();
            v21 = PLAnimationTelemetryGetLog();
            v15 = os_signpost_id_make_with_pointer(v21, v8);

            if (v6)
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "MonthsToAllPhotosPreparation";
                v17 = " enableTelemetry=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "MonthsToAllPhotosPreparation";
              v34 = " enableTelemetry=YES ";
            }

            else
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "MonthsToAllPhotos";
                v17 = " enableTelemetry=YES  isAnimation=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "MonthsToAllPhotos";
              v34 = " enableTelemetry=YES  isAnimation=YES ";
            }

            goto LABEL_274;
          }
        }

        else
        {
          if (v10 == 1)
          {
            v13 = PLAnimationTelemetryGetLog();
            v25 = PLAnimationTelemetryGetLog();
            v15 = os_signpost_id_make_with_pointer(v25, v8);

            if (v6)
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "MonthsToYearsPreparation";
                v17 = " enableTelemetry=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "MonthsToYearsPreparation";
              v34 = " enableTelemetry=YES ";
            }

            else
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "MonthsToYears";
                v17 = " enableTelemetry=YES  isAnimation=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "MonthsToYears";
              v34 = " enableTelemetry=YES  isAnimation=YES ";
            }

            goto LABEL_274;
          }

          if (v10 == 2)
          {
            v13 = PLAnimationTelemetryGetLog();
            v14 = PLAnimationTelemetryGetLog();
            v15 = os_signpost_id_make_with_pointer(v14, v8);

            if (v6)
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "MonthsToMonthsPreparation";
                v17 = " enableTelemetry=YES ";
LABEL_176:
                _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, v16, v17, v35, 2u);
LABEL_177:

                goto LABEL_277;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "MonthsToMonthsPreparation";
              v34 = " enableTelemetry=YES ";
            }

            else
            {
              if (v5)
              {
                if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
                {
                  goto LABEL_177;
                }

                *v35 = 0;
                v16 = "MonthsToMonths";
                v17 = " enableTelemetry=YES  isAnimation=YES ";
                goto LABEL_176;
              }

              if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
              {
                goto LABEL_275;
              }

              *v35 = 0;
              v33 = "MonthsToMonths";
              v34 = " enableTelemetry=YES  isAnimation=YES ";
            }

LABEL_274:
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_END, v15, v33, v34, v35, 2u);
LABEL_275:

LABEL_276:
            [v12 removeObject:{v8, *v35}];
            goto LABEL_277;
          }
        }
      }
    }

    if (v5)
    {
      goto LABEL_277;
    }

    goto LABEL_276;
  }

LABEL_277:
}

- (void)zoomLevelTransitionDidBegin:(id)a3
{
  v4 = a3;
  [(PXCuratedLibraryAnimationTracker *)self _zoomLevelTransitionOccurred:v4 isPreparation:1 isBegin:0];
  [(PXCuratedLibraryAnimationTracker *)self _zoomLevelTransitionOccurred:v4 isPreparation:0 isBegin:1];
}

- (PXCuratedLibraryAnimationTracker)init
{
  v6.receiver = self;
  v6.super_class = PXCuratedLibraryAnimationTracker;
  v2 = [(PXCuratedLibraryAnimationTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    inFlightAnimations = v2->_inFlightAnimations;
    v2->_inFlightAnimations = v3;
  }

  return v2;
}

+ (void)_scrollAnimationOccurredWithContext:(id)a3 isBegin:(BOOL)a4
{
  v4 = a4;
  if (a3.var0 <= 2)
  {
    if (a3.var0 == 1)
    {
      switch(a3.var1)
      {
        case 3:
          v5 = PLAnimationTelemetryGetLog();
          v17 = os_signpost_enabled(v5);
          if (v4)
          {
            if (v17)
            {
              *v21 = 0;
              v7 = "ScrollYearsFast";
              goto LABEL_54;
            }

            goto LABEL_81;
          }

          if (!v17)
          {
            goto LABEL_81;
          }

          *v21 = 0;
          v7 = "ScrollYearsFast";
          break;
        case 2:
          v5 = PLAnimationTelemetryGetLog();
          v13 = os_signpost_enabled(v5);
          if (v4)
          {
            if (v13)
            {
              *v21 = 0;
              v7 = "ScrollYearsMedium";
              goto LABEL_54;
            }

            goto LABEL_81;
          }

          if (!v13)
          {
            goto LABEL_81;
          }

          *v21 = 0;
          v7 = "ScrollYearsMedium";
          break;
        case 1:
          v5 = PLAnimationTelemetryGetLog();
          v9 = os_signpost_enabled(v5);
          if (v4)
          {
            if (v9)
            {
              *v21 = 0;
              v7 = "ScrollYearsSlow";
              goto LABEL_54;
            }

            goto LABEL_81;
          }

          if (!v9)
          {
            goto LABEL_81;
          }

          *v21 = 0;
          v7 = "ScrollYearsSlow";
          break;
        default:
          return;
      }
    }

    else
    {
      if (a3.var0 != 2)
      {
        return;
      }

      switch(a3.var1)
      {
        case 3:
          v5 = PLAnimationTelemetryGetLog();
          v15 = os_signpost_enabled(v5);
          if (v4)
          {
            if (v15)
            {
              *v21 = 0;
              v7 = "ScrollMonthsFast";
              goto LABEL_54;
            }

            goto LABEL_81;
          }

          if (!v15)
          {
            goto LABEL_81;
          }

          *v21 = 0;
          v7 = "ScrollMonthsFast";
          break;
        case 2:
          v5 = PLAnimationTelemetryGetLog();
          v11 = os_signpost_enabled(v5);
          if (v4)
          {
            if (v11)
            {
              *v21 = 0;
              v7 = "ScrollMonthsMedium";
              goto LABEL_54;
            }

            goto LABEL_81;
          }

          if (!v11)
          {
            goto LABEL_81;
          }

          *v21 = 0;
          v7 = "ScrollMonthsMedium";
          break;
        case 1:
          v5 = PLAnimationTelemetryGetLog();
          v6 = os_signpost_enabled(v5);
          if (v4)
          {
            if (v6)
            {
              *v21 = 0;
              v7 = "ScrollMonthsSlow";
LABEL_54:
              v19 = v5;
              v20 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_80:
              _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, v20, 0xEEEEB0B5B2B2EEEELL, v7, " enableTelemetry=YES  isAnimation=YES ", v21, 2u);
              goto LABEL_81;
            }

            goto LABEL_81;
          }

          if (!v6)
          {
            goto LABEL_81;
          }

          *v21 = 0;
          v7 = "ScrollMonthsSlow";
          break;
        default:
          return;
      }
    }

LABEL_79:
    v19 = v5;
    v20 = OS_SIGNPOST_INTERVAL_END;
    goto LABEL_80;
  }

  if (a3.var0 == 3)
  {
    switch(a3.var1)
    {
      case 3:
        v5 = PLAnimationTelemetryGetLog();
        v18 = os_signpost_enabled(v5);
        if (v4)
        {
          if (v18)
          {
            *v21 = 0;
            v7 = "ScrollDaysFast";
            goto LABEL_54;
          }

          goto LABEL_81;
        }

        if (!v18)
        {
          goto LABEL_81;
        }

        *v21 = 0;
        v7 = "ScrollDaysFast";
        break;
      case 2:
        v5 = PLAnimationTelemetryGetLog();
        v14 = os_signpost_enabled(v5);
        if (v4)
        {
          if (v14)
          {
            *v21 = 0;
            v7 = "ScrollDaysMedium";
            goto LABEL_54;
          }

          goto LABEL_81;
        }

        if (!v14)
        {
          goto LABEL_81;
        }

        *v21 = 0;
        v7 = "ScrollDaysMedium";
        break;
      case 1:
        v5 = PLAnimationTelemetryGetLog();
        v10 = os_signpost_enabled(v5);
        if (v4)
        {
          if (v10)
          {
            *v21 = 0;
            v7 = "ScrollDaysSlow";
            goto LABEL_54;
          }

          goto LABEL_81;
        }

        if (!v10)
        {
          goto LABEL_81;
        }

        *v21 = 0;
        v7 = "ScrollDaysSlow";
        break;
      default:
        return;
    }

    goto LABEL_79;
  }

  if (a3.var0 != 4)
  {
    return;
  }

  if (a3.var1 == 3)
  {
    v5 = PLAnimationTelemetryGetLog();
    v16 = os_signpost_enabled(v5);
    if (v4)
    {
      if (v16)
      {
        *v21 = 0;
        v7 = "ScrollAllPhotosFast";
        goto LABEL_54;
      }

      goto LABEL_81;
    }

    if (!v16)
    {
      goto LABEL_81;
    }

    *v21 = 0;
    v7 = "ScrollAllPhotosFast";
    goto LABEL_79;
  }

  if (a3.var1 == 2)
  {
    v5 = PLAnimationTelemetryGetLog();
    v12 = os_signpost_enabled(v5);
    if (v4)
    {
      if (v12)
      {
        *v21 = 0;
        v7 = "ScrollAllPhotosMedium";
        goto LABEL_54;
      }

      goto LABEL_81;
    }

    if (!v12)
    {
      goto LABEL_81;
    }

    *v21 = 0;
    v7 = "ScrollAllPhotosMedium";
    goto LABEL_79;
  }

  if (a3.var1 != 1)
  {
    return;
  }

  v5 = PLAnimationTelemetryGetLog();
  v8 = os_signpost_enabled(v5);
  if (!v4)
  {
    if (!v8)
    {
      goto LABEL_81;
    }

    *v21 = 0;
    v7 = "ScrollAllPhotosSlow";
    goto LABEL_79;
  }

  if (v8)
  {
    *v21 = 0;
    v7 = "ScrollAllPhotosSlow";
    goto LABEL_54;
  }

LABEL_81:
}

+ (PXCuratedLibraryAnimationTracker)sharedTracker
{
  if (sharedTracker_onceToken != -1)
  {
    dispatch_once(&sharedTracker_onceToken, &__block_literal_global_94263);
  }

  v3 = sharedTracker_tracker;

  return v3;
}

void __49__PXCuratedLibraryAnimationTracker_sharedTracker__block_invoke()
{
  v0 = objc_alloc_init(PXCuratedLibraryAnimationTracker);
  v1 = sharedTracker_tracker;
  sharedTracker_tracker = v0;
}

@end