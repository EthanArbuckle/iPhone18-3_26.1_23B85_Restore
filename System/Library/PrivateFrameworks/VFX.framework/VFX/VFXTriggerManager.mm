@interface VFXTriggerManager
- (BOOL)isPresentation;
- (VFXTriggerManager)initWithCoder:(id)coder;
- (id)copy;
- (void)_updateActiveTriggerTypesWithMoveNeeded:(BOOL)needed;
- (void)dealloc;
- (void)enableTriggerTypes:(id)types;
- (void)physicsWorld:(id)world didBeginContact:(id)contact;
- (void)physicsWorld:(id)world didEndContact:(id)contact;
- (void)physicsWorld:(id)world didUpdateContact:(id)contact;
- (void)setHandTrackingEnabled:(BOOL)enabled;
- (void)setWorld:(id)world;
- (void)triggerTouch:(id)touch event:(id)event fromView:(id)view;
@end

@implementation VFXTriggerManager

- (VFXTriggerManager)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = VFXTriggerManager;
  v6 = [(VFXTriggerManager *)&v10 init];
  if (v6 && objc_msgSend_containsValueForKey_(coder, v4, @"isHandTrackingEnabled", v5))
  {
    v6->_isHandTrackingEnabled = objc_msgSend_decodeBoolForKey_(coder, v7, @"isHandTrackingEnabled", v8);
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_enableTriggerTypes_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = VFXTriggerManager;
  [(VFXTriggerManager *)&v4 dealloc];
}

- (BOOL)isPresentation
{
  Weak = objc_loadWeak(&self->_world);

  return objc_msgSend_isPresentationObject(Weak, v3, v4, v5);
}

- (void)triggerTouch:(id)touch event:(id)event fromView:(id)view
{
  v8 = objc_msgSend_phase(event, a2, touch, event);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if ((*&self->_enabledTypes & 2) == 0)
      {
        return;
      }
    }

    else if (v8 != 4 || (*&self->_enabledTypes & 0x10) == 0)
    {
      return;
    }
  }

  else if ((v8 - 1) >= 2)
  {
    if (v8 || (*&self->_enabledTypes & 1) == 0)
    {
      return;
    }
  }

  else if ((*&self->_enabledTypes & 4) == 0)
  {
    return;
  }

  objc_loadWeak(&self->_world);

  MEMORY[0x1EEE66B58](_TtC3VFX8VFXScene, sel_appendWithTrigger_touchEvent_view_inWorld_, touch, event);
}

- (void)physicsWorld:(id)world didBeginContact:(id)contact
{
  objc_loadWeak(&self->_world);

  MEMORY[0x1EEE66B58](_TtC3VFX8VFXScene, sel_appendWithTrigger_contact_inWorld_, @"VFXTriggerTypeCollisionBegan", contact);
}

- (void)physicsWorld:(id)world didUpdateContact:(id)contact
{
  objc_loadWeak(&self->_world);

  MEMORY[0x1EEE66B58](_TtC3VFX8VFXScene, sel_appendWithTrigger_contact_inWorld_, @"VFXTriggerTypeCollisionUpdate", contact);
}

- (void)physicsWorld:(id)world didEndContact:(id)contact
{
  objc_loadWeak(&self->_world);

  MEMORY[0x1EEE66B58](_TtC3VFX8VFXScene, sel_appendWithTrigger_contact_inWorld_, @"VFXTriggerTypeCollisionEnded", contact);
}

- (id)copy
{
  result = objc_alloc_init(VFXTriggerManager);
  *(result + 4) = self->_enabledTypes;
  *(result + 33) = self->_isHandTrackingEnabled;
  *(result + 32) = self->_isHandTrackingScriptPresent;
  return result;
}

- (void)setWorld:(id)world
{
  objc_storeWeak(&self->_world, world);
  if (world)
  {
    objc_msgSend_registerWithTriggerManager_inWorld_(_TtC3VFX8VFXScene, v5, self, world);
    v9 = objc_msgSend_physicsWorld(world, v6, v7, v8);
    if (!objc_msgSend_contactDelegate(v9, v10, v11, v12))
    {
      v16 = objc_msgSend_physicsWorld(world, v13, v14, v15);

      MEMORY[0x1EEE66B58](v16, sel_setContactDelegate_, self, v17);
    }
  }
}

- (void)_updateActiveTriggerTypesWithMoveNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ((*&self->_enabledTypes & 0x400) != 0)
  {
    if (self->_handTrackerActive)
    {
      goto LABEL_7;
    }

    v10 = objc_msgSend_world(self, a2, needed, v3);
    objc_msgSend_start_(_TtC3VFX14VFXHandTracker, v11, v10, v12);
    v9 = 1;
  }

  else
  {
    if (!self->_handTrackerActive)
    {
      goto LABEL_7;
    }

    v6 = objc_msgSend_world(self, a2, needed, v3);
    objc_msgSend_stop_(_TtC3VFX14VFXHandTracker, v7, v6, v8);
    v9 = 0;
  }

  self->_handTrackerActive = v9;
LABEL_7:
  if ((*&self->_enabledTypes & 0x800) != 0)
  {
    if (!self->_gazeTrackerActive)
    {
      self->_gazeTrackerActive = 1;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1AF3371F8;
      block[3] = &unk_1E7A7A770;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (self->_gazeTrackerActive)
  {
    Weak = objc_loadWeak(&self->_world);
    objc_msgSend_stop_(_TtC3VFX14VFXGazeTracker, v14, Weak, v15);
    self->_gazeTrackerActive = 0;
  }

  motionTracker = self->_motionTracker;
  if ((*&self->_enabledTypes & 0x1000) != 0)
  {
    if (!motionTracker)
    {
      v17 = [_TtC3VFX16VFXMotionTracker alloc];
      v18 = objc_loadWeak(&self->_world);
      self->_motionTracker = objc_msgSend_initWithWorld_(v17, v19, v18, v20);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1AF337240;
      v23[3] = &unk_1E7A7A770;
      v23[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v23);
    }
  }

  else if (motionTracker)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF33724C;
    v22[3] = &unk_1E7A7A770;
    v22[4] = motionTracker;
    dispatch_async(MEMORY[0x1E69E96A0], v22);
    self->_motionTracker = 0;
  }

  if (((((*&self->_enabledTypes & 8) == 0) ^ neededCopy) & 1) == 0)
  {
    if (objc_loadWeak(&self->_world))
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1AF337288;
      v21[3] = &unk_1E7A7A770;
      v21[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v21);
    }
  }
}

- (void)enableTriggerTypes:(id)types
{
  if (objc_msgSend_isPresentation(self, a2, types, v3))
  {
    objc_sync_enter(self);
    enabledTypes = self->_enabledTypes;
    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFFE | objc_msgSend_containsObject_(types, v7, @"VFXTriggerTypeTapBegan", v8);
    if (objc_msgSend_containsObject_(types, v9, @"VFXTriggerTypeTapEnded", v10))
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFFD | v13;
    if (objc_msgSend_containsObject_(types, v11, @"VFXTriggerTypeTapDragged", v12))
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFFB | v16;
    if (objc_msgSend_containsObject_(types, v14, @"VFXTriggerTypeTapCancelled", v15))
    {
      v19 = 16;
    }

    else
    {
      v19 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFEF | v19;
    if (objc_msgSend_containsObject_(types, v17, @"VFXTriggerTypeMouseMoved", v18))
    {
      v22 = 8;
    }

    else
    {
      v22 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFF7 | v22;
    if (objc_msgSend_containsObject_(types, v20, @"VFXTriggerTypeKeyDown", v21))
    {
      v25 = 32;
    }

    else
    {
      v25 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFDF | v25;
    if (objc_msgSend_containsObject_(types, v23, @"VFXTriggerTypeKeyUp", v24))
    {
      v28 = 64;
    }

    else
    {
      v28 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFFBF | v28;
    if (objc_msgSend_containsObject_(types, v26, @"VFXTriggerTypeCollisionBegan", v27))
    {
      v31 = 128;
    }

    else
    {
      v31 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFF7F | v31;
    if (objc_msgSend_containsObject_(types, v29, @"VFXTriggerTypeCollisionUpdate", v30))
    {
      v34 = 256;
    }

    else
    {
      v34 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFEFF | v34;
    if (objc_msgSend_containsObject_(types, v32, @"VFXTriggerTypeCollisionEnded", v33))
    {
      v37 = 512;
    }

    else
    {
      v37 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFDFF | v37;
    v38 = objc_msgSend_containsObject_(types, v35, @"VFXTriggerTypeHandTracking", v36);
    self->_isHandTrackingScriptPresent = v38;
    if (v38)
    {
      if (self->_isHandTrackingEnabled)
      {
        v41 = 1024;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xFBFF | v41;
    if (objc_msgSend_containsObject_(types, v39, @"VFXTriggerTypeGazeTracking", v40))
    {
      v55 = 2048;
    }

    else
    {
      v55 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xF7FF | v55;
    if (objc_msgSend_containsObject_(types, v53, @"VFXTriggerTypeMotionTracking", v54))
    {
      v58 = 4096;
    }

    else
    {
      v58 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xEFFF | v58;
    if (objc_msgSend_containsObject_(types, v56, @"VFXTriggerTypeParticleCollision", v57))
    {
      v61 = 0x2000;
    }

    else
    {
      v61 = 0;
    }

    *&self->_enabledTypes = *&self->_enabledTypes & 0xDFFF | v61;
    objc_msgSend__updateActiveTriggerTypesWithMoveNeeded_(self, v59, (*&enabledTypes >> 3) & 1, v60);

    objc_sync_exit(self);
  }

  else
  {
    Weak = objc_loadWeak(&self->_world);
    v46 = objc_msgSend_presentationWorld(Weak, v43, v44, v45);
    v50 = objc_msgSend_triggerManager(v46, v47, v48, v49);

    objc_msgSend_enableTriggerTypes_(v50, v51, types, v52);
  }
}

- (void)setHandTrackingEnabled:(BOOL)enabled
{
  if (self->_isHandTrackingEnabled != enabled)
  {
    objc_sync_enter(self);
    self->_isHandTrackingEnabled = enabled;
    if (self->_isHandTrackingScriptPresent && enabled)
    {
      v5 = 1024;
    }

    else
    {
      v5 = 0;
    }

    *&self->_enabledTypes = v5 | *&self->_enabledTypes & 0xFBFF;
    Weak = objc_loadWeak(&self->_world);
    if (objc_msgSend_isPresentationObject(Weak, v7, v8, v9))
    {
      objc_msgSend__updateActiveTriggerTypesWithMoveNeeded_(self, v10, (*&self->_enabledTypes >> 3) & 1, v11);
    }

    else
    {
      isHandTrackingEnabled = self->_isHandTrackingEnabled;
      v13 = objc_loadWeak(&self->_world);
      v17 = objc_msgSend_presentationWorld(v13, v14, v15, v16);
      v21 = objc_msgSend_triggerManager(v17, v18, v19, v20);
      objc_msgSend_setIsHandTrackingEnabled_(v21, v22, isHandTrackingEnabled, v23);
    }

    objc_sync_exit(self);
  }
}

@end