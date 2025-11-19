@interface TSCH3DLightShaderEffectState
+ (id)effectState;
- (BOOL)isEqual:(id)a3;
- (TSCH3DLightShaderEffectState)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPackageState:(const void *)a3;
@end

@implementation TSCH3DLightShaderEffectState

+ (id)effectState
{
  v2 = objc_alloc_init(TSCH3DLightShaderEffectState);

  return v2;
}

- (TSCH3DLightShaderEffectState)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DLightShaderEffectState;
  v2 = [(TSCH3DLightShaderEffectState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lights = v2->_lights;
    v2->_lights = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  v20 = v15;
  if (v15)
  {
    v21 = *(v15 + 8);
    if (!v21)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DLightShaderEffectState copyWithZone:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffectState.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 33, 0, "invalid nil value for '%{public}s'", "result->_lights");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
      v21 = v20[1];
    }

    objc_msgSend_addObjectsFromArray_(v21, v16, v17, v18, v19, self->_lights);
    v37 = v20 + 5;
    p_var2 = &self->_packageState.transforms.__elems_[0].value[1].var2;
    v39 = 2;
    do
    {
      *(v37 - 6) = LODWORD(p_var2[-6].var0);
      *(v37 - 5) = LODWORD(p_var2[-5].var0);
      *(v37 - 4) = LODWORD(p_var2[-4].var0);
      *(v37 - 3) = LODWORD(p_var2[-3].var0);
      *(v37 - 2) = LODWORD(p_var2[-2].var0);
      *(v37 - 1) = LODWORD(p_var2[-1].var0);
      *v37 = LODWORD(p_var2->var0);
      v37[1] = LODWORD(p_var2[1].var0);
      v37[2] = LODWORD(p_var2[2].var0);
      v37[3] = LODWORD(p_var2[3].var0);
      v37[4] = LODWORD(p_var2[4].var0);
      v37[5] = LODWORD(p_var2[5].var0);
      v37[6] = LODWORD(p_var2[6].var0);
      v37[7] = LODWORD(p_var2[7].var0);
      v37[8] = LODWORD(p_var2[8].var0);
      v37[9] = LODWORD(p_var2[9].var0);
      v37 += 16;
      p_var2 += 16;
      --v39;
    }

    while (v39);
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6 && objc_msgSend_isEqual_(self->_lights, v5, v7, v8, v9, *(v6 + 1)))
  {
    v10 = v6 + 4;
    p_var2 = &self->_packageState.transforms.__elems_[0].value[1].var2;
    v12 = 128;
    v13 = 1;
    while (p_var2[-6].var0 == *v10 && p_var2[-5].var0 == v10[1] && p_var2[-4].var0 == v10[2] && p_var2[-3].var0 == v10[3] && p_var2[-2].var0 == v10[4] && p_var2[-1].var0 == v10[5] && p_var2->var0 == v10[6] && p_var2[1].var0 == v10[7] && p_var2[2].var0 == v10[8] && p_var2[3].var0 == v10[9] && p_var2[4].var0 == v10[10] && p_var2[5].var0 == v10[11] && p_var2[6].var0 == v10[12] && p_var2[7].var0 == v10[13] && p_var2[8].var0 == v10[14] && p_var2[9].var0 == v10[15])
    {
      v10 += 16;
      p_var2 += 16;
      v12 -= 64;
      if (!v12)
      {
        goto LABEL_23;
      }
    }
  }

  v13 = 0;
LABEL_23:

  return v13;
}

- (void)setPackageState:(const void *)a3
{
  p_var2 = &self->_packageState.transforms.__elems_[0].value[1].var2;
  v4 = (a3 + 32);
  v5 = 2;
  do
  {
    LODWORD(p_var2[-6].var0) = *(v4 - 8);
    LODWORD(p_var2[-5].var0) = *(v4 - 7);
    LODWORD(p_var2[-4].var0) = *(v4 - 6);
    LODWORD(p_var2[-3].var0) = *(v4 - 5);
    LODWORD(p_var2[-2].var0) = *(v4 - 4);
    LODWORD(p_var2[-1].var0) = *(v4 - 3);
    LODWORD(p_var2->var0) = *(v4 - 2);
    LODWORD(p_var2[1].var0) = *(v4 - 1);
    p_var2[2].var0 = *v4;
    LODWORD(p_var2[3].var0) = *(v4 + 1);
    LODWORD(p_var2[4].var0) = *(v4 + 2);
    LODWORD(p_var2[5].var0) = *(v4 + 3);
    LODWORD(p_var2[6].var0) = *(v4 + 4);
    LODWORD(p_var2[7].var0) = *(v4 + 5);
    LODWORD(p_var2[8].var0) = *(v4 + 6);
    LODWORD(p_var2[9].var0) = *(v4 + 7);
    p_var2 += 16;
    v4 += 16;
    --v5;
  }

  while (v5);
}

- (id).cxx_construct
{
  for (i = 0; i != 128; i += 64)
  {
    v3 = self + i;
    *(v3 + 4) = 1065353216;
    *(v3 + 28) = 0;
    *(v3 + 20) = 0;
    *(v3 + 9) = 1065353216;
    *(v3 + 5) = 0;
    *(v3 + 6) = 0;
    *(v3 + 14) = 1065353216;
    *(v3 + 68) = 0;
    *(v3 + 60) = 0;
    *(v3 + 19) = 1065353216;
  }

  return self;
}

@end