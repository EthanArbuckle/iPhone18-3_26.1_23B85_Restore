@interface UIDynamicButtonEvent
@end

@implementation UIDynamicButtonEvent

uint64_t __52___UIDynamicButtonEvent__appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 144) withName:@"dynamicButtonForDispatch"];
  result = [*(*(a1 + 40) + 136) count];
  if (result)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52___UIDynamicButtonEvent__appendDescriptionToStream___block_invoke_3;
    v5[3] = &unk_1E70F35B8;
    v4 = *(a1 + 32);
    v6 = vextq_s8(v4, v4, 8uLL);
    return [v4.i64[0] appendBodySectionWithName:@"dynamicButtons" block:v5];
  }

  return result;
}

void __52___UIDynamicButtonEvent__appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 136);
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

        v7 = [*(a1 + 40) appendObject:*(*(&v8 + 1) + 8 * v6++) withName:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __53___UIDynamicButtonEvent__appendDescriptionToBuilder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53___UIDynamicButtonEvent__appendDescriptionToBuilder___block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v5 = *(a1 + 32);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v4];
}

void __53___UIDynamicButtonEvent__appendDescriptionToBuilder___block_invoke_2(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [*(a1[2].i64[1] + 144) succinctDescription];
  v4 = [v2 appendObject:v3 withName:@"dynamicButtonForDispatch"];

  if ([*(a1[2].i64[1] + 136) count])
  {
    v5 = a1[2].i64[0];
    v6 = [v5 activeMultilinePrefix];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53___UIDynamicButtonEvent__appendDescriptionToBuilder___block_invoke_3;
    v7[3] = &unk_1E70F35B8;
    v8 = vextq_s8(a1[2], a1[2], 8uLL);
    [v5 appendBodySectionWithName:@"dynamicButtons" multilinePrefix:v6 block:v7];
  }
}

void __53___UIDynamicButtonEvent__appendDescriptionToBuilder___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 136);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) succinctDescription];
        v9 = [v7 appendObject:v8 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke_2(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [*(a1[2].i64[1] + 144) succinctDescription];
  v4 = [v2 appendObject:v3 withName:@"dynamicButtonForDispatch"];

  if ([*(a1[2].i64[1] + 128) count])
  {
    v5 = a1[2].i64[0];
    v6 = [v5 activeMultilinePrefix];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v22[3] = &unk_1E70F35B8;
    v15 = a1[2];
    v7 = v15.i64[0];
    v23 = vextq_s8(v15, v15, 8uLL);
    [v5 appendBodySectionWithName:@"dynamicButtonsByWindow" multilinePrefix:v6 block:v22];
  }

  if ([*(a1[2].i64[1] + 136) count])
  {
    v8 = a1[2].i64[0];
    v9 = [v8 activeMultilinePrefix];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke_4;
    v19[3] = &unk_1E70F35B8;
    v10 = a1[2].i64[0];
    v11 = a1[2].i64[1];
    v20 = v10;
    v21 = v11;
    [v8 appendBodySectionWithName:@"dynamicButtons" multilinePrefix:v9 block:v19];

    v12 = a1[2].i64[0];
    v13 = [v12 activeMultilinePrefix];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke_5;
    v17[3] = &unk_1E70F35B8;
    v16 = a1[2];
    v14 = v16.i64[0];
    v18 = vextq_s8(v16, v16, 8uLL);
    [v12 appendBodySectionWithName:@"deliveryTables" multilinePrefix:v13 block:v17];
  }
}

void __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(*(a1 + 32) + 128);
  v16 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v16)
  {
    v15 = *v18;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v17 + 1) + 8 * i);
        v4 = [*(*(a1 + 32) + 128) objectForKey:v3];
        v5 = objc_opt_class();
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p count: %lu>", class_getName(v5), v4, objc_msgSend(v4, "count")];;
        v7 = *(a1 + 40);
        if (v3)
        {
          v8 = MEMORY[0x1E696AEC0];
          v9 = v3;
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = [v8 stringWithFormat:@"<%@: %p>", v11, v9];
        }

        else
        {
          v12 = @"(nil)";
        }

        v13 = [v7 appendObject:v6 withName:v12];
      }

      v16 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v16);
  }
}

void __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) activeMultilinePrefix];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 40) + 136);
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

        v8 = [*(a1 + 32) appendObject:*(*(&v9 + 1) + 8 * v7++) withName:{0, v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void __63___UIDynamicButtonEvent_descriptionBuilderWithMultilinePrefix___block_invoke_5(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(*(a1 + 32) + 136);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [*(*(a1 + 32) + 136) objectForKey:v6];
        v8 = *(a1 + 40);
        if (v6)
        {
          v9 = MEMORY[0x1E696AEC0];
          v10 = v6;
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [v9 stringWithFormat:@"<%@: %p>", v12, v10];
        }

        else
        {
          v13 = @"(nil)";
        }

        v14 = [v8 appendObject:v7 withName:v13];
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

@end