@interface UIMenuBuilder
@end

@implementation UIMenuBuilder

void __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [*(a1 + 32) _parentOfMenuForIdentifier:v18 commandForIdentifier:v11];
  if (v15)
  {
    if (v18)
    {
      v16 = v18;
    }

    else
    {
      v16 = v11;
    }

    [*(a1 + 40) insertBeforeElements:v13 afterElements:v14 aroundElement:v16 inMenu:v15];
  }

  else
  {
    v17 = [*(a1 + 32) _firstValidMenuWithinIdentifiers:v12];
    if (v17)
    {
      [*(a1 + 40) insertFallbackBeforeElements:v13 fallbackAfterElements:v14 inMenu:v17];
    }
  }
}

void __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) menuForIdentifier:v10];

  if (v9)
  {
    [*(a1 + 40) insertAtStartElements:v7 atEndElements:v8 inMenu:v10];
  }
}

void __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _parentOfMenuForIdentifier:0 commandForIdentifier:?];
  if (v3)
  {
    [*(a1 + 40) deleteItem:v4 inMenu:v3];
  }
}

void __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) menuForIdentifier:?];

  if (v3)
  {
    [*(a1 + 40) deleteMenu:v4];
  }
}

void __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v3 anchor];
  v4 = [v3 fallbacks];
  v5 = [v3 insertsBefore];
  v6 = [v3 insertsAfter];

  (*(v2 + 16))(v2, 0, v7, v4, v5, v6);
}

void __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 anchor];
  (*(v2 + 16))(v2, v3);
}

void __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 anchor];
  v6 = [v4 fallbacks];
  v7 = [v4 insertsBefore];
  v8 = [v4 insertsAfter];
  (*(v3 + 16))(v3, v5, 0, v6, v7, v8);

  v9 = *(a1 + 40);
  v12 = [v4 anchor];
  v10 = [v4 insertsAtStart];
  v11 = [v4 insertsAtEnd];

  (*(v9 + 16))(v9, v12, v10, v11);
}

void __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 anchor];
  (*(v2 + 16))(v2, v3);
}

id __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_3;
        v12[3] = &unk_1E711F9B0;
        v13 = *(a1 + 32);
        if ([v9 _acceptBoolMenuVisit:&__block_literal_global_509 commandVisit:v12 actionVisit:0])
        {
          [v11 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v11;
}

uint64_t __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_4(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = a1;
  v5 = [*(a1 + 32) atStartElements];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [*(a1 + 32) atStartElements];
    [v4 addObjectsFromArray:v7];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v8)
  {
    v28 = *v51;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        v44 = 0;
        v45 = &v44;
        v46 = 0x3032000000;
        v47 = __Block_byref_object_copy__175;
        v48 = __Block_byref_object_dispose__175;
        v49 = 0;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_12;
        v41[3] = &unk_1E711F9D8;
        v43 = &v44;
        v42 = *(a1 + 32);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_2_14;
        v38[3] = &unk_1E711FA00;
        v40 = &v44;
        v39 = *(a1 + 32);
        [v10 _acceptMenuVisit:v41 commandVisit:v38 actionVisit:0 deferredElementVisit:0];
        v11 = v45[5];
        if (v11)
        {
          v12 = [v11 beforeElements];
          [v4 addObjectsFromArray:v12];
        }

        [v4 addObject:v10];
        v13 = v45[5];
        if (v13)
        {
          v14 = [v13 afterElements];
          [v4 addObjectsFromArray:v14];
        }

        _Block_object_dispose(&v44, 8);
      }

      v8 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = [*(a1 + 32) fallbackBeforeElements];
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v55 count:16];
  if (v16)
  {
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [v4 addObjectsFromArray:*(*(&v34 + 1) + 8 * j)];
      }

      v16 = [v15 countByEnumeratingWithState:&v34 objects:v55 count:16];
    }

    while (v16);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = [*(v29 + 32) fallbackAfterElements];
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v54 count:16];
  if (v20)
  {
    v21 = *v31;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [v4 addObjectsFromArray:*(*(&v30 + 1) + 8 * k)];
      }

      v20 = [v19 countByEnumeratingWithState:&v30 objects:v54 count:16];
    }

    while (v20);
  }

  v23 = [*(v29 + 32) atEndElements];
  v24 = [v23 count] == 0;

  if (!v24)
  {
    v25 = [*(v29 + 32) atEndElements];
    [v4 addObjectsFromArray:v25];
  }

  return v4;
}

void __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 childInserts];
  v5 = [v4 identifier];

  v6 = [v9 objectForKeyedSubscript:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_2_14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 childInserts];
  v5 = [v4 _identifier];

  v6 = [v9 objectForKeyedSubscript:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_3_16(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy__175;
        v20 = __Block_byref_object_dispose__175;
        v21 = 0;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_4_17;
        v13[3] = &unk_1E711FA00;
        v15 = &v16;
        v14 = *(a1 + 32);
        [v8 _acceptMenuVisit:0 commandVisit:v13 actionVisit:0 deferredElementVisit:0];
        v9 = v17[5];
        if (v9)
        {
          v10 = [v9 replacementElements];
          [v4 addObjectsFromArray:v10];
        }

        else
        {
          [v4 addObject:v8];
        }

        _Block_object_dispose(&v16, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  return v4;
}

void __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_4_17(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 childReplacements];
  v5 = [v4 _identifier];

  v6 = [v9 objectForKeyedSubscript:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

@end