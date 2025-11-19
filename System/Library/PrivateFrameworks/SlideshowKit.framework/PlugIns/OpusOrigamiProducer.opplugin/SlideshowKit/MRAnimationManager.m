@interface MRAnimationManager
+ (void)initialize;
+ (void)loadAnimationManagerWithPaths:(id)a3;
- (MRAnimationManager)initWithPaths:(id)a3;
- (void)dealloc;
@end

@implementation MRAnimationManager

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___MRAnimationManager;
  objc_msgSendSuper2(&v2, "initialize");
  if (!qword_1EF3B8)
  {
    qword_1EF3B8 = [[MRAnimationManager alloc] initWithPaths:0];
  }
}

+ (void)loadAnimationManagerWithPaths:(id)a3
{
  if (qword_1EF3B8)
  {

    qword_1EF3B8 = 0;
  }

  qword_1EF3B8 = [[MRAnimationManager alloc] initWithPaths:a3];
}

- (MRAnimationManager)initWithPaths:(id)a3
{
  v18.receiver = self;
  v18.super_class = MRAnimationManager;
  v4 = [(MRAnimationManager *)&v18 init];
  if (v4)
  {
    v4->mAnimations = objc_alloc_init(NSMutableDictionary);
    v5 = +[NSMutableArray array];
    v6 = v5;
    if (a3)
    {
      [v5 addObjectsFromArray:a3];
    }

    else
    {
      [v5 addObject:{-[NSString stringByAppendingPathComponent:](-[NSBundle resourcePath](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "resourcePath"), "stringByAppendingPathComponent:", @"Content"}];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = +[NSData dataWithContentsOfFile:](NSData, "dataWithContentsOfFile:", [*(*(&v14 + 1) + 8 * i) stringByAppendingPathComponent:@"AnimationDescriptions.plist"]);
          if (v11)
          {
            v12 = [NSPropertyListSerialization propertyListWithData:v11 options:2 format:0 error:0];
            if (v12)
            {
              [(NSMutableDictionary *)v4->mAnimations addEntriesFromDictionary:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  return v4;
}

- (void)dealloc
{
  [(MRAnimationManager *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRAnimationManager;
  [(MRAnimationManager *)&v3 dealloc];
}

@end