@interface DBGViewDebuggerSupport
+ (BOOL)_layerShouldSupersedeSnapshot:(id)a3;
+ (id)_arrayEncodedIndexPath:(id)a3;
+ (id)_collectSubviewInfoForView:(id)a3 encodeLayers:(BOOL)a4;
+ (id)_layerInfo:(id)a3 view:(id)a4;
+ (id)classMap;
+ (id)collectViewInfo:(id)a3;
+ (id)fetchViewHierarchy;
+ (id)fetchViewHierarchyWithOptions:(id)a3;
+ (id)pathForClass:(Class)a3;
+ (void)_populateConstraintInfosArray:(id)a3 forViewHierarchy:(id)a4;
+ (void)_snapshotView:(id)a3 andAddDataToDictionary:(id)a4;
+ (void)addObjectBasics:(id)a3 toDict:(id)a4;
+ (void)addPathForClass:(Class)a3;
+ (void)addViewLayerInfo:(id)a3 toDict:(id)a4;
+ (void)addViewSubclassSpecificInfoForView:(id)a3 toDict:(id)a4;
@end

@implementation DBGViewDebuggerSupport

+ (id)classMap
{
  result = classMap_classMap;
  if (!classMap_classMap)
  {
    result = +[NSMutableDictionary dictionary];
    classMap_classMap = result;
  }

  return result;
}

+ (void)addPathForClass:(Class)a3
{
  v5 = [a1 classMap];
  v6 = NSStringFromClass(a3);
  if (![v5 objectForKey:a3])
  {
    v7 = [a1 pathForClass:a3];
    if (v7)
    {
      if (v6)
      {

        [v5 setObject:v7 forKey:v6];
      }
    }
  }
}

+ (id)pathForClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [(objc_class *)a3 superclass];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      if (v6 == objc_opt_class())
      {
        break;
      }

      if (v7 > 0x3E8)
      {
        break;
      }

      v4 = [(NSString *)v4 stringByAppendingPathComponent:NSStringFromClass(v6)];
      ++v7;
      v6 = [(objc_class *)v6 superclass];
    }

    while (v6);
  }

  return v4;
}

+ (id)fetchViewHierarchyWithOptions:(id)a3
{
  DBGViewDebuggerUseLayersAsSnapshots = 1;
  if ([a3 objectForKey:@"DBGViewDebuggerUseLayersAsSnapshots"])
  {
    DBGViewDebuggerUseLayersAsSnapshots = [objc_msgSend(a3 objectForKeyedSubscript:{@"DBGViewDebuggerUseLayersAsSnapshots", "BOOLValue"}];
  }

  DBGViewDebuggerAlwaysEncodeLayers = 0;
  if ([a3 objectForKey:@"DBGViewDebuggerAlwaysEncodeLayers"])
  {
    DBGViewDebuggerAlwaysEncodeLayers = [objc_msgSend(a3 objectForKeyedSubscript:{@"DBGViewDebuggerAlwaysEncodeLayers", "BOOLValue"}];
  }

  if ([a3 objectForKeyedSubscript:@"DBGViewDebuggerEffectViewsToSnapshotAsImage"])
  {
    DBGViewDebuggerEffectViewsToSnapshotAsImage = [a3 objectForKeyedSubscript:@"DBGViewDebuggerEffectViewsToSnapshotAsImage"];
  }

  if ([a3 objectForKeyedSubscript:@"DBGViewDebuggerEnableSceneDebugging"])
  {
    DBGViewDebuggerEnableSceneDebugging = [objc_msgSend(a3 objectForKeyedSubscript:{@"DBGViewDebuggerEnableSceneDebugging", "BOOLValue"}];
  }

  return [a1 fetchViewHierarchy];
}

+ (id)fetchViewHierarchy
{
  v3 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [a1 appWindows];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v4)
  {
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [a1 windowContentViewForWindow:v7];
        if (v7 == v8)
        {
          v9 = [a1 _collectSubviewInfoForView:v8 encodeLayers:1];
        }

        else
        {
          v9 = [a1 collectViewInfo:v7];
          v36 = [a1 _collectSubviewInfoForView:v8 encodeLayers:1];
          [v9 setObject:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", &v36, 1), @"subviews"}];
        }

        [v9 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(a1, "isHiddenForWindow:", v7)), @"hidden"}];
        v10 = +[NSMutableArray array];
        [a1 _populateConstraintInfosArray:v10 forViewHierarchy:v8];
        if ([v10 count])
        {
          [v9 setObject:v10 forKey:@"constraints"];
        }

        v11 = [a1 titleForWindow:v7];
        if ([v11 length])
        {
          [v9 setObject:v11 forKey:@"displayName"];
        }

        [a1 screenBackingScaleForWindow:v7];
        [v9 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"screenBackingScale"}];
        [v3 addObject:v9];
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v4);
  }

  v12 = [a1 additionalRootLevelViewsToArchive];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v24 + 1) + 8 * j);
        if ([a1 isViewSubclass:v16])
        {
          v17 = [a1 _collectSubviewInfoForView:v16 encodeLayers:1];
          v18 = +[NSMutableArray array];
          [a1 _populateConstraintInfosArray:v18 forViewHierarchy:v16];
          if ([v18 count])
          {
            [v17 setObject:v18 forKey:@"constraints"];
          }

          [a1 screenBackingScaleForView:v16];
          [v17 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"screenBackingScale"}];
          [v3 addObject:v17];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v13);
  }

  v19 = +[NSMutableDictionary dictionary];
  [v19 setObject:v3 forKey:@"views"];
  [v19 setObject:objc_msgSend(a1 forKey:{"classMap"), @"classmap"}];
  v20 = [a1 primaryWindowFromWindows:obj];
  if (v20)
  {
    [v19 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%p", v20), @"primaryWindow"}];
  }

  v23 = 0;
  result = [NSPropertyListSerialization dataWithPropertyList:v19 format:200 options:0 error:&v23];
  if (v23)
  {
    v32 = [NSString stringWithFormat:@"Error serializing view hierarchy information: %@", v23];
    v33 = @"exceptions";
    v34 = [NSArray arrayWithObjects:&v32 count:1];
    return [NSPropertyListSerialization dataWithPropertyList:[NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1] format:200 options:0 error:0];
  }

  return result;
}

+ (id)collectViewInfo:(id)a3
{
  v5 = +[NSMutableDictionary dictionary];
  [a1 addObjectBasics:a3 toDict:v5];
  [a1 addFrameBasics:a3 toDict:v5];
  if ([a1 isViewSubclass:a3])
  {
    [a1 addViewBasics:a3 toDict:v5];
    [a1 addViewLayerInfo:a3 toDict:v5];
    [a1 addLayoutInfoForView:a3 toDict:v5];
    [a1 _snapshotView:a3 andAddDataToDictionary:v5];
    [a1 addViewSubclassSpecificInfoForView:a3 toDict:v5];
  }

  return v5;
}

+ (void)addObjectBasics:(id)a3 toDict:(id)a4
{
  v7 = objc_opt_class();
  [a4 setObject:NSStringFromClass(v7) forKey:@"class"];
  [a1 addPathForClass:v7];
  v8 = [NSString stringWithFormat:@"%p", a3];

  [a4 setObject:v8 forKey:@"address"];
}

+ (void)addViewSubclassSpecificInfoForView:(id)a3 toDict:(id)a4
{
  if (DBGViewDebuggerEnableSceneDebugging == 1)
  {
    NSClassFromString(&cfstr_Scnview.isa);
    if (objc_opt_isKindOfClass())
    {
      v7 = [a3 scene];
      if (v7)
      {
        v8 = v7;
        v9 = NSClassFromString(&cfstr_Scnkeyedarchiv.isa);
        if (objc_opt_respondsToSelector())
        {
          [a4 setObject:-[objc_class archivedDataWithRootObject:options:](v9 forKey:{"archivedDataWithRootObject:options:", v8, &off_57D30), @"encodedDocumentData"}];
          [a4 setObject:objc_msgSend(a1 forKey:{"pathForClass:", objc_opt_class()), @"classPathRepresentedByEncodedDocumentData"}];
        }

        if (objc_opt_respondsToSelector())
        {
          v10 = [a3 valueForKey:@"pointOfView"];
          if (v10)
          {
            v11 = v10;
            v12 = NSClassFromString(&cfstr_Scnscene.isa);
            if (v12)
            {
              v13 = v12;
              if (objc_opt_respondsToSelector())
              {
                v14 = [(objc_class *)v13 _indexPathForNode:v11];
                if (v14)
                {
                  v15 = @"pointOfView";
                  v16 = [a1 _arrayEncodedIndexPath:v14];
                  [a4 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKey:{"dictionaryWithObjects:forKeys:count:", &v16, &v15, 1), @"encodedDocumentInfo"}];
                }
              }
            }
          }
        }
      }
    }
  }
}

+ (id)_arrayEncodedIndexPath:(id)a3
{
  v4 = [a3 length];
  off_3C478();
  v6 = (&v10 - v5);
  [a3 getIndexes:&v10 - v5 range:{0, v4}];
  for (i = &__NSArray0__struct; v4; --v4)
  {
    v8 = *v6++;
    i = [i arrayByAddingObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v8)}];
  }

  return i;
}

+ (BOOL)_layerShouldSupersedeSnapshot:(id)a3
{
  v5 = [a1 layerForView:?];
  if (v5)
  {
    if ([a1 snapshotMethodForView:a3])
    {
LABEL_3:
      LOBYTE(v5) = 0;
      return v5;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = DBGViewDebuggerEffectViewsToSnapshotAsImage;
    v7 = [DBGViewDebuggerEffectViewsToSnapshotAsImage countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = objc_opt_class();
        if ([v11 isEqualToString:NSStringFromClass(v12)])
        {
          goto LABEL_3;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          LOBYTE(v5) = 1;
          if (v8)
          {
            goto LABEL_7;
          }

          return v5;
        }
      }
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (void)_snapshotView:(id)a3 andAddDataToDictionary:(id)a4
{
  if (DBGViewDebuggerUseLayersAsSnapshots != 1 || ([a1 _layerShouldSupersedeSnapshot:a3] & 1) == 0)
  {
    v8 = 0;
    v7 = [a1 snapshotView:a3 errorString:&v8];
    if (v7)
    {
      [a4 setObject:v7 forKey:@"imageData"];
    }

    if (v8)
    {
      [a4 setObject:v8 forKey:@"snapshottingError"];
    }
  }
}

+ (void)_populateConstraintInfosArray:(id)a3 forViewHierarchy:(id)a4
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [a4 constraints];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = DebugHierarchyTargetHub_ptr;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        v12 = v8[27];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = +[NSMutableDictionary dictionary];
          [v13 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%p", v11), @"address"}];
          [v13 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%p", objc_msgSend(v11, "firstItem")), @"firstItem"}];
          [v13 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", objc_msgSend(v11, "firstAttribute")), @"firstAttribute"}];
          [v13 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%p", objc_msgSend(v11, "secondItem")), @"secondItem"}];
          [v13 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", objc_msgSend(v11, "secondAttribute")), @"secondAttribute"}];
          [v13 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", a4), @"container"}];
          [v13 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", objc_msgSend(v11, "relation")), @"relation"}];
          [v11 constant];
          [v13 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"constant"}];
          [v11 multiplier];
          [v13 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"multiplier"}];
          [v11 priority];
          [v13 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v14), @"priority"}];
          v15 = objc_opt_class();
          [v13 setObject:NSStringFromClass(v15) forKey:@"class"];
          v16 = [v11 identifier];
          if (v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = &stru_3C768;
          }

          [v13 setObject:v17 forKey:@"identifier"];
          v8 = DebugHierarchyTargetHub_ptr;
          [a3 addObject:v13];
          [a1 addPathForClass:objc_opt_class()];
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [a4 subviews];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [a1 _populateConstraintInfosArray:a3 forViewHierarchy:*(*(&v25 + 1) + 8 * v22)];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }
}

+ (id)_collectSubviewInfoForView:(id)a3 encodeLayers:(BOOL)a4
{
  v4 = a4;
  v7 = [a1 collectViewInfo:?];
  v8 = +[NSMutableArray array];
  v9 = [a3 layer];
  v10 = v9;
  if (v4 && v9 && [a1 _shouldEncodeLayers])
  {
    v11 = CAEncodeLayerTree();
    [v7 setObject:v11 forKeyedSubscript:@"layerRoot"];
    v12 = v11;
  }

  if ([objc_msgSend(a1 subviewsForView:{a3), "count"}])
  {
    v13 = 0;
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = !v4;
    }

    v15 = 1;
    do
    {
      v16 = [objc_msgSend(a1 subviewsForView:{a3), "objectAtIndexedSubscript:", v13}];
      if (v16)
      {
        v17 = v16;
        if (v14)
        {
          v18 = [v16 layer];
          v19 = 0;
          if (v4 && v18)
          {
            v19 = [objc_msgSend(v10 "sublayers")] ^ 1;
          }
        }

        else
        {
          v19 = 1;
        }

        [v8 addObject:{objc_msgSend(a1, "_collectSubviewInfoForView:encodeLayers:", v17, v19)}];
      }

      v13 = v15;
    }

    while ([objc_msgSend(a1 subviewsForView:{a3), "count"}] > v15++);
  }

  [v7 setObject:v8 forKey:@"subviews"];
  return v7;
}

+ (id)_layerInfo:(id)a3 view:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = objc_opt_class();
  [a1 addPathForClass:v7];
  v8 = [NSString stringWithFormat:@"%p", a3];
  v10[0] = @"layerDelegate";
  v11[0] = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%p", [a3 delegate]);
  v10[1] = @"viewIdentifier";
  v11[1] = [NSString stringWithFormat:@"%p", a4];
  v10[2] = @"class";
  v10[3] = @"address";
  v11[2] = NSStringFromClass(v7);
  v11[3] = v8;
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
}

+ (void)addViewLayerInfo:(id)a3 toDict:(id)a4
{
  v7 = [a1 layerForView:?];
  if (v7)
  {
    v8 = v7;
    v9 = [a1 _layerInfo:v7 view:a3];
    if (v9)
    {
      [a4 setObject:v9 forKey:@"layer"];
    }

    [a4 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(objc_msgSend(v8, "superlayer"), "sublayers"), "indexOfObject:", v8)), @"layerIndex"}];
    v10 = objc_opt_class();
    [a4 setObject:NSStringFromClass(v10) forKey:@"layerClass"];
    [a4 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(v8, "masksToBounds")), @"masksToBounds"}];
    [a4 setObject:__50__DBGViewDebuggerSupport_addViewLayerInfo_toDict___block_invoke(objc_msgSend(v8 forKey:{"transform"), &v15), @"transform"}];
    [a4 setObject:__50__DBGViewDebuggerSupport_addViewLayerInfo_toDict___block_invoke(objc_msgSend(v8 forKey:{"sublayerTransform"), &v15), @"sublayerTransform"}];
    [v8 position];
    v12 = v11;
    v15 = [NSNumber numberWithDouble:?];
    v16 = [NSNumber numberWithDouble:v12];
    [a4 setObject:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", &v15, 2), @"position"}];
    [v8 zPosition];
    [a4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"zPosition"}];
    [v8 anchorPoint];
    v14 = v13;
    v15 = [NSNumber numberWithDouble:?];
    v16 = [NSNumber numberWithDouble:v14];
    [a4 setObject:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", &v15, 2), @"anchorPoint"}];
    [v8 anchorPointZ];
    [a4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"anchorPointZ"}];
    [a4 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(v8, "isDoubleSided")), @"isDoubleSided"}];
  }
}

NSArray *__50__DBGViewDebuggerSupport_addViewLayerInfo_toDict___block_invoke(uint64_t a1, double *a2)
{
  v4[0] = [NSNumber numberWithDouble:*a2];
  v4[1] = [NSNumber numberWithDouble:a2[1]];
  v4[2] = [NSNumber numberWithDouble:a2[2]];
  v4[3] = [NSNumber numberWithDouble:a2[3]];
  v4[4] = [NSNumber numberWithDouble:a2[4]];
  v4[5] = [NSNumber numberWithDouble:a2[5]];
  v4[6] = [NSNumber numberWithDouble:a2[6]];
  v4[7] = [NSNumber numberWithDouble:a2[7]];
  v4[8] = [NSNumber numberWithDouble:a2[8]];
  v4[9] = [NSNumber numberWithDouble:a2[9]];
  v4[10] = [NSNumber numberWithDouble:a2[10]];
  v4[11] = [NSNumber numberWithDouble:a2[11]];
  v4[12] = [NSNumber numberWithDouble:a2[12]];
  v4[13] = [NSNumber numberWithDouble:a2[13]];
  v4[14] = [NSNumber numberWithDouble:a2[14]];
  v4[15] = [NSNumber numberWithDouble:a2[15]];
  return [NSArray arrayWithObjects:v4 count:16];
}

void *__52__DBGViewDebuggerSupport_iOS_addFrameBasics_toDict___block_invoke(double a1, double a2, double a3, double a4)
{
  v7 = [NSNumber numberWithDouble:?];
  v14[0] = v7;
  v8 = [NSNumber numberWithDouble:a2];
  v14[1] = v8;
  v9 = [NSNumber numberWithDouble:a3];
  v14[2] = v9;
  v10 = [NSNumber numberWithDouble:a4];
  v14[3] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:4];

  v12 = v11;
  return v11;
}

@end