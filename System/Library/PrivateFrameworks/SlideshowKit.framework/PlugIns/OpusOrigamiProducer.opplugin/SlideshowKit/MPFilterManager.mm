@interface MPFilterManager
+ (id)sharedManager;
+ (void)loadFilterManagerWithPaths:(id)a3;
+ (void)releaseSharedManager;
- (MPFilterManager)initWithPaths:(id)a3;
- (id)animationsForFilterID:(id)a3 andPresetID:(id)a4;
- (id)attributesForFilterID:(id)a3 andPresetID:(id)a4;
- (id)constraintsForFilterPresetsMatchingList:(id)a3 andCriteria:(id)a4;
- (id)filterPresetsMatchingCriteria:(id)a3;
- (id)presetIDsForFilterID:(id)a3;
- (id)randomFilter:(BOOL)a3;
- (id)randomFilterPresetFromList:(id)a3 abidingWithConstraints:(id)a4;
- (id)versionOfFilterID:(id)a3;
- (void)dealloc;
@end

@implementation MPFilterManager

+ (id)sharedManager
{
  result = qword_1EF298;
  if (!qword_1EF298)
  {
    objc_sync_enter(a1);
    if (!qword_1EF298)
    {
      qword_1EF298 = [[MPFilterManager alloc] initWithPaths:0];
    }

    objc_sync_exit(a1);
    return qword_1EF298;
  }

  return result;
}

+ (void)releaseSharedManager
{
  if (qword_1EF298)
  {
    objc_sync_enter(a1);

    qword_1EF298 = 0;

    objc_sync_exit(a1);
  }
}

- (void)dealloc
{
  self->mFilterPresets = 0;

  self->mFilters = 0;
  self->mFilterCategories = 0;
  v3.receiver = self;
  v3.super_class = MPFilterManager;
  [(MPFilterManager *)&v3 dealloc];
}

- (id)versionOfFilterID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mFilters objectForKey:a3];

  return [v3 objectForKey:@"version"];
}

- (id)presetIDsForFilterID:(id)a3
{
  v3 = [-[NSMutableDictionary objectForKey:](self->mFilters objectForKey:{a3), "objectForKey:", @"presets"}];

  return [v3 allKeys];
}

- (id)attributesForFilterID:(id)a3 andPresetID:(id)a4
{
  v6 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mFilters "objectForKey:{"objectForKey:", @"presets", "objectForKey:", a4}")];
  if (!v6)
  {
    v6 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mFilters objectForKey:{a3), "objectForKey:", @"presets", "objectForKey:", @"Default"}];
  }

  v7 = [objc_msgSend(v6 objectForKey:{@"attributes", "copy"}];

  return v7;
}

- (id)animationsForFilterID:(id)a3 andPresetID:(id)a4
{
  v6 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mFilters "objectForKey:{"objectForKey:", @"presets", "objectForKey:", a4}")];
  if (!v6)
  {
    v6 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mFilters objectForKey:{a3), "objectForKey:", @"presets", "objectForKey:", @"Default"}];
  }

  v7 = [v6 objectForKey:@"animations"];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (![v7 count])
  {
    return 0;
  }

  v9 = [v8 copy];

  return v9;
}

- (id)constraintsForFilterPresetsMatchingList:(id)a3 andCriteria:(id)a4
{
  v32 = +[NSMutableDictionary dictionary];
  if (!a3)
  {
    a3 = [(NSMutableDictionary *)self->mFilters allKeys];
  }

  if (![a3 count])
  {
    return 0;
  }

  v6 = objc_alloc_init(NSMutableSet);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v53;
    obj = a3;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        if ([v11 rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mFilters objectForKey:{v11), "objectForKey:", @"presets", "allKeys"}];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v48 objects:v58 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v49;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v49 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [v6 addObject:{objc_msgSend(v11, "stringByAppendingPathComponent:", *(*(&v48 + 1) + 8 * j))}];
              }

              v14 = [v12 countByEnumeratingWithState:&v48 objects:v58 count:16];
            }

            while (v14);
          }
        }

        else
        {
          [v6 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = [v6 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v35)
  {
    v34 = *v45;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v6);
        }

        v18 = *(*(&v44 + 1) + 8 * k);
        v19 = [v18 stringByDeletingLastPathComponent];
        v20 = [v18 lastPathComponent];
        v21 = [(NSMutableDictionary *)self->mFilters objectForKey:v19];
        v22 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mFilters objectForKey:{v19), "objectForKey:", @"presets", "objectForKey:", v20}];
        obja = v21;
        v23 = [v21 objectForKey:@"tags"];
        v37 = v22;
        v24 = [v22 objectForKey:@"tags"];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v25 = [a4 countByEnumeratingWithState:&v40 objects:v56 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v41;
LABEL_28:
          v28 = 0;
          while (1)
          {
            if (*v41 != v27)
            {
              objc_enumerationMutation(a4);
            }

            v29 = *(*(&v40 + 1) + 8 * v28);
            if (([v24 containsObject:v29] & 1) == 0 && !objc_msgSend(v23, "containsObject:", v29))
            {
              break;
            }

            if (v26 == ++v28)
            {
              v26 = [a4 countByEnumeratingWithState:&v40 objects:v56 count:16];
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
        -[NSMutableDictionary addEntriesFromDictionary:](v30, "addEntriesFromDictionary:", [v37 objectForKey:@"constraints"]);
        [v33 setObject:v30 forKey:v18];
      }

      v35 = [v6 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v35);
  }

  return v33;
}

- (id)randomFilterPresetFromList:(id)a3 abidingWithConstraints:(id)a4
{
  if (a4)
  {
    v6 = +[NSMutableArray array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = [a3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v20 = v6;
      v21 = *v28;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(a3);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v9 = [a3 objectForKey:v8];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v10 = [a4 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(a4);
              }

              v14 = *(*(&v23 + 1) + 8 * v13);
              if ([v9 objectForKey:v14])
              {
                [objc_msgSend(a4 objectForKey:{v14), "floatValue"}];
                v16 = v15;
                v17 = NSRangeFromString([v9 objectForKey:v14]);
                if (v16 < v17.location || v16 - v17.location >= v17.length)
                {
                  break;
                }
              }

              if (v11 == ++v13)
              {
                v11 = [a4 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

        v22 = [a3 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
      v6 = v20;
    }
  }

  else
  {
    v6 = [a3 allKeys];
  }

  result = [v6 count];
  if (result)
  {
    return [v6 objectAtIndex:rand() % result];
  }

  return result;
}

- (id)filterPresetsMatchingCriteria:(id)a3
{
  v28 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = self;
  obj = self->mFilters;
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
          v6 = [(NSMutableDictionary *)v23->mFilters objectForKey:v29];
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
                v11 = [a3 countByEnumeratingWithState:&v33 objects:v45 count:16];
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
                      objc_enumerationMutation(a3);
                    }

                    v15 = *(*(&v33 + 1) + 8 * v14);
                    if ([v10 objectForKey:v15])
                    {
                      [objc_msgSend(a3 objectForKey:{v15), "floatValue"}];
                      v17 = v16;
                      v18 = v10;
                    }

                    else
                    {
                      if (![v6 objectForKey:v15])
                      {
                        goto LABEL_27;
                      }

                      [objc_msgSend(a3 objectForKey:{v15), "floatValue"}];
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
                      v12 = [a3 countByEnumeratingWithState:&v33 objects:v45 count:16];
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

- (id)randomFilter:(BOOL)a3
{
  v3 = [(NSMutableDictionary *)self->mFilters allKeys];
  v4 = rand();
  v5 = v4 % [v3 count];

  return [v3 objectAtIndex:v5];
}

+ (void)loadFilterManagerWithPaths:(id)a3
{
  if (qword_1EF298)
  {

    qword_1EF298 = 0;
  }

  qword_1EF298 = [[MPFilterManager alloc] initWithPaths:a3];
}

- (MPFilterManager)initWithPaths:(id)a3
{
  v64.receiver = self;
  v64.super_class = MPFilterManager;
  v4 = [(MPFilterManager *)&v64 init];
  if (v4)
  {
    v4->mFilters = objc_alloc_init(NSMutableDictionary);
    v5 = +[NSMutableArray array];
    v47 = v4;
    v6 = v5;
    if (a3)
    {
      [v5 addObjectsFromArray:a3];
    }

    else
    {
      [v5 addObject:{-[NSString stringByAppendingPathComponent:](-[NSBundle resourcePath](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "resourcePath"), "stringByAppendingPathComponent:", @"Content"}];
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v6;
    v41 = [v6 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v41)
    {
      v40 = *v61;
      v7 = @"/Filters/%@";
      do
      {
        v8 = 0;
        do
        {
          if (*v61 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v8;
          v9 = *(*(&v60 + 1) + 8 * v8);
          v10 = +[NSData dataWithContentsOfFile:](NSData, "dataWithContentsOfFile:", [v9 stringByAppendingPathComponent:@"FilterDescriptions.plist"]);
          if (v10)
          {
            v11 = [NSPropertyListSerialization propertyListWithData:v10 options:2 format:0 error:0];
            if (v11)
            {
              [(NSMutableDictionary *)v47->mFilters addEntriesFromDictionary:v11];
            }
          }

          v12 = -[NSFileManager contentsOfDirectoryAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "contentsOfDirectoryAtPath:error:", [v9 stringByAppendingPathComponent:@"Filters/"], 0);
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v45 = v12;
          v13 = [(NSArray *)v12 countByEnumeratingWithState:&v56 objects:v67 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v57;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v57 != v15)
                {
                  objc_enumerationMutation(v45);
                }

                v17 = [v9 stringByAppendingFormat:v7, *(*(&v56 + 1) + 8 * i)];
                if ([objc_msgSend(v17 "pathExtension")])
                {
                  v18 = [[NSBundle alloc] initWithPath:v17];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = v7;
                    v43 = [objc_msgSend(v17 "lastPathComponent")];
                    v21 = [v19 pathForResource:@"FilterDescription" ofType:@"plist"];
                    v22 = [v19 pathForResource:@"LocalizedDescription" ofType:@"plist"];
                    if (v21)
                    {
                      v23 = v22;
                      v24 = [NSData dataWithContentsOfFile:v21];
                      if (v24)
                      {
                        v25 = [NSPropertyListSerialization propertyListWithData:v24 options:2 format:0 error:0];
                        if (v25)
                        {
                          v26 = v25;
                          [v25 setObject:objc_msgSend(objc_msgSend(v19 forKey:{"infoDictionary"), "objectForKey:", @"CFBundleVersion", @"version"}];
                          if (v23)
                          {
                            v27 = [NSDictionary dictionaryWithContentsOfFile:v23];
                            if (v27)
                            {
                              [v26 addEntriesFromDictionary:{-[NSDictionary objectForKey:](v27, "objectForKey:", @"_LOCALIZABLE_"}];
                            }
                          }

                          [v26 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@/Contents/Resources/%@", v17, @"Icon.tiff", @"thumbnail"}];
                          [v26 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@/Contents/Resources/%@", v17, objc_msgSend(v26, "objectForKey:", @"patchName", @"patchPath"}];
                          [(NSMutableDictionary *)v47->mFilters setObject:v26 forKey:v43];
                        }
                      }
                    }

                    v7 = v20;
                  }
                }
              }

              v14 = [(NSArray *)v45 countByEnumeratingWithState:&v56 objects:v67 count:16];
            }

            while (v14);
          }

          v8 = v42 + 1;
        }

        while ((v42 + 1) != v41);
        v41 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v41);
    }

    v4 = v47;
    v47->mFilterPresets = objc_alloc_init(NSMutableDictionary);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    mFilters = v47->mFilters;
    v28 = [(NSMutableDictionary *)mFilters countByEnumeratingWithState:&v52 objects:v66 count:16];
    if (v28)
    {
      v29 = v28;
      v46 = *v53;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v53 != v46)
          {
            objc_enumerationMutation(mFilters);
          }

          v31 = *(*(&v52 + 1) + 8 * j);
          v32 = [-[NSMutableDictionary objectForKey:](v4->mFilters objectForKey:{v31), "objectForKey:", @"presets"}];
          if (v32)
          {
            v33 = v32;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v34 = [v32 countByEnumeratingWithState:&v48 objects:v65 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v49;
              do
              {
                for (k = 0; k != v35; k = k + 1)
                {
                  if (*v49 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  -[NSMutableDictionary setObject:forKey:](v47->mFilterPresets, "setObject:forKey:", [v33 objectForKey:*(*(&v48 + 1) + 8 * k)], objc_msgSend(v31, "stringByAppendingPathComponent:", *(*(&v48 + 1) + 8 * k)));
                }

                v35 = [v33 countByEnumeratingWithState:&v48 objects:v65 count:16];
              }

              while (v35);
            }
          }

          else
          {
            -[NSMutableDictionary setObject:forKey:](v4->mFilterPresets, "setObject:forKey:", +[NSDictionary dictionary](NSDictionary, "dictionary"), [v31 stringByAppendingPathComponent:@"Default"]);
          }

          v4 = v47;
        }

        v29 = [(NSMutableDictionary *)mFilters countByEnumeratingWithState:&v52 objects:v66 count:16];
      }

      while (v29);
    }
  }

  return v4;
}

@end