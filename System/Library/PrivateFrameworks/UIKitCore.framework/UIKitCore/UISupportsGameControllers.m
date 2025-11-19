@interface UISupportsGameControllers
@end

@implementation UISupportsGameControllers

uint64_t ___UISupportsGameControllers_block_invoke()
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UIFocusSupportsGameControllers, @"UIFocusSupportsGameControllers", _UIInternalPreferenceUpdateInteger) & 1) != 0 || !qword_1ED48B658)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = qword_1ED48B658 > 0;
  }

  _MergedGlobals_1334 = result;
  return result;
}

@end