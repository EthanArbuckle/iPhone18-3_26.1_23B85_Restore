@interface _UIHIDPathCollection
- (BOOL)hasPathWithId:(id)id;
- (_UIHIDPathCollection)init;
- (__IOHIDEvent)_createCollectionEventForEvent:(__IOHIDEvent *)event;
- (id)hidEventFromCurrentState;
- (id)pathsInPhase:(int64_t)phase;
- (id)pathsTouching;
- (unsigned)_collectionMask;
- (void)addPath:(id)path;
- (void)dealloc;
- (void)removePath:(id)path;
- (void)updateWithHIDEvent:(__IOHIDEvent *)event;
@end

@implementation _UIHIDPathCollection

- (_UIHIDPathCollection)init
{
  v6.receiver = self;
  v6.super_class = _UIHIDPathCollection;
  v2 = [(_UIHIDPathCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pathsById = v2->_pathsById;
    v2->_pathsById = v3;

    v2->_digitizerSenderID = 0x8000000800A15171;
  }

  return v2;
}

- (void)dealloc
{
  hidEvent = self->_hidEvent;
  if (hidEvent)
  {
    CFRelease(hidEvent);
    self->_hidEvent = 0;
  }

  v4.receiver = self;
  v4.super_class = _UIHIDPathCollection;
  [(_UIHIDPathCollection *)&v4 dealloc];
}

- (BOOL)hasPathWithId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_pathsById objectForKey:id];
  v4 = v3 != 0;

  return v4;
}

- (id)pathsInPhase:(int64_t)phase
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_pathsById objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 deliveryPhase] == phase)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)pathsTouching
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_pathsById objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isTouching])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addPath:(id)path
{
  pathsById = self->_pathsById;
  pathCopy = path;
  pathId = [pathCopy pathId];
  [(NSMutableDictionary *)pathsById setObject:pathCopy forKey:pathId];
}

- (void)removePath:(id)path
{
  pathsById = self->_pathsById;
  pathId = [path pathId];
  [(NSMutableDictionary *)pathsById removeObjectForKey:pathId];
}

- (void)updateWithHIDEvent:(__IOHIDEvent *)event
{
  hidEvent = self->_hidEvent;
  if (hidEvent != event)
  {
    if (hidEvent)
    {
      CFRelease(hidEvent);
    }

    self->_hidEvent = event;
    if (event)
    {
      CFRetain(event);
    }

    self->_machTimestamp = IOHIDEventGetTimeStamp();
  }
}

- (unsigned)_collectionMask
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_pathsById objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v16;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      v11 = v8;
      if (*v16 != v9)
      {
        objc_enumerationMutation(objectEnumerator);
      }

      deliveryPhase = [*(*(&v15 + 1) + 8 * i) deliveryPhase];
      v8 |= deliveryPhase == 6 || deliveryPhase == 4;
      v7 |= deliveryPhase == 5;
      v5 |= deliveryPhase == 6;
      v6 |= (deliveryPhase & 0xFFFFFFFFFFFFFFFDLL) == 1;
    }

    v13 = deliveryPhase;
    v4 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v4);

  if ((v11 & 1) != 0 || (v13 | 2) == 6)
  {
    if (v7)
    {
      result = 6;
      goto LABEL_16;
    }

    result = 2;
LABEL_14:
    if (!(v8 & 1 | ((v5 & 1) == 0)))
    {
      result |= 0x20u;
    }

    goto LABEL_16;
  }

  if ((v7 & 1) == 0)
  {
    result = 0;
    goto LABEL_14;
  }

  result = 4;
LABEL_16:
  if (v6)
  {
    result |= 1u;
  }

  return result;
}

- (__IOHIDEvent)_createCollectionEventForEvent:(__IOHIDEvent *)event
{
  v18 = *MEMORY[0x1E69E9840];
  [(_UIHIDPathCollection *)self _collectionMask];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_pathsById objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    LOBYTE(v6) = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 deliveryPhase] == 4 || objc_msgSend(v9, "deliveryPhase") == 5;
        v6 = v10 | v6 & 1;
        [v9 deliveryPhase];
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  [UIApp _supportsIndirectInputEvents];
  IOHIDEventSetIntegerValue();
  IOHIDEventGetIntegerValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventGetType();
  IOHIDEventSetSenderID();
  return DigitizerEvent;
}

- (id)hidEventFromCurrentState
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = _UIEventHIDGetChildStylusEvent(self->_hidEvent);
  selfCopy = self;
  v4 = BKSHIDEventGetBaseAttributes();
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  contextID = [v6 contextID];
  v10 = selfCopy;
  selfCopy->_locus = 0;
  v47 = [(_UIHIDPathCollection *)v10 _createCollectionEventForEvent:v10->_hidEvent];
  v11 = [(NSMutableDictionary *)v10->_pathsById count];
  MEMORY[0x1EEE9AC00](v11);
  v45 = v38 - v12;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  objectEnumerator = [(NSMutableDictionary *)v10->_pathsById objectEnumerator];
  v49 = [objectEnumerator countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v49)
  {

LABEL_26:
    CFRelease(v47);
    v47 = 0;
    goto LABEL_29;
  }

  v38[3] = contextID;
  v39 = v38;
  v40 = v8;
  v41 = v6;
  v14 = 0;
  v48 = *v52;
  v44 = *MEMORY[0x1E695E480];
  v42 = v3;
  v43 = objectEnumerator;
  do
  {
    for (i = 0; i != v49; ++i)
    {
      if (*v52 != v48)
      {
        objc_enumerationMutation(v43);
      }

      v16 = *(*(&v51 + 1) + 8 * i);
      if ([v16 deliveryPhase])
      {
        v50 = v14;
        if (v3)
        {
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          IOHIDEventGetFloatValue();
          pathId = [v16 pathId];
          [pathId intValue];
          [v16 identity];
          [v16 position];
          [v16 position];
          DigitizerStylusEventWithPolarOrientation = IOHIDEventCreateDigitizerStylusEventWithPolarOrientation();

          IOHIDEventSetFloatValue();
        }

        else
        {
          pathId2 = [v16 pathId];
          [pathId2 intValue];
          [v16 identity];
          [v16 position];
          [v16 position];
          [v16 force];
          DigitizerStylusEventWithPolarOrientation = IOHIDEventCreateDigitizerFingerEvent();

          [v16 majorRadius];
          IOHIDEventSetFloatValue();
          v3 = v42;
          IOHIDEventGetIntegerValue();
          IOHIDEventSetIntegerValue();
        }

        [v16 generationCount];
        IOHIDEventSetIntegerValue();
        pathId3 = [v16 pathId];
        intValue = [pathId3 intValue];

        [v16 position];
        v23 = v22;
        [v16 position];
        v25 = v24;
        [v16 position];
        v27 = v26;
        [v16 position];
        v28 = v50;
        v29 = &v45[36 * v50];
        *v29 = intValue;
        *(v29 + 1) = intValue;
        v31 = v30;
        *(v29 + 1) = 0;
        *(v29 + 4) = 0;
        *(v29 + 5) = v23;
        *(v29 + 6) = v25;
        *(v29 + 7) = v27;
        *(v29 + 8) = v31;
        IOHIDEventAppendEvent();
        CFRelease(DigitizerStylusEventWithPolarOrientation);
        v14 = v28 + 1;
      }
    }

    v32 = v43;
    v49 = [v43 countByEnumeratingWithState:&v51 objects:v55 count:16];
  }

  while (v49);

  v6 = v41;
  v8 = v40;
  if (!v14)
  {
    goto LABEL_26;
  }

  v33 = selfCopy;
  Type = IOHIDEventGetType();
  hidEvent = v33->_hidEvent;
  if (Type != 17)
  {
    hidEvent = _UIEventHIDGetChildPointerEvent(hidEvent);
  }

  if (hidEvent)
  {
    IOHIDEventAppendEvent();
  }

  if (v8)
  {
    [v8 initialTouchTimestamp];
  }

  else
  {
    CFAbsoluteTimeGetCurrent();
  }

  BKSHIDEventSetDigitizerInfoWithSubEventInfos();
LABEL_29:

  v36 = v47;

  return v36;
}

@end