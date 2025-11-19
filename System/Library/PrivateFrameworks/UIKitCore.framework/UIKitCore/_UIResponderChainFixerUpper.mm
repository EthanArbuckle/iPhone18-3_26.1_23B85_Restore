@interface _UIResponderChainFixerUpper
- (_UIResponderChainFixerUpper)init;
- (id)_nextResponders;
- (id)_recursiveDescription:(id)a3;
- (id)_recursiveDescriptionStep:(unint64_t)a3;
- (id)description;
- (void)_callResponder:(id)a3 phase:(int64_t)a4 components:(id)a5 event:(id)a6;
- (void)_deliverComponents:(id)a3 phase:(int64_t)a4 forEvent:(id)a5 toResponder:(id)a6;
- (void)_recordDeliveryOfComponents:(id)a3 toResponder:(id)a4;
- (void)_removeDeliveryRecordForComponents:(id)a3;
- (void)_snapshotDeliveryOfComponents:(id)a3 map:(id)a4 block:(id)a5;
- (void)deliverPressesEvent:(id)a3 toResponder:(id)a4;
- (void)deliverTouchesEvent:(id)a3 toResponder:(id)a4;
- (void)forward:(id)a3 phase:(int64_t)a4 withEvent:(id)a5 fromResponder:(id)a6;
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

- (void)_snapshotDeliveryOfComponents:(id)a3 map:(id)a4 block:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = self;
  v19 = [(_UIResponderChainFixerUpper *)self currentDelivery];
  v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v9 keyEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ([v8 containsObject:{v17, v19}])
        {
          v18 = [v9 objectForKey:v17];
          [v11 setObject:v18 forKey:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [(_UIResponderChainFixerUpper *)v20 setCurrentDelivery:v11];
  v10[2](v10);
  [(_UIResponderChainFixerUpper *)v20 setCurrentDelivery:v19];
}

- (void)deliverTouchesEvent:(id)a3 toResponder:(id)a4
{
  v9 = a3;
  v6 = a4;
  for (i = 0; i != 5; ++i)
  {
    v8 = [v9 _touchesForResponder:v6 withPhase:i];
    if (v8)
    {
      [(_UIResponderChainFixerUpper *)self _deliverComponents:v8 phase:i forEvent:v9 toResponder:v6];
      [UIApp _registerEstimatedTouches:v8 event:v9 forTouchable:v6];
    }
  }
}

- (void)deliverPressesEvent:(id)a3 toResponder:(id)a4
{
  v9 = a3;
  v6 = a4;
  for (i = 0; i != 5; ++i)
  {
    v8 = [v9 _pressesForResponder:v6 withPhase:i];
    if (v8)
    {
      [(_UIResponderChainFixerUpper *)self _deliverComponents:v8 phase:i forEvent:v9 toResponder:v6];
    }
  }
}

- (void)_deliverComponents:(id)a3 phase:(int64_t)a4 forEvent:(id)a5 toResponder:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v11 || ![v11 count])
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_UIResponderChainFixerUpper.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"components != nil && components.count > 0"}];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDelivery", &_deliverComponents_phase_forEvent_toResponder____s_category);
  if (*CategoryCachedImpl)
  {
    v25 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v13;
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
      v40 = a4;
      v41 = 2112;
      v42 = v11;
      v43 = 2112;
      v44 = v30;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Delivering phase %ld components %@ to responder %@", buf, 0x20u);
    }
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v15 = v11;
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
              v21 = [v20 _eventComponentType];
              if (v20)
              {
                v22 = v21 == 0;
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

    else if (a4 != 4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (!a4)
    {
      [(_UIResponderChainFixerUpper *)self _recordDeliveryOfComponents:v11 toResponder:v13];
      [(_UIResponderChainFixerUpper *)self _callResponder:v13 phase:0 components:v11 event:v12];
      goto LABEL_31;
    }

    if (a4 != 1)
    {
      goto LABEL_31;
    }
  }

  v23 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __77___UIResponderChainFixerUpper__deliverComponents_phase_forEvent_toResponder___block_invoke;
  v31[3] = &unk_1E70F36D0;
  v31[4] = self;
  v33 = a4;
  v32 = v12;
  [(_UIResponderChainFixerUpper *)self _snapshotDeliveryOfComponents:v11 map:v23 block:v31];

  if (a4 != 1)
  {
    [(_UIResponderChainFixerUpper *)self _removeDeliveryRecordForComponents:v11];
  }

LABEL_31:
}

- (id)_nextResponders
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [(_UIResponderChainFixerUpper *)self currentDelivery];
  if (!v4)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIResponderChainFixerUpper.m" lineNumber:225 description:@"Trying to enumerate responders without a current delivery record."];
  }

  v21 = self;
  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v4 keyEnumerator];
  v7 = [v6 allObjects];

  obj = v7;
  v24 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
        v10 = [v4 objectForKey:{v9, v21}];
        v11 = [v10 mutableCopy];
        v12 = [v11 firstObject];
        [v11 removeObjectAtIndex:0];
        v13 = [v5 objectForKey:v12];
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
        [v5 setObject:v18 forKey:v12];

        if ([v11 count])
        {
          [v4 setObject:v11 forKey:v9];
        }

        else
        {
          [v4 removeObjectForKey:v9];
        }
      }

      v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  [(_UIResponderChainFixerUpper *)v21 setCurrentDelivery:v4];

  return v5;
}

- (void)forward:(id)a3 phase:(int64_t)a4 withEvent:(id)a5 fromResponder:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = a5;
  v10 = a6;
  v11 = v10;
  if ((a4 - 3) < 2 || a4 == 1)
  {
    v13 = [(_UIResponderChainFixerUpper *)self _nextResponders];
    if ([v13 count])
    {
      if ([v13 count] == 1)
      {
        v14 = [v13 keyEnumerator];
        v15 = [v14 nextObject];

        v16 = [v13 objectForKey:v15];
        [(_UIResponderChainFixerUpper *)self _callResponder:v15 phase:a4 components:v16 event:v26];
      }

      else
      {
        v23 = v11;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = [v13 keyEnumerator];
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
              v22 = [(_UIResponderChainFixerUpper *)self currentDelivery];
              v27[0] = MEMORY[0x1E69E9820];
              v27[1] = 3221225472;
              v27[2] = __69___UIResponderChainFixerUpper_forward_phase_withEvent_fromResponder___block_invoke;
              v27[3] = &unk_1E70F4378;
              v28 = v13;
              v29 = v21;
              v30 = self;
              v32 = a4;
              v31 = v26;
              [(_UIResponderChainFixerUpper *)self _snapshotDeliveryOfComponents:v25 map:v22 block:v27];

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

  else if (!a4)
  {
    v12 = [v10 nextResponder];
    if (v12)
    {
      [(_UIResponderChainFixerUpper *)self _recordDeliveryOfComponents:v25 toResponder:v12];
      [(_UIResponderChainFixerUpper *)self _callResponder:v12 phase:0 components:v25 event:v26];
    }
  }
}

- (void)_callResponder:(id)a3 phase:(int64_t)a4 components:(id)a5 event:(id)a6
{
  v15 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v10 anyObject];
  v13 = [v12 _eventComponentType];

  if (v13 == 1)
  {
    if (a4 <= 2)
    {
      if (!a4)
      {
        [v15 pressesBegan:v10 withEvent:v11];
        goto LABEL_26;
      }

      if (a4 == 1)
      {
        [v15 pressesChanged:v10 withEvent:v11];
      }

      goto LABEL_23;
    }

    if (a4 == 3)
    {
      [v15 pressesEnded:v10 withEvent:v11];
      goto LABEL_23;
    }

    if (a4 == 4)
    {
      [v15 pressesCancelled:v10 withEvent:v11];
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v13)
  {
    if (!a4)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (a4 <= 2)
  {
    if (!a4)
    {
      [v15 touchesBegan:v10 withEvent:v11];
      goto LABEL_26;
    }

    if (a4 == 1)
    {
      [v15 touchesMoved:v10 withEvent:v11];
    }

    goto LABEL_23;
  }

  if (a4 == 3)
  {
    [v15 touchesEnded:v10 withEvent:v11];
    goto LABEL_23;
  }

  if (a4 != 4)
  {
LABEL_10:
    if (a4 == 5)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Invalid phase."];
    }

    goto LABEL_23;
  }

  [v15 touchesCancelled:v10 withEvent:v11];
LABEL_23:
  v14 = [(_UIResponderChainFixerUpper *)self currentDelivery];
  if ([v14 count])
  {
    [(_UIResponderChainFixerUpper *)self forward:v10 phase:a4 withEvent:v11 fromResponder:v15];
  }

LABEL_26:
}

- (void)_recordDeliveryOfComponents:(id)a3 toResponder:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 _eventComponentPhase];
        v14 = [v13 value];

        if (v14)
        {
          v19 = [MEMORY[0x1E696AAA8] currentHandler];
          [v19 handleFailureInMethod:a2 object:self file:@"_UIResponderChainFixerUpper.m" lineNumber:372 description:@"Only components in the begin phase can be recorded."];
        }

        v15 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
        v16 = [v15 objectForKey:v12];

        v17 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
        if (v16)
        {
          [v16 arrayByAddingObject:v7];
        }

        else
        {
          v25 = v7;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        }
        v18 = ;
        [v17 setObject:v18 forKey:v12];
      }

      v9 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)_removeDeliveryRecordForComponents:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 _eventComponentPhase];
        if ([v11 value] != 3 && objc_msgSend(v11, "value") != 4)
        {
          v13 = [MEMORY[0x1E696AAA8] currentHandler];
          [v13 handleFailureInMethod:a2 object:self file:@"_UIResponderChainFixerUpper.m" lineNumber:387 description:@"Only components in the ended or cancelled phase can be removed."];
        }

        v12 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
        [v12 removeObjectForKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  v7 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
    [v6 appendFormat:@"; currently tracking %lu components>\n", objc_msgSend(v9, "count")];

    v10 = [(_UIResponderChainFixerUpper *)self recursiveDescription];
    [v6 appendString:v10];
  }

  else
  {
    [v6 appendString:@">"];
  }

  return v6;
}

- (id)_recursiveDescription:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
    v7 = [v6 keyEnumerator];
    v8 = [v7 allObjects];
    v4 = [v5 setWithArray:v8];
  }

  v9 = [MEMORY[0x1E696AD60] string];
  v10 = [(_UIResponderChainFixerUpper *)self deliveryRecords];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___UIResponderChainFixerUpper__recursiveDescription___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v11 = v9;
  v15 = v11;
  v16 = self;
  [(_UIResponderChainFixerUpper *)self _snapshotDeliveryOfComponents:v4 map:v10 block:v14];

  v12 = v11;
  return v11;
}

- (id)_recursiveDescriptionStep:(unint64_t)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = [(_UIResponderChainFixerUpper *)self _nextResponders];
  if ([v5 count])
  {
    v6 = [v5 count];
    if (a3 && v6 == 1)
    {
      v7 = [v5 keyEnumerator];
      v8 = [v7 nextObject];

      v9 = objc_opt_new();
      v10 = v8;
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
      v26 = [(_UIResponderChainFixerUpper *)self _recursiveDescriptionStep:a3 + 1];
      [(__CFString *)v9 appendString:v26];
    }

    else
    {
      v9 = objc_opt_new();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = [v5 keyEnumerator];
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
            v19 = [v5 objectForKey:v18];
            [&stru_1EFB14550 stringByPaddingToLength:a3 withString:@" " startingAtIndex:0];
            v21 = v20 = v5;
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
            v25 = [(_UIResponderChainFixerUpper *)self currentDelivery];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __57___UIResponderChainFixerUpper__recursiveDescriptionStep___block_invoke_2;
            v30[3] = &unk_1E7107CE8;
            v31 = v9;
            v32 = v18;
            v33 = self;
            v34 = a3;
            [(_UIResponderChainFixerUpper *)self _snapshotDeliveryOfComponents:v19 map:v25 block:v30];

            v5 = v20;
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