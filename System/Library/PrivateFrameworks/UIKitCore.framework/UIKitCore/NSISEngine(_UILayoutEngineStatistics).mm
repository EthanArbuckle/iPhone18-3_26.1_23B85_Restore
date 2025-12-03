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
  block[4] = self;
  if (qword_1ED498248 != -1)
  {
    dispatch_once(&qword_1ED498248, block);
  }

  if (byte_1ED4981B1 == 1)
  {
    return [self rowCount];
  }

  else
  {
    return 0;
  }
}

- (void)_setUIKitEngineTrackingOn:()_UILayoutEngineStatistics
{
  _UIKitEngineTrackingOn = [self _UIKitEngineTrackingOn];
  if (!a3 || (_UIKitEngineTrackingOn & 1) != 0)
  {
    if (a3 & 1) != 0 || ((_UIKitEngineTrackingOn ^ 1))
    {
      return;
    }

    selfCopy2 = self;
    v6 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E695E118];
    selfCopy2 = self;
  }

  objc_setAssociatedObject(selfCopy2, &_UIKitEngineTrackingKey, v6, 0);
}

@end