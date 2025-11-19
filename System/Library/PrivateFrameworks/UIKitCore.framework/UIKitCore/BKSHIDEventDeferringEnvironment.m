@interface BKSHIDEventDeferringEnvironment
@end

@implementation BKSHIDEventDeferringEnvironment

void __84__BKSHIDEventDeferringEnvironment_UIKitAdditions__ui_cameraCaptureButtonEnvironment__block_invoke()
{
  v0 = [MEMORY[0x1E698E398] environmentWithIdentifier:@"cameraCaptureButton"];
  v1 = _MergedGlobals_1097;
  _MergedGlobals_1097 = v0;
}

void __97__BKSHIDEventDeferringEnvironment_UIKitAdditions_Internal__ui_systemKeyCommandOverlayEnvironment__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = qword_1ED49DEB8;
  v8 = qword_1ED49DEB8;
  if (!qword_1ED49DEB8)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getSBSKeyboardFocusServiceClass_block_invoke;
    v4[3] = &unk_1E70F2F20;
    v4[4] = &v5;
    __getSBSKeyboardFocusServiceClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 systemKeyCommandOverlayEnvironment];
  v3 = qword_1ED49DEA8;
  qword_1ED49DEA8 = v2;
}

@end