@interface SSDownload(VideosUI)
- (BOOL)vui_isEqualToDownload:()VideosUI;
@end

@implementation SSDownload(VideosUI)

- (BOOL)vui_isEqualToDownload:()VideosUI
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (a1 == v4)
    {
      v17 = 1;
    }

    else
    {
      v7 = *MEMORY[0x1E69D4BF0];
      v19[0] = *MEMORY[0x1E69D4BD0];
      v6 = v19[0];
      v19[1] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      v9 = [a1 vui_valuesForProperties:v8];
      v10 = [v9 objectForKey:v6];
      v11 = [v9 objectForKey:v7];
      v12 = [v5 vui_valuesForProperties:v8];
      v13 = [v12 objectForKey:v6];
      v14 = [v12 objectForKey:v7];
      if (v10)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      v17 = 1;
      if (v15 || ([v10 isEqualToString:v13] & 1) == 0)
      {
        v16 = !v11 || v14 == 0;
        if (v16 || ([v11 isEqualToNumber:v14] & 1) == 0)
        {
          v17 = 0;
        }
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end