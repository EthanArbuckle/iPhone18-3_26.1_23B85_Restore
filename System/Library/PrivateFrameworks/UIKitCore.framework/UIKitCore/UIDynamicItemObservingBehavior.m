@interface UIDynamicItemObservingBehavior
@end

@implementation UIDynamicItemObservingBehavior

void __54___UIDynamicItemObservingBehavior_willMoveToAnimator___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [WeakRetained items];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [WeakRetained linearVelocityForItem:*(*(&v21 + 1) + 8 * i)];
        v9 = v8;
        v11 = v10;
        [WeakRetained targetVelocity];
        v13 = v9 == 0.0;
        if (fabs(v14) > fabs(v9))
        {
          v13 = 1;
        }

        v15 = v11 == 0.0;
        if (fabs(v12) > fabs(v11))
        {
          v15 = 1;
        }

        v5 += v13 & v15;
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if ([WeakRetained frameCount] >= 1)
  {
    v16 = [WeakRetained items];
    v17 = [v16 count];

    if (v5 == v17)
    {
      [WeakRetained setEnabled:0];
      v18 = [WeakRetained completionHandler];
      if (v18)
      {
        [WeakRetained completionHandlerInvocationDelay];
        v20 = dispatch_time(0, (v19 * 1000000000.0));
        dispatch_after(v20, MEMORY[0x1E69E96A0], v18);
      }
    }
  }

  [WeakRetained setFrameCount:{objc_msgSend(WeakRetained, "frameCount") + 1}];
}

@end