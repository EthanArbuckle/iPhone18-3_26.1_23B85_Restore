@interface MPAnimationManager
+ (id)sharedManager;
+ (void)loadAnimationManagerWithPaths:(id)a3;
+ (void)releaseSharedManager;
- (MPAnimationManager)initWithPaths:(id)a3;
- (void)dealloc;
@end

@implementation MPAnimationManager

+ (id)sharedManager
{
  result = qword_1EF360;
  if (!qword_1EF360)
  {
    objc_sync_enter(a1);
    if (!qword_1EF360)
    {
      qword_1EF360 = [[MPAnimationManager alloc] initWithPaths:0];
    }

    objc_sync_exit(a1);
    return qword_1EF360;
  }

  return result;
}

+ (void)releaseSharedManager
{
  if (qword_1EF360)
  {
    objc_sync_enter(a1);

    qword_1EF360 = 0;

    objc_sync_exit(a1);
  }
}

- (void)dealloc
{
  self->mAnimationSets = 0;

  self->mAnimations = 0;
  v3.receiver = self;
  v3.super_class = MPAnimationManager;
  [(MPAnimationManager *)&v3 dealloc];
}

+ (void)loadAnimationManagerWithPaths:(id)a3
{
  if (qword_1EF360)
  {

    qword_1EF360 = 0;
  }

  qword_1EF360 = [[MPAnimationManager alloc] initWithPaths:a3];
}

- (MPAnimationManager)initWithPaths:(id)a3
{
  v21.receiver = self;
  v21.super_class = MPAnimationManager;
  v16 = [(MPAnimationManager *)&v21 init];
  if (v16)
  {
    v16->mAnimations = objc_alloc_init(NSMutableDictionary);
    v16->mAnimationSets = objc_alloc_init(NSMutableDictionary);
    v4 = +[NSMutableArray array];
    v5 = v4;
    if (a3)
    {
      [v4 addObjectsFromArray:a3];
    }

    else
    {
      [v4 addObject:{-[NSString stringByAppendingPathComponent:](-[NSBundle resourcePath](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "resourcePath"), "stringByAppendingPathComponent:", @"Content"}];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = +[NSData dataWithContentsOfFile:](NSData, "dataWithContentsOfFile:", [v10 stringByAppendingPathComponent:@"AnimationDescriptions.plist"]);
          if (v11)
          {
            v12 = [NSPropertyListSerialization propertyListWithData:v11 options:2 format:0 error:0];
            if (v12)
            {
              [(NSMutableDictionary *)v16->mAnimations addEntriesFromDictionary:v12];
            }
          }

          v13 = +[NSData dataWithContentsOfFile:](NSData, "dataWithContentsOfFile:", [v10 stringByAppendingPathComponent:@"AnimatedSets.plist"]);
          if (v13)
          {
            v14 = [NSPropertyListSerialization propertyListWithData:v13 options:2 format:0 error:0];
            if (v14)
            {
              [(NSMutableDictionary *)v16->mAnimationSets addEntriesFromDictionary:v14];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }
  }

  return v16;
}

@end