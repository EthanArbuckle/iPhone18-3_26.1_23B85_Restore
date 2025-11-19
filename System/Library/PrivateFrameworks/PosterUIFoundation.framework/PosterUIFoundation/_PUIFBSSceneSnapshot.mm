@interface _PUIFBSSceneSnapshot
- (BOOL)hasProtectedContent;
- (CGAffineTransform)_baseTransformForSnapshotContext:(SEL)a3 rootContext:(id)a4;
- (_PUIFBSSceneSnapshot)init;
- (_PUIFBSSceneSnapshot)initWithScene:(id)a3 snapshotContext:(id)a4 layers:(id)a5;
- (id)_collectLayersWithSnapshotContext:(id)a3 rootContext:(id)a4;
@end

@implementation _PUIFBSSceneSnapshot

- (_PUIFBSSceneSnapshot)initWithScene:(id)a3 snapshotContext:(id)a4 layers:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  BSDispatchQueueAssertMain();
  v33.receiver = self;
  v33.super_class = _PUIFBSSceneSnapshot;
  v12 = [(_PUIFBSSceneSnapshot *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scene, a3);
    objc_storeStrong(&v13->_context, a4);
    v14 = [v11 copy];
    layers = v13->_layers;
    v13->_layers = v14;

    v16 = [(_PUIFBSSceneSnapshot *)v13 _collectLayersWithSnapshotContext:v10 rootContext:v10];
    layersToSnapshot = v13->_layersToSnapshot;
    v13->_layersToSnapshot = v16;

    v18 = objc_alloc(MEMORY[0x1E699FD08]);
    v19 = [v9 settings];
    v20 = [v19 displayConfiguration];
    v21 = [v18 initWithDisplayConfiguration:v20 layers:v13->_layersToSnapshot];

    [v21 setOpaque:{objc_msgSend(v10, "isOpaque")}];
    [v10 scale];
    [v21 setScale:?];
    v22 = [v10 clientExtendedData];
    [v21 setAllowsProtectedContent:{objc_msgSend(v22, "BOOLForSetting:", 281330800)}];

    [v10 frame];
    v24 = v23;
    v26 = v25;
    if (![v10 orientation])
    {
      v27 = [v10 settings];
      [v27 interfaceOrientation];
      IsLandscape = BSInterfaceOrientationIsLandscape();

      if (IsLandscape)
      {
        v29 = v24;
      }

      else
      {
        v29 = v26;
      }

      if (IsLandscape)
      {
        v24 = v26;
      }

      v26 = v29;
    }

    [v21 setSnapshotSize:{v24, v26}];
    v30 = [objc_alloc(MEMORY[0x1E699FD00]) initWithSnapshotContext:v21];
    snapshot = v13->_snapshot;
    v13->_snapshot = v30;
  }

  return v13;
}

- (_PUIFBSSceneSnapshot)init
{
  [(_PUIFBSSceneSnapshot *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)hasProtectedContent
{
  v2 = [(_PUIFBSSceneSnapshot *)self fallbackIOSurface];
  v3 = v2 != 0;

  return v3;
}

- (id)_collectLayersWithSnapshotContext:(id)a3 rootContext:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:self->_layers];
  v9 = [v6 layersToExclude];
  [v8 minusSet:v9];

  v10 = [MEMORY[0x1E695DFA0] orderedSet];
  memset(&v32, 0, sizeof(v32));
  [(_PUIFBSSceneSnapshot *)self _baseTransformForSnapshotContext:v6 rootContext:v7];
  memset(&v31, 0, sizeof(v31));
  v21 = v32;
  CATransform3DMakeAffineTransform(&v31, &v21);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v27 + 1) + 8 * i) contextID];
        if (v16)
        {
          v17 = v16;
          v18 = objc_alloc(MEMORY[0x1E699FD10]);
          v23 = *&v31.m31;
          v24 = *&v31.m33;
          v25 = *&v31.m41;
          v26 = *&v31.m43;
          *&v21.a = *&v31.m11;
          *&v21.c = *&v31.m13;
          *&v21.tx = *&v31.m21;
          v22 = *&v31.m23;
          v19 = [v18 initWithContextID:v17 baseTransform:&v21];
          if (v19)
          {
            [v10 addObject:v19];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v13);
  }

  return v10;
}

- (CGAffineTransform)_baseTransformForSnapshotContext:(SEL)a3 rootContext:(id)a4
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695EFD0];
  v46 = *(MEMORY[0x1E695EFD0] + 16);
  v47 = *MEMORY[0x1E695EFD0];
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v46;
  v45 = *(v10 + 32);
  *&retstr->tx = v45;
  v11 = [v8 settings];
  v12 = [v11 interfaceOrientation];

  if (BSInterfaceOrientationIsValid())
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v9 settings];
  v15 = [v14 interfaceOrientation];

  IsValid = BSInterfaceOrientationIsValid();
  v17 = [(FBSScene *)self->_scene settings];
  v18 = [v17 displayConfiguration];
  [v18 bounds];

  [v9 frame];
  v20 = v19;
  v22 = v21;
  if ([v9 orientation])
  {
    v23 = 1;
  }

  else
  {
    if (IsValid)
    {
      v23 = v15;
    }

    else
    {
      v23 = 1;
    }

    IsLandscape = BSInterfaceOrientationIsLandscape();
    if (IsLandscape)
    {
      v25 = v20;
    }

    else
    {
      v25 = v22;
    }

    if (IsLandscape)
    {
      v20 = v22;
    }

    v22 = v25;
  }

  if (v13 != v23)
  {
    v26 = [v8 settings];
    [v26 frame];

    if (v13 != 1)
    {
      BSConvertRectFromOrientationToOrientation();
    }

    BSRectGetCenter();
    memset(&v52, 0, sizeof(v52));
    CGAffineTransformMakeTranslation(&v52, -v27, -v28);
    *&t1.a = v47;
    *&t1.c = v46;
    *&t1.tx = v45;
    t2 = v52;
    CGAffineTransformConcat(retstr, &t1, &t2);
    if (v13 != 1)
    {
      if (v13 == 3)
      {
        v29 = 1.57079633;
      }

      else if (v13 == 4)
      {
        v29 = -1.57079633;
      }

      else
      {
        v29 = 3.14159265;
        if (v13 != 2)
        {
          v29 = 0.0;
        }
      }

      memset(&t1, 0, sizeof(t1));
      CGAffineTransformMakeRotation(&t2, v29);
      BSIntegralTransform();
      v30 = *&retstr->c;
      *&v49.a = *&retstr->a;
      *&v49.c = v30;
      *&v49.tx = *&retstr->tx;
      v48 = t1;
      CGAffineTransformConcat(&t2, &v49, &v48);
      v31 = *&t2.c;
      *&retstr->a = *&t2.a;
      *&retstr->c = v31;
      *&retstr->tx = *&t2.tx;
    }

    if (v23 != 1)
    {
      if (v23 == 3)
      {
        v32 = 1.57079633;
      }

      else if (v23 == 4)
      {
        v32 = -1.57079633;
      }

      else
      {
        v32 = 3.14159265;
        if (v23 != 2)
        {
          v32 = 0.0;
        }
      }

      memset(&t1, 0, sizeof(t1));
      CGAffineTransformMakeRotation(&t2, -v32);
      BSIntegralTransform();
      v33 = *&retstr->c;
      *&v49.a = *&retstr->a;
      *&v49.c = v33;
      *&v49.tx = *&retstr->tx;
      v48 = t1;
      CGAffineTransformConcat(&t2, &v49, &v48);
      v34 = *&t2.c;
      *&retstr->a = *&t2.a;
      *&retstr->c = v34;
      *&retstr->tx = *&t2.tx;
      BSConvertRectFromOrientationToOrientation();
    }

    BSRectGetCenter();
    memset(&t1, 0, sizeof(t1));
    CGAffineTransformMakeTranslation(&t1, v35, v36);
    v37 = *&retstr->c;
    *&v49.a = *&retstr->a;
    *&v49.c = v37;
    *&v49.tx = *&retstr->tx;
    v48 = t1;
    CGAffineTransformConcat(&t2, &v49, &v48);
    v38 = *&t2.c;
    *&retstr->a = *&t2.a;
    *&retstr->c = v38;
    *&retstr->tx = *&t2.tx;
  }

  memset(&v52, 0, sizeof(v52));
  CGAffineTransformMakeTranslation(&v52, -v20, -v22);
  v39 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v39;
  *&t2.tx = *&retstr->tx;
  v49 = v52;
  CGAffineTransformConcat(&t1, &t2, &v49);
  v40 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v40;
  *&retstr->tx = *&t1.tx;
  [v9 scale];
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformMakeScale(&t1, v41, v41);
  v42 = *&retstr->c;
  *&v49.a = *&retstr->a;
  *&v49.c = v42;
  *&v49.tx = *&retstr->tx;
  v48 = t1;
  CGAffineTransformConcat(&t2, &v49, &v48);
  v43 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v43;
  *&retstr->tx = *&t2.tx;

  return result;
}

@end