@interface _UIDragEventSample
+ (id)sampleFromHIDEvent:(__IOHIDEvent *)a3;
- ($F7B13D6E51BC3EBB4857CD228418B675)sampleFlags;
- (CAPoint3D)locationInWindow;
- (CAPoint3D)sceneLocation;
- (id)copyWithSampleFlags:(id *)a3;
- (id)hitTestWithEvent:(id)a3;
@end

@implementation _UIDragEventSample

+ (id)sampleFromHIDEvent:(__IOHIDEvent *)a3
{
  v34[16] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = _UIEventHIDUIWindowForHIDEvent();
  objc_storeStrong((v4 + 24), v5);
  v6 = BKSHIDEventGetBaseAttributes();
  *(v4 + 16) = [v6 contextID];

  v7 = IOHIDEventGetChildren();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  v10 = *MEMORY[0x1E69792C8];
  v9 = *(MEMORY[0x1E69792C8] + 8);
  v11 = *(MEMORY[0x1E69792C8] + 16);
  if (v8)
  {
    v12 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v7);
        }

        IOHIDEventGetFloatValue();
        v15 = v14;
        IOHIDEventGetFloatValue();
        v17 = v16;
        IOHIDEventGetFloatValue();
        v10 = v10 + v15;
        v9 = v9 + v17;
        v11 = v11 + v18;
      }

      v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  v19 = [v7 count];

  v20 = [(UIWindow *)v5 _fbsScene];
  v21 = v10 / v19;
  v22 = v9 / v19;
  *(v4 + 32) = v21;
  *(v4 + 40) = v22;
  *(v4 + 48) = v11 / v19;
  *(v4 + 56) = _UIConvertScenePoint3DToWindow(v20, v5, v21, v22);
  *(v4 + 64) = v23;
  *(v4 + 72) = v24;
  *(v4 + 8) = _UIEventHIDIsDragEventLocusType(a3, 2);
  *(v4 + 9) = _UIEventHIDIsDragEventLocusType(a3, 1);
  *(v4 + 10) = _UIEventHIDIsDragEventLocusType(a3, 3);
  *(v4 + 11) = _UIEventHIDIsDragEventLocusType(a3, 4);
  *&v30 = 0;
  *(&v30 + 1) = &v30;
  *&v31 = 0x2020000000;
  BYTE8(v31) = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = ___UIEventHIDAnyChildIsTouching_block_invoke_0;
  v34[3] = &unk_1E70F3838;
  v34[4] = &v30;
  _UIEventHIDEnumerateChildren(a3, 11, v34);
  LOBYTE(v19) = *(*(&v30 + 1) + 24);
  _Block_object_dispose(&v30, 8);
  *(v4 + 12) = v19 ^ 1;
  if (IOHIDEventGetType() == 11)
  {
    Children = IOHIDEventGetChildren();
    v26 = Children;
    if (Children)
    {
      Count = CFArrayGetCount(Children);
      if (Count)
      {
        v28 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v26, v28);
          if (IOHIDEventGetIntegerValue() == 65318 && IOHIDEventGetIntegerValue() == 2)
          {
            break;
          }

          if (Count == ++v28)
          {
            goto LABEL_17;
          }
        }

        *(v4 + 9) = 256;
      }
    }
  }

LABEL_17:

  return v4;
}

- (id)copyWithSampleFlags:(id *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = [(_UIDragEventSample *)self window];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = *&a3->var0.x;
  *(v5 + 48) = a3->var0.z;
  *(v5 + 32) = v8;
  z = a3->var1.z;
  *(v5 + 56) = *&a3->var1.x;
  *(v5 + 72) = z;
  *(v5 + 8) = a3->var2;
  *(v5 + 9) = a3->var3;
  *(v5 + 10) = a3->var4;
  *(v5 + 11) = a3->var5;
  *(v5 + 12) = a3->var6;
  *(v5 + 16) = self->_windowServerHitTestContextID;
  *(v5 + 13) = [(_UIDragEventSample *)self hasBeenDelivered];
  return v5;
}

- ($F7B13D6E51BC3EBB4857CD228418B675)sampleFlags
{
  *&retstr->var2 = 0;
  [(_UIDragEventSample *)self sceneLocation];
  retstr->var0.x = v5;
  retstr->var0.y = v6;
  retstr->var0.z = v7;
  [(_UIDragEventSample *)self locationInWindow];
  retstr->var1.x = v8;
  retstr->var1.y = v9;
  retstr->var1.z = v10;
  retstr->var2 = [(_UIDragEventSample *)self isApplicationEnter];
  retstr->var3 = [(_UIDragEventSample *)self isApplicationWithin];
  retstr->var4 = [(_UIDragEventSample *)self isApplicationExit];
  retstr->var5 = [(_UIDragEventSample *)self isPolicyDriven];
  result = [(_UIDragEventSample *)self isDragEnd];
  retstr->var6 = result;
  return result;
}

- (id)hitTestWithEvent:(id)a3
{
  v4 = a3;
  window = self->_window;
  if (window && ![(UIView *)window isHidden])
  {
    x = self->_sceneLocation.x;
    y = self->_sceneLocation.y;
    z = self->_sceneLocation.z;
    if (self->_isPolicyDriven)
    {
      v11 = self->_window;
      v12 = [(UIWindow *)&v11->super.super.super.isa _fbsScene];
      v6 = [(UIWindow *)v11 _hitTestLocation:v12 sceneLocationZ:self->_window inScene:v4 withWindowServerHitTestWindow:x event:y, z];
    }

    else
    {
      v6 = [UIWindow _globalHitTestForLocation:self->_window sceneLocationZ:v4 inWindowServerHitTestWindow:self->_sceneLocation.x withEvent:self->_sceneLocation.y, self->_sceneLocation.z];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CAPoint3D)sceneLocation
{
  x = self->_sceneLocation.x;
  y = self->_sceneLocation.y;
  z = self->_sceneLocation.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (CAPoint3D)locationInWindow
{
  x = self->_locationInWindow.x;
  y = self->_locationInWindow.y;
  z = self->_locationInWindow.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end