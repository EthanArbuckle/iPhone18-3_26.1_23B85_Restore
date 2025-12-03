@interface SSEntity(VideosUI)
- (id)vui_valuesForProperties:()VideosUI;
@end

@implementation SSEntity(VideosUI)

- (id)vui_valuesForProperties:()VideosUI
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_calloc(v5, 8uLL, 0x80040B8603338uLL);
    v8 = malloc_type_calloc(v6, 8uLL, 0x80040B8603338uLL);
    [v4 getObjects:v7 range:{0, v6}];
    [self getValues:v8 forProperties:v7 count:v6];
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    for (i = 0; i != v6; ++i)
    {
      v11 = v7[i];
      if (v11)
      {
        v12 = v8[i] == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        [v9 setObject:? forKey:?];
      }
    }

    free(v7);
    free(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end