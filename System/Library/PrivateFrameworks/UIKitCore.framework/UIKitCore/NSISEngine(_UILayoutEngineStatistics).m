@interface NSISEngine(_UILayoutEngineStatistics)
- (uint64_t)_UIKitRowCount;
- (void)_setUIKitEngineTrackingOn:()_UILayoutEngineStatistics;
@end

@implementation NSISEngine(_UILayoutEngineStatistics)

- (uint64_t)_UIKitRowCount
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__NSISEngine__UILayoutEngineStatistics___UIKitRowCount__block_invoke;
  block[3] = &unk_1E70F5CA0;
  block[4] = a1;
  if (qword_1ED498248 != -1)
  {
    dispatch_once(&qword_1ED498248, block);
  }

  if (byte_1ED4981B1 == 1)
  {
    return [a1 rowCount];
  }

  else
  {
    return 0;
  }
}

- (void)_setUIKitEngineTrackingOn:()_UILayoutEngineStatistics
{
  v5 = [a1 _UIKitEngineTrackingOn];
  if (!a3 || (v5 & 1) != 0)
  {
    if (a3 & 1) != 0 || ((v5 ^ 1))
    {
      return;
    }

    v7 = a1;
    v6 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E695E118];
    v7 = a1;
  }

  objc_setAssociatedObject(v7, &_UIKitEngineTrackingKey, v6, 0);
}

@end