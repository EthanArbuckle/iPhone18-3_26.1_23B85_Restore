@interface UIKeyWindowSceneStack
@end

@implementation UIKeyWindowSceneStack

void __64___UIKeyWindowSceneStack_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UIKeyWindowSceneStack_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __64___UIKeyWindowSceneStack_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 32) & 1 withName:@"affectsApplicationKeyWindow"];
  v3 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 32) >> 1) & 1 withName:@"hasViewServiceEntitlement"];
  v4 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 8) withName:{"count"), @"windowSceneRecords.count"}];
  if (*(*(a1 + 40) + 16))
  {
    v5 = *(a1 + 32);
    v6 = [v5 activeMultilinePrefix];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64___UIKeyWindowSceneStack_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v9[3] = &unk_1E70F35B8;
    v8 = *(a1 + 32);
    v7 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    [v5 appendBodySectionWithName:@"orderedWindowSceneRecords" multilinePrefix:v6 block:v9];
  }
}

void __64___UIKeyWindowSceneStack_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
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

uint64_t __99___UIKeyWindowSceneStack__sortAndEvaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene_forReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a2[2];
    if (a3)
    {
LABEL_3:
      v6 = a3[2];
      goto LABEL_4;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_4:
  v7 = *(a1 + 32);
  if (a2)
  {
    v8 = a2[1];
  }

  else
  {
    v8 = 0;
  }

  v23 = *(v7 + 32);
  v9 = [v8 _isTargetOfKeyboardEventDeferringEnvironment];
  if (a3)
  {
    v10 = a3[1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 _isTargetOfKeyboardEventDeferringEnvironment];
  if (a2)
  {
    v12 = a2[1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 session];
  v14 = [v13 role];
  v15 = [v14 isEqualToString:@"UIWindowSceneSessionTypeCoverSheet"];

  if (a3)
  {
    v16 = a3[1];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v16 session];
  v18 = [v17 role];
  v19 = [v18 isEqualToString:@"UIWindowSceneSessionTypeCoverSheet"];

  if (((v15 | v19 ^ 1) & 1) == 0)
  {
    return -1;
  }

  if (((v15 ^ 1 | v19) & 1) == 0)
  {
    return 1;
  }

  if (v5 | v6 && ((v15 ^ 1 | v19 ^ 1) & 1) != 0)
  {
    if (v5 == 1 && v6 == 1)
    {
      if (v11 & 1 | ((v9 & 1) == 0))
      {
        if ((v9 | v11 ^ 1))
        {
          goto LABEL_29;
        }

        return -1;
      }

      return 1;
    }

    if (!v5 && v6 == 1)
    {
      if (!(((v23 & 2) == 0) | v11 & 1))
      {
        goto LABEL_29;
      }

      return -1;
    }

    if (v5 == 1 && !v6 && ((v23 & 2) == 0) | v9 & 1)
    {
      return 1;
    }
  }

LABEL_29:
  if (a3)
  {
    v21 = a3[3];
    if (a2)
    {
LABEL_31:
      v22 = a2[3];
      goto LABEL_32;
    }
  }

  else
  {
    v21 = 0;
    if (a2)
    {
      goto LABEL_31;
    }
  }

  v22 = 0;
LABEL_32:
  if (v21 > v22)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __92___UIKeyWindowSceneStack__evaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene_forReason___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (qword_1ED49C690 != -1)
  {
    dispatch_once(&qword_1ED49C690, &__block_literal_global_9);
  }

  v7 = _MergedGlobals_975;
  if (a2)
  {
    v8 = [*(a2 + 8) _isConnecting];
    v9 = *(a2 + 8);
    if (v9)
    {
      if (![*(a2 + 8) activationState])
      {
LABEL_9:
        v11 = *(a2 + 8);
LABEL_10:
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), v11);
        *a4 = 1;
        return;
      }

      v10 = [v9 activationState] == 1;
    }

    else
    {
      v10 = 0;
    }

    if (((v7 | v8) & 1) != 0 || v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = [0 _isConnecting];
    v11 = 0;
    if (v7 & 1) != 0 || (v12)
    {
      goto LABEL_10;
    }
  }
}

void __59___UIKeyWindowSceneStack_keyWindowSceneInStackPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    a2 = *(a2 + 8);
  }

  if ((*(v7 + 16))(v7, a2))
  {
    if (v5)
    {
      v8 = *(v5 + 8);
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    *a4 = 1;
  }
}

@end