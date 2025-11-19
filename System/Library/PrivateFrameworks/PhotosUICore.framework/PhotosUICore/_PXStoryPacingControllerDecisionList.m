@interface _PXStoryPacingControllerDecisionList
- (_PXStoryPacingControllerDecisionList)initWithResetReason:(id)a3 targetRemainingDuration:(id *)a4;
- (void)appendDecision:(id *)a3;
- (void)dealloc;
@end

@implementation _PXStoryPacingControllerDecisionList

- (void)dealloc
{
  free(self->_decisions);
  v3.receiver = self;
  v3.super_class = _PXStoryPacingControllerDecisionList;
  [(_PXStoryPacingControllerDecisionList *)&v3 dealloc];
}

- (void)appendDecision:(id *)a3
{
  if ([(_PXStoryPacingControllerDecisionList *)self decisionsCount])
  {
    if ([(_PXStoryPacingControllerDecisionList *)self decisionsCount]== self->_capacity)
    {
      _PXGArrayResize();
    }
  }

  else
  {
    v5 = malloc_type_calloc(1uLL, 0xF0uLL, 0x100004052B395BFuLL);
    self->_decisions = v5;
    v7 = *&a3->var1.var0.var1;
    v6 = *&a3->var1.var1.var0;
    *&v5->var0 = *&a3->var0;
    *&v5->var1.var0.var1 = v7;
    *&v5->var1.var1.var0 = v6;
    v8 = *&a3->var3.var3;
    v10 = *&a3->var1.var1.var3;
    v9 = *&a3->var2.var1;
    *&v5->var3.var0 = *&a3->var3.var0;
    *&v5->var3.var3 = v8;
    *&v5->var1.var1.var3 = v10;
    *&v5->var2.var1 = v9;
    v11 = *&a3->var6.var3;
    v13 = *&a3->var4.var0.var1;
    v12 = *&a3->var4.var1;
    *&v5->var6.var0 = *&a3->var6.var0;
    *&v5->var6.var3 = v11;
    *&v5->var4.var0.var1 = v13;
    *&v5->var4.var1 = v12;
    v14 = *&a3->var11.var1;
    v16 = *&a3->var8.var0;
    v15 = *&a3->var8.var3;
    *&v5->var10 = *&a3->var10;
    *&v5->var11.var1 = v14;
    *&v5->var8.var0 = v16;
    *&v5->var8.var3 = v15;
    self->_capacity = 1;
  }

  v17 = &self->_decisions[self->_decisionsCount];
  v18 = *&a3->var3.var3;
  v20 = *&a3->var1.var1.var3;
  v19 = *&a3->var2.var1;
  *&v17->var3.var0 = *&a3->var3.var0;
  *&v17->var3.var3 = v18;
  *&v17->var1.var1.var3 = v20;
  *&v17->var2.var1 = v19;
  v21 = *&a3->var6.var3;
  v23 = *&a3->var4.var0.var1;
  v22 = *&a3->var4.var1;
  *&v17->var6.var0 = *&a3->var6.var0;
  *&v17->var6.var3 = v21;
  *&v17->var4.var0.var1 = v23;
  *&v17->var4.var1 = v22;
  v24 = *&a3->var11.var1;
  v26 = *&a3->var8.var0;
  v25 = *&a3->var8.var3;
  *&v17->var10 = *&a3->var10;
  *&v17->var11.var1 = v24;
  *&v17->var8.var0 = v26;
  *&v17->var8.var3 = v25;
  v27 = *&a3->var0;
  v28 = *&a3->var1.var1.var0;
  *&v17->var1.var0.var1 = *&a3->var1.var0.var1;
  *&v17->var1.var1.var0 = v28;
  *&v17->var0 = v27;
  ++self->_decisionsCount;
}

- (_PXStoryPacingControllerDecisionList)initWithResetReason:(id)a3 targetRemainingDuration:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _PXStoryPacingControllerDecisionList;
  v7 = [(_PXStoryPacingControllerDecisionList *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = *(v7 + 4);
    *(v7 + 4) = v8;

    v10 = *&a4->var0;
    *(v7 + 7) = a4->var3;
    *(v7 + 40) = v10;
    *(v7 + 1) = 0;
  }

  return v7;
}

@end