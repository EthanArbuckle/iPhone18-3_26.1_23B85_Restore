@interface TSCH3DChartBarSceneObject
+ (id)partWithEnumerator:(id)a3 layoutSettings:(id *)a4;
+ (void)addHorizontalTransformToProperties:(id)a3;
+ (void)updateLightingEffectsState:(id)a3 scene:(id)a4;
- (tvec2<float>)labelObjectSpacePosition:(unsigned int)a3 axisValue:(double)a4 intercept:(double)a5;
- (void)updateLightingEffectsState:(id)a3 scene:(id)a4;
@end

@implementation TSCH3DChartBarSceneObject

+ (void)addHorizontalTransformToProperties:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_transform(TSCH3DTransform, v4, v5, v6, v7);
  v19 = 0x3F0000003F000000;
  v20 = 0;
  objc_msgSend_setCenter_(v8, v9, 0.0000305175853, v10, v11, &v19);
  LODWORD(v12) = -1087044365;
  LODWORD(v13) = 1060439283;
  objc_msgSend_setRotation_(v8, v14, COERCE_DOUBLE(0x8000000080000000), COERCE_DOUBLE(0x8000000080000000), v12, v13);
  objc_msgSend_setElementsTransform_(v3, v15, v16, v17, v18, v8);
}

+ (void)updateLightingEffectsState:(id)a3 scene:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_camera(v6, v7, v8, v9, v10);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_space(v11, v12, v13, v14, v15);
  }

  else
  {
    memset(v57, 0, sizeof(v57));
  }

  v21 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v17, v18, v19, v20, v6);
  v27 = v21;
  if (v21)
  {
    objc_msgSend_stageXYCenter(v21, v22, v23, v24, v25);
    v28 = v55;
    v29 = v56;
  }

  else
  {
    v56 = 0.0;
    v55 = 0;
    v28 = 0;
    v29 = 0.0;
  }

  *&v52[4] = 0uLL;
  *v52 = 1065353216;
  *&v52[20] = 1065353216;
  *&v52[24] = 0;
  *&v53 = 0;
  v30 = vmul_f32(v28, 0);
  v31 = vrev64_s32(v30);
  v30.f32[0] = vaddv_f32(v30);
  *v26.i32 = v29 * 0.0;
  *(&v53 + 1) = 1065353216;
  *&v54 = vadd_f32(vadd_f32(vadd_f32(v28, v31), vdup_lane_s32(v26, 0)), 0);
  *(&v54 + 2) = (v29 + v30.f32[0]) + 0.0;
  *(&v54 + 3) = (v30.f32[0] + (v29 * 0.0)) + 1.0;
  *v47 = xmmword_2764D6210;
  *&v47[16] = 0xB33BBD2E3F800000;
  v48 = 0;
  v49 = 0;
  *&v50[4] = 0uLL;
  *v50 = 1065353215;
  v51 = 1.0;
  sub_2761558A0(v52, v47, &v43);
  *v52 = v43;
  *&v52[16] = v44;
  v53 = v45;
  v54 = *v46;
  *v32.i32 = v56 * -0.0;
  v33 = vmul_f32(v55, 0x8000000080000000);
  v34 = vadd_f32(vsub_f32(v33, vrev64_s32(v55)), vdup_lane_s32(v32, 0));
  *&v47[12] = 0;
  *&v47[4] = 0;
  *v47 = 1065353216;
  *&v47[20] = 1065353216;
  v48 = 0;
  v49 = 0;
  v33.f32[0] = vaddv_f32(v33);
  *v50 = 1065353216;
  *&v50[8] = vadd_f32(v34, 0);
  *&v50[16] = (v33.f32[0] - v56) + 0.0;
  v51 = (v33.f32[0] + (v56 * -0.0)) + 1.0;
  sub_2761558A0(v52, v47, &v43);
  *v52 = v43;
  *&v52[16] = v44;
  v53 = v45;
  v54 = *v46;
  if (v6)
  {
    objc_msgSend_transform(v6, v35, *&v45, v46[0], v36);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  sub_2761558A0(v57, v41, v42);
  sub_2761558A0(v42, v52, v47);
  *&v37 = sub_27617F7E4(&v43, v57, v47);
  objc_msgSend_setLightingPackageEffectState_effectsStates_(TSCH3DLightingPackageShaderEffect, v38, v37, v39, v40, &v43, v5);
}

+ (id)partWithEnumerator:(id)a3 layoutSettings:(id *)a4
{
  v6 = a3;
  v24 = *a4;
  v23.receiver = a1;
  v23.super_class = &OBJC_METACLASS___TSCH3DChartBarSceneObject;
  v7 = objc_msgSendSuper2(&v23, sel_partWithEnumerator_layoutSettings_, v6, &v24);
  v12 = objc_msgSend_properties(v7, v8, v9, v10, v11);

  objc_msgSend_addHorizontalTransformToProperties_(a1, v13, v14, v15, v16, v12);
  v21 = objc_msgSend_scenePartWithEnumerator_properties_(TSCH3DScenePart, v17, v18, v19, v20, v6, v12);

  return v21;
}

- (tvec2<float>)labelObjectSpacePosition:(unsigned int)a3 axisValue:(double)a4 intercept:(double)a5
{
  v5 = a3;
  if ((a3 & 0x10) != 0)
  {
    v5 = a3 & 0xFFFFFFE7 | 8;
  }

  if ((v5 & 0x20) != 0)
  {
    v6 = v5 & 0xFFFFFFCB | 4;
  }

  else
  {
    v6 = v5;
  }

  v8.receiver = self;
  v8.super_class = TSCH3DChartBarSceneObject;
  return [(TSCH3DChartElementSceneObject *)&v8 labelObjectSpacePosition:v6 axisValue:a4 intercept:a5];
}

- (void)updateLightingEffectsState:(id)a3 scene:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = objc_opt_class();
  objc_msgSend_updateLightingEffectsState_scene_(v6, v7, v8, v9, v10, v11, v5);
}

@end