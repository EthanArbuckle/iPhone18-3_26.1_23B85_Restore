@interface NSISEngine
- (uint64_t)_UIKitPerformPendingChangeNotifications;
@end

@implementation NSISEngine

- (uint64_t)_UIKitPerformPendingChangeNotifications
{
  if (result)
  {
    v1 = result;
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UIKitEngineTracking, @"UIKitEngineTracking") & 1) != 0 || byte_1ED48B684)
    {
      [v1 _setUIKitEngineTrackingOn:1];
    }

    return [v1 performPendingChangeNotifications];
  }

  return result;
}

uint64_t __55__NSISEngine__UILayoutEngineStatistics___UIKitRowCount__block_invoke()
{
  result = objc_opt_respondsToSelector();
  byte_1ED4981B1 = result & 1;
  return result;
}

uint64_t __50__NSISEngine_UIKitAdditions__debugQuickLookObject__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x40000000) != 0)
  {
    return *(a1 + 32) + (a2 & 0xBFFFFFFF);
  }

  return a2;
}

uint64_t __50__NSISEngine_UIKitAdditions__debugQuickLookObject__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x40000000) != 0)
  {
    return *(a1 + 32) + (a2 & 0xBFFFFFFF);
  }

  return a2;
}

void __50__NSISEngine_UIKitAdditions__debugQuickLookObject__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = +[UIColor whiteColor];
  [v4 setFill];

  CGContextFillRect(v3, *(a1 + 48));
  CGContextSetLineWidth(v3, *(a1 + 80) * 0.25);
  v5 = *(a1 + 88);
  if (*(v5 + 24))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(v5 + 28) + v6;
      v9 = (*(*(a1 + 32) + 16))();
      v10 = (*(*(a1 + 40) + 16))();
      v11 = *(a1 + 80);
      v12 = v11 * v9;
      v13 = v11 * v10;
      v14 = *(v8 + 8);
      if ((v14 & 4) != 0)
      {
        v18 = +[UIColor blackColor];
        [v18 setFill];

        v22.origin.x = v12;
        v22.origin.y = v13;
        v22.size.width = v11;
        v22.size.height = v11;
        CGContextFillRect(v3, v22);
        v14 = *(v8 + 8);
        if (v14)
        {
LABEL_10:
          v19 = +[UIColor blueColor];
          [v19 setStroke];

          v23.origin.x = v12;
          v23.origin.y = v13;
          v23.size.width = v11;
          v23.size.height = v11;
          CGContextClipToRect(v3, v23);
          v24.origin.x = v12;
          v24.origin.y = v13;
          v24.size.width = v11;
          v24.size.height = v11;
          CGContextStrokeRect(v3, v24);
          CGContextResetClip(v3);
          if ((*(v8 + 8) & 2) == 0)
          {
            goto LABEL_7;
          }

LABEL_6:
          v15 = +[UIColor redColor];
          [v15 setFill];

          v20.size.width = *(a1 + 80);
          v16 = v20.size.width * 0.125;
          v17 = v20.size.width * 0.125 * 0.5;
          v20.origin.y = v13 + v20.size.width * 0.5 - v17;
          v20.origin.x = v12;
          v20.size.height = v20.size.width * 0.125;
          CGContextFillRect(v3, v20);
          v21.size.height = *(a1 + 80);
          v21.origin.x = v12 + v21.size.height * 0.5 - v17;
          v21.origin.y = v13;
          v21.size.width = v16;
          CGContextFillRect(v3, v21);
          goto LABEL_7;
        }
      }

      else if (*(v8 + 8))
      {
        goto LABEL_10;
      }

      if ((v14 & 2) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ++v7;
      v5 = *(a1 + 88);
      v6 += 9;
    }

    while (v7 < *(v5 + 24));
  }
}

@end