@interface UIResponderChainFixerUpper
@end

@implementation UIResponderChainFixerUpper

void __77___UIResponderChainFixerUpper__deliverComponents_phase_forEvent_toResponder___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _nextResponders];
  if ([v2 count] == 1)
  {
    v3 = [v2 keyEnumerator];
    v4 = [v3 nextObject];

    v5 = [v2 objectForKey:v4];
    [*(a1 + 32) _callResponder:v4 phase:*(a1 + 48) components:v5 event:*(a1 + 40)];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v2;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v6 objectForKey:{v11, v17}];
          v13 = *(a1 + 32);
          v14 = [v13 currentDelivery];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __77___UIResponderChainFixerUpper__deliverComponents_phase_forEvent_toResponder___block_invoke_2;
          v18[3] = &unk_1E70F4378;
          v15 = *(a1 + 40);
          v18[4] = *(a1 + 32);
          v18[5] = v11;
          v21 = *(a1 + 48);
          v19 = v12;
          v20 = v15;
          v16 = v12;
          [v13 _snapshotDeliveryOfComponents:v16 map:v14 block:v18];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v2 = v17;
  }
}

void __69___UIResponderChainFixerUpper_forward_phase_withEvent_fromResponder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  [*(a1 + 48) _callResponder:*(a1 + 40) phase:*(a1 + 64) components:v2 event:*(a1 + 56)];
}

void __53___UIResponderChainFixerUpper__recursiveDescription___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _recursiveDescriptionStep:0];
  [v1 appendString:v2];
}

void __57___UIResponderChainFixerUpper__recursiveDescriptionStep___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = a2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"<%@: %p>", v6, v4];
  }

  else
  {
    v7 = @"(nil)";
  }

  [v2 addObject:v7];
}

void __57___UIResponderChainFixerUpper__recursiveDescriptionStep___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [&stru_1EFB14550 stringByPaddingToLength:*(a1 + 56) + 1 withString:@" " startingAtIndex:0];
  [v2 appendString:v3];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 stringWithFormat:@"<%@: %p>", v9, v7];
  }

  else
  {
    v10 = @"(nil)";
  }

  [v5 appendFormat:@" - %@\n", v10];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 48) _recursiveDescriptionStep:*(a1 + 56) + 2];
  [v11 appendString:v12];
}

@end