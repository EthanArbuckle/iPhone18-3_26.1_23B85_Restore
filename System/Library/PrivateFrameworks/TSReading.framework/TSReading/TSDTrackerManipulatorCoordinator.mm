@interface TSDTrackerManipulatorCoordinator
+ (void)p_dynamicallySubclassGRForNotification:(id)a3;
+ (void)p_removeDynamicSubclass:(id)a3;
- (BOOL)relinquishTrackerManipulatorControl:(id)a3;
- (BOOL)takeControlWithTrackerManipulator:(id)a3;
- (TSDTrackerManipulatorCoordinator)init;
- (void)dealloc;
- (void)operationDidEnd;
- (void)operationWillEnd;
- (void)p_notifyControlChange;
@end

@implementation TSDTrackerManipulatorCoordinator

- (TSDTrackerManipulatorCoordinator)init
{
  v4.receiver = self;
  v4.super_class = TSDTrackerManipulatorCoordinator;
  v2 = [(TSDTrackerManipulatorCoordinator *)&v4 init];
  if (v2)
  {
    v2->mRegisteredTMs = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDTrackerManipulatorCoordinator;
  [(TSDTrackerManipulatorCoordinator *)&v3 dealloc];
}

- (BOOL)takeControlWithTrackerManipulator:(id)a3
{
  if (self->mControllingTM == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    if (a3 && ![(TSDTrackerManipulatorCoordinator *)self hasRegisteredTrackerManipulator:a3])
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTrackerManipulatorCoordinator takeControlWithTrackerManipulator:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTrackerManipulatorCoordinator.m"), 76, @"attempting to take control with an unregistered TM %@", a3}];
    }

    mControllingTM = self->mControllingTM;
    if (mControllingTM)
    {
      v8 = mControllingTM == a3;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = [(TSDTrackerManipulator *)mControllingTM allowTrackerManipulatorToTakeControl:a3];
      if (!v9)
      {
        return v9;
      }

      if (objc_opt_respondsToSelector())
      {
        [(TSDTrackerManipulator *)self->mControllingTM didRelinquishControl];
      }

      [objc_opt_class() p_removeDynamicSubclass:self->mControllingTM];

      self->mControllingTM = 0;
    }

    [objc_opt_class() p_dynamicallySubclassGRForNotification:a3];
    self->mControllingTM = a3;
    if (objc_opt_respondsToSelector())
    {
      [(TSDTrackerManipulator *)self->mControllingTM willTakeControl];
    }

    [(TSDTrackerManipulatorCoordinator *)self p_notifyControlChange];
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)relinquishTrackerManipulatorControl:(id)a3
{
  mControllingTM = self->mControllingTM;
  if (mControllingTM == a3)
  {
    v5 = [(TSDTrackerManipulator *)mControllingTM allowTrackerManipulatorToTakeControl:0];
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        [(TSDTrackerManipulator *)self->mControllingTM didRelinquishControl];
      }

      [objc_opt_class() p_removeDynamicSubclass:self->mControllingTM];

      self->mControllingTM = 0;
      [(TSDTrackerManipulatorCoordinator *)self p_notifyControlChange];
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)operationWillEnd
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMutableSet *)self->mRegisteredTMs copy];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 operationWillEnd];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)operationDidEnd
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMutableSet *)self->mRegisteredTMs copy];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v7++) operationDidEnd];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->mRegisteredTMs removeAllObjects];
  [(TSDTrackerManipulatorCoordinator *)self relinquishTrackerManipulatorControl:self->mControllingTM];
  if (self->mControllingTM)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTrackerManipulatorCoordinator operationDidEnd]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTrackerManipulatorCoordinator.m"];
    v11 = objc_opt_class();
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:151 description:{@"Controlling TM %@ would not give up control at the end of an operation", NSStringFromClass(v11)}];
  }
}

- (void)p_notifyControlChange
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableSet *)self->mRegisteredTMs copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 trackerManipulatorDidTakeControl:self->mControllingTM];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (void)p_dynamicallySubclassGRForNotification:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v4 = objc_opt_class();
  objc_sync_enter(v4);
  if (!sClassMap)
  {
    sClassMap = objc_alloc_init(MEMORY[0x277D6C320]);
  }

  Class = object_getClass(a3);
  if ([objc_msgSend(sClassMap "allValues")])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDTrackerManipulatorCoordinator p_dynamicallySubclassGRForNotification:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTrackerManipulatorCoordinator.m"), 208, @"trying to subclass something that is already subclassed %@", a3}];
  }

  else
  {
    v8 = [sClassMap objectForKey:Class];
    if (!v8)
    {
      v9 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"__TSDResetNotifying%s", class_getName(Class)), "UTF8String"];
      v10 = objc_opt_class();
      ClassPair = objc_allocateClassPair(v10, v9, 0);
      v8 = ClassPair;
      if (!ClassPair)
      {
        v12 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDTrackerManipulatorCoordinator p_dynamicallySubclassGRForNotification:]"];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTrackerManipulatorCoordinator.m"];
        v15 = objc_opt_class();
        [v12 handleFailureInFunction:v13 file:v14 lineNumber:227 description:{@"No dynamic subclass for %@!", NSStringFromClass(v15)}];
        goto LABEL_11;
      }

      class_addMethod(ClassPair, sel_reset, universalReset, "v@:");
      objc_registerClassPair(v8);
      [sClassMap setObject:v8 forUncopiedKey:Class];
    }

    object_setClass(a3, v8);
  }

LABEL_11:

  objc_sync_exit(v4);
}

+ (void)p_removeDynamicSubclass:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    Class = object_getClass(a3);
    if ([objc_msgSend(sClassMap "allValues")])
    {
      Superclass = class_getSuperclass(Class);
      object_setClass(a3, Superclass);
    }

    else
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDTrackerManipulatorCoordinator p_removeDynamicSubclass:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTrackerManipulatorCoordinator.m"), 242, @"removing dynamic subclass from GR %@ that doesn't have one!", a3}];
    }

    objc_sync_exit(v4);
  }
}

@end