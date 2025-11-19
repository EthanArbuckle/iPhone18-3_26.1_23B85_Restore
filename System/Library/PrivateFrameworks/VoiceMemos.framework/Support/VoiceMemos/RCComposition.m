@interface RCComposition
+ (id)_compositionByMergingInterruptedCapture:(id)a3 contentUpdated:(BOOL *)a4;
+ (void)rcs_composeToFinalDestination:(id)a3 completionBlock:(id)a4;
- (id)_compositionByReplacingDecomposedFragments:(id)a3;
- (void)_eaccess_repairDecomposedFragmentMetadataIfNecessary:(id)a3;
- (void)rcs_repairDecomposedFragmentMetadataIfNecessary:(id)a3;
@end

@implementation RCComposition

+ (void)rcs_composeToFinalDestination:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100001D7C;
  v45 = sub_100006CC8;
  v7 = v5;
  v46 = v7;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100006CD0;
  v40[3] = &unk_100055390;
  v40[4] = &v41;
  [v7 _eaccess_repairDecomposedFragmentMetadataIfNecessary:v40];
  v8 = +[NSFileManager defaultManager];
  v9 = [v42[5] composedAVURL];
  v10 = [v9 path];
  v11 = [v8 fileExistsAtPath:v10 isDirectory:0];

  v12 = [v42[5] decomposedFragments];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [v42[5] savedRecordingUUID];
    if (v14)
    {
      v15 = v42[5];
      v39 = 0;
      v16 = [v15 compositionAssetForExport:&v39];
      v17 = v39;
      if (v16)
      {
        v18 = [RCCaptureFormat AVAssetAuthoringMetadataWithComposition:v42[5]];
        if ([v16 rc_hasSpatialTracks])
        {
          v19 = [[_TtC10voicememod17RCSpatialExporter alloc] initWithComposition:v16 metadata:v18];
        }

        else
        {
          v19 = [[RCCompositionComposedAssetWriter alloc] initWithCompositionAsset:v16 metadata:v18];
        }

        v21 = v19;
        RCTestSlowMessageExportSeconds();
        if (v22 > 0.0)
        {
          [NSThread sleepForTimeInterval:?];
        }

        out_token = 0;
        if (RCRunningInSavedRecordingDaemon())
        {
          v23 = [v42[5] savedRecordingUUID];
          v24 = [NSString stringWithFormat:@"%@.%@", RCFinalizationProgressNotificationName, v23];

          notify_register_check([v24 UTF8String], &out_token);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100006CE0;
          v34[3] = &unk_1000553B8;
          v35 = v21;
          v37 = out_token;
          v25 = v24;
          v36 = v25;
          v26 = [NSTimer timerWithTimeInterval:1 repeats:v34 block:0.1];
          v27 = +[NSRunLoop mainRunLoop];
          [v27 addTimer:v26 forMode:NSDefaultRunLoopMode];
        }

        else
        {
          v26 = 0;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100006D30;
        v29[3] = &unk_1000553E0;
        v28 = v26;
        v33 = out_token;
        v30 = v28;
        v32 = &v41;
        v31 = v6;
        [v21 writeCompositionWithCompletionBlock:v29];
      }

      else
      {
        v21 = RCGenericErrorWithUnderlyingError();
        (*(v6 + 2))(v6, 0, 0, v21);
      }
    }

    else
    {
      v17 = RCGenericErrorWithUnderlyingError();
      (*(v6 + 2))(v6, 0, 0, v17);
    }
  }

  else
  {
    if (v11)
    {
      v20 = v42[5];
    }

    else
    {
      v20 = 0;
    }

    (*(v6 + 2))(v6, v20, 0, 0);
  }

  _Block_object_dispose(&v41, 8);
}

- (void)rcs_repairDecomposedFragmentMetadataIfNecessary:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006FA8;
  v5[3] = &unk_100055408;
  v6 = a3;
  v4 = v6;
  [(RCComposition *)self _eaccess_repairDecomposedFragmentMetadataIfNecessary:v5];
}

- (void)_eaccess_repairDecomposedFragmentMetadataIfNecessary:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19[0] = 0;
  v5 = [RCComposition _compositionByMergingInterruptedCapture:self contentUpdated:v19];
  v6 = [v5 decomposedFragments];
  v7 = [v6 count];
  v8 = [NSMutableArray arrayWithCapacity:v7];
  v9 = [v5 decomposedFragments];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000071AC;
  v12[3] = &unk_100055430;
  v14 = &v16;
  v15 = v7;
  v10 = v8;
  v13 = v10;
  [v9 enumerateObjectsUsingBlock:v12];

  if (v4)
  {
    v11 = [v5 _compositionByReplacingDecomposedFragments:v10];

    v4[2](v4, v11, *(v17 + 24));
    v5 = v11;
  }

  _Block_object_dispose(&v16, 8);
}

+ (id)_compositionByMergingInterruptedCapture:(id)a3 contentUpdated:(BOOL *)a4
{
  v6 = a3;
  v7 = [v6 composedAVURL];
  v8 = [a1 mergeCaptureFragmentMetadataURLForComposedAVURL:v7];

  v9 = [NSDictionary dictionaryWithContentsOfURL:v8];
  if (v9)
  {
    v10 = [[RCMutableCompositionFragment alloc] initWithDictionaryPListRepresentation:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 AVOutputURL];
      v13 = [AVURLAsset rc_preciseTimingAssetWithURL:v12];

      [v13 rc_durationInSeconds];
      v15 = v14;
      if (v14 > 0.01)
      {
        [v11 timeRangeInComposition];
        [v11 setContentDuration:v15];
        RCTimeRangeMake();
        [v11 setTimeRangeInContentToUse:?];
        RCTimeRangeMake();
        [v11 setTimeRangeInComposition:?];
        v16 = [v6 compositionByOverdubbingWithFragment:v11];

        if (a4)
        {
          *a4 = 1;
        }

        v17 = +[NSFileManager defaultManager];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v18 = [v16 composedWaveformURLs];
        v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v27;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(v18);
              }

              [v17 removeItemAtURL:*(*(&v26 + 1) + 8 * i) error:0];
            }

            v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v20);
        }

        v6 = v16;
      }
    }

    v23 = +[NSFileManager defaultManager];
    [v23 removeItemAtURL:v8 error:0];

    v24 = v6;
  }

  else
  {
    v24 = v6;
  }

  return v24;
}

- (id)_compositionByReplacingDecomposedFragments:(id)a3
{
  v4 = a3;
  v5 = [(RCComposition *)self mutableCopy];
  [v5 setDecomposedFragments:v4];

  return v5;
}

@end