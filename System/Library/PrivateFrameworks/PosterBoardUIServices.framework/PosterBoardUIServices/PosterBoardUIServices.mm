BOOL sub_1CAE65590(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1CAE655E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CAE6564C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAEFA4EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CAE65678()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1CAEFA1CC();

    return sub_1CAEFA04C();
  }

  else
  {
    sub_1CAEFA07C();
    swift_getWitnessTable();
    sub_1CAEFA1AC();
    sub_1CAEFA04C();
    sub_1CAEFA78C();
    swift_getWitnessTable();
    sub_1CAEFA07C();
    swift_getWitnessTable();
    sub_1CAEFA1AC();
    return sub_1CAEFA04C();
  }
}

uint64_t sub_1CAE657DC()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1CAEFA1CC();
    sub_1CAEFA04C();
  }

  else
  {
    sub_1CAEFA07C();
    swift_getWitnessTable();
    sub_1CAEFA1AC();
    sub_1CAEFA04C();
    sub_1CAEFA78C();
    swift_getWitnessTable();
    sub_1CAEFA07C();
    swift_getWitnessTable();
    sub_1CAEFA1AC();
    sub_1CAEFA04C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1CAE65AC4@<X0>(uint64_t *a1@<X8>)
{
  result = BSMutableSettings.headerTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CAE65AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481A38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1CAE65BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481A38);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CAE65C80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481AF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1CAE65D3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481AF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1CAE65E40(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CAEB3ABC(v1);
}

void sub_1CAE65E74(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CAEB3F3C(v1);
}

uint64_t sub_1CAE65EB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481C68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481C78);
  sub_1CAEFA17C();
  sub_1CAEB6054(&qword_1EC481C80, &qword_1EC481C78);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1CAEB5938();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1CAE66008@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC481D10;
  return result;
}

uint64_t sub_1CAE66054(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC481D10 = v1;
  return result;
}

uint64_t sub_1CAE6609C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC481D40;
  return result;
}

uint64_t sub_1CAE660E8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC481D40 = v1;
  return result;
}

uint64_t sub_1CAE66130@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1CAE661F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CAE66230()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CAE66288()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CAE662C8()
{
  v1 = sub_1CAEF9E1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CAE663B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CAE664FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CAED4248(v1, v2);
}

uint64_t sub_1CAE66728()
{
  sub_1CAEE8644(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1CAE667D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CAEFA0BC();
  *a1 = result & 1;
  return result;
}

double sub_1CAE668A4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21PosterBoardUIServices34KeyboardPresentationMockTransition_progress;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void PRUISPosterSnapshotControllerSharedInit(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = [[_PRUISPosterSnapshotControllerImpl alloc] initWithCache:v9 instanceIdentifier:v8 extensionProvider:v7];

  v12 = v10[1];
  v10[1] = v11;
}

void sub_1CAE685D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 224), 8);
  _Block_object_dispose((v41 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PRUISStringFromDeviceMotionActivityLevel(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E83A73E0[a1];
  }
}

void sub_1CAE6B3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CAE6C238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void simd_slerp(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v4 = a2[1];
  if (vaddvq_f64(vaddq_f64(vmulq_f64(*a1, *a2), vmulq_f64(a1[1], v4))) >= 0.0)
  {
    v8 = a1[1];
    v12 = *a1;
    v13 = v8;
    v9 = a2[1];
    v10 = *a2;
    v11 = v9;
    v6 = &v12;
    v7 = &v10;
  }

  else
  {
    v12 = vnegq_f64(*a2);
    v13 = vnegq_f64(v4);
    v5 = a1[1];
    v10 = *a1;
    v11 = v5;
    v6 = &v10;
    v7 = &v12;
  }

  _simd_slerp_internal(v6, v7, a3, a4);
}

void sub_1CAE6CE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _simd_slerp_internal(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v6 = 1.0;
  v7 = 1.0 - a4;
  v8 = a1[1];
  v9 = a2[1];
  v10 = vsubq_f64(*a1, *a2);
  v11 = vsubq_f64(v8, v9);
  v10.f64[0] = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v10, v10), vmulq_f64(v11, v11))));
  v33 = *a2;
  v34 = *a1;
  v12 = vaddq_f64(*a1, *a2);
  v35 = v8;
  v32 = v9;
  v13 = vaddq_f64(v8, v9);
  v14 = atan2(v10.f64[0], sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v12, v12), vmulq_f64(v13, v13)))));
  v15 = v14 + v14;
  v16 = v14 + v14 == 0.0;
  v17 = 1.0;
  if (!v16)
  {
    v17 = sin(v15) / v15;
  }

  v18 = 1.0 / v17;
  if (v7 * v15 != 0.0)
  {
    v6 = sin(v7 * v15) / (v7 * v15);
  }

  v19 = vdupq_lane_s64(COERCE__INT64(v7 * (v18 * v6)), 0);
  v20 = v15 * a4;
  v21 = 1.0;
  if (v20 != 0.0)
  {
    v31 = v19;
    v22 = sin(v20);
    v19 = v31;
    v21 = v22 / v20;
  }

  v23 = v18 * v21 * a4;
  v24 = vmulq_n_f64(v32, v23);
  v25 = vmlaq_f64(vmulq_n_f64(v33, v23), v34, v19);
  v26 = vmlaq_f64(v24, v35, v19);
  v27 = vaddvq_f64(vaddq_f64(vmulq_f64(v25, v25), vmulq_f64(v26, v26)));
  if (v27 == 0.0)
  {
    v28 = xmmword_1CAF02550;
    v29 = 0uLL;
  }

  else
  {
    v30 = 1.0 / sqrt(v27);
    v28 = vmulq_n_f64(v26, v30);
    v29 = vmulq_n_f64(v25, v30);
  }

  *a3 = v29;
  a3[1] = v28;
}

__CFString *PRAmbientDisplayStyleDescription(unint64_t a1)
{
  if (a1 < 3)
  {
    return off_1E83A7448[a1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected value: %ld", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    PRAmbientDisplayStyleDescription_cold_1(v2);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

uint64_t PREditingAcceptButtonTypeForPRUISPosterEditingAcceptButtonType(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

void sub_1CAE6EDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return objc_opt_class();
}

void sub_1CAE71C14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1CAE73510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a44, 8);
  (*(v56 + 16))(v56);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v57 - 168), 8);
  _Block_object_dispose((v57 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PRUISPosterSceneSettingsApplyPRSceneSettings(void *a1, void *a2)
{
  v29 = a1;
  v3 = a2;
  v4 = [v29 pui_role];

  if (v4)
  {
    v5 = [v29 pui_role];
    [v3 pui_setRole:v5];
  }

  v6 = [v29 pui_provider];

  if (v6)
  {
    v7 = [v29 pui_provider];
    [v3 pui_setProvider:v7];
  }

  v8 = [v29 pui_previewIdentifier];

  if (v8)
  {
    v9 = [v29 pui_previewIdentifier];
    [v3 pui_setPreviewIdentifier:v9];
  }

  v10 = [v29 pr_caseColor];

  if (v10)
  {
    v11 = [v29 pr_caseColor];
    [v3 pr_setCaseColor:v11];
  }

  [v3 pui_setUserInterfaceStyle:{objc_msgSend(v29, "pui_userInterfaceStyle")}];
  [v3 pui_setDeviceOrientation:{objc_msgSend(v29, "pui_deviceOrientation")}];
  v12 = [v29 pui_posterContents];

  if (v12)
  {
    v13 = [v29 pui_posterContents];
    [v3 pui_setPosterContents:v13];
  }

  v14 = [v29 pr_posterConfigurableOptions];

  if (v14)
  {
    v15 = [v29 pr_posterConfigurableOptions];
    [v3 pr_setPosterConfigurableOptions:v15];
  }

  v16 = [v29 pr_posterConfiguredProperties];

  if (v16)
  {
    v17 = [v29 pr_posterConfiguredProperties];
    [v3 pr_setPosterConfiguredProperties:v17];
  }

  v18 = [v29 pr_posterTitleStyleConfiguration];

  if (v18)
  {
    v19 = [v29 pr_posterTitleStyleConfiguration];
    [v3 pr_setPosterTitleStyleConfiguration:v19];
  }

  else
  {
    v20 = [v29 pr_posterConfiguredProperties];
    v21 = [v20 titleStyleConfiguration];

    if (!v21)
    {
      goto LABEL_20;
    }

    v19 = [v29 pr_posterConfiguredProperties];
    v22 = [v19 titleStyleConfiguration];
    [v3 pr_setPosterTitleStyleConfiguration:v22];
  }

LABEL_20:
  v23 = [v29 pr_posterAmbientConfiguration];

  if (v23)
  {
    v24 = [v29 pr_posterAmbientConfiguration];
    [v3 pr_setPosterAmbientConfiguration:v24];
  }

  else
  {
    v25 = [v29 pr_posterConfiguredProperties];
    v26 = [v25 ambientConfiguration];

    if (!v26)
    {
      goto LABEL_25;
    }

    v24 = [v29 pr_posterConfiguredProperties];
    v27 = [v24 ambientConfiguration];
    [v3 pr_setPosterAmbientConfiguration:v27];
  }

LABEL_25:
  [v3 pr_setDepthEffectDisallowed:{objc_msgSend(v29, "pr_isDepthEffectDisallowed")}];
  [v3 pr_setEffectiveMotionEffectsMode:{objc_msgSend(v29, "pr_effectiveMotionEffectsMode")}];
  [v3 pui_setInlineComplicationConfigured:{objc_msgSend(v29, "pui_isInlineComplicationConfigured")}];
  [v3 pui_setComplicationRowConfigured:{objc_msgSend(v29, "pui_isComplicationRowConfigured")}];
  [v3 pui_setComplicationSidebarConfigured:{objc_msgSend(v29, "pui_isComplicationSidebarConfigured")}];
  [v3 pr_setAlternateDateEnabled:{objc_msgSend(v29, "pr_isAlternateDateEnabled")}];
  [v3 pui_setExtensionUserInteractionEnabled:{objc_msgSend(v29, "pui_isExtensionUserInteractionEnabled")}];
  [v3 pui_setShowsHeaderElements:{objc_msgSend(v29, "pui_showsHeaderElements")}];
  [v3 pui_setShowsComplications:{objc_msgSend(v29, "pui_showsComplications")}];
  [v3 pui_setWallpaperObscured:{objc_msgSend(v29, "pui_isWallpaperObscured")}];
  [v3 pui_setPosterBoundingShape:{objc_msgSend(v29, "pui_posterBoundingShape")}];
  [v29 pr_horizontalTitleBoundingRect];
  [v3 pr_setHorizontalTitleBoundingRect:?];
  [v29 pr_verticalTitleBoundingRect];
  [v3 pr_setVerticalTitleBoundingRect:?];
  [v29 pui_salientContentRectangle];
  [v3 pui_setSalientContentRectangle:?];
  v28 = [v29 pui_contentOcclusionRectangles];
  [v3 pui_setContentOcclusionRectangles:v28];
}

void PRUISPosterSceneSettingsApplyPRRenderingSceneSettings(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  [v3 pui_setMode:{objc_msgSend(v7, "pui_mode")}];
  [v3 pui_setContent:{objc_msgSend(v7, "pui_content")}];
  [v3 pui_setPreviewContent:{objc_msgSend(v7, "pui_previewContent")}];
  [v3 pui_setSnapshot:{objc_msgSend(v7, "pui_isSnapshot")}];
  [v3 pui_setShowingIdealizedTime:{objc_msgSend(v7, "pui_isShowingIdealizedTime")}];
  [v3 pui_setIdle:{objc_msgSend(v7, "pui_isIdle")}];
  [v3 pui_setEditorPreview:{objc_msgSend(v7, "pui_isEditorPreview")}];
  [v3 pui_setFloatingLayerSnapshot:{objc_msgSend(v7, "pui_isFloatingLayerSnapshot")}];
  [v7 pr_unlockProgress];
  [v3 pr_setUnlockProgress:?];
  [v3 pr_setWakeSourceIsSwipeToUnlock:{objc_msgSend(v7, "pr_wakeSourceIsSwipeToUnlock")}];
  [v3 pui_setSignificantEventsCounter:{objc_msgSend(v7, "pui_significantEventsCounter")}];
  [v3 pr_setTitleAlignment:{objc_msgSend(v7, "pr_titleAlignment")}];
  [v3 pr_setAdjustedLuminance:{objc_msgSend(v7, "pr_adjustedLuminance")}];
  v4 = [v7 pui_sceneAttachments];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v7 pui_sceneAttachments];
    [v3 pui_setSceneAttachments:v6];
  }

  [v3 pui_setDeviceOrientation:{objc_msgSend(v7, "pui_deviceOrientation")}];
  [v3 pr_setAppliesCountertransformForRotation:{objc_msgSend(v7, "pr_appliesCountertransformForRotation")}];
}

void PRUISPosterSceneSettingsApplyAMUIAmbientPresentationSettings(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setAmbientPresented:{objc_msgSend(v4, "isAmbientPresented")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setAmbientDisplayStyle:{objc_msgSend(v4, "ambientDisplayStyle")}];
  }
}

void sub_1CAE7C640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CAE7DC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CAE7E584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1CAE7F530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *PRUISStringForRenderingMode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"default";
  }

  else
  {
    return off_1E83A7F78[a1 - 1];
  }
}

void sub_1CAE83D48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t DEBUG_RENDERING_MODE()
{
  if (DEBUG_RENDERING_MODE_onceToken != -1)
  {
    DEBUG_RENDERING_MODE_cold_1();
  }

  return DEBUG_RENDERING_MODE___debugRenderingMode;
}

void sub_1CAE85BE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1CAE88A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

id PRUISExternallyHostedPosterEditingServiceInterface()
{
  if (PRUISExternallyHostedPosterEditingServiceInterface_onceToken != -1)
  {
    PRUISExternallyHostedPosterEditingServiceInterface_cold_1();
  }

  v1 = PRUISExternallyHostedPosterEditingServiceInterface___interface;

  return v1;
}

void __PRUISExternallyHostedPosterEditingServiceInterface_block_invoke()
{
  v4 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"com.apple.posterboardui.externalEditing"];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F4B07AB0];
  [v4 setServer:v0];

  v1 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F4B07698];
  [v4 setClient:v1];

  v2 = [v4 copy];
  v3 = PRUISExternallyHostedPosterEditingServiceInterface___interface;
  PRUISExternallyHostedPosterEditingServiceInterface___interface = v2;
}

void sub_1CAE8A95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CAE8B1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _PRUISIncomingCallPosterSnapshotDefinitionLevelSetsForIdentifier(void *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentView])
  {
    v2 = objc_alloc(MEMORY[0x1E69C5318]);
    v3 = [v2 initWithNumberOfLevels:{5, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C5398], *MEMORY[0x1E69C53A0], *MEMORY[0x1E69C5380], +[PRUISPosterAppearanceObservingAttachmentProvider obscurableContentAttachmentLevel](PRUISPosterAppearanceObservingAttachmentProvider, "obscurableContentAttachmentLevel")}];
    v20[0] = v3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = v20;
  }

  else if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlay])
  {
    v6 = objc_alloc(MEMORY[0x1E69C5318]);
    v3 = [v6 initWithNumberOfLevels:{5, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C5398], *MEMORY[0x1E69C53A0], *MEMORY[0x1E69C5380], +[PRUISPosterAppearanceObservingAttachmentProvider overlayContentAttachmentLevel](PRUISPosterAppearanceObservingAttachmentProvider, "overlayContentAttachmentLevel")}];
    v19 = v3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v19;
  }

  else if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnly])
  {
    v7 = objc_alloc(MEMORY[0x1E69C5318]);
    v3 = [v7 initWithNumberOfLevels:{4, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C5398], *MEMORY[0x1E69C53A0], *MEMORY[0x1E69C5380]}];
    v18 = v3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v18;
  }

  else if ([v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsExcludingBackground])
  {
    v8 = objc_alloc(MEMORY[0x1E69C5318]);
    v3 = [v8 initWithNumberOfLevels:{3, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C5398], *MEMORY[0x1E69C53A0]}];
    v17 = v3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v17;
  }

  else
  {
    v9 = [v1 isEqualToString:PRPosterSnapshotDefinitionIdentifierIncomingCallComposite];
    v10 = [MEMORY[0x1E69C5318] compositeLevelSet];
    v3 = v10;
    if (v9)
    {
      v16[0] = v10;
      v11 = objc_alloc(MEMORY[0x1E69C5318]);
      v12 = [v11 initWithNumberOfLevels:{4, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C5398], *MEMORY[0x1E69C53A0], *MEMORY[0x1E69C5380]}];
      v16[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

      goto LABEL_13;
    }

    v15 = v10;
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v15;
  }

  v13 = [v4 arrayWithObjects:v5 count:1];
LABEL_13:

  return v13;
}

uint64_t _PRUISIncomingCallPosterSnapshotAttachmentTypeIdentifierIsPredefined(void *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = PRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel;
  v6[1] = PRUISIncomingCallPosterAttachmentTypeIdentifierInCallUIOverlay;
  v6[2] = PRUISIncomingCallPosterAttachmentTypeIdentifierBoopToMeetNameLabelOverlay;
  v6[3] = PRUISIncomingCallPosterAttachmentTypeIdentifierContactCardNameLabelOverlay;
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v1 arrayWithObjects:v6 count:4];
  v4 = [v3 containsObject:v2];

  return v4;
}

uint64_t _PRUISIncomingCallPosterSnapshotAttachmentTypeIdentifierWillIncludeName(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = PRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel;
  v7 = PRUISIncomingCallPosterAttachmentTypeIdentifierBoopToMeetNameLabelOverlay;
  v8 = PRUISIncomingCallPosterAttachmentTypeIdentifierContactCardNameLabelOverlay;
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v1 arrayWithObjects:&v6 count:3];
  v4 = [v3 containsObject:{v2, v6, v7, v8, v9}];

  return v4;
}

__CFString *NSStringFromPRUISSwitcherLayoutMode(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %lu)", a1];
  }

  else
  {
    v2 = off_1E83A8098[a1];
  }

  return v2;
}

id PRUISSwitcherLayoutTransitionAnimationSettings()
{
  v0 = [MEMORY[0x1E698E708] settingsWithMass:1.0 stiffness:393.99462 damping:36.52271];
  v3 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v0 setPreferredFrameRateRange:{*&v3.minimum, *&v3.maximum, *&v3.preferred}];
  [v0 setHighFrameRateReason:2490369];

  return v0;
}

id PRUISSwitcherLayoutDeflationAnimationSettings()
{
  v0 = [MEMORY[0x1E698E708] settingsWithMass:1.0 stiffness:85.25592 damping:18.46683];
  v3 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v0 setPreferredFrameRateRange:{*&v3.minimum, *&v3.maximum, *&v3.preferred}];
  [v0 setHighFrameRateReason:2490369];

  return v0;
}

id PRUISSwitcherLayoutBouncingAnimationSettings()
{
  v0 = [MEMORY[0x1E698E708] settingsWithMass:1.0 stiffness:429.11311 damping:29.00106];
  v3 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v0 setPreferredFrameRateRange:{*&v3.minimum, *&v3.maximum, *&v3.preferred}];
  [v0 setHighFrameRateReason:2490369];

  return v0;
}

uint64_t modeFromPRUISwitcherLayoutMode(uint64_t result)
{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

uint64_t modeFromPRUISSwitcherLayoutMode(uint64_t result)
{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

void sub_1CAE8DCE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1CAE8ED54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAE90E4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1CAE9116C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAE9249C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAE9337C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAE93718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAE956E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CAE9613C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1CAE96DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v30 - 112));
  _Unwind_Resume(a1);
}

void sub_1CAE97798(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1CAE978C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1CAE97DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CAE9B9C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id PRUISLogCommon()
{
  if (PRUISLogCommon_onceToken != -1)
  {
    PRUISLogCommon_cold_1();
  }

  v1 = PRUISLogCommon___logObj;

  return v1;
}

uint64_t __PRUISLogCommon_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "Common");
  PRUISLogCommon___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogRendering()
{
  if (PRUISLogRendering_onceToken != -1)
  {
    PRUISLogRendering_cold_1();
  }

  v1 = PRUISLogRendering___logObj;

  return v1;
}

uint64_t __PRUISLogRendering_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "Rendering");
  PRUISLogRendering___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogSnapshotting()
{
  if (PRUISLogSnapshotting_onceToken != -1)
  {
    PRUISLogSnapshotting_cold_1();
  }

  v1 = PRUISLogSnapshotting___logObj;

  return v1;
}

uint64_t __PRUISLogSnapshotting_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "Snapshotting");
  PRUISLogSnapshotting___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogSnapshotCache()
{
  if (PRUISLogSnapshotCache_onceToken != -1)
  {
    PRUISLogSnapshotCache_cold_1();
  }

  v1 = PRUISLogSnapshotCache___logObj;

  return v1;
}

uint64_t __PRUISLogSnapshotCache_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "SnapshotCache");
  PRUISLogSnapshotCache___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogAttachments()
{
  if (PRUISLogAttachments_onceToken != -1)
  {
    PRUISLogAttachments_cold_1();
  }

  v1 = PRUISLogAttachments___logObj;

  return v1;
}

uint64_t __PRUISLogAttachments_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "Attachments");
  PRUISLogAttachments___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogEditing()
{
  if (PRUISLogEditing_onceToken != -1)
  {
    PRUISLogEditing_cold_1();
  }

  v1 = PRUISLogEditing___logObj;

  return v1;
}

uint64_t __PRUISLogEditing_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "Editing");
  PRUISLogEditing___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogRemoteEditing()
{
  if (PRUISLogRemoteEditing_onceToken != -1)
  {
    PRUISLogRemoteEditing_cold_1();
  }

  v1 = PRUISLogRemoteEditing___logObj;

  return v1;
}

uint64_t __PRUISLogRemoteEditing_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "RemoteEditing");
  PRUISLogRemoteEditing___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogAnalysisService()
{
  if (PRUISLogAnalysisService_onceToken != -1)
  {
    PRUISLogAnalysisService_cold_1();
  }

  v1 = PRUISLogAnalysisService___logObj;

  return v1;
}

uint64_t __PRUISLogAnalysisService_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "AnalysisService");
  PRUISLogAnalysisService___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogAnalysis()
{
  if (PRUISLogAnalysis_onceToken != -1)
  {
    PRUISLogAnalysis_cold_1();
  }

  v1 = PRUISLogAnalysis___logObj;

  return v1;
}

uint64_t __PRUISLogAnalysis_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "Analysis");
  PRUISLogAnalysis___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogMotionEvents()
{
  if (PRUISLogMotionEvents_onceToken != -1)
  {
    PRUISLogMotionEvents_cold_1();
  }

  v1 = PRUISLogMotionEvents___logObj;

  return v1;
}

uint64_t __PRUISLogMotionEvents_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "MotionEvents");
  PRUISLogMotionEvents___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id PRUISLogChannels()
{
  if (PRUISLogChannels_onceToken != -1)
  {
    PRUISLogChannels_cold_1();
  }

  v1 = PRUISLogChannels___logObj;

  return v1;
}

uint64_t __PRUISLogChannels_block_invoke()
{
  v0 = os_log_create("com.apple.PosterBoardUIServices", "Channels");
  PRUISLogChannels___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id CHANNEL_LOG_PREFIX(void *a1, void *a2, void *a3, unint64_t a4)
{
  if (a4 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E83A8990[a4];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = a3;
  v9 = a2;
  v10 = [a1 UUIDString];
  v11 = [v7 stringWithFormat:@"[ChannelID: %@][%@][%@][%@] ---", v10, v9, v8, v6];

  return v11;
}

id _findUIWindowSceneForUIScreen(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v3 = [v2 screen];
  v4 = [v3 isEqual:v1];

  if (v4)
  {
    v5 = [v2 windowScene];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    v7 = [v6 windows];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___findUIWindowSceneForUIScreen_block_invoke;
    v10[3] = &unk_1E83A89B0;
    v11 = v1;
    v8 = [v7 bs_firstObjectPassingTest:v10];

    v5 = [v8 windowScene];
  }

  return v5;
}

uint64_t ___findUIWindowSceneForUIScreen_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 screen];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

__CFString *ShortNSStringFromPRUISPosterLevel(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1 > 1999)
    {
      if (a1 == 2000)
      {
        v2 = @"CO6";

        return v2;
      }

      if (a1 == 3000)
      {
        v2 = @"M7";

        return v2;
      }
    }

    else
    {
      if (!a1)
      {
        v2 = @"TIME4";

        return v2;
      }

      if (a1 == 1000)
      {
        v2 = @"FL5";

        return v2;
      }
    }

LABEL_36:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(UNK%lu)", a1];

    return v2;
  }

  if (a1 > -1001)
  {
    if (a1 == -1000)
    {
      v2 = @"FG2";

      return v2;
    }

    if (a1 == -500)
    {
      v2 = @"FU3";

      return v2;
    }

    goto LABEL_36;
  }

  if (a1 != -3000)
  {
    if (a1 == -2000)
    {
      v2 = @"BG1";

      return v2;
    }

    goto LABEL_36;
  }

  v2 = @"BD0";

  return v2;
}

void sub_1CAEA878C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CAEA8904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1CAEAA174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CAEAC4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1CAEAD6F8()
{
  v0 = *MEMORY[0x1E69C53C8];
  v1 = objc_allocWithZone(MEMORY[0x1E69C5350]);
  v2 = sub_1CAEFA48C();
  v3 = [v1 initWithType:v0 location:v2 metadata:{0.0, 0.0}];

  return v3;
}

id sub_1CAEAD798()
{
  v1 = *(v0 + OBJC_IVAR____TtC21PosterBoardUIServices36ObscurableContentAppearanceMockEvent_metadata);
  sub_1CAEFA86C();
  if (*(v1 + 16) && (v2 = sub_1CAEAE7A4(v6), (v3 & 1) != 0))
  {
    sub_1CAEAE83C(*(v1 + 56) + 32 * v2, v7);
    sub_1CAEAE7E8(v6);
    sub_1CAEAE898();
    if (swift_dynamicCast())
    {
      v4 = [0x6165707041646964 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_1CAEAE7E8(v6);
  }

  return 0;
}

id ObscurableContentAppearanceMockEvent.__allocating_init(didAppear:path:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1CAEAEADC(a1, a2);

  return v6;
}

id ObscurableContentAppearanceMockEvent.init(didAppear:path:)(uint64_t a1, void *a2)
{
  v3 = sub_1CAEAEADC(a1, a2);

  return v3;
}

id ObscurableContentAppearanceMockEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObscurableContentAppearanceMockEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObscurableContentAppearanceMockEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t default argument 5 of ShapeBoundedPosterEditingView.init(posterContents:context:boundingShape:editingCompletion:requiresOverlayContent:looks:injectedEditingSettings:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4815C0);
  sub_1CAEFA42C();
  return v1;
}

uint64_t default argument 6 of ShapeBoundedPosterEditingView.init(posterContents:context:boundingShape:editingCompletion:requiresOverlayContent:looks:injectedEditingSettings:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC482220);
  sub_1CAEFA42C();
  return v1;
}

uint64_t sub_1CAEADAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a4;
  *(a8 + 8) = a5;
  v10 = a6 & 1;
  *(a8 + 16) = a6 & 1;
  *(a8 + 24) = a7;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  *(a8 + 48) = a3;

  sub_1CAEAEDA0(a4, a5, v10);
}

uint64_t sub_1CAEADB1C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 33) = a2;
  sub_1CAEAEDA0(a3, a4, a5 & 1);
}

id sub_1CAEADB78@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_1CAEAEDA0(a3, a4, a5 & 1);

  return a1;
}

uint64_t sub_1CAEADBE4(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EC4816D0, type metadata accessor for PFError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CAEADC50(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EC4816D0, type metadata accessor for PFError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CAEADCC0(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EC481708, type metadata accessor for PFError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1CAEADD34(uint64_t a1, id *a2)
{
  result = sub_1CAEFA4CC();
  *a2 = 0;
  return result;
}

uint64_t sub_1CAEADDAC(uint64_t a1, id *a2)
{
  v3 = sub_1CAEFA4DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CAEADE2C@<X0>(uint64_t *a1@<X8>)
{
  sub_1CAEFA4EC();
  v2 = sub_1CAEFA4BC();

  *a1 = v2;
  return result;
}

uint64_t sub_1CAEADE70()
{
  v0 = sub_1CAEFA4EC();
  v1 = MEMORY[0x1CCAAB180](v0);

  return v1;
}

uint64_t sub_1CAEADEAC()
{
  sub_1CAEFA4EC();
  sub_1CAEFA51C();
}

uint64_t sub_1CAEADF00()
{
  sub_1CAEFA4EC();
  sub_1CAEFAAAC();
  sub_1CAEFA51C();
  v0 = sub_1CAEFAACC();

  return v0;
}

uint64_t sub_1CAEADF74()
{
  v1 = *v0;
  sub_1CAEFAAAC();
  MEMORY[0x1CCAAB6B0](v1);
  return sub_1CAEFAACC();
}

uint64_t sub_1CAEADFE8()
{
  v1 = *v0;
  sub_1CAEFAAAC();
  MEMORY[0x1CCAAB6B0](v1);
  return sub_1CAEFAACC();
}

uint64_t sub_1CAEAE03C(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EC481708, type metadata accessor for PFError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1CAEAE0A8(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EC481708, type metadata accessor for PFError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1CAEAE114(void *a1, uint64_t a2)
{
  v4 = sub_1CAEAEFEC(&qword_1EC481708, type metadata accessor for PFError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1CAEAE1C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAEAEFEC(&qword_1EC481708, type metadata accessor for PFError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1CAEAE244()
{
  sub_1CAEFAAAC();
  sub_1CAEFA4AC();
  return sub_1CAEFAACC();
}

uint64_t sub_1CAEAE2A4()
{
  v0 = sub_1CAEFA4EC();
  v2 = v1;
  if (v0 == sub_1CAEFA4EC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CAEFA9FC();
  }

  return v5 & 1;
}

uint64_t sub_1CAEAE32C(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EC481710, type metadata accessor for PFPosterRole);
  v3 = sub_1CAEAEFEC(&qword_1EC481718, type metadata accessor for PFPosterRole);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CAEAE3E8(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EC481730, type metadata accessor for FileAttributeKey);
  v3 = sub_1CAEAEFEC(&qword_1EC481738, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CAEAE4A4(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EDE9D140, type metadata accessor for URLResourceKey);
  v3 = sub_1CAEAEFEC(&qword_1EC481800, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CAEAE560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAEAEFEC(&qword_1EC481708, type metadata accessor for PFError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1CAEAE5E4(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EC481720, type metadata accessor for PRPosterRole);
  v3 = sub_1CAEAEFEC(&qword_1EC481728, type metadata accessor for PRPosterRole);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CAEAE6A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CAEFA4BC();

  *a1 = v2;
  return result;
}

uint64_t sub_1CAEAE6E8(uint64_t a1)
{
  v2 = sub_1CAEAEFEC(&qword_1EC481808, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1CAEAEFEC(&unk_1EC481810, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1CAEAE7A4(uint64_t a1)
{
  v2 = sub_1CAEFA84C();

  return sub_1CAEAE95C(a1, v2);
}

uint64_t sub_1CAEAE83C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1CAEAE898()
{
  result = qword_1EC481C40;
  if (!qword_1EC481C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC481C40);
  }

  return result;
}

unint64_t sub_1CAEAE8E4(uint64_t a1, uint64_t a2)
{
  sub_1CAEFAAAC();
  sub_1CAEFA51C();
  v4 = sub_1CAEFAACC();

  return sub_1CAEAEA24(a1, a2, v4);
}

unint64_t sub_1CAEAE95C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1CAEAF688(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1CCAAB450](v9, a1);
      sub_1CAEAE7E8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CAEAEA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1CAEFA9FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_1CAEAEADC(uint64_t a1, void *a2)
{
  v3 = v2;
  v24[18] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4817A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAF026A0;
  v24[0] = 0x6165707041646964;
  v24[1] = 0xE900000000000072;
  sub_1CAEFA86C();
  v6 = sub_1CAEAE898();
  v7 = sub_1CAEFA74C();
  *(inited + 96) = v6;
  *(inited + 72) = v7;
  v8 = sub_1CAEF0C9C(inited);
  swift_setDeallocating();
  sub_1CAEAF568(inited + 32);
  if (a2)
  {
    v9 = objc_opt_self();
    v24[0] = 0;
    v10 = a2;
    v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:0 error:v24];
    v12 = v24[0];
    if (v11)
    {
      v13 = sub_1CAEF9D2C();
      v15 = v14;

      sub_1CAEFA86C();
      v23 = MEMORY[0x1E6969080];
      *&v22 = v13;
      *(&v22 + 1) = v15;
      sub_1CAEAF5D0(&v22, v21);
      sub_1CAEAF5E0(v13, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1CAEEA400(v21, v24, isUniquelyReferenced_nonNull_native);
      sub_1CAEAF634(v13, v15);

      sub_1CAEAE7E8(v24);
    }

    else
    {
      v17 = v12;
      v18 = sub_1CAEF9BFC();

      swift_willThrow();
    }
  }

  *&v3[OBJC_IVAR____TtC21PosterBoardUIServices36ObscurableContentAppearanceMockEvent_metadata] = v8;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for ObscurableContentAppearanceMockEvent();
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CAEAEDA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1CAEAEECC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CAEAEEEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CAEAEF34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CAEAEF54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1CAEAEFEC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CAEAF484()
{
  result = qword_1EC4816F8;
  if (!qword_1EC4816F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4816F8);
  }

  return result;
}

uint64_t sub_1CAEAF568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4817A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1CAEAF5D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1CAEAF5E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1CAEAF634(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1CAEAF70C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1CAEAF95C()
{
  v0 = sub_1CAEF9EBC();
  __swift_allocate_value_buffer(v0, qword_1EC4819A0);
  __swift_project_value_buffer(v0, qword_1EC4819A0);
  return sub_1CAEF9EAC();
}

uint64_t ShapeBoundedPosterLiveChannelView.init(channel:boundingShape:obscurableContentView:coordinator:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = result;
  if (!a3)
  {
    result = sub_1CAEFA3FC();
    a3 = result;
  }

  *a5 = v7;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

id ShapeBoundedPosterLiveChannelView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1CAEFA8CC();

  v3 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v4 = [v3 UUIDString];

  v5 = sub_1CAEFA4EC();
  v7 = v6;

  MEMORY[0x1CCAAB120](v5, v7);

  MEMORY[0x1CCAAB120](41, 0xE100000000000000);
  v8 = objc_allocWithZone(PRUISPosterChannelViewController);
  v9 = sub_1CAEFA4BC();

  v10 = [v8 initWithChannel:v1 purpose:v9];

  result = [objc_opt_self() settingsWithDuration:1.0 delay:2.0];
  if (result)
  {
    v12 = result;
    [v10 setPosterTransitionAnimationSettings_];

    v13 = objc_opt_self();
    v14 = [v13 systemRedColor];
    [v10 setViewBackgroundColor_];

    v15 = [v13 systemGreenColor];
    [v10 setSceneViewBackgroundColor_];

    v16 = [v10 contentViewCoordinator];
    if (v16 && (v17 = v16, v18 = [v16 obscurableOverlayView], v17, v18))
    {
      if (qword_1EDE9D148 != -1)
      {
        swift_once();
      }

      v19 = sub_1CAEF9EBC();
      __swift_project_value_buffer(v19, qword_1EDE9D4A0);
      v20 = sub_1CAEF9E9C();
      v21 = sub_1CAEFA70C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1CAE63000, v20, v21, "Overlay view found. Adding content view", v22, 2u);
        MEMORY[0x1CCAAC620](v22, -1, -1);
      }

      v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819B8));

      v24 = sub_1CAEFA03C();
      [v18 bounds];
      [v24 setFrame:?];
      [v24 setAutoresizingMask:18];
      [v18 addSubview_];
    }

    else
    {
      if (qword_1EDE9D148 != -1)
      {
        swift_once();
      }

      v25 = sub_1CAEF9EBC();
      __swift_project_value_buffer(v25, qword_1EDE9D4A0);
      v24 = sub_1CAEF9E9C();
      v26 = sub_1CAEFA70C();
      if (os_log_type_enabled(v24, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1CAE63000, v24, v26, "Overlay view was nil... too early?", v27, 2u);
        MEMORY[0x1CCAAC620](v27, -1, -1);
      }
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShapeBoundedPosterLiveChannelView.updateUIViewController(_:context:)(void *a1)
{
  if (qword_1EDE9D148 != -1)
  {
    swift_once();
  }

  v2 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v2, qword_1EDE9D4A0);
  v3 = sub_1CAEF9E9C();
  v4 = sub_1CAEFA70C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1CAE63000, v3, v4, "Update ui view controller", v5, 2u);
    MEMORY[0x1CCAAC620](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819C0);
  sub_1CAEFA25C();
  sub_1CAEB25E4(a1, v7);
}

uint64_t sub_1CAEAFFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAEB328C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1CAEB0048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAEB328C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1CAEB00AC()
{
  sub_1CAEB328C();
  sub_1CAEFA23C();
  __break(1u);
}

uint64_t sub_1CAEB00D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CAEFA0EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819C8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v13 - v8;
  sub_1CAEB33EC(v2, &v13 - v8, &qword_1EC4819C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1CAEF9F5C();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    sub_1CAEFA6FC();
    v12 = sub_1CAEFA26C();
    sub_1CAEF9E8C();

    sub_1CAEFA0DC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

int *ShapeBoundedPosterLiveRenderingView.init(posterContents:context:boundingShape:coordinator:snapshotController:snapshotDefinition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819C8);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ShapeBoundedPosterLiveRenderingView(0);
  *(a7 + result[5]) = a1;
  *(a7 + result[6]) = a2;
  *(a7 + result[7]) = a3;
  *(a7 + result[8]) = a4;
  *(a7 + result[9]) = a5;
  *(a7 + result[10]) = a6;
  return result;
}

id ShapeBoundedPosterLiveRenderingView.makeUIViewController(context:)()
{
  v1 = v0;
  v39[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1CAEF9F5C();
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for ShapeBoundedPosterLiveRenderingView(0);
  v10 = *(v0 + v9[8]);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC21PosterBoardUIServices20RenderingCoordinator___observationRegistrar;
  v39[1] = v10;
  v37 = sub_1CAEB2B0C(&qword_1EC4819D0, type metadata accessor for RenderingCoordinator);
  v38 = v11;
  sub_1CAEF9E3C();

  swift_beginAccess();
  if (v10[7] != 3)
  {
    goto LABEL_11;
  }

  v12 = *(v1 + v9[10]);
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = objc_allocWithZone(PRUISMutablePosterSnapshotDescriptor);
  v36 = v12;
  v14 = [v13 initWithSnapshotDefinition_];
  [v14 setInterfaceOrientation_];
  sub_1CAEB00D4(v8);
  (*(v3 + 104))(v6, *MEMORY[0x1E697DBA8], v2);
  LOBYTE(v13) = sub_1CAEF9F4C();
  v15 = *(v3 + 8);
  v15(v6, v2);
  v15(v8, v2);
  if (v13)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  [v14 setUserInterfaceStyle_];
  v17 = [objc_allocWithZone(PRUISPosterSnapshotRequest) initWithPoster:*(v1 + v9[5]) snapshotDescriptor:v14];
  v18 = *(v1 + v9[9]);
  if (!v18)
  {

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v19 = v36;
  v39[0] = 0;
  v20 = [v18 currentSnapshotBundleForRequest:v17 error:v39];
  if (!v20)
  {
    v23 = v39[0];
    v24 = sub_1CAEF9BFC();

    swift_willThrow();
    goto LABEL_11;
  }

  v21 = v20;
  v22 = v39[0];

LABEL_12:
  v25 = *(v1 + v9[5]);
  v26 = *(v1 + v9[6]);
  v27 = *(v1 + v9[7]);
  v28 = *(v1 + v9[9]);
  swift_getKeyPath();
  v39[0] = v10;
  v29 = v21;
  sub_1CAEF9E3C();

  v30 = [objc_allocWithZone(PRUISPosterRenderingViewController) initWithPosterContents:v25 context:v26 boundingShape:v27 extensionInstance:0 snapshotController:v28 initialSnapshotBundle:v29 renderingMode:v10[7]];

  v31 = objc_opt_self();
  v32 = [v31 systemRedColor];
  [v30 setViewBackgroundColor_];

  v33 = [v31 systemGreenColor];
  [v30 setSceneViewBackgroundColor_];

  [v30 setSnapshotDefinition_];
  return v30;
}

uint64_t ShapeBoundedPosterLiveRenderingView.updateUIViewController(_:context:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819D8);
  sub_1CAEFA25C();
  sub_1CAEB25E4(a1, v3);

  sub_1CAEFA25C();
  sub_1CAEB46B4(a1);
}

uint64_t ShapeBoundedPosterLiveRenderingView.makeCoordinator()()
{
  type metadata accessor for ShapeBoundedPosterLiveRenderingView(0);
}

uint64_t sub_1CAEB08D0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819D8);
  sub_1CAEFA25C();
  sub_1CAEB25E4(a1, v3);

  sub_1CAEFA25C();
  sub_1CAEB46B4(a1);
}

uint64_t sub_1CAEB096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAEB2B0C(&qword_1EC481C30, type metadata accessor for ShapeBoundedPosterLiveRenderingView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1CAEB0A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAEB2B0C(&qword_1EC481C30, type metadata accessor for ShapeBoundedPosterLiveRenderingView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1CAEB0A94()
{
  sub_1CAEB2B0C(&qword_1EC481C30, type metadata accessor for ShapeBoundedPosterLiveRenderingView);
  sub_1CAEFA23C();
  __break(1u);
}

void sub_1CAEB0AEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAF026A0;
  *(inited + 32) = 0x6D49726564616568;
  *(inited + 40) = 0xEB00000000656761;
  v1 = sub_1CAEFA4BC();
  v2 = [objc_opt_self() systemImageNamed_];

  if (v2)
  {
    v3 = [v2 pui:3.0 scaleImage:?];

    *(inited + 48) = v3;
    sub_1CAEF0EA4(inited);
    swift_setDeallocating();
    sub_1CAEB3344(inited + 32, &qword_1EC481C50);
    v4 = objc_allocWithZone(MEMORY[0x1E69C5310]);
    sub_1CAEB33A4(0, &qword_1EC481C58);
    v5 = sub_1CAEFA48C();

    v6 = [v4 initWithImages_];

    v7 = [v6 otherSettings];
    v8 = sub_1CAEFA4BC();
    [v7 setObject:v8 forSetting:sub_1CAEB1DE8(1)];
  }

  else
  {
    __break(1u);
  }
}

uint64_t BSMutableSettings.headerTitle.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1CAEFA4BC();
  }

  else
  {
    v3 = 0;
  }

  [v2 setObject:v3 forSetting:sub_1CAEB1DE8(1)];

  return swift_unknownObjectRelease();
}

id sub_1CAEB0D68()
{
  v1 = v0;
  v2 = [objc_allocWithZone(PRUISPosterEditingViewControllerConfiguration) init];
  [v2 setPosterContents_];
  v3 = [objc_allocWithZone(type metadata accessor for BoundingShapeContext()) init];
  [v2 setContext_];

  [v2 setBoundingShape_];
  sub_1CAEB33A4(0, &qword_1EC481C40);
  v4 = v1;
  v5 = sub_1CAEFA73C();
  [v2 setUserInterfaceStyleLuminanceThreshold_];

  if (*(v4 + 40) == 1)
  {
    sub_1CAEB0AEC();
    v7 = v6;
    [v2 setHostedContentSettings_];
  }

  return v2;
}

uint64_t sub_1CAEB0E74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CAEFA0EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShapeBoundedPosterEditingView(0);
  sub_1CAEB33EC(v1 + *(v10 + 44), v9, &qword_1EC4819E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAEF9FEC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1CAEFA6FC();
    v13 = sub_1CAEFA26C();
    sub_1CAEF9E8C();

    sub_1CAEFA0DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 ShapeBoundedPosterEditingView.init(posterContents:context:boundingShape:editingCompletion:requiresOverlayContent:looks:injectedEditingSettings:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unsigned __int8 a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  v19 = *(type metadata accessor for ShapeBoundedPosterEditingView(0) + 44);
  *(a9->n128_u64 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819E0);
  swift_storeEnumTagMultiPayload();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u8[8] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

id ShapeBoundedPosterEditingView.makeCoordinator()()
{
  v1 = type metadata accessor for ShapeBoundedPosterEditingView(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEB2924(v0, v3);
  v4 = type metadata accessor for EditingCoordinator(0);
  v5 = objc_allocWithZone(v4);
  sub_1CAEB2924(v3, v5 + OBJC_IVAR____TtC21PosterBoardUIServices18EditingCoordinator_editingView);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1CAEB29E0(v3);
  return v6;
}

id ShapeBoundedPosterEditingView.makeUIViewController(context:)()
{
  v1 = v0;
  v2 = sub_1CAEB0D68();
  v3 = [objc_allocWithZone(PRUISPosterEditingViewController) initWithEditingConfiguration_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819F0);
  sub_1CAEFA25C();
  [v3 setDelegate_];

  sub_1CAEFA25C();
  [v3 setInjectedClientSettingsDelegate_];

  [v3 setAcceptButtonType_];
  v4 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819F8);
  MEMORY[0x1CCAAB000](&v8, v5);
  v6 = v8;
  if (v8)
  {
    [v3 setInjectedEditingSettings_];
  }

  return v3;
}

void ShapeBoundedPosterEditingView.updateUIViewController(_:context:)(void *a1)
{
  v3 = *(v1 + 88);
  v7 = *(v1 + 72);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819F8);
  MEMORY[0x1CCAAB000](&v6, v4);
  v5 = v6;
  if (v6)
  {
    [a1 setInjectedEditingSettings_];
  }
}

void sub_1CAEB13D0(void *a1)
{
  v3 = *(v1 + 88);
  v7 = *(v1 + 72);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819F8);
  MEMORY[0x1CCAAB000](&v6, v4);
  v5 = v6;
  if (v6)
  {
    [a1 setInjectedEditingSettings_];
  }
}

uint64_t sub_1CAEB1448@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEB2924(v2, v5);
  v6 = type metadata accessor for EditingCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1CAEB2924(v5, v7 + OBJC_IVAR____TtC21PosterBoardUIServices18EditingCoordinator_editingView);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1CAEB29E0(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_1CAEB150C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAEB2B0C(&qword_1EC481C28, type metadata accessor for ShapeBoundedPosterEditingView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1CAEB15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAEB2B0C(&qword_1EC481C28, type metadata accessor for ShapeBoundedPosterEditingView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1CAEB1634()
{
  sub_1CAEB2B0C(&qword_1EC481C28, type metadata accessor for ShapeBoundedPosterEditingView);
  sub_1CAEFA23C();
  __break(1u);
}

uint64_t sub_1CAEB168C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1CAEF9FEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC481570 != -1)
  {
    swift_once();
  }

  v10 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v10, qword_1EC4819A0);
  v11 = a2;
  v12 = a1;
  v13 = sub_1CAEF9E9C();
  v14 = sub_1CAEFA70C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v3;
    v17 = v6;
    v18 = v16;
    *v15 = 138412546;
    *(v15 + 4) = v12;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = v12;
    v16[1] = a2;
    v19 = v12;
    v20 = v11;
    _os_log_impl(&dword_1CAE63000, v13, v14, "editingViewController: %@ didFinishWithConfiguration: %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481A00);
    swift_arrayDestroy();
    v21 = v18;
    v6 = v17;
    v3 = v25;
    MEMORY[0x1CCAAC620](v21, -1, -1);
    MEMORY[0x1CCAAC620](v15, -1, -1);
  }

  v22 = *(v3 + OBJC_IVAR____TtC21PosterBoardUIServices18EditingCoordinator_editingView + 24);
  if (v22)
  {
    v22(a2);
  }

  sub_1CAEB0E74(v9);
  sub_1CAEF9FDC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1CAEB1968(void *a1)
{
  v2 = v1;
  if (qword_1EC481570 != -1)
  {
    swift_once();
  }

  v4 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v4, qword_1EC4819A0);
  v5 = a1;
  v6 = sub_1CAEF9E9C();
  v7 = sub_1CAEFA70C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1CAE63000, v6, v7, "injectedEditingClientSettingsDidChange: %@", v8, 0xCu);
    sub_1CAEB3344(v9, &qword_1EC481A00);
    MEMORY[0x1CCAAC620](v9, -1, -1);
    MEMORY[0x1CCAAC620](v8, -1, -1);
  }

  v11 = v2 + OBJC_IVAR____TtC21PosterBoardUIServices18EditingCoordinator_editingView;
  v12 = [v5 editingLooks];
  sub_1CAEB33A4(0, &qword_1EC481A08);
  v13 = sub_1CAEFA5EC();

  v18 = *(v11 + 48);
  v19 = *(v11 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481A10);
  sub_1CAEFA41C();
  v14 = [objc_allocWithZone(MEMORY[0x1E69C52B8]) initWithState_];
  v15 = [v5 initialEditingLook];
  [v14 setCurrentEditingLook_];

  v16 = [v5 initialColors];
  [v14 setSelectedColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819F8);
  return sub_1CAEFA41C();
}

id EditingCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BoundingShapeContext.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BoundingShapeContext();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CAEB1DAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1CAEB1DE8(char a1)
{
  result = sub_1CAEB1F04(a1 & 1, &unk_1F4AC9210);
  if ((v2 & 1) == 0)
  {
    if (result >= 0)
    {
      v7 = result;
    }

    else
    {
      v7 = -result;
    }

    if (v7 < 0)
    {
      __break(1u);
    }

    else
    {
      result = v7 + *MEMORY[0x1E69C5370];
      if (!__OFADD__(v7, *MEMORY[0x1E69C5370]))
      {
        return result;
      }
    }

    __break(1u);
    return result;
  }

  if (qword_1EC481570 != -1)
  {
    swift_once();
  }

  v3 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v3, qword_1EC4819A0);
  v4 = sub_1CAEF9E9C();
  v5 = sub_1CAEFA6EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1CAE63000, v4, v5, "index not found for EditorOverlaySceneSetting", v6, 2u);
    MEMORY[0x1CCAAC620](v6, -1, -1);
  }

  return 0;
}

uint64_t sub_1CAEB1F04(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x6954726564616568;
  }

  else
  {
    v5 = 0x6D49726564616568;
  }

  if (a1)
  {
    v6 = 0xEB00000000656C74;
  }

  else
  {
    v6 = 0xEB00000000656761;
  }

  while (1)
  {
    v7 = *(v4 + v3) ? 0x6954726564616568 : 0x6D49726564616568;
    v8 = *(v4 + v3) ? 0xEB00000000656C74 : 0xEB00000000656761;
    if (v7 == v5 && v8 == v6)
    {
      break;
    }

    v10 = sub_1CAEFA9FC();

    if (v10)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t BSMutableSettings.headerTitle.getter()
{
  if ([v0 objectForSetting_])
  {
    sub_1CAEFA7BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1CAEB3344(v5, &unk_1EC482110);
    return 0;
  }
}

uint64_t sub_1CAEB20F8(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1CAEFA4BC();
  }

  else
  {
    v3 = 0;
  }

  [v2 setObject:v3 forSetting:sub_1CAEB1DE8(1)];

  return swift_unknownObjectRelease();
}

uint64_t (*BSMutableSettings.headerTitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = BSMutableSettings.headerTitle.getter();
  a1[1] = v3;
  return sub_1CAEB21B4;
}

uint64_t sub_1CAEB21B4(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_1CAEFA4BC();
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 16) setObject:v4 forSetting:sub_1CAEB1DE8(1)];
  }

  else
  {
    if (v3)
    {
      v5 = sub_1CAEFA4BC();
    }

    else
    {
      v5 = 0;
    }

    [*(a1 + 16) setObject:v5 forSetting:sub_1CAEB1DE8(1)];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1CAEB22A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAEB2B0C(&qword_1EC4819D0, type metadata accessor for RenderingCoordinator);
  sub_1CAEF9E3C();

  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1CAEB23E0(uint64_t a1)
{
  v2 = sub_1CAEF9F5C();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1CAEFA09C();
}

uint64_t sub_1CAEB24CC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1CAEB2540(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1CAEB2550(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_1CAEB25E4(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1CAEB2B0C(&qword_1EC4819D0, type metadata accessor for RenderingCoordinator);
  sub_1CAEF9E3C();

  swift_beginAccess();
  if ((*(a2 + 32) & 1) == 0)
  {
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    if ((*(a2 + 80) & 1) != 0 || *(a2 + 64) != v4 || *(a2 + 72) != v5)
    {
      [a1 userTapEventOccurredWithLocation_];
      *(a2 + 64) = v4;
      *(a2 + 72) = v5;
      *(a2 + 80) = 0;
    }
  }

  swift_getKeyPath();
  sub_1CAEF9E3C();

  swift_beginAccess();
  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *(a2 + 88);
    if (v7)
    {
      type metadata accessor for ObscurableContentAppearanceMockEvent();
      v8 = v6;
      v9 = v7;
      v10 = sub_1CAEFA76C();

      if (v10)
      {

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      v11 = v6;
    }

    v12 = *MEMORY[0x1E69C53C8];
    v13 = objc_allocWithZone(MEMORY[0x1E69C5350]);
    v14 = sub_1CAEFA48C();
    v15 = [v13 initWithType:v12 location:v14 metadata:{0.0, 0.0}];

    [a1 addEvent_];
    v8 = *(a2 + 88);
    *(a2 + 88) = v6;
    goto LABEL_12;
  }

LABEL_13:
  swift_getKeyPath();
  sub_1CAEF9E3C();

  swift_beginAccess();
  v16 = *(a2 + 48);
  if (!v16)
  {
    return;
  }

  v17 = *(a2 + 96);
  if (!v17)
  {
    v21 = v16;
    goto LABEL_18;
  }

  type metadata accessor for KeyboardPresentationMockTransition();
  v18 = v16;
  v19 = v17;
  v20 = sub_1CAEFA76C();

  if ((v20 & 1) == 0)
  {
LABEL_18:
    [a1 addTransition_];
    [v16 begin];

    v18 = *(a2 + 96);
    *(a2 + 96) = v16;
    goto LABEL_19;
  }

LABEL_19:
}

uint64_t sub_1CAEB2924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShapeBoundedPosterEditingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAEB29A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CAEB29E0(uint64_t a1)
{
  v2 = type metadata accessor for ShapeBoundedPosterEditingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CAEB2A64()
{
  result = qword_1EC481A20;
  if (!qword_1EC481A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481A20);
  }

  return result;
}

uint64_t sub_1CAEB2B0C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CAEB2BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CAEB2BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CAEB2C68()
{
  sub_1CAEB3120(319, &qword_1EC481A58, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1CAEB2DD0(319, &qword_1EC481A60);
    if (v1 <= 0x3F)
    {
      sub_1CAEB2DD0(319, &qword_1EC481A68);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PRPosterBoundingShape(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for RenderingCoordinator();
          if (v4 <= 0x3F)
          {
            sub_1CAEB2E30(319, &qword_1EC481AD0, &qword_1EC481AD8);
            if (v5 <= 0x3F)
            {
              sub_1CAEB2E30(319, &qword_1EC481AE0, &qword_1EC481AE8);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CAEB2DD0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1CAEB2E30(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1CAEB33A4(255, a3);
    v4 = sub_1CAEFA78C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CAEB2EB0()
{
  sub_1CAEB2DD0(319, &qword_1EC481A60);
  if (v0 <= 0x3F)
  {
    sub_1CAEB2DD0(319, &qword_1EC481A68);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PRPosterBoundingShape(319);
      if (v2 <= 0x3F)
      {
        sub_1CAEB30BC(319, &qword_1EC481B10, &qword_1EC481B18, &unk_1CAF037C0, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1CAEB30BC(319, &unk_1EC481B20, &qword_1EC4815C0, &unk_1CAF026B0, MEMORY[0x1E6981948]);
          if (v4 <= 0x3F)
          {
            sub_1CAEB30BC(319, &unk_1EC481B30, &unk_1EC482220, &unk_1CAF037D0, MEMORY[0x1E6981948]);
            if (v5 <= 0x3F)
            {
              sub_1CAEB3120(319, &unk_1EC481B40, MEMORY[0x1E697BF90]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1CAEB30BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1CAEB3120(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CAEF9F6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CAEB317C()
{
  result = type metadata accessor for ShapeBoundedPosterEditingView(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CAEB328C()
{
  result = qword_1EC481C38;
  if (!qword_1EC481C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481C38);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1CAEB3344(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CAEB33A4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1CAEB33EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_1CAEB34C0@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  v4 = v3[2].n128_u8[0];
  result = v3[1];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1CAEB3588()
{
  swift_getKeyPath();
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  return *(v0 + 16);
}

unint64_t sub_1CAEB3610()
{
  result = qword_1EC4819D0;
  if (!qword_1EC4819D0)
  {
    type metadata accessor for RenderingCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4819D0);
  }

  return result;
}

uint64_t type metadata accessor for RenderingCoordinator()
{
  result = qword_1EC481CC8;
  if (!qword_1EC481CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CAEB36B4(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  if ((*(v3 + 32) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 16) == *&a1 && *(v3 + 24) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1CAEB3610();
    sub_1CAEF9E2C();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 16) = *&a1;
  *(v3 + 24) = *&a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

void (*sub_1CAEB3800(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21PosterBoardUIServices20RenderingCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1CAEB3610();
  sub_1CAEF9E3C();

  *v4 = v1;
  swift_getKeyPath();
  sub_1CAEF9E5C();

  v4[7] = sub_1CAEB3470();
  return sub_1CAEB3908;
}

id sub_1CAEB3964@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_1CAEB3A00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CAEB3ABC(v1);
}

void *sub_1CAEB3A30()
{
  swift_getKeyPath();
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_1CAEB3ABC(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1CAEB3610();
    sub_1CAEF9E2C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for ObscurableContentAppearanceMockEvent();
  v5 = v4;
  v6 = a1;
  v7 = sub_1CAEFA76C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

void sub_1CAEB3C00(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
  v5 = a2;
}

void (*sub_1CAEB3C7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21PosterBoardUIServices20RenderingCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1CAEB3610();
  sub_1CAEF9E3C();

  *v4 = v1;
  swift_getKeyPath();
  sub_1CAEF9E5C();

  v4[7] = sub_1CAEB3914();
  return sub_1CAEB3D84;
}

id sub_1CAEB3DE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1CAEB3E80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CAEB3F3C(v1);
}

void *sub_1CAEB3EB0()
{
  swift_getKeyPath();
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_1CAEB3F3C(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1CAEB3610();
    sub_1CAEF9E2C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for KeyboardPresentationMockTransition();
  v5 = v4;
  v6 = a1;
  v7 = sub_1CAEFA76C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

void sub_1CAEB4080(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

void (*sub_1CAEB40FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21PosterBoardUIServices20RenderingCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1CAEB3610();
  sub_1CAEF9E3C();

  *v4 = v1;
  swift_getKeyPath();
  sub_1CAEF9E5C();

  v4[7] = sub_1CAEB3D90();
  return sub_1CAEB4204;
}

uint64_t sub_1CAEB4260()
{
  swift_getKeyPath();
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_1CAEB42E4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 56) != a1)
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1CAEB3610();
    sub_1CAEF9E2C();
  }

  return result;
}

void (*sub_1CAEB43CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21PosterBoardUIServices20RenderingCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1CAEB3610();
  sub_1CAEF9E3C();

  *v4 = v1;
  swift_getKeyPath();
  sub_1CAEF9E5C();

  v4[7] = sub_1CAEB4210();
  return sub_1CAEB44D4;
}

void sub_1CAEB44E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1CAEF9E4C();

  free(v1);
}

uint64_t RenderingCoordinator.__allocating_init(tapLocation:obscurableContentAppearanceMockEvent:keyBoardPresentationMockTransition:renderingMode:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 1;
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  sub_1CAEF9E6C();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3 & 1;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 104) = a6;
  return v12;
}

uint64_t RenderingCoordinator.init(tapLocation:obscurableContentAppearanceMockEvent:keyBoardPresentationMockTransition:renderingMode:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  sub_1CAEF9E6C();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;

  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 104) = a6;
  return v6;
}

uint64_t sub_1CAEB46B4(void *a1)
{
  swift_getKeyPath();
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  result = swift_beginAccess();
  if (*(v1 + 56) != *(v1 + 104))
  {
    swift_getKeyPath();
    sub_1CAEF9E3C();

    [a1 setRenderingMode_];
    swift_getKeyPath();
    sub_1CAEF9E3C();

    *(v1 + 104) = *(v1 + 56);
  }

  return result;
}

id *RenderingCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC21PosterBoardUIServices20RenderingCoordinator___observationRegistrar;
  v2 = sub_1CAEF9E7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RenderingCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21PosterBoardUIServices20RenderingCoordinator___observationRegistrar;
  v2 = sub_1CAEF9E7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t RenderingEventsAndTransitionsSupport.CoordinatorModifier.init(coordinator:transitionProgress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  return result;
}

uint64_t RenderingEventsAndTransitionsSupport.CoordinatorModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v36 = a2;
  v3 = sub_1CAEFA17C();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481C68);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481C70);
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v28 - v12;
  v14 = *v2;
  v13 = v2[1];
  v15 = v2[2];
  v16 = v2[3];
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v13;
  v17[4] = v15;
  v17[5] = v16;

  sub_1CAEFA1BC();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481C78);
  v19 = sub_1CAEB6054(&qword_1EC481C80, &qword_1EC481C78);
  sub_1CAEFA2EC();

  (*(v30 + 8))(v5, v3);
  v20 = swift_allocObject();
  v20[2] = v14;
  v20[3] = v13;
  v20[4] = v15;
  v20[5] = v16;

  v38 = v18;
  v39 = v3;
  v40 = v19;
  v41 = MEMORY[0x1E697FA08];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v29;
  v23 = v32;
  sub_1CAEFA2FC();

  (*(v33 + 8))(v9, v23);
  v38 = v13;
  v39 = v15;
  v40 = v16;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481C88);
  MEMORY[0x1CCAAB000](&v37, v24);
  v25 = swift_allocObject();
  v25[2] = v14;
  v25[3] = v13;
  v25[4] = v15;
  v25[5] = v16;

  v38 = v23;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1CAEB5938();
  v26 = v34;
  sub_1CAEFA33C();

  return (*(v35 + 8))(v22, v26);
}

uint64_t sub_1CAEB4DB8(uint64_t a1, double a2, double a3)
{
  result = swift_beginAccess();
  if ((*(a1 + 32) & 1) == 0 && *(a1 + 16) == a2 && *(a1 + 24) == a3)
  {
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
    *(a1 + 32) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAEB3610();
    sub_1CAEF9E2C();
  }

  return result;
}

void sub_1CAEB4ED8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  swift_getKeyPath();
  v32 = a1;
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = v8;
    if (sub_1CAEAD798())
    {
      v10 = type metadata accessor for ObscurableContentAppearanceMockEvent();
      v11 = objc_allocWithZone(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4817A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CAF026A0;
      v30 = 0x6165707041646964;
      v31 = 0xE900000000000072;
      sub_1CAEFA86C();
      v13 = sub_1CAEAE898();
      v14 = sub_1CAEFA74C();
      *(inited + 96) = v13;
      *(inited + 72) = v14;
      v15 = sub_1CAEF0C9C(inited);
      swift_setDeallocating();
      sub_1CAEAF568(inited + 32);
      *&v11[OBJC_IVAR____TtC21PosterBoardUIServices36ObscurableContentAppearanceMockEvent_metadata] = v15;
      v25.receiver = v11;
      v25.super_class = v10;
      v16 = objc_msgSendSuper2(&v25, sel_init);
      goto LABEL_6;
    }
  }

  v17 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 100.0, 100.0, 25.0}];
  objc_allocWithZone(type metadata accessor for ObscurableContentAppearanceMockEvent());
  v9 = v17;
  v18 = sub_1CAEAEADC(1, v17);

  v16 = v18;
LABEL_6:
  sub_1CAEB3ABC(v16);

  swift_getKeyPath();
  v30 = a1;
  sub_1CAEF9E3C();

  swift_beginAccess();
  v19 = *(a1 + 48);
  if (v19)
  {
    v20 = v19;
    [v20 end];
    if (*(a1 + 48))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v27 = a1;
      sub_1CAEF9E2C();
    }

    v27 = a2;
    v28 = a3;
    v29 = a4;
    v26 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481C88);
    sub_1CAEFA41C();
  }

  else
  {
    v22 = objc_allocWithZone(type metadata accessor for KeyboardPresentationMockTransition());
    v23 = KeyboardPresentationMockTransition.init(initialProgress:finalProgress:)(0.0);
    v24 = v23;
    sub_1CAEB3F3C(v23);
  }
}

void sub_1CAEB527C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  swift_getKeyPath();
  v17[18] = a1;
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  v8 = *(a1 + 48);
  if (v8)
  {
    v17[15] = a2;
    v17[16] = a3;
    *&v17[17] = a4;
    v9 = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481C88);
    MEMORY[0x1CCAAB000](v17, v10);
    v11 = v17[0];
    v12 = OBJC_IVAR____TtC21PosterBoardUIServices34KeyboardPresentationMockTransition_progress;
    swift_beginAccess();
    *&v9[v12] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4817A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CAF026A0;
    v17[0] = 0x73736572676F7270;
    v17[1] = 0xE800000000000000;
    sub_1CAEFA86C();
    v14 = sub_1CAEAE898();
    v15 = sub_1CAEFA73C();
    *(inited + 96) = v14;
    *(inited + 72) = v15;
    sub_1CAEF0C9C(inited);
    swift_setDeallocating();
    sub_1CAEAF568(inited + 32);
    v16 = sub_1CAEFA48C();

    [v9 setCurrentStateMetadata_];
  }
}

uint64_t static RenderingEventsAndTransitionsSupport.transitionControls(forRenderingCoordinator:transitionProgress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481C98);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  swift_getKeyPath();
  v54 = a1;
  sub_1CAEB3610();
  sub_1CAEF9E3C();

  swift_beginAccess();
  if (*(a1 + 48))
  {
    v51 = a2;
    v52 = a3;
    v53 = a5;
    v50 = xmmword_1CAF02550;
    sub_1CAEB5990();

    sub_1CAEFA3DC();
    v14 = sub_1CAEFA27C();
    sub_1CAEF9F3C();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481CA8) + 36)];
    *v23 = v14;
    *(v23 + 1) = v16;
    *(v23 + 2) = v18;
    *(v23 + 3) = v20;
    *(v23 + 4) = v22;
    v23[40] = 0;
    v24 = &v13[*(v10 + 36)];
    v25 = *(sub_1CAEFA06C() + 20);
    v26 = *MEMORY[0x1E697F468];
    v27 = sub_1CAEFA15C();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #15.0 }

    *v24 = _Q0;
    sub_1CAEFA34C();
    v33 = sub_1CAEFA35C();

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481CB0);
    *&v24[*(v34 + 52)] = v33;
    *&v24[*(v34 + 56)] = 256;
    LOBYTE(v26) = sub_1CAEFA27C();
    sub_1CAEF9F3C();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481CB8) + 36)];
    *v43 = v26;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    v44 = sub_1CAEFA46C();
    v46 = v45;
    v47 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481CC0) + 36)];
    *v47 = v44;
    v47[1] = v46;
    sub_1CAEB59E4(v13, a4);
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  return (*(v11 + 56))(a4, v48, 1, v10);
}

uint64_t sub_1CAEB57F8@<X0>(uint64_t a1@<X8>)
{
  sub_1CAEFA13C();
  result = sub_1CAEFA29C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1CAEB5870()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 56) = v1;
  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1CAEB5938()
{
  result = qword_1EC481C90;
  if (!qword_1EC481C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481C90);
  }

  return result;
}

unint64_t sub_1CAEB5990()
{
  result = qword_1EC481CA0;
  if (!qword_1EC481CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481CA0);
  }

  return result;
}

uint64_t sub_1CAEB59E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAEB5A78()
{
  result = sub_1CAEF9E7C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RenderingEventsAndTransitionsSupport(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RenderingEventsAndTransitionsSupport(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1CAEB5E60()
{
  result = qword_1EC481CD8;
  if (!qword_1EC481CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481CE0);
    sub_1CAEB5EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481CD8);
  }

  return result;
}

unint64_t sub_1CAEB5EE4()
{
  result = qword_1EC481CE8;
  if (!qword_1EC481CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481C98);
    sub_1CAEB5F9C();
    sub_1CAEB6054(&qword_1EC481D08, &qword_1EC481CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481CE8);
  }

  return result;
}

unint64_t sub_1CAEB5F9C()
{
  result = qword_1EC481CF0;
  if (!qword_1EC481CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481CA8);
    sub_1CAEB6054(&qword_1EC481CF8, &qword_1EC481D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481CF0);
  }

  return result;
}

uint64_t sub_1CAEB6054(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CAEB609C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t PRUISPosterGalleryMetadata.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata_creationDate;
  v4 = sub_1CAEF9DBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id PRUISPosterGalleryMetadata.__allocating_init(creationDate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1CAEF9E6C();
  v4 = OBJC_IVAR____TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata_creationDate;
  v5 = sub_1CAEF9DBC();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id PRUISPosterGalleryMetadata.init(creationDate:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1CAEF9E6C();
  v4 = OBJC_IVAR____TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata_creationDate;
  v5 = sub_1CAEF9DBC();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t static PRUISPosterGalleryMetadata.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC481D10 = a1;
  return result;
}

Swift::Void __swiftcall PRUISPosterGalleryMetadata.encode(with:)(NSCoder with)
{
  v2 = sub_1CAEF9D5C();
  v3 = sub_1CAEFA4BC();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id PRUISPosterGalleryMetadata.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1CAEB6EE0();

  return v4;
}

id PRUISPosterGalleryMetadata.init(coder:)(void *a1)
{
  v2 = sub_1CAEB6EE0();

  return v2;
}

uint64_t PRUISPosterGalleryMetadata.description.getter()
{
  swift_getObjectType();
  sub_1CAEFA8CC();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = sub_1CAEFA4EC();
  v4 = v3;

  MEMORY[0x1CCAAB120](v2, v4);

  MEMORY[0x1CCAAB120](0xD000000000000012, 0x80000001CAF08F00);
  sub_1CAEF9DBC();
  sub_1CAEB73C0(&unk_1EDE9D210);
  v5 = sub_1CAEFA9EC();
  MEMORY[0x1CCAAB120](v5);

  MEMORY[0x1CCAAB120](15913, 0xE200000000000000);
  return 60;
}

uint64_t PRUISPosterGalleryMetadata.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1CAEF9DBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v9(v8, v2 + OBJC_IVAR____TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata_creationDate, v5);
  v10 = objc_allocWithZone(ObjectType);
  sub_1CAEF9E6C();
  v9(&v10[OBJC_IVAR____TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata_creationDate], v8, v5);
  v13.receiver = v10;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  result = (*(v6 + 8))(v8, v5);
  a1[3] = ObjectType;
  *a1 = v11;
  return result;
}

id PRUISPosterGalleryMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PRUISPosterGalleryMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CAEB6EE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D30);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = sub_1CAEF9DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEB730C();
  v12 = sub_1CAEFA72C();
  if (v12)
  {
    v13 = v12;
    v14 = *(v9 + 56);
    v14(v5, 1, 1, v8);
    sub_1CAEB73C0(qword_1EDE9D220);
    sub_1CAEFA9AC();

    if ((*(v9 + 48))(v5, 1, v8) != 1)
    {
      v15 = *(v9 + 32);
      v15(v7, v5, v8);
      v14(v7, 0, 1, v8);
      v15(v11, v7, v8);
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *(v9 + 56);
  }

  v14(v7, 1, 1, v8);
  sub_1CAEF9D4C();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1CAEB7358(v7);
  }

LABEL_7:
  v16 = sub_1CAEF9D5C();
  v17 = [v1 initWithCreationDate_];

  (*(v9 + 8))(v11, v8);
  return v17;
}

uint64_t type metadata accessor for PRUISPosterGalleryMetadata()
{
  result = qword_1EC481D20;
  if (!qword_1EC481D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CAEB7214()
{
  result = sub_1CAEF9DBC();
  if (v1 <= 0x3F)
  {
    result = sub_1CAEF9E7C();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1CAEB730C()
{
  result = qword_1EDE9D0E8;
  if (!qword_1EDE9D0E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE9D0E8);
  }

  return result;
}

uint64_t sub_1CAEB7358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAEB73C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CAEF9DBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1CAEB7404()
{
  v0 = sub_1CAEF9EBC();
  __swift_allocate_value_buffer(v0, qword_1EDE9D4A0);
  __swift_project_value_buffer(v0, qword_1EDE9D4A0);
  result = PRUISLogChannels();
  if (result)
  {
    return sub_1CAEF9ECC();
  }

  __break(1u);
  return result;
}

uint64_t static PRUISPosterChannelState.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC481D40 = a1;
  return result;
}

Swift::Void __swiftcall PRUISPosterChannelState.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_1CAEF9DDC();
  v5 = sub_1CAEFA4BC();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext);
  v7 = sub_1CAEFA4BC();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = *(v2 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = sub_1CAEFA4BC();
  [(objc_class *)with.super.isa encodeInteger:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion);
  if (v10 < 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = sub_1CAEFA4BC();
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity);
  v13 = sub_1CAEFA4BC();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  v14 = sub_1CAEF9D5C();
  v15 = sub_1CAEFA4BC();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

  v16 = sub_1CAEF9D5C();
  v17 = sub_1CAEFA4BC();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
}

uint64_t PRUISPosterChannelState.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D30);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v66 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v66 - v10;
  v11 = sub_1CAEF9DBC();
  v78 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v75 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v79 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v66 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D50);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v66 - v18;
  v20 = sub_1CAEF9E1C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v66 - v25;
  sub_1CAEB33A4(0, &unk_1EDE9D0D8);
  v26 = sub_1CAEFA72C();
  if (!v26)
  {
    goto LABEL_8;
  }

  v27 = v26;
  (*(v21 + 56))(v19, 1, 1, v20);
  sub_1CAEB94F0(&unk_1EDE9D200, MEMORY[0x1E69695A8]);
  sub_1CAEFA9AC();

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_8;
  }

  v28 = *(v21 + 32);
  v28(v24, v19, v20);
  v29 = v81;
  v28(v81, v24, v20);
  sub_1CAEB33A4(0, &qword_1EDE9D0F8);
  v30 = sub_1CAEFA72C();
  if (!v30)
  {
    (*(v21 + 8))(v29, v20);
LABEL_8:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v70 = v30;
  v31 = sub_1CAEFA4BC();
  v73 = [a1 decodeIntegerForKey_];

  v32 = sub_1CAEFA4BC();
  v72 = [a1 decodeIntegerForKey_];

  sub_1CAEB33A4(0, &qword_1EDE9D100);
  v68 = sub_1CAEFA72C();
  v71 = sub_1CAEB33A4(0, &qword_1EDE9D0E8);
  v33 = sub_1CAEFA72C();
  v74 = v11;
  v69 = v21;
  if (!v33)
  {
    v35 = v78;
    v36 = v78[7];
LABEL_10:
    v40 = v72;
    v41 = v73;
    v44 = v77;
    v45 = v74;
    v67 = v36;
    v36(v77, 1, 1, v74);
    sub_1CAEF9DAC();
    v42 = v35[6];
    if (v42(v44, 1, v45) != 1)
    {
      sub_1CAEB7358(v44);
    }

    goto LABEL_12;
  }

  v34 = v33;
  v35 = v78;
  v36 = v78[7];
  v36(v9, 1, 1, v11);
  sub_1CAEB94F0(qword_1EDE9D220, MEMORY[0x1E6969530]);
  sub_1CAEFA9AC();

  v66 = v35[6];
  if (v66(v9, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  v37 = v77;
  v38 = v9;
  v39 = v35[4];
  v39(v77, v38, v11);
  v67 = v36;
  v36(v37, 0, 1, v11);
  v39(v80, v37, v11);
  v40 = v72;
  v41 = v73;
  v42 = v66;
LABEL_12:
  v46 = sub_1CAEFA72C();
  v47 = v74;
  if (v46 && (v48 = v46, v49 = v76, v67(v76, 1, 1, v74), sub_1CAEB94F0(qword_1EDE9D220, MEMORY[0x1E6969530]), sub_1CAEFA9AC(), v48, v42(v49, 1, v47) != 1))
  {
    v50 = v35[4];
    v51 = v75;
    v50(v75, v76, v47);
    v52 = v51;
    v40 = v72;
    v41 = v73;
    v50(v79, v52, v47);
  }

  else
  {
    (v35[2])(v79, v80, v47);
  }

  v78 = a1;
  result = sub_1CAEF9DDC();
  if (((v40 | v41) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v53 = result;
    v54 = v41;
    v55 = v80;
    v56 = sub_1CAEF9D5C();
    v57 = v79;
    v58 = sub_1CAEF9D5C();
    v59 = v2;
    v60 = v40;
    v61 = v70;
    v62 = v68;
    v63 = [v59 initWithChannelIdentifier:v53 channelVersion:v60 posterVersion:v54 channelContext:v70 posterConfigurationIdentity:v68 creationDate:v56 lastModifiedDate:v58];

    v64 = v35[1];
    v65 = v74;
    v64(v57, v74);
    v64(v55, v65);
    (*(v69 + 8))(v81, v20);
    return v63;
  }

  return result;
}

void *PRUISPosterChannelState.posterConfigurationIdentity.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity);
  v2 = v1;
  return v1;
}

id sub_1CAEB83B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = (*(v9 + 16))(&v15 - v10, a1 + *a4, v8);
  v13 = a5(v12);
  (*(v9 + 8))(v11, v8);

  return v13;
}

uint64_t sub_1CAEB84E8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

id PRUISPosterChannelState.__allocating_init(channelIdentifier:channelVersion:posterVersion:channelContext:posterConfigurationIdentity:creationDate:lastModifiedDate:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v39 = a3;
  v37 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_1CAEF9DBC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v7;
  v19 = objc_allocWithZone(v7);
  sub_1CAEF9E6C();
  v20 = OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier;
  v21 = sub_1CAEF9E1C();
  v36 = *(v21 - 8);
  v22 = *(v36 + 16);
  v42 = a1;
  v38 = v21;
  v22(&v19[v20], a1);
  *&v19[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion] = v37;
  *&v19[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion] = v39;
  v39 = a4;
  *&v19[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext] = a4;
  v37 = a5;
  *&v19[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity] = a5;
  v23 = *(v16 + 16);
  v23(&v19[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_creationDate], a6, v15);
  sub_1CAEB8908(v43, v14);
  v24 = *(v16 + 48);
  v25 = v24(v14, 1, v15);
  v41 = a6;
  if (v25 == 1)
  {
    v35 = v18;
    v23(v18, a6, v15);
    v26 = v24(v14, 1, v15);
    v27 = v37;
    v28 = v39;
    v29 = v39;
    if (v26 != 1)
    {
      sub_1CAEB7358(v14);
    }

    v30 = v35;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v27 = v37;
    v28 = v39;
    v31 = v39;
    v30 = v18;
  }

  (*(v16 + 32))(&v19[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_lastModifiedDate], v30, v15);
  v44.receiver = v19;
  v44.super_class = v40;
  v32 = objc_msgSendSuper2(&v44, sel_init);

  sub_1CAEB7358(v43);
  (*(v16 + 8))(v41, v15);
  (*(v36 + 8))(v42, v38);
  return v32;
}

id PRUISPosterChannelState.init(channelIdentifier:channelVersion:posterVersion:channelContext:posterConfigurationIdentity:creationDate:lastModifiedDate:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1CAEB91A8(a1, a2, a3, a4, a5, a6, a7);

  return v9;
}

uint64_t sub_1CAEB8908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PRUISPosterChannelState.description.getter()
{
  v1 = v0;
  swift_getObjectType();
  sub_1CAEFA8CC();
  MEMORY[0x1CCAAB120](60, 0xE100000000000000);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_1CAEFA4EC();
  v6 = v5;

  MEMORY[0x1CCAAB120](v4, v6);

  MEMORY[0x1CCAAB120](0xD000000000000017, 0x80000001CAF090B0);
  sub_1CAEF9E1C();
  sub_1CAEB94F0(&unk_1EDE9D1F0, MEMORY[0x1E69695A8]);
  v7 = sub_1CAEFA9EC();
  MEMORY[0x1CCAAB120](v7);

  MEMORY[0x1CCAAB120](0xD000000000000012, 0x80000001CAF090D0);
  v8 = sub_1CAEFA9EC();
  MEMORY[0x1CCAAB120](v8);

  MEMORY[0x1CCAAB120](0xD000000000000011, 0x80000001CAF090F0);
  v9 = sub_1CAEFA9EC();
  MEMORY[0x1CCAAB120](v9);

  MEMORY[0x1CCAAB120](0xD000000000000012, 0x80000001CAF09110);
  v10 = [*(v1 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext) description];
  v11 = sub_1CAEFA4EC();
  v13 = v12;

  MEMORY[0x1CCAAB120](v11, v13);

  MEMORY[0x1CCAAB120](0xD00000000000001FLL, 0x80000001CAF09130);
  v14 = *(v1 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity);
  if (v14)
  {
    v15 = [v14 description];
    v16 = sub_1CAEFA4EC();
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x1CCAAB120](v16, v18);

  MEMORY[0x1CCAAB120](0xD000000000000010, 0x80000001CAF09150);
  sub_1CAEF9DBC();
  sub_1CAEB94F0(&unk_1EDE9D210, MEMORY[0x1E6969530]);
  v19 = sub_1CAEFA9EC();
  MEMORY[0x1CCAAB120](v19);

  MEMORY[0x1CCAAB120](0xD000000000000014, 0x80000001CAF09170);
  v20 = sub_1CAEFA9EC();
  MEMORY[0x1CCAAB120](v20);

  MEMORY[0x1CCAAB120](15913, 0xE200000000000000);
  return 0;
}

id PRUISPosterChannelState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PRUISPosterChannelState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CAEB91A8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v43 = a7;
  v38 = a2;
  v39 = a3;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_1CAEF9DBC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEF9E6C();
  v20 = OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier;
  v21 = sub_1CAEF9E1C();
  v36 = *(v21 - 8);
  v37 = v21;
  v22 = *(v36 + 16);
  v42 = a1;
  v22(&v8[v20], a1);
  v23 = v39;
  *&v8[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion] = v38;
  *&v8[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion] = v23;
  v38 = a5;
  v39 = a4;
  *&v8[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext] = a4;
  *&v8[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity] = a5;
  v24 = *(v17 + 16);
  v24(&v8[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_creationDate], a6, v16);
  sub_1CAEB8908(v43, v15);
  v25 = *(v17 + 48);
  v26 = v25(v15, 1, v16);
  v41 = a6;
  if (v26 == 1)
  {
    v24(v19, a6, v16);
    v27 = v25(v15, 1, v16);
    v28 = v38;
    v29 = v39;
    v30 = v27 == 1;
    v31 = v19;
    if (!v30)
    {
      sub_1CAEB7358(v15);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v32 = v38;
    v33 = v39;
    v31 = v19;
  }

  (*(v17 + 32))(&v8[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_lastModifiedDate], v31, v16);
  v44.receiver = v8;
  v44.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v44, sel_init);
  sub_1CAEB7358(v43);
  (*(v17 + 8))(v41, v16);
  (*(v36 + 8))(v42, v37);
  return v34;
}

uint64_t sub_1CAEB94F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PRUISPosterChannelState()
{
  result = qword_1EDE9D1C8;
  if (!qword_1EDE9D1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CAEB958C()
{
  result = sub_1CAEF9E1C();
  if (v1 <= 0x3F)
  {
    result = sub_1CAEF9DBC();
    if (v2 <= 0x3F)
    {
      result = sub_1CAEF9E7C();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t PRUISPosterChannelStateCoordinator.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PRUISPosterChannelStateCoordinator.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1CAEB98E8;
}

void sub_1CAEB98E8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PRUISPosterChannelStateCoordinator.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1CAEC8120(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void PRUISPosterChannelStateCoordinator.state.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_1CAEC8178();
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1CAEB9B84(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_1CAECC0C4(&v4);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

void sub_1CAEB9C08(id *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 4);
  sub_1CAECC114();
  os_unfair_lock_unlock(v2 + 4);
}

id sub_1CAEB9C8C@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state);
  *a1 = v2;
  return v2;
}

void (*PRUISPosterChannelStateCoordinator.state.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(v3 + 4);
  sub_1CAECC0C4(&v5);
  a1[3] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v5;
  return sub_1CAEB9D6C;
}

void sub_1CAEB9D6C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = *a1;
    os_unfair_lock_lock(v2 + 4);
    sub_1CAECC114();
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    v4 = *a1;
    os_unfair_lock_lock(v2 + 4);
    sub_1CAECC114();
    os_unfair_lock_unlock(v2 + 4);
  }
}

id PRUISPosterChannelStateCoordinator.init(modelCoordinator:state:)(void *a1, char *a2)
{
  v3 = v2;
  v52[9] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D70);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v3[v6] = v7;
  v47 = OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_delegate;
  swift_unknownObjectWeakInit();
  v46 = OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_modelCoordinator;
  *&v3[OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_modelCoordinator] = a1;
  v8 = OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier;
  v9 = OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_channelIdentifier;
  v10 = sub_1CAEF9E1C();
  v42 = *(v10 - 8);
  v44 = v10;
  v45 = v9;
  (*(v42 + 16))(&v3[v9], &a2[v8]);
  v43 = OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state;
  *&v3[OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state] = a2;
  v11 = a1;
  v12 = a2;
  v13 = [v11 schemaManager];
  v14 = OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_fileSystemSchemaManager;
  *&v3[OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_fileSystemSchemaManager] = v13;
  v15 = sub_1CAEF9DDC();
  v49 = v11;
  v16 = [v11 fileSystemEndpointForChannelIdentifier_];

  v17 = OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_rootChannelURLEndpoint;
  *&v3[OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_rootChannelURLEndpoint] = v16;
  v48 = v12;
  v18 = *&v12[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion];
  v19 = v16;
  v20 = sub_1CAEFA4BC();
  v21 = [v19 endPointByAppendingRelativePathComponents_];

  v52[0] = v18;
  sub_1CAEFA9EC();
  v22 = sub_1CAEFA4BC();

  v23 = [v21 endPointByAppendingRelativePathComponents_];

  v24 = *&v3[v17];
  v25 = sub_1CAEFA4BC();
  v26 = [v24 endPointByAppendingRelativePathComponents_];

  v27 = *&v3[v17];
  v28 = sub_1CAEFA4BC();
  v29 = [v27 endPointByAppendingRelativePathComponents_];

  v30 = *&v3[v14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAF03C90;
  v32 = *&v3[v17];
  *(inited + 32) = v32;
  *(inited + 40) = v23;
  *(inited + 48) = v26;
  *(inited + 56) = v29;
  v33 = v30;
  v34 = v32;
  v35 = v23;
  v36 = v26;
  v37 = v29;
  sub_1CAEC81B4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1CAEB33A4(0, &qword_1EDE9D118);
  sub_1CAEC82F4();
  v38 = sub_1CAEFA68C();

  v52[0] = 0;
  LOBYTE(v32) = [v33 prepareFileSystemForEndpoints:v38 error:v52];

  if (v32)
  {
    v39 = v52[0];

    v51.receiver = v3;
    v51.super_class = ObjectType;
    v35 = objc_msgSendSuper2(&v51, sel_init);
  }

  else
  {
    v40 = v52[0];
    sub_1CAEF9BFC();

    swift_willThrow();
    (*(v42 + 8))(&v3[v45], v44);

    sub_1CAEC835C(&v3[v47]);
    swift_deallocPartialClassInstance();
  }

  return v35;
}

id PRUISPosterChannelStateCoordinator.init(modelCoordinator:channelIdentifier:)(void *a1, uint64_t a2)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v51 = sub_1CAEF9CFC();
  v49 = *(v51 - 8);
  v5 = MEMORY[0x1EEE9AC00](v51);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - v8;
  v10 = sub_1CAEF9DDC();
  v11 = [a1 fileSystemEndpointForChannelIdentifier_];

  v12 = [a1 schemaManager];
  v13 = [v12 resolveEndpoint_];

  sub_1CAEF9CCC();
  v14 = sub_1CAEF9C8C();
  LOBYTE(v13) = [v14 pf_isReachable];

  if ((v13 & 1) == 0)
  {
    type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError(0);
    sub_1CAEC83A4(&qword_1EC481D98, type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError);
    swift_allocError();
    v21 = v20;
    v22 = sub_1CAEF9E1C();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v21, a2, v22);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v23 + 8))(a2, v22);
    (*(v49 + 8))(v9, v51);
    goto LABEL_9;
  }

  v47 = v7;
  v48 = v9;
  v15 = v49;
  v16 = v51;
  v17 = [a1 schemaManager];
  v18 = sub_1CAEC27D0(v11);
  if (v2)
  {

    v19 = sub_1CAEF9E1C();
    (*(*(v19 - 8) + 8))(a2, v19);
    (*(v15 + 8))(v48, v16);
LABEL_9:
    v35 = v50;
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v35;
  }

  v24 = *(v18 + 16);
  v46 = a2;
  if (v24)
  {
    v25 = *(v18 + 8 * v24 + 24);
  }

  else
  {
    v25 = 0;
  }

  v26 = v15;

  v27 = sub_1CAEC85D8(v25, v11);
  v28 = [v17 resolveEndpoint_];
  sub_1CAEF9CCC();

  v29 = sub_1CAEF9D0C();
  v32 = v31;
  v33 = v29;
  sub_1CAEB33A4(0, &qword_1EDE9D120);
  type metadata accessor for PRUISPosterChannelState();
  v34 = sub_1CAEFA71C();
  v49 = 0;
  v37 = v34;
  if (!v34)
  {
    type metadata accessor for PFError(0);
    v52 = 3;
    sub_1CAEC84A8(MEMORY[0x1E69E7CC0]);
    sub_1CAEC83A4(&qword_1EC481708, type metadata accessor for PFError);
    sub_1CAEF9BDC();
    swift_willThrow();

    sub_1CAEAF634(v33, v32);
    v43 = sub_1CAEF9E1C();
    (*(*(v43 - 8) + 8))(v46, v43);
    v44 = *(v26 + 8);
    v30 = v51;
    v44(v47, v51);
    v44(v48, v30);
    goto LABEL_9;
  }

  sub_1CAEAF634(v33, v32);
  v38 = v47;
  v39 = v51;
  v47 = *(v26 + 8);
  (v47)(v38, v51);
  v53[0] = 0;
  v40 = [v50 initWithModelCoordinator:a1 state:v37 error:v53];
  if (v40)
  {
    v35 = v40;
    v41 = v53[0];
  }

  else
  {
    v35 = v53[0];
    sub_1CAEF9BFC();

    swift_willThrow();
  }

  v42 = sub_1CAEF9E1C();
  (*(*(v42 - 8) + 8))(v46, v42);
  (v47)(v48, v39);
  return v35;
}

void sub_1CAEBADC0(void *a1)
{
  v2 = v1;
  v33[6] = *MEMORY[0x1E69E9840];
  v4 = sub_1CAEFA4BC();
  v5 = [a1 endPointByAppendingRelativePathComponents_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAF03CA0;
  *(inited + 32) = v5;
  v7 = v5;
  sub_1CAEC81B4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1CAEB33A4(0, &qword_1EDE9D118);
  sub_1CAEC82F4();
  v8 = sub_1CAEFA68C();

  v33[0] = 0;
  v9 = [v2 prepareFileSystemForEndpoints:v8 error:v33];

  if (v9)
  {
    v10 = v33[0];
  }

  else
  {
    v11 = v33[0];
    v12 = sub_1CAEF9BFC();

    swift_willThrow();
    if (qword_1EDE9D148 != -1)
    {
      swift_once();
    }

    v13 = sub_1CAEF9EBC();
    __swift_project_value_buffer(v13, qword_1EDE9D4A0);
    v14 = v2;
    v15 = v12;
    v16 = sub_1CAEF9E9C();
    v17 = sub_1CAEFA6EC();

    if (os_log_type_enabled(v16, v17))
    {
      v31 = v17;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v18 = 136446722;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = NSStringFromClass(ObjCClassFromMetadata);
      v22 = sub_1CAEFA4EC();
      v23 = v7;
      v25 = v24;

      v26 = sub_1CAEC5CF8(v22, v25, v33);
      v7 = v23;

      *(v18 + 4) = v26;
      *(v18 + 12) = 2114;
      *(v18 + 14) = v14;
      *v19 = v14;
      *(v18 + 22) = 2112;
      v27 = v14;
      v28 = v12;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v29;
      v19[1] = v29;
      _os_log_impl(&dword_1CAE63000, v16, v31, "<%{public}s:%{public}@> Failed to prepare file system for snapshot cache: %@", v18, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481A00);
      swift_arrayDestroy();
      MEMORY[0x1CCAAC620](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1CCAAC620](v32, -1, -1);
      MEMORY[0x1CCAAC620](v18, -1, -1);
    }

    else
    {
    }
  }

  v30 = [v2 resolveEndpoint_];
  sub_1CAEF9CCC();
}

id PRUISPosterChannelStateCoordinator.currentPosterConfiguration()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1CAECC0C4(&v8);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v8;
  v3 = *&v8[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity];
  if (v3)
  {
    v4 = *&v8[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion];
    v5 = v3;
    v6 = sub_1CAEC22C4(v5, v4);

    return v6;
  }

  else
  {

    return 0;
  }
}

void PRUISPosterChannelStateCoordinator.applyUpdater(_:)(void *a1)
{
  v2 = PRUISPosterChannelStateCoordinator.prepareStateTransitionWithUpdater(_:)(a1);
  if (!v1)
  {
    v3 = v2;
    sub_1CAEBBDE4(v2);
  }
}

id PRUISPosterChannelStateCoordinator.prepareStateTransitionWithUpdater(_:)(void *a1)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CAEF9CFC();
  v86 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v81 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v82 = &v78 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v83 = &v78 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v84 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v78 - v12;
  v13 = *&v1[OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock];
  os_unfair_lock_lock(v13 + 4);
  v14 = *&v1[OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state];
  v15 = [a1 posterConfiguration];
  v16 = [a1 channelContext];
  v90 = v14;
  v91 = v16;
  v89 = v15;
  if (v15)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    v18 = v15;
    if (v17)
    {
      v19 = v18;
      v20 = [v17 _path];
      v21 = [v17 pr_posterProvider];
      if (!v21)
      {
        sub_1CAEFA4EC();
        v21 = sub_1CAEFA4BC();
      }

      v22 = [objc_allocWithZone(MEMORY[0x1E69C5008]) initWithPath:v20 extensionIdentifier:v21];

      v23 = objc_opt_self();
      v92[0] = 0;
      v24 = [v23 finalizedConfigurationForAttributes:v22 withConfiguredProperties:0 error:v92];
      v25 = v92[0];
      if (!v24)
      {
        v72 = v92[0];

        sub_1CAEF9BFC();
        swift_willThrow();

        v36 = v19;
LABEL_29:

        os_unfair_lock_unlock(v13 + 4);
        return v72;
      }

      v26 = v24;
      v27 = v25;

      [a1 setPosterConfiguration_];
      v28 = v26;
    }

    else
    {
      v28 = v18;
    }

    v29 = [v28 _path];
    v30 = [v29 serverIdentity];
  }

  else
  {
    v28 = 0;
  }

  v31 = BSEqualObjects();
  swift_unknownObjectRelease();
  v32 = BSEqualObjects();
  v33 = v32;
  if (v31)
  {
    v34 = v32 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = v34 || v28 == 0;
  v36 = v28;
  if (!v35)
  {
    v87 = v28;
    v37 = [v28 _path];
    v38 = [v37 serverIdentity];

    if (v38)
    {
      v39 = *&v1[OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_fileSystemSchemaManager];
      v40 = sub_1CAEC89D0(*&v1[OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_rootChannelURLEndpoint], v38, *&v90[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion]);
      v41 = [v39 resolveEndpoint_];
      v42 = v81;
      sub_1CAEF9CCC();

      v43 = v82;
      v78 = v1;
      sub_1CAEF9CBC();
      v79 = a1;
      v80 = v13;
      v44 = *(v86 + 8);
      v44(v42, v3);
      v45 = v83;
      sub_1CAEF9CBC();
      v44(v43, v3);
      v46 = v84;
      sub_1CAEF9CBC();
      v44(v45, v3);
      v47 = v85;
      sub_1CAEF9CBC();

      v44(v46, v3);
      v48 = sub_1CAEF9C8C();
      v1 = v78;
      v49 = v48;
      v31 = [v48 pf_isReachable];

      a1 = v79;
      v44(v47, v3);
      v13 = v80;
    }

    else
    {
      v31 = 1;
    }

    v36 = v87;
  }

  if (v31 & v33)
  {
    if (qword_1EDE9D148 != -1)
    {
      swift_once();
    }

    v50 = sub_1CAEF9EBC();
    __swift_project_value_buffer(v50, qword_1EDE9D4A0);
    swift_unknownObjectRetain();
    v51 = v1;
    v52 = sub_1CAEF9E9C();
    v53 = sub_1CAEFA70C();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92[0] = v88;
      *v54 = 136446722;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v57 = NSStringFromClass(ObjCClassFromMetadata);
      v58 = sub_1CAEFA4EC();
      v80 = v13;
      v59 = v58;
      v87 = v36;
      v61 = v60;

      v62 = sub_1CAEC5CF8(v59, v61, v92);

      *(v54 + 4) = v62;
      *(v54 + 12) = 2114;
      *(v54 + 14) = v51;
      *v55 = v51;
      *(v54 + 22) = 2082;
      swift_getObjectType();
      v63 = swift_getObjCClassFromMetadata();
      v64 = v51;
      v65 = NSStringFromClass(v63);
      v66 = sub_1CAEFA4EC();
      v68 = v67;

      v69 = sub_1CAEC5CF8(v66, v68, v92);
      v36 = v87;

      *(v54 + 24) = v69;
      v13 = v80;
      _os_log_impl(&dword_1CAE63000, v52, v53, "<%{public}s:%{public}@> %{public}s did not provide any updates.", v54, 0x20u);
      sub_1CAEB3344(v55, &qword_1EC481A00);
      MEMORY[0x1CCAAC620](v55, -1, -1);
      v70 = v88;
      swift_arrayDestroy();
      MEMORY[0x1CCAAC620](v70, -1, -1);
      MEMORY[0x1CCAAC620](v54, -1, -1);
    }

    v71 = v90;
    v72 = type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError(0);
    sub_1CAEC83A4(&qword_1EC481D98, type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError);
    swift_allocError();
    *v73 = 0x676E616863206F4ELL;
    v73[1] = 0xEA00000000007365;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_29;
  }

  v74 = *&v1[OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_modelCoordinator];
  v75 = objc_allocWithZone(type metadata accessor for PRUISPosterChannelStateCoordinatorTransition(0));
  v76 = v74;
  swift_unknownObjectRetain();
  v72 = PRUISPosterChannelStateCoordinatorTransition.init(modelCoordinator:currentState:updater:)(v76, v90, a1);

  os_unfair_lock_unlock(v13 + 4);
  return v72;
}

void sub_1CAEBBDE4(uint64_t a1)
{
  v3 = sub_1CAEF9DBC();
  v95 = *&v3[-2]._os_unfair_lock_opaque;
  v96 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CAEF9E1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v98 = *(a1 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_finalState);
  v10(v9, &v98[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier], v6);
  v11 = sub_1CAEF9DEC();
  (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
    v58 = 0xD000000000000039;
    v13 = "sitionStagingURL";
LABEL_22:
    type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError(0);
    sub_1CAEC83A4(&qword_1EC481D98, type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError);
    swift_allocError();
    *v59 = v58;
    v59[1] = v13 | 0x8000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v94 = a1;
  v12 = *(a1 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_initialState);
  v13 = "dentifier for final state";
  if (!v12)
  {
LABEL_21:
    v58 = 0xD00000000000003BLL;
    goto LABEL_22;
  }

  v14 = OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier;
  v15 = v12;
  v16 = v1;
  if ((sub_1CAEF9DEC() & 1) == 0)
  {

    goto LABEL_21;
  }

  v93 = v15;
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v18 = v17;
  (*(v95 + 8))(v5, v96);
  if (qword_1EDE9D148 != -1)
  {
    swift_once();
  }

  v19 = sub_1CAEF9EBC();
  v95 = __swift_project_value_buffer(v19, qword_1EDE9D4A0);
  v20 = sub_1CAEF9E9C();
  v21 = sub_1CAEFA70C();
  v22 = os_log_type_enabled(v20, v21);
  v92 = v14;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v100 = v96;
    *v23 = 136315138;
    v24 = sub_1CAEF9DDC();
    v25 = sub_1CAEFA4BC();
    v26 = sub_1CAEFA4BC();
    v27 = CHANNEL_LOG_PREFIX(v24, v25, v26, 0);

    v28 = sub_1CAEFA4EC();
    v30 = v29;

    v31 = sub_1CAEC5CF8(v28, v30, &v100);

    *(v23 + 4) = v31;
    _os_log_impl(&dword_1CAE63000, v20, v21, "%s", v23, 0xCu);
    v32 = v96;
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x1CCAAC620](v32, -1, -1);
    MEMORY[0x1CCAAC620](v23, -1, -1);
  }

  v33 = v94;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    if (*(v33 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_contextUpdated) == 1)
    {
      [Strong coordinatorWillUpdateContext_];
    }

    if (*(v33 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_configurationUpdated) == 1)
    {
      [v35 coordinatorWillUpdatePoster_];
    }

    if (*(v33 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_descriptorsUpdated) == 1)
    {
      [v35 coordinatorWillUpdateDescriptors_];
    }

    swift_unknownObjectRelease();
  }

  v36 = *(v16 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  os_unfair_lock_lock(v36 + 4);
  PRUISPosterChannelStateCoordinatorTransition.commitStateTransition()();
  v96 = v36;
  if (v37)
  {
    v38 = v37;
    v39 = v37;
    v40 = sub_1CAEF9E9C();
    v41 = sub_1CAEFA6EC();

    LODWORD(v97) = v41;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v99 = v91;
      *v42 = 136315394;
      v90 = v40;
      v43 = sub_1CAEF9DDC();
      v44 = sub_1CAEFA4BC();
      v95 = v16;
      v45 = v44;
      v46 = sub_1CAEFA4BC();
      v47 = CHANNEL_LOG_PREFIX(v43, v45, v46, 1uLL);

      v38 = v37;
      v16 = v95;

      v48 = sub_1CAEFA4EC();
      v50 = v49;

      v51 = sub_1CAEC5CF8(v48, v50, &v99);

      *(v42 + 4) = v51;
      *(v42 + 12) = 2080;
      swift_getErrorValue();
      v52 = sub_1CAEFAA5C();
      v54 = sub_1CAEC5CF8(v52, v53, &v99);

      *(v42 + 14) = v54;
      v36 = v96;
      v55 = v90;
      _os_log_impl(&dword_1CAE63000, v90, v97, "%s error executing state transition: %s", v42, 0x16u);
      v56 = v91;
      swift_arrayDestroy();
      MEMORY[0x1CCAAC620](v56, -1, -1);
      v57 = v42;
      v33 = v94;
      MEMORY[0x1CCAAC620](v57, -1, -1);
    }

    else
    {
    }

    v60 = v93;

    v61 = *(v16 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state);
    *(v16 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state) = v60;
  }

  else
  {
    v81 = *(v16 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state);
    v82 = v98;
    *(v16 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state) = v98;
    v83 = v82;

    v84 = *&v83[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity];
    if (v84)
    {
      v85 = *&v83[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion];
      v86 = v84;
      v87 = sub_1CAEC22C4(v86, v85);

      v36 = v96;
      v62 = v87;
      goto LABEL_26;
    }
  }

  v62 = 0;
LABEL_26:
  os_unfair_lock_unlock(v36 + 4);
  v63 = swift_unknownObjectWeakLoadStrong();
  if (v63)
  {
    v64 = v63;
    v65 = MEMORY[0x1EEE9AC00](v63);
    *(&v89 - 2) = v16;
    MEMORY[0x1EEE9AC00](v65);
    *(&v89 - 2) = sub_1CAECC0FC;
    *(&v89 - 1) = v66;
    os_unfair_lock_lock(v36 + 4);
    sub_1CAECC0C4(&v99);
    sub_1CAEB33A4(0, &qword_1EC481E18);
    os_unfair_lock_unlock(v36 + 4);
    v67 = v99;
    v68 = sub_1CAEFA76C();

    if ((v68 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (*(v33 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_contextUpdated) == 1)
    {
      v69 = [v64 coordinator:v16 didUpdateContext:*&v98[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext]];
    }

    if (*(v33 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_configurationUpdated) == 1)
    {
      v69 = [v64 coordinator:v16 didUpdatePoster:v62];
    }

    if (*(v33 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_descriptorsUpdated) == 1)
    {
      v70 = MEMORY[0x1EEE9AC00](v69);
      *(&v89 - 2) = v16;
      MEMORY[0x1EEE9AC00](v70);
      *(&v89 - 2) = sub_1CAECC0FC;
      *(&v89 - 1) = v71;
      v72 = v96;
      os_unfair_lock_lock(v96 + 4);
      sub_1CAECC0C4(&v99);
      v73 = v16;
      os_unfair_lock_unlock(v72 + 4);
      v74 = v99;
      v75 = PRUISPosterChannelStateCoordinator.descriptorsFor(_:)(v99);

      if (v75)
      {
        v77 = MEMORY[0x1EEE9AC00](v76);
        *(&v89 - 2) = v73;
        MEMORY[0x1EEE9AC00](v77);
        *(&v89 - 2) = sub_1CAECC0FC;
        *(&v89 - 1) = v78;
        os_unfair_lock_lock(v72 + 4);
        sub_1CAECC0C4(&v99);
        os_unfair_lock_unlock(v72 + 4);
        v79 = v99;
        v80 = PRUISPosterChannelStateCoordinator.galleryMetadataFor(_:)(v99);
      }

      else
      {
        v80 = 0;
      }

      [v64 coordinator:v73 didUpdateDescriptors:v75 galleryMetadata:v80];

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_35:

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  v88 = v93;
  sub_1CAECA974(v18);
}

uint64_t sub_1CAEBCB30(unint64_t a1)
{
  v2 = sub_1CAEF9DDC();
  v3 = sub_1CAEFA4BC();
  v4 = sub_1CAEFA4BC();
  v5 = CHANNEL_LOG_PREFIX(v2, v3, v4, a1);

  v6 = sub_1CAEFA4EC();
  return v6;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PRUISPosterChannelStateCoordinatorTransition.commitStateTransition()()
{
  v1 = v0;
  v171 = *MEMORY[0x1E69E9840];
  v153 = sub_1CAEF9CFC();
  v161 = *(v153 - 8);
  v2 = MEMORY[0x1EEE9AC00](v153);
  v149 = v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v160 = v146 - v4;
  v5 = sub_1CAEF9DBC();
  v166 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v163 = v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CAEF9E1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v146 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v146 - v15;
  v162 = v1;
  v17 = *&v1[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_finalState];
  v152 = v8;
  v18 = *(v8 + 16);
  v150 = v17;
  v18(v146 - v15, &v17[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier], v7);
  v164 = v14;
  v18(v14, v16, v7);
  v159 = v7;
  v18(v11, v16, v7);
  if (qword_1EDE9D148 != -1)
  {
    swift_once();
  }

  v19 = sub_1CAEF9EBC();
  v165 = __swift_project_value_buffer(v19, qword_1EDE9D4A0);
  v20 = sub_1CAEF9E9C();
  v21 = sub_1CAEFA70C();
  v22 = os_log_type_enabled(v20, v21);
  v157 = v11;
  v158 = v16;
  v156 = v5;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v169 = v24;
    *v23 = 136315138;
    v25 = sub_1CAEF9DDC();
    v26 = sub_1CAEFA4BC();
    v27 = sub_1CAEFA4BC();
    v28 = CHANNEL_LOG_PREFIX(v25, v26, v27, 0);

    v16 = v158;
    v29 = sub_1CAEFA4EC();
    v31 = v30;

    v32 = sub_1CAEC5CF8(v29, v31, &v169);

    *(v23 + 4) = v32;
    _os_log_impl(&dword_1CAE63000, v20, v21, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v33 = v24;
    v11 = v157;
    MEMORY[0x1CCAAC620](v33, -1, -1);
    v34 = v23;
    v5 = v156;
    MEMORY[0x1CCAAC620](v34, -1, -1);
  }

  v35 = v163;
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v37 = v36;
  v38 = v166 + 8;
  v39 = *(v166 + 8);
  v39(v35, v5);
  v40 = v162;
  v41 = *&v162[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_modelCoordinator];
  v155 = [v41 schemaManager];
  v42 = sub_1CAEF9DDC();
  v147 = v41;
  v154 = [v41 fileSystemEndpointForChannelIdentifier_];

  v43 = *&v40[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_stagedFileSystemURLs];
  if (v43 >> 62)
  {
    v44 = sub_1CAEFA80C();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v166 = v38;
  v151 = v39;
  if (v44)
  {
    v146[1] = v43;
    v45 = *&v150[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion];
    v169 = 0;
    v170 = 0xE000000000000000;
    sub_1CAEFA8CC();

    v169 = 0xD000000000000019;
    v170 = 0x80000001CAF093D0;
    sub_1CAEC83A4(&unk_1EDE9D1F0, MEMORY[0x1E69695A8]);
    v46 = sub_1CAEFA9EC();
    MEMORY[0x1CCAAB120](v46);

    MEMORY[0x1CCAAB120](0x6E6F69737265562DLL, 0xE800000000000000);
    v148 = v45;
    v168 = v45;
    v47 = sub_1CAEFA9EC();
    MEMORY[0x1CCAAB120](v47);

    v48 = [objc_opt_self() pf_temporaryDirectoryURL];
    v49 = v149;
    sub_1CAEF9CCC();

    sub_1CAEF9C9C();

    v50 = v161 + 1;
    v51 = v161[1];
    v52 = v153;
    v51(v49, v153);
    v53 = sub_1CAEF9E9C();
    v54 = sub_1CAEFA70C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v161 = v50;
      v56 = v55;
      v57 = swift_slowAlloc();
      v169 = v57;
      *v56 = 136315138;
      v58 = sub_1CAEF9DDC();
      v59 = sub_1CAEFA4BC();
      v60 = v51;
      v61 = sub_1CAEFA4BC();
      v62 = CHANNEL_LOG_PREFIX(v58, v59, v61, 1uLL);

      v51 = v60;
      v52 = v153;
      v63 = sub_1CAEFA4EC();
      v65 = v64;

      v66 = sub_1CAEC5CF8(v63, v65, &v169);

      *(v56 + 4) = v66;
      _os_log_impl(&dword_1CAE63000, v53, v54, "%s prepareStateTransitionStagingURL", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      v67 = v57;
      v16 = v158;
      MEMORY[0x1CCAAC620](v67, -1, -1);
      v68 = v56;
      v50 = v161;
      MEMORY[0x1CCAAC620](v68, -1, -1);
    }

    v69 = v160;
    v70 = v154;
    v71 = v155;
    v72 = v167;
    v73 = sub_1CAEC8CDC(v160, v154, v155, v16, v148);
    v167 = v72;
    if (v72)
    {
      v51(v69, v52);

      v74 = v167;
LABEL_23:
      v167 = 0;
      goto LABEL_24;
    }

    v149 = v73;
    v75 = sub_1CAEF9E9C();
    v76 = sub_1CAEFA70C();
    v77 = os_log_type_enabled(v75, v76);
    v161 = v50;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v169 = v148;
      *v78 = 136315138;
      v79 = sub_1CAEF9DDC();
      v80 = sub_1CAEFA4BC();
      v81 = v51;
      v82 = sub_1CAEFA4BC();
      v83 = CHANNEL_LOG_PREFIX(v79, v80, v82, 1uLL);

      v51 = v81;
      v84 = sub_1CAEFA4EC();
      v86 = v85;

      v16 = v158;
      v87 = sub_1CAEC5CF8(v84, v86, &v169);

      *(v78 + 4) = v87;
      _os_log_impl(&dword_1CAE63000, v75, v76, "%s commit staged updates", v78, 0xCu);
      v88 = v148;
      __swift_destroy_boxed_opaque_existential_0(v148);
      MEMORY[0x1CCAAC620](v88, -1, -1);
      MEMORY[0x1CCAAC620](v78, -1, -1);
    }

    v89 = objc_opt_self();
    sub_1CAEB33A4(0, &qword_1EDE9D108);
    v90 = sub_1CAEFA5CC();

    v91 = v153;
    v92 = sub_1CAEFA5CC();
    swift_bridgeObjectRelease_n();
    v93 = sub_1CAEFA5CC();

    v94 = sub_1CAEF9C8C();
    v95 = [v147 fileManager];
    v169 = 0;
    LODWORD(v89) = [v89 commitStagedURLs:v90 destinationURLsForSwap:v92 stagingURLsForSwap:v93 stagingURL:v94 fileManager:v95 error:&v169];

    if (!v89)
    {
      v117 = v169;
      v74 = sub_1CAEF9BFC();

      swift_willThrow();
      v51(v160, v91);
      goto LABEL_23;
    }

    v96 = v169;
    v51(v160, v91);
    v11 = v157;
    v5 = v156;
    v39 = v151;
  }

  v97 = *&v162[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_nonStagedUpdates];
  if (!v97)
  {

    goto LABEL_30;
  }

  v98 = sub_1CAEF9E9C();
  v99 = sub_1CAEFA70C();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v169 = v161;
    *v100 = 136315138;
    v101 = sub_1CAEF9DDC();
    v102 = sub_1CAEFA4BC();
    v103 = sub_1CAEFA4BC();
    v104 = CHANNEL_LOG_PREFIX(v101, v102, v103, 1uLL);

    v105 = sub_1CAEFA4EC();
    v107 = v106;

    v108 = sub_1CAEC5CF8(v105, v107, &v169);

    *(v100 + 4) = v108;
    _os_log_impl(&dword_1CAE63000, v98, v99, "%s commit non-staged updates", v100, 0xCu);
    v109 = v161;
    __swift_destroy_boxed_opaque_existential_0(v161);
    MEMORY[0x1CCAAC620](v109, -1, -1);
    MEMORY[0x1CCAAC620](v100, -1, -1);
  }

  v110 = v155;
  v111 = *&v162[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_initialState];
  v112 = v111;
  v113 = v150;
  v114 = v154;
  v115 = v110;
  v116 = v167;
  v97(v111, v113, v114, v115);
  v167 = v116;
  if (v116)
  {

    sub_1CAECA7F8(v97);
    v74 = v167;
    v167 = 0;
    v16 = v158;
LABEL_24:
    v118 = v74;
    v119 = sub_1CAEF9E9C();
    v120 = sub_1CAEFA70C();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v169 = v162;
      *v121 = 136315394;
      v122 = sub_1CAEF9DDC();
      v123 = sub_1CAEFA4BC();
      v124 = sub_1CAEFA4BC();
      v125 = CHANNEL_LOG_PREFIX(v122, v123, v124, 1uLL);

      v126 = sub_1CAEFA4EC();
      v128 = v127;

      v16 = v158;
      v129 = sub_1CAEC5CF8(v126, v128, &v169);

      *(v121 + 4) = v129;
      *(v121 + 12) = 2080;
      swift_getErrorValue();
      v130 = sub_1CAEFAA5C();
      v132 = sub_1CAEC5CF8(v130, v131, &v169);

      *(v121 + 14) = v132;
      _os_log_impl(&dword_1CAE63000, v119, v120, "%s error: %s", v121, 0x16u);
      v133 = v162;
      swift_arrayDestroy();
      MEMORY[0x1CCAAC620](v133, -1, -1);
      MEMORY[0x1CCAAC620](v121, -1, -1);
    }

    else
    {
    }

    v11 = v157;
    goto LABEL_29;
  }

  sub_1CAECA7F8(v97);
  v11 = v157;
  v16 = v158;
LABEL_29:
  v5 = v156;
  v39 = v151;
LABEL_30:
  v134 = v163;
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v136 = v135;
  v39(v134, v5);
  v137 = sub_1CAEF9E9C();
  v138 = sub_1CAEFA70C();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v169 = v140;
    *v139 = 136315394;
    v141 = sub_1CAEC4C64(2uLL);
    v143 = sub_1CAEC5CF8(v141, v142, &v169);

    *(v139 + 4) = v143;
    *(v139 + 12) = 2048;
    *(v139 + 14) = v136 - v37;
    _os_log_impl(&dword_1CAE63000, v137, v138, "%s Elapsed time: %f seconds", v139, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v140);
    MEMORY[0x1CCAAC620](v140, -1, -1);
    MEMORY[0x1CCAAC620](v139, -1, -1);
  }

  v144 = *(v152 + 8);
  v145 = v159;
  v144(v11, v159);
  v144(v164, v145);
  v144(v16, v145);
}

id PRUISPosterChannelStateCoordinator.descriptors()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1CAECC0C4(&v5);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v5;
  v3 = PRUISPosterChannelStateCoordinator.descriptorsFor(_:)(v5);

  return v3;
}

uint64_t PRUISPosterChannelStateCoordinator.galleryMetadataFor(_:)(uint64_t a1)
{
  v3 = sub_1CAEF9CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  os_unfair_lock_lock(v7 + 4);
  v8 = *(v1 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_fileSystemSchemaManager);
  v9 = sub_1CAECA808(*(a1 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion), *(v1 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_rootChannelURLEndpoint));
  v10 = [v8 resolveEndpoint_];
  sub_1CAEF9CCC();

  v11 = sub_1CAEF9D0C();
  v13 = v12;
  sub_1CAEB33A4(0, &qword_1EDE9D120);
  type metadata accessor for PRUISPosterGalleryMetadata();
  v15 = sub_1CAEFA71C();
  (*(v4 + 8))(v6, v3);
  sub_1CAEAF634(v11, v13);

  os_unfair_lock_unlock(v7 + 4);
  return v15;
}

id PRUISPosterChannelStateCoordinator.descriptorsFor(_:)(uint64_t a1)
{
  v2 = v1;
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1CAEF9CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  os_unfair_lock_lock(v8 + 4);
  v9 = *(v2 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_rootChannelURLEndpoint);
  v10 = *(a1 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion);
  v11 = sub_1CAEFA4BC();
  v12 = [v9 endPointByAppendingRelativePathComponents_];

  v26[0] = v10;
  sub_1CAEFA9EC();
  v13 = sub_1CAEFA4BC();

  v14 = [v12 endPointByAppendingRelativePathComponents_];

  v15 = [*(v2 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_fileSystemSchemaManager) resolveEndpoint_];
  sub_1CAEF9CCC();

  v16 = sub_1CAEF9C8C();
  LODWORD(v2) = [v16 pf_isReachable];

  if (v2)
  {
    sub_1CAEB33A4(0, &unk_1EC481DA0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = sub_1CAEF9C8C();
    v26[0] = 0;
    v19 = [ObjCClassFromMetadata postersAtURL:v18 error:v26];

    if (v19)
    {
      v20 = *(v5 + 8);
      v21 = v26[0];
      v20(v7, v4);
    }

    else
    {
      v22 = v26[0];
      v23 = sub_1CAEF9BFC();

      swift_willThrow();
      v19 = [objc_allocWithZone(MEMORY[0x1E69C5018]) init];

      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v5 + 8))(v7, v4);

    v19 = 0;
  }

  os_unfair_lock_unlock(v8 + 4);
  return v19;
}

char *PRUISPosterChannelStateCoordinator.ingestUpdatedDescriptors(_:state:galleryMetadata:policy:)(_BYTE *a1, char *a2, uint64_t a3, void *a4)
{
  v403 = a4;
  v404 = a3;
  v411 = a2;
  v405 = a1;
  v421[6] = *MEMORY[0x1E69E9840];
  v392 = sub_1CAEF9E1C();
  v397 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v391 = &v363 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = sub_1CAEF9C3C();
  v401 = *(v402 - 8);
  MEMORY[0x1EEE9AC00](v402);
  v400 = &v363 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CAEF9CFC();
  v415 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v394 = &v363 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v395 = &v363 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v363 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v393 = &v363 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v398 = &v363 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v406 = &v363 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v417 = &v363 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v363 - v23;
  v25 = sub_1CAEF9DBC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v363 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v4;
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v31 = v30;
  v32 = *(v26 + 8);
  v408 = v28;
  v410 = v25;
  v409 = v26 + 8;
  v407 = v32;
  v32(v28, v25);
  v33 = *(v29 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_fileSystemSchemaManager);
  v34 = objc_opt_self();
  v35 = sub_1CAEFA4BC();
  v36 = [v34 pf:v35 temporaryDirectoryURLWithBasenamePrefix:?];

  v414 = v24;
  sub_1CAEF9CCC();

  if (qword_1EDE9D148 != -1)
  {
    goto LABEL_133;
  }

  while (1)
  {
    v37 = sub_1CAEF9EBC();
    v413 = __swift_project_value_buffer(v37, qword_1EDE9D4A0);
    v38 = sub_1CAEF9E9C();
    v39 = sub_1CAEFA70C();
    v40 = os_log_type_enabled(v38, v39);
    v412 = v7;
    v416 = v29;
    v390 = v14;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v420[0] = v42;
      *v41 = 136315138;
      v43 = sub_1CAEF9DDC();
      v44 = v33;
      v45 = sub_1CAEFA4BC();
      v46 = sub_1CAEFA4BC();
      v47 = CHANNEL_LOG_PREFIX(v43, v45, v46, 0);

      v33 = v44;
      v48 = sub_1CAEFA4EC();
      v50 = v49;

      v29 = v416;
      v51 = sub_1CAEC5CF8(v48, v50, v420);

      *(v41 + 4) = v51;
      _os_log_impl(&dword_1CAE63000, v38, v39, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      v52 = v42;
      v7 = v412;
      MEMORY[0x1CCAAC620](v52, -1, -1);
      MEMORY[0x1CCAAC620](v41, -1, -1);
    }

    v53 = *(v29 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
    os_unfair_lock_lock(v53 + 4);
    v54 = *(v29 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator__lock_state);
    v55 = *&v411[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion];
    v56 = v417;
    if (v55 < *&v54[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion])
    {
      type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError(0);
      sub_1CAEC83A4(&qword_1EC481D98, type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError);
      swift_allocError();
      *v57 = 0xD000000000000035;
      v57[1] = 0x80000001CAF094C0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v58 = 0;
      goto LABEL_109;
    }

    v396 = v53;
    v388 = v54;
    v411 = [v33 fileManager];
    v389 = [*(v29 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_modelCoordinator) role];
    v59 = *(v29 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_rootChannelURLEndpoint);
    v60 = sub_1CAEFA4BC();
    v386 = v59;
    v61 = [v59 endPointByAppendingRelativePathComponents_];

    *&v420[0] = v55;
    sub_1CAEFA9EC();
    v62 = sub_1CAEFA4BC();

    v63 = [v61 endPointByAppendingRelativePathComponents_];

    v387 = v33;
    v64 = [v33 resolveEndpoint_];
    sub_1CAEF9CCC();

    v65 = sub_1CAEF9C8C();
    v66 = [v65 pf_isReachable];

    if ((v66 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481D90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CAF03CA0;
      *(inited + 32) = v63;
      v68 = v63;
      sub_1CAEC81B4(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1CAEB33A4(0, &qword_1EDE9D118);
      sub_1CAEC82F4();
      v69 = sub_1CAEFA68C();

      *&v420[0] = 0;
      v70 = [v387 prepareFileSystemForEndpoints:v69 error:v420];

      if (!v70)
      {
        v248 = *&v420[0];
        sub_1CAEF9BFC();

        swift_willThrow();
        (*(v415 + 8))(v56, v7);
        goto LABEL_103;
      }

      v71 = *&v420[0];
    }

    v72 = v7;
    *&v420[0] = sub_1CAEF9C7C();
    *(&v420[0] + 1) = v73;
    v74 = v401;
    v75 = v400;
    v76 = v402;
    (v401)[13](v400, *MEMORY[0x1E6968F70], v402);
    sub_1CAECA920();
    v77 = v406;
    sub_1CAEF9CEC();
    (v74[1])(v75, v76);

    if (v403 == 1)
    {
      v385 = v63;
      v84 = v398;
      sub_1CAEF9C2C();
      v85 = sub_1CAEF9C8C();
      v86 = *(v415 + 8);
      v7 = v72;
      v86(v84, v72);
      sub_1CAEF9C2C();
      v87 = sub_1CAEF9C8C();
      v86(v84, v72);
      *&v420[0] = 0;
      v88 = v411;
      v89 = v77;
      v90 = [v411 copyItemAtURL:v85 toURL:v87 error:v420];

      v83 = *&v420[0];
      if (v90)
      {
        LODWORD(v381) = v66 ^ 1;
        v29 = v416;
        v80 = v417;
        goto LABEL_17;
      }

      v261 = *&v420[0];
      sub_1CAEF9BFC();

      swift_willThrow();
      v86(v89, v7);
      v86(v417, v7);
LABEL_103:
      v58 = 0;
      goto LABEL_104;
    }

    v29 = v416;
    v7 = v72;
    if (v403)
    {
      type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError(0);
      sub_1CAEC83A4(&qword_1EC481D98, type metadata accessor for PRUISPosterChannelStateCoordinator.PRUISPosterChannelStateCoordinatorError);
      swift_allocError();
      *v249 = 0x7963696C6F70;
      v249[1] = 0xE600000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v250 = *(v415 + 8);
      v250(v77, v72);
      v251 = v417;
      goto LABEL_107;
    }

    v78 = sub_1CAEF9C8C();
    v79 = [v63 attributes];
    v80 = v417;
    if (v79)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1CAEC83A4(&qword_1EC481730, type metadata accessor for FileAttributeKey);
      sub_1CAEFA49C();

      v29 = v416;
      v79 = sub_1CAEFA48C();
      v80 = v417;
    }

    *&v420[0] = 0;
    LODWORD(v381) = 1;
    v81 = v411;
    v82 = [v411 createDirectoryAtURL:v78 withIntermediateDirectories:1 attributes:v79 error:v420];

    v83 = *&v420[0];
    if ((v82 & 1) == 0)
    {
      v260 = *&v420[0];
      sub_1CAEF9BFC();

      swift_willThrow();
      v250 = *(v415 + 8);
      v250(v406, v7);
      goto LABEL_106;
    }

    v385 = v63;
LABEL_17:
    v91 = v83;
    v92 = [v387 fileManager];
    v93 = objc_allocWithZone(MEMORY[0x1E69C5120]);
    v94 = sub_1CAEF9C8C();
    v95 = [v93 initWithBaseURL:v94 fileManager:v92];

    sub_1CAEF9C7C();
    v96 = objc_allocWithZone(MEMORY[0x1E69C5118]);
    v97 = sub_1CAEFA4BC();

    v98 = [v96 initWithRelativePathComponents_];

    sub_1CAEB33A4(0, &unk_1EC481DA0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = v406;
    v100 = sub_1CAEF9C8C();
    *&v420[0] = 0;
    v372 = ObjCClassFromMetadata;
    v101 = [ObjCClassFromMetadata postersAtURL:v100 error:v420];

    if (!v101)
    {
      v262 = *&v420[0];
      sub_1CAEF9BFC();

      swift_willThrow();
      v250 = *(v415 + 8);
      v250(v33, v7);
LABEL_106:
      v251 = v80;
LABEL_107:
      v250(v251, v7);
      v58 = 0;
      goto LABEL_108;
    }

    v401 = v101;
    v373 = v98;
    v374 = v95;
    v102 = v405 + 64;
    v103 = 1 << v405[32];
    v104 = v103 < 64 ? ~(-1 << v103) : -1;
    v29 = v104 & *(v405 + 8);
    v378 = OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_channelIdentifier;
    v14 = ((v103 + 63) >> 6);
    v379 = "elIngestUpdatedDescriptors";
    v380 = "StateCoordinator";
    v371 = (v397 + 8);
    v376 = v415 + 8;
    v105 = *&v420[0];

    v7 = 0;
    *&v106 = 136315650;
    v377 = v106;
    v107 = v411;
    v397 = v102;
    v400 = v14;
LABEL_22:
    v108 = v7;
    if (!v29)
    {
      goto LABEL_24;
    }

    do
    {
      v7 = v108;
LABEL_27:
      v109 = __clz(__rbit64(v29)) | (v7 << 6);
      v110 = (*(v405 + 6) + 16 * v109);
      v112 = *v110;
      v111 = v110[1];
      v113 = *(*(v405 + 7) + 8 * v109);
      swift_bridgeObjectRetain_n();
      v114 = v113;
      v115 = v111;
      v116 = sub_1CAEF9E9C();
      v117 = sub_1CAEFA70C();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v403 = v114;
        v119 = v118;
        v383 = swift_slowAlloc();
        v384 = swift_slowAlloc();
        *&v420[0] = v384;
        *v119 = v377;
        v402 = v115;
        v120 = sub_1CAEF9DDC();
        v121 = sub_1CAEFA4BC();
        v122 = sub_1CAEFA4BC();
        v123 = CHANNEL_LOG_PREFIX(v120, v121, v122, 1uLL);
        v382 = v116;
        v124 = v112;
        v125 = v123;

        LOBYTE(v122) = v117;
        v126 = v401;
        v127 = sub_1CAEFA4EC();
        v129 = v128;

        v112 = v124;
        v130 = sub_1CAEC5CF8(v127, v129, v420);

        *(v119 + 4) = v130;
        v115 = v402;
        *(v119 + 12) = 2080;
        *(v119 + 14) = sub_1CAEC5CF8(v124, v115, v420);
        *(v119 + 22) = 2112;
        *(v119 + 24) = v403;
        v131 = v383;
        *v383 = v403;
        v132 = v403;
        v133 = v122;
        v134 = v382;
        _os_log_impl(&dword_1CAE63000, v382, v133, "%s processing descriptors for provider '%s': %@", v119, 0x20u);
        sub_1CAEB3344(v131, &qword_1EC481A00);
        MEMORY[0x1CCAAC620](v131, -1, -1);
        v135 = v384;
        swift_arrayDestroy();
        MEMORY[0x1CCAAC620](v135, -1, -1);
        v136 = v119;
        v114 = v403;
        v33 = v406;
        MEMORY[0x1CCAAC620](v136, -1, -1);
      }

      else
      {

        v126 = v401;
      }

      v29 &= v29 - 1;
      v137 = sub_1CAEFA4BC();
      v138 = [v126 collectionForProvider_];

      v139 = [objc_allocWithZone(MEMORY[0x1E69C5020]) initWithCollection:v138 otherCollection:v114];
      v140 = [v139 areCollectionsEqual];
      v80 = v417;
      if (!v140)
      {
        v370 = v138;
        v369 = v112;
        v402 = v115;
        v403 = v114;
        v141 = [v139 addedPosters];
        v142 = sub_1CAEFA69C();

        v143 = 0;
        v145 = v142 + 56;
        v144 = *(v142 + 56);
        v384 = v142;
        v146 = 1 << *(v142 + 32);
        if (v146 < 64)
        {
          v147 = ~(-1 << v146);
        }

        else
        {
          v147 = -1;
        }

        v148 = v147 & v144;
        v149 = ((v146 + 63) >> 6);
        v14 = v400;
        v383 = v149;
LABEL_37:
        v150 = v143;
        if (!v148)
        {
          goto LABEL_39;
        }

        do
        {
          v143 = v150;
LABEL_42:
          v151 = __clz(__rbit64(v148));
          v148 &= v148 - 1;
          sub_1CAEAF688(v384[6] + 40 * (v151 | (v143 << 6)), v420);
          v141 = sub_1CAEFA83C();
          sub_1CAEAE7E8(v420);
          objc_opt_self();
          v152 = swift_dynamicCastObjCClass();
          if (v152)
          {
            v368 = v141;
            v153 = v152;
            v375 = sub_1CAEFA4BC();
            v364 = v153;
            v381 = [v153 identifier];
            if (!v381)
            {
              sub_1CAEFA4EC();
              v381 = sub_1CAEFA4BC();
            }

            v382 = objc_opt_self();
            v154 = v391;
            sub_1CAEF9E0C();
            v155 = sub_1CAEF9DDC();
            (*v371)(v154, v392);
            v156 = [v382 descriptorIdentityWithProvider:v375 identifier:v381 role:v389 posterUUID:v155 version:0];
            v382 = v156;

            v157 = sub_1CAECAB78(v156);
            v158 = sub_1CAEFA4BC();
            v381 = [v157 endPointByAppendingRelativePathComponents_];

            *&v418 = [v382 version];
            sub_1CAEFA9EC();
            v159 = sub_1CAEFA4BC();
            v375 = v159;

            v160 = v381;
            v161 = [v381 endPointByAppendingRelativePathComponents_];

            v381 = sub_1CAEFA4BC();
            v162 = [v161 endPointByAppendingRelativePathComponents_];
            v375 = v162;

            v163 = [v373 endPointByAppendingEndpoint_];
            v164 = [v374 resolveEndpoint_];

            sub_1CAEF9CCC();
            v165 = v398;
            sub_1CAEF9CBC();
            v367 = sub_1CAEF9C8C();
            v381 = *v376;
            v381(v165, v412);
            v166 = [v375 attributes];
            if (v166)
            {
              v167 = v166;
              type metadata accessor for FileAttributeKey(0);
              v366 = v168;
              v365 = sub_1CAEC83A4(&qword_1EC481730, type metadata accessor for FileAttributeKey);
              sub_1CAEFA49C();

              v366 = sub_1CAEFA48C();
            }

            else
            {
              v366 = 0;
            }

            *&v418 = 0;
            v169 = v367;
            v170 = v366;
            LODWORD(v365) = [v411 createDirectoryAtURL:v367 withIntermediateDirectories:1 attributes:v366 error:&v418];

            v141 = v418;
            if (!v365)
            {
              goto LABEL_136;
            }

            v171 = v418;
            v172 = [v364 _path];
            v173 = [v172 contentsURL];

            v174 = v398;
            sub_1CAEF9CCC();

            v175 = sub_1CAEF9C8C();
            v381(v174, v412);
            v176 = sub_1CAEF9C8C();
            *&v418 = 0;
            LODWORD(v367) = [v411 copyItemAtURL:v175 toURL:v176 error:&v418];

            v141 = v418;
            if (!v367)
            {
              goto LABEL_136;
            }

            v177 = v418;
            v178 = sub_1CAEF9C8C();
            *&v418 = 0;
            v179 = [v382 setupPersistenceForPathContainerURL:v178 error:&v418];

            v141 = v418;
            if (!v179)
            {
              goto LABEL_136;
            }

            v180 = v418;
            v381(v393, v412);

            LODWORD(v381) = 1;
            v149 = v383;
            goto LABEL_37;
          }

          v150 = v143;
          v149 = v383;
        }

        while (v148);
        while (1)
        {
LABEL_39:
          v143 = v150 + 1;
          if (__OFADD__(v150, 1))
          {
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            v329 = v141;

            v330 = sub_1CAEF9BFC();
            swift_willThrow();

            v7 = v412;
            v381(v393, v412);
            goto LABEL_140;
          }

          if (v143 >= v149)
          {
            break;
          }

          v148 = *(v145 + 8 * v143);
          ++v150;
          if (v148)
          {
            goto LABEL_42;
          }
        }

        v141 = [v139 removedPosters];
        v181 = sub_1CAEFA69C();

        v182 = 0;
        v184 = (v181 + 56);
        v183 = *(v181 + 56);
        v384 = v181;
        v185 = 1 << *(v181 + 32);
        if (v185 < 64)
        {
          v186 = ~(-1 << v185);
        }

        else
        {
          v186 = -1;
        }

        isa = v186 & v183;
        v188 = (v185 + 63) >> 6;
        v382 = v184;
        if ((v186 & v183) != 0)
        {
          do
          {
LABEL_62:
            v190 = __clz(__rbit64(isa));
            isa &= isa - 1;
            sub_1CAEAF688(v384[6] + 40 * (v190 | (v182 << 6)), v420);
            v141 = sub_1CAEFA83C();
            sub_1CAEAE7E8(v420);
            objc_opt_self();
            v191 = swift_dynamicCastObjCClass();
            if (v191 && (v192 = [v191 _path], v383 = v141, v193 = v192, v194 = objc_msgSend(v192, sel_serverIdentity), v193, v141 = v383, (v375 = v194) != 0))
            {
              v381 = sub_1CAECAB78(v375);
              v195 = [v373 endPointByAppendingEndpoint_];
              v196 = [v374 resolveEndpoint_];

              sub_1CAEF9CCC();
              v197 = sub_1CAEF9C8C();
              *&v418 = 0;
              LODWORD(v196) = [v411 removeItemAtURL:v197 error:&v418];

              v141 = v418;
              if (!v196)
              {
                v362 = v418;

                v330 = sub_1CAEF9BFC();
                swift_willThrow();

                v7 = v412;
                v381 = *v376;
                v381(v390, v412);
                goto LABEL_140;
              }

              v368 = *v376;
              v198 = v418;
              v368(v390, v412);

              LODWORD(v381) = 1;
            }

            else
            {
            }

            v184 = v382;
          }

          while (isa);
        }

        while (1)
        {
          v189 = v182 + 1;
          if (__OFADD__(v182, 1))
          {
            goto LABEL_135;
          }

          if (v189 >= v188)
          {
            break;
          }

          isa = v184[v189].isa;
          ++v182;
          if (isa)
          {
            v182 = v189;
            goto LABEL_62;
          }
        }

        v375 = v139;
        v199 = [v139 updatedPosters];
        v382 = [v199 keyEnumerator];

        v80 = v417;
        v107 = v411;
LABEL_70:
        v33 = v406;
        while (1)
        {
          if ([v382 nextObject])
          {
            sub_1CAEFA7BC();
            swift_unknownObjectRelease();
          }

          else
          {
            v418 = 0u;
            v419 = 0u;
          }

          v201 = v375;
          v420[0] = v418;
          v420[1] = v419;
          if (!*(&v419 + 1))
          {

            sub_1CAEB3344(v420, &unk_1EC482110);
            goto LABEL_93;
          }

          sub_1CAEB33A4(0, &qword_1EC481DB0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v202 = v201;
          v200 = v421[0];
          v203 = [v202 updatedPosters];
          v204 = [v203 objectForKey_];

          v384 = v204;
          if (v204)
          {
            v383 = v200;
            v205 = [v200 _path];
            v206 = [v205 serverIdentity];

            if (v206)
            {
              v207 = [v206 descriptorIdentifier];
              if (v207)
              {
                v381 = v207;
                v208 = [v206 provider];
                if (!v208)
                {
                  sub_1CAEFA4EC();
                  v208 = sub_1CAEFA4BC();
                }

                v209 = objc_opt_self();
                v210 = [v206 role];
                v211 = [v206 posterUUID];
                v212 = v391;
                sub_1CAEF9DFC();

                v213 = sub_1CAEF9DDC();
                (*v371)(v212, v392);
                result = [v206 version];
                v215 = result + 1;
                if (result == -1)
                {
                  __break(1u);
                  return result;
                }

                v216 = v209;
                v217 = v381;
                v218 = [v216 descriptorIdentityWithProvider:v208 identifier:v381 role:v210 posterUUID:v213 version:v215];
                v219 = v208;
                v220 = v218;

                v221 = sub_1CAECAB78(v220);
                v222 = sub_1CAEFA4BC();
                v223 = [v221 endPointByAppendingRelativePathComponents_];

                v367 = v220;
                *&v420[0] = [v220 version];
                sub_1CAEFA9EC();
                v224 = sub_1CAEFA4BC();

                v225 = [v223 endPointByAppendingRelativePathComponents_];

                v226 = sub_1CAEFA4BC();
                v227 = [v225 endPointByAppendingRelativePathComponents_];

                v228 = [v373 endPointByAppendingEndpoint_];
                v229 = [v374 resolveEndpoint_];

                sub_1CAEF9CCC();
                v230 = [v384 _path];
                v231 = [v230 contentsURL];

                sub_1CAEF9CCC();
                v232 = v398;
                sub_1CAEF9CBC();
                v233 = sub_1CAEF9C8C();
                v381 = *v376;
                v381(v232, v412);
                v368 = v227;
                v234 = [v227 attributes];
                if (v234)
                {
                  type metadata accessor for FileAttributeKey(0);
                  sub_1CAEC83A4(&qword_1EC481730, type metadata accessor for FileAttributeKey);
                  sub_1CAEFA49C();

                  v234 = sub_1CAEFA48C();
                }

                *&v420[0] = 0;
                v107 = v411;
                v235 = [v411 createDirectoryAtURL:v233 withIntermediateDirectories:1 attributes:v234 error:v420];

                v236 = *&v420[0];
                if (!v235 || (v237 = *&v420[0], v238 = sub_1CAEF9C8C(), v239 = sub_1CAEF9C8C(), *&v420[0] = 0, v240 = [v107 copyItemAtURL:v238 toURL:v239 error:v420], v238, v239, v236 = *&v420[0], !v240))
                {
                  v331 = v236;
                  v332 = v375;

                  v330 = sub_1CAEF9BFC();
                  swift_willThrow();

                  goto LABEL_139;
                }

                v241 = *&v420[0];
                v242 = sub_1CAEF9C8C();
                *&v420[0] = 0;
                v243 = v367;
                v244 = [v367 setupPersistenceForPathContainerURL:v242 error:v420];

                if (!v244)
                {
                  v333 = *&v420[0];
                  v334 = v375;

                  v330 = sub_1CAEF9BFC();
                  swift_willThrow();

LABEL_139:
                  v7 = v412;
                  v335 = v381;
                  v381(v394, v412);
                  v335(v395, v7);
LABEL_140:
                  v336 = v402;

                  v337 = v330;
                  v338 = v336;
                  v339 = sub_1CAEF9E9C();
                  v340 = sub_1CAEFA70C();

                  if (os_log_type_enabled(v339, v340))
                  {
                    v341 = swift_slowAlloc();
                    v400 = swift_slowAlloc();
                    *&v420[0] = v400;
                    *v341 = v377;
                    v342 = v338;
                    v343 = sub_1CAEF9DDC();
                    v344 = sub_1CAEFA4BC();
                    v345 = sub_1CAEFA4BC();
                    v346 = CHANNEL_LOG_PREFIX(v343, v344, v345, 1uLL);

                    v347 = sub_1CAEFA4EC();
                    v349 = v348;

                    v350 = sub_1CAEC5CF8(v347, v349, v420);

                    *(v341 + 4) = v350;
                    *(v341 + 12) = 2080;
                    v351 = sub_1CAEC5CF8(v369, v342, v420);

                    *(v341 + 14) = v351;
                    *(v341 + 22) = 2080;
                    swift_getErrorValue();
                    v352 = sub_1CAEFAA5C();
                    v354 = sub_1CAEC5CF8(v352, v353, v420);

                    *(v341 + 24) = v354;
                    _os_log_impl(&dword_1CAE63000, v339, v340, "%s error processing descriptors for provider '%s': %s", v341, 0x20u);
                    v355 = v400;
                    swift_arrayDestroy();
                    v7 = v412;
                    MEMORY[0x1CCAAC620](v355, -1, -1);
                    MEMORY[0x1CCAAC620](v341, -1, -1);
                  }

                  else
                  {
                  }

                  v356 = v417;
                  v53 = v396;
                  v357 = v388;
                  v358 = v385;
                  v359 = v374;
                  v360 = v373;
                  swift_willThrow();

                  v361 = v381;
                  v381(v406, v7);
                  v361(v356, v7);
                  v58 = 0;
                  v29 = v416;
                  goto LABEL_109;
                }

                v245 = *&v420[0];

                v246 = v412;
                v247 = v381;
                v381(v394, v412);
                v247(v395, v246);
                LODWORD(v381) = 1;
                v80 = v417;
                goto LABEL_70;
              }
            }

            v33 = v406;
            v200 = v383;
          }
        }

LABEL_93:
        v102 = v397;
        goto LABEL_22;
      }

      v108 = v7;
      v102 = v397;
      v14 = v400;
      v107 = v411;
    }

    while (v29);
LABEL_24:
    v7 = v108 + 1;
    if (!__OFADD__(v108, 1))
    {
      break;
    }

    __break(1u);
LABEL_133:
    swift_once();
  }

  if (v7 < v14)
  {
    v29 = *&v102[8 * v7];
    ++v108;
    if (v29)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  os_unfair_lock_unlock(v396 + 4);
  if ((v381 & 1) == 0)
  {

    v278 = *v376;
    v279 = v412;
    (*v376)(v33, v412);
    v278(v80, v279);
    v280 = v416;
    v281 = v416;
    v282 = v408;
    sub_1CAEF9D9C();
    sub_1CAEF9D7C();
    v284 = v283;
    v407(v282, v410);
    v285 = sub_1CAEF9E9C();
    v286 = sub_1CAEFA70C();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      *&v420[0] = v288;
      *v287 = 136315394;
      v289 = sub_1CAEC1D58(2uLL);
      v291 = sub_1CAEC5CF8(v289, v290, v420);
      v280 = v416;

      *(v287 + 4) = v291;
      v279 = v412;
      *(v287 + 12) = 2048;
      *(v287 + 14) = v284 - v31;
      _os_log_impl(&dword_1CAE63000, v285, v286, "%s Elapsed time: %f seconds.", v287, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v288);
      MEMORY[0x1CCAAC620](v288, -1, -1);
      MEMORY[0x1CCAAC620](v287, -1, -1);
    }

    goto LABEL_119;
  }

  v29 = v416;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = v412;
  if (Strong)
  {
    [Strong coordinatorWillUpdateDescriptors_];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_lock(v396 + 4);
  v253 = objc_allocWithZone(MEMORY[0x1E69C5118]);
  v254 = sub_1CAEFA4BC();
  v255 = [v253 initWithRelativePathComponents_];

  v256 = objc_opt_self();
  v257 = [v256 archiveObjectUsingNSKeyedArchiver:v404 toEndpoint:v255];
  v258 = v399;
  sub_1CAEC1E20(v386);
  v399 = v258;
  if (v258)
  {

    v259 = *v376;
    (*v376)(v406, v7);
    v259(v417, v7);
    v58 = 0;
    goto LABEL_108;
  }

  v405 = v255;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481D90);
  v292 = swift_allocObject();
  *(v292 + 16) = xmmword_1CAF03CA0;
  *(v292 + 32) = v257;
  sub_1CAEB33A4(0, &qword_1EDE9D108);
  v403 = v257;
  v293 = sub_1CAEFA5CC();

  v294 = v417;
  v295 = sub_1CAEF9C8C();
  v296 = v406;
  v297 = sub_1CAEF9C8C();
  *&v420[0] = 0;
  v298 = v411;
  v299 = [v256 commitStagedURLs:v293 destinationURL:v295 stagingURL:v297 fileManager:v411 error:v420];

  if (!v299)
  {
    v323 = *&v420[0];
    sub_1CAEF9BFC();

    swift_willThrow();
    v324 = *v376;
    v325 = v296;
LABEL_130:
    v7 = v412;
    v324(v325, v412);
    v324(v294, v7);
    goto LABEL_103;
  }

  v300 = v403;
  v301 = *&v420[0];
  v302 = sub_1CAEF9C8C();
  *&v420[0] = 0;
  v58 = [v372 postersAtURL:v302 error:v420];

  if (!v58)
  {
    v326 = *&v420[0];
    sub_1CAEF9BFC();

    swift_willThrow();
    v324 = *v376;
    v325 = v406;
    goto LABEL_130;
  }

  v303 = *&v420[0];
  v304 = [v387 fileManager];
  sub_1CAEF9CDC();
  v305 = sub_1CAEFA4BC();

  *&v420[0] = 0;
  v306 = [v304 removeItemAtPath:v305 error:v420];

  v307 = v373;
  if (v306)
  {
    v308 = *&v420[0];
    os_unfair_lock_unlock(v396 + 4);

    v278 = *v376;
    v279 = v412;
    (*v376)(v406, v412);
    v278(v417, v279);
    v309 = v416;
    v310 = swift_unknownObjectWeakLoadStrong();
    v311 = v309;
    if (v310)
    {
      v312 = v58;
      [v310 coordinator:v311 didUpdateDescriptors:v312 galleryMetadata:v404];

      swift_unknownObjectRelease();
    }

    v376 = v376 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v313 = v408;
    sub_1CAEF9D9C();
    sub_1CAEF9D7C();
    v315 = v314;
    v407(v313, v410);
    v316 = sub_1CAEF9E9C();
    v317 = sub_1CAEFA70C();
    if (os_log_type_enabled(v316, v317))
    {
      v318 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      *&v420[0] = v319;
      *v318 = 136315394;
      v320 = sub_1CAEC1D58(2uLL);
      v322 = sub_1CAEC5CF8(v320, v321, v420);
      v279 = v412;

      *(v318 + 4) = v322;
      *(v318 + 12) = 2048;
      *(v318 + 14) = v315 - v31;
      _os_log_impl(&dword_1CAE63000, v316, v317, "%s Elapsed time: %f seconds.", v318, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v319);
      MEMORY[0x1CCAAC620](v319, -1, -1);
      MEMORY[0x1CCAAC620](v318, -1, -1);
    }

    v280 = v416;
LABEL_119:

    return (v278)(v414, v279);
  }

  v327 = *&v420[0];
  sub_1CAEF9BFC();

  swift_willThrow();
  v328 = *v376;
  v7 = v412;
  (*v376)(v406, v412);
  v328(v417, v7);
LABEL_104:
  v29 = v416;
LABEL_108:
  v53 = v396;
LABEL_109:
  os_unfair_lock_unlock(v53 + 4);
  swift_willThrow();
  if (v58 && (swift_beginAccess(), (v263 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v264 = v263;
    v265 = v29;
    v266 = v58;
    [v264 coordinator:v265 didUpdateDescriptors:v266 galleryMetadata:v404];

    swift_unknownObjectRelease();
  }

  else
  {
    v267 = v29;
  }

  v268 = v408;
  sub_1CAEF9D9C();
  sub_1CAEF9D7C();
  v270 = v269;
  v407(v268, v410);
  v271 = sub_1CAEF9E9C();
  v272 = sub_1CAEFA70C();
  if (os_log_type_enabled(v271, v272))
  {
    v273 = swift_slowAlloc();
    v274 = swift_slowAlloc();
    v421[0] = v274;
    *v273 = 136315394;
    v275 = sub_1CAEC1D58(2uLL);
    v277 = sub_1CAEC5CF8(v275, v276, v421);
    v29 = v416;

    *(v273 + 4) = v277;
    v7 = v412;
    *(v273 + 12) = 2048;
    *(v273 + 14) = v270 - v31;
    _os_log_impl(&dword_1CAE63000, v271, v272, "%s Elapsed time: %f seconds.", v273, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v274);
    MEMORY[0x1CCAAC620](v274, -1, -1);
    MEMORY[0x1CCAAC620](v273, -1, -1);
  }

  return (*(v415 + 8))(v414, v7);
}

uint64_t sub_1CAEC1D58(unint64_t a1)
{
  v2 = sub_1CAEF9DDC();
  v3 = sub_1CAEFA4BC();
  v4 = sub_1CAEFA4BC();
  v5 = CHANNEL_LOG_PREFIX(v2, v3, v4, a1);

  v6 = sub_1CAEFA4EC();
  return v6;
}

void sub_1CAEC1E20(void *a1)
{
  v3 = v1;
  v27[1] = *MEMORY[0x1E69E9840];
  v26 = sub_1CAEF9CFC();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CAEFA4BC();
  v9 = [a1 endPointByAppendingRelativePathComponents_];

  v10 = [v3 resolveEndpoint_];
  sub_1CAEF9CCC();

  v11 = [v9 attributes];
  v25 = v2;
  if (v11)
  {
    v12 = v11;
    type metadata accessor for FileAttributeKey(0);
    sub_1CAEC83A4(&qword_1EC481730, type metadata accessor for FileAttributeKey);
    v13 = sub_1CAEFA49C();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 fileManager];
  v15 = sub_1CAEF9C8C();
  v27[0] = 0;
  v16 = [v14 removeItemAtURL:v15 error:v27];

  if (v16)
  {
    v17 = v27[0];
    v18 = [v3 fileManager];
    v19 = sub_1CAEF9C8C();
    if (v13)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1CAEC83A4(&qword_1EC481730, type metadata accessor for FileAttributeKey);
      v20 = sub_1CAEFA48C();
    }

    else
    {
      v20 = 0;
    }

    v27[0] = 0;
    v22 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:v20 error:v27];

    if (v22)
    {
      v23 = *(v5 + 8);
      v24 = v27[0];
      v23(v7, v26);

      return;
    }

    v21 = v27[0];
  }

  else
  {
    v21 = v27[0];
  }

  sub_1CAEF9BFC();

  swift_willThrow();
  (*(v5 + 8))(v7, v26);
}

id sub_1CAEC22C4(void *a1, void *a2)
{
  v28 = a2;
  v3 = v2;
  v29 = a1;
  v4 = sub_1CAEF9CFC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v28 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v28 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  v20 = *(v3 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_fileSystemSchemaManager);
  v28 = sub_1CAEC89D0(*(v3 + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_rootChannelURLEndpoint), v29, v28);
  v21 = [v20 resolveEndpoint_];
  sub_1CAEF9CCC();

  sub_1CAEF9CBC();
  v22 = *(v5 + 8);
  v22(v8, v4);
  sub_1CAEF9CBC();
  v22(v11, v4);
  sub_1CAEF9CBC();
  v22(v14, v4);
  sub_1CAEF9CBC();

  v22(v17, v4);
  v23 = sub_1CAEF9C8C();
  LODWORD(v8) = [v23 pf_isReachable];

  v24 = 0;
  if (v8)
  {
    v25 = sub_1CAEF9C8C();
    v26 = [objc_opt_self() pathWithProviderURL:v25 identity:v29];

    v24 = [objc_allocWithZone(MEMORY[0x1E69C5000]) initWithPath_];
  }

  v22(v19, v4);
  return v24;
}

id PRUISPosterChannelStateCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall PRUISPosterChannelStateCoordinator.invalidate()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong coordinatorWillInvalidate_];
    swift_unknownObjectRelease();
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    [v2 coordinatorDidInvalidate_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CAEC27D0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482060);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v52[-v5];
  v7 = sub_1CAEF9C1C();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1CAEF9CFC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v64 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52[-v14];
  v16 = sub_1CAEFA4BC();
  v17 = [a1 endPointByAppendingRelativePathComponents_];

  v66 = v17;
  v18 = [v1 resolveEndpoint_];
  sub_1CAEF9CCC();

  v19 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  v20 = [v1 fileManager];
  v21 = sub_1CAEFA6DC();

  if (!v21)
  {
LABEL_87:
    if (*(v19 + 2))
    {
      sub_1CAEC77E8(&v70);

      (*(v11 + 8))(v15, v10);
      return v70;
    }

    else
    {

      type metadata accessor for PFError(0);
      v67[0] = 0;
      sub_1CAEC84A8(MEMORY[0x1E69E7CC0]);
      sub_1CAEC83A4(&qword_1EC481708, type metadata accessor for PFError);
      sub_1CAEF9BDC();
      swift_willThrow();

      return (*(v11 + 8))(v15, v10);
    }
  }

  v60 = v15;
  v61 = v2;
  v59 = v21;
  sub_1CAEFA6CC();
  sub_1CAEF9C0C();
  if (!v69)
  {
    v65 = MEMORY[0x1E69E7CC0];
LABEL_86:
    (*(v62 + 8))(v9, v63);

    v15 = v60;
    v19 = v65;
    goto LABEL_87;
  }

  v22 = (v11 + 56);
  v58 = (v11 + 32);
  v55 = v67 + 1;
  v65 = MEMORY[0x1E69E7CC0];
  v57 = (v11 + 8);
  while (1)
  {
    v23 = swift_dynamicCast();
    v24 = *v22;
    if (v23)
    {
      break;
    }

    v24(v6, 1, 1, v10);
    sub_1CAEB3344(v6, &qword_1EC482060);
LABEL_6:
    sub_1CAEF9C0C();
    if (!v69)
    {
      goto LABEL_86;
    }
  }

  v24(v6, 0, 1, v10);
  (*v58)(v64, v6, v10);
  result = sub_1CAEF9C7C();
  v27 = HIBYTE(v26) & 0xF;
  v28 = result & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v29 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

LABEL_73:
    (*v57)(v64, v10);
    goto LABEL_6;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    v68 = 0;
    v56 = sub_1CAECF264(result, v26, 10);
    v53 = v46;

    if ((v53 & 1) == 0)
    {
LABEL_79:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = sub_1CAEE9848(0, *(v65 + 2) + 1, 1, v65);
      }

      v49 = *(v65 + 2);
      v48 = *(v65 + 3);
      if (v49 >= v48 >> 1)
      {
        v65 = sub_1CAEE9848((v48 > 1), v49 + 1, 1, v65);
      }

      (*v57)(v64, v10);
      v50 = v65;
      *(v65 + 2) = v49 + 1;
      *&v50[8 * v49 + 32] = v56;
      v70 = v50;
      v11 = v54;
      goto LABEL_6;
    }

    goto LABEL_73;
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    v67[0] = result;
    v67[1] = v26 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v27)
      {
        goto LABEL_92;
      }

      v28 = v27 - 1;
      if (v27 != 1)
      {
        v31 = 0;
        v39 = v55;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          if (!is_mul_ok(v31, 0xAuLL))
          {
            break;
          }

          v34 = __CFADD__(10 * v31, v40);
          v31 = 10 * v31 + v40;
          if (v34)
          {
            break;
          }

          ++v39;
          if (!--v28)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (result == 45)
    {
      if (!v27)
      {
        goto LABEL_93;
      }

      v28 = v27 - 1;
      if (v27 != 1)
      {
        v31 = 0;
        v35 = v55;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          if (!is_mul_ok(v31, 0xAuLL))
          {
            break;
          }

          v34 = 10 * v31 >= v36;
          v31 = 10 * v31 - v36;
          if (!v34)
          {
            break;
          }

          ++v35;
          if (!--v28)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v27)
    {
      v31 = 0;
      v43 = v67;
      while (1)
      {
        v44 = *v43 - 48;
        if (v44 > 9)
        {
          break;
        }

        if (!is_mul_ok(v31, 0xAuLL))
        {
          break;
        }

        v34 = __CFADD__(10 * v31, v44);
        v31 = 10 * v31 + v44;
        if (v34)
        {
          break;
        }

        ++v43;
        if (!--v27)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_70;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v26 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1CAEFA8FC();
    v28 = v51;
  }

  v30 = *result;
  if (v30 != 43)
  {
    if (v30 == 45)
    {
      if (v28 < 1)
      {
        goto LABEL_91;
      }

      if (!--v28)
      {
        goto LABEL_70;
      }

      v31 = 0;
      if (result)
      {
        v32 = (result + 1);
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            goto LABEL_70;
          }

          if (!is_mul_ok(v31, 0xAuLL))
          {
            goto LABEL_70;
          }

          v34 = 10 * v31 >= v33;
          v31 = 10 * v31 - v33;
          if (!v34)
          {
            goto LABEL_70;
          }

          ++v32;
          if (!--v28)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_69;
    }

    if (v28)
    {
      v41 = 0;
      if (!result)
      {
        LOBYTE(v28) = 0;
LABEL_76:
        v56 = v41;
LABEL_72:
        v68 = v28;
        v45 = v28;

        if ((v45 & 1) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_73;
      }

      while (1)
      {
        v42 = *result - 48;
        if (v42 > 9)
        {
          break;
        }

        if (!is_mul_ok(v41, 0xAuLL))
        {
          break;
        }

        v34 = __CFADD__(10 * v41, v42);
        v41 = 10 * v41 + v42;
        if (v34)
        {
          break;
        }

        ++result;
        if (!--v28)
        {
          goto LABEL_76;
        }
      }
    }

    LOBYTE(v28) = 1;
    v56 = 0;
    goto LABEL_72;
  }

  if (v28 >= 1)
  {
    if (!--v28)
    {
LABEL_70:
      v31 = 0;
      LOBYTE(v28) = 1;
      goto LABEL_71;
    }

    v31 = 0;
    if (result)
    {
      v37 = (result + 1);
      while (1)
      {
        v38 = *v37 - 48;
        if (v38 > 9)
        {
          goto LABEL_70;
        }

        if (!is_mul_ok(v31, 0xAuLL))
        {
          goto LABEL_70;
        }

        v34 = __CFADD__(10 * v31, v38);
        v31 = 10 * v31 + v38;
        if (v34)
        {
          goto LABEL_70;
        }

        ++v37;
        if (!--v28)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_69:
    LOBYTE(v28) = 0;
LABEL_71:
    v56 = v31;
    goto LABEL_72;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

void *PRUISPosterChannelStateCoordinatorTransition.initialState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_initialState);
  v2 = v1;
  return v1;
}

uint64_t PRUISPosterChannelStateCoordinatorTransition.nonStagedUpdates.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_nonStagedUpdates);
  sub_1CAECAD78(v1);
  return v1;
}

id PRUISPosterChannelStateCoordinatorTransition.__allocating_init(modelCoordinator:initialState:finalState:stagedFileSystemURLs:nonStagedUpdates:)(void *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_initialState] = a2;
  *&v11[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_finalState] = a3;
  v12 = OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier;
  v13 = OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_channelIdentifier;
  v14 = sub_1CAEF9E1C();
  (*(*(v14 - 8) + 16))(&v11[v13], &a3[v12], v14);
  if (a2)
  {
    v15 = *&a2[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity];
    if (v15)
    {
      v16 = v15;
    }
  }

  v17 = a3;
  v18 = a2;
  v19 = BSEqualObjects();
  swift_unknownObjectRelease();
  v11[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_configurationUpdated] = v19 ^ 1;
  if (a2)
  {
    v20 = *&v18[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext];
  }

  v21 = BSEqualObjects();
  swift_unknownObjectRelease();
  v11[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_contextUpdated] = v21 ^ 1;
  v11[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_descriptorsUpdated] = v21 ^ 1;
  *&v11[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_modelCoordinator] = a1;
  *&v11[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_stagedFileSystemURLs] = a4;
  v22 = &v11[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_nonStagedUpdates];
  *v22 = a5;
  v22[1] = a6;
  v28.receiver = v11;
  v28.super_class = v6;
  v23 = a1;
  v24 = objc_msgSendSuper2(&v28, sel_init);

  return v24;
}

id PRUISPosterChannelStateCoordinatorTransition.init(modelCoordinator:initialState:finalState:stagedFileSystemURLs:nonStagedUpdates:)(void *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_initialState] = a2;
  *&v6[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_finalState] = a3;
  v12 = OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier;
  v13 = OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_channelIdentifier;
  v14 = sub_1CAEF9E1C();
  (*(*(v14 - 8) + 16))(&v6[v13], &a3[v12], v14);
  if (a2)
  {
    v15 = *&a2[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity];
    if (v15)
    {
      v16 = v15;
    }
  }

  v17 = a2;
  v18 = a3;
  v19 = BSEqualObjects();
  swift_unknownObjectRelease();
  v6[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_configurationUpdated] = v19 ^ 1;
  if (a2)
  {
    v20 = *&v17[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext];
  }

  v21 = BSEqualObjects();
  swift_unknownObjectRelease();
  v6[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_contextUpdated] = v21 ^ 1;
  v6[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_descriptorsUpdated] = v21 ^ 1;
  *&v6[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_modelCoordinator] = a1;
  *&v6[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_stagedFileSystemURLs] = a4;
  v22 = &v6[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_nonStagedUpdates];
  *v22 = a5;
  v22[1] = a6;
  v28.receiver = v6;
  v28.super_class = ObjectType;
  v23 = a1;
  v24 = objc_msgSendSuper2(&v28, sel_init);

  return v24;
}

id PRUISPosterChannelStateCoordinatorTransition.init(modelCoordinator:currentState:updater:)(id a1, char *a2, id a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D30);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v97 - v13;
  v109 = sub_1CAEF9DBC();
  v123 = *(v109 - 8);
  v14 = MEMORY[0x1EEE9AC00](v109);
  v106 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v97 - v16;
  v125 = sub_1CAEF9E1C();
  v122 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v130 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = [a3 channelContext];
  v18 = [a3 posterConfiguration];
  v126 = OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity;
  v19 = *&a2[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity];
  v118 = v18;
  if (v18)
  {
    v20 = [v18 _path];
    v21 = [v20 serverIdentity];
  }

  v115 = v19;
  v22 = BSEqualObjects();
  swift_unknownObjectRelease();
  v108 = OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext;
  v23 = BSEqualObjects();
  v24 = &selRef_removeObjectAtIndex_;
  v116 = [a1 role];
  v25 = *&a2[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion];
  v26 = v25 + 1;
  if (v25 != -1)
  {
    v27 = *&a2[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion];
    if ((v22 & 1) == 0 && (v28 = __CFADD__(v27, 1), ++v27, v28))
    {
      __break(1u);
    }

    else
    {
      v119 = v27;
      v103 = v26;
      v104 = ObjectType;
      v114 = a3;
      v105 = v4;
      v113 = a1;
      v112 = [a1 schemaManager];
      if (v23)
      {
        v29 = 0;
      }

      else
      {
        v29 = sub_1CAEC4604;
      }

      v111 = v29;
      v30 = objc_allocWithZone(MEMORY[0x1E69C5118]);
      v31 = sub_1CAEFA4BC();
      v32 = [v30 initWithRelativePathComponents_];

      v33 = sub_1CAEFA4BC();
      v129 = v32;
      v34 = [v32 endPointByAppendingRelativePathComponents_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481D90);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1CAF03CA0;
      v120 = objc_opt_self();
      v110 = v34;
      *(v35 + 32) = [v120 stageCreateEndpoint_];
      v134 = v35;
      v36 = *&a2[v126];
      v37 = v36;
      if (v22)
      {
        goto LABEL_27;
      }

      v121 = v37;
      v38 = sub_1CAEFA4BC();
      a3 = v129;
      v39 = [v129 endPointByAppendingRelativePathComponents_];

      v133 = v119;
      sub_1CAEFA9EC();
      v40 = sub_1CAEFA4BC();

      v41 = [v39 endPointByAppendingRelativePathComponents_];

      a1 = v41;
      v42 = [v120 stageCreateEndpoint_];
      MEMORY[0x1CCAAB1B0]();
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_11:
        v43 = a2;
        sub_1CAEFA61C();
        if (v118 && (v44 = v134, (v45 = [v118 _path]) != 0))
        {
          v46 = v45;
          objc_opt_self();
          v47 = swift_dynamicCastObjCClass();
          if (v47)
          {
            v102 = a1;
            v101 = v44;
            v117 = v47;
            v48 = [v47 role];
            v49 = sub_1CAEFA4EC();
            v51 = v50;
            if (v49 == sub_1CAEFA4EC() && v51 == v52)
            {
            }

            else
            {
              v54 = sub_1CAEFA9FC();

              if ((v54 & 1) == 0)
              {

                sub_1CAECBB2C();
                swift_allocError();
                *v96 = 0xD000000000000022;
                *(v96 + 8) = 0x80000001CAF09540;
                *(v96 + 16) = 1;
                swift_willThrow();

                sub_1CAECA7F8(v111);
                swift_unknownObjectRelease();

                swift_getObjectType();
                swift_deallocPartialClassInstance();
                return a3;
              }
            }

            v55 = v117;
            v36 = [v117 identity];

            if (!v36)
            {
              a1 = v102;
              goto LABEL_26;
            }

            v121 = v36;
            v56 = v36;
            v57 = v119;
            v101 = sub_1CAEC89D0(a3, v56, v119);
            v53 = [v120 copyPath:v55 toEndpoint:?];
            MEMORY[0x1CCAAB1B0]();
            if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1CAEFA5FC();
            }

            sub_1CAEFA61C();
            v58 = sub_1CAEC8714(a3, v56, v57);
            v59 = sub_1CAEC465C(v58);
            sub_1CAEC4ABC(v59, sub_1CAEECF30);

            v36 = v121;
            a1 = v102;
          }

          else
          {
            v36 = 0;
            v53 = a1;
            a1 = v121;
          }
        }

        else
        {
          v36 = 0;
          v46 = v121;
        }

LABEL_26:

        a2 = v43;
LABEL_27:
        v102 = v5;
        v60 = v122 + 16;
        v61 = *(v122 + 16);
        v62 = v125;
        v61(v130, &a2[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier], v125);
        v63 = v123;
        v117 = *(v123 + 16);
        v101 = a2;
        v64 = &a2[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_creationDate];
        v65 = v128;
        v66 = v109;
        (v117)(v128, v64, v109);
        v121 = v36;
        v127 = v127;
        v67 = v124;
        sub_1CAEF9D9C();
        (*(v63 + 56))(v67, 0, 1, v66);
        v98 = type metadata accessor for PRUISPosterChannelState();
        v68 = objc_allocWithZone(v98);
        sub_1CAEF9E6C();
        v100 = v60;
        v99 = v61;
        v61(&v68[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier], v130, v62);
        v69 = v127;
        *&v68[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion] = v103;
        *&v68[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion] = v119;
        *&v68[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelContext] = v69;
        *&v68[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity] = v36;
        (v117)(&v68[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_creationDate], v65, v66);
        v70 = v67;
        v71 = v123;
        v72 = v107;
        sub_1CAEB33EC(v70, v107, &unk_1EC481D30);
        v73 = *(v71 + 48);
        if (v73(v72, 1, v66) == 1)
        {
          v74 = v106;
          (v117)(v106, v128, v66);
          v75 = v73(v72, 1, v66);
          v76 = v69;
          v77 = v121;
          v78 = v121;
          v79 = v72;
          v80 = v77;
          v81 = v69;
          if (v75 != 1)
          {
            sub_1CAEB3344(v79, &unk_1EC481D30);
          }
        }

        else
        {
          v74 = v106;
          (*(v71 + 32))(v106, v72, v66);
          v82 = v69;
          v80 = v121;
          v83 = v121;
          v81 = v69;
        }

        (*(v71 + 32))(&v68[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_lastModifiedDate], v74, v66);
        v132.receiver = v68;
        v132.super_class = v98;
        v24 = objc_msgSendSuper2(&v132, sel_init);

        sub_1CAEB3344(v124, &unk_1EC481D30);
        (*(v71 + 8))(v128, v66);
        a2 = v125;
        (*(v122 + 8))(v130, v125);
        v23 = sub_1CAEC85D8(*(v24 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelVersion), v129);
        v84 = [v120 archiveObjectUsingNSKeyedArchiver:v24 toEndpoint:v23];
        MEMORY[0x1CCAAB1B0]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      }
    }

    sub_1CAEFA5FC();
    goto LABEL_11;
  }

  __break(1u);
LABEL_36:
  sub_1CAEFA5FC();
LABEL_32:
  sub_1CAEFA61C();
  v85 = v134;
  v86 = v104;
  v87 = objc_allocWithZone(v104);
  v88 = v101;
  *&v87[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_initialState] = v101;
  *&v87[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_finalState] = v24;
  v99(&v87[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_channelIdentifier], v24 + OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_channelIdentifier, a2);
  v130 = v88;
  v89 = v24;
  v87[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_configurationUpdated] = BSEqualObjects() ^ 1;
  v90 = BSEqualObjects();
  v87[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_contextUpdated] = v90 ^ 1;
  v87[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_descriptorsUpdated] = v90 ^ 1;
  v91 = v113;
  *&v87[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_modelCoordinator] = v113;
  *&v87[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_stagedFileSystemURLs] = v85;
  v92 = &v87[OBJC_IVAR____TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition_nonStagedUpdates];
  v93 = v111;
  *v92 = v111;
  v92[1] = 0;
  v94 = v91;
  sub_1CAECAD78(v93);
  v131.receiver = v87;
  v131.super_class = v86;
  a3 = objc_msgSendSuper2(&v131, sel_init);

  swift_unknownObjectRelease();
  sub_1CAECA7F8(v93);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return a3;
}

void sub_1CAEC4604(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  sub_1CAEC1E20(v5);
}

uint64_t sub_1CAEC465C(void *a1)
{
  v3 = sub_1CAEF9CFC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = [v1 serverIdentity];
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = v13;
    v36 = a1;
    v37 = MEMORY[0x1E69E7CC0];
    v16 = [v13 type];
    v17 = [v1 identifierURL];
    sub_1CAEF9CCC();

    v18 = objc_opt_self();
    v19 = sub_1CAEF9C8C();
    v35 = v16;
    v20 = [v18 pf:v16 roleIdentifierURLForType:v19 identifierURL:?];

    sub_1CAEF9CCC();
    v21 = sub_1CAEF9C8C();
    LODWORD(v20) = [v21 pf_isReachable];

    if (v20)
    {
      v34 = v3;
      v22 = [v36 endPointByAppendingRelativePathComponents_];
      v23 = objc_opt_self();
      v24 = sub_1CAEF9C8C();
      [v23 copyURL:v24 toEndpoint:v22];

      MEMORY[0x1CCAAB1B0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CAEFA5FC();
      }

      sub_1CAEFA61C();

      v14 = v37;
      v3 = v34;
    }

    v25 = sub_1CAEF9C8C();
    v26 = [v18 pf:v35 descriptorIdentifierURLForType:v25 identifierURL:?];

    sub_1CAEF9CCC();
    v27 = sub_1CAEF9C8C();
    LODWORD(v26) = [v27 pf_isReachable];

    if (v26)
    {
      v28 = [v36 endPointByAppendingRelativePathComponents_];
      v29 = objc_opt_self();
      v30 = sub_1CAEF9C8C();
      [v29 copyURL:v30 toEndpoint:v28];

      MEMORY[0x1CCAAB1B0]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CAEFA5FC();
      }

      sub_1CAEFA61C();

      v31 = *(v4 + 8);
      v31(v7, v3);
      v31(v10, v3);
      v31(v12, v3);
      return v37;
    }

    else
    {

      v32 = *(v4 + 8);
      v32(v7, v3);
      v32(v10, v3);
      v32(v12, v3);
    }
  }

  return v14;
}

uint64_t sub_1CAEC4ABC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1CAEFA80C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1CAEFA80C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1CAEC8080(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1CAEC4C64(unint64_t a1)
{
  v2 = sub_1CAEF9DDC();
  v3 = sub_1CAEFA4BC();
  v4 = sub_1CAEFA4BC();
  v5 = CHANNEL_LOG_PREFIX(v2, v3, v4, a1);

  v6 = sub_1CAEFA4EC();
  return v6;
}

uint64_t sub_1CAEC4DA4(unint64_t a1)
{
  v2 = sub_1CAEF9DDC();
  v3 = sub_1CAEFA4BC();
  v4 = sub_1CAEFA4BC();
  v5 = CHANNEL_LOG_PREFIX(v2, v3, v4, a1);

  v6 = sub_1CAEFA4EC();
  return v6;
}

uint64_t sub_1CAEC4E64()
{
  v0 = 7104878;
  sub_1CAEC5284(1);
  if ((v1 & 1) == 0)
  {
    if (qword_1EC481580 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC481D60;
    [qword_1EC481D60 setCountStyle_];
    v3 = sub_1CAEFA6BC();
    v4 = [v2 stringForObjectValue_];

    if (v4)
    {
      v0 = sub_1CAEFA4EC();

      MEMORY[0x1CCAAB120](0x6B736964206E6F20, 0xE800000000000000);
    }
  }

  return v0;
}

id _s21PosterBoardUIServices34PRUISPosterChannelStateCoordinatorCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CAEC50E8()
{
  v1 = sub_1CAEF9B6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAF026A0;
  v6 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v7 = v6;
  sub_1CAEC8AE8(inited);
  swift_setDeallocating();
  sub_1CAECC020(inited + 32);
  sub_1CAEF9C5C();

  if (!v0)
  {
    v9 = sub_1CAEF9B4C();
    (*(v2 + 8))(v4, v1);
    if (v9 == 2 || (v9 & 1) == 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_1CAEF9CAC();
    }
  }

  return v8 & 1;
}

uint64_t sub_1CAEC5284(int a1)
{
  v2 = v1;
  LODWORD(v71) = a1;
  v73[11] = *MEMORY[0x1E69E9840];
  v3 = sub_1CAEF9B6C();
  v70 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - v7;
  v9 = sub_1CAEF9CFC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  v16 = sub_1CAEC50E8();
  if (v1)
  {
    return v2;
  }

  v2 = v71;
  v67 = v15;
  v68 = v9;
  v17 = v8;
  v18 = v70;
  v69 = v10;
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v72 = 0;
  v19 = [objc_opt_self() defaultManager];
  if (v2)
  {
    v20 = sub_1CAEFA6DC();

    if (!v20)
    {
      return 0;
    }

    v21 = [v20 allObjects];

    v22 = sub_1CAEFA5EC();
    v23 = sub_1CAEC597C(v22);

    if (!v23)
    {
      return 0;
    }

    v66 = *(v23 + 16);
    if (v66)
    {
      v71 = v3;
      v24 = 0;
      v2 = 0;
      v25 = *MEMORY[0x1E695DC58];
      v26 = v69;
      v64 = v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v65 = v25;
      *&v63 = v69 + 16;
      v61 = v18 + 1;
      v70 = (v69 + 8);
      v62 = xmmword_1CAF026A0;
      v27 = v17;
      v28 = v67;
      while (1)
      {
        if (v24 >= *(v23 + 16))
        {
          goto LABEL_37;
        }

        v29 = v23;
        v30 = v68;
        (*(v26 + 16))(v28, v64 + *(v26 + 72) * v24, v68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481E00);
        inited = swift_initStackObject();
        *(inited + 16) = v62;
        v32 = v65;
        *(inited + 32) = v65;
        v33 = v32;
        sub_1CAEC8AE8(inited);
        swift_setDeallocating();
        sub_1CAECC020(inited + 32);
        v34 = v72;
        sub_1CAEF9C5C();
        v72 = v34;
        if (v34)
        {
          break;
        }

        v35 = sub_1CAEF9B5C();
        v37 = v36;
        (*v61)(v27, v71);
        (*v70)(v28, v30);
        if (v37)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35;
        }

        v39 = __OFADD__(v38, v2);
        v2 += v38;
        if (v39)
        {
          goto LABEL_38;
        }

        ++v24;
        v26 = v69;
        v23 = v29;
        if (v66 == v24)
        {
          goto LABEL_27;
        }
      }

      (*v70)(v28, v30);
      return v2;
    }

LABEL_32:

    return 0;
  }

  v40 = sub_1CAEF9C8C();
  v73[0] = 0;
  v41 = [v19 contentsOfDirectoryAtURL:v40 includingPropertiesForKeys:0 options:0 error:v73];

  v42 = v73[0];
  if (!v41)
  {
    v58 = v73[0];
    sub_1CAEF9BFC();

    swift_willThrow();
    return v2;
  }

  v43 = v3;
  v44 = v68;
  v45 = sub_1CAEFA5EC();
  v46 = v42;

  v67 = *(v45 + 16);
  if (!v67)
  {
    goto LABEL_32;
  }

  v71 = v43;
  v47 = 0;
  v2 = 0;
  v48 = *MEMORY[0x1E695DC58];
  v49 = v69;
  v65 = (v45 + ((*(v49 + 80) + 32) & ~*(v49 + 80)));
  v66 = v48;
  v64 = v69 + 16;
  *&v62 = v18 + 1;
  v70 = (v69 + 8);
  v63 = xmmword_1CAF026A0;
  while (1)
  {
    if (v47 >= *(v45 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    (*(v49 + 16))(v13, &v65[*(v49 + 72) * v47], v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481E00);
    v50 = swift_initStackObject();
    *(v50 + 16) = v63;
    v51 = v66;
    *(v50 + 32) = v66;
    v52 = v51;
    sub_1CAEC8AE8(v50);
    swift_setDeallocating();
    sub_1CAECC020(v50 + 32);
    v53 = v72;
    sub_1CAEF9C5C();
    v72 = v53;
    if (v53)
    {
      break;
    }

    v54 = sub_1CAEF9B5C();
    v56 = v55;
    (*v62)(v6, v71);
    (*v70)(v13, v44);
    if (v56)
    {
      v57 = 0;
    }

    else
    {
      v57 = v54;
    }

    v39 = __OFADD__(v57, v2);
    v2 += v57;
    if (v39)
    {
      goto LABEL_36;
    }

    ++v47;
    v49 = v69;
    if (v67 == v47)
    {
LABEL_27:

      return v2;
    }
  }

  (*v70)(v13, v44);
  return v2;
}

uint64_t sub_1CAEC597C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1CAEF9CFC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v23 = &v21 - v10;
  v11 = *(a1 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1CAEC8060(0, v11, 0);
  v12 = v25;
  if (v11)
  {
    v13 = a1 + 32;
    v21 = v4;
    v22 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_1CAEAE83C(v13, v24);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v22)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v23;
      (*v14)(v23, v4, v5);
      v15(v9, v16, v5);
      v25 = v12;
      v17 = v9;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1CAEC8060(v18 > 1, v19 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      v15((v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), v17, v5);
      v13 += 32;
      --v11;
      v9 = v17;
      v4 = v21;
      if (!v11)
      {
        return v12;
      }
    }

    (*v22)(v4, 1, 1, v5);
    sub_1CAEB3344(v4, &qword_1EC482060);
    return 0;
  }

  return v12;
}

id sub_1CAEC5C40()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  qword_1EC481D60 = result;
  return result;
}

uint64_t sub_1CAEC5C9C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1CAEC5CF8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1CAEC5CF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CAEC5DC4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1CAEAE83C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1CAEC5DC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1CAEC5ED0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1CAEFA8FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}