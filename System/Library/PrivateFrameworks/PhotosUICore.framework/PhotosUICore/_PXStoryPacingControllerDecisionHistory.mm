@interface _PXStoryPacingControllerDecisionHistory
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentError;
- ($98F545CD36100C1EB7458A589033337F)firstPacingDecisionAfterTime:(SEL)a3;
- (_PXStoryPacingControllerDecisionHistory)init;
- (id)descriptionWithShortStyle:(BOOL)a3;
- (void)recordDecision:(id *)a3;
- (void)resetWithTargetDuration:(id *)a3 reason:(id)a4;
@end

@implementation _PXStoryPacingControllerDecisionHistory

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentError
{
  v32.epoch = 0;
  *&v32.value = PXStoryTimeZero;
  v4 = [(NSMutableArray *)self->_decisionHistory lastObject];
  if ([v4 decisionsCount] >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v4 decisions];
      v8 = *(v7 + v5 + 208);
      v29 = *(v7 + v5 + 192);
      v30 = v8;
      v31 = *(v7 + v5 + 224);
      v9 = *(v7 + v5 + 144);
      v25 = *(v7 + v5 + 128);
      v26 = v9;
      v10 = *(v7 + v5 + 176);
      v27 = *(v7 + v5 + 160);
      v28 = v10;
      v11 = *(v7 + v5 + 80);
      *&v21[16] = *(v7 + v5 + 64);
      v22 = v11;
      v12 = *(v7 + v5 + 112);
      v23 = *(v7 + v5 + 96);
      v24 = v12;
      v13 = *(v7 + v5 + 16);
      v18 = *(v7 + v5);
      v19 = v13;
      v14 = *(v7 + v5 + 48);
      v20 = *(v7 + v5 + 32);
      *v21 = v14;
      *&lhs.value = v22;
      lhs.epoch = v23;
      rhs = *&v21[8];
      CMTimeSubtract(&v16, &lhs, &rhs);
      lhs = v32;
      rhs = v16;
      CMTimeAdd(&v17, &lhs, &rhs);
      v32 = v17;
      ++v6;
      v5 += 240;
    }

    while ([v4 decisionsCount] > v6);
  }

  *retstr = v32;

  return result;
}

- (id)descriptionWithShortStyle:(BOOL)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  decisionHistory = self->_decisionHistory;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __69___PXStoryPacingControllerDecisionHistory_descriptionWithShortStyle___block_invoke;
  v13 = &unk_1E77486E0;
  v15 = a3;
  v14 = v5;
  v7 = v5;
  [(NSMutableArray *)decisionHistory enumerateObjectsWithOptions:2 usingBlock:&v10];
  v8 = [v7 copy];

  return v8;
}

- (void)recordDecision:(id *)a3
{
  v5 = [(NSMutableArray *)self->_decisionHistory lastObject];
  v6 = *&a3->var10;
  v15[12] = *&a3->var8.var3;
  v15[13] = v6;
  v15[14] = *&a3->var11.var1;
  v7 = *&a3->var6.var0;
  v15[8] = *&a3->var4.var1;
  v15[9] = v7;
  v8 = *&a3->var8.var0;
  v15[10] = *&a3->var6.var3;
  v15[11] = v8;
  v9 = *&a3->var3.var0;
  v15[4] = *&a3->var2.var1;
  v15[5] = v9;
  v10 = *&a3->var4.var0.var1;
  v15[6] = *&a3->var3.var3;
  v15[7] = v10;
  v11 = *&a3->var1.var0.var1;
  v15[0] = *&a3->var0;
  v15[1] = v11;
  v12 = *&a3->var1.var1.var3;
  v15[2] = *&a3->var1.var1.var0;
  v15[3] = v12;
  [v5 appendDecision:v15];

  decisionCount = self->_decisionCount;
  self->_decisionCount = decisionCount + 1;
  if (a3->var4.var1 >= 2)
  {
    ++self->_onBarCount;
  }

  if (decisionCount < 0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = self->_onBarCount / (decisionCount + 1) * 100.0;
  }

  self->_onBarPercentage = v14;
}

- (void)resetWithTargetDuration:(id *)a3 reason:(id)a4
{
  v6 = a4;
  v7 = [_PXStoryPacingControllerDecisionList alloc];
  v11 = *a3;
  v8 = [(_PXStoryPacingControllerDecisionList *)v7 initWithResetReason:v6 targetRemainingDuration:&v11];

  v9 = [(NSMutableArray *)self->_decisionHistory lastObject];
  v10 = [v9 decisionsCount];

  if (!v10)
  {
    [(NSMutableArray *)self->_decisionHistory removeLastObject];
  }

  [(NSMutableArray *)self->_decisionHistory addObject:v8];
}

- ($98F545CD36100C1EB7458A589033337F)firstPacingDecisionAfterTime:(SEL)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x11010000000;
  v21 = &unk_1A561E057;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [(NSMutableArray *)self->_decisionHistory lastObject];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72___PXStoryPacingControllerDecisionHistory_firstPacingDecisionAfterTime___block_invoke;
  v16[3] = &unk_1E77486B8;
  v17 = *a4;
  v16[4] = &v18;
  [v6 enumerateDecisionsWithBlock:v16];

  v7 = v19;
  v8 = *(v19 + 15);
  *&retstr->var8.var3 = *(v19 + 14);
  *&retstr->var10 = v8;
  *&retstr->var11.var1 = *(v7 + 16);
  v9 = *(v7 + 11);
  *&retstr->var4.var1 = *(v7 + 10);
  *&retstr->var6.var0 = v9;
  v10 = *(v7 + 13);
  *&retstr->var6.var3 = *(v7 + 12);
  *&retstr->var8.var0 = v10;
  v11 = *(v7 + 7);
  *&retstr->var2.var1 = *(v7 + 6);
  *&retstr->var3.var0 = v11;
  v12 = *(v7 + 9);
  *&retstr->var3.var3 = *(v7 + 8);
  *&retstr->var4.var0.var1 = v12;
  v13 = *(v7 + 3);
  *&retstr->var0 = *(v7 + 2);
  *&retstr->var1.var0.var1 = v13;
  v14 = *(v7 + 5);
  *&retstr->var1.var1.var0 = *(v7 + 4);
  *&retstr->var1.var1.var3 = v14;
  _Block_object_dispose(&v18, 8);
  return result;
}

- (_PXStoryPacingControllerDecisionHistory)init
{
  v11.receiver = self;
  v11.super_class = _PXStoryPacingControllerDecisionHistory;
  v2 = [(_PXStoryPacingControllerDecisionHistory *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    decisionHistory = v2->_decisionHistory;
    v2->_decisionHistory = v3;

    v5 = v2->_decisionHistory;
    v6 = [_PXStoryPacingControllerDecisionList alloc];
    v9 = *MEMORY[0x1E6960C70];
    v10 = *(MEMORY[0x1E6960C70] + 16);
    v7 = [(_PXStoryPacingControllerDecisionList *)v6 initWithResetReason:@"Initial" targetRemainingDuration:&v9];
    [(NSMutableArray *)v5 addObject:v7];
  }

  return v2;
}

@end