@interface PXAnimationTracker
+ (void)_scrollAnimationOccurred:(int64_t)occurred isBegin:(BOOL)begin;
+ (void)_transitionAnimationOccurred:(int64_t)occurred fromOrigin:(int64_t)origin transitionObject:(id)object isBegin:(BOOL)begin;
+ (void)_transitionPreparationOccurred:(int64_t)occurred fromOrigin:(int64_t)origin transitionObject:(id)object isBegin:(BOOL)begin;
+ (void)transitionAnimationDidBegin:(int64_t)begin fromOrigin:(int64_t)origin transitionObject:(id)object;
@end

@implementation PXAnimationTracker

+ (void)_transitionAnimationOccurred:(int64_t)occurred fromOrigin:(int64_t)origin transitionObject:(id)object isBegin:(BOOL)begin
{
  beginCopy = begin;
  objectCopy = object;
  switch(origin)
  {
    case 0:
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v159 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v159, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v86 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v86, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v158 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v158, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v11 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v11, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v155 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v155, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v84 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v84, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v154 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v154, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v41 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v41, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v153 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v153, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v83 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v83, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v152 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v152, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v40 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v40, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v173 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v173, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v93 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v93, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v172 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v172, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v49 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v49, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v147 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v147, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v80 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v80, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v146 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v146, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v37 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v37, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v169 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v169, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v91 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v91, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v168 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v168, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v47 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v47, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v143 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v143, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v78 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v78, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v142 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v142, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v35 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v35, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v145 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v145, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v79 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v79, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v144 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v144, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v36 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v36, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v161 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v161, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v87 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v87, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v160 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v160, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v43 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v43, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v157 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v157, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v85 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v85, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v156 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v156, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v42 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v42, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v179 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v179, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v96 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v96, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v178 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v178, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v52 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v52, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v133 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v133, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v73 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v73, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v132 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v132, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v30 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v30, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v129 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v129, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v71 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v71, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v128 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v128, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v28 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v28, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v183 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v183, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v98 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v98, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v182 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v182, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v54 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v54, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v163 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v163, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v88 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v88, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v162 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v162, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v44 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v44, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v165 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v165, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v89 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v89, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v164 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v164, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v45 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v45, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v181 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v181, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v97 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v97, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v180 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v180, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v53 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v53, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v175 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v175, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v94 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v94, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v174 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v174, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v50 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v50, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v117 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v117, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v65 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v65, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v116 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v116, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v20 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v20, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v137 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v137, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v75 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v75, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v136 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v136, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v32 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v32, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v187 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v187, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v99 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v99, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v186 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v186, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v55 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v55, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v119 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v119, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v66 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v66, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v118 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v118, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v23 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v23, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v135 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v135, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v74 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v74, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v134 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v134, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v31 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v31, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v123 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v123, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v68 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v68, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v122 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v122, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v25 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v25, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v149 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v149, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v81 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v81, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v148 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v148, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v38 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v38, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v121 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v121, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v67 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v67, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v120 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v120, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v24 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v24, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v191 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v191, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v101 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v101, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v190 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v190, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v57 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v57, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v189 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v189, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v100 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v100, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v188 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v188, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v56 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v56, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v127 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v127, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v70 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v70, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v126 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v126, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v27 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v27, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v139 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v139, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v76 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v76, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v138 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v138, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v33 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v33, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v167 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v167, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v90 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v90, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v166 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v166, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v46 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v46, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v141 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v141, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v77 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v77, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v140 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v140, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v34 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v34, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v195 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v195, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v103 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v103, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v194 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v194, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v59 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v59, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v125 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v125, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v69 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v69, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v124 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v124, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v26 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v26, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v177 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v177, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v95 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v95, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v176 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v176, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v51 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v51, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v193 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v193, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v102 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v102, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v192 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v192, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v58 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v58, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v115 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v115, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v64 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v64, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v114 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v114, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v19 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v19, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v171 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v171, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v92 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v92, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v170 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v170, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v48 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v48, objectCopy);

          if (beginCopy)
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
      if (occurred <= 2)
      {
        if (occurred != 1)
        {
          if (occurred != 2)
          {
            goto LABEL_1411;
          }

          v14 = PLAnimationTelemetryGetLog();
          v15 = PLAnimationTelemetryGetLog();
          v16 = os_signpost_id_make_with_pointer(v15, objectCopy);

          if (beginCopy)
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
        v106 = os_signpost_id_make_with_pointer(v105, objectCopy);

        if (beginCopy)
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

      if (occurred != 3)
      {
        if (occurred != 4)
        {
          goto LABEL_1411;
        }

        v60 = PLAnimationTelemetryGetLog();
        v61 = PLAnimationTelemetryGetLog();
        v62 = os_signpost_id_make_with_pointer(v61, objectCopy);

        if (beginCopy)
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
      v110 = os_signpost_id_make_with_pointer(v109, objectCopy);

      if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          if (beginCopy)
          {
LABEL_569:
            v10 = PLAnimationTelemetryGetLog();
            v111 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v111, objectCopy);

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
          v18 = os_signpost_id_make_with_pointer(v199, objectCopy);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "EnterDetails";
        }

        else
        {
          if (occurred != 4)
          {
            goto LABEL_1411;
          }

          if (beginCopy)
          {
LABEL_309:
            v10 = PLAnimationTelemetryGetLog();
            v63 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v63, objectCopy);

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
          v18 = os_signpost_id_make_with_pointer(v197, objectCopy);

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
        if (occurred != 1)
        {
          if (occurred != 2)
          {
            goto LABEL_1411;
          }

          if (!beginCopy)
          {
LABEL_899:
            v10 = PLAnimationTelemetryGetLog();
            v196 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v196, objectCopy);

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
          v18 = os_signpost_id_make_with_pointer(v17, objectCopy);

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

        if (beginCopy)
        {
LABEL_561:
          v10 = PLAnimationTelemetryGetLog();
          v107 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v107, objectCopy);

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
        v18 = os_signpost_id_make_with_pointer(v198, objectCopy);

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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v131 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v131, objectCopy);

          if (beginCopy)
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
          if (occurred != 4)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v72 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v72, objectCopy);

          if (beginCopy)
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

      else if (occurred == 1)
      {
        v10 = PLAnimationTelemetryGetLog();
        v130 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v130, objectCopy);

        if (beginCopy)
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
        if (occurred != 2)
        {
          goto LABEL_1411;
        }

        v10 = PLAnimationTelemetryGetLog();
        v29 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v29, objectCopy);

        if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v151 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v151, objectCopy);

          if (!beginCopy)
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
          if (occurred != 4)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v82 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v82, objectCopy);

          if (!beginCopy)
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
        if (occurred != 1)
        {
          if (occurred != 2)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v39 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v39, objectCopy);

          if (beginCopy)
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
        v21 = os_signpost_id_make_with_pointer(v150, objectCopy);

        if (!beginCopy)
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

+ (void)transitionAnimationDidBegin:(int64_t)begin fromOrigin:(int64_t)origin transitionObject:(id)object
{
  objectCopy = object;
  [self _transitionPreparationOccurred:begin fromOrigin:origin transitionObject:objectCopy isBegin:0];
  [self _transitionAnimationOccurred:begin fromOrigin:origin transitionObject:objectCopy isBegin:1];
}

+ (void)_transitionPreparationOccurred:(int64_t)occurred fromOrigin:(int64_t)origin transitionObject:(id)object isBegin:(BOOL)begin
{
  beginCopy = begin;
  objectCopy = object;
  switch(origin)
  {
    case 0:
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v159 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v159, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v86 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v86, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v158 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v158, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v11 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v11, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v155 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v155, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v84 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v84, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v154 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v154, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v41 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v41, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v153 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v153, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v83 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v83, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v152 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v152, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v40 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v40, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v173 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v173, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v93 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v93, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v172 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v172, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v49 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v49, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v147 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v147, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v80 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v80, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v146 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v146, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v37 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v37, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v169 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v169, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v91 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v91, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v168 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v168, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v47 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v47, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v143 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v143, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v78 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v78, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v142 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v142, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v35 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v35, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v145 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v145, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v79 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v79, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v144 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v144, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v36 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v36, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v161 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v161, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v87 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v87, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v160 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v160, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v43 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v43, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v157 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v157, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v85 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v85, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v156 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v156, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v42 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v42, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v179 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v179, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v96 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v96, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v178 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v178, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v52 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v52, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v133 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v133, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v73 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v73, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v132 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v132, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v30 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v30, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v129 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v129, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v71 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v71, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v128 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v128, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v28 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v28, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v183 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v183, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v98 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v98, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v182 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v182, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v54 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v54, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v163 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v163, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v88 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v88, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v162 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v162, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v44 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v44, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v165 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v165, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v89 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v89, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v164 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v164, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v45 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v45, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v181 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v181, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v97 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v97, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v180 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v180, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v53 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v53, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v175 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v175, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v94 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v94, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v174 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v174, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v50 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v50, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v117 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v117, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v65 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v65, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v116 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v116, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v20 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v20, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v137 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v137, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v75 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v75, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v136 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v136, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v32 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v32, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v187 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v187, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v99 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v99, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v186 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v186, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v55 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v55, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v119 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v119, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v66 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v66, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v118 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v118, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v23 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v23, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v135 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v135, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v74 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v74, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v134 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v134, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v31 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v31, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v123 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v123, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v68 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v68, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v122 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v122, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v25 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v25, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v149 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v149, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v81 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v81, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v148 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v148, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v38 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v38, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v121 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v121, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v67 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v67, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v120 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v120, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v24 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v24, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v191 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v191, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v101 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v101, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v190 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v190, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v57 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v57, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v189 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v189, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v100 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v100, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v188 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v188, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v56 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v56, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v127 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v127, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v70 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v70, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v126 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v126, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v27 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v27, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v139 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v139, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v76 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v76, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v138 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v138, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v33 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v33, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v167 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v167, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v90 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v90, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v166 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v166, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v46 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v46, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v141 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v141, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v77 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v77, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v140 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v140, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v34 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v34, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v195 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v195, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v103 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v103, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v194 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v194, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v59 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v59, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v125 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v125, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v69 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v69, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v124 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v124, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v26 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v26, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v177 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v177, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v95 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v95, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v176 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v176, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v51 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v51, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v193 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v193, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v102 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v102, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v192 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v192, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v58 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v58, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v115 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v115, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v64 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v64, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v114 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v114, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v19 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v19, objectCopy);

          if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v171 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v171, objectCopy);

          if (beginCopy)
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

        if (occurred == 4)
        {
          v10 = PLAnimationTelemetryGetLog();
          v92 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v92, objectCopy);

          if (beginCopy)
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
        if (occurred == 1)
        {
          v10 = PLAnimationTelemetryGetLog();
          v170 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v170, objectCopy);

          if (beginCopy)
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

        if (occurred == 2)
        {
          v10 = PLAnimationTelemetryGetLog();
          v48 = PLAnimationTelemetryGetLog();
          v12 = os_signpost_id_make_with_pointer(v48, objectCopy);

          if (beginCopy)
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
      if (occurred <= 2)
      {
        if (occurred != 1)
        {
          if (occurred != 2)
          {
            goto LABEL_1411;
          }

          v14 = PLAnimationTelemetryGetLog();
          v15 = PLAnimationTelemetryGetLog();
          v16 = os_signpost_id_make_with_pointer(v15, objectCopy);

          if (beginCopy)
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
        v106 = os_signpost_id_make_with_pointer(v105, objectCopy);

        if (beginCopy)
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

      if (occurred != 3)
      {
        if (occurred != 4)
        {
          goto LABEL_1411;
        }

        v60 = PLAnimationTelemetryGetLog();
        v61 = PLAnimationTelemetryGetLog();
        v62 = os_signpost_id_make_with_pointer(v61, objectCopy);

        if (beginCopy)
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
      v110 = os_signpost_id_make_with_pointer(v109, objectCopy);

      if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          if (beginCopy)
          {
LABEL_569:
            v10 = PLAnimationTelemetryGetLog();
            v111 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v111, objectCopy);

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
          v18 = os_signpost_id_make_with_pointer(v199, objectCopy);

          if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
          {
            goto LABEL_1410;
          }

          *v201 = 0;
          v13 = "EnterDetailsPreparation";
        }

        else
        {
          if (occurred != 4)
          {
            goto LABEL_1411;
          }

          if (beginCopy)
          {
LABEL_309:
            v10 = PLAnimationTelemetryGetLog();
            v63 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v63, objectCopy);

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
          v18 = os_signpost_id_make_with_pointer(v197, objectCopy);

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
        if (occurred != 1)
        {
          if (occurred != 2)
          {
            goto LABEL_1411;
          }

          if (!beginCopy)
          {
LABEL_899:
            v10 = PLAnimationTelemetryGetLog();
            v196 = PLAnimationTelemetryGetLog();
            v18 = os_signpost_id_make_with_pointer(v196, objectCopy);

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
          v18 = os_signpost_id_make_with_pointer(v17, objectCopy);

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

        if (beginCopy)
        {
LABEL_561:
          v10 = PLAnimationTelemetryGetLog();
          v107 = PLAnimationTelemetryGetLog();
          v18 = os_signpost_id_make_with_pointer(v107, objectCopy);

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
        v18 = os_signpost_id_make_with_pointer(v198, objectCopy);

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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v131 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v131, objectCopy);

          if (beginCopy)
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
          if (occurred != 4)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v72 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v72, objectCopy);

          if (beginCopy)
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

      else if (occurred == 1)
      {
        v10 = PLAnimationTelemetryGetLog();
        v130 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v130, objectCopy);

        if (beginCopy)
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
        if (occurred != 2)
        {
          goto LABEL_1411;
        }

        v10 = PLAnimationTelemetryGetLog();
        v29 = PLAnimationTelemetryGetLog();
        v21 = os_signpost_id_make_with_pointer(v29, objectCopy);

        if (beginCopy)
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
      if (occurred > 2)
      {
        if (occurred == 3)
        {
          v10 = PLAnimationTelemetryGetLog();
          v151 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v151, objectCopy);

          if (!beginCopy)
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
          if (occurred != 4)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v82 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v82, objectCopy);

          if (!beginCopy)
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
        if (occurred != 1)
        {
          if (occurred != 2)
          {
            goto LABEL_1411;
          }

          v10 = PLAnimationTelemetryGetLog();
          v39 = PLAnimationTelemetryGetLog();
          v21 = os_signpost_id_make_with_pointer(v39, objectCopy);

          if (beginCopy)
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
        v21 = os_signpost_id_make_with_pointer(v150, objectCopy);

        if (!beginCopy)
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

+ (void)_scrollAnimationOccurred:(int64_t)occurred isBegin:(BOOL)begin
{
  beginCopy = begin;
  if (occurred == 3)
  {
    v5 = PLAnimationTelemetryGetLog();
    v10 = os_signpost_enabled(v5);
    if (beginCopy)
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

  if (occurred != 2)
  {
    if (occurred != 1)
    {
      return;
    }

    v5 = PLAnimationTelemetryGetLog();
    v6 = os_signpost_enabled(v5);
    if (beginCopy)
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
  if (!beginCopy)
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