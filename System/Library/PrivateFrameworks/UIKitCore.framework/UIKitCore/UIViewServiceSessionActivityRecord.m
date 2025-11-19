@interface UIViewServiceSessionActivityRecord
@end

@implementation UIViewServiceSessionActivityRecord

void __77___UIViewServiceSessionActivityRecord_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77___UIViewServiceSessionActivityRecord_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __77___UIViewServiceSessionActivityRecord_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_loadWeakRetained((*(a1 + 40) + 24));
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"<%@: %p>", v6, v3];
  }

  else
  {
    v7 = @"(nil)";
  }

  v8 = [v2 appendObject:v7 withName:@"tracker"];
  v9 = *(a1 + 32);
  v10 = objc_loadWeakRetained((*(a1 + 40) + 72));
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

  v15 = [v9 appendObject:v14 withName:@"primaryHostedWindow"];
  v16 = *(a1 + 32);
  v17 = _NSStringFromUIUserInterfaceIdiom(*(*(a1 + 40) + 64));
  v18 = [v16 appendObject:v17 withName:@"idiom"];

  v19 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"hasInvalidated"];
  v20 = *(a1 + 32);
  v21 = objc_loadWeakRetained((*(a1 + 40) + 32));
  if (v21)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 stringWithFormat:@"<%@: %p>", v24, v21];
  }

  else
  {
    v25 = @"(nil)";
  }

  v26 = [v20 appendObject:v25 withName:@"lastActivityProvider"];
  v27 = *(*(a1 + 40) + 40);
  if (v27 > 4)
  {
    v28 = &stru_1EFB14550;
  }

  else
  {
    v28 = off_1E70F6390[v27];
  }

  v29 = [*(a1 + 32) appendObject:v28 withName:@"lastActivity"];
  v30 = *(a1 + 32);
  v31 = _NSStringFromUIViewControllerAppearState(*(*(a1 + 40) + 20));
  v32 = [v30 appendObject:v31 withName:@"lastAppearState"];

  v33 = [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 48) withName:@"lastActivityTimestamp"];
  v34 = *(a1 + 40);
  if (v34)
  {
    if ([*(v34 + 8) count])
    {
      v35 = *(a1 + 32);
      v36 = [v35 activeMultilinePrefix];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __77___UIViewServiceSessionActivityRecord_descriptionBuilderWithMultilinePrefix___block_invoke_3;
      v39[3] = &unk_1E70F35B8;
      v38 = *(a1 + 32);
      v37 = v38.i64[0];
      v40 = vextq_s8(v38, v38, 8uLL);
      [v35 appendBodySectionWithName:@"allHostedWindows" multilinePrefix:v36 block:v39];
    }
  }
}

void __77___UIViewServiceSessionActivityRecord_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v7)
        {
          v9 = MEMORY[0x1E696AEC0];
          v10 = v7;
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [v9 stringWithFormat:@"<%@: %p>", v12, v10, v15];
        }

        else
        {
          v13 = @"(nil)";
        }

        v14 = [v8 appendObject:v13 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

@end