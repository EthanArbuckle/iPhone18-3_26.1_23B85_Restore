@interface VKSharedResourcesManager
+ (id)sharedManager;
+ (id)sharedResources;
+ (id)sharedResourcesCreateIfNil:(BOOL)a3 addResourceUser:(BOOL)a4;
+ (void)removeResourceUser;
- (BOOL)hasResources;
- (VKSharedResourcesManager)init;
- (id).cxx_construct;
- (id)resourcesCreateIfNil:(BOOL)a3 addResourceUser:(BOOL)a4;
- (void)_removeResourceUser;
@end

@implementation VKSharedResourcesManager

+ (id)sharedManager
{
  if (+[VKSharedResourcesManager sharedManager]::_once != -1)
  {
    dispatch_once(&+[VKSharedResourcesManager sharedManager]::_once, &__block_literal_global_75);
  }

  v3 = +[VKSharedResourcesManager sharedManager]::singleton;

  return v3;
}

void __41__VKSharedResourcesManager_sharedManager__block_invoke()
{
  if (!+[VKSharedResourcesManager sharedManager]::singleton)
  {
    v0 = objc_alloc_init(VKSharedResourcesManager);
    v1 = +[VKSharedResourcesManager sharedManager]::singleton;
    +[VKSharedResourcesManager sharedManager]::singleton = v0;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  return self;
}

- (VKSharedResourcesManager)init
{
  v6.receiver = self;
  v6.super_class = VKSharedResourcesManager;
  v2 = [(VKSharedResourcesManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 9);
    *(v2 + 9) = 0;
  }

  return v3;
}

+ (id)sharedResources
{
  v2 = +[VKSharedResourcesManager sharedManager];
  v3 = [v2 resourcesCreateIfNil:1 addResourceUser:0];

  return v3;
}

+ (void)removeResourceUser
{
  v2 = +[VKSharedResourcesManager sharedManager];
  [v2 _removeResourceUser];
}

- (void)_removeResourceUser
{
  std::mutex::lock((self + 8));
  v3 = *(self + 9);
  if (v3)
  {
    [v3 _removeResourceUser];
    if (([*(self + 9) _hasResourceUsers] & 1) == 0)
    {
      v4 = *(self + 9);
      *(self + 9) = 0;

      v5 = [MEMORY[0x1E69A2610] modernLoader];
      [v5 clearAllCaches];
    }
  }

  std::mutex::unlock((self + 8));
}

- (id)resourcesCreateIfNil:(BOOL)a3 addResourceUser:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  std::mutex::lock((self + 8));
  v7 = *(self + 9);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v5;
  }

  if (!v8)
  {
    operator new();
  }

  if (v7)
  {
    v9 = !v4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v7 _addResourceUser];
    v7 = *(self + 9);
  }

  v10 = v7;
  std::mutex::unlock((self + 8));

  return v10;
}

- (BOOL)hasResources
{
  std::mutex::lock((self + 8));
  v3 = *(self + 9) != 0;
  std::mutex::unlock((self + 8));
  return v3;
}

+ (id)sharedResourcesCreateIfNil:(BOOL)a3 addResourceUser:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[VKSharedResourcesManager sharedManager];
  v7 = [v6 resourcesCreateIfNil:v5 addResourceUser:v4];

  return v7;
}

@end