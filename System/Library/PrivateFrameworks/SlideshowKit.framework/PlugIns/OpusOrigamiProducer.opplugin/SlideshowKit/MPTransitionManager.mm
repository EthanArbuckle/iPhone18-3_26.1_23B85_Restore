@interface MPTransitionManager
+ (id)sharedManager;
+ (void)loadTransitionManagerWithPaths:(id)paths;
+ (void)releaseSharedManager;
- (MPTransitionManager)initWithPaths:(id)paths;
- (double)beatStrengthForTransitionID:(id)d;
- (double)bestBeatTimeForTransitionID:(id)d;
- (double)defaultDurationForTransitionID:(id)d;
- (id)allCategoryIDs;
- (id)attributesForTransitionID:(id)d andPresetID:(id)iD;
- (id)categoryIDsForTransitionID:(id)d;
- (id)constraintsForTransitionPresetsMatchingList:(id)list andCriteria:(id)criteria;
- (id)controlForAttribute:(id)attribute forTransitionID:(id)d;
- (id)localizedCategoryNameFromCategoryID:(id)d;
- (id)localizedNameForTransitionID:(id)d withLanguage:(id)language;
- (id)localizedSettingsUITitleForTitleKey:(id)key inTransition:(id)transition;
- (id)localizedTransitionNameForTransitionID:(id)d;
- (id)localizedTransitionNameForTransitionID:(id)d andPresetID:(id)iD;
- (id)presetsForTransitionID:(id)d;
- (id)randomTransitionPresetFromList:(id)list abidingWithConstraints:(id)constraints;
- (id)settingsUIControlDescriptionsForTransition:(id)transition;
- (id)transitionPresetsMatchingCriteria:(id)criteria;
- (id)transitionsForCategoryID:(id)d;
- (id)versionOfTransitionID:(id)d;
- (void)dealloc;
@end

@implementation MPTransitionManager

+ (id)sharedManager
{
  result = qword_1EF2C8;
  if (!qword_1EF2C8)
  {
    objc_sync_enter(self);
    if (!qword_1EF2C8)
    {
      qword_1EF2C8 = [[MPTransitionManager alloc] initWithPaths:0];
    }

    objc_sync_exit(self);
    return qword_1EF2C8;
  }

  return result;
}

+ (void)releaseSharedManager
{
  if (qword_1EF2C8)
  {
    objc_sync_enter(self);

    qword_1EF2C8 = 0;

    objc_sync_exit(self);
  }
}

- (void)dealloc
{
  self->mTransitionPresets = 0;

  self->mTransitions = 0;
  self->mTransitionCategories = 0;
  v3.receiver = self;
  v3.super_class = MPTransitionManager;
  [(MPTransitionManager *)&v3 dealloc];
}

- (id)allCategoryIDs
{
  v3 = +[NSMutableArray array];
  [v3 addObjectsFromArray:{-[NSMutableDictionary allKeys](self->mTransitionCategories, "allKeys")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->mTransitions;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(MPTransitionManager *)self categoryIDsForTransitionID:*(*(&v20 + 1) + 8 * i)];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v16 + 1) + 8 * j);
              if (([v3 containsObject:v13] & 1) == 0)
              {
                [v3 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)versionOfTransitionID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mTransitions objectForKey:d];

  return [v3 objectForKey:@"version"];
}

- (id)categoryIDsForTransitionID:(id)d
{
  v3 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{d), "objectForKey:", @"categories", "copy"}];

  return v3;
}

- (id)transitionsForCategoryID:(id)d
{
  v5 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mTransitions = self->mTransitions;
  v7 = [(NSMutableDictionary *)mTransitions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(mTransitions);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([-[MPTransitionManager categoryIDsForTransitionID:](self categoryIDsForTransitionID:{v11), "containsObject:", d}] & 1) != 0 || objc_msgSend(d, "isEqualToString:", @"all"))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)mTransitions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)localizedTransitionNameForTransitionID:(id)d
{
  result = [-[NSMutableDictionary objectForKey:](self->mTransitions "objectForKey:{"objectForKey:", @"localizedTransitionName"}")];
  if (!result)
  {
    if ([d hasPrefix:@"MRCIFilterTransition"])
    {

      return [d substringFromIndex:20];
    }

    else
    {
      return d;
    }
  }

  return result;
}

- (id)localizedNameForTransitionID:(id)d withLanguage:(id)language
{
  v5 = +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mTransitions "objectForKey:{"objectForKey:", @"resources", "stringByAppendingPathComponent:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.lproj/LocalizedDescription.plist", language)}")]);
  if (v5)
  {
    v5 = [(NSDictionary *)v5 objectForKey:@"_LOCALIZABLE_"];
  }

  result = [(NSDictionary *)v5 objectForKey:@"localizedTransitionName"];
  if (!result)
  {
    return d;
  }

  return result;
}

- (id)localizedTransitionNameForTransitionID:(id)d andPresetID:(id)iD
{
  result = [-[NSMutableDictionary objectForKey:](self->mTransitions "objectForKey:{"objectForKey:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"localizedPresetID%@", iD)}")];
  if (!result)
  {
    if ([d hasPrefix:@"MRCIFilterTransition"])
    {

      return [d substringFromIndex:20];
    }

    else
    {
      return d;
    }
  }

  return result;
}

- (id)localizedCategoryNameFromCategoryID:(id)d
{
  v5 = [(NSMutableDictionary *)self->mTransitionCategories objectForKey:?];
  if (!v5)
  {
    v7 = [(MPTransitionManager *)self transitionsForCategoryID:d];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v8)
    {
      return d;
    }

    v9 = v8;
    v10 = *v13;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v5 = [-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{*(*(&v12 + 1) + 8 * v11)), "objectForKey:", @"localizedCategoryName"}];
      if (v5)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        return d;
      }
    }
  }

  return v5;
}

- (id)attributesForTransitionID:(id)d andPresetID:(id)iD
{
  if ([d isEqualToString:@"Random"])
  {

    return +[NSDictionary dictionary];
  }

  else
  {
    v8 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{d), "objectForKey:", @"presets", "objectForKey:", iD}];
    if (v8)
    {
      return v8;
    }

    v8 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{d), "objectForKey:", @"presets", "objectForKey:", @"Default"}];
    if (v8)
    {
      return v8;
    }

    v9 = [NSMutableDictionary dictionaryWithDictionary:0];
    v10 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{d), "objectForKey:", @"presets", "mutableCopy"}];
    [v10 setObject:v9 forKey:@"Default"];
    [-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{d), "setObject:forKey:", v10, @"presets"}];

    return v9;
  }
}

- (id)localizedSettingsUITitleForTitleKey:(id)key inTransition:(id)transition
{
  result = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{transition), "objectForKey:", @"localizedSettingsUI", "objectForKey:", key}];
  if (!result)
  {
    return key;
  }

  return result;
}

- (id)settingsUIControlDescriptionsForTransition:(id)transition
{
  v3 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{transition), "objectForKey:", @"settingsUI", "copy"}];

  return v3;
}

- (id)controlForAttribute:(id)attribute forTransitionID:(id)d
{
  v5 = [(MPTransitionManager *)self settingsUIControlDescriptionsForTransition:d];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([objc_msgSend(v10 objectForKey:{kMPTransitionUIControlAttributeKey[0]), "isEqualToString:", attribute}])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (double)defaultDurationForTransitionID:(id)d
{
  if ([d isEqualToString:@"Random"])
  {
    return 1.0;
  }

  v5 = [-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{d), "objectForKey:", @"duration"}];
  if (!v5)
  {
    return 1.0;
  }

  [v5 doubleValue];
  return result;
}

- (id)presetsForTransitionID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{d), "objectForKey:", @"presets"}];

  return [v3 allKeys];
}

+ (void)loadTransitionManagerWithPaths:(id)paths
{
  if (qword_1EF2C8)
  {

    qword_1EF2C8 = 0;
  }

  qword_1EF2C8 = [[MPTransitionManager alloc] initWithPaths:paths];
}

- (id)constraintsForTransitionPresetsMatchingList:(id)list andCriteria:(id)criteria
{
  listCopy = list;
  if (!list)
  {
    listCopy = [(NSMutableDictionary *)self->mTransitions allKeys];
  }

  if (![listCopy count])
  {
    return 0;
  }

  v6 = objc_alloc_init(NSMutableSet);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = [listCopy countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    obj = listCopy;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        if ([v11 rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{v11), "objectForKey:", @"presets", "allKeys"}];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v48;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v48 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [v6 addObject:{objc_msgSend(v11, "stringByAppendingPathComponent:", *(*(&v47 + 1) + 8 * j))}];
              }

              v14 = [v12 countByEnumeratingWithState:&v47 objects:v57 count:16];
            }

            while (v14);
          }
        }

        else
        {
          [v6 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v8);
  }

  v32 = +[NSMutableDictionary dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v34 = [v6 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v34)
  {
    v33 = *v44;
    do
    {
      for (k = 0; k != v34; k = k + 1)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(v6);
        }

        v18 = *(*(&v43 + 1) + 8 * k);
        stringByDeletingLastPathComponent = [v18 stringByDeletingLastPathComponent];
        lastPathComponent = [v18 lastPathComponent];
        v21 = [(NSMutableDictionary *)self->mTransitions objectForKey:stringByDeletingLastPathComponent];
        v22 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{stringByDeletingLastPathComponent), "objectForKey:", @"presets", "objectForKey:", lastPathComponent}];
        obja = v21;
        v23 = [v21 objectForKey:@"tags"];
        v36 = v22;
        v24 = [v22 objectForKey:@"tags"];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v25 = [criteria countByEnumeratingWithState:&v39 objects:v55 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v40;
LABEL_28:
          v28 = 0;
          while (1)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(criteria);
            }

            v29 = *(*(&v39 + 1) + 8 * v28);
            if (([v24 containsObject:v29] & 1) == 0 && !objc_msgSend(v23, "containsObject:", v29))
            {
              break;
            }

            if (v26 == ++v28)
            {
              v26 = [criteria countByEnumeratingWithState:&v39 objects:v55 count:16];
              if (v26)
              {
                goto LABEL_28;
              }

              goto LABEL_37;
            }
          }

          if (v29)
          {
            continue;
          }
        }

LABEL_37:
        v30 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [obja objectForKey:@"constraints"]);
        -[NSMutableDictionary addEntriesFromDictionary:](v30, "addEntriesFromDictionary:", [v36 objectForKey:@"constraints"]);
        [v32 setObject:v30 forKey:v18];
      }

      v34 = [v6 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v34);
  }

  return v32;
}

- (id)randomTransitionPresetFromList:(id)list abidingWithConstraints:(id)constraints
{
  if (constraints)
  {
    allKeys = +[NSMutableArray array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = [list countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v20 = allKeys;
      v21 = *v28;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(list);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v9 = [list objectForKey:v8];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v10 = [constraints countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
LABEL_9:
            v13 = 0;
            while (1)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(constraints);
              }

              v14 = *(*(&v23 + 1) + 8 * v13);
              if ([v9 objectForKey:v14])
              {
                [objc_msgSend(constraints objectForKey:{v14), "floatValue"}];
                v16 = v15;
                v17 = NSRangeFromString([v9 objectForKey:v14]);
                if (v16 < v17.location || v16 - v17.location >= v17.length)
                {
                  break;
                }
              }

              if (v11 == ++v13)
              {
                v11 = [constraints countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v11)
                {
                  goto LABEL_9;
                }

                goto LABEL_21;
              }
            }

            if (v14)
            {
              continue;
            }
          }

LABEL_21:
          [v20 addObject:v8];
        }

        v22 = [list countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
      allKeys = v20;
    }
  }

  else
  {
    allKeys = [list allKeys];
  }

  result = [allKeys count];
  if (result)
  {
    return [allKeys objectAtIndex:rand() % result];
  }

  return result;
}

- (id)transitionPresetsMatchingCriteria:(id)criteria
{
  v28 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  obj = self->mTransitions;
  v26 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v26)
  {
    v25 = *v42;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v5;
        v29 = *(*(&v41 + 1) + 8 * v5);
        if (([v29 isEqualToString:@"Default"] & 1) == 0)
        {
          v6 = [(NSMutableDictionary *)selfCopy->mTransitions objectForKey:v29];
          v7 = [v6 objectForKey:@"presets"];
          if (!v7)
          {
            v7 = +[NSDictionary dictionaryWithObject:forKey:](NSDictionary, "dictionaryWithObject:forKey:", +[NSDictionary dictionary], @"Default");
          }

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v32 = [(NSDictionary *)v7 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v32)
          {
            v30 = *v38;
            v31 = v7;
            do
            {
              for (i = 0; i != v32; i = i + 1)
              {
                if (*v38 != v30)
                {
                  objc_enumerationMutation(v7);
                }

                v9 = *(*(&v37 + 1) + 8 * i);
                v10 = [(NSDictionary *)v7 objectForKey:v9];
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v11 = [criteria countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v11)
                {
                  v12 = v11;
                  v13 = *v34;
LABEL_16:
                  v14 = 0;
                  while (1)
                  {
                    if (*v34 != v13)
                    {
                      objc_enumerationMutation(criteria);
                    }

                    v15 = *(*(&v33 + 1) + 8 * v14);
                    if ([v10 objectForKey:v15])
                    {
                      [objc_msgSend(criteria objectForKey:{v15), "floatValue"}];
                      v17 = v16;
                      v18 = v10;
                    }

                    else
                    {
                      if (![v6 objectForKey:v15])
                      {
                        goto LABEL_27;
                      }

                      [objc_msgSend(criteria objectForKey:{v15), "floatValue"}];
                      v17 = v19;
                      v18 = v6;
                    }

                    v20 = NSRangeFromString([v18 objectForKey:v15]);
                    if (v17 < v20.location || v17 - v20.location >= v20.length)
                    {
                      if (v15)
                      {
                        goto LABEL_32;
                      }

                      break;
                    }

LABEL_27:
                    if (v12 == ++v14)
                    {
                      v12 = [criteria countByEnumeratingWithState:&v33 objects:v45 count:16];
                      if (v12)
                      {
                        goto LABEL_16;
                      }

                      break;
                    }
                  }
                }

                [v28 addObject:{objc_msgSend(v29, "stringByAppendingPathComponent:", v9)}];
LABEL_32:
                v7 = v31;
              }

              v32 = [(NSDictionary *)v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v32);
          }
        }

        v5 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v26);
  }

  return v28;
}

- (double)beatStrengthForTransitionID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{d), "objectForKey:", @"beatStrength"}];
  if (!v3)
  {
    return 0.375;
  }

  [v3 floatValue];
  return v4;
}

- (double)bestBeatTimeForTransitionID:(id)d
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mTransitions objectForKey:{d), "objectForKey:", @"bestBeatTime"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

- (MPTransitionManager)initWithPaths:(id)paths
{
  v79.receiver = self;
  v79.super_class = MPTransitionManager;
  v4 = [(MPTransitionManager *)&v79 init];
  if (v4)
  {
    v4->mTransitions = objc_alloc_init(NSMutableDictionary);
    v4->mTransitionCategories = objc_alloc_init(NSMutableDictionary);
    v5 = +[NSMutableArray array];
    v6 = v5;
    if (paths)
    {
      [v5 addObjectsFromArray:paths];
    }

    else
    {
      [v5 addObject:{-[NSString stringByAppendingPathComponent:](-[NSBundle resourcePath](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "resourcePath"), "stringByAppendingPathComponent:", @"Content"}];
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v6;
    v47 = [v6 countByEnumeratingWithState:&v75 objects:v85 count:16];
    if (v47)
    {
      v46 = *v76;
      do
      {
        v7 = 0;
        do
        {
          if (*v76 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v7;
          v53 = *(*(&v75 + 1) + 8 * v7);
          -[NSMutableDictionary addEntriesFromDictionary:](v4->mTransitionCategories, "addEntriesFromDictionary:", +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [v53 stringByAppendingPathComponent:@"LocalizedTransitionCategories.plist"]));
          v8 = [NSArray arrayWithObjects:@"TransitionDescriptions.plist", @"TransitionDescriptionsSynergy.plist", 0];
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v50 = v8;
          v9 = [(NSArray *)v8 countByEnumeratingWithState:&v71 objects:v84 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v72;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v72 != v11)
                {
                  objc_enumerationMutation(v50);
                }

                v13 = +[NSData dataWithContentsOfFile:](NSData, "dataWithContentsOfFile:", [v53 stringByAppendingPathComponent:*(*(&v71 + 1) + 8 * i)]);
                if (v13)
                {
                  v14 = [NSPropertyListSerialization propertyListWithData:v13 options:2 format:0 error:0];
                  if (v14)
                  {
                    v15 = v14;
                    v69 = 0u;
                    v70 = 0u;
                    v67 = 0u;
                    v68 = 0u;
                    v16 = [v14 countByEnumeratingWithState:&v67 objects:v83 count:16];
                    if (v16)
                    {
                      v17 = v16;
                      v18 = *v68;
                      do
                      {
                        for (j = 0; j != v17; j = j + 1)
                        {
                          if (*v68 != v18)
                          {
                            objc_enumerationMutation(v15);
                          }

                          -[NSMutableDictionary setObject:forKey:](v4->mTransitions, "setObject:forKey:", [objc_msgSend(v15 objectForKey:{*(*(&v67 + 1) + 8 * j)), "mutableCopy"}], *(*(&v67 + 1) + 8 * j));
                        }

                        v17 = [v15 countByEnumeratingWithState:&v67 objects:v83 count:16];
                      }

                      while (v17);
                    }
                  }
                }
              }

              v10 = [(NSArray *)v50 countByEnumeratingWithState:&v71 objects:v84 count:16];
            }

            while (v10);
          }

          v20 = -[NSFileManager contentsOfDirectoryAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "contentsOfDirectoryAtPath:error:", [v53 stringByAppendingPathComponent:@"Transitions/"], 0);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v21 = [(NSArray *)v20 countByEnumeratingWithState:&v63 objects:v82 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v64;
            v51 = v20;
            do
            {
              for (k = 0; k != v22; k = k + 1)
              {
                if (*v64 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [v53 stringByAppendingFormat:@"/Transitions/%@", *(*(&v63 + 1) + 8 * k)];
                if ([objc_msgSend(v25 "pathExtension")])
                {
                  v26 = [[NSBundle alloc] initWithPath:v25];
                  if (v26)
                  {
                    v27 = v26;
                    v28 = [objc_msgSend(v25 "lastPathComponent")];
                    v29 = [v27 pathForResource:@"TransitionDescription" ofType:@"plist"];
                    v30 = [v27 pathForResource:@"LocalizedDescription" ofType:@"plist"];
                    if (v29)
                    {
                      v31 = v30;
                      v32 = [NSData dataWithContentsOfFile:v29];
                      if (v32)
                      {
                        v33 = [NSPropertyListSerialization propertyListWithData:v32 options:2 format:0 error:0];
                        if (v33)
                        {
                          v34 = v33;
                          if (v31)
                          {
                            v35 = [NSDictionary dictionaryWithContentsOfFile:v31];
                            if (v35)
                            {
                              [v34 addEntriesFromDictionary:{-[NSDictionary objectForKey:](v35, "objectForKey:", @"_LOCALIZABLE_"}];
                            }
                          }

                          [v34 setObject:objc_msgSend(objc_msgSend(v27 forKey:{"infoDictionary"), "objectForKey:", @"CFBundleVersion", @"version"}];
                          [v34 setObject:objc_msgSend(v25 forKey:{"stringByAppendingPathComponent:", @"Contents/Resources/", @"resources"}];
                          [v34 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@/Contents/Resources/%@", v25, @"Icon.tiff", @"thumbnail"}];
                          [v34 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@/Contents/Resources/%@", v25, objc_msgSend(v34, "objectForKey:", @"patchName", @"patchPath"}];
                          [(NSMutableDictionary *)v4->mTransitions setObject:v34 forKey:v28];
                          v20 = v51;
                        }
                      }
                    }
                  }
                }
              }

              v22 = [(NSArray *)v20 countByEnumeratingWithState:&v63 objects:v82 count:16];
            }

            while (v22);
          }

          v7 = v48 + 1;
        }

        while (v48 + 1 != v47);
        v47 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
      }

      while (v47);
    }

    v4->mTransitionPresets = objc_alloc_init(NSMutableDictionary);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    mTransitions = v4->mTransitions;
    v54 = [(NSMutableDictionary *)mTransitions countByEnumeratingWithState:&v59 objects:v81 count:16];
    if (v54)
    {
      v52 = *v60;
      do
      {
        for (m = 0; m != v54; m = m + 1)
        {
          if (*v60 != v52)
          {
            objc_enumerationMutation(mTransitions);
          }

          v37 = *(*(&v59 + 1) + 8 * m);
          v38 = [-[NSMutableDictionary objectForKey:](v4->mTransitions objectForKey:{v37), "objectForKey:", @"presets"}];
          if (v38)
          {
            v39 = v38;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v40 = [v38 countByEnumeratingWithState:&v55 objects:v80 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v56;
              do
              {
                for (n = 0; n != v41; n = n + 1)
                {
                  if (*v56 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  -[NSMutableDictionary setObject:forKey:](v4->mTransitionPresets, "setObject:forKey:", [v39 objectForKey:*(*(&v55 + 1) + 8 * n)], objc_msgSend(v37, "stringByAppendingPathComponent:", *(*(&v55 + 1) + 8 * n)));
                }

                v41 = [v39 countByEnumeratingWithState:&v55 objects:v80 count:16];
              }

              while (v41);
            }
          }

          else
          {
            -[NSMutableDictionary setObject:forKey:](v4->mTransitionPresets, "setObject:forKey:", +[NSDictionary dictionary](NSDictionary, "dictionary"), [v37 stringByAppendingPathComponent:@"Default"]);
          }
        }

        v54 = [(NSMutableDictionary *)mTransitions countByEnumeratingWithState:&v59 objects:v81 count:16];
      }

      while (v54);
    }
  }

  return v4;
}

@end