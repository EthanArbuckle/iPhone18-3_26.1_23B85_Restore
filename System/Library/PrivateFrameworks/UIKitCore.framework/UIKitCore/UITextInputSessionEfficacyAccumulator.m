@interface UITextInputSessionEfficacyAccumulator
@end

@implementation UITextInputSessionEfficacyAccumulator

void __79___UITextInputSessionEfficacyAccumulator_computeSessionActionsStringOnSession___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v8 = _UITextInputActionsSessionActionsEnumValueFromSource(a3);
    v23 = v8;
    if (v8 == 1)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79___UITextInputSessionEfficacyAccumulator_computeSessionActionsStringOnSession___block_invoke_2;
      v14[3] = &unk_1E7127678;
      v9 = *(a1 + 56);
      v18 = a3;
      v19 = v9;
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v17 = &v20;
      v14[4] = v10;
      v15 = v11;
      v16 = *(a1 + 48);
      [v5 enumerateObjectsUsingBlock:v14];
    }

    else
    {
      [*(a1 + 40) setObject:MEMORY[0x1E695E118] atIndexedSubscript:v8];
      if ([*(a1 + 48) sessionHasOnlyPrimaryInput])
      {
        v12 = [*(a1 + 32) isPrimaryInput:v21[3]];
      }

      else
      {
        v12 = 0;
      }

      [*(a1 + 48) setSessionHasOnlyPrimaryInput:v12];
      v13 = ([*(a1 + 48) sessionHasDictation] & 1) != 0 || v21[3] == 3;
      [*(a1 + 48) setSessionHasDictation:v13];
    }

    _Block_object_dispose(&v20, 8);
  }
}

void __79___UITextInputSessionEfficacyAccumulator_computeSessionActionsStringOnSession___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DFB0];
  v6 = a2;
  v7 = [v5 null];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = _UITextInputActionsSessionActionsEnumValueFromSourceAndType(*(a1 + 64), a3);
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"UITextInputSessionEfficacyAccumulator.m" lineNumber:484 description:@"Received sessionActions of NotYetKnown despite providing action type"];
    }

    [*(a1 + 40) setObject:MEMORY[0x1E695E118] atIndexedSubscript:?];
    if ([*(a1 + 48) sessionHasOnlyPrimaryInput])
    {
      v9 = [*(a1 + 32) isPrimaryInput:*(*(*(a1 + 56) + 8) + 24)];
    }

    else
    {
      v9 = 0;
    }

    [*(a1 + 48) setSessionHasOnlyPrimaryInput:v9];
    v10 = ([*(a1 + 48) sessionHasDictation] & 1) != 0 || *(*(*(a1 + 56) + 8) + 24) == 3;
    v11 = *(a1 + 48);

    [v11 setSessionHasDictation:v10];
  }
}

void __79___UITextInputSessionEfficacyAccumulator_computeSessionActionsStringOnSession___block_invoke_78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v10 = v5;
    v7 = [v5 BOOLValue];
    v6 = v10;
    if (v7)
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = _UITextInputActionsSessionActionsStringFromEnumValue(a3);
      [v8 appendString:v9];

      v6 = v10;
    }
  }
}

void __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 computeSessionActionsStringOnSession:v7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke_2;
  v14[3] = &unk_1E7127768;
  v14[4] = *(a1 + 32);
  v15 = v5;
  v9 = *(a1 + 56);
  v16 = v8;
  v18 = v9;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v11 = v8;
  v12 = v5;
  [v7 enumerateObjectsUsingBlock:v14];
}

void __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke_3;
    v13[3] = &unk_1E7127740;
    v8 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v8;
    v18 = a3;
    v9 = *(a1 + 48);
    v10 = *(a1 + 72);
    v15 = v9;
    v17 = v10;
    v12 = *(a1 + 56);
    v11 = v12;
    v16 = v12;
    [v5 enumerateObjectsUsingBlock:v13];
  }
}

void __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke_4;
    v15[3] = &unk_1E7127718;
    v8 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v9 = v8;
    v10 = *(a1 + 80);
    v16 = v9;
    v20 = v10;
    v21 = a3;
    v11 = *(a1 + 48);
    v12 = *(a1 + 72);
    v17 = v11;
    v19 = v12;
    v14 = *(a1 + 56);
    v13 = v14;
    v18 = v14;
    [v5 enumerateObjectsUsingBlock:v15];
  }
}

void __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke_5;
    v13[3] = &unk_1E71276F0;
    v8 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v8;
    v18 = a3;
    v19 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = *(a1 + 72);
    v15 = v9;
    v17 = v10;
    v12 = *(a1 + 56);
    v11 = v12;
    v16 = v12;
    [v5 enumerateKeysAndObjectsUsingBlock:v13];
  }
}

void __77___UITextInputSessionEfficacyAccumulator_enumerateTextInputActionsAnalytics___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v55[26] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([v6 isAllZeroes] & 1) == 0)
  {
    v51 = v5;
    v7 = [v5 componentsSeparatedByString:@"|"];
    v8 = [*(a1 + 32) cleanIdForPublishing:*(a1 + 40)];
    v9 = *(a1 + 80);
    v42 = objc_alloc(MEMORY[0x1E695DF90]);
    v54[0] = @"src";
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 88)];
    v55[0] = v47;
    v54[1] = @"type";
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 96)];
    v55[1] = v46;
    v54[2] = @"netChars";
    v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "netCharacters")}];
    v55[2] = v45;
    v54[3] = @"usrRmChars";
    v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "userRemovedCharacters")}];
    v55[3] = v44;
    v54[4] = @"netEmojis";
    v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "netEmojiCharacters")}];
    v55[4] = v43;
    v54[5] = @"usrRmEmojis";
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "userRemovedEmojiCharacters")}];
    v55[5] = v41;
    v54[6] = @"isEmojiSearch";
    v40 = [MEMORY[0x1E696AD98] numberWithBool:v9 & 1];
    v55[6] = v40;
    v54[7] = @"isMarkedText";
    v39 = [MEMORY[0x1E696AD98] numberWithBool:(v9 >> 2) & 1];
    v55[7] = v39;
    v54[8] = @"inputActionCount";
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "inputActions")}];
    v55[8] = v38;
    v54[9] = @"largestSessionInsertion";
    v10 = *(*(a1 + 32) + 72);
    if (v10)
    {
      if (v10 >= 0xA)
      {
        if (v10 >> 4 < 0x271)
        {
          v12 = 4;
        }

        else
        {
          v12 = 5;
        }

        if (v10 >= 0x3E8)
        {
          v13 = v12;
        }

        else
        {
          v13 = 3;
        }

        if (v10 >= 0x64)
        {
          v11 = v13;
        }

        else
        {
          v11 = 2;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }

    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    v55[9] = v37;
    v54[10] = @"largestSessionDeletion";
    v14 = *(*(a1 + 32) + 80);
    v50 = v6;
    if (v14)
    {
      if (v14 >= 0xA)
      {
        if (v14 >> 4 < 0x271)
        {
          v16 = 4;
        }

        else
        {
          v16 = 5;
        }

        if (v14 >= 0x3E8)
        {
          v17 = v16;
        }

        else
        {
          v17 = 3;
        }

        if (v14 >= 0x64)
        {
          v15 = v17;
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }

    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
    v55[10] = v36;
    v54[11] = @"sessionNetChars";
    v18 = [MEMORY[0x1E696AD98] numberWithInt:_UITextInputActionsNSIntegerToLog10Integer(*(*(a1 + 32) + 88))];
    v35 = v18;
    v19 = MEMORY[0x1E695E110];
    if (*(*(a1 + 32) + 104) + *(*(a1 + 32) + 112))
    {
      v19 = MEMORY[0x1E695E118];
    }

    v55[11] = v18;
    v55[12] = v19;
    v54[12] = @"sessionStartedWithDeletion";
    v54[13] = @"initialUsrRmChars";
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v55[13] = v34;
    v54[14] = @"initialUsrRmEmojis";
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(a1 + 32) + 112)];
    v55[14] = v33;
    v54[15] = @"sessionIsModeless";
    v32 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 56)];
    v55[15] = v32;
    v54[16] = @"sessionActions";
    v31 = [*(a1 + 48) sessionActionString];
    v55[16] = v31;
    v54[17] = @"sessionHasPrimaryInput";
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 48), "sessionHasOnlyPrimaryInput")}];
    v55[17] = v20;
    v54[18] = @"sessionHasDictation";
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 48), "sessionHasDictation")}];
    v55[18] = v21;
    v54[19] = @"language";
    v22 = [v7 objectAtIndexedSubscript:0];
    v55[19] = v22;
    v54[20] = @"region";
    v23 = [v7 objectAtIndexedSubscript:1];
    v55[20] = v23;
    v54[21] = @"kbVariant";
    v24 = [v7 objectAtIndexedSubscript:2];
    v55[21] = v24;
    v54[22] = @"kbLayout";
    v25 = [v7 objectAtIndexedSubscript:3];
    v55[22] = v25;
    v54[23] = @"kbType";
    v49 = v7;
    v26 = [v7 objectAtIndexedSubscript:4];
    v55[23] = v26;
    v48 = v8;
    v55[24] = v8;
    v54[24] = @"bundleId";
    v54[25] = @"internalProcId";
    v55[25] = *(*(*(a1 + 64) + 8) + 40);
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:26];
    v28 = [v42 initWithDictionary:v27];

    if (*(*(a1 + 32) + 128))
    {
      [v28 addEntriesFromDictionary:?];
    }

    v29 = *(*(*(a1 + 72) + 8) + 40);
    v6 = v50;
    v5 = v51;
    if (v29)
    {
      v52 = @"errors";
      v53 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      [v28 addEntriesFromDictionary:v30];
    }

    (*(*(a1 + 56) + 16))();
  }
}

@end