@interface MPCropController
+ (id)sharedController;
+ (void)releaseSharedController;
- (CGPoint)checkFarApartROIs:(id)a3 withImageSize:(CGSize)a4 visibleAspectRatio:(double)a5 roiCenter:(CGPoint)a6;
- (MPCropController)init;
- (double)durationOfSlide:(id)a3;
- (void)_applyCropToSlidesInEffectContainersWithArguments:(id)a3;
- (void)applyAnimatedCropToBreakSlide:(id)a3 withOptions:(id)a4;
- (void)applyAnimatedCropToSlide:(id)a3 withOptions:(id)a4 centeredAt:(CGPoint)a5 alwaysZoomIn:(BOOL)a6;
- (void)applyAnimatedCropWithROIsToSlide:(id)a3 withOptions:(id)a4;
- (void)applyCropToSlide:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)applyCropToSlide:(id)a3 withOptions:(id)a4;
- (void)applyCropToSlidesInEffectContainers:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)applyMultiFaceAnimatedCropToSlide:(id)a3 withOptions:(id)a4;
- (void)applyStationaryCropToSlide:(id)a3 withOptions:(id)a4;
- (void)batchCrop:(id)a3;
- (void)cropSlidesForLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5;
- (void)cropSlidesInDocument:(id)a3 withOptions:(id)a4;
- (void)dealloc;
- (void)setupWithDocument:(id)a3 andOptions:(id)a4;
@end

@implementation MPCropController

+ (id)sharedController
{
  result = qword_1EF2B0;
  if (!qword_1EF2B0)
  {
    objc_sync_enter(a1);
    if (!qword_1EF2B0)
    {
      qword_1EF2B0 = objc_alloc_init(MPCropController);
    }

    objc_sync_exit(a1);
    return qword_1EF2B0;
  }

  return result;
}

+ (void)releaseSharedController
{
  if (qword_1EF2B0)
  {
    objc_sync_enter(a1);

    qword_1EF2B0 = 0;

    objc_sync_exit(a1);
  }
}

- (MPCropController)init
{
  v5.receiver = self;
  v5.super_class = MPCropController;
  v2 = [(MPCropController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_delegate = 0;
    v2->_cropLock = objc_alloc_init(NSRecursiveLock);
  }

  return v3;
}

- (void)dealloc
{
  self->_cropLock = 0;
  v3.receiver = self;
  v3.super_class = MPCropController;
  [(MPCropController *)&v3 dealloc];
}

- (void)batchCrop:(id)a3
{
  v24 = objc_alloc_init(NSAutoreleasePool);
  if (!self->_delegate)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v5 = objc_opt_respondsToSelector();
  if (!self->_delegate)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v6 = objc_opt_respondsToSelector() ^ 1;
LABEL_6:
  v21 = v6;
  v7 = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(a3, "objectForKey:", @"options"}];
  v22 = [a3 objectForKey:@"document"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [a3 objectForKey:@"slidesToCrop"];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v26;
  v12 = -1;
  do
  {
    v13 = 0;
    do
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v25 + 1) + 8 * v13);
      v15 = [objc_msgSend(v14 "nearestLayer")];
      if (v15 != -1 && v15 != v12)
      {
        v17 = v15;
        v18 = [NSNumber numberWithInteger:v15];
        [v7 setObject:v18 forKey:kMPAuthoringLayerIndex];
        v12 = v17;
      }

      if (v5 & 1) == 0 || ([v14 isSecondary])
      {
        goto LABEL_21;
      }

      v19 = [self->_delegate document:v22 shouldUseDefaultAnimatedPathsForSlide:v14 inEffect:{objc_msgSend(v14, "parentEffect")}];
      if ((v19 | v21) & 1) != 0 || ([v14 isSecondary])
      {
        if (!v19)
        {
          goto LABEL_22;
        }

LABEL_21:
        [(MPCropController *)self applyCropToSlide:v14 withOptions:v7];
        goto LABEL_22;
      }

      [self->_delegate document:v22 needsAnimationPathsAppliedForSlide:v14 inEffect:{objc_msgSend(v14, "parentEffect")}];
LABEL_22:
      if (v10 == 30)
      {

        v24 = objc_alloc_init(NSAutoreleasePool);
        v10 = 0;
      }

      else
      {
        ++v10;
      }

      v13 = v13 + 1;
    }

    while (v9 != v13);
    v20 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    v9 = v20;
  }

  while (v20);
LABEL_29:

  [v24 drain];
}

- (void)cropSlidesInDocument:(id)a3 withOptions:(id)a4
{
  v7 = [a3 documentLayerGroup];

  [(MPCropController *)self cropSlidesForLayerGroup:v7 inDocument:a3 withOptions:a4];
}

- (void)cropSlidesForLayerGroup:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  v9 = objc_autoreleasePoolPush();
  [(NSRecursiveLock *)self->_cropLock lock];
  v51 = [a5 mutableCopy];
  if (!v51)
  {
    v51 = [objc_msgSend(a3 "authoringOptions")];
  }

  [(MPCropController *)self setupWithDocument:a4 andOptions:a5];
  v10 = [MPAuthoringUtilities reconfigureRangeFromOptions:a5];
  v12 = v11;
  v13 = objc_alloc_init(NSMutableArray);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = [a3 layers];
  v45 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v45)
  {
    v40 = v9;
    v14 = 0;
    v54 = 0;
    v15 = 0;
    v52 = &v10[v12];
    v42 = *v65;
    v49 = a4;
    v50 = self;
    do
    {
      v16 = 0;
      do
      {
        if (*v65 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v64 + 1) + 8 * v16);
        v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 zIndex]);
        [v51 setObject:v18 forKey:kMPAuthoringLayerIndex];
        v19 = [v17 effectContainers];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v47 = [v19 countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v47)
        {
          v20 = *v61;
          v21 = v14;
          v48 = v16;
          v43 = v19;
          v44 = *v61;
LABEL_10:
          v22 = 0;
LABEL_11:
          if (*v61 != v20)
          {
            v23 = v22;
            objc_enumerationMutation(v19);
            v22 = v23;
          }

          v46 = v22;
          v24 = *(*(&v60 + 1) + 8 * v22);
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v53 = [v24 effects];
          v25 = [v53 countByEnumeratingWithState:&v56 objects:v68 count:16];
          if (v25)
          {
            v26 = v25;
            v55 = *v57;
LABEL_15:
            v27 = 0;
            while (1)
            {
              if (*v57 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v28 = *(*(&v56 + 1) + 8 * v27);
              v29 = [objc_msgSend(v28 "slides")];
              if (v12)
              {
                v71.location = v10;
                v71.length = v12;
                v72.location = v15;
                v72.length = v29;
                v31 = NSIntersectionRange(v71, v72);
                location = v31.location;
                length = v31.length;
                if (v31.length)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                location = v15;
                length = v29;
                if (v29)
                {
LABEL_22:
                  v33 = v10;
                  [v13 addObjectsFromArray:{objc_msgSend(objc_msgSend(v28, "slides"), "subarrayWithRange:", location - v15, length)}];
                  [v13 addObjectsFromArray:{objc_msgSend(v28, "secondarySlides")}];
                  if ([v13 count] >= 0x7D1)
                  {
                    v34 = v54;
                    if (!v54)
                    {
                      v34 = objc_alloc_init(NSOperationQueue);
                      [v34 setMaxConcurrentOperationCount:1];
                    }

                    v35 = [[NSDictionary alloc] initWithObjectsAndKeys:{v13, @"slidesToCrop", v49, @"document", objc_msgSend(v51, "copy"), @"options", 0}];
                    v36 = [[NSInvocationOperation alloc] initWithTarget:v50 selector:"batchCrop:" object:v35];
                    [v36 setQualityOfService:9];
                    [v36 setQueuePriority:-8];
                    v54 = v34;
                    [v34 addOperation:v36];

                    v13 = objc_alloc_init(NSMutableArray);
                  }

                  v10 = v33;
                }
              }

              v15 += v29;
              if (v12 && v15 >= v52)
              {
                v14 = 1;
                a4 = v49;
                self = v50;
                v16 = v48;
                goto LABEL_37;
              }

              if (v26 == ++v27)
              {
                v26 = [v53 countByEnumeratingWithState:&v56 objects:v68 count:16];
                if (v26)
                {
                  goto LABEL_15;
                }

LABEL_33:
                v21 = 0;
                v22 = v46 + 1;
                a4 = v49;
                self = v50;
                v16 = v48;
                v19 = v43;
                v20 = v44;
                if ((v46 + 1) == v47)
                {
                  v37 = [v43 countByEnumeratingWithState:&v60 objects:v69 count:16];
                  v20 = v44;
                  v21 = 0;
                  v14 = 0;
                  v47 = v37;
                  if (!v37)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_10;
                }

                goto LABEL_11;
              }
            }
          }

          if ((v21 & 1) == 0)
          {
            goto LABEL_33;
          }

          v14 = 1;
        }

LABEL_37:
        v38 = [[NSDictionary alloc] initWithObjectsAndKeys:{v13, @"slidesToCrop", a4, @"document", objc_msgSend(v51, "copy"), @"options", 0}];
        [(MPCropController *)self batchCrop:v38];

        v16 = v16 + 1;
      }

      while (v16 != v45);
      v39 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
      v45 = v39;
    }

    while (v39);
    v9 = v40;
    if (v54)
    {
      [v54 waitUntilAllOperationsAreFinished];
    }
  }

  [(MPCropController *)self cleanup];
  [(NSRecursiveLock *)self->_cropLock unlock];
  objc_autoreleasePoolPop(v9);
}

- (void)_applyCropToSlidesInEffectContainersWithArguments:(id)a3
{
  v4 = objc_autoreleasePoolPush();
  [+[MPCropController sharedController](MPCropController "sharedController")];

  objc_autoreleasePoolPop(v4);
}

- (void)applyCropToSlidesInEffectContainers:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  [(NSRecursiveLock *)self->_cropLock lock];
  v27 = a4;
  v28 = self;
  v9 = a5;
  [(MPCropController *)self setupWithDocument:a4 andOptions:a5];
  v10 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a3;
  v25 = [a3 countByEnumeratingWithState:&v33 objects:v38 count:16];
  v11 = 0;
  if (v25)
  {
    v24 = *v34;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v12;
        v13 = *(*(&v33 + 1) + 8 * v12);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = [v13 effects];
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v29 + 1) + 8 * i);
              [v10 addObjectsFromArray:{objc_msgSend(v19, "slides")}];
              [v10 addObjectsFromArray:{objc_msgSend(v19, "secondarySlides")}];
              if ([v10 count] >= 0x7D1)
              {
                if (!v11)
                {
                  v11 = objc_alloc_init(NSOperationQueue);
                  [v11 setMaxConcurrentOperationCount:1];
                }

                v20 = [[NSDictionary alloc] initWithObjectsAndKeys:{v10, @"slidesToCrop", v27, @"document", v9, @"options", 0}];
                v21 = [[NSInvocationOperation alloc] initWithTarget:v28 selector:"batchCrop:" object:v20];
                [v21 setQualityOfService:9];
                [v21 setQueuePriority:-8];
                [v11 addOperation:v21];

                v10 = objc_alloc_init(NSMutableArray);
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v16);
        }

        v12 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  v22 = [[NSDictionary alloc] initWithObjectsAndKeys:{v10, @"slidesToCrop", v27, @"document", v9, @"options", 0}];
  [(MPCropController *)v28 batchCrop:v22];

  if (v11)
  {
    [v11 waitUntilAllOperationsAreFinished];
  }

  [(MPCropController *)v28 cleanup];
  [(NSRecursiveLock *)v28->_cropLock unlock];
}

- (void)applyCropToSlide:(id)a3 inDocument:(id)a4 withOptions:(id)a5
{
  [(NSRecursiveLock *)self->_cropLock lock];
  if (!a5)
  {
    a5 = [objc_msgSend(a4 "documentLayerGroup")];
  }

  [(MPCropController *)self setupWithDocument:a4 andOptions:a5];
  v9 = [objc_msgSend(a3 "nearestLayer")];
  v10 = [a5 mutableCopy];
  if (v9 != -1)
  {
    v11 = [NSNumber numberWithInteger:v9];
    [v10 setObject:v11 forKey:kMPAuthoringLayerIndex];
  }

  [(MPCropController *)self applyCropToSlide:a3 withOptions:v10];
  [(MPCropController *)self cleanup];
  cropLock = self->_cropLock;

  [(NSRecursiveLock *)cropLock unlock];
}

- (void)setupWithDocument:(id)a3 andOptions:(id)a4
{
  authoredDocument = self->_authoredDocument;
  if (authoredDocument)
  {

    self->_authoredDocument = 0;
  }

  self->_authoredDocument = a3;
}

- (void)applyCropToSlide:(id)a3 withOptions:(id)a4
{
  v4 = a4;
  p_vtable = &OBJC_METACLASS___MPDocumentInternal.vtable;
  [MPAuthoringUtilities kenBurnsLikelihoodFromOptions:a4];
  v9 = v8;
  v10 = [MPAuthoringUtilities kenBurnsBreaksFromOptions:v4];
  -[MPDocument resolutionForPath:](self->_authoredDocument, "resolutionForPath:", [a3 path]);
  v13 = v11 / v12;
  if (v11 / v12 >= 0.5 && v13 <= 2.0)
  {
    v21 = 0;
  }

  else
  {
    [MPAuthoringUtilities aspectRatioFromOptions:v4];
    v16 = v15;
    v17 = [a3 parentEffect];
    p_vtable = (&OBJC_METACLASS___MPDocumentInternal + 24);
    [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v19 = v13 / v18;
    v20 = v18 / v13;
    if (v13 >= 1.0)
    {
      v20 = v19;
    }

    v21 = v20 >= 1.1;
  }

  if (v9 == 1.0)
  {
    v22 = 1;
  }

  else
  {
    v22 = v10 & v21;
  }

  v23 = [p_vtable + 172 kenBurnsLevelFromOptions:v4];
  v24 = [a3 parentEffect];
  if (!v24 || (v25 = v24, v26 = [v24 effectID], v27 = objc_msgSend(v25, "presetID"), v28 = objc_msgSend(p_vtable + 172, "styleFromOptions:", v4), objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager, "sharedManager"), "defaultAutoKenBurnsLikelihoodForEffect:withPreset:ofStyle:", v26, v27, v28), v29 <= -1.0))
  {
    if (v22)
    {
      goto LABEL_19;
    }

LABEL_28:

    [(MPCropController *)self applyStationaryCropToSlide:a3 withOptions:v4];
    return;
  }

  if (v29 == 1.0)
  {
    v22 = 1;
  }

  v30 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if ((v22 & 1) == 0)
  {
    goto LABEL_28;
  }

  v23 = v30;
LABEL_19:
  v31 = [(NSMutableDictionary *)v4 objectForKey:kMPAuthoringSeed];
  if (v31)
  {
    srandom([objc_msgSend(a3 "path")] + objc_msgSend(v31, "unsignedIntegerValue"));
  }

  if ([MPAuthoringUtilities useROIFromOptions:v4])
  {
    v32 = -[MPDocument regionsOfInterestForPath:detect:](self->_authoredDocument, "regionsOfInterestForPath:detect:", [a3 path], +[MPAuthoringUtilities performFaceDetectionFromOptions:](MPAuthoringUtilities, "performFaceDetectionFromOptions:", v4));
    if (v32)
    {
      v32 = [v32 count];
    }

    if (v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v32 = 0;
    if (v21)
    {
LABEL_25:

      [(MPCropController *)self applyAnimatedCropToBreakSlide:a3 withOptions:v4];
      return;
    }
  }

  if (!v23)
  {
    v4 = [NSMutableDictionary dictionaryWithDictionary:v4];
    LODWORD(v33) = 0.5;
    v34 = [NSNumber numberWithFloat:v33];
    [(NSMutableDictionary *)v4 setObject:v34 forKey:kMPAuthoringKenBurnsPanFactor];
    LODWORD(v35) = 1067030938;
    v36 = [NSNumber numberWithFloat:v35];
    [(NSMutableDictionary *)v4 setObject:v36 forKey:kMPAuthoringKenBurnsMaxZoom];
LABEL_39:

    [(MPCropController *)self applyAnimatedCropWithROIsToSlide:a3 withOptions:v4];
    return;
  }

  if (v32 >= 2)
  {

    [(MPCropController *)self applyMultiFaceAnimatedCropToSlide:a3 withOptions:v4];
    return;
  }

  if (v32 == &dword_0 + 1)
  {
    goto LABEL_39;
  }

  [(MPCropController *)self applyAnimatedCropToSlide:a3 withOptions:v4];
}

- (void)applyAnimatedCropWithROIsToSlide:(id)a3 withOptions:(id)a4
{
  v7 = -[MPDocument regionsOfInterestForPath:detect:](self->_authoredDocument, "regionsOfInterestForPath:detect:", [a3 path], +[MPAuthoringUtilities performFaceDetectionFromOptions:](MPAuthoringUtilities, "performFaceDetectionFromOptions:", a4));
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  *&v29[16] = width;
  *&v29[24] = height;
  *v29 = CGRectZero.origin.x;
  *&v29[8] = y;
  if (v7)
  {
    v12 = v7;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    *&v29[16] = width;
    *&v29[24] = height;
    *v29 = CGRectZero.origin.x;
    *&v29[8] = y;
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      *&v29[16] = width;
      *&v29[24] = height;
      *v29 = CGRectZero.origin.x;
      *&v29[8] = y;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v35 = CGRectFromString([*(*(&v30 + 1) + 8 * i) objectForKey:kMPMetaDataRegionOfInterestBounds]);
          v17 = v35.origin.x;
          v18 = v35.origin.y;
          v19 = v35.size.width;
          v20 = v35.size.height;
          v21 = v35.size.width == 0.0;
          v22 = *&v29[16];
          v23 = *&v29[24];
          v24 = *v29;
          v25 = *&v29[8];
          if (!v21 && v20 != 0.0)
          {
            v37.origin.x = CGRectZero.origin.x;
            v37.origin.y = y;
            v37.size.width = width;
            v37.size.height = height;
            if (CGRectEqualToRect(*&v24, v37))
            {
              *&v29[16] = v19;
              *&v29[24] = v20;
              *v29 = v17;
              *&v29[8] = v18;
            }

            else
            {
              v36.origin.x = v17;
              v36.origin.y = v18;
              v36.size.width = v19;
              v36.size.height = v20;
              v38.origin.x = CGRectZero.origin.x;
              v38.origin.y = y;
              v38.size.width = width;
              v38.size.height = height;
              if (!CGRectEqualToRect(v36, v38))
              {
                v39.origin.x = v17;
                v39.origin.y = v18;
                v39.size.width = v19;
                v39.size.height = v20;
                *v29 = CGRectUnion(*v29, v39);
              }
            }
          }

          x = CGRectZero.origin.x;
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }
  }

  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v26 = CGRectEqualToRect(*v29, v40);
  v27 = 0.5;
  v28 = 0.5;
  if (!v26)
  {
    [MPAuthoringUtilities kbCenterPointFromRect:*v29, *&v29[8], *&v29[16], *&v29[24]];
  }

  [(MPCropController *)self applyAnimatedCropToSlide:a3 withOptions:a4 centeredAt:1 alwaysZoomIn:v27, v28];
}

- (void)applyStationaryCropToSlide:(id)a3 withOptions:(id)a4
{
  [a3 removeAnimationPathForKey:@"scale"];
  [a3 removeAnimationPathForKey:@"center"];
  [a3 removeAnimationPathForKey:@"angle"];
  v7 = [MPAuthoringUtilities croppingModeFromOptions:a4];
  if (v7 == 1)
  {
    [a3 setSizingMode:@"Scale to Fit"];
    v8 = 0.5;
LABEL_16:
    v16 = 0.5;
    goto LABEL_17;
  }

  v9 = v7;
  -[MPDocument resolutionForPath:](self->_authoredDocument, "resolutionForPath:", [a3 path]);
  v11 = v10;
  v13 = v12;
  v14 = v10 / v12;
  v8 = 0.5;
  if (v10 / v12 >= 0.5 && v14 <= 2.0)
  {
    if (v9 == 2 && v14 <= 1.0)
    {
      v17 = kMPSlideSizingModeFit;
    }

    else
    {
      if (v9 != 4)
      {
        goto LABEL_22;
      }

      v17 = kMPSlideSizingModeBestFit;
    }

    [a3 setSizingMode:*v17];
    goto LABEL_16;
  }

  if (v9)
  {
    goto LABEL_16;
  }

  v16 = 0.5;
  if ([objc_msgSend(a3 "sizingMode")])
  {
LABEL_22:
    v76 = [a3 parentEffect];
    v18 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v19 = [v18 count] - 1;
    v20 = [a3 index];
    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = [v18 objectAtIndex:v21];
    v23 = [v22 objectForKey:@"kenBurnsType"];
    v24 = [v23 hasSuffix:@"to Fit"];
    v25 = [a3 hasMovie];
    if (![MPAuthoringUtilities useROIFromOptions:a4]|| (v25 & 1) != 0 || (v24 & 1) != 0)
    {
      if (v24)
      {
        [a3 setSizingMode:v23];
        v31 = 1;
        goto LABEL_53;
      }
    }

    else
    {
      v26 = [a3 userInfoAttributeForKey:@"pickedROIRect"];
      if (v26)
      {
        v86 = CGRectFromString(v26);
        v87 = CGRectInset(v86, -0.0500000007, -0.0500000007);
        x = v87.origin.x;
        y = v87.origin.y;
        width = v87.size.width;
        height = v87.size.height;
        v94.origin.x = CGRectZero.origin.x;
        v94.origin.y = CGRectZero.origin.y;
        v94.size.width = CGRectZero.size.width;
        v94.size.height = CGRectZero.size.height;
        if (CGRectEqualToRect(v87, v94))
        {
          v31 = 0;
          v8 = 0.5;
LABEL_53:
          v16 = 0.5;
LABEL_54:
          if (v25 && +[MPAuthoringUtilities fitMoviesWhenPossibleFromOptions:](MPAuthoringUtilities, "fitMoviesWhenPossibleFromOptions:", a4) && [objc_msgSend(a3 "parentEffect")] == &dword_0 + 1 && (+[MPAuthoringUtilities croppingModeForFitMoviesFromOptions:](MPAuthoringUtilities, "croppingModeForFitMoviesFromOptions:", a4) & 0x80000000) == 0)
          {
            v51 = @"Scale to Fit";
          }

          else
          {
            if (v9 == 3)
            {
              v52 = 1;
            }

            else
            {
              v52 = v31;
            }

            if (v52)
            {
              goto LABEL_17;
            }

            v51 = @"Crop to Fit";
          }

          [a3 setSizingMode:v51];
          goto LABEL_17;
        }

        [MPAuthoringUtilities kbCenterPointFromRect:x, y, width, height];
        v8 = 1.0;
        v16 = 1.0;
        if (v53 > 1.0)
        {
LABEL_78:
          v31 = 0;
          if (v54 <= v8)
          {
            if (v54 >= 0.0)
            {
              v8 = v54;
            }

            else
            {
              v8 = 0.0;
            }
          }

          goto LABEL_54;
        }

LABEL_66:
        v16 = v53;
        if (v53 < 0.0)
        {
          v16 = 0.0;
        }

        goto LABEL_78;
      }

      if (([objc_msgSend(v22 objectForKey:{@"fullImage", "BOOLValue"}] & 1) == 0)
      {
        v32 = -[MPDocument regionsOfInterestForPath:detect:](self->_authoredDocument, "regionsOfInterestForPath:detect:", [a3 path], +[MPAuthoringUtilities performFaceDetectionFromOptions:](MPAuthoringUtilities, "performFaceDetectionFromOptions:", a4));
        if (v32)
        {
          v33 = v32;
          if ([v32 count])
          {
            v72 = v14;
            v73 = v13;
            v74 = v11;
            v75 = v25;
            v35 = CGRectZero.origin.x;
            v34 = CGRectZero.origin.y;
            v36 = CGRectZero.size.width;
            v37 = CGRectZero.size.height;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v38 = [v33 countByEnumeratingWithState:&v81 objects:v85 count:16];
            if (!v38)
            {
              v49 = v37;
              v50 = v34;
              v43 = CGRectZero.origin.x;
              v42 = v36;
              v48 = v49;
LABEL_69:
              v55 = v43;
              v56 = v34;
              v57 = v42;
              v93 = CGRectInset(*(&v48 - 3), -0.0500000007, -0.0500000007);
              v58 = v93.origin.x;
              v59 = v93.origin.y;
              v60 = v93.size.width;
              v61 = v93.size.height;
              v98.origin.x = v35;
              v98.origin.y = v50;
              v98.size.width = v36;
              v98.size.height = v49;
              v62 = 0.5;
              v63 = 0.5;
              if (!CGRectEqualToRect(v93, v98))
              {
                [MPAuthoringUtilities kbCenterPointFromRect:v58, v59, v60, v61];
                v63 = v64;
                v62 = v65;
              }

              [MPAuthoringUtilities aspectRatioFromOptions:a4];
              v67 = v66;
              v68 = [objc_msgSend(v22 objectForKey:{@"needsImageSize", "BOOLValue"}];
              v80 = +[MPEffectManager sharedManager];
              v69 = [v76 effectID];
              if (v68)
              {
                [v80 mediaAspectRatioForEffectID:v69 usingAttributes:objc_msgSend(v76 atIndex:"effectAttributes") defaultAspectRatio:objc_msgSend(a3 imageAspectRatio:{"index"), v67, v72}];
              }

              else
              {
                [v80 mediaAspectRatioForEffectID:v69 usingPresetID:objc_msgSend(objc_msgSend(a3 atIndex:"parentEffect") defaultAspectRatio:{"presetID"), objc_msgSend(a3, "index"), v67}];
              }

              if (v70 == 9.22337204e18)
              {
                v71 = v67;
              }

              else
              {
                v71 = v70;
              }

              [(MPCropController *)self checkFarApartROIs:v33 withImageSize:v74 visibleAspectRatio:v73 roiCenter:v71, v63, v62];
              v8 = 1.0;
              v16 = 1.0;
              v25 = v75;
              if (v53 > 1.0)
              {
                goto LABEL_78;
              }

              goto LABEL_66;
            }

            v39 = v38;
            v40 = *v82;
            v41 = v37;
            v42 = v36;
            v77 = v34;
            v43 = CGRectZero.origin.x;
LABEL_38:
            v44 = 0;
            while (1)
            {
              v78 = v43;
              v79 = v34;
              if (*v82 != v40)
              {
                objc_enumerationMutation(v33);
              }

              v88 = CGRectFromString([*(*(&v81 + 1) + 8 * v44) objectForKey:kMPMetaDataRegionOfInterestBounds]);
              if (v88.size.width == 0.0)
              {
                goto LABEL_46;
              }

              v45 = v88.size.height;
              if (v88.size.height == 0.0)
              {
                goto LABEL_46;
              }

              v43 = v88.origin.x;
              v34 = v88.origin.y;
              v46 = v88.size.width;
              v89.origin.x = v78;
              v89.origin.y = v79;
              v89.size.width = v42;
              v89.size.height = v41;
              v95.origin.x = CGRectZero.origin.x;
              v95.origin.y = v77;
              v95.size.width = v36;
              v95.size.height = v37;
              if (!CGRectEqualToRect(v89, v95))
              {
                break;
              }

              v41 = v45;
              v42 = v46;
LABEL_47:
              if (v39 == ++v44)
              {
                v47 = [v33 countByEnumeratingWithState:&v81 objects:v85 count:16];
                v39 = v47;
                if (!v47)
                {
                  v48 = v41;
                  v49 = v37;
                  v50 = v77;
                  v35 = CGRectZero.origin.x;
                  goto LABEL_69;
                }

                goto LABEL_38;
              }
            }

            v90.origin.x = v43;
            v90.origin.y = v34;
            v90.size.width = v46;
            v90.size.height = v45;
            v96.origin.x = CGRectZero.origin.x;
            v96.origin.y = v77;
            v96.size.width = v36;
            v96.size.height = v37;
            if (!CGRectEqualToRect(v90, v96))
            {
              v91.origin.x = v78;
              v91.origin.y = v79;
              v91.size.width = v42;
              v91.size.height = v41;
              v97.origin.x = v43;
              v97.origin.y = v34;
              v97.size.width = v46;
              v97.size.height = v45;
              v92 = CGRectUnion(v91, v97);
              v43 = v92.origin.x;
              v34 = v92.origin.y;
              v42 = v92.size.width;
              v41 = v92.size.height;
              goto LABEL_47;
            }

LABEL_46:
            v43 = v78;
            v34 = v79;
            goto LABEL_47;
          }
        }
      }
    }

    v31 = 0;
    goto LABEL_53;
  }

LABEL_17:
  if ([objc_msgSend(a3 "sizingMode")] && (v16 != 0.5 || v8 != 0.5))
  {
    [a3 setCenter:{v16, v8}];
  }
}

- (CGPoint)checkFarApartROIs:(id)a3 withImageSize:(CGSize)a4 visibleAspectRatio:(double)a5 roiCenter:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  height = a4.height;
  width = a4.width;
  [MPAuthoringUtilities rectToFitIn:0.0 withAspectRatio:0.0, a4.width, a4.height, a5];
  v13 = width * x - v12 * 0.5;
  v14 = height * y - v11 * 0.5;
  v15 = v12 + v13 <= width;
  v156 = v11;
  v157 = v12;
  v16 = width - v12;
  v128 = v16;
  if (v15)
  {
    v16 = v13;
  }

  if (v13 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = height - v11;
  v127 = height - v11;
  if (v11 + v14 <= height)
  {
    v18 = height * y - v11 * 0.5;
  }

  v168 = 0u;
  v169 = 0u;
  v126 = 0.0;
  if (v14 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  v166 = 0uLL;
  v167 = 0uLL;
  v20 = [a3 countByEnumeratingWithState:&v166 objects:v172 count:{16, v18}];
  v21 = CGRectZero.size.width;
  v22 = CGRectZero.size.height;
  r2_16 = v22;
  r2_24 = v21;
  if (!v20)
  {
    goto LABEL_21;
  }

  v23 = v20;
  r2 = y;
  r2_8 = x;
  v24 = *v167;
  LOBYTE(v25) = 1;
  do
  {
    for (i = 0; i != v23; i = i + 1)
    {
      if (*v167 != v24)
      {
        objc_enumerationMutation(a3);
      }

      v174 = CGRectFromString([*(*(&v166 + 1) + 8 * i) objectForKey:kMPMetaDataRegionOfInterestBounds]);
      v27 = width * v174.origin.x;
      v28 = height * v174.origin.y;
      v29 = width * v174.size.width;
      v30 = height * v174.size.height;
      v174.origin.x = width * v174.origin.x;
      v174.origin.y = height * v174.origin.y;
      v174.size.width = width * v174.size.width;
      v174.size.height = height * v174.size.height;
      v194.origin.x = v17;
      v194.origin.y = v19;
      v194.size.height = v156;
      v194.size.width = v157;
      v175 = CGRectIntersection(v174, v194);
      IsNull = CGRectIsNull(v175);
      v33 = r2_16;
      v32 = r2_24;
      if (!IsNull)
      {
        v176.origin.x = v27;
        v176.origin.y = v28;
        v176.size.width = v29;
        v176.size.height = v30;
        v195.origin.x = v17;
        v195.origin.y = v19;
        v195.size.height = v156;
        v195.size.width = v157;
        *(&v32 - 2) = CGRectIntersection(v176, v195);
      }

      v25 = (v33 * v32 / (v29 * v30) <= 0.5) & v25;
    }

    v23 = [a3 countByEnumeratingWithState:&v166 objects:v172 count:16];
  }

  while (v23);
  v22 = r2_16;
  v21 = r2_24;
  v35 = r2;
  v34 = r2_8;
  if (v25)
  {
LABEL_21:
    v134 = -v156;
    v135 = -v157;
    v36 = CGRectZero.origin.y;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v37 = [a3 countByEnumeratingWithState:&v162 objects:v171 count:16];
    v131 = v21;
    v132 = v22;
    v125 = v36;
    r2_8a = v36;
    v133 = CGRectZero.origin.x;
    if (v37)
    {
      v38 = v37;
      v39 = *v163;
      v41 = r2_16;
      v40 = r2_24;
      v42 = v36;
      v43 = CGRectZero.origin.x;
      v126 = 0.0;
LABEL_23:
      v44 = 0;
      v45 = v41;
      r2_8a = v42;
      while (1)
      {
        if (*v163 != v39)
        {
          objc_enumerationMutation(a3);
        }

        v177 = CGRectFromString([*(*(&v162 + 1) + 8 * v44) objectForKey:kMPMetaDataRegionOfInterestBounds]);
        v46 = v177.origin.x;
        v47 = v177.origin.y;
        v48 = v177.size.width;
        v49 = v177.size.width == 0.0;
        v50 = v45;
        v51 = v40;
        v52 = r2_8a;
        v53 = v43;
        v131 = v40;
        v132 = v45;
        v133 = v43;
        if (!v49)
        {
          v50 = v45;
          v51 = v40;
          v52 = r2_8a;
          v53 = v43;
          if (v177.size.height != 0.0)
          {
            v139 = v177.size.height;
            v143 = v47;
            r2a = v46;
            v178.origin.x = v43;
            v178.size.width = v40;
            v178.size.height = v45;
            v196.origin.x = CGRectZero.origin.x;
            v196.origin.y = v125;
            v196.size.width = r2_24;
            v178.origin.y = r2_8a;
            v196.size.height = r2_16;
            if (CGRectEqualToRect(v178, v196))
            {
              v50 = v139;
              v52 = v143;
              v51 = v48;
              v53 = r2a;
            }

            else
            {
              v179.origin.y = v143;
              v179.origin.x = r2a;
              v179.size.width = v48;
              v179.size.height = v139;
              v197.origin.x = CGRectZero.origin.x;
              v197.origin.y = v125;
              v197.size.width = r2_24;
              v197.size.height = r2_16;
              v54 = CGRectEqualToRect(v179, v197);
              v55 = v139;
              v57 = v143;
              v56 = r2a;
              v50 = v45;
              v51 = v40;
              v52 = r2_8a;
              v53 = v43;
              if (!v54)
              {
                v180.origin.x = v43;
                v180.origin.y = r2_8a;
                v180.size.width = v40;
                v180.size.height = v45;
                v58 = v48;
                *&v53 = CGRectUnion(v180, *&v56);
                v50 = v59;
              }
            }
          }
        }

        v60 = v52;
        v61 = v51;
        v62 = v53;
        [MPAuthoringUtilities kbCenterPointFromRect:?];
        v65 = width * v63 + v135 * 0.5;
        v66 = height * v64 + v134 * 0.5;
        v68 = v156;
        v67 = v157;
        v69 = v128;
        if (v157 + v65 <= width)
        {
          v69 = v65;
        }

        if (v65 >= 0.0)
        {
          v70 = v69;
        }

        else
        {
          v70 = 0.0;
        }

        v71 = v127;
        if (v156 + v66 <= height)
        {
          v71 = v66;
        }

        if (v66 >= 0.0)
        {
          v72 = v71;
        }

        else
        {
          v72 = 0.0;
        }

        v144 = v62;
        r2b = v60;
        v73 = width * v62;
        v74 = height * v60;
        v136 = v50;
        v140 = v61;
        v75 = width * v61;
        v76 = height * v50;
        v181.origin.x = v73;
        v181.origin.y = v74;
        v181.size.width = width * v61;
        v181.size.height = v76;
        v77 = v70;
        v78 = v72;
        v182 = CGRectIntersection(v181, *(&v67 - 2));
        v79 = CGRectIsNull(v182);
        v81 = r2_16;
        v80 = r2_24;
        if (!v79)
        {
          v183.origin.x = v73;
          v183.origin.y = v74;
          v183.size.width = v75;
          v183.size.height = v76;
          v198.origin.x = v77;
          v198.origin.y = v78;
          v198.size.height = v156;
          v198.size.width = v157;
          *(&v80 - 2) = CGRectIntersection(v183, v198);
        }

        v82 = v80 * v81 / (v76 * v75);
        v41 = v136;
        v40 = v140;
        v43 = v144;
        if (v82 != 1.0)
        {
          break;
        }

        v44 = v44 + 1;
        v45 = v136;
        v126 = 1.0;
        r2_8a = r2b;
        if (v38 == v44)
        {
          v83 = [a3 countByEnumeratingWithState:&v162 objects:v171 count:16];
          v43 = v144;
          v42 = r2b;
          v40 = v140;
          v38 = v83;
          v126 = 1.0;
          v131 = v140;
          v132 = v136;
          r2_8a = r2b;
          v133 = v144;
          if (v83)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    v84 = [a3 reverseObjectEnumerator];
    v85 = [v84 nextObject];
    if (v85)
    {
      v124 = 0.0;
      v86 = CGRectZero.origin.x;
      v88 = r2_16;
      v87 = r2_24;
      v137 = r2_16;
      v141 = CGRectZero.origin.x;
      v145 = v125;
      r2c = r2_24;
      r1 = v125;
      do
      {
        v184 = CGRectFromString([v85 objectForKey:{kMPMetaDataRegionOfInterestBounds, *&v124}]);
        v89 = v184.origin.x;
        v90 = v184.origin.y;
        v91 = v184.size.width;
        v49 = v184.size.width == 0.0;
        v93 = v137;
        v92 = v141;
        v94 = v145;
        v95 = r2c;
        if (!v49)
        {
          v93 = v88;
          v95 = v87;
          v94 = r1;
          v92 = v86;
          if (v184.size.height != 0.0)
          {
            v138 = v184.size.height;
            v142 = v91;
            v146 = v90;
            r2d = v89;
            v185.origin.x = v86;
            v185.origin.y = r1;
            v185.size.width = v87;
            v185.size.height = v88;
            v199.origin.x = CGRectZero.origin.x;
            v199.origin.y = v125;
            v199.size.width = r2_24;
            v199.size.height = r2_16;
            if (CGRectEqualToRect(v185, v199))
            {
              v93 = v138;
              v95 = v142;
              v94 = v146;
              v92 = r2d;
            }

            else
            {
              v186.origin.y = v146;
              v186.origin.x = r2d;
              v186.size.width = v142;
              v186.size.height = v138;
              v200.origin.x = CGRectZero.origin.x;
              v200.origin.y = v125;
              v200.size.width = r2_24;
              v200.size.height = r2_16;
              v96 = CGRectEqualToRect(v186, v200);
              v97 = v138;
              v99 = v142;
              v98 = v146;
              v100 = r2d;
              v93 = v88;
              v95 = v87;
              v94 = r1;
              v92 = v86;
              if (!v96)
              {
                v187.origin.x = v86;
                v187.origin.y = r1;
                v187.size.width = v87;
                v187.size.height = v88;
                *&v92 = CGRectUnion(v187, *&v100);
                v93 = v101;
              }
            }
          }
        }

        v141 = v92;
        v145 = v94;
        r2c = v95;
        [MPAuthoringUtilities kbCenterPointFromRect:?];
        v104 = width * v103 + v135 * 0.5;
        v105 = 0.0;
        v106 = 0.0;
        if (v104 >= 0.0)
        {
          v106 = v104;
          if (v157 + v104 > width)
          {
            v106 = v128;
          }
        }

        v107 = height * v102 + v134 * 0.5;
        if (v107 >= 0.0)
        {
          v105 = height * v102 + v134 * 0.5;
          if (v156 + v107 > height)
          {
            v105 = v127;
          }
        }

        v137 = v93;
        v188.origin.x = width * v141;
        v188.origin.y = height * v145;
        v188.size.width = width * r2c;
        v188.size.height = height * v93;
        v201.origin.x = v106;
        v201.origin.y = v105;
        v201.size.height = v156;
        v201.size.width = v157;
        v189 = CGRectIntersection(v188, v201);
        v108 = CGRectIsNull(v189);
        v110 = r2_16;
        v109 = r2_24;
        if (!v108)
        {
          v190.origin.x = width * v141;
          v190.origin.y = height * v145;
          v190.size.width = width * r2c;
          v190.size.height = height * v93;
          v202.origin.x = v106;
          v202.origin.y = v105;
          v202.size.height = v156;
          v202.size.width = v157;
          *(&v109 - 2) = CGRectIntersection(v190, v202);
        }

        if (v109 * v110 / (height * v93 * (width * r2c)) != 1.0)
        {
          break;
        }

        v85 = [v84 nextObject];
        v124 = 1.0;
        v86 = v141;
        r1 = v145;
        v87 = r2c;
        v88 = v93;
      }

      while (v85);
    }

    else
    {
      v124 = 0.0;
      v88 = r2_16;
      v87 = r2_24;
      v86 = CGRectZero.origin.x;
      r1 = v125;
    }

    v129 = v88;
    v111 = v87;
    v191.origin.x = v133;
    v191.origin.y = r2_8a;
    v112 = r2_16;
    v191.size.width = v131;
    v191.size.height = v132;
    v114 = v125;
    v113 = CGRectZero.origin.x;
    v203.origin.x = CGRectZero.origin.x;
    v203.origin.y = v125;
    v115 = r2_24;
    v203.size.width = r2_24;
    v203.size.height = r2_16;
    if (CGRectEqualToRect(v191, v203) && (v192.origin.x = v86, v192.size.height = v129, v192.origin.y = r1, v192.size.width = v111, v204.origin.x = CGRectZero.origin.x, v204.origin.y = v125, v204.size.width = r2_24, v204.size.height = r2_16, CGRectEqualToRect(v192, v204)))
    {
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v116 = [a3 countByEnumeratingWithState:&v158 objects:v170 count:16];
      if (v116)
      {
        v117 = v116;
        v118 = *v159;
        do
        {
          for (j = 0; j != v117; j = j + 1)
          {
            if (*v159 != v118)
            {
              objc_enumerationMutation(a3);
            }

            v193 = CGRectFromString([*(*(&v158 + 1) + 8 * j) objectForKey:{kMPMetaDataRegionOfInterestBounds, *&v124}]);
            if (v193.origin.y > v114)
            {
              v113 = v193.origin.x;
              v114 = v193.origin.y;
              v115 = v193.size.width;
              v112 = v193.size.height;
            }
          }

          v117 = [a3 countByEnumeratingWithState:&v158 objects:v170 count:16];
        }

        while (v117);
      }

      v120 = v113;
      v121 = v114;
      v122 = v115;
      v123 = v112;
    }

    else
    {
      v121 = r1;
      if (v126 <= v124)
      {
        v120 = v86;
        v122 = v111;
        v123 = v129;
      }

      else
      {
        v120 = v133;
        v121 = r2_8a;
        v122 = v131;
        v123 = v132;
      }
    }

    [MPAuthoringUtilities kbCenterPointFromRect:v120, v121, v122, v123, *&v124];
  }

  result.y = v35;
  result.x = v34;
  return result;
}

- (void)applyAnimatedCropToBreakSlide:(id)a3 withOptions:(id)a4
{
  -[MPDocument resolutionForPath:](self->_authoredDocument, "resolutionForPath:", [a3 path]);
  v9 = v7 / v8;
  v10 = [MPAuthoringUtilities croppingModeFromOptions:a4];
  [MPAuthoringUtilities aspectRatioFromOptions:a4];
  v12 = v11;
  v13 = [MPAuthoringUtilities kenBurnsOffsetTypeFromOptions:a4];
  if (v10 == 1)
  {
    v17 = 0;
    v14 = @"Scale to Fit";
  }

  else
  {
    v14 = @"Crop to Fit";
    if (v10 == 4 || v10 == 2)
    {
      v15 = v9 >= 1.0 || v12 <= 1.0;
      if (!v15 || (v9 > 1.0 ? (v16 = v12 < 1.0) : (v16 = 0), v16))
      {
        v14 = @"Scale to Fit";
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  v18 = -[MPDocument regionsOfInterestForPath:](self->_authoredDocument, "regionsOfInterestForPath:", [a3 path]);
  v19 = v18;
  if (v9 >= 1.0)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v27 = [v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (!v27)
    {
      goto LABEL_41;
    }

    v28 = v27;
    v50 = v13;
    v52 = v17;
    v29 = 0;
    v30 = 0;
    v31 = *v54;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v54 != v31)
        {
          objc_enumerationMutation(v19);
        }

        v33 = COERCE_DOUBLE(CGRectFromString([*(*(&v53 + 1) + 8 * i) objectForKey:kMPMetaDataRegionOfInterestBounds]));
        v30 |= v33 < 0.333000004;
        v29 |= v33 > 0.666000009;
      }

      v28 = [v19 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v28);
    v17 = v52;
    v13 = v50;
    if ((v29 ^ v30))
    {
      v34 = v30 ^ 1;
      if ((v30 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
LABEL_41:
      v34 = random();
      if (v34)
      {
LABEL_39:
        v37 = 0.5;
        v35 = 0.0;
        v36 = 0.0;
        v26 = 0.5;
        if ((v34 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }
    }

    v35 = 1.0;
    if ((v34 & 1) == 0)
    {
      v36 = 0.0;
      goto LABEL_46;
    }

LABEL_43:
    v36 = 1.0;
LABEL_46:
    v37 = 0.5;
    v26 = 0.5;
    goto LABEL_48;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v20 = [v18 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = v20;
  v49 = v13;
  v51 = v17;
  v22 = 0;
  v23 = 0;
  v24 = *v58;
  do
  {
    for (j = 0; j != v21; j = j + 1)
    {
      if (*v58 != v24)
      {
        objc_enumerationMutation(v19);
      }

      v63 = CGRectFromString([*(*(&v57 + 1) + 8 * j) objectForKey:kMPMetaDataRegionOfInterestBounds]);
      v23 |= v63.origin.y < 0.333000004;
      v22 |= v63.origin.y > 0.666000009;
    }

    v21 = [v19 countByEnumeratingWithState:&v57 objects:v62 count:{16, v63.origin.x}];
  }

  while (v21);
  v17 = v51;
  v13 = v49;
  if (((v22 ^ v23) & 1) == 0)
  {
LABEL_27:
    LOBYTE(v22) = random();
  }

  if (v22)
  {
    v26 = 0.0;
    v36 = 0.5;
    v37 = 1.0;
  }

  else
  {
    v26 = 1.0;
    v36 = 0.5;
    v37 = 0.0;
  }

  v35 = 0.5;
LABEL_48:
  v38 = +[MPAnimationPathKeyframed animationPath];
  v39 = [MPAuthoringUtilities easeKenBurnsPanFromOptions:a4];
  v40 = [v38 createKeyframeWithPoint:v35 atTime:{v26, 0.0}];
  if (v39)
  {
    [v40 setPostControl:0.25];
    [objc_msgSend(v38 createKeyframeWithPoint:v36 atTime:{v37, 1.0), "setPreControl:", -0.25}];
  }

  else if (v13 < 0)
  {
    [v38 createKeyframeWithPoint:v36 atTime:{v37, 1.0}];
  }

  else
  {
    [v40 setOffsetType:v13];
    [objc_msgSend(v38 createKeyframeWithPoint:v36 atTime:{v37, 1.0), "setOffsetType:", v13}];
  }

  [a3 setAnimationPath:v38 forKey:@"center"];
  [MPAuthoringUtilities kenBurnsStartZoomLevelFromOptions:a4];
  v42 = v41;
  [MPAuthoringUtilities kenBurnsEndZoomLevelFromOptions:a4];
  v44 = v43;
  v45 = +[MPAnimationPathKeyframed animationPath];
  v46 = v45;
  if (v42 > -1.0 || v44 > -1.0)
  {
    if (v44 <= -1.0)
    {
      v44 = 1.0;
    }
  }

  else if (v17)
  {
    if ((v9 >= 1.0 || v12 <= 1.0) && (v9 <= 1.0 || v12 >= 1.0))
    {
      if (v9 >= 1.0)
      {
        v44 = 1.0;
        if (v9 * 0.449999988 <= v12)
        {
          goto LABEL_70;
        }

        v48 = v12 / fmax(v12 / (v9 * 0.449999988), 0.5);
      }

      else
      {
        v44 = 1.0;
        if (v9 * 2.20000005 >= v12)
        {
          goto LABEL_70;
        }

        v48 = fmax(v9 * 2.20000005 / v12, 0.5) / (v9 / v12);
      }

      v14 = @"Scale to Fit";
    }

    else
    {
      v47 = v12 >= 1.0 || v9 <= 1.0;
      v48 = 2.0;
      if (!v47)
      {
        v48 = 4.0;
      }
    }

    v44 = v48;
  }

  else
  {
    v44 = 1.0;
  }

LABEL_70:
  [v45 createKeyframeWithScalar:? atTime:?];
  [v46 createKeyframeWithScalar:v44 atTime:1.0];
  [a3 setAnimationPath:v46 forKey:@"scale"];
  [a3 setSizingMode:v14];
  [a3 removeAnimationPathForKey:@"angle"];
}

- (void)applyAnimatedCropToSlide:(id)a3 withOptions:(id)a4 centeredAt:(CGPoint)a5 alwaysZoomIn:(BOOL)a6
{
  -[MPDocument resolutionForPath:](self->_authoredDocument, "resolutionForPath:", [a3 path]);
  v11 = v10;
  v13 = v12;
  [(MPCropController *)self durationOfSlide:a3];
  v110 = v14;
  if (v14 == -1.0)
  {
    [MPAuthoringUtilities durationPerEffectFromOptions:a4];
    v110 = v15;
  }

  v16 = v11 / v13;
  [MPAuthoringUtilities kenBurnsZoomFactorFromOptions:a4];
  v102 = v17;
  if (a6)
  {
    v18 = 1;
  }

  else
  {
    v18 = [MPAuthoringUtilities kenBurnsAlwaysZoomInFromOptions:a4];
  }

  [MPAuthoringUtilities aspectRatioFromOptions:a4];
  v20 = v19;
  v21 = [a3 parentEffect];
  [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (v22 == 9.22337204e18)
  {
    v23 = v20;
  }

  else
  {
    v23 = v22;
  }

  v24 = [MPAuthoringUtilities croppingModeFromOptions:a4];
  v25 = 1.29999995;
  if ([a3 hasMovie] && +[MPAuthoringUtilities fitMoviesWhenPossibleFromOptions:](MPAuthoringUtilities, "fitMoviesWhenPossibleFromOptions:", a4))
  {
    v26 = [MPAuthoringUtilities croppingModeForFitMoviesFromOptions:a4];
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v26;
    }

    v25 = dbl_1637A0[(v26 & 0x80000000) == 0];
  }

  if (v16 > 1.0)
  {
    v27 = v20 < 1.0 && v24 == 4;
  }

  else
  {
    if (v24 != 2)
    {
      v27 = v20 > 1.0 && v24 == 4;
      goto LABEL_34;
    }

    v27 = 1;
  }

  if (v24 == 2 && v27)
  {
    v29 = kMPSlideSizingModeFit;
    goto LABEL_39;
  }

  if (v24 == 2 && !v27)
  {
    v27 = 0;
LABEL_37:
    v29 = kMPSlideSizingModeCrop;
    goto LABEL_39;
  }

LABEL_34:
  if (!v24)
  {
    goto LABEL_37;
  }

  if (v24 == 1)
  {
    [a3 setSizingMode:@"Scale to Fit"];
LABEL_40:
    v31 = v13 * v23;
    v106 = 0.0;
    v107 = 0.0;
    v32 = v13;
    goto LABEL_45;
  }

  v29 = kMPSlideSizingModeBestFit;
LABEL_39:
  [a3 setSizingMode:*v29];
  if (v27)
  {
    goto LABEL_40;
  }

  if (v11 / v23 >= v13)
  {
    v32 = v13;
  }

  else
  {
    v32 = v11 / v23;
  }

  v31 = v23 * v32;
  v106 = (v13 - v32) * 0.5;
  v107 = (v11 - v23 * v32) * 0.5;
LABEL_45:
  v108 = v32;
  v109 = v31;
  if (v16 > 1.0)
  {
    if (v11 >= v31 || v13 <= v32)
    {
      v33 = 1.0;
      if (v13 < v32)
      {
        v33 = v32 / v13;
      }
    }

    else
    {
      v33 = v31 / v11;
    }

    v25 = v33 + 0.25;
  }

  else
  {
    v33 = 1.00999999;
  }

  [MPAuthoringUtilities kenBurnsStartZoomLevelFromOptions:a4];
  v36 = v35;
  [MPAuthoringUtilities kenBurnsEndZoomLevelFromOptions:a4];
  v38 = v37;
  [MPAuthoringUtilities maxKenBurnsZoomFromOptions:a4];
  if (v25 > v39 && v39 != -1.0)
  {
    v25 = v39;
  }

  v41 = randomFloatInRange(v33, v25);
  v103 = v11;
  v104 = v13;
  if (v18)
  {
    v42 = randomFloatInRange(v33, v25 - (v25 - v33) * 0.899999976);
    randomFloatInRange(v33, v25);
    v33 = v33 + (v25 - v33) * 0.899999976;
  }

  else
  {
    v42 = v41;
  }

  v43 = randomFloatInRange(v33, v25);
  if (v36 <= -1.0)
  {
    v36 = v42;
  }

  if (v38 <= -1.0)
  {
    v44 = v43;
  }

  else
  {
    v44 = v38;
  }

  v45 = vabdd_f64(v36, v44);
  if (v45 > 0.150000006)
  {
    v46 = (v45 + -0.150000006) * 0.5;
    v47 = -v46;
    v48 = v36 <= v44;
    if (v36 <= v44)
    {
      v49 = -v46;
    }

    else
    {
      v49 = v46;
    }

    v44 = v44 + v49;
    if (v48)
    {
      v47 = v46;
    }

    v36 = v36 + v47;
  }

  [MPAuthoringUtilities kenBurnsPanFactorFromOptions:a4];
  v99 = v50;
  v51 = CenterRectOverRect(0.0, 0.0, v11 * v36, v13 * v36, v107, v106, v109, v108);
  v52 = (v107 - FloorRect(v51)) / v109;
  v56 = v55 > v109;
  if (v55 <= v109)
  {
    v57 = -v52;
  }

  else
  {
    v57 = v52;
  }

  if (v56)
  {
    v52 = -v52;
  }

  v58 = (v106 - v53) / v108;
  v59 = v54 > v108;
  if (v54 <= v108)
  {
    v60 = -v58;
  }

  else
  {
    v60 = v58;
  }

  if (v59)
  {
    v58 = -v58;
  }

  v61 = v110 / 6.0;
  if (v110 < 6.0)
  {
    v62 = v110 / 6.0 * v60;
  }

  else
  {
    v62 = v60;
  }

  if (v110 < 6.0)
  {
    v63 = v110 / 6.0 * v58;
  }

  else
  {
    v63 = v58;
  }

  if (v110 < 6.0)
  {
    v64 = v110 / 6.0 * v57;
  }

  else
  {
    v64 = v57;
  }

  if (v110 < 6.0)
  {
    v52 = v110 / 6.0 * v52;
  }

  if (v27)
  {
    y = 0.649999976;
    x = 0.649999976;
    if (a5.x <= 0.649999976)
    {
      x = a5.x;
      if (a5.x < 0.349999994)
      {
        x = 0.349999994;
      }
    }

    if (a5.y <= 0.649999976)
    {
      y = 0.349999994;
      if (a5.y >= 0.349999994)
      {
        y = a5.y;
      }
    }
  }

  else
  {
    x = a5.x;
    y = a5.y;
  }

  v101 = x;
  v98 = x + randomFloatInRange(v52, v64) * v99;
  v97 = randomFloatInRange(v63, v62);
  v67 = v104 * (v44 * v99);
  v105 = 0.0;
  v68 = (v107 - CenterRectOverRect(0.0, 0.0, v103 * (v44 * v99), v67, v107, v106, v109, v108)) / v109;
  v72 = v71 > v109;
  if (v71 <= v109)
  {
    v73 = -v68;
  }

  else
  {
    v73 = v68;
  }

  if (v72)
  {
    v68 = -v68;
  }

  v74 = (v106 - v69) / v108;
  v75 = v70 > v108;
  if (v70 <= v108)
  {
    v76 = -v74;
  }

  else
  {
    v76 = v74;
  }

  if (v75)
  {
    v74 = -v74;
  }

  v77 = v61 * v68;
  v78 = v61 * v73;
  if (v110 < 6.0)
  {
    v79 = v61 * v76;
  }

  else
  {
    v79 = v76;
  }

  if (v110 < 6.0)
  {
    v80 = v61 * v74;
  }

  else
  {
    v80 = v74;
  }

  if (v110 < 6.0)
  {
    v81 = v78;
  }

  else
  {
    v81 = v73;
  }

  if (v110 < 6.0)
  {
    v68 = v77;
  }

  v82 = 0.0;
  if ((v18 & 1) == 0)
  {
    v105 = v99 * randomFloatInRange(v68, v81);
    v82 = v99 * randomFloatInRange(v80, v79);
  }

  v83 = y + v97 * v99;
  v84 = 1.0;
  v85 = 1.0;
  if (v98 <= 1.0)
  {
    v85 = v98;
    if (v98 < 0.0)
    {
      v85 = 0.0;
    }
  }

  v86 = v101 + v105;
  if (v83 <= 1.0)
  {
    v84 = y + v97 * v99;
    if (v83 < 0.0)
    {
      v84 = 0.0;
    }
  }

  v87 = y + v82;
  v88 = 1.0;
  v89 = 1.0;
  if (v86 <= 1.0)
  {
    v89 = v101 + v105;
    if (v86 < 0.0)
    {
      v89 = 0.0;
    }
  }

  if (v87 <= 1.0)
  {
    v88 = y + v82;
    if (v87 < 0.0)
    {
      v88 = 0.0;
    }
  }

  v90 = +[MPAnimationPathKeyframed animationPath];
  v91 = v90;
  if (v36 >= v44)
  {
    v92 = v44;
  }

  else
  {
    v92 = v36;
  }

  if (v36 >= v44)
  {
    v93 = v36;
  }

  else
  {
    v93 = v44;
  }

  if (!v18)
  {
    v92 = v36;
  }

  v94 = v102 * v92;
  if (v18)
  {
    v95 = v93;
  }

  else
  {
    v95 = v44;
  }

  [v90 createKeyframeWithScalar:v94 atTime:0.0];
  [v91 createKeyframeWithScalar:v102 * v95 atTime:1.0];
  [a3 setAnimationPath:v91 forKey:@"scale"];
  v96 = +[MPAnimationPathKeyframed animationPath];
  [v96 createKeyframeWithPoint:v85 atTime:{v84, 0.0}];
  [v96 createKeyframeWithPoint:v89 atTime:{v88, 1.0}];
  [a3 setAnimationPath:v96 forKey:@"center"];

  [a3 removeAnimationPathForKey:@"angle"];
}

- (void)applyMultiFaceAnimatedCropToSlide:(id)a3 withOptions:(id)a4
{
  -[MPDocument resolutionForPath:](self->_authoredDocument, "resolutionForPath:", [a3 path]);
  v73 = v8;
  v74 = v7;
  v9 = -[MPDocument regionsOfInterestForPath:detect:](self->_authoredDocument, "regionsOfInterestForPath:detect:", [a3 path], +[MPAuthoringUtilities performFaceDetectionFromOptions:](MPAuthoringUtilities, "performFaceDetectionFromOptions:", a4));
  [MPAuthoringUtilities kenBurnsZoomFactorFromOptions:a4];
  v71 = v10;
  [MPAuthoringUtilities kenBurnsPanFactorFromOptions:a4];
  v72 = v11;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  rect1 = height;
  v16 = width;
  v75 = y;
  if (v9)
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v17 = [v9 countByEnumeratingWithState:&v84 objects:v89 count:16];
    rect1 = height;
    v16 = width;
    x = CGRectZero.origin.x;
    if (v17)
    {
      v18 = v17;
      v19 = *v85;
      rect1 = height;
      v16 = width;
      x = CGRectZero.origin.x;
      do
      {
        v20 = 0;
        do
        {
          v78 = x;
          if (*v85 != v19)
          {
            objc_enumerationMutation(v9);
          }

          v90 = CGRectFromString([*(*(&v84 + 1) + 8 * v20) objectForKey:kMPMetaDataRegionOfInterestBounds]);
          if (v90.size.width == 0.0)
          {
            goto LABEL_12;
          }

          v21 = v90.size.height;
          if (v90.size.height == 0.0)
          {
            goto LABEL_12;
          }

          x = v90.origin.x;
          v22 = v90.origin.y;
          v23 = v90.size.width;
          v91.size.height = rect1;
          v91.origin.x = v78;
          v91.origin.y = y;
          v91.size.width = v16;
          v98.origin.x = CGRectZero.origin.x;
          v98.origin.y = v75;
          v98.size.width = width;
          v98.size.height = height;
          if (CGRectEqualToRect(v91, v98))
          {
            rect1 = v21;
            v16 = v23;
            y = v22;
            goto LABEL_13;
          }

          v92.origin.x = x;
          v92.origin.y = v22;
          v92.size.width = v23;
          v92.size.height = v21;
          v99.origin.x = CGRectZero.origin.x;
          v99.origin.y = v75;
          v99.size.width = width;
          v99.size.height = height;
          if (CGRectEqualToRect(v92, v99))
          {
LABEL_12:
            x = v78;
          }

          else
          {
            v93.size.height = rect1;
            v93.origin.x = v78;
            v93.origin.y = y;
            v93.size.width = v16;
            v100.origin.x = x;
            v100.origin.y = v22;
            v100.size.width = v23;
            v100.size.height = v21;
            v94 = CGRectUnion(v93, v100);
            x = v94.origin.x;
            y = v94.origin.y;
            v16 = v94.size.width;
            rect1 = v94.size.height;
          }

LABEL_13:
          v20 = v20 + 1;
        }

        while (v18 != v20);
        v24 = [v9 countByEnumeratingWithState:&v84 objects:v89 count:16];
        v18 = v24;
      }

      while (v24);
    }
  }

  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = v16;
  v95.size.height = rect1;
  v101.origin.y = v75;
  v101.origin.x = CGRectZero.origin.x;
  v79 = width;
  v101.size.width = width;
  v101.size.height = height;
  v25 = CGRectEqualToRect(v95, v101);
  v26 = 0.5;
  v27 = 0.5;
  if (!v25)
  {
    [MPAuthoringUtilities kbCenterPointFromRect:x, y, v16, rect1];
  }

  v68 = v26;
  v70 = v27;
  v76 = v16;
  v28 = CGRectZero.origin.x;
  v29 = v75;
  v30 = v79;
  v31 = v79;
  v32 = height;
  v33 = height;
  if (v9)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v34 = [v9 countByEnumeratingWithState:&v80 objects:v88 count:16];
    v28 = CGRectZero.origin.x;
    v29 = v75;
    v31 = v79;
    v33 = height;
    if (v34)
    {
      v35 = v34;
      v36 = *v81;
      v29 = v75;
      v31 = v79;
      v33 = height;
      v28 = CGRectZero.origin.x;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v81 != v36)
          {
            objc_enumerationMutation(v9);
          }

          v96 = CGRectFromString([*(*(&v80 + 1) + 8 * i) objectForKey:{kMPMetaDataRegionOfInterestBounds, *&v68}]);
          if (v96.size.width * v96.size.height > v31 * v33)
          {
            v29 = v96.origin.y;
            v31 = v96.size.width;
            v33 = v96.size.height;
            v28 = v96.origin.x;
          }
        }

        v35 = [v9 countByEnumeratingWithState:&v80 objects:v88 count:16];
      }

      while (v35);
      v30 = v79;
      v32 = height;
    }
  }

  v97.origin.x = v28;
  v97.origin.y = v29;
  v97.size.width = v31;
  v97.size.height = v33;
  v102.origin.x = CGRectZero.origin.x;
  v102.origin.y = v75;
  v102.size.width = v30;
  v102.size.height = v32;
  v38 = 0.5;
  v39 = 0.5;
  if (!CGRectEqualToRect(v97, v102))
  {
    [MPAuthoringUtilities kbCenterPointFromRect:v28, v29, v31, v33];
    v38 = v40;
    v39 = v41;
  }

  v42 = v74 / v73;
  v43 = randomFloatInRange(1.00999999, 1.03899999);
  v44 = randomFloatInRange(1.27099995, 1.29999995);
  v45 = [MPAuthoringUtilities croppingModeFromOptions:a4];
  if ([a3 hasMovie] && +[MPAuthoringUtilities fitMoviesWhenPossibleFromOptions:](MPAuthoringUtilities, "fitMoviesWhenPossibleFromOptions:", a4))
  {
    [MPAuthoringUtilities croppingModeForFitMoviesFromOptions:a4];
  }

  if (v42 < 1.0 && v45 == 2)
  {
    goto LABEL_37;
  }

  if (v42 >= 1.0 && v45 == 2 || !v45)
  {
    v46 = kMPSlideSizingModeCrop;
  }

  else
  {
    if (v45 == 1)
    {
LABEL_37:
      v46 = kMPSlideSizingModeFit;
      goto LABEL_44;
    }

    v46 = kMPSlideSizingModeBestFit;
  }

LABEL_44:
  v47 = *v46;
  [a3 setSizingMode:{*v46, *&v68}];
  if (!v47)
  {
    v49 = v38;
    v48 = v39;
LABEL_52:
    v50 = v70;
    goto LABEL_53;
  }

  v48 = 0.649999976;
  v49 = 0.649999976;
  if (v38 <= 0.649999976)
  {
    v49 = v38;
    if (v38 < 0.349999994)
    {
      v49 = 0.349999994;
    }
  }

  if (v39 > 0.649999976)
  {
    goto LABEL_52;
  }

  v48 = 0.349999994;
  v50 = v70;
  if (v39 >= 0.349999994)
  {
    v48 = v39;
  }

LABEL_53:
  if (v76 / v74 <= 0.800000012)
  {
    if (rect1 / v73 <= 0.800000012)
    {
      goto LABEL_58;
    }

    v51 = -0.5;
  }

  else
  {
    v51 = -0.200000003;
  }

  v44 = v44 + v51;
LABEL_58:
  v52 = vabdd_f64(v43, v44);
  if (v52 > 0.200000003)
  {
    v53 = (v52 + -0.200000003) * 0.5;
    v54 = v53;
    if (v43 <= v44)
    {
      v43 = v43 + v54;
      v44 = v44 - v54;
    }

    else
    {
      v43 = v43 - v54;
      v44 = v44 + v54;
    }
  }

  v55 = random();
  if ((v55 & 0x8000000000000001) == 1)
  {
    v56 = v44;
  }

  else
  {
    v56 = v43;
  }

  if ((v55 & 0x8000000000000001) == 1)
  {
    v44 = v43;
  }

  [MPAuthoringUtilities kenBurnsStartZoomLevelFromOptions:a4];
  v58 = v57;
  [MPAuthoringUtilities kenBurnsEndZoomLevelFromOptions:a4];
  if (v58 <= -1.0)
  {
    v58 = v56;
  }

  if (v59 > -1.0)
  {
    v44 = v59;
  }

  v60 = +[MPAnimationPathKeyframed animationPath];
  [v60 createKeyframeWithScalar:v71 * v58 atTime:0.0];
  v61 = 1.0;
  [v60 createKeyframeWithScalar:v71 * v44 atTime:1.0];
  [a3 setAnimationPath:v60 forKey:@"scale"];
  v62 = 1.0;
  if (v49 <= 1.0)
  {
    v62 = v49;
    if (v49 < 0.0)
    {
      v62 = 0.0;
    }
  }

  v63 = v69 + (v49 - v69) * v72;
  if (v48 <= 1.0)
  {
    v61 = v48;
    if (v48 < 0.0)
    {
      v61 = 0.0;
    }
  }

  v64 = v50 + (v48 - v50) * v72;
  v65 = 1.0;
  v66 = 1.0;
  if (v63 <= 1.0)
  {
    v66 = v69 + (v49 - v69) * v72;
    if (v63 < 0.0)
    {
      v66 = 0.0;
    }
  }

  if (v64 <= 1.0)
  {
    v65 = v64;
    if (v64 < 0.0)
    {
      v65 = 0.0;
    }
  }

  v67 = +[MPAnimationPathKeyframed animationPath];
  [v67 createKeyframeWithPoint:v62 atTime:{v61, 0.0}];
  [v67 createKeyframeWithPoint:v66 atTime:{v65, 1.0}];
  [a3 setAnimationPath:v67 forKey:@"center"];
  [a3 removeAnimationPathForKey:@"angle"];
}

- (double)durationOfSlide:(id)a3
{
  v4 = [a3 parentEffect];
  result = -1.0;
  if (v4)
  {
    [objc_msgSend(a3 parentEffect];
  }

  if (result == 0.0)
  {
    return -1.0;
  }

  return result;
}

@end