@interface _UIResponderChainFixerUpper
- (_UIResponderChainFixerUpper)init;
- (id)_nextResponders;
- (id)_recursiveDescription:(id)description;
- (id)_recursiveDescriptionStep:(unint64_t)step;
- (id)description;
- (void)_callResponder:(id)responder phase:(int64_t)phase components:(id)components event:(id)event;
- (void)_deliverComponents:(id)components phase:(int64_t)phase forEvent:(id)event toResponder:(id)responder;
- (void)_recordDeliveryOfComponents:(id)components toResponder:(id)responder;
- (void)_removeDeliveryRecordForComponents:(id)components;
- (void)_snapshotDeliveryOfComponents:(id)components map:(id)map block:(id)block;
- (void)deliverPressesEvent:(id)event toResponder:(id)responder;
- (void)deliverTouchesEvent:(id)event toResponder:(id)responder;
- (void)forward:(id)forward phase:(int64_t)phase withEvent:(id)event fromResponder:(id)responder;
@end

@implementation _UIResponderChainFixerUpper

- (_UIResponderChainFixerUpper)init
{
  v6.receiver = self;
  v6.super_class = _UIResponderChainFixerUpper;
  v2 = [(_UIResponderChainFixerUpper *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    deliveryRecords = v2->_deliveryRecords;
    v2->_deliveryRecords = v3;
  }

  return v2;
}

- (void)_snapshotDeliveryOfComponents:(id)components map:(id)map block:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  mapCopy = map;
  blockCopy = block;
  selfCopy = self;
  currentDelivery = [(_UIResponderChainFixerUpper *)self currentDelivery];
  v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  keyEnumerator = [mapCopy keyEnumerator];
  v13 = [keyEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ([componentsCopy containsObject:{v17, currentDelivery}])
        {
          v18 = [mapCopy objectForKey:v17];
          [v11 setObject:v18 forKey:v17];
        }
      }

      v14 = [keyEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [(_UIResponderChainFixerUpper *)selfCopy setCurrentDelivery:v11];
  blockCopy[2](blockCopy);
  [(_UIResponderChainFixerUpper *)selfCopy setCurrentDelivery:currentDelivery];
}

- (void)deliverTouchesEvent:(id)event toResponder:(id)responder
{
  eventCopy = event;
  responderCopy = responder;
  for (i = 0; i != 5; ++i)
  {
    v8 = [eventCopy _touchesForResponder:responderCopy withPhase:i];
    if (v8)
    {
      [(_UIResponderChainFixerUpper *)self _deliverComponents:v8 phase:i forEvent:eventCopy toResponder:responderCopy];
      [UIApp _registerEstimatedTouches:v8 event:eventCopy forTouchable:responderCopy];
    }
  }
}

- (void)deliverPressesEvent:(id)event toResponder:(id)responder
{
  eventCopy = event;
  responderCopy = responder;
  for (i = 0; i != 5; ++i)
  {
    v8 = [eventCopy _pressesForResponder:responderCopy withPhase:i];
    if (v8)
    {
      [(_UIResponderChainFixerUpper *)self _deliverComponents:v8 phase:i forEvent:eventCopy toResponder:responderCopy];
    }
  }
}

- (void)_deliverComponents:(id)components phase:(int64_t)phase forEvent:(id)event toResponder:(id)responder
{
  v45 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  eventCopy = event;
  responderCopy = responder;
  if (!componentsCopy || ![componentsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIResponderChainFixerUpper.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"components != nil && components.count > 0"}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDelivery", &_deliverComponents_phase_forEvent_toResponder____s_category);
  if (*CategoryCachedImpl)
  {
    v25 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = responderCopy;
      if (v26)
      {
        v27 = MEMORY[0x1E696AEC0];
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [v27 stringWithFormat:@"<%@: %p>", v29, v26];
      }

      else
      {
        v30 = @"(nil)";
      }

      *buf = 134218498;
      phaseCopy = phase;
      v41 = 2112;
      v42 = componentsCopy;
      v43 = 2112;
      v44 = v30;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Delivering phase %ld components %@ to responder %@", buf, 0x20u);
    }
  }

  if (phase > 2)
  {
    if (phase == 3)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v15 = componentsCopy;
      v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v35;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v35 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v34 + 1) + 8 * i);
            if ([v20 _eventComponentType] == 1)
            {
              [v20 setSentPressesEnded:1];
            }

            else
            {
              _eventComponentType = [v20 _eventComponentType];
              if (v20)
              {
                v22 = _eventComponentType == 0;
              }

              else
              {
                v22 = 0;
              }

              if (v22)
              {
                v20[118] |= 8u;
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v17);
      }
    }

    else if (phase != 4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (!phase)
    {
      [(_UIResponderChainFixerUpper *)self _recordDeliveryOfComponents:componentsCopy toResponder:responderCopy];
      [(_UIResponderChainFixerUpper *)self _callResponder:responderCopy phase:0 components:componentsCopy event:eventCopy];
      goto LABEL_31;
    }

    if (phase != 1)
    {
      goto LABEL_31;
    }
  }

  deliveryRecords = [(_UIResponderChainFixerUpper *)self deliveryRecords];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __77___UIResponderChainFixerUpper__deliverComponents_phase_forEvent_toResponder___block_invoke;
  v31[3] = &unk_1E70F36D0;
  v31[4] = self;
  phaseCopy2 = phase;
  v32 = eventCopy;
  [(_UIResponderChainFixerUpper *)self _snapshotDeliveryOfComponents:componentsCopy map:deliveryRecords block:v31];

  if (phase != 1)
  {
    [(_UIResponderChainFixerUpper *)self _removeDeliveryRecordForComponents:componentsCopy];
  }

LABEL_31:
}

- (id)_nextResponders
{
  v30 = *MEMORY[0x1E69E9840];
  currentDelivery = [(_UIResponderChainFixerUpper *)self currentDelivery];
  if (!currentDelivery)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIResponderChainFixerUpper.m" lineNumber:225 description:@"Trying to enumerate responders without a current delivery record."];
  }

  selfCopy = self;
  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  keyEnumerator = [currentDelivery keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  obj = allObjects;
  v24 = [allObjects countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    v23 = *v26;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [currentDelivery objectForKey:{v9, selfCopy}];
        v11 = [v10 mutableCopy];
        firstObject = [v11 firstObject];
        [v11 removeObjectAtIndex:0];
        v13 = [v5 objectForKey:firstObject];
        v14 = [v13 mutableCopy];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = objc_opt_new();
        }

        v17 = v16;

        [v17 addObject:v9];
        v18 = [v17 copy];
        [v5 setObject:v18 forKey:firstObject];

        if ([v11 count])
        {
          [currentDelivery setObject:v11 forKey:v9];
        }

        else
        {
          [currentDelivery removeObjectForKey:v9];
        }
      }

      v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  [(_UIResponderChainFixerUpper *)selfCopy setCurrentDelivery:currentDelivery];

  return v5;
}

- (void)forward:(id)forward phase:(int64_t)phase withEvent:(id)event fromResponder:(id)responder
{
  v38 = *MEMORY[0x1E69E9840];
  forwardCopy = forward;
  eventCopy = event;
  responderCopy = responder;
  v11 = responderCopy;
  if ((phase - 3) < 2 || phase == 1)
  {
    _nextResponders = [(_UIResponderChainFixerUpper *)self _nextResponders];
    if ([_nextResponders count])
    {
      if ([_nextResponders count] == 1)
      {
        keyEnumerator = [_nextResponders keyEnumerator];
        nextObject = [keyEnumerator nextObject];

        v16 = [_nextResponders objectForKey:nextObject];
        [(_UIResponderChainFixerUpper *)self _callResponder:nextObject phase:phase components:v16 event:eventCopy];
      }

      else
      {
        v23 = v11;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = [_nextResponders keyEnumerator];
        v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v34;
          do
          {
            v20 = 0;
            do
            {
              if (*v34 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v33 + 1) + 8 * v20);
              currentDelivery = [(_UIResponderChainFixerUpper *)self currentDelivery];
              v27[0] = MEMORY[0x1E69E9820];
              v27[1] = 3221225472;
              v27[2] = __69___UIResponderChainFixerUpper_forward_phase_withEvent_fromResponder___block_invoke;
              v27[3] = &unk_1E70F4378;
              v28 = _nextResponders;
              v29 = v21;
              selfCopy = self;
              phaseCopy = phase;
              v31 = eventCopy;
              [(_UIResponderChainFixerUpper *)self _snapshotDeliveryOfComponents:forwardCopy map:currentDelivery block:v27];

              ++v20;
            }

            while (v18 != v20);
            v18 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v18);
        }

        v11 = v23;
      }
    }
  }

  else if (!phase)
  {
    nextResponder = [responderCopy nextResponder];
    if (nextResponder)
    {
      [(_UIResponderChainFixerUpper *)self _recordDeliveryOfComponents:forwardCopy toResponder:nextResponder];
      [(_UIResponderChainFixerUpper *)self _callResponder:nextResponder phase:0 components:forwardCopy event:eventCopy];
    }
  }
}

- (void)_callResponder:(id)responder phase:(int64_t)phase components:(id)components event:(id)event
{
  responderCopy = responder;
  componentsCopy = components;
  eventCopy = event;
  anyObject = [componentsCopy anyObject];
  _eventComponentType = [anyObject _eventComponentType];

  if (_eventComponentType == 1)
  {
    if (phase <= 2)
    {
      if (!phase)
      {
        [responderCopy pressesBegan:componentsCopy withEvent:eventCopy];
        goto LABEL_26;
      }

      if (phase == 1)
      {
        [responderCopy pressesChanged:componentsCopy withEvent:eventCopy];
      }

      goto LABEL_23;
    }

    if (phase == 3)
    {
      [responderCopy pressesEnded:componentsCopy withEvent:eventCopy];
      goto LABEL_23;
    }

    if (phase == 4)
    {
      [responderCopy pressesCancelled:componentsCopy withEvent:eventCopy];
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (_eventComponentType)
  {
    if (!phase)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (phase <= 2)
  {
    if (!phase)
    {
      [responderCopy touchesBegan:componentsCopy withEvent:eventCopy];
      goto LABEL_26;
    }

    if (phase == 1)
    {
      [responderCopy touchesMoved:componentsCopy withEvent:eventCopy];
    }

    goto LABEL_23;
  }

  if (phase == 3)
  {
    [responderCopy touchesEnded:componentsCopy withEvent:eventCopy];
    goto LABEL_23;
  }

  if (phase != 4)
  {
LABEL_10:
    if (phase == 5)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Invalid phase."];
    }

    goto LABEL_23;
  }

  [responderCopy touchesCancelled:componentsCopy withEvent:eventCopy];
LABEL_23:
  currentDelivery = [(_UIResponderChainFixerUpper *)self currentDelivery];
  if ([currentDelivery count])
  {
    [(_UIResponderChainFixerUpper *)self forward:componentsCopy phase:phase withEvent:eventCopy fromResponder:responderCopy];
  }

LABEL_26:
}

- (void)_recordDeliveryOfComponents:(id)components toResponder:(id)responder
{
  v27 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  responderCopy = responder;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [componentsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(componentsCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        _eventComponentPhase = [v12 _eventComponentPhase];
        value = [_eventComponentPhase value];

        if (value)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UIResponderChainFixerUpper.m" lineNumber:372 description:@"Only components in the begin phase can be recorded."];
        }

        deliveryRecords = [(_UIResponderChainFixerUpper *)self deliveryRecords];
        v16 = [deliveryRecords objectForKey:v12];

        deliveryRecords2 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
        if (v16)
        {
          [v16 arrayByAddingObject:responderCopy];
        }

        else
        {
          v25 = responderCopy;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        }
        v18 = ;
        [deliveryRecords2 setObject:v18 forKey:v12];
      }

      v9 = [componentsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)_removeDeliveryRecordForComponents:(id)components
{
  v19 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [componentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(componentsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        _eventComponentPhase = [v10 _eventComponentPhase];
        if ([_eventComponentPhase value] != 3 && objc_msgSend(_eventComponentPhase, "value") != 4)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UIResponderChainFixerUpper.m" lineNumber:387 description:@"Only components in the ended or cancelled phase can be removed."];
        }

        deliveryRecords = [(_UIResponderChainFixerUpper *)self deliveryRecords];
        [deliveryRecords removeObjectForKey:v10];
      }

      v7 = [componentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  deliveryRecords = [(_UIResponderChainFixerUpper *)self deliveryRecords];
  v8 = [deliveryRecords count];

  if (v8)
  {
    deliveryRecords2 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
    [v6 appendFormat:@"; currently tracking %lu components>\n", objc_msgSend(deliveryRecords2, "count")];

    recursiveDescription = [(_UIResponderChainFixerUpper *)self recursiveDescription];
    [v6 appendString:recursiveDescription];
  }

  else
  {
    [v6 appendString:@">"];
  }

  return v6;
}

- (id)_recursiveDescription:(id)description
{
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    v5 = MEMORY[0x1E695DFD8];
    deliveryRecords = [(_UIResponderChainFixerUpper *)self deliveryRecords];
    keyEnumerator = [deliveryRecords keyEnumerator];
    allObjects = [keyEnumerator allObjects];
    descriptionCopy = [v5 setWithArray:allObjects];
  }

  string = [MEMORY[0x1E696AD60] string];
  deliveryRecords2 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___UIResponderChainFixerUpper__recursiveDescription___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v11 = string;
  v15 = v11;
  selfCopy = self;
  [(_UIResponderChainFixerUpper *)self _snapshotDeliveryOfComponents:descriptionCopy map:deliveryRecords2 block:v14];

  v12 = v11;
  return v11;
}

- (id)_recursiveDescriptionStep:(unint64_t)step
{
  v42 = *MEMORY[0x1E69E9840];
  _nextResponders = [(_UIResponderChainFixerUpper *)self _nextResponders];
  if ([_nextResponders count])
  {
    v6 = [_nextResponders count];
    if (step && v6 == 1)
    {
      keyEnumerator = [_nextResponders keyEnumerator];
      nextObject = [keyEnumerator nextObject];

      v9 = objc_opt_new();
      v10 = nextObject;
      if (v10)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v11 stringWithFormat:@"<%@: %p>", v13, v10];
      }

      else
      {
        v14 = @"(nil)";
      }

      [(__CFString *)v9 appendFormat:@" - %@\n", v14];
      v26 = [(_UIResponderChainFixerUpper *)self _recursiveDescriptionStep:step + 1];
      [(__CFString *)v9 appendString:v26];
    }

    else
    {
      v9 = objc_opt_new();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = [_nextResponders keyEnumerator];
      v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v29 = *v38;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v37 + 1) + 8 * i);
            v19 = [_nextResponders objectForKey:v18];
            [&stru_1EFB14550 stringByPaddingToLength:step withString:@" " startingAtIndex:0];
            v21 = v20 = _nextResponders;
            [(__CFString *)v9 appendString:v21];

            [(__CFString *)v9 appendString:@" + "];
            v22 = objc_opt_new();
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __57___UIResponderChainFixerUpper__recursiveDescriptionStep___block_invoke;
            v35[3] = &unk_1E7119D58;
            v36 = v22;
            v23 = v22;
            [v19 enumerateObjectsUsingBlock:v35];
            v24 = [v23 componentsJoinedByString:{@", "}];
            [(__CFString *)v9 appendString:v24];

            [(__CFString *)v9 appendString:@":\n"];
            currentDelivery = [(_UIResponderChainFixerUpper *)self currentDelivery];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __57___UIResponderChainFixerUpper__recursiveDescriptionStep___block_invoke_2;
            v30[3] = &unk_1E7107CE8;
            v31 = v9;
            v32 = v18;
            selfCopy = self;
            stepCopy = step;
            [(_UIResponderChainFixerUpper *)self _snapshotDeliveryOfComponents:v19 map:currentDelivery block:v30];

            _nextResponders = v20;
          }

          v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v16);
      }
    }
  }

  else
  {
    v9 = &stru_1EFB14550;
  }

  return v9;
}

@end