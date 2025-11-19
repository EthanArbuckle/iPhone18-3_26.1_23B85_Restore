@interface PXAnimationTracker
+ (void)_scrollAnimationOccurred:(int64_t)a3 isBegin:(BOOL)a4;
+ (void)_transitionAnimationOccurred:(int64_t)a3 fromOrigin:(int64_t)a4 transitionObject:(id)a5 isBegin:(BOOL)a6;
+ (void)_transitionPreparationOccurred:(int64_t)a3 fromOrigin:(int64_t)a4 transitionObject:(id)a5 isBegin:(BOOL)a6;
+ (void)transitionAnimationDidBegin:(int64_t)a3 fromOrigin:(int64_t)a4 transitionObject:(id)a5;
@end

@implementation PXAnimationTracker

+ (void)_transitionAnimationOccurred:(int64_t)a3 fromOrigin:(int64_t)a4 transitionObject:(id)a5 isBegin:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  switch(a4)
  {
    case 0:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v159 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v159, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v86 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v86, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v158 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v158, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromUndefined";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromUndefined";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v11 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v11, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromUndefined";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromUndefined";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 1:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v155 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v155, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v84 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v84, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v154 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v154, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromMoments";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromMoments";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v41 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v41, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromMoments";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromMoments";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 2:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v153 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v153, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v83 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v83, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v152 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v152, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromCollections";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromCollections";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v40 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v40, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromCollections";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromCollections";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 3:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v173 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v173, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v93 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v93, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v172 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v172, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromYears";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromYears";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v49 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v49, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromYears";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromYears";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 4:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v147 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v147, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v80 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v80, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v146 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v146, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromRecentsAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromRecentsAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v37 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v37, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromRecentsAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromRecentsAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 5:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v169 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v169, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v91 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v91, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v168 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v168, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromFavoritesAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromFavoritesAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v47 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v47, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromFavoritesAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromFavoritesAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 6:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v143 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v143, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v78 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v78, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v142 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v142, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromSharedAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromSharedAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v35 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v35, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromSharedAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromSharedAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 7:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v145 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v145, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v79 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v79, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v144 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v144, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromPlacesAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromPlacesAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v36 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v36, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromPlacesAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromPlacesAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 8:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v161 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v161, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v87 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v87, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v160 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v160, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromMediaTypeAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromMediaTypeAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v43 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v43, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromMediaTypeAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromMediaTypeAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 9:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v157 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v157, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v85 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v85, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v156 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v156, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromUserAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromUserAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v42 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v42, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromUserAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromUserAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 10:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v179 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v179, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v96 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v96, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v178 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v178, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromImportsAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromImportsAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v52 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v52, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromImportsAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromImportsAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 11:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v133 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v133, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v73 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v73, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v132 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v132, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromHiddenAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromHiddenAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v30 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v30, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromHiddenAlbum";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromHiddenAlbum";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 12:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v129 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v129, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v71 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v71, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v128 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v128, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromRecentlyDeleted";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromRecentlyDeleted";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v28 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v28, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromRecentlyDeleted";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromRecentlyDeleted";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 13:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v183 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v183, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v98 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v98, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v182 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v182, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromCompleteMyMoment";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromCompleteMyMoment";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v54 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v54, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromCompleteMyMoment";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromCompleteMyMoment";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 14:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v163 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v163, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v88 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v88, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v162 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v162, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromMomentsDetail";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromMomentsDetail";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v44 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v44, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromMomentsDetail";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromMomentsDetail";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 15:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v165 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v165, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v89 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v89, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v164 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v164, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromMomentsDetailShowMore";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromMomentsDetailShowMore";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v45 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v45, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromMomentsDetailShowMore";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromMomentsDetailShowMore";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 16:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v181 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v181, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v97 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v97, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v180 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v180, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromCollectionsDetail";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromCollectionsDetail";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v53 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v53, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromCollectionsDetail";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromCollectionsDetail";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 17:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v175 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v175, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v94 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v94, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v174 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v174, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromCollectionsDetailShowMore";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromCollectionsDetailShowMore";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v50 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v50, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromCollectionsDetailShowMore";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromCollectionsDetailShowMore";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 18:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v117 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v117, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v65 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v65, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v116 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v116, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromYearsDetail";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromYearsDetail";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v20 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v20, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromYearsDetail";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromYearsDetail";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 19:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v137 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v137, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v75 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v75, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v136 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v136, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromYearsDetailShowMore";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromYearsDetailShowMore";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v32 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v32, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromYearsDetailShowMore";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromYearsDetailShowMore";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 20:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v187 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v187, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v99 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v99, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v186 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v186, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromMemoriesDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromMemoriesDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v55 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v55, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromMemoriesDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromMemoriesDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 21:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v119 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v119, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v66 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v66, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v118 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v118, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromMemoriesDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromMemoriesDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v23 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v23, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromMemoriesDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromMemoriesDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 22:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v135 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v135, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v74 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v74, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v134 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v134, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromRelatedDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromRelatedDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v31 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v31, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromRelatedDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromRelatedDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 23:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v123 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v123, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v68 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v68, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v122 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v122, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromRelatedDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromRelatedDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v25 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v25, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromRelatedDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromRelatedDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 24:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v149 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v149, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v81 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v81, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v148 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v148, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromPeopleDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromPeopleDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v38 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v38, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromPeopleDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromPeopleDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 25:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v121 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v121, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v67 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v67, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v120 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v120, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromPeopleDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromPeopleDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v24 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v24, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromPeopleDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromPeopleDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 26:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v191 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v191, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v101 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v101, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v190 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v190, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromUserAlbumDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromUserAlbumDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v57 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v57, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromUserAlbumDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromUserAlbumDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 27:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v189 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v189, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v100 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v100, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v188 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v188, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromUserAlbumDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromUserAlbumDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v56 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v56, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromUserAlbumDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromUserAlbumDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 28:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v127 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v127, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v70 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v70, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v126 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v126, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromPlacesDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromPlacesDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v27 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v27, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromPlacesDetail";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromPlacesDetail";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 29:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v139 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v139, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v76 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v76, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v138 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v138, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromPlacesDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromPlacesDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v33 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v33, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromPlacesDetailShowMore";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromPlacesDetailShowMore";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 30:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v167 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v167, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v90 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v90, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v166 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v166, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromSearchTopResults";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromSearchTopResults";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v46 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v46, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromSearchTopResults";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromSearchTopResults";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 31:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v141 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v141, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v77 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v77, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v140 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v140, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromSearchResults";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromSearchResults";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v34 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v34, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromSearchResults";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromSearchResults";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 37:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v195 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v195, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v103 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v103, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v194 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v194, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromCamera";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromCamera";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v59 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v59, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromCamera";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromCamera";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 38:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v125 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v125, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v69 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v69, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v124 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v124, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromNotification";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromNotification";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v26 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v26, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromNotification";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromNotification";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 39:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v177 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v177, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v95 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v95, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v176 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v176, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromCuratedLibraryDays";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromCuratedLibraryDays";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v51 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v51, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromCuratedLibraryDays";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromCuratedLibraryDays";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 40:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v193 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v193, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v102 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v102, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v192 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v192, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromAllPhotosOneColumn";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromAllPhotosOneColumn";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v58 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v58, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromAllPhotosOneColumn";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromAllPhotosOneColumn";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 41:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v115 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v115, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v64 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v64, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v114 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v114, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromAllPhotosThreeColumns";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromAllPhotosThreeColumns";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v19 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v19, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromAllPhotosThreeColumns";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromAllPhotosThreeColumns";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 42:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v171 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v171, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetails";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v92 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v92, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetails";
              goto LABEL_894;
            }

            goto LABEL_1410;
          }

          if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_1407;
          }

LABEL_1410:
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v170 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v170, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromAllPhotosFiveColumns";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromAllPhotosFiveColumns";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v48 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v48, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromAllPhotosFiveColumns";
LABEL_894:
              v112 = v10;
              v113 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_1408:
              v200 = v12;
              goto LABEL_1409;
            }

            goto LABEL_1410;
          }

          if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromAllPhotosFiveColumns";
LABEL_1407:
            v112 = v10;
            v113 = OS_SIGNPOST_INTERVAL_END;
            goto LABEL_1408;
          }

          goto LABEL_1410;
        }
      }

LABEL_1411:

      return;
    case 43:
      if (a3 <= 2)
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_1411;
          }

          v14 = PLAnimationTelemetryGetLog();
          v15 = PLAnimationTelemetryGetLog();
          v16 = os_signpost_id_make_with_pointer(v15, v9);

          if (v6)
          {
            if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
            {
              *v201 = 0;
              _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ExitOneUpFromAllPhotosOther", " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
            }

            goto LABEL_22;
          }

          if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
          {
            *v201 = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_END, v16, "ExitOneUpFromAllPhotosOther", " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
          }

          goto LABEL_899;
        }

        v104 = PLAnimationTelemetryGetLog();
        v105 = PLAnimationTelemetryGetLog();
        v106 = os_signpost_id_make_with_pointer(v105, v9);

        if (v6)
        {
          if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
          {
            *v201 = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v104, OS_SIGNPOST_INTERVAL_BEGIN, v106, "EnterOneUpFromAllPhotosOther", " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
          }

          goto LABEL_561;
        }

        if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
        {
          *v201 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v104, OS_SIGNPOST_INTERVAL_END, v106, "EnterOneUpFromAllPhotosOther", " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
        }

        goto LABEL_919;
      }

      if (a3 != 3)
      {
        if (a3 != 4)
        {
          goto LABEL_1411;
        }

        v60 = PLAnimationTelemetryGetLog();
        v61 = PLAnimationTelemetryGetLog();
        v62 = os_signpost_id_make_with_pointer(v61, v9);

        if (v6)
        {
          if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
          {
            *v201 = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v62, "ExitDetails", " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
          }

          goto LABEL_309;
        }

        if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
        {
          *v201 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v60, OS_SIGNPOST_INTERVAL_END, v62, "ExitDetails", " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
        }

        goto LABEL_906;
      }

      v108 = PLAnimationTelemetryGetLog();
      v109 = PLAnimationTelemetryGetLog();
      v110 = os_signpost_id_make_with_pointer(v109, v9);

      if (v6)
      {
        if (v110 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
        {
          *v201 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v108, OS_SIGNPOST_INTERVAL_BEGIN, v110, "EnterDetails", " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
        }

        goto LABEL_569;
      }

      if (v110 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
      {
        *v201 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v108, OS_SIGNPOST_INTERVAL_END, v110, "EnterDetails", " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
      }

      goto LABEL_926;
    case 44:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          if (v6)
          {
LABEL_569:
            v10 = PLAnimationTelemetryGetLog();
            v111 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v111, v9);

            if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v13 = "EnterDetails";
            goto LABEL_572;
          }

LABEL_926:
          v10 = PLAnimationTelemetryGetLog();
          v199 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v199, v9);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "EnterDetails";
        }

        else
        {
          if (a3 != 4)
          {
            goto LABEL_1411;
          }

          if (v6)
          {
LABEL_309:
            v10 = PLAnimationTelemetryGetLog();
            v63 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v63, v9);

            if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v13 = "ExitDetails";
            goto LABEL_572;
          }

LABEL_906:
          v10 = PLAnimationTelemetryGetLog();
          v197 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v197, v9);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "ExitDetails";
        }
      }

      else
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_1411;
          }

          if (!v6)
          {
LABEL_899:
            v10 = PLAnimationTelemetryGetLog();
            v196 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v196, v9);

            if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v13 = "ExitOneUpFromDuplicatesAlbum";
            goto LABEL_929;
          }

LABEL_22:
          v10 = PLAnimationTelemetryGetLog();
          v17 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v17, v9);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "ExitOneUpFromDuplicatesAlbum";
LABEL_572:
          v112 = v10;
          v113 = OS_SIGNPOST_INTERVAL_BEGIN;
          goto LABEL_930;
        }

        if (v6)
        {
LABEL_561:
          v10 = PLAnimationTelemetryGetLog();
          v107 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v107, v9);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "EnterOneUpFromDuplicatesAlbum";
          goto LABEL_572;
        }

LABEL_919:
        v10 = PLAnimationTelemetryGetLog();
        v198 = PLAnimationTelemetryGetLog();
        v18 = os_signpost_id_make_with_pointer(v198, v9);

        if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_1410;
        }

        *v201 = 0;
        v13 = "EnterOneUpFromDuplicatesAlbum";
      }

LABEL_929:
      v112 = v10;
      v113 = OS_SIGNPOST_INTERVAL_END;
LABEL_930:
      v200 = v18;
LABEL_1409:
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v112, v113, v200, v13, " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
      goto LABEL_1410;
    case 45:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v131 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v131, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }
        }

        else
        {
          if (a3 != 4)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v72 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v72, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetails";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }
        }
      }

      else if (a3 == 1)
      {
        v10 = PLAnimationTelemetryGetLog();
        v130 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v130, v9);

        if (v6)
        {
          if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromSharedLibraryAlbum";
            goto LABEL_853;
          }
        }

        else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          *v201 = 0;
          v22 = "EnterOneUpFromSharedLibraryAlbum";
          goto LABEL_1351;
        }
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_1411;
        }

        v10 = PLAnimationTelemetryGetLog();
        v29 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v29, v9);

        if (v6)
        {
          if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromSharedLibraryAlbum";
            goto LABEL_853;
          }
        }

        else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          *v201 = 0;
          v22 = "ExitOneUpFromSharedLibraryAlbum";
          goto LABEL_1351;
        }
      }

      goto LABEL_1410;
    case 46:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v151 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v151, v9);

          if (!v6)
          {
            if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v22 = "EnterDetails";
            goto LABEL_1351;
          }

          if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v22 = "EnterDetails";
        }

        else
        {
          if (a3 != 4)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v82 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v82, v9);

          if (!v6)
          {
            if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v22 = "ExitDetails";
            goto LABEL_1351;
          }

          if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v22 = "ExitDetails";
        }
      }

      else
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v39 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v39, v9);

          if (v6)
          {
            if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v22 = "ExitOneUpFromForYouSharedLibrarySharingSuggestion";
            goto LABEL_853;
          }

          if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v22 = "ExitOneUpFromForYouSharedLibrarySharingSuggestion";
LABEL_1351:
          v184 = v10;
          v185 = OS_SIGNPOST_INTERVAL_END;
          goto LABEL_1352;
        }

        v10 = PLAnimationTelemetryGetLog();
        v150 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v150, v9);

        if (!v6)
        {
          if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v22 = "EnterOneUpFromForYouSharedLibrarySharingSuggestion";
          goto LABEL_1351;
        }

        if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_1410;
        }

        *v201 = 0;
        v22 = "EnterOneUpFromForYouSharedLibrarySharingSuggestion";
      }

LABEL_853:
      v184 = v10;
      v185 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_1352:
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v184, v185, v21, v22, " enableTelemetry=YES  isAnimation=YES ", v201, 2u);
      goto LABEL_1410;
    default:
      goto LABEL_1411;
  }
}

+ (void)transitionAnimationDidBegin:(int64_t)a3 fromOrigin:(int64_t)a4 transitionObject:(id)a5
{
  v8 = a5;
  [a1 _transitionPreparationOccurred:a3 fromOrigin:a4 transitionObject:v8 isBegin:0];
  [a1 _transitionAnimationOccurred:a3 fromOrigin:a4 transitionObject:v8 isBegin:1];
}

+ (void)_transitionPreparationOccurred:(int64_t)a3 fromOrigin:(int64_t)a4 transitionObject:(id)a5 isBegin:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  switch(a4)
  {
    case 0:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v159 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v159, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v86 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v86, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v158 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v158, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromUndefinedPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromUndefinedPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v11 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v11, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromUndefinedPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromUndefinedPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 1:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v155 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v155, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v84 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v84, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v154 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v154, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromMomentsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromMomentsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v41 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v41, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromMomentsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromMomentsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 2:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v153 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v153, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v83 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v83, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v152 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v152, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromCollectionsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromCollectionsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v40 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v40, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromCollectionsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromCollectionsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 3:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v173 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v173, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v93 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v93, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v172 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v172, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromYearsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromYearsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v49 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v49, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromYearsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromYearsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 4:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v147 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v147, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v80 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v80, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v146 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v146, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromRecentsAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromRecentsAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v37 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v37, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromRecentsAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromRecentsAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 5:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v169 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v169, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v91 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v91, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v168 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v168, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromFavoritesAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromFavoritesAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v47 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v47, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromFavoritesAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromFavoritesAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 6:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v143 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v143, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v78 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v78, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v142 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v142, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromSharedAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromSharedAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v35 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v35, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromSharedAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromSharedAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 7:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v145 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v145, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v79 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v79, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v144 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v144, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromPlacesAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromPlacesAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v36 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v36, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromPlacesAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromPlacesAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 8:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v161 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v161, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v87 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v87, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v160 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v160, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromMediaTypeAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromMediaTypeAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v43 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v43, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromMediaTypeAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromMediaTypeAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 9:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v157 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v157, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v85 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v85, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v156 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v156, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromUserAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromUserAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v42 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v42, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromUserAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromUserAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 10:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v179 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v179, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v96 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v96, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v178 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v178, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromImportsAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromImportsAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v52 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v52, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromImportsAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromImportsAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 11:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v133 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v133, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v73 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v73, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v132 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v132, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromHiddenAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromHiddenAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v30 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v30, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromHiddenAlbumPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromHiddenAlbumPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 12:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v129 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v129, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v71 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v71, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v128 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v128, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromRecentlyDeletedPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromRecentlyDeletedPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v28 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v28, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromRecentlyDeletedPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromRecentlyDeletedPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 13:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v183 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v183, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v98 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v98, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v182 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v182, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromCompleteMyMomentPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromCompleteMyMomentPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v54 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v54, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromCompleteMyMomentPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromCompleteMyMomentPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 14:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v163 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v163, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v88 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v88, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v162 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v162, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromMomentsDetailPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromMomentsDetailPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v44 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v44, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromMomentsDetailPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromMomentsDetailPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 15:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v165 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v165, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v89 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v89, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v164 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v164, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromMomentsDetailShowMorePreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromMomentsDetailShowMorePreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v45 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v45, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromMomentsDetailShowMorePreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromMomentsDetailShowMorePreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 16:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v181 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v181, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v97 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v97, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v180 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v180, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromCollectionsDetailPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromCollectionsDetailPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v53 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v53, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromCollectionsDetailPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromCollectionsDetailPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 17:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v175 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v175, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v94 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v94, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v174 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v174, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromCollectionsDetailShowMorePreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromCollectionsDetailShowMorePreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v50 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v50, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromCollectionsDetailShowMorePreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromCollectionsDetailShowMorePreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 18:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v117 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v117, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v65 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v65, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v116 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v116, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromYearsDetailPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromYearsDetailPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v20 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v20, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromYearsDetailPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromYearsDetailPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 19:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v137 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v137, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v75 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v75, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v136 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v136, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterOneUpFromYearsDetailShowMorePreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromYearsDetailShowMorePreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v32 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v32, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitOneUpFromYearsDetailShowMorePreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromYearsDetailShowMorePreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 20:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v187 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v187, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v99 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v99, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v186 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v186, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromMemoriesDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromMemoriesDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v55 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v55, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromMemoriesDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromMemoriesDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 21:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v119 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v119, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v66 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v66, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v118 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v118, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromMemoriesDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromMemoriesDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v23 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v23, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromMemoriesDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromMemoriesDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 22:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v135 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v135, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v74 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v74, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v134 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v134, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromRelatedDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromRelatedDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v31 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v31, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromRelatedDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromRelatedDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 23:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v123 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v123, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v68 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v68, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v122 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v122, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromRelatedDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromRelatedDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v25 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v25, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromRelatedDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromRelatedDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 24:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v149 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v149, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v81 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v81, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v148 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v148, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromPeopleDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromPeopleDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v38 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v38, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromPeopleDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromPeopleDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 25:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v121 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v121, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v67 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v67, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v120 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v120, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromPeopleDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromPeopleDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v24 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v24, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromPeopleDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromPeopleDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 26:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v191 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v191, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v101 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v101, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v190 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v190, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromUserAlbumDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromUserAlbumDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v57 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v57, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromUserAlbumDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromUserAlbumDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 27:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v189 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v189, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v100 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v100, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v188 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v188, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromUserAlbumDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromUserAlbumDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v56 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v56, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromUserAlbumDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromUserAlbumDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 28:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v127 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v127, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v70 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v70, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v126 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v126, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromPlacesDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromPlacesDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v27 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v27, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromPlacesDetailPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromPlacesDetailPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 29:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v139 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v139, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v76 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v76, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v138 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v138, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromPlacesDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromPlacesDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v33 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v33, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromPlacesDetailShowMorePreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromPlacesDetailShowMorePreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 30:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v167 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v167, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v90 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v90, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v166 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v166, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromSearchTopResultsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromSearchTopResultsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v46 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v46, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromSearchTopResultsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromSearchTopResultsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 31:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v141 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v141, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v77 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v77, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v140 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v140, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromSearchResultsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromSearchResultsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v34 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v34, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromSearchResultsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromSearchResultsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 37:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v195 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v195, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v103 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v103, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v194 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v194, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromCameraPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromCameraPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v59 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v59, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromCameraPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromCameraPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 38:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v125 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v125, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v69 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v69, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v124 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v124, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromNotificationPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromNotificationPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v26 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v26, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromNotificationPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromNotificationPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 39:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v177 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v177, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v95 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v95, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v176 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v176, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromCuratedLibraryDaysPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromCuratedLibraryDaysPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v51 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v51, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromCuratedLibraryDaysPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromCuratedLibraryDaysPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 40:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v193 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v193, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v102 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v102, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v192 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v192, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromAllPhotosOneColumnPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromAllPhotosOneColumnPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v58 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v58, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromAllPhotosOneColumnPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromAllPhotosOneColumnPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 41:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v115 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v115, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v64 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v64, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v114 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v114, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromAllPhotosThreeColumnsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromAllPhotosThreeColumnsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v19 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v19, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromAllPhotosThreeColumnsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromAllPhotosThreeColumnsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }
      }

      goto LABEL_1411;
    case 42:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v171 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v171, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterDetailsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v92 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v92, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitDetailsPreparation";
              goto LABEL_894;
            }

            goto LABEL_1410;
          }

          if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_1407;
          }

LABEL_1410:
        }
      }

      else
      {
        if (a3 == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v170 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v170, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "EnterOneUpFromAllPhotosFiveColumnsPreparation";
              goto LABEL_894;
            }
          }

          else if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "EnterOneUpFromAllPhotosFiveColumnsPreparation";
            goto LABEL_1407;
          }

          goto LABEL_1410;
        }

        if (a3 == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v48 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v48, v9);

          if (v6)
          {
            if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v13 = "ExitOneUpFromAllPhotosFiveColumnsPreparation";
LABEL_894:
              v112 = v10;
              v113 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_1408:
              v200 = v12;
              goto LABEL_1409;
            }

            goto LABEL_1410;
          }

          if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v13 = "ExitOneUpFromAllPhotosFiveColumnsPreparation";
LABEL_1407:
            v112 = v10;
            v113 = OS_SIGNPOST_INTERVAL_END;
            goto LABEL_1408;
          }

          goto LABEL_1410;
        }
      }

LABEL_1411:

      return;
    case 43:
      if (a3 <= 2)
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_1411;
          }

          v14 = PLAnimationTelemetryGetLog();
          v15 = PLAnimationTelemetryGetLog();
          v16 = os_signpost_id_make_with_pointer(v15, v9);

          if (v6)
          {
            if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
            {
              *v201 = 0;
              _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ExitOneUpFromAllPhotosOtherPreparation", " enableTelemetry=YES ", v201, 2u);
            }

            goto LABEL_22;
          }

          if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
          {
            *v201 = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_END, v16, "ExitOneUpFromAllPhotosOtherPreparation", " enableTelemetry=YES ", v201, 2u);
          }

          goto LABEL_899;
        }

        v104 = PLAnimationTelemetryGetLog();
        v105 = PLAnimationTelemetryGetLog();
        v106 = os_signpost_id_make_with_pointer(v105, v9);

        if (v6)
        {
          if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
          {
            *v201 = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v104, OS_SIGNPOST_INTERVAL_BEGIN, v106, "EnterOneUpFromAllPhotosOtherPreparation", " enableTelemetry=YES ", v201, 2u);
          }

          goto LABEL_561;
        }

        if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
        {
          *v201 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v104, OS_SIGNPOST_INTERVAL_END, v106, "EnterOneUpFromAllPhotosOtherPreparation", " enableTelemetry=YES ", v201, 2u);
        }

        goto LABEL_919;
      }

      if (a3 != 3)
      {
        if (a3 != 4)
        {
          goto LABEL_1411;
        }

        v60 = PLAnimationTelemetryGetLog();
        v61 = PLAnimationTelemetryGetLog();
        v62 = os_signpost_id_make_with_pointer(v61, v9);

        if (v6)
        {
          if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
          {
            *v201 = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v62, "ExitDetailsPreparation", " enableTelemetry=YES ", v201, 2u);
          }

          goto LABEL_309;
        }

        if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
        {
          *v201 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v60, OS_SIGNPOST_INTERVAL_END, v62, "ExitDetailsPreparation", " enableTelemetry=YES ", v201, 2u);
        }

        goto LABEL_906;
      }

      v108 = PLAnimationTelemetryGetLog();
      v109 = PLAnimationTelemetryGetLog();
      v110 = os_signpost_id_make_with_pointer(v109, v9);

      if (v6)
      {
        if (v110 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
        {
          *v201 = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v108, OS_SIGNPOST_INTERVAL_BEGIN, v110, "EnterDetailsPreparation", " enableTelemetry=YES ", v201, 2u);
        }

        goto LABEL_569;
      }

      if (v110 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
      {
        *v201 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v108, OS_SIGNPOST_INTERVAL_END, v110, "EnterDetailsPreparation", " enableTelemetry=YES ", v201, 2u);
      }

      goto LABEL_926;
    case 44:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          if (v6)
          {
LABEL_569:
            v10 = PLAnimationTelemetryGetLog();
            v111 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v111, v9);

            if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v13 = "EnterDetailsPreparation";
            goto LABEL_572;
          }

LABEL_926:
          v10 = PLAnimationTelemetryGetLog();
          v199 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v199, v9);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "EnterDetailsPreparation";
        }

        else
        {
          if (a3 != 4)
          {
            goto LABEL_1411;
          }

          if (v6)
          {
LABEL_309:
            v10 = PLAnimationTelemetryGetLog();
            v63 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v63, v9);

            if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v13 = "ExitDetailsPreparation";
            goto LABEL_572;
          }

LABEL_906:
          v10 = PLAnimationTelemetryGetLog();
          v197 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v197, v9);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "ExitDetailsPreparation";
        }
      }

      else
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_1411;
          }

          if (!v6)
          {
LABEL_899:
            v10 = PLAnimationTelemetryGetLog();
            v196 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v196, v9);

            if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v13 = "ExitOneUpFromDuplicatesAlbumPreparation";
            goto LABEL_929;
          }

LABEL_22:
          v10 = PLAnimationTelemetryGetLog();
          v17 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v17, v9);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "ExitOneUpFromDuplicatesAlbumPreparation";
LABEL_572:
          v112 = v10;
          v113 = OS_SIGNPOST_INTERVAL_BEGIN;
          goto LABEL_930;
        }

        if (v6)
        {
LABEL_561:
          v10 = PLAnimationTelemetryGetLog();
          v107 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v107, v9);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "EnterOneUpFromDuplicatesAlbumPreparation";
          goto LABEL_572;
        }

LABEL_919:
        v10 = PLAnimationTelemetryGetLog();
        v198 = PLAnimationTelemetryGetLog();
        v18 = os_signpost_id_make_with_pointer(v198, v9);

        if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_1410;
        }

        *v201 = 0;
        v13 = "EnterOneUpFromDuplicatesAlbumPreparation";
      }

LABEL_929:
      v112 = v10;
      v113 = OS_SIGNPOST_INTERVAL_END;
LABEL_930:
      v200 = v18;
LABEL_1409:
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v112, v113, v200, v13, " enableTelemetry=YES ", v201, 2u);
      goto LABEL_1410;
    case 45:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v131 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v131, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "EnterDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }
        }

        else
        {
          if (a3 != 4)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v72 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v72, v9);

          if (v6)
          {
            if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
            {
              *v201 = 0;
              v22 = "ExitDetailsPreparation";
              goto LABEL_853;
            }
          }

          else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }
        }
      }

      else if (a3 == 1)
      {
        v10 = PLAnimationTelemetryGetLog();
        v130 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v130, v9);

        if (v6)
        {
          if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "EnterOneUpFromSharedLibraryAlbumPreparation";
            goto LABEL_853;
          }
        }

        else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          *v201 = 0;
          v22 = "EnterOneUpFromSharedLibraryAlbumPreparation";
          goto LABEL_1351;
        }
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_1411;
        }

        v10 = PLAnimationTelemetryGetLog();
        v29 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v29, v9);

        if (v6)
        {
          if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
          {
            *v201 = 0;
            v22 = "ExitOneUpFromSharedLibraryAlbumPreparation";
            goto LABEL_853;
          }
        }

        else if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          *v201 = 0;
          v22 = "ExitOneUpFromSharedLibraryAlbumPreparation";
          goto LABEL_1351;
        }
      }

      goto LABEL_1410;
    case 46:
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v151 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v151, v9);

          if (!v6)
          {
            if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v22 = "EnterDetailsPreparation";
            goto LABEL_1351;
          }

          if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v22 = "EnterDetailsPreparation";
        }

        else
        {
          if (a3 != 4)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v82 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v82, v9);

          if (!v6)
          {
            if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v22 = "ExitDetailsPreparation";
            goto LABEL_1351;
          }

          if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v22 = "ExitDetailsPreparation";
        }
      }

      else
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v39 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v39, v9);

          if (v6)
          {
            if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
            {
              goto LABEL_1410;
            }

            *v201 = 0;
            v22 = "ExitOneUpFromForYouSharedLibrarySharingSuggestionPreparation";
            goto LABEL_853;
          }

          if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v22 = "ExitOneUpFromForYouSharedLibrarySharingSuggestionPreparation";
LABEL_1351:
          v184 = v10;
          v185 = OS_SIGNPOST_INTERVAL_END;
          goto LABEL_1352;
        }

        v10 = PLAnimationTelemetryGetLog();
        v150 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v150, v9);

        if (!v6)
        {
          if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v22 = "EnterOneUpFromForYouSharedLibrarySharingSuggestionPreparation";
          goto LABEL_1351;
        }

        if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_1410;
        }

        *v201 = 0;
        v22 = "EnterOneUpFromForYouSharedLibrarySharingSuggestionPreparation";
      }

LABEL_853:
      v184 = v10;
      v185 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_1352:
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v184, v185, v21, v22, " enableTelemetry=YES ", v201, 2u);
      goto LABEL_1410;
    default:
      goto LABEL_1411;
  }
}

+ (void)_scrollAnimationOccurred:(int64_t)a3 isBegin:(BOOL)a4
{
  v4 = a4;
  if (a3 == 3)
  {
    v5 = PLAnimationTelemetryGetLog();
    v10 = os_signpost_enabled(v5);
    if (v4)
    {
      if (v10)
      {
        v14 = 0;
        v7 = "ScrollSearch";
        v8 = &v14;
        goto LABEL_13;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v13 = 0;
    v7 = "ScrollSearch";
    v8 = &v13;
    goto LABEL_20;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    v5 = PLAnimationTelemetryGetLog();
    v6 = os_signpost_enabled(v5);
    if (v4)
    {
      if (v6)
      {
        v18 = 0;
        v7 = "ScrollForYou";
        v8 = &v18;
LABEL_13:
        v11 = v5;
        v12 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_21:
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, v12, 0xEEEEB0B5B2B2EEEELL, v7, " enableTelemetry=YES  isAnimation=YES ", v8, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if (!v6)
    {
      goto LABEL_22;
    }

    *buf = 0;
    v7 = "ScrollForYou";
    v8 = buf;
LABEL_20:
    v11 = v5;
    v12 = OS_SIGNPOST_INTERVAL_END;
    goto LABEL_21;
  }

  v5 = PLAnimationTelemetryGetLog();
  v9 = os_signpost_enabled(v5);
  if (!v4)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    v15 = 0;
    v7 = "ScrollAlbums";
    v8 = &v15;
    goto LABEL_20;
  }

  if (v9)
  {
    v16 = 0;
    v7 = "ScrollAlbums";
    v8 = &v16;
    goto LABEL_13;
  }

LABEL_22:
}

@end