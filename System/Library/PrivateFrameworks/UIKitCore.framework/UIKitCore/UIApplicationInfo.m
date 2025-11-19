@interface UIApplicationInfo
@end

@implementation UIApplicationInfo

void *__54___UIApplicationInfo__lock_loadFolderNamesIfNecessary__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = +[_UIApplicationInfo _genreNameForID:](_UIApplicationInfo, "_genreNameForID:", [a2 integerValue]);
    a2 = (*(v6 + 16))(v6, v7);
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

@end