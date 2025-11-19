@interface UIWindow(VideosUI)
+ (double)_OSXNumColumnsForGridStyle:()VideosUI gridType:sizeClass:;
+ (double)_newNumColumnsForGridStyle:()VideosUI gridType:sizeClass:;
+ (double)_numColumnsForGridStyle:()VideosUI gridType:sizeClass:;
+ (double)_vui_interitemSpaceForSizeClass:()VideosUI gridType:;
+ (double)_vui_itemWidthForGridStyle:()VideosUI gridType:numGridColumns:windowWidth:sizeClass:padding:;
+ (double)vui_collectionInteritemSpace:()VideosUI gridType:;
+ (double)vui_itemWidthForGridStyle:()VideosUI gridType:numGridColumns:;
+ (double)vui_padding;
+ (id)vui_keyWindow;
+ (uint64_t)_vui_currentSizeClassForWindowWidth:()VideosUI safeArea:;
+ (uint64_t)vui_collectionInteritemSpace:()VideosUI gridType:windowWidth:;
+ (uint64_t)vui_currentSizeClass;
+ (uint64_t)vui_currentSizeClassForWindowWidth:()VideosUI;
+ (uint64_t)vui_interfaceOrientation;
+ (uint64_t)vui_itemWidthForGridStyle:()VideosUI gridType:;
+ (uint64_t)vui_itemWidthForGridStyle:()VideosUI gridType:numGridColumns:windowWidth:;
+ (uint64_t)vui_numColumnsForGridStyle:()VideosUI gridType:sizeClass:;
+ (uint64_t)vui_paddingForSizeClass:()VideosUI;
+ (uint64_t)vui_paddingForWindowWidth:()VideosUI;
@end

@implementation UIWindow(VideosUI)

+ (id)vui_keyWindow
{
  v0 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  if (!v0)
  {
    v1 = [MEMORY[0x1E69DC668] sharedApplication];
    v2 = [v1 delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [MEMORY[0x1E69DC668] sharedApplication];
      v5 = [v4 delegate];
      v0 = [v5 window];
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

+ (double)vui_padding
{
  v2 = objc_opt_class();
  v3 = [a1 vui_keyWindow];
  [v3 bounds];
  [v2 vui_paddingForWindowWidth:CGRectGetWidth(v7)];
  v5 = v4;

  return v5;
}

+ (uint64_t)vui_paddingForWindowWidth:()VideosUI
{
  v2 = [objc_opt_class() vui_currentSizeClassForWindowWidth:a1];
  [objc_opt_class() _safeAreaInsetsForDeviceWithWindowWidth:a1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_class();

  return [v11 _paddingForSizeClass:v2 safeArea:{v4, v6, v8, v10}];
}

+ (uint64_t)vui_paddingForSizeClass:()VideosUI
{
  v4 = objc_opt_class();
  v5 = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 8);
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  v8 = *(MEMORY[0x1E69DDCE0] + 24);

  return [v4 _paddingForSizeClass:a3 safeArea:{v5, v6, v7, v8}];
}

+ (uint64_t)vui_numColumnsForGridStyle:()VideosUI gridType:sizeClass:
{
  v8 = objc_opt_class();

  return [v8 _newNumColumnsForGridStyle:a3 gridType:a4 sizeClass:a5];
}

+ (uint64_t)vui_itemWidthForGridStyle:()VideosUI gridType:
{
  v6 = objc_opt_class();

  return [v6 vui_itemWidthForGridStyle:a3 gridType:a4 numGridColumns:1];
}

+ (double)vui_itemWidthForGridStyle:()VideosUI gridType:numGridColumns:
{
  v9 = objc_opt_class();
  v10 = [a1 vui_keyWindow];
  [v10 bounds];
  [v9 vui_itemWidthForGridStyle:a3 gridType:a4 numGridColumns:a5 windowWidth:CGRectGetWidth(v14)];
  v12 = v11;

  return v12;
}

+ (uint64_t)vui_itemWidthForGridStyle:()VideosUI gridType:numGridColumns:windowWidth:
{
  v10 = [objc_opt_class() vui_currentSizeClassForWindowWidth:a1];
  if (a4 == 22)
  {
    v11 = *MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    [objc_opt_class() vui_paddingForWindowWidth:a1];
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
  }

  v19 = objc_opt_class();

  return [v19 _vui_itemWidthForGridStyle:a4 gridType:a5 numGridColumns:a6 windowWidth:v10 sizeClass:a1 padding:{v11, v12, v13, v14}];
}

+ (double)_vui_itemWidthForGridStyle:()VideosUI gridType:numGridColumns:windowWidth:sizeClass:padding:
{
  [objc_opt_class() _vui_interitemSpaceForSizeClass:a11 gridType:a9];
  v19 = v18;
  [objc_opt_class() vui_numColumnsForGridStyle:a8 gridType:a9 sizeClass:a11];
  v21 = floor(v20 + 1.0);
  if (v20 - floor(v20) == 0.0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  return floor(v19 * (a10 - 1) + (a1 - (a3 + a5) - (v22 - 1) * v19) / v20 * a10);
}

+ (double)vui_collectionInteritemSpace:()VideosUI gridType:
{
  v7 = objc_opt_class();
  v8 = [a1 vui_keyWindow];
  [v8 bounds];
  [v7 vui_collectionInteritemSpace:a3 gridType:a4 windowWidth:CGRectGetWidth(v12)];
  v10 = v9;

  return v10;
}

+ (uint64_t)vui_collectionInteritemSpace:()VideosUI gridType:windowWidth:
{
  v6 = [objc_opt_class() vui_currentSizeClassForWindowWidth:a1];
  v7 = objc_opt_class();

  return [v7 _vui_interitemSpaceForSizeClass:v6 gridType:a5];
}

+ (uint64_t)vui_currentSizeClass
{
  v2 = objc_opt_class();
  v3 = [a1 vui_keyWindow];
  [v3 bounds];
  v4 = [v2 vui_currentSizeClassForWindowWidth:CGRectGetWidth(v6)];

  return v4;
}

+ (uint64_t)vui_currentSizeClassForWindowWidth:()VideosUI
{
  [objc_opt_class() _safeAreaInsetsForDeviceWithWindowWidth:a1];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_class();

  return [v10 _vui_currentSizeClassForWindowWidth:a1 safeArea:{v3, v5, v7, v9}];
}

+ (uint64_t)_vui_currentSizeClassForWindowWidth:()VideosUI safeArea:
{
  if ([MEMORY[0x1E69DF6F0] isTV])
  {
    return 7;
  }

  v9 = [MEMORY[0x1E69DF6F0] isPad];
  result = 0;
  v10 = v9 == 0;
  v11 = 3;
  if (v10)
  {
    v11 = 0;
  }

  v12 = a1 - (a3 + a5);
  if (v12 > 374.0)
  {
    if (v12 < 375.0 || v12 > 460.0)
    {
      if (v12 < 461.0 || v12 > 726.0)
      {
        if (v12 < 727.0 || v12 > 981.0)
        {
          if (v12 < 982.0 || v12 > 1194.0)
          {
            result = v11;
            if (v12 >= 1195.0)
            {
              return 5;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

+ (double)_vui_interitemSpaceForSizeClass:()VideosUI gridType:
{
  result = 0.0;
  if (a3 <= 7)
  {
    return dbl_1E42970F8[a3];
  }

  return result;
}

+ (uint64_t)vui_interfaceOrientation
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 windows];
  v2 = [v1 firstObject];
  v3 = [v2 windowScene];
  v4 = [v3 interfaceOrientation];

  return v4;
}

+ (double)_numColumnsForGridStyle:()VideosUI gridType:sizeClass:
{
  if (_numColumnsForGridStyle_gridType_sizeClass__onceToken != -1)
  {
    +[UIWindow(VideosUI) _numColumnsForGridStyle:gridType:sizeClass:];
  }

  v8 = _numColumnsForGridStyle_gridType_sizeClass__sGridSpec;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = 1.0;
  if ((a3 - 23) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v13 = [v10 objectForKeyedSubscript:v12];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v15 = [v13 objectForKeyedSubscript:v14];
    [v15 floatValue];
    v11 = v16;
  }

  return v11;
}

+ (double)_newNumColumnsForGridStyle:()VideosUI gridType:sizeClass:
{
  if (_newNumColumnsForGridStyle_gridType_sizeClass__onceToken != -1)
  {
    +[UIWindow(VideosUI) _newNumColumnsForGridStyle:gridType:sizeClass:];
  }

  v8 = _newNumColumnsForGridStyle_gridType_sizeClass__sGridSpec;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = 1.0;
  if ((a3 - 23) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v13 = [v10 objectForKeyedSubscript:v12];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v15 = [v13 objectForKeyedSubscript:v14];
    [v15 floatValue];
    v11 = v16;
  }

  return v11;
}

+ (double)_OSXNumColumnsForGridStyle:()VideosUI gridType:sizeClass:
{
  if (_OSXNumColumnsForGridStyle_gridType_sizeClass__onceToken != -1)
  {
    +[UIWindow(VideosUI) _OSXNumColumnsForGridStyle:gridType:sizeClass:];
  }

  v8 = _OSXNumColumnsForGridStyle_gridType_sizeClass__sGridSpec;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = 1.0;
  if ((a3 - 23) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v13 = [v10 objectForKeyedSubscript:v12];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v15 = [v13 objectForKeyedSubscript:v14];
    [v15 floatValue];
    v11 = v16;
  }

  return v11;
}

@end