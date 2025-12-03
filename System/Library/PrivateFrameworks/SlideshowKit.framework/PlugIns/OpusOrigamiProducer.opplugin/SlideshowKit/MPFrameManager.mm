@interface MPFrameManager
+ (id)sharedManager;
+ (void)loadFrameManagerWithPaths:(id)paths;
+ (void)releaseSharedManager;
- (MPFrameManager)initWithPaths:(id)paths;
- (id)allCategoryIDs;
- (id)attributesForFrameID:(id)d andPresetID:(id)iD;
- (id)categoryIDsForFrameID:(id)d;
- (id)constraintsForFramesMatchingList:(id)list andCriteria:(id)criteria;
- (id)framesForCategoryID:(id)d;
- (id)localizedCategoryNameFromCategoryID:(id)d;
- (id)localizedFrameNameForFrameID:(id)d;
- (id)randomFrameFromList:(id)list abidingWithConstraints:(id)constraints;
- (id)versionOfFrameID:(id)d;
- (void)dealloc;
@end

@implementation MPFrameManager

+ (id)sharedManager
{
  result = qword_1EF2D0;
  if (!qword_1EF2D0)
  {
    objc_sync_enter(self);
    if (!qword_1EF2D0)
    {
      qword_1EF2D0 = [[MPFrameManager alloc] initWithPaths:0];
    }

    objc_sync_exit(self);
    return qword_1EF2D0;
  }

  return result;
}

+ (void)releaseSharedManager
{
  if (qword_1EF2D0)
  {
    objc_sync_enter(self);

    qword_1EF2D0 = 0;

    objc_sync_exit(self);
  }
}

- (void)dealloc
{
  self->mFrames = 0;

  self->mCategories = 0;
  v3.receiver = self;
  v3.super_class = MPFrameManager;
  [(MPFrameManager *)&v3 dealloc];
}

- (id)allCategoryIDs
{
  v3 = +[NSMutableArray array];
  [v3 addObjectsFromArray:{-[NSMutableDictionary allKeys](self->mCategories, "allKeys")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->mFrames;
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

        v8 = [(MPFrameManager *)self categoryIDsForFrameID:*(*(&v20 + 1) + 8 * i)];
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

- (id)versionOfFrameID:(id)d
{
  v3 = [(NSMutableDictionary *)self->mFrames objectForKey:d];

  return [v3 objectForKey:@"version"];
}

- (id)localizedFrameNameForFrameID:(id)d
{
  result = [-[NSMutableDictionary objectForKey:](self->mFrames "objectForKey:{"objectForKey:", @"localizedFrameName"}")];
  if (!result)
  {
    return d;
  }

  return result;
}

- (id)localizedCategoryNameFromCategoryID:(id)d
{
  v5 = [(NSMutableDictionary *)self->mCategories objectForKey:?];
  if (!v5)
  {
    v7 = [(MPFrameManager *)self framesForCategoryID:d];
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

      v5 = [-[NSMutableDictionary objectForKey:](self->mFrames objectForKey:{*(*(&v12 + 1) + 8 * v11)), "objectForKey:", @"localizedCategoryName"}];
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

- (id)categoryIDsForFrameID:(id)d
{
  v3 = [objc_msgSend(-[NSMutableDictionary objectForKey:](self->mFrames objectForKey:{d), "objectForKey:", @"categories", "copy"}];

  return v3;
}

- (id)framesForCategoryID:(id)d
{
  v5 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mFrames = self->mFrames;
  v7 = [(NSMutableDictionary *)mFrames countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(mFrames);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([-[MPFrameManager categoryIDsForFrameID:](self categoryIDsForFrameID:{v11), "containsObject:", d}] & 1) != 0 || objc_msgSend(d, "isEqualToString:", @"all"))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)mFrames countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)attributesForFrameID:(id)d andPresetID:(id)iD
{
  v5 = [-[NSMutableDictionary objectForKey:](self->mFrames objectForKey:{d), "objectForKey:", @"presets"}];
  objc_sync_enter(v5);
  v6 = [v5 objectForKey:iD];
  if (!v6)
  {
    v6 = [v5 objectForKey:@"Default"];
    if (!v6)
    {
      v6 = [NSMutableDictionary dictionaryWithDictionary:0];
      [v5 setObject:v6 forKey:@"Default"];
    }
  }

  objc_sync_exit(v5);
  return v6;
}

+ (void)loadFrameManagerWithPaths:(id)paths
{
  if (qword_1EF2D0)
  {

    qword_1EF2D0 = 0;
  }

  qword_1EF2D0 = [[MPFrameManager alloc] initWithPaths:paths];
}

- (id)randomFrameFromList:(id)list abidingWithConstraints:(id)constraints
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

- (id)constraintsForFramesMatchingList:(id)list andCriteria:(id)criteria
{
  v22 = +[NSMutableDictionary dictionary];
  if (!criteria)
  {
    return 0;
  }

  if (!list)
  {
    list = [(MPFrameManager *)self allFrameIDs];
  }

  if (![list count])
  {
    return 0;
  }

  obj = objc_alloc_init(NSMutableSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [list countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(list);
        }

        [obj addObject:*(*(&v35 + 1) + 8 * i)];
      }

      v7 = [list countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v24 = *v32;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * j);
        v14 = [(NSMutableDictionary *)self->mFrames objectForKey:v13];
        v15 = [v14 objectForKey:@"tags"];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = [criteria countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v28;
LABEL_19:
          v19 = 0;
          while (1)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(criteria);
            }

            v20 = *(*(&v27 + 1) + 8 * v19);
            if (![v15 containsObject:v20])
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [criteria countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v17)
              {
                goto LABEL_19;
              }

              goto LABEL_27;
            }
          }

          if (v20)
          {
            continue;
          }
        }

LABEL_27:
        [v23 setObject:+[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary forKey:{"dictionaryWithDictionary:", objc_msgSend(v14, "objectForKey:", @"constraints", v13}];
      }

      v11 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v11);
  }

  return v23;
}

- (MPFrameManager)initWithPaths:(id)paths
{
  v57.receiver = self;
  v57.super_class = MPFrameManager;
  v4 = [(MPFrameManager *)&v57 init];
  if (v4)
  {
    v5 = &kCTUnderlineColorAttributeName_ptr;
    v4->mFrames = objc_alloc_init(NSMutableDictionary);
    v4->mCategories = objc_alloc_init(NSMutableDictionary);
    v44 = +[NSFileManager defaultManager];
    v6 = +[NSMutableArray array];
    v7 = v6;
    if (paths)
    {
      [v6 addObjectsFromArray:paths];
    }

    else
    {
      [v6 addObject:{-[NSString stringByAppendingPathComponent:](-[NSBundle resourcePath](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "resourcePath"), "stringByAppendingPathComponent:", @"Content"}];
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v7;
    v40 = [v7 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v40)
    {
      v39 = *v54;
      v43 = v4;
      do
      {
        v8 = 0;
        do
        {
          if (*v54 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = v8;
          v9 = *(*(&v53 + 1) + 8 * v8);
          v10 = +[NSData dataWithContentsOfFile:](NSData, "dataWithContentsOfFile:", [v9 stringByAppendingPathComponent:@"FrameDescriptions.plist"]);
          if (v10)
          {
            v11 = [NSPropertyListSerialization propertyListWithData:v10 options:2 format:0 error:0];
            if (v11)
            {
              v12 = v11;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v13 = [v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v50;
                do
                {
                  for (i = 0; i != v14; i = i + 1)
                  {
                    if (*v50 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v17 = *(*(&v49 + 1) + 8 * i);
                    v18 = [objc_msgSend(objc_msgSend(v9 stringByAppendingPathComponent:{@"Frames", "stringByAppendingPathComponent:", v17), "stringByAppendingPathExtension:", @"qtz"}];
                    if (v18)
                    {
                      v19 = v18;
                      if ([(NSFileManager *)v44 fileExistsAtPath:v18])
                      {
                        v20 = [objc_alloc(v5[56]) initWithDictionary:{objc_msgSend(v12, "objectForKey:", v17)}];
                        [v20 setObject:v19 forKey:@"patchPath"];
                        [(NSMutableDictionary *)v4->mFrames setObject:v20 forKey:v17];
                      }
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v49 objects:v59 count:16];
                }

                while (v14);
              }
            }
          }

          v21 = -[NSFileManager contentsOfDirectoryAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "contentsOfDirectoryAtPath:error:", [v9 stringByAppendingPathComponent:@"Frames/"], 0);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v22 = [(NSArray *)v21 countByEnumeratingWithState:&v45 objects:v58 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v46;
            v42 = v21;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v46 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = [v9 stringByAppendingFormat:@"/Frames/%@", *(*(&v45 + 1) + 8 * j)];
                if ([objc_msgSend(v26 "pathExtension")])
                {
                  v27 = [[NSBundle alloc] initWithPath:v26];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = [objc_msgSend(v26 "lastPathComponent")];
                    v30 = [v28 pathForResource:@"FrameDescription" ofType:@"plist"];
                    v31 = [v28 pathForResource:@"LocalizedDescription" ofType:@"plist"];
                    if (v30)
                    {
                      v32 = v31;
                      v33 = [NSData dataWithContentsOfFile:v30];
                      if (v33)
                      {
                        v34 = [NSPropertyListSerialization propertyListWithData:v33 options:2 format:0 error:0];
                        if (v34)
                        {
                          v35 = v34;
                          if (v32)
                          {
                            v36 = [NSDictionary dictionaryWithContentsOfFile:v32];
                            if (v36)
                            {
                              [v35 addEntriesFromDictionary:{-[NSDictionary objectForKey:](v36, "objectForKey:", @"_LOCALIZABLE_"}];
                            }
                          }

                          [v35 setObject:objc_msgSend(objc_msgSend(v28 forKey:{"infoDictionary"), "objectForKey:", @"CFBundleVersion", @"version"}];
                          [v35 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@/Contents/Resources", v26), @"resourceFolderPath"}];
                          [v35 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@/Contents/Resources/%@", v26, @"Icon.tiff", @"thumbnail"}];
                          [v35 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@/Contents/Resources/%@", v26, objc_msgSend(v35, "objectForKey:", @"patchName", @"patchPath"}];
                          [(NSMutableDictionary *)v43->mFrames setObject:v35 forKey:v29];
                          v21 = v42;
                        }
                      }
                    }
                  }
                }
              }

              v23 = [(NSArray *)v21 countByEnumeratingWithState:&v45 objects:v58 count:16];
            }

            while (v23);
          }

          v4 = v43;
          -[NSMutableDictionary addEntriesFromDictionary:](v43->mCategories, "addEntriesFromDictionary:", +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [v9 stringByAppendingPathComponent:@"LocalizedFrameCategories.plist"]));
          v8 = v41 + 1;
          v5 = &kCTUnderlineColorAttributeName_ptr;
        }

        while ((v41 + 1) != v40);
        v40 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v40);
    }
  }

  return v4;
}

@end