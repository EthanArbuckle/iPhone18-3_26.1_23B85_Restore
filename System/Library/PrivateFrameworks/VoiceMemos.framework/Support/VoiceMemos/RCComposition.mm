@interface RCComposition
+ (id)_compositionByMergingInterruptedCapture:(id)capture contentUpdated:(BOOL *)updated;
+ (void)rcs_composeToFinalDestination:(id)destination completionBlock:(id)block;
- (id)_compositionByReplacingDecomposedFragments:(id)fragments;
- (void)_eaccess_repairDecomposedFragmentMetadataIfNecessary:(id)necessary;
- (void)rcs_repairDecomposedFragmentMetadataIfNecessary:(id)necessary;
@end

@implementation RCComposition

+ (void)rcs_composeToFinalDestination:(id)destination completionBlock:(id)block
{
  destinationCopy = destination;
  blockCopy = block;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100001D7C;
  v45 = sub_100006CC8;
  v7 = destinationCopy;
  v46 = v7;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100006CD0;
  v40[3] = &unk_100055390;
  v40[4] = &v41;
  [v7 _eaccess_repairDecomposedFragmentMetadataIfNecessary:v40];
  v8 = +[NSFileManager defaultManager];
  composedAVURL = [v42[5] composedAVURL];
  path = [composedAVURL path];
  v11 = [v8 fileExistsAtPath:path isDirectory:0];

  decomposedFragments = [v42[5] decomposedFragments];
  v13 = [decomposedFragments count];

  if (v13)
  {
    savedRecordingUUID = [v42[5] savedRecordingUUID];
    if (savedRecordingUUID)
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
          savedRecordingUUID2 = [v42[5] savedRecordingUUID];
          v24 = [NSString stringWithFormat:@"%@.%@", RCFinalizationProgressNotificationName, savedRecordingUUID2];

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
        v31 = blockCopy;
        [v21 writeCompositionWithCompletionBlock:v29];
      }

      else
      {
        v21 = RCGenericErrorWithUnderlyingError();
        (*(blockCopy + 2))(blockCopy, 0, 0, v21);
      }
    }

    else
    {
      v17 = RCGenericErrorWithUnderlyingError();
      (*(blockCopy + 2))(blockCopy, 0, 0, v17);
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

    (*(blockCopy + 2))(blockCopy, v20, 0, 0);
  }

  _Block_object_dispose(&v41, 8);
}

- (void)rcs_repairDecomposedFragmentMetadataIfNecessary:(id)necessary
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006FA8;
  v5[3] = &unk_100055408;
  necessaryCopy = necessary;
  v4 = necessaryCopy;
  [(RCComposition *)self _eaccess_repairDecomposedFragmentMetadataIfNecessary:v5];
}

- (void)_eaccess_repairDecomposedFragmentMetadataIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19[0] = 0;
  v5 = [RCComposition _compositionByMergingInterruptedCapture:self contentUpdated:v19];
  decomposedFragments = [v5 decomposedFragments];
  v7 = [decomposedFragments count];
  v8 = [NSMutableArray arrayWithCapacity:v7];
  decomposedFragments2 = [v5 decomposedFragments];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000071AC;
  v12[3] = &unk_100055430;
  v14 = &v16;
  v15 = v7;
  v10 = v8;
  v13 = v10;
  [decomposedFragments2 enumerateObjectsUsingBlock:v12];

  if (necessaryCopy)
  {
    v11 = [v5 _compositionByReplacingDecomposedFragments:v10];

    necessaryCopy[2](necessaryCopy, v11, *(v17 + 24));
    v5 = v11;
  }

  _Block_object_dispose(&v16, 8);
}

+ (id)_compositionByMergingInterruptedCapture:(id)capture contentUpdated:(BOOL *)updated
{
  captureCopy = capture;
  composedAVURL = [captureCopy composedAVURL];
  v8 = [self mergeCaptureFragmentMetadataURLForComposedAVURL:composedAVURL];

  v9 = [NSDictionary dictionaryWithContentsOfURL:v8];
  if (v9)
  {
    v10 = [[RCMutableCompositionFragment alloc] initWithDictionaryPListRepresentation:v9];
    v11 = v10;
    if (v10)
    {
      aVOutputURL = [v10 AVOutputURL];
      v13 = [AVURLAsset rc_preciseTimingAssetWithURL:aVOutputURL];

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
        v16 = [captureCopy compositionByOverdubbingWithFragment:v11];

        if (updated)
        {
          *updated = 1;
        }

        v17 = +[NSFileManager defaultManager];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        composedWaveformURLs = [v16 composedWaveformURLs];
        v19 = [composedWaveformURLs countByEnumeratingWithState:&v26 objects:v30 count:16];
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
                objc_enumerationMutation(composedWaveformURLs);
              }

              [v17 removeItemAtURL:*(*(&v26 + 1) + 8 * i) error:0];
            }

            v20 = [composedWaveformURLs countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v20);
        }

        captureCopy = v16;
      }
    }

    v23 = +[NSFileManager defaultManager];
    [v23 removeItemAtURL:v8 error:0];

    v24 = captureCopy;
  }

  else
  {
    v24 = captureCopy;
  }

  return v24;
}

- (id)_compositionByReplacingDecomposedFragments:(id)fragments
{
  fragmentsCopy = fragments;
  v5 = [(RCComposition *)self mutableCopy];
  [v5 setDecomposedFragments:fragmentsCopy];

  return v5;
}

@end