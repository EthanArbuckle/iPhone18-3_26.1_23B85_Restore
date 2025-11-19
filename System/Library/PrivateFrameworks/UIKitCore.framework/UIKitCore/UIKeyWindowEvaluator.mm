@interface UIKeyWindowEvaluator
@end

@implementation UIKeyWindowEvaluator

void __40___UIKeyWindowEvaluator_sharedEvaluator__block_invoke()
{
  v0 = [_UIKeyWindowEvaluator alloc];
  if (v0 && (v7.receiver = v0, v7.super_class = _UIKeyWindowEvaluator, (v1 = objc_msgSendSuper2(&v7, sel_init)) != 0))
  {
    v1[22] = -1;
    *&v2 = -1;
    *(&v2 + 1) = -1;
    *(v1 + 9) = v2;
    *(v1 + 10) = v2;
    *(v1 + 7) = v2;
    *(v1 + 8) = v2;
    *(v1 + 6) = v2;
    v3 = v1;
    v4 = BSLogAddStateCaptureBlockWithTitle();
    v5 = v3[27];
    v3[27] = v4;
  }

  else
  {
    v3 = 0;
  }

  v6 = qword_1ED4A0828;
  qword_1ED4A0828 = v3;
}

id __30___UIKeyWindowEvaluator__init__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) descriptionBuilderWithMultilinePrefix:&stru_1EFB14550];
  v2 = [v1 build];

  return v2;
}

void __63___UIKeyWindowEvaluator_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___UIKeyWindowEvaluator_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __63___UIKeyWindowEvaluator_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 208) withName:@"applicationKeyWindow"];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 200);
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"<%@: %p>", v8, v6];
  }

  else
  {
    v9 = @"(nil)";
  }

  v10 = [v3 appendObject:v9 withName:@"stackForSceneMovingScreens"];

  v11 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 184) withName:@"keyWindowSceneStack"];
  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 192) withName:@"excludedSceneStack"];
  v13 = *(a1 + 32);
  v14 = [v13 activeMultilinePrefix];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __63___UIKeyWindowEvaluator_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v23[3] = &unk_1E70F35B8;
  v19 = *(a1 + 32);
  v15 = v19.i64[0];
  v24 = vextq_s8(v19, v19, 8uLL);
  [v13 appendBodySectionWithName:@"countOfFBSSceneBackedScenesByIdiom" multilinePrefix:v14 block:v23];

  v16 = *(a1 + 32);
  v17 = [v16 activeMultilinePrefix];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63___UIKeyWindowEvaluator_descriptionBuilderWithMultilinePrefix___block_invoke_4;
  v21[3] = &unk_1E70F35B8;
  v20 = *(a1 + 32);
  v18 = v20.i64[0];
  v22 = vextq_s8(v20, v20, 8uLL);
  [v16 appendBodySectionWithName:@"defaultEvaluationStrategyByIdiom" multilinePrefix:v17 block:v21];
}

void __63___UIKeyWindowEvaluator_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  for (i = 1; i != 12; ++i)
  {
    if (*(*(a1 + 32) + 8 * i))
    {
      v3 = *(a1 + 40);
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      v5 = _NSStringFromUIUserInterfaceIdiom(i - 2);
      v6 = [v3 appendObject:v4 withName:v5];
    }
  }
}

void __63___UIKeyWindowEvaluator_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1)
{
  for (i = 12; i != 23; ++i)
  {
    v3 = *(*(a1 + 32) + 8 * i);
    if (v3 != -1)
    {
      v4 = *(a1 + 40);
      if (v3 == 1)
      {
        v5 = @"SystemShellManaged";
      }

      else
      {
        v5 = &stru_1EFB14550;
      }

      if (v3)
      {
        v6 = v5;
      }

      else
      {
        v6 = @"LastOneWins";
      }

      v7 = v6;
      v8 = _NSStringFromUIUserInterfaceIdiom(i - 13);
      v9 = [v4 appendObject:v7 withName:v8];
    }
  }
}

void __85___UIKeyWindowEvaluator__updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85___UIKeyWindowEvaluator__updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest___block_invoke_2;
  v5[3] = &__block_descriptor_40_e23_B16__0__UIWindowScene_8l;
  v5[4] = a1[6];
  [(_UIKeyWindowSceneStack *)a2 migrateFromEvaluationStrategy:v3 toEvaluationStrategy:v4 windowScenesPassingTest:v5];
}

BOOL __85___UIKeyWindowEvaluator__updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 _FBSScene];

  if (!v4)
  {
    return 0;
  }

  v5 = [a2 _screen];
  v6 = [v5 _userInterfaceIdiom];

  return v6 == *(a1 + 32);
}

BOOL __56___UIKeyWindowEvaluator_keyWindowForUserInterfaceIdiom___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _screen];
  v4 = [v3 _userInterfaceIdiom];

  return v4 == *(a1 + 32);
}

void __69___UIKeyWindowEvaluator_windowScene_willTransitionToActivationState___block_invoke(uint64_t a1)
{
  v22 = _NSStringFromUISceneActivationState(*(a1 + 48));
  v2 = _NSStringFromUISceneActivationState(*(a1 + 56));
  v3 = [(_UIKeyWindowEvaluator *)*(a1 + 32) _stackForWindowScene:?];
  v4 = [(_UIKeyWindowSceneStack *)v3 keyWindowSceneInStack];
  v5 = *(a1 + 40);

  if (*(a1 + 64) == 1 && v4 != v5)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Window scene transitioned from %@ to %@", objc_opt_class(), *(a1 + 40), v22, v2];
    v14 = [(_UIKeyWindowSceneStack *)v3 keyWindowSceneInStack];
    v15 = [(_UIKeyWindowEvaluator *)*(a1 + 32) _evaluationStrategyForScene:?];
    v16 = [(UIWindowScene *)*(a1 + 40) _keyWindow];

    if (*(a1 + 65) == 1 && !v15 && v16)
    {
      [(_UIKeyWindowSceneStack *)v3 pushWindowScene:0 withEvaluationStrategy:v13 forReason:?];
    }

    else if (v3)
    {
      [(_UIKeyWindowSceneStack *)v3 _evaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:v13 forReason:?];
    }

    v17 = [(_UIKeyWindowSceneStack *)v3 keyWindowSceneInStack];
    v8 = v17;
    if (!v3 || (*(v3 + 32) & 1) == 0 || v17 == v14)
    {
      goto LABEL_26;
    }

    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = v13;
    v13 = v20;
    if (v19)
    {
      [(_UIKeyWindowEvaluator *)v19 _evaluateApplicationKeyWindowWithComparisonWindowScene:v18 changingKeyWindowSceneActions:&__block_literal_global_107_0 sceneKeyWindowActions:0 ignoringOldKeyWindow:0 sceneResignKeyWindowActions:0 andSceneBecomeKeyWindowActions:0 forReason:v21, v20, 0];
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (*(a1 + 66) == 1 && v4 == v5)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Window scene transitioned from %@ to %@", objc_opt_class(), *(a1 + 40), v22, v2];
    v14 = [(_UIKeyWindowSceneStack *)v3 keyWindowSceneInStack];
    if (!v3)
    {
      v8 = [(_UIKeyWindowSceneStack *)0 keyWindowSceneInStack];
      goto LABEL_26;
    }

    [(_UIKeyWindowSceneStack *)v3 _evaluateKeyWindowSceneInStackIgnoringOldKeyWindowScene:v13 forReason:?];
    v7 = [(_UIKeyWindowSceneStack *)v3 keyWindowSceneInStack];
    v8 = v7;
    if ((*(v3 + 32) & 1) == 0 || v7 == v14)
    {
      goto LABEL_26;
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v13;
    v13 = v11;
    if (v10)
    {
      [(_UIKeyWindowEvaluator *)v10 _evaluateApplicationKeyWindowWithComparisonWindowScene:v9 changingKeyWindowSceneActions:&__block_literal_global_109_2 sceneKeyWindowActions:0 ignoringOldKeyWindow:0 sceneResignKeyWindowActions:0 andSceneBecomeKeyWindowActions:0 forReason:v12, v11, 0];
LABEL_26:

      goto LABEL_27;
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_27:
}

@end