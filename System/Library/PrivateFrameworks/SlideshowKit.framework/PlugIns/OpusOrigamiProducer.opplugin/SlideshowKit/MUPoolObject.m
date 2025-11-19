@interface MUPoolObject
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)pooledClasses;
+ (int64_t)clearPool;
+ (void)clearAllPools;
- (void)release;
@end

@implementation MUPoolObject

+ (id)pooledClasses
{
  result = qword_1EF2B8;
  if (!qword_1EF2B8)
  {
    result = objc_alloc_init(NSMutableArray);
    qword_1EF2B8 = result;
  }

  return result;
}

+ (void)clearAllPools
{
  v2 = qword_1EF2B8;
  objc_sync_enter(qword_1EF2B8);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = +[MUPoolObject pooledClasses];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [NSClassFromString(*(*(&v7 + 1) + 8 * v6)) clearPool];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [+[MUPoolObject pooledClasses](MUPoolObject "pooledClasses")];
  objc_sync_exit(v2);
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v4 = qword_1EF2B8;
  objc_sync_enter(qword_1EF2B8);
  v5 = [objc_opt_class() poolInfo];
  if (!*v5)
  {
    *v5 = objc_opt_class();
    v5[1] = 0;
    *(v5 + 24) = [objc_opt_class() clearVars];
    v5[2] = objc_alloc_init(NSObject);
    *(v5 + 25) = 0;
    [+[MUPoolObject pooledClasses](MUPoolObject "pooledClasses")];
  }

  objc_sync_exit(v4);
  v6 = v5[2];
  objc_sync_enter(v6);
  v7 = v5[1];
  if (v7)
  {
    v5[1] = v7[1];
    if (*(v5 + 24) == 1)
    {
      v8 = malloc_size(v7);
      bzero(v7 + 2, v8 - 16);
    }

    v9 = v7;
  }

  else
  {
    v9 = NSAllocateObject(a1, 0, 0);
  }

  objc_sync_exit(v6);
  if (v7)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

- (void)release
{
  v3 = qword_1EF2B8;
  objc_sync_enter(qword_1EF2B8);
  v4 = [objc_opt_class() poolInfo];
  objc_sync_exit(v3);
  if ([(MUPoolObject *)self retainCount]== &dword_0 + 1 && (*(v4 + 25) & 1) == 0)
  {
    [(MUPoolObject *)self purge];
    v5 = *(v4 + 2);
    objc_sync_enter(v5);
    self->mPoolPrev = *(v4 + 1);
    *(v4 + 1) = self;

    objc_sync_exit(v5);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MUPoolObject;
    [(MUPoolObject *)&v6 release];
  }
}

+ (int64_t)clearPool
{
  v2 = [objc_opt_class() poolInfo];
  v3 = *(v2 + 2);
  objc_sync_enter(v3);
  *(v2 + 25) = 1;
  v4 = *(v2 + 1);
  if (v4)
  {
    v5 = 0;
    do
    {
      *(v2 + 1) = v4[1];
      [v4 purge];

      ++v5;
      v4 = *(v2 + 1);
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v3);
  *(v2 + 1) = 0;

  *(v2 + 2) = 0;
  return v5;
}

@end