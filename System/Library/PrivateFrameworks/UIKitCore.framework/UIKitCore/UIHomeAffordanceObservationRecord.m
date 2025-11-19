@interface UIHomeAffordanceObservationRecord
@end

@implementation UIHomeAffordanceObservationRecord

void __64___UIHomeAffordanceObservationRecord_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasSuccinctStyle];
  v3 = *(a1 + 32);
  if (v2)
  {
    v24 = objc_loadWeakRetained((*(a1 + 40) + 8));
    if (v24)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v4 stringWithFormat:@"<%@: %p>", v6, v24];
    }

    else
    {
      v7 = @"(nil)";
    }

    v14 = [v3 appendObject:v7 withName:@"observer"];
  }

  else if (([*(a1 + 32) hasDebugStyle] & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = objc_loadWeakRetained((*(a1 + 40) + 8));
    if (v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v10 stringWithFormat:@"<%@: %p>", v12, v9];
    }

    else
    {
      v13 = @"(nil)";
    }

    v15 = [v8 appendObject:v13 withName:@"observer"];
    v16 = *(a1 + 32);
    v17 = objc_loadWeakRetained((*(a1 + 40) + 16));
    if (v17)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 stringWithFormat:@"<%@: %p>", v20, v17];
    }

    else
    {
      v21 = @"(nil)";
    }

    v22 = [v16 appendObject:v21 withName:@"window"];
    v23 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) != 0 withName:@"forLegacyViewService"];
  }
}

void __64___UIHomeAffordanceObservationRecord_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v4 = [WeakRetained description];
  v5 = [v2 appendObject:v4 withName:@"observer"];

  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"legacyViewServiceSessionIdentifier" skipIfNil:1];
  v7 = *(a1 + 32);
  v13 = objc_loadWeakRetained((*(a1 + 40) + 16));
  if (v13)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"<%@: %p>", v10, v13];
  }

  else
  {
    v11 = @"(nil)";
  }

  v12 = [v7 appendObject:v11 withName:@"window"];
}

@end