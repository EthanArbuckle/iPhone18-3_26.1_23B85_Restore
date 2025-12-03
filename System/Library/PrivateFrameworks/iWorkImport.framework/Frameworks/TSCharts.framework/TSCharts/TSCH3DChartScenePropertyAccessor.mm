@interface TSCH3DChartScenePropertyAccessor
+ (id)accessorWithScene:(id)scene;
+ (id)nonNilAccessorWithScene:(id)scene;
- (BOOL)dynamicShadowsEnabled;
- (BOOL)isHorizontal;
- (BOOL)labelsShadowIgnored;
- (BOOL)layoutConfigurationEnabled;
- (float)depthToWidthRatio;
- (tmat4x4<float>)constantDepthStageTransform;
- (tmat4x4<float>)globalUnitTransform;
- (tmat4x4<float>)stageTransform;
- (tmat4x4<float>)transform;
- (tmat4x4<float>)unitTransform;
- (tvec2<float>)sageChartInfoSize;
- (tvec3<float>)adjustedInfoChartScale;
- (tvec3<float>)cachedRotation;
- (tvec3<float>)categoryLabelsOffset;
- (tvec3<float>)elementScale;
- (tvec3<float>)gridlinesOffset;
- (tvec3<float>)infoChartScaleVec3;
- (tvec3<float>)initialInfoChartScaleVec3;
- (tvec3<float>)originalRotation;
- (tvec3<float>)rotation;
- (tvec3<float>)stageOffset;
- (tvec3<float>)stageScale;
- (tvec3<float>)stageXYCenter;
- (tvec4<float>)infoChartScale;
- (tvec4<float>)initialInfoChartScale;
- (tvec4<float>)originalInfoChartScale;
- (void)resetInfoChartScale;
- (void)setCachedRotation:(tvec3<float>)rotation;
- (void)setDynamicShadowsEnabled:(BOOL)enabled;
- (void)setElementScale:(tvec3<float>)scale;
- (void)setInfoChartScale:(tvec4<float>)scale;
- (void)setInfoChartScaleVec3:(tvec3<float>)vec3;
- (void)setInitialInfoChartScale:(tvec4<float>)scale;
- (void)setInitialInfoChartScaleVec3:(tvec3<float>)vec3;
- (void)setLabelsShadowIgnored:(BOOL)ignored;
- (void)setLayoutConfigurationEnabled:(BOOL)enabled;
- (void)setOriginalInfoChartScale:(tvec4<float>)scale;
- (void)setOriginalRotation:(tvec3<float>)rotation;
- (void)setRotation:(tvec3<float>)rotation;
- (void)setSageChartInfoSize:(tvec2<float>)size;
- (void)setStageOffset:(tvec3<float>)offset;
- (void)setStageScale:(tvec3<float>)scale;
- (void)updateInfoChartScaleUsingConstantDepth;
@end

@implementation TSCH3DChartScenePropertyAccessor

+ (id)accessorWithScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "+[TSCH3DChartScenePropertyAccessor accessorWithScene:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartScenePropertyAccessor.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 84, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v26.receiver = self;
  v26.super_class = &OBJC_METACLASS___TSCH3DChartScenePropertyAccessor;
  v24 = objc_msgSendSuper2(&v26, sel_accessorWithScene_, sceneCopy);

  return v24;
}

+ (id)nonNilAccessorWithScene:(id)scene
{
  v7 = objc_msgSend_accessorWithScene_(self, a2, v3, v4, v5, scene);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "+[TSCH3DChartScenePropertyAccessor nonNilAccessorWithScene:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartScenePropertyAccessor.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 90, 0, "invalid nil value for '%{public}s'", "returnValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  return v7;
}

- (tvec2<float>)sageChartInfoSize
{
  v3 = v2;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v17 = objc_msgSend_propertiesForType_(WeakRetained, v5, v6, v7, v8, @"TSCH3DChartScenePropertyAccessor.sageChartInfoSize");

  v13 = v17;
  if (v17)
  {
    objc_msgSend_CGSizeValue(v17, v9, v10, v11, v12);
    *&v14 = v14;
    *&v15 = v15;
    *v3 = LODWORD(v14);
    v3[1] = LODWORD(v15);
    v13 = v17;
  }

  else
  {
    *v3 = qword_2812EE650;
  }

  return v16;
}

- (void)setSageChartInfoSize:(tvec2<float>)size
{
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v6 = objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], v4, **&size, *(*&size + 4), v5);
  objc_msgSend_setProperties_forType_(WeakRetained, v7, v8, v9, v10, v6, @"TSCH3DChartScenePropertyAccessor.sageChartInfoSize");
}

- (tvec3<float>)rotation
{
  v3 = v2;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v14 = objc_msgSend_propertiesForType_(WeakRetained, v5, v6, v7, v8, @"TSCH3DChartScenePropertyAccessor.rotation");

  v13 = v14;
  if (v14)
  {
    objc_msgSend_value3(v14, v9, v10, v11, v12);
  }

  else
  {
    *v3 = qword_2812EE5F0;
    *(v3 + 8) = dword_2812EE5F8;
  }

  result.var2 = v9;
  result.var0 = v13;
  result.var1 = *(&v13 + 4);
  return result;
}

- (void)setRotation:(tvec3<float>)rotation
{
  v3 = *&rotation.var0.var0;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v4, v5, v6, v7, v3);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.rotation");
}

- (tvec3<float>)originalRotation
{
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v14 = objc_msgSend_propertiesForType_(WeakRetained, v4, v5, v6, v7, @"TSCH3DChartScenePropertyAccessor.originalRotation");

  if (v14)
  {
    objc_msgSend_value3(v14, v8, v9, v10, v11);
  }

  else
  {

    v12 = objc_msgSend_rotation(self, v8, v9, v10, v11);
  }

  result.var0 = v12;
  result.var1 = *(&v12 + 4);
  result.var2 = v13;
  return result;
}

- (void)setOriginalRotation:(tvec3<float>)rotation
{
  v3 = *&rotation.var0.var0;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v4, v5, v6, v7, v3);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.originalRotation");
}

- (tvec3<float>)cachedRotation
{
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v14 = objc_msgSend_propertiesForType_(WeakRetained, v4, v5, v6, v7, @"TSCH3DChartScenePropertyAccessor.cachedRotation");

  if (v14)
  {
    objc_msgSend_value3(v14, v8, v9, v10, v11);
  }

  else
  {

    v12 = objc_msgSend_rotation(self, v8, v9, v10, v11);
  }

  result.var0 = v12;
  result.var1 = *(&v12 + 4);
  result.var2 = v13;
  return result;
}

- (void)setCachedRotation:(tvec3<float>)rotation
{
  v3 = *&rotation.var0.var0;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v4, v5, v6, v7, v3);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.cachedRotation");
}

- (tvec4<float>)initialInfoChartScale
{
  v3 = v2;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v14 = objc_msgSend_propertiesForType_(WeakRetained, v5, v6, v7, v8, @"TSCH3DChartScenePropertyAccessor.initialInfoChartScale");

  v13 = v14;
  if (v14)
  {
    objc_msgSend_value4(v14, v9, v10, v11, v12);
  }

  else
  {
    *v3 = xmmword_2812EE600;
  }

  result.var2 = v9;
  result.var3 = *(&v9 + 4);
  result.var0 = v13;
  result.var1 = *(&v13 + 4);
  return result;
}

- (void)setInitialInfoChartScale:(tvec4<float>)scale
{
  v3 = *&scale.var0.var0;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_vectorWithVec4_(TSCH3DVector, v4, v5, v6, v7, v3);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.initialInfoChartScale");
}

- (tvec4<float>)infoChartScale
{
  v3 = v2;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v14 = objc_msgSend_propertiesForType_(WeakRetained, v5, v6, v7, v8, @"TSCH3DChartScenePropertyAccessor.infoChartScale");

  v13 = v14;
  if (v14)
  {
    objc_msgSend_value4(v14, v9, v10, v11, v12);
  }

  else
  {
    *v3 = xmmword_2812EE610;
  }

  result.var2 = v9;
  result.var3 = *(&v9 + 4);
  result.var0 = v13;
  result.var1 = *(&v13 + 4);
  return result;
}

- (void)setInfoChartScale:(tvec4<float>)scale
{
  v3 = *&scale.var0.var0;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_vectorWithVec4_(TSCH3DVector, v4, v5, v6, v7, v3);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.infoChartScale");
}

- (tvec3<float>)elementScale
{
  v3 = v2;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v14 = objc_msgSend_propertiesForType_(WeakRetained, v5, v6, v7, v8, @"TSCH3DChartScenePropertyAccessor.elementScale");

  v13 = v14;
  if (v14)
  {
    objc_msgSend_value3(v14, v9, v10, v11, v12);
  }

  else
  {
    *v3 = qword_2812EE620;
    *(v3 + 8) = dword_2812EE628;
  }

  result.var2 = v9;
  result.var0 = v13;
  result.var1 = *(&v13 + 4);
  return result;
}

- (void)setElementScale:(tvec3<float>)scale
{
  v3 = *&scale.var0.var0;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v4, v5, v6, v7, v3);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.elementScale");
}

- (tvec3<float>)stageScale
{
  v3 = v2;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v14 = objc_msgSend_propertiesForType_(WeakRetained, v5, v6, v7, v8, @"TSCH3DChartScenePropertyAccessor.stageScale");

  v13 = v14;
  if (v14)
  {
    objc_msgSend_value3(v14, v9, v10, v11, v12);
  }

  else
  {
    *v3 = qword_2812EE630;
    *(v3 + 8) = dword_2812EE638;
  }

  result.var2 = v9;
  result.var0 = v13;
  result.var1 = *(&v13 + 4);
  return result;
}

- (void)setStageScale:(tvec3<float>)scale
{
  v3 = *&scale.var0.var0;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v4, v5, v6, v7, v3);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.stageScale");
}

- (tvec3<float>)stageOffset
{
  v3 = v2;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v14 = objc_msgSend_propertiesForType_(WeakRetained, v5, v6, v7, v8, @"TSCH3DChartScenePropertyAccessor.stageOffset");

  v13 = v14;
  if (v14)
  {
    objc_msgSend_value3(v14, v9, v10, v11, v12);
  }

  else
  {
    *v3 = qword_2812EE640;
    *(v3 + 8) = dword_2812EE648;
  }

  result.var2 = v9;
  result.var0 = v13;
  result.var1 = *(&v13 + 4);
  return result;
}

- (void)setStageOffset:(tvec3<float>)offset
{
  v3 = *&offset.var0.var0;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v4, v5, v6, v7, v3);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.stageOffset");
}

- (tvec4<float>)originalInfoChartScale
{
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v14 = objc_msgSend_propertiesForType_(WeakRetained, v4, v5, v6, v7, @"TSCH3DChartScenePropertyAccessor.originalInfoChartScale");

  if (v14)
  {
    objc_msgSend_value4(v14, v8, v9, v10, v11);
  }

  else
  {

    v12 = objc_msgSend_infoChartScale(self, v8, v9, v10, v11);
  }

  result.var2 = v13;
  result.var3 = *(&v13 + 4);
  result.var0 = v12;
  result.var1 = *(&v12 + 4);
  return result;
}

- (void)setOriginalInfoChartScale:(tvec4<float>)scale
{
  v3 = *&scale.var0.var0;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_vectorWithVec4_(TSCH3DVector, v4, v5, v6, v7, v3);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.originalInfoChartScale");
}

- (BOOL)layoutConfigurationEnabled
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_propertiesForType_(WeakRetained, v4, v5, v6, v7, @"TSCH3DChartScenePropertyAccessor.enableLayoutConfiguration");
  v9 = TSUCheckedDynamicCast();

  LOBYTE(WeakRetained) = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);
  return WeakRetained;
}

- (void)setLayoutConfigurationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, v5, v6, v7, enabledCopy);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.enableLayoutConfiguration");
}

- (BOOL)dynamicShadowsEnabled
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_propertiesForType_(WeakRetained, v4, v5, v6, v7, @"TSCH3DChartScenePropertyAccessor.dynamicShadows");
  v9 = TSUCheckedDynamicCast();

  LOBYTE(WeakRetained) = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);
  return WeakRetained;
}

- (void)setDynamicShadowsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, v5, v6, v7, enabledCopy);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.dynamicShadows");
}

- (BOOL)labelsShadowIgnored
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_propertiesForType_(WeakRetained, v4, v5, v6, v7, @"TSCH3DChartScenePropertyAccessor.ignoreLabelsShadow");
  v9 = TSUCheckedDynamicCast();

  LOBYTE(WeakRetained) = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13);
  return WeakRetained;
}

- (void)setLabelsShadowIgnored:(BOOL)ignored
{
  ignoredCopy = ignored;
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, v5, v6, v7, ignoredCopy);
  objc_msgSend_setProperties_forType_(WeakRetained, v9, v10, v11, v12, v8, @"TSCH3DChartScenePropertyAccessor.ignoreLabelsShadow");
}

- (tvec3<float>)stageXYCenter
{
  v7 = v2;
  objc_msgSend_stageScale(self, a2, v3, v4, v5);
  v10 = objc_msgSend_stageOffset(self, v8, v12, 0.0000305175853, v9);
  *v7 = vadd_f32(vmul_f32(*&v12, 0x3F0000003F000000), *&v12);
  v7[1].f32[0] = v13 + 0.0;
  result.var0 = v10;
  result.var1 = *(&v10 + 4);
  result.var2 = v11;
  return result;
}

- (tmat4x4<float>)stageTransform
{
  v30 = 0;
  v31 = 0;
  v34 = xmmword_2764D5F20;
  objc_msgSend_adjustedInfoChartScale(self, a3, 0.0, v3, v4);
  v32 = v29[0].i64[0];
  v33 = v29[0].i32[2];
  objc_msgSend_stageXYCenter(self, v7, COERCE_DOUBLE(__PAIR64__(v29[0].u32[1], v29[0].u32[2])), v8, v9);
  v35 = v29[0].i64[0];
  v36 = v29[0].i32[2];
  v37 = 1;
  sub_27616AF8C(&v30, v29, v10);
  objc_msgSend_stageOffset(self, v11, v12, v13, v14);
  v21 = 1065353216;
  v23 = 0;
  v22 = 0;
  v24 = 1065353216;
  v25 = 0;
  v26 = 0;
  v27 = 1065353216;
  *v15.f32 = v19;
  *&v15.u32[2] = vmul_f32(v19, 0);
  *v16.f32 = vrev64_s32(*&v15.u32[2]);
  v16.i32[3] = 0;
  v17 = vaddq_f32(v15, vdupq_lane_s64(v16.i64[0], 0));
  v15.i32[3] = v20;
  v17.i32[3] = vmulq_f32(v15, v16).i32[3];
  v28 = vaddq_f32(vaddq_f32(vzip2q_s32(vtrn2q_s32(v17, v15), vrev64q_s32(v17)), v17), xmmword_2764D5F20);
  sub_2761558A0(v29, &v21, retstr);
  return result;
}

- (tmat4x4<float>)unitTransform
{
  objc_msgSend_stageTransform(self, a3, v3, v4, v5);
  result = objc_msgSend_stageScale(self, v8, v9, v10, v11);
  v13 = vmulq_n_f32(v19, v16);
  retstr->value[0] = vmulq_n_f32(v18, v15);
  retstr->value[1] = v13;
  v14 = v21;
  retstr->value[2] = vmulq_n_f32(v20, v17);
  retstr->value[3] = v14;
  return result;
}

- (tmat4x4<float>)transform
{
  objc_msgSend_stageXYCenter(self, a3, v3, v4, v5);
  retstr->value[0].var0.var0 = 1.0;
  *&retstr->value[0].var3.var0 = 0;
  *&retstr->value[0].var1.var0 = 0;
  retstr->value[1].var1.var0 = 1.0;
  *&retstr->value[1].var2.var0 = 0;
  *&retstr->value[2].var0.var0 = 0;
  *v8.f32 = v71;
  *&v8.u32[2] = vmul_f32(v71, 0);
  *v9.f32 = vrev64_s32(*&v8.u32[2]);
  v9.i32[3] = 0;
  v10 = vaddq_f32(v8, vdupq_lane_s64(v9.i64[0], 0));
  v8.f32[3] = v72;
  *&retstr->value[2].var2.var0 = 1065353216;
  v10.i32[3] = vmulq_f32(v8, v9).i32[3];
  v11 = vaddq_f32(vaddq_f32(vzip2q_s32(vtrn2q_s32(v10, v8), vrev64q_s32(v10)), v10), xmmword_2764D5F20);
  retstr->value[3] = v11;
  objc_msgSend_rotation(self, v12, *v11.i64, 0.0, *v10.i64);
  v13 = __sincosf_stret(v69 * 0.017453);
  v14 = (1.0 - v13.__cosval) * 0.0;
  v15 = v13.__cosval + (1.0 - v13.__cosval);
  v16 = (v14 + 0.0) + (v13.__sinval * 0.0);
  v17 = (v14 + 0.0) + (v13.__sinval * -0.0);
  v18 = v14 + 0.0;
  v19 = v17;
  v20 = v13.__cosval + (v14 * 0.0);
  v21 = (v14 * 0.0) + 0.0;
  v22 = v13.__sinval + v21;
  v23 = v18 + (v13.__sinval * 0.0);
  v24 = v21 - v13.__sinval;
  v25 = v15 * 0.0;
  v26 = v16 * 0.0;
  v27 = v15 + (v16 * 0.0);
  v28 = v25 + v16;
  v29 = v25 + v26;
  v61 = (v17 * 0.0) + v27;
  *&v62 = v28 + (v17 * 0.0);
  *(&v62 + 1) = v17 + v29;
  *&v63 = (v17 * 0.0) + v29;
  v30 = (v20 * 0.0) + (v17 * 0.0);
  *(&v63 + 1) = ((v20 * 0.0) + v19) + (v22 * 0.0);
  v64 = (v22 * 0.0) + (v20 + (v19 * 0.0));
  *&v65 = v22 + v30;
  *(&v65 + 1) = (v22 * 0.0) + v30;
  v31 = (v23 * 0.0) + (v24 * 0.0);
  *&v66 = (v20 * 0.0) + (v23 + (v24 * 0.0));
  *(&v66 + 1) = (v20 * 0.0) + (v24 + (v23 * 0.0));
  *&v67 = v20 + v31;
  *(&v67 + 1) = (v20 * 0.0) + v31;
  v68 = xmmword_2764D5F20;
  sub_2761558A0(retstr, &v61, &v73);
  v32 = v74;
  retstr->value[0] = v73;
  retstr->value[1] = v32;
  v33 = v76;
  retstr->value[2] = v75;
  retstr->value[3] = v33;
  v34 = __sincosf_stret(v70 * 0.017453);
  v35 = (1.0 - v34.__cosval) * 0.0;
  v36 = v34.__cosval + (v35 * 0.0);
  v37 = v35 + 0.0;
  v38 = (v35 + 0.0) + (v34.__sinval * 0.0);
  v39 = (v35 * 0.0) + 0.0;
  v40 = v39 - v34.__sinval;
  v41 = ((1.0 - v34.__cosval) * 0.0) + 0.0;
  v42 = v41 + (v34.__sinval * -0.0);
  v43 = v34.__cosval + (1.0 - v34.__cosval);
  v44 = v41 + (v34.__sinval * 0.0);
  v45 = v34.__sinval + v39;
  v46 = v37 + (v34.__sinval * -0.0);
  v47 = (v36 * 0.0) + (v38 * 0.0);
  v61 = (v40 * 0.0) + (v36 + (v38 * 0.0));
  *&v62 = ((v36 * 0.0) + v38) + (v40 * 0.0);
  *(&v62 + 1) = v40 + v47;
  *&v63 = (v40 * 0.0) + v47;
  v48 = (v43 * 0.0) + (v42 * 0.0);
  *(&v63 + 1) = ((v43 * 0.0) + v42) + (v44 * 0.0);
  v64 = (v44 * 0.0) + (v43 + (v42 * 0.0));
  *&v65 = v44 + v48;
  *(&v65 + 1) = (v44 * 0.0) + v48;
  v49 = v45 * 0.0;
  v50 = v46 * 0.0;
  v51 = v45 + (v46 * 0.0);
  v52 = v46 + v49;
  v53 = v49 + v50;
  *&v66 = (v36 * 0.0) + v51;
  *(&v66 + 1) = (v36 * 0.0) + v52;
  *&v67 = v36 + v53;
  *(&v67 + 1) = (v36 * 0.0) + v53;
  v68 = xmmword_2764D5F20;
  sub_2761558A0(retstr, &v61, &v73);
  v54 = v74;
  retstr->value[0] = v73;
  retstr->value[1] = v54;
  v55 = v76;
  retstr->value[2] = v75;
  retstr->value[3] = v55;
  v55.var0.var0 = v72 * -0.0;
  v56 = vmul_f32(v71, 0x8000000080000000);
  v57 = vadd_f32(vsub_f32(vrev64_s32(v56), v71), vdup_lane_s32(*&v55.var0.var0, 0));
  v61 = 1.0;
  v62 = 0;
  v63 = 0;
  v64 = 1.0;
  v66 = 0;
  v65 = 0;
  v56.f32[0] = vaddv_f32(v56);
  v67 = 1065353216;
  *&v68 = vadd_f32(v57, 0);
  *(&v68 + 2) = (v56.f32[0] - v72) + 0.0;
  *(&v68 + 3) = (v56.f32[0] + (v72 * -0.0)) + 1.0;
  sub_2761558A0(retstr, &v61, &v73);
  v59 = v74;
  retstr->value[0] = v73;
  retstr->value[1] = v59;
  v60 = v76;
  retstr->value[2] = v75;
  retstr->value[3] = v60;
  return result;
}

- (tmat4x4<float>)constantDepthStageTransform
{
  v36 = 0;
  v37 = 0;
  v40 = xmmword_2764D5F20;
  objc_msgSend_adjustedInfoChartScale(self, a3, 0.0, v3, v4);
  objc_msgSend_constantDepthFactor(self, v7, v8, v9, v10);
  v35 = LODWORD(v11);
  v38 = v34;
  v39 = LODWORD(v11);
  objc_msgSend_stageXYCenter(self, v12, v11, v34, v13);
  v41 = v33[0].i64[0];
  v42 = v33[0].i32[2];
  v43 = 1;
  sub_27616AF8C(&v36, v33, v14);
  objc_msgSend_stageOffset(self, v15, v16, v17, v18);
  v25 = 1065353216;
  v27 = 0;
  v26 = 0;
  v28 = 1065353216;
  v29 = 0;
  v30 = 0;
  v31 = 1065353216;
  *v19.f32 = v23;
  *&v19.u32[2] = vmul_f32(v23, 0);
  *v20.f32 = vrev64_s32(*&v19.u32[2]);
  v20.i32[3] = 0;
  v21 = vaddq_f32(v19, vdupq_lane_s64(v20.i64[0], 0));
  v19.i32[3] = v24;
  v21.i32[3] = vmulq_f32(v19, v20).i32[3];
  v32 = vaddq_f32(vaddq_f32(vzip2q_s32(vtrn2q_s32(v21, v19), vrev64q_s32(v21)), v21), xmmword_2764D5F20);
  sub_2761558A0(v33, &v25, retstr);
  return result;
}

- (tmat4x4<float>)globalUnitTransform
{
  objc_msgSend_transform(self, a3, v3, v4, v5);
  objc_msgSend_unitTransform(self, v8, v9, v10, v11);
  sub_2761558A0(v14, &v13, retstr);
  return result;
}

- (tvec3<float>)initialInfoChartScaleVec3
{
  v6 = v2;
  v7 = objc_msgSend_initialInfoChartScale(self, a2, v3, v4, v5);
  *v6 = v9;
  *(v6 + 8) = v10;
  result.var0 = v7;
  result.var1 = *(&v7 + 4);
  result.var2 = v8;
  return result;
}

- (void)setInitialInfoChartScaleVec3:(tvec3<float>)vec3
{
  v6 = *&vec3.var0.var0;
  objc_msgSend_initialInfoChartScale(self, a2, v3, v4, v5, *&vec3.var0.var0, *&vec3.var2.var0);
  *&v8 = *v6;
  DWORD2(v8) = *(v6 + 8);
  HIDWORD(v8) = v12;
  v13 = v8;
  objc_msgSend_setInitialInfoChartScale_(self, v9, *&v8, v10, v11, &v13);
}

- (tvec3<float>)infoChartScaleVec3
{
  v6 = v2;
  v7 = objc_msgSend_infoChartScale(self, a2, v3, v4, v5);
  *v6 = v9;
  *(v6 + 8) = v10;
  result.var0 = v7;
  result.var1 = *(&v7 + 4);
  result.var2 = v8;
  return result;
}

- (void)setInfoChartScaleVec3:(tvec3<float>)vec3
{
  v6 = *&vec3.var0.var0;
  objc_msgSend_infoChartScale(self, a2, v3, v4, v5, *&vec3.var0.var0, *&vec3.var2.var0);
  *&v8 = *v6;
  DWORD2(v8) = *(v6 + 8);
  HIDWORD(v8) = v12;
  v13 = v8;
  objc_msgSend_setInfoChartScale_(self, v9, *&v8, v10, v11, &v13);
}

- (void)updateInfoChartScaleUsingConstantDepth
{
  objc_msgSend_infoChartScale(self, a2, v2, v3, v4);
  objc_msgSend_constantDepthFactor(self, v6, v7, v8, v9);
  v17 = LODWORD(v10);
  v13 = v16;
  v14 = LODWORD(v10);
  v15 = v18;
  objc_msgSend_setInfoChartScale_(self, v11, v10, COERCE_DOUBLE(__PAIR64__(HIDWORD(v16), v18)), v12, &v13);
}

- (void)resetInfoChartScale
{
  objc_msgSend_initialInfoChartScale(self, a2, v2, v3, v4);
  v10 = v9;
  objc_msgSend_setInfoChartScale_(self, v6, *&v9, v7, v8, &v10);
}

- (float)depthToWidthRatio
{
  objc_msgSend_adjustedInfoChartScale(self, a2, v2, v3, v4);
  isHorizontal = objc_msgSend_isHorizontal(self, v6, v7, v8, v9);
  return sub_2761565A8(v12, isHorizontal);
}

- (tvec3<float>)gridlinesOffset
{
  v4 = v2;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v10 = objc_msgSend_main(WeakRetained, v6, v7, v8, v9);
  v11 = TSUCheckedDynamicCast();

  if (!v11)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DChartScenePropertyAccessor gridlinesOffset]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartScenePropertyAccessor.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 315, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  objc_msgSend_adjustedInfoChartScale(self, v12, v13, v14, v15);
  v31 = objc_loadWeakRetained(&self->super._scene);
  objc_msgSend_chartMinZForScene_(v11, v32, v33, v34, v35, v31);
  v37 = sub_276156548(v36, v40);

  *v4 = 0;
  *(v4 + 8) = v37;

  result.var0 = v38;
  result.var1 = *(&v38 + 4);
  result.var2 = v39;
  return result;
}

- (tvec3<float>)categoryLabelsOffset
{
  v4 = v2;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v10 = objc_msgSend_main(WeakRetained, v6, v7, v8, v9);
  v46 = TSUCheckedDynamicCast();

  if (!v46)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DChartScenePropertyAccessor categoryLabelsOffset]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartScenePropertyAccessor.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 323, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_loadWeakRetained(&self->super._scene);
  objc_msgSend_chartMinZForScene_(v46, v31, v32, v33, v34, v30);
  v36 = v35;

  v37 = objc_loadWeakRetained(&self->super._scene);
  objc_msgSend_depthForScene_(v46, v38, v39, v40, v41, v37);
  v43 = v42;

  *v4 = 0;
  *(v4 + 8) = v36 + v43;

  result.var0 = v44;
  result.var1 = *(&v44 + 4);
  result.var2 = v45;
  return result;
}

- (BOOL)isHorizontal
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v8 = objc_msgSend_main(WeakRetained, v4, v5, v6, v7);
  v9 = TSUCheckedDynamicCast();

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DChartScenePropertyAccessor isHorizontal]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartScenePropertyAccessor.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 331, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_opt_class();
  isHorizontalChart = objc_msgSend_isHorizontalChart(v29, v30, v31, v32, v33);

  return isHorizontalChart;
}

- (tvec3<float>)adjustedInfoChartScale
{
  v4 = v2;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v10 = objc_msgSend_main(WeakRetained, v6, v7, v8, v9);
  v11 = TSUCheckedDynamicCast();

  if (!v11)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DChartScenePropertyAccessor adjustedInfoChartScale]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartScenePropertyAccessor.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 338, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  objc_msgSend_infoChartScaleVec3(self, v12, v13, v14, v15);
  v32 = objc_loadWeakRetained(&self->super._scene);
  if (v11)
  {
    objc_msgSend_adjustedScaleForInfoChartScale_scene_(v11, v31, v33, v34, v35, v38, v32);
  }

  else
  {
    *(v4 + 8) = 0;
    *v4 = 0;
  }

  result.var0 = v36;
  result.var1 = *(&v36 + 4);
  result.var2 = v37;
  return result;
}

@end