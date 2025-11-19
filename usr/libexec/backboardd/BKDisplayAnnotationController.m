@interface BKDisplayAnnotationController
+ (id)annotationControllerForDisplay:(id)a3;
+ (void)performBlockForEveryAnnotationController:(id)a3;
- (id)_lock_supernodeForRenderingAtKeyPath:(id)a3;
- (id)allAnnotationsForKeyPath:(id)a3;
- (id)annotationForKeyPath:(id)a3;
- (void)_configureReferenceSpaceLayerTransformWithScale:(double)a3;
- (void)_lock_CATransaction:(id)a3;
- (void)_lock_invalidate;
- (void)_lock_locationDidChanges;
- (void)_lock_removeAnnotation:(id)a3;
- (void)_lock_setupLayerTree;
- (void)_lock_tearDownLayerTree;
- (void)_lock_updateLayerTree;
- (void)invalidate;
- (void)monitor:(id)a3 activeDisplayPropertiesDidChange:(id)a4;
- (void)monitor:(id)a3 displayDidBecomeActive:(id)a4;
- (void)monitor:(id)a3 displayDidBecomeInactive:(id)a4;
- (void)performSynchronized:(id)a3;
- (void)performSynchronizedWithCATransaction:(id)a3;
- (void)removeAnnotationsForKeyPath:(id)a3 afterDelay:(double)a4 queue:(id)a5;
- (void)setAnnotation:(id)a3 forKeyPath:(id)a4;
@end

@implementation BKDisplayAnnotationController

- (void)_configureReferenceSpaceLayerTransformWithScale:(double)a3
{
  v16 = *&CGAffineTransformIdentity.a;
  v17 = *&CGAffineTransformIdentity.c;
  tx = CGAffineTransformIdentity.tx;
  ty = CGAffineTransformIdentity.ty;
  v22 = 0.0;
  v23 = 0.0;
  v21 = 0;
  v7 = [(CADisplay *)self->_display uniqueId];
  sub_100007090(v7, &v23, &v22, 0, &v21, 0);

  if (v21 == 1)
  {
    v8 = -1.57079633;
  }

  else
  {
    if (v21 != 3)
    {
      v11 = v22;
      v12 = v23;
      v10 = v16;
      v9 = v17;
      goto LABEL_7;
    }

    v8 = 1.57079633;
  }

  CGAffineTransformMakeRotation(&t2, v8);
  *&t1.a = v16;
  *&t1.c = v17;
  t1.tx = tx;
  t1.ty = ty;
  CGAffineTransformConcat(&v20, &t1, &t2);
  v9 = *&v20.c;
  v10 = *&v20.a;
  tx = v20.tx;
  ty = v20.ty;
  v12 = v22;
  v11 = v23;
  v22 = v23;
  v23 = v12;
LABEL_7:
  v13 = v12 / a3;
  referenceSpaceLayer = self->_referenceSpaceLayer;
  *&v20.c = vrndaq_f64(v9);
  *&v20.a = vrndaq_f64(v10);
  v20.tx = round(tx);
  v20.ty = round(ty);
  v15 = v11 / a3;
  [(CALayer *)referenceSpaceLayer setAffineTransform:&v20];
  [(CALayer *)self->_referenceSpaceLayer setFrame:0.0, 0.0, v13, v15];
}

- (void)_lock_locationDidChanges
{
  os_unfair_lock_assert_owner(&self->_lock);
  rootNode = self->_rootNode;

  [(BKNamespaceNode *)rootNode enumerateNodesWithOptions:1 usingBlock:&stru_1000FC0F0];
}

- (void)_lock_removeAnnotation:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  [v4 setAnnotationController:0];
  v5 = [v4 renderer];

  [v5 didRemoveAnnotation];
}

- (void)_lock_CATransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  +[CATransaction begin];
  v4[2](v4);

  +[CATransaction flush];

  +[CATransaction commit];
}

- (id)_lock_supernodeForRenderingAtKeyPath:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10006CE80;
  v14 = sub_10006CE90;
  v15 = self->_rootNode;
  rootNode = self->_rootNode;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006CE98;
  v9[3] = &unk_1000FD378;
  v9[4] = &v10;
  v6 = [(BKNamespaceNode *)rootNode enumerateKeyPathNodes:v4 options:1 ifFound:v9 ifMissing:0];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)performSynchronizedWithCATransaction:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006CFD8;
  v6[3] = &unk_1000FC0D0;
  v7 = v4;
  v5 = v4;
  [(BKDisplayAnnotationController *)self _lock_CATransaction:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)performSynchronized:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_tearDownLayerTree
{
  os_unfair_lock_assert_owner(&self->_lock);
  rootLayer = self->_rootLayer;
  if (rootLayer)
  {
    self->_rootLayer = 0;

    referenceSpaceLayer = self->_referenceSpaceLayer;
    self->_referenceSpaceLayer = 0;

    transformLayer = self->_transformLayer;
    self->_transformLayer = 0;

    [(CAContext *)self->_context invalidate];
    context = self->_context;
    self->_context = 0;
  }
}

- (void)_lock_setupLayerTree
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_rootLayer)
  {
    +[CATransaction begin];
    v3 = self->_display;
    *&v43 = 1.0;
    v4 = [(CADisplay *)v3 uniqueId];
    v5 = sub_10000717C(v4);

    if (v5)
    {
      *&buf.a = _NSConcreteStackBlock;
      *&buf.b = 3221225472;
      *&buf.c = sub_100002FE0;
      *&buf.d = &unk_1000FA7F8;
      buf.tx = 0.0;
      buf.ty = 0.0;
      v47 = &v43;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      sub_100002E40(&buf);
      v6 = *&v43;
    }

    else
    {
      _BKSGetExternalDisplayScale();
      v6 = v7;
    }

    [(CADisplay *)self->_display bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_1000525A0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(CADisplay *)self->_display uniqueId];
      v18 = [v17 length];
      v19 = BKSDisplayUUIDMainKey;
      if (v18)
      {
        v19 = v17;
      }

      v20 = v19;

      LODWORD(buf.a) = 134218498;
      *(&buf.a + 4) = self;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v6;
      HIWORD(buf.c) = 2112;
      *&buf.d = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%p     scale (%g)    %@", &buf, 0x20u);
    }

    v21 = sub_1000525A0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CADisplay *)self->_display uniqueId];
      v23 = [v22 length];
      v24 = BKSDisplayUUIDMainKey;
      if (v23)
      {
        v24 = v22;
      }

      v25 = v24;

      LODWORD(buf.a) = 134218754;
      *(&buf.a + 4) = self;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v13;
      HIWORD(buf.c) = 2048;
      buf.d = v15;
      LOWORD(buf.tx) = 2112;
      *(&buf.tx + 2) = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%p      root (%g,%g) %@", &buf, 0x2Au);
    }

    v26 = sub_1000525A0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(CADisplay *)self->_display uniqueId];
      v28 = [v27 length];
      v29 = BKSDisplayUUIDMainKey;
      if (v28)
      {
        v29 = v27;
      }

      v30 = v29;

      LODWORD(buf.a) = 134218754;
      *(&buf.a + 4) = self;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v13 / v6;
      HIWORD(buf.c) = 2048;
      buf.d = v15 / v6;
      LOWORD(buf.tx) = 2112;
      *(&buf.tx + 2) = v30;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%p transform (%g,%g) %@", &buf, 0x2Au);
    }

    v31 = +[CALayer layer];
    rootLayer = self->_rootLayer;
    self->_rootLayer = v31;

    [(CALayer *)self->_rootLayer setName:@"Root"];
    [(CALayer *)self->_rootLayer setRasterizationScale:v6];
    v33 = self->_rootLayer;
    CGAffineTransformMakeScale(&buf, v6, v6);
    [(CALayer *)v33 setAffineTransform:&buf];
    v34 = +[CALayer layer];
    transformLayer = self->_transformLayer;
    self->_transformLayer = v34;

    [(CALayer *)self->_transformLayer setName:@"Transform"];
    [(CALayer *)self->_rootLayer addSublayer:self->_transformLayer];
    v36 = +[CALayer layer];
    referenceSpaceLayer = self->_referenceSpaceLayer;
    self->_referenceSpaceLayer = v36;

    [(CALayer *)self->_referenceSpaceLayer setName:@"ReferenceSpace"];
    [(CALayer *)self->_rootLayer addSublayer:self->_referenceSpaceLayer];
    [(CALayer *)self->_rootLayer setFrame:v9, v11, v13, v15];
    [(CALayer *)self->_transformLayer setFrame:0.0, 0.0, v13 / v6, v15 / v6];
    [(BKDisplayAnnotationController *)self _configureReferenceSpaceLayerTransformWithScale:v6];
    v45[0] = &__kCFBooleanTrue;
    v44[0] = kCAContextDisplayable;
    v44[1] = kCAContextDisplayName;
    v38 = [(CADisplay *)self->_display name];
    v45[1] = v38;
    v45[2] = &__kCFBooleanTrue;
    v44[2] = kCAContextIgnoresHitTest;
    v44[3] = kCAContextSecure;
    v44[4] = kCAContextAllowsOcclusionDetectionOverride;
    v45[3] = &__kCFBooleanTrue;
    v45[4] = &__kCFBooleanTrue;
    v39 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:5];

    v40 = [CAContext remoteContextWithOptions:v39];
    context = self->_context;
    self->_context = v40;

    LODWORD(v42) = 1173555200;
    [(CAContext *)self->_context setLevel:v42];
    [(CAContext *)self->_context setSecure:1];
    [(CAContext *)self->_context setLayer:self->_rootLayer];
    [(CALayer *)self->_rootLayer setDisableUpdateMask:[(CALayer *)self->_rootLayer disableUpdateMask]| 0x20];
    +[CATransaction flush];
    +[CATransaction commit];
    [(BKNamespaceNode *)self->_rootNode enumerateNodesWithOptions:1 usingBlock:&stru_1000FC0A8];
  }
}

- (void)_lock_updateLayerTree
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = sub_1000525A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateLayerTree", v4, 2u);
  }

  +[CATransaction begin];
  [(BKDisplayAnnotationController *)self _lock_tearDownLayerTree];
  [(BKDisplayAnnotationController *)self _lock_setupLayerTree];
  +[CATransaction commit];
}

- (void)monitor:(id)a3 displayDidBecomeInactive:(id)a4
{
  v5 = [a4 displayId];
  if (v5 == [(CADisplay *)self->_display displayId])
  {
    os_unfair_lock_lock(&self->_lock);
    [(BKDisplayAnnotationController *)self _lock_tearDownLayerTree];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)monitor:(id)a3 displayDidBecomeActive:(id)a4
{
  v7 = a4;
  v6 = [v7 displayId];
  if (v6 == [(CADisplay *)self->_display displayId])
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_display, a4);
    [(BKDisplayAnnotationController *)self _lock_setupLayerTree];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)monitor:(id)a3 activeDisplayPropertiesDidChange:(id)a4
{
  v7 = a4;
  v6 = [v7 displayId];
  if (v6 == [(CADisplay *)self->_display displayId])
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_display, a4);
    [(BKDisplayAnnotationController *)self _lock_updateLayerTree];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)removeAnnotationsForKeyPath:(id)a3 afterDelay:(double)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_1000525A0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "remove %{public}@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006DB60;
  v13[3] = &unk_1000FD238;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(BKDisplayAnnotationController *)self performSynchronizedWithCATransaction:v13];
}

- (void)setAnnotation:(id)a3 forKeyPath:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006E164;
  v8[3] = &unk_1000FC068;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(BKDisplayAnnotationController *)self performSynchronizedWithCATransaction:v8];
}

- (id)allAnnotationsForKeyPath:(id)a3
{
  v4 = a3;
  +[NSMutableArray array];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006E3BC;
  v10[3] = &unk_1000FC068;
  v10[4] = self;
  v5 = v11 = v4;
  v12 = v5;
  v6 = v4;
  [(BKDisplayAnnotationController *)self performSynchronized:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

- (id)annotationForKeyPath:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10006CE80;
  v14 = sub_10006CE90;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E5D0;
  v6[3] = &unk_1000FD1C8;
  v9 = &v10;
  v7 = self;
  v3 = a3;
  v8 = v3;
  [(BKDisplayAnnotationController *)v7 performSynchronized:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)_lock_invalidate
{
  displayObserver = self->_displayObserver;
  if (displayObserver)
  {
    [(BSInvalidatable *)displayObserver invalidate];
    v4 = self->_displayObserver;
    self->_displayObserver = 0;

    [(BSInvalidatable *)self->_orientationObserver invalidate];
    orientationObserver = self->_orientationObserver;
    self->_orientationObserver = 0;

    [(BKDisplayAnnotationController *)self _lock_tearDownLayerTree];
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(BKDisplayAnnotationController *)self _lock_invalidate];

  os_unfair_lock_unlock(&self->_lock);
}

+ (void)performBlockForEveryAnnotationController:(id)a3
{
  v3 = a3;
  v6 = sub_10003FD10();
  v4 = v3;
  if (v6)
  {
    os_unfair_lock_assert_not_owner(v6 + 2);
    os_unfair_lock_lock(v6 + 2);
    v5 = [*(v6 + 2) copy];
    os_unfair_lock_unlock(v6 + 2);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003FDA4;
    v7[3] = &unk_1000FAF88;
    v8 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

+ (id)annotationControllerForDisplay:(id)a3
{
  v4 = a3;
  v5 = sub_10003FD10();
  v6 = v4;
  if (v5)
  {
    os_unfair_lock_lock((v5 + 8));
    if (!*(v5 + 16))
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = *(v5 + 16);
      *(v5 + 16) = v7;
    }

    v9 = [v6 uniqueId];
    v10 = [v9 length];
    v11 = BKSDisplayUUIDMainKey;
    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = BKSDisplayUUIDMainKey;
    }

    v13 = v12;

    v14 = [*(v5 + 16) objectForKey:v13];
    if (!v14)
    {
      v14 = [BKDisplayAnnotationController alloc];
      v15 = v6;
      v16 = v5;
      if (v14)
      {
        v41.receiver = v14;
        v41.super_class = BKDisplayAnnotationController;
        v17 = objc_msgSendSuper2(&v41, "init");
        v14 = v17;
        if (v17)
        {
          v17->_lock._os_unfair_lock_opaque = 0;
          objc_storeStrong(&v17->_display, a3);
          objc_storeStrong(&v14->_displayController, v5);
          displayController = v14->_displayController;
          if (displayController)
          {
            displayController = objc_getProperty(displayController, v18, 24, 1);
          }

          v20 = displayController;
          v21 = [v20 addDiffObserver:v14];
          displayObserver = v14->_displayObserver;
          v14->_displayObserver = v21;

          v23 = objc_alloc_init(BKNamespaceNode);
          rootNode = v14->_rootNode;
          v14->_rootNode = v23;

          [(BKNamespaceNode *)v14->_rootNode setName:@"<root>"];
          Property = v14->_displayController;
          v40 = v16;
          v27 = v15;
          if (Property)
          {
            Property = objc_getProperty(Property, v25, 24, 1);
          }

          v28 = Property;
          v29 = [(CADisplay *)v14->_display uniqueId];
          if ([v29 length])
          {
            v30 = v29;
          }

          else
          {
            v30 = v11;
          }

          v31 = v30;

          v32 = [v28 displayUUIDIsActive:v31];
          if (v32)
          {
            os_unfair_lock_lock(&v14->_lock);
            [(BKDisplayAnnotationController *)v14 _lock_setupLayerTree];
            os_unfair_lock_unlock(&v14->_lock);
          }

          v15 = v27;
          v16 = v40;
          if (([(CADisplay *)v14->_display isExternal]& 1) == 0)
          {
            v33 = [(CADisplay *)v14->_display uniqueId];
            v34 = sub_10000717C(v33);

            if (v34)
            {
              v35 = sub_100005110();
              v36 = sub_1000924EC(v35, v14);
              orientationObserver = v14->_orientationObserver;
              v14->_orientationObserver = v36;
            }
          }
        }
      }

      [*(v5 + 16) setObject:v14 forKey:v13];
    }

    os_unfair_lock_unlock((v5 + 8));
    v38 = [[_BKDisplayAnnotationControllerReference alloc] initWithController:v14];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

@end