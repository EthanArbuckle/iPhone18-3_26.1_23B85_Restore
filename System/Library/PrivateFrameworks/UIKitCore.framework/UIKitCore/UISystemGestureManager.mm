@interface UISystemGestureManager
@end

@implementation UISystemGestureManager

void __41___UISystemGestureManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_UISystemGestureManager);
  v1 = qword_1ED49E438;
  qword_1ED49E438 = v0;
}

void __72___UISystemGestureManager_allowGestureRecognizersOnDisplayWithIdentity___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] removeObjectForKey:*(a1 + 32)];
    v4 = [v3[1] objectForKey:*(a1 + 32)];
    v5 = v4;
    if (v4)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [v4 gestureRecognizers];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [v5 removeGestureRecognizer:*(*(&v11 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }

      [v3[1] removeObjectForKey:*(a1 + 32)];
    }
  }
}

id __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke(id *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E698E688]);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_2;
  v13 = &unk_1E710B368;
  v4 = v2;
  v14 = v4;
  objc_copyWeak(&v15, a1 + 5);
  objc_copyWeak(&v16, a1 + 6);
  objc_copyWeak(&v17, a1 + 7);
  [v4 appendBodySectionWithName:0 block:&v10];
  v5 = [v4 description];
  v6 = v5;
  if (WeakRetained)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [WeakRetained recursiveDescription];
    v6 = [v7 stringWithFormat:@"%@\n\n%@", v5, v8, v10, v11, v12, v13, v14];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);

  return v6;
}

void __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_2(id *a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_4;
  aBlock[3] = &unk_1E710B318;
  v11 = a1[4];
  v12 = &__block_literal_global_288;
  v2 = _Block_copy(aBlock);
  v3 = a1[4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_7;
  v5[3] = &unk_1E710B340;
  v4 = v2;
  v6 = v4;
  objc_copyWeak(&v7, a1 + 5);
  objc_copyWeak(&v8, a1 + 6);
  objc_copyWeak(&v9, a1 + 7);
  [v3 appendBodySectionWithName:@"gestures" block:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

id __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _UIGestureRecognizerStateString([a2 state]);
  [a2 isEnabled];
  v5 = NSStringFromBOOL();
  v6 = [v3 stringWithFormat:@"%p state = %@; enabled: %@", a2, v4, v5];;

  return v6;
}

void __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_5;
  v7[3] = &unk_1E710B2F0;
  v8 = v6;
  v9 = *(a1 + 40);
  [v8 appendCollection:a3 withName:a2 itemBlock:v7];
}

void __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_6;
  v6[3] = &unk_1E70F6150;
  v7 = v4;
  v5 = *(a1 + 40);
  v8 = a2;
  v9 = v5;
  [v7 appendProem:0 block:v6];
}

void __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = (*(*(a1 + 48) + 16))();
  v3 = [*(a1 + 40) name];
  if (v3)
  {
    v4 = [v2 appendObject:v7 withName:v3];
  }

  else
  {
    v5 = [objc_opt_class() description];
    v6 = [v2 appendObject:v7 withName:v5];
  }
}

void __52____UISystemGestureManager_initWithDisplayIdentity___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v2 + 16))(v2, @"internal", WeakRetained);

  v4 = *(a1 + 32);
  v5 = objc_loadWeakRetained((a1 + 48));
  (*(v4 + 16))(v4, @"external", v5);

  v6 = *(a1 + 32);
  v7 = objc_loadWeakRetained((a1 + 56));
  (*(v6 + 16))(v6, @"externalEdgeSwipe", v7);
}

uint64_t __51____UISystemGestureManager__removeInternalGestures__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 view];
  [v4 removeGestureRecognizer:a2];

  v5 = *(a1 + 32);

  return [a2 removeTarget:v5 action:0];
}

uint64_t __113____UISystemGestureManager_exclusiveTouchGestureRecognizer_achievedMaximumAbsoluteAccumulatedMovement_timestamp___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAchievedMaximumMovement:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _handleTooMuchMovementWithLastTouchTimestamp:v3];
}

uint64_t __62____UISystemGestureManager__externalGestureRecognizerChanged___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (!result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 addObject:v4];
  }

  return result;
}

void __73____UISystemGestureManager__handleTooMuchMovementWithLastTouchTimestamp___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73____UISystemGestureManager__handleTooMuchMovementWithLastTouchTimestamp___block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v5 = v3;
  v6 = a2;
  [v5 appendProem:0 block:v4];
}

void __73____UISystemGestureManager__handleTooMuchMovementWithLastTouchTimestamp___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = _UIGestureRecognizerStateString([*(a1 + 40) state]);
  v3 = [*(a1 + 40) name];
  if (v3)
  {
    v4 = [v2 appendObject:v7 withName:v3];
  }

  else
  {
    v5 = [objc_opt_class() description];
    v6 = [v2 appendObject:v7 withName:v5];
  }
}

@end