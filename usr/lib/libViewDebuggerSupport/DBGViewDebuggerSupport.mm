@interface DBGViewDebuggerSupport
+ (BOOL)_layerShouldSupersedeSnapshot:(id)snapshot;
+ (id)_arrayEncodedIndexPath:(id)path;
+ (id)_collectSubviewInfoForView:(id)view encodeLayers:(BOOL)layers;
+ (id)_layerInfo:(id)info view:(id)view;
+ (id)classMap;
+ (id)collectViewInfo:(id)info;
+ (id)fetchViewHierarchy;
+ (id)fetchViewHierarchyWithOptions:(id)options;
+ (id)pathForClass:(Class)class;
+ (void)_populateConstraintInfosArray:(id)array forViewHierarchy:(id)hierarchy;
+ (void)_snapshotView:(id)view andAddDataToDictionary:(id)dictionary;
+ (void)addObjectBasics:(id)basics toDict:(id)dict;
+ (void)addPathForClass:(Class)class;
+ (void)addViewLayerInfo:(id)info toDict:(id)dict;
+ (void)addViewSubclassSpecificInfoForView:(id)view toDict:(id)dict;
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

+ (void)addPathForClass:(Class)class
{
  classMap = [self classMap];
  v6 = NSStringFromClass(class);
  if (![classMap objectForKey:class])
  {
    v7 = [self pathForClass:class];
    if (v7)
    {
      if (v6)
      {

        [classMap setObject:v7 forKey:v6];
      }
    }
  }
}

+ (id)pathForClass:(Class)class
{
  v4 = NSStringFromClass(class);
  v5 = [(objc_class *)class superclass];
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

+ (id)fetchViewHierarchyWithOptions:(id)options
{
  DBGViewDebuggerUseLayersAsSnapshots = 1;
  if ([options objectForKey:@"DBGViewDebuggerUseLayersAsSnapshots"])
  {
    DBGViewDebuggerUseLayersAsSnapshots = [objc_msgSend(options objectForKeyedSubscript:{@"DBGViewDebuggerUseLayersAsSnapshots", "BOOLValue"}];
  }

  DBGViewDebuggerAlwaysEncodeLayers = 0;
  if ([options objectForKey:@"DBGViewDebuggerAlwaysEncodeLayers"])
  {
    DBGViewDebuggerAlwaysEncodeLayers = [objc_msgSend(options objectForKeyedSubscript:{@"DBGViewDebuggerAlwaysEncodeLayers", "BOOLValue"}];
  }

  if ([options objectForKeyedSubscript:@"DBGViewDebuggerEffectViewsToSnapshotAsImage"])
  {
    DBGViewDebuggerEffectViewsToSnapshotAsImage = [options objectForKeyedSubscript:@"DBGViewDebuggerEffectViewsToSnapshotAsImage"];
  }

  if ([options objectForKeyedSubscript:@"DBGViewDebuggerEnableSceneDebugging"])
  {
    DBGViewDebuggerEnableSceneDebugging = [objc_msgSend(options objectForKeyedSubscript:{@"DBGViewDebuggerEnableSceneDebugging", "BOOLValue"}];
  }

  return [self fetchViewHierarchy];
}

+ (id)fetchViewHierarchy
{
  v3 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [self appWindows];
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
        v8 = [self windowContentViewForWindow:v7];
        if (v7 == v8)
        {
          v9 = [self _collectSubviewInfoForView:v8 encodeLayers:1];
        }

        else
        {
          v9 = [self collectViewInfo:v7];
          v36 = [self _collectSubviewInfoForView:v8 encodeLayers:1];
          [v9 setObject:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", &v36, 1), @"subviews"}];
        }

        [v9 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(self, "isHiddenForWindow:", v7)), @"hidden"}];
        v10 = +[NSMutableArray array];
        [self _populateConstraintInfosArray:v10 forViewHierarchy:v8];
        if ([v10 count])
        {
          [v9 setObject:v10 forKey:@"constraints"];
        }

        v11 = [self titleForWindow:v7];
        if ([v11 length])
        {
          [v9 setObject:v11 forKey:@"displayName"];
        }

        [self screenBackingScaleForWindow:v7];
        [v9 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"screenBackingScale"}];
        [v3 addObject:v9];
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v4);
  }

  additionalRootLevelViewsToArchive = [self additionalRootLevelViewsToArchive];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [additionalRootLevelViewsToArchive countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(additionalRootLevelViewsToArchive);
        }

        v16 = *(*(&v24 + 1) + 8 * j);
        if ([self isViewSubclass:v16])
        {
          v17 = [self _collectSubviewInfoForView:v16 encodeLayers:1];
          v18 = +[NSMutableArray array];
          [self _populateConstraintInfosArray:v18 forViewHierarchy:v16];
          if ([v18 count])
          {
            [v17 setObject:v18 forKey:@"constraints"];
          }

          [self screenBackingScaleForView:v16];
          [v17 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"screenBackingScale"}];
          [v3 addObject:v17];
        }
      }

      v13 = [additionalRootLevelViewsToArchive countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v13);
  }

  v19 = +[NSMutableDictionary dictionary];
  [v19 setObject:v3 forKey:@"views"];
  [v19 setObject:objc_msgSend(self forKey:{"classMap"), @"classmap"}];
  v20 = [self primaryWindowFromWindows:obj];
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

+ (id)collectViewInfo:(id)info
{
  v5 = +[NSMutableDictionary dictionary];
  [self addObjectBasics:info toDict:v5];
  [self addFrameBasics:info toDict:v5];
  if ([self isViewSubclass:info])
  {
    [self addViewBasics:info toDict:v5];
    [self addViewLayerInfo:info toDict:v5];
    [self addLayoutInfoForView:info toDict:v5];
    [self _snapshotView:info andAddDataToDictionary:v5];
    [self addViewSubclassSpecificInfoForView:info toDict:v5];
  }

  return v5;
}

+ (void)addObjectBasics:(id)basics toDict:(id)dict
{
  v7 = objc_opt_class();
  [dict setObject:NSStringFromClass(v7) forKey:@"class"];
  [self addPathForClass:v7];
  basics = [NSString stringWithFormat:@"%p", basics];

  [dict setObject:basics forKey:@"address"];
}

+ (void)addViewSubclassSpecificInfoForView:(id)view toDict:(id)dict
{
  if (DBGViewDebuggerEnableSceneDebugging == 1)
  {
    NSClassFromString(&cfstr_Scnview.isa);
    if (objc_opt_isKindOfClass())
    {
      scene = [view scene];
      if (scene)
      {
        v8 = scene;
        v9 = NSClassFromString(&cfstr_Scnkeyedarchiv.isa);
        if (objc_opt_respondsToSelector())
        {
          [dict setObject:-[objc_class archivedDataWithRootObject:options:](v9 forKey:{"archivedDataWithRootObject:options:", v8, &off_57D30), @"encodedDocumentData"}];
          [dict setObject:objc_msgSend(self forKey:{"pathForClass:", objc_opt_class()), @"classPathRepresentedByEncodedDocumentData"}];
        }

        if (objc_opt_respondsToSelector())
        {
          v10 = [view valueForKey:@"pointOfView"];
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
                  v16 = [self _arrayEncodedIndexPath:v14];
                  [dict setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKey:{"dictionaryWithObjects:forKeys:count:", &v16, &v15, 1), @"encodedDocumentInfo"}];
                }
              }
            }
          }
        }
      }
    }
  }
}

+ (id)_arrayEncodedIndexPath:(id)path
{
  v4 = [path length];
  off_3C478();
  v6 = (&v10 - v5);
  [path getIndexes:&v10 - v5 range:{0, v4}];
  for (i = &__NSArray0__struct; v4; --v4)
  {
    v8 = *v6++;
    i = [i arrayByAddingObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v8)}];
  }

  return i;
}

+ (BOOL)_layerShouldSupersedeSnapshot:(id)snapshot
{
  v5 = [self layerForView:?];
  if (v5)
  {
    if ([self snapshotMethodForView:snapshot])
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

+ (void)_snapshotView:(id)view andAddDataToDictionary:(id)dictionary
{
  if (DBGViewDebuggerUseLayersAsSnapshots != 1 || ([self _layerShouldSupersedeSnapshot:view] & 1) == 0)
  {
    v8 = 0;
    v7 = [self snapshotView:view errorString:&v8];
    if (v7)
    {
      [dictionary setObject:v7 forKey:@"imageData"];
    }

    if (v8)
    {
      [dictionary setObject:v8 forKey:@"snapshottingError"];
    }
  }
}

+ (void)_populateConstraintInfosArray:(id)array forViewHierarchy:(id)hierarchy
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [hierarchy constraints];
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
          [v13 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", hierarchy), @"container"}];
          [v13 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", objc_msgSend(v11, "relation")), @"relation"}];
          [v11 constant];
          [v13 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"constant"}];
          [v11 multiplier];
          [v13 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"multiplier"}];
          [v11 priority];
          [v13 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v14), @"priority"}];
          v15 = objc_opt_class();
          [v13 setObject:NSStringFromClass(v15) forKey:@"class"];
          identifier = [v11 identifier];
          if (identifier)
          {
            v17 = identifier;
          }

          else
          {
            v17 = &stru_3C768;
          }

          [v13 setObject:v17 forKey:@"identifier"];
          v8 = DebugHierarchyTargetHub_ptr;
          [array addObject:v13];
          [self addPathForClass:objc_opt_class()];
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
  subviews = [hierarchy subviews];
  v19 = [subviews countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [self _populateConstraintInfosArray:array forViewHierarchy:*(*(&v25 + 1) + 8 * v22)];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [subviews countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }
}

+ (id)_collectSubviewInfoForView:(id)view encodeLayers:(BOOL)layers
{
  layersCopy = layers;
  v7 = [self collectViewInfo:?];
  v8 = +[NSMutableArray array];
  layer = [view layer];
  v10 = layer;
  if (layersCopy && layer && [self _shouldEncodeLayers])
  {
    v11 = CAEncodeLayerTree();
    [v7 setObject:v11 forKeyedSubscript:@"layerRoot"];
    v12 = v11;
  }

  if ([objc_msgSend(self subviewsForView:{view), "count"}])
  {
    v13 = 0;
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = !layersCopy;
    }

    v15 = 1;
    do
    {
      v16 = [objc_msgSend(self subviewsForView:{view), "objectAtIndexedSubscript:", v13}];
      if (v16)
      {
        v17 = v16;
        if (v14)
        {
          layer2 = [v16 layer];
          v19 = 0;
          if (layersCopy && layer2)
          {
            v19 = [objc_msgSend(v10 "sublayers")] ^ 1;
          }
        }

        else
        {
          v19 = 1;
        }

        [v8 addObject:{objc_msgSend(self, "_collectSubviewInfoForView:encodeLayers:", v17, v19)}];
      }

      v13 = v15;
    }

    while ([objc_msgSend(self subviewsForView:{view), "count"}] > v15++);
  }

  [v7 setObject:v8 forKey:@"subviews"];
  return v7;
}

+ (id)_layerInfo:(id)info view:(id)view
{
  if (!info)
  {
    return 0;
  }

  v7 = objc_opt_class();
  [self addPathForClass:v7];
  info = [NSString stringWithFormat:@"%p", info];
  v10[0] = @"layerDelegate";
  v11[0] = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%p", [info delegate]);
  v10[1] = @"viewIdentifier";
  v11[1] = [NSString stringWithFormat:@"%p", view];
  v10[2] = @"class";
  v10[3] = @"address";
  v11[2] = NSStringFromClass(v7);
  v11[3] = info;
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
}

+ (void)addViewLayerInfo:(id)info toDict:(id)dict
{
  v7 = [self layerForView:?];
  if (v7)
  {
    v8 = v7;
    v9 = [self _layerInfo:v7 view:info];
    if (v9)
    {
      [dict setObject:v9 forKey:@"layer"];
    }

    [dict setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(objc_msgSend(v8, "superlayer"), "sublayers"), "indexOfObject:", v8)), @"layerIndex"}];
    v10 = objc_opt_class();
    [dict setObject:NSStringFromClass(v10) forKey:@"layerClass"];
    [dict setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(v8, "masksToBounds")), @"masksToBounds"}];
    [dict setObject:__50__DBGViewDebuggerSupport_addViewLayerInfo_toDict___block_invoke(objc_msgSend(v8 forKey:{"transform"), &v15), @"transform"}];
    [dict setObject:__50__DBGViewDebuggerSupport_addViewLayerInfo_toDict___block_invoke(objc_msgSend(v8 forKey:{"sublayerTransform"), &v15), @"sublayerTransform"}];
    [v8 position];
    v12 = v11;
    v15 = [NSNumber numberWithDouble:?];
    v16 = [NSNumber numberWithDouble:v12];
    [dict setObject:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", &v15, 2), @"position"}];
    [v8 zPosition];
    [dict setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"zPosition"}];
    [v8 anchorPoint];
    v14 = v13;
    v15 = [NSNumber numberWithDouble:?];
    v16 = [NSNumber numberWithDouble:v14];
    [dict setObject:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", &v15, 2), @"anchorPoint"}];
    [v8 anchorPointZ];
    [dict setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"anchorPointZ"}];
    [dict setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(v8, "isDoubleSided")), @"isDoubleSided"}];
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