uint64_t _sSo8RETypeIDawet_0(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for simd_quatf(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ImportSession.MeshAssetEstimate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImportSession.MeshAssetEstimate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26187CD10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26187CD74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BindTarget.EntityPath();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26187CDE0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BindTarget.EntityPath();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void *_s9RealityIO20RelationshipMetadataVs43ExpressibleByExtendedGraphemeClusterLiteralAAsADP08extendedhiJ0x0ghiJ4TypeQz_tcfCTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_26187CEA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26187CEF0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_26187CF9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26187D088()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26187D0C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdStageGetMetersPerUnit();
  *a2 = v5;
  return result;
}

__n128 sub_26187D11C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26187D128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdStageCopyUpAxis();
  *a2 = result;
  return result;
}

uint64_t sub_26187D158(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return RIOPxrUsdStageSetUpAxis();
}

uint64_t sub_26187D16C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdStageCopyColorConfiguration();
  *a2 = result;
  return result;
}

uint64_t sub_26187D19C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return RIOPxrUsdStageSetColorConfiguration();
}

uint64_t sub_26187D1B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdStageCopyColorManagementSystem();
  *a2 = result;
  return result;
}

uint64_t sub_26187D1E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return RIOPxrUsdStageSetColorManagementSystem();
}

uint64_t sub_26187D1F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdStageGetStartTimeCode();
  *a2 = v5;
  return result;
}

uint64_t sub_26187D234@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdStageGetEndTimeCode();
  *a2 = v5;
  return result;
}

uint64_t sub_26187D274@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdStageGetTimeCodesPerSecond();
  *a2 = v5;
  return result;
}

uint64_t sub_26187D2B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdStageGetFramesPerSecond();
  *a2 = v5;
  return result;
}

uint64_t sub_26187D30C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26187D388()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t _ss5Int16V9RealityIO17UsdAttributeValueA2cDP13valueTypeNameAC27SceneDescriptionFoundationsO0fhI0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32();
  *a1 = result;
  return result;
}

uint64_t _ss6UInt16V9RealityIO17UsdAttributeValueA2cDP13valueTypeNameAC27SceneDescriptionFoundationsO0fhI0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32();
  *a1 = result;
  return result;
}

uint64_t _sSo14simd_double2x2a9RealityIO17UsdAttributeValueA2cDP13valueTypeNameAC27SceneDescriptionFoundationsO0giJ0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2d();
  *a1 = result;
  return result;
}

uint64_t _sSo14simd_double3x3a9RealityIO17UsdAttributeValueA2cDP13valueTypeNameAC27SceneDescriptionFoundationsO0giJ0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3d();
  *a1 = result;
  return result;
}

uint64_t _sSo14simd_double4x4a9RealityIO17UsdAttributeValueA2cDP13valueTypeNameAC27SceneDescriptionFoundationsO0giJ0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4d();
  *a1 = result;
  return result;
}

uint64_t _ss5Int32V9RealityIO29UsdAttributeValueSIMD2ElementA2cDP14value2TypeNameAC27SceneDescriptionFoundationsO0fjK0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2();
  *a1 = result;
  return result;
}

uint64_t _ss5Int32V9RealityIO29UsdAttributeValueSIMD3ElementA2cDP14value3TypeNameAC27SceneDescriptionFoundationsO0fjK0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3();
  *a1 = result;
  return result;
}

uint64_t _ss5Int32V9RealityIO29UsdAttributeValueSIMD4ElementA2cDP14value4TypeNameAC27SceneDescriptionFoundationsO0fjK0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4();
  *a1 = result;
  return result;
}

uint64_t _ss5Int16V9RealityIO29UsdAttributeValueArrayElementA2cDP05valueG8TypeNameAC27SceneDescriptionFoundationsO0fjK0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32Array();
  *a1 = result;
  return result;
}

uint64_t _ss6UInt16V9RealityIO29UsdAttributeValueArrayElementA2cDP05valueG8TypeNameAC27SceneDescriptionFoundationsO0fjK0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32Array();
  *a1 = result;
  return result;
}

uint64_t _sSo14simd_double2x2a9RealityIO29UsdAttributeValueArrayElementA2cDP05valueH8TypeNameAC27SceneDescriptionFoundationsO0gkL0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2dArray();
  *a1 = result;
  return result;
}

uint64_t _sSo14simd_double3x3a9RealityIO29UsdAttributeValueArrayElementA2cDP05valueH8TypeNameAC27SceneDescriptionFoundationsO0gkL0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3dArray();
  *a1 = result;
  return result;
}

uint64_t _sSo14simd_double4x4a9RealityIO29UsdAttributeValueArrayElementA2cDP05valueH8TypeNameAC27SceneDescriptionFoundationsO0gkL0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4dArray();
  *a1 = result;
  return result;
}

uint64_t _ss5Int32V9RealityIO34UsdAttributeValueSIMD2ArrayElementA2cDP06value2H8TypeNameAC27SceneDescriptionFoundationsO0fkL0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2Array();
  *a1 = result;
  return result;
}

uint64_t _ss5Int32V9RealityIO34UsdAttributeValueSIMD3ArrayElementA2cDP06value3H8TypeNameAC27SceneDescriptionFoundationsO0fkL0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3Array();
  *a1 = result;
  return result;
}

uint64_t _ss5Int32V9RealityIO34UsdAttributeValueSIMD4ArrayElementA2cDP06value4H8TypeNameAC27SceneDescriptionFoundationsO0fkL0VvgZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4Array();
  *a1 = result;
  return result;
}

double _sSo14simd_double4x4aSgWOi0__0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

unint64_t _s9RealityIO4HalfVAA29UsdAttributeValueSIMD2ElementAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Half and conformance Half();
  *(a1 + 8) = result;
  return result;
}

unint64_t _sSf9RealityIO29UsdAttributeValueSIMD2ElementAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Float and conformance Float();
  *(a1 + 8) = result;
  return result;
}

unint64_t _sSd9RealityIO29UsdAttributeValueSIMD2ElementAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Double and conformance Double();
  *(a1 + 8) = result;
  return result;
}

unint64_t _sSi9RealityIO29UsdAttributeValueSIMD2ElementAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Int and conformance Int();
  *(a1 + 8) = result;
  return result;
}

unint64_t _ss5Int32V9RealityIO29UsdAttributeValueSIMD2ElementACWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Int32 and conformance Int32();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26187D754()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26187D7B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrSdfLayerCopyDefaultPrim();
  *a2 = result;
  return result;
}

uint64_t sub_26187D7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = SceneDescriptionFoundations.Layer.autoPlay.getter();
  *a2 = result & 1;
  return result;
}

__n128 sub_26187D830(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26187D83C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrSdfLayerCopyColorConfiguration();
  *a2 = result;
  return result;
}

uint64_t sub_26187D86C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return RIOPxrSdfLayerSetColorConfiguration();
}

uint64_t sub_26187D880@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrSdfLayerCopyColorManagementSystem();
  *a2 = result;
  return result;
}

uint64_t sub_26187D8B0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return RIOPxrSdfLayerSetColorManagementSystem();
}

uint64_t sub_26187D908@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrSdfLayerGetStartTimeCode();
  *a2 = v5;
  return result;
}

uint64_t sub_26187D948@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrSdfLayerGetEndTimeCode();
  *a2 = v5;
  return result;
}

uint64_t sub_26187D988@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrSdfLayerGetTimeCodesPerSecond();
  *a2 = v5;
  return result;
}

uint64_t sub_26187D9C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrSdfLayerGetFramesPerSecond();
  *a2 = v5;
  return result;
}

uint64_t sub_26187DA08@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrSdfLayerGetFramePrecision();
  *a2 = result;
  return result;
}

uint64_t sub_26187DAD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrSdfLayerGetHasOwnedSubLayers();
  *a2 = result;
  return result;
}

uint64_t sub_26187DB1C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26187DB54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26187DB8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26187DC1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  swift_beginAccess();
  return outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v3 + v4, a2, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
}

uint64_t sub_26187DCDC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*(*a2 + 16) + 16);
  return RIOPxrUsdStageSetIncludeUnusedMaterials();
}

uint64_t sub_26187DCF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26187DD30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 sub_26187DE44(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26187E1F4()
{
  MEMORY[0x266713B50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26187E22C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *sub_26187E694@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 88))(v7, v3, v4);
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

void *sub_26187E910@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 64))(v7, v3, v4);
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

void *sub_26187E97C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v7, v3, v4);
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

void *sub_26187E9E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v7, v3, v4);
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t sub_26187FEFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26187FF3C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26187FF74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26187FFAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26187FFE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261880168()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2618801A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261880204@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Object.allowedTokens.getter();
  *a2 = result;
  return result;
}

uint64_t sub_261880248@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Object.inheritsPath.getter();
  *a2 = result;
  return result;
}

__n128 sub_2618802F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_261880450@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdPrimCopyTypeName();
  *a2 = result;
  return result;
}

uint64_t sub_261880480(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return RIOPxrUsdPrimSetTypeName();
}

uint64_t sub_261880494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdPrimGetSpecifier();
  *a2 = result;
  return result;
}

char *sub_2618804D8@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = Prim.propertyOrder.getter();
  *a2 = result;
  return result;
}

uint64_t sub_26188051C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdPrimIsActive();
  *a2 = result;
  return result;
}

uint64_t sub_261880560@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Prim.appliedSchemas.getter();
  *a2 = result;
  return result;
}

uint64_t sub_2618805A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdPrimGetTaggedAsEntity();
  *a2 = result;
  return result;
}

uint64_t sub_2618805E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Prim.childrenOrder.getter();
  *a2 = result;
  return result;
}

uint64_t sub_261880680(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return Attribute.subscript.getter();
}

uint64_t sub_2618806A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  return specialized Attribute.subscript.setter(a1);
}

uint64_t sub_2618806DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Relationship.targets.getter();
  *a2 = result;
  return result;
}

uint64_t sub_261880720@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = Relationship.target.getter(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_261880760@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdAttributeCopyValue();
  if (!result)
  {
    result = RIOPxrVtValueCreateEmptyValue();
  }

  *a2 = result;
  return result;
}

uint64_t sub_2618807A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return RIOPxrUsdAttributeSetValue();
}

uint64_t sub_2618807C0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *(*a2 + 16);
  return RIOPxrUsdAttributeSetValue();
}

uint64_t sub_2618807E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = RIOPxrUsdAttributeCopyColorSpace();
  *a2 = result;
  return result;
}

uint64_t sub_261880818(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return RIOPxrUsdAttributeSetColorSpace();
}

uint64_t sub_26188082C@<X0>(uint64_t **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 24);
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for Properties();
  return Properties.subscript.getter(v6, v7, v5, a3);
}

__n128 sub_261880898(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_261880988(uint64_t a1, uint64_t *a2, void **a3)
{
  v4 = *a3;
  v5 = *a2;

  return specialized StaticTypePrim.subscript.setter(a1, v4);
}

uint64_t sub_261880A0C(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = *a2;

  return specialized StaticTypePrim.subscript.setter(a1, v6, v5);
}

uint64_t sub_261880AB0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = StaticTypePrim.subscript.getter(*a2);
  *a3 = result;
  return result;
}

uint64_t sub_261880AF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = StaticTypePrim.subscript.getter(*a2);
  *a3 = result;
  return result;
}

uint64_t sub_261880B8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t _s9RealityIO6Color4VyxGs4SIMDAA11MaskStoragesAEP_6Scalars11SIMDStoragePs17FixedWidthIntegerPWT_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t _s9RealityIO6Color4VyxGs4SIMDAA11MaskStoragesAEP_6Scalars11SIMDStoragePSZWT_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t _s9RealityIO9TexCoord3VyxGs4SIMDAA11MaskStoragesAEP_6Scalars11SIMDStoragePs17FixedWidthIntegerPWT_0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t _s9RealityIO9TexCoord3VyxGs4SIMDAA11MaskStoragesAEP_6Scalars11SIMDStoragePSZWT_0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

__n128 sub_261880D64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

double sub_261881010@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  result = *(a1 + 8 * (*a2 & 0xFLL));
  *a3 = result;
  return result;
}

double sub_261881024(double *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 8 * (*a3 & 0xFLL)) = *a1;
  return result;
}

__n128 sub_261881480(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_2618817C8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = RIOPxrSdfReferenceCopyAssetPathString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_261881814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = RIOPxrSdfReferenceCopyPrimPath();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261881848(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfReferenceSetPrimPath();
}

uint64_t sub_261881868()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2618818A0()
{
  v1 = *(v0 + 32);
  if (v1 >> 8 <= 0xFE)
  {
    outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>(*(v0 + 16), *(v0 + 24), v1, BYTE1(v1) & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_2618818EC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[8];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_261881964()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_2618819F8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_261882DC4()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261882E3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261882E74()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void specialized thunk for @escaping @callee_guaranteed (@guaranteed Inputs) -> (@owned [__RKEntityActionSpecification])(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ActionBuilder();
  static ActionBuilder.generateAudioActionSpecifications(inputs:)(v3);
  *a2 = v4;
}

{
  specialized static ActionBuilder.generateChangeSceneActionSpecifications(inputs:)(*a1);
  *a2 = v3;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed Inputs) -> (@owned [__RKEntityActionSpecification])@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = specialized static ActionBuilder.generateEmphasizeActionSpecifications(inputs:)();
  *a2 = result;
  return result;
}

{
  v3 = *a1;
  result = specialized static ActionBuilder.generateImpulseActionSpecifications(inputs:)();
  *a2 = result;
  return result;
}

{
  v3 = *a1;
  result = specialized static ActionBuilder.generateLookAtCameraActionSpecifications(inputs:)();
  *a2 = result;
  return result;
}

{
  v3 = *a1;
  result = specialized static ActionBuilder.generateNotificationActionSpecifications(inputs:)();
  *a2 = result;
  return result;
}

{
  v3 = *a1;
  result = specialized static ActionBuilder.generateOrbitActionSpecifications(inputs:)();
  *a2 = result;
  return result;
}

{
  v3 = *a1;
  result = specialized static ActionBuilder.generatePlayTimelineActionSpecifications(inputs:)();
  *a2 = result;
  return result;
}

{
  v3 = *a1;
  result = specialized static ActionBuilder.generateSpinActionSpecifications(inputs:)();
  *a2 = result;
  return result;
}

{
  v3 = *a1;
  result = specialized static ActionBuilder.generateStartAnimationActionSpecifications(inputs:)();
  *a2 = result;
  return result;
}

{
  result = specialized static ActionBuilder.generateTransformAnimationActionSpecifications(inputs:)(*a1);
  *a2 = result;
  return result;
}

{
  v3 = *a1;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
  v4 = type metadata accessor for __RKEntityActionSpecification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2619891C0;
  __RKWaitActionArguments.init(duration:)();
  result = (*(v5 + 104))(v8 + v7, *MEMORY[0x277CDAF88], v4);
  *a2 = v8;
  return result;
}

size_t specialized thunk for @escaping @callee_guaranteed (@guaranteed Inputs) -> (@owned [__RKEntityActionSpecification])@<X0>(uint64_t *a1@<X0>, size_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ActionBuilder();
  result = static ActionBuilder.generateGroupActionSpecifications(inputs:)();
  *a2 = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed Inputs) -> (@owned [__RKEntityActionSpecification])@<X0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static ActionBuilder.generateTransformActionSpecifications(inputs:)(*a1);
  *a2 = result;
  return result;
}

{
  result = specialized static ActionBuilder.generateVisibilityActionSpecifications(inputs:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed Inputs) -> (@owned [__RKEntityTriggerSpecification])@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = specialized static TriggerBuilder.generateCollisionTriggerSpecifications(inputs:)();
  *a2 = result;
  return result;
}

{
  v3 = *a1;
  v4 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSS_Tt1g5Tf4ndn_n();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
  v7 = *(type metadata accessor for __RKEntityTriggerSpecification() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2619891C0;
  v11 = (v10 + v9);
  *v11 = v4;
  v11[1] = v6;
  v12 = *MEMORY[0x277CDAFD8];
  result = (*(v7 + 104))();
  *a2 = v10;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed Inputs) -> (@owned [__RKEntityTriggerSpecification])@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSf_Tt1g5Tf4ndn_n();
  v9 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x28223BE20](v4);
  v7[2] = &v9;
  v8 = LODWORD(v5);
  result = specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static TriggerBuilder.generateProximityToCameraTriggerSpecifications(inputs:), v7);
  *a2 = v9;
  return result;
}

{
  v3 = *a1;
  v6 = MEMORY[0x277D84F90];
  v5[2] = &v6;
  v5[3] = v3;
  result = specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static TriggerBuilder.generateTapTriggerSpecifications(inputs:), v5);
  *a2 = v6;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed Inputs) -> (@owned [__RKEntityTriggerSpecification])@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
  v2 = type metadata accessor for __RKEntityTriggerSpecification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2619891C0;
  result = (*(v3 + 104))(v6 + v5, *MEMORY[0x277CDAFD0], v2);
  *a1 = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneDescriptionFoundations(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SceneDescriptionFoundations(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_float4x4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_float4x4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_float3x3(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_float3x3(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for REComponentClassPtr(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for REComponentClassPtr(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy96_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_double3x3(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_double3x3(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_double4x4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for simd_double4x4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance RIOPxrTfTokenRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RIOPxrTfTokenRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RIOPxrTfTokenRef()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance RIOPxrTfTokenRef();
}

{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance RIOPxrSdfValueTypeNameRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RIOPxrSdfValueTypeNameRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RIOPxrSdfValueTypeNameRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance RIOPxrSdfPathRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RIOPxrSdfPathRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance RIOPxrSdfLayerRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RIOPxrSdfLayerRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance REComponentClassPtr()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance RIOImportSessionRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RIOImportSessionRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance RIOPxrSdfAssetPathRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RIOPxrSdfAssetPathRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance RIOPxrSdfReferenceRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RIOPxrSdfReferenceRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RIOPxrTfTokenRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance REEngineServiceMask@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance REEngineServiceMask(_DWORD *a1, int *a2)
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

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance REEngineServiceMask@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance REEngineServiceMask@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RIOPxrSdfPathRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RIOPxrSdfLayerRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RIOImportSessionRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance RIOPxrUsdObjectRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RIOPxrUsdObjectRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RIOPxrSdfAssetPathRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RIOPxrSdfReferenceRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance REEngineServiceMask@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance REComponentClassPtr()
{
  v2 = *v0;
  lazy protocol witness table accessor for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef(&lazy protocol witness table cache variable for type REComponentClassPtr and conformance REComponentClassPtr, type metadata accessor for REComponentClassPtr);
  lazy protocol witness table accessor for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef(&lazy protocol witness table cache variable for type REComponentClassPtr and conformance REComponentClassPtr, type metadata accessor for REComponentClassPtr);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RIOPxrUsdObjectRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t lazy protocol witness table accessor for type RIOPxrUsdObjectRef and conformance RIOPxrUsdObjectRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for RIOCancellableRef(uint64_t a1, unint64_t *a2)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError()
{
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError()
{
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  return Hasher._finalize()();
}

uint64_t __RKEntityActionMultiplePerformBehavior.init(inputs:)@<X0>(uint64_t a1@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v14);
  if (v1)
  {

LABEL_3:
    lazy protocol witness table accessor for type __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError and conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v4 = v14;
  v5 = RIOPxrTfTokenCopyString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  v10 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityActionMultiplePerformBehaviorUSD.init(rawValue:), v9);

  if (v10)
  {
    if (v10 == 2)
    {

      v11 = MEMORY[0x277CDB008];
    }

    else
    {
      if (v10 != 1)
      {
        goto LABEL_3;
      }

      v11 = MEMORY[0x277CDB010];
    }
  }

  else
  {

    v11 = MEMORY[0x277CDB018];
  }

  v12 = *v11;
  v13 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError and conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError and conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError and conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError and conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError and conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError and conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError and conformance __RKEntityActionMultiplePerformBehavior.MultiplePerformBehaviorLoadingError);
  }

  return result;
}

uint64_t closure #1 in static ActionBuilder.generatePlayTimelineActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v39 = a3;
  v40 = a5;
  v38 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v36 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[1] = v14;
  MEMORY[0x28223BE20](v15);
  v17 = v36 - v16;
  v37 = type metadata accessor for __RKEntityActionSpecification();
  v18 = *(v37 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v37);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v11 + 16);
  v23(v17, a2, v10, v20);
  v24 = v14;
  v25 = a2;
  (v23)(v24, a2, v10);
  v26 = RIOPxrSdfPathCopyString();
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36[0] = v27;

  (v23)(v9, v25, v10);
  v28 = v39;
  (*(v11 + 56))(v9, 0, 1, v10);
  v29 = RIOPxrSdfPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v37;
  __RKEntityPlayTimelineActionArguments.init(target:animationLibraryComponentEntity:animationLibraryKey:animationLibraryKeyOverrideEntity:animationLibraryKeyOverrideKey:)();
  (*(v18 + 104))(v22, *MEMORY[0x277CDAF60], v30);
  v31 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *v28 = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v31);
    *v28 = v31;
  }

  v31[2] = v34 + 1;
  return (*(v18 + 32))(v31 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v34, v22, v30);
}

uint64_t specialized static ActionBuilder.generatePlayTimelineActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = specialized Inputs.pathsForRelationship(named:requestContext:)();
  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  v6 = *(v5 + 32);

  v7 = specialized Inputs.pathsForRelationship(named:requestContext:)();
  if (!*(v7 + 16))
  {

LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 32);

  v16[0] = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v9);
  v16[-4] = v16;
  v16[-3] = v6;
  v16[-2] = v8;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generatePlayTimelineActionSpecifications(inputs:), &v16[-6]);
  v10 = v16[0];
  if (*(v16[0] + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v11 = type metadata accessor for __RKEntityActionSpecification();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2619891C0;
    (*(v1 + 104))(v4, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v12 + 104))(v10 + v14, *MEMORY[0x277CDAFA0], v11);
  }

  return v10;
}

void AudioFileGroupBuilder.run(inputs:)(uint64_t a1)
{
  v2 = v1;
  v4 = Inputs.prim.getter();
  v61 = *(a1 + 56);
  v5 = RIOBuilderInputsGetImportSession();
  if (!v5)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v6 = v5;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
    goto LABEL_63;
  }

  v8 = *(SwiftObject + 32);

  ServiceLocator = REEngineGetServiceLocator();
  v10 = MEMORY[0x2667102E0](ServiceLocator);
  if (v10)
  {
    v54 = v10;
    v55 = a1;
    v56 = v2;
    v57 = SwiftObject;
    v58 = v4;
    v11 = Prim.children.getter();
    v12 = v11;
    aBlock[0] = MEMORY[0x277D84F90];
    if (v11 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v14 = 0;
      v60 = v12 & 0xC000000000000001;
      v15 = v12 & 0xFFFFFFFFFFFFFF8;
      while (v60)
      {
        v16 = MEMORY[0x26670F670](v14, v12);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_27;
        }

LABEL_12:
        v18 = v12;
        v19 = *(v16 + 16);
        v20 = RIOPxrUsdPrimCopyTypeName();
        if (one-time initialization token for primType != -1)
        {
          swift_once();
        }

        v21 = static AudioConstants.AudioFile.primType;
        type metadata accessor for RIOPxrTfTokenRef(0);
        lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
        v22 = v21;
        v23 = static _CFObject.== infix(_:_:)();

        if (v23)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v24 = *(aBlock[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v12 = v18;
        ++v14;
        if (v17 == i)
        {
          v25 = aBlock[0];
          goto LABEL_31;
        }
      }

      if (v14 >= *(v15 + 16))
      {
        goto LABEL_28;
      }

      v16 = *(v12 + 8 * v14 + 32);

      v17 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        goto LABEL_12;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    v25 = MEMORY[0x277D84F90];
LABEL_31:

    if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
    {
LABEL_58:
      v60 = __CocoaSet.count.getter();
    }

    else
    {
      v60 = *(v25 + 16);
    }

    v30 = 0;
    v59 = MEMORY[0x277D84F90];
    while (v60 != v30)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x26670F670](v30, v25);
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v30 >= *(v25 + 16))
        {
          goto LABEL_57;
        }

        v31 = *(v25 + 8 * v30 + 32);

        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      v33 = RIOBuilderInputsGetImportSession();
      if (!v33)
      {
        goto LABEL_60;
      }

      v34 = v33;
      v35 = RIOImportSessionGetSwiftObject();

      if (!v35)
      {
        goto LABEL_61;
      }

      v36 = *(v31 + 16);

      v37 = RIOPxrUsdObjectCopyPath();
      v38 = RIOPxrSdfPathCopyString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v40 = *(v35 + v39);
      String.utf8CString.getter();
      v41 = v40;

      ExtraAssetWithTag = RIOImportSessionGetExtraAssetWithTag();

      ++v30;
      if (ExtraAssetWithTag)
      {
        v43 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
        }

        v45 = *(v43 + 2);
        v44 = *(v43 + 3);
        if (v45 >= v44 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
        }

        *(v43 + 2) = v45 + 1;
        v59 = v43;
        *&v43[8 * v45 + 32] = ExtraAssetWithTag;
        v30 = v32;
      }
    }

    if (*(v59 + 2))
    {
      MEMORY[0x28223BE20](v46);
      v53[2] = v56;
      v53[3] = v55;
      v53[4] = v59;
      v53[5] = v54;
      v53[6] = v58;
      v47 = swift_allocObject();
      *(v47 + 16) = partial apply for closure #3 in AudioFileGroupBuilder.run(inputs:);
      *(v47 + 24) = v53;
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor;
      v48 = _Block_copy(aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();

      _Block_release(v48);
      LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

      if ((v48 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v49 = RIOBuilderInputsGetImportSession();
    if (!v49)
    {
      goto LABEL_64;
    }

    v50 = v49;
    v51 = RIOImportSessionGetSwiftObject();

    if (v51)
    {

      AudioFileGroupBuilder.releaseAudioFileGroup(importSession:)(v52);

      return;
    }

    goto LABEL_65;
  }

  if (one-time initialization token for rioAudio != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.rioAudio);
  v27 = static os_log_type_t.error.getter();
  v28 = Logger.logObject.getter();
  if (os_log_type_enabled(v28, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26187B000, v28, v27, "AudioFileGroupBuilder could not get an AssetManager.", v29, 2u);
    MEMORY[0x266713AD0](v29, -1, -1);
  }
}

void closure #3 in AudioFileGroupBuilder.run(inputs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 56);
  v9 = RIOBuilderInputsGetImportSession();
  if (!v9)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  AudioFileGroupBuilder.releaseAudioFileGroup(importSession:)(v12);

  v13 = *(a3 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v43 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v43;
    v15 = (a3 + 32);
    v16 = v13;
    do
    {
      v17 = *v15;
      LayoutTag = REAudioFileAssetGetLayoutTag();
      v20 = *(v43 + 16);
      v19 = *(v43 + 24);
      if (v20 >= v19 >> 1)
      {
        v42 = LayoutTag;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        LayoutTag = v42;
      }

      *(v43 + 16) = v20 + 1;
      *(v43 + 4 * v20 + 32) = LayoutTag;
      ++v15;
      --v16;
    }

    while (v16);
  }

  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt32V_SayAEGTt0g5Tf4g_n(v14);

  v22 = *(v21 + 16);

  if (v22 == 1)
  {
    v23 = *(a5 + 16);
    v24 = RIOPxrUsdObjectCopyName();
    v25 = RIOPxrTfTokenCopyString();

    v26 = REAudioFileGroupAssetCreateWithFileAssets();
    v27 = RIOPxrUsdObjectCopyPath();
    v28 = RIOPxrSdfPathCopyString();
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = v26;
      v33 = a1[3];
      v34 = a1[4];
      v35 = a1[5];
      a1[3] = v29;
      a1[4] = v31;
      a1[5] = v32;

      outlined consume of AudioFileGroupBuilder.AudioFileGroup?(v33, v34);
      v36 = RIOBuilderInputsGetImportSession();
      if (v36)
      {
        v37 = v36;
        v38 = RIOImportSessionGetSwiftObject();

        if (v38)
        {
          v39 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

          swift_beginAccess();
          v40 = *(v38 + v39);
          String.utf8CString.getter();
          v41 = v40;

          RIOImportSessionSetExtraAssetWithTag();

          return;
        }

LABEL_20:
        __break(1u);
        return;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }
}

uint64_t AudioFileGroupBuilder.releaseAudioFileGroup(importSession:)(uint64_t a1)
{
  v2 = v1[4];
  if (v2)
  {
    v3 = v1[5];
    v4 = v1[3];
    v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v7 = *(a1 + v5);
    String.utf8CString.getter();
    outlined copy of AudioFileGroupBuilder.AudioFileGroup?(v4, v2);
    v8 = v7;
    RIOImportSessionRemoveExtraAssetWithTag();

    v9 = v1[4];
  }

  else
  {
    v9 = 0;
  }

  v10 = v1[3];
  v11 = v1[5];
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  return outlined consume of AudioFileGroupBuilder.AudioFileGroup?(v10, v9);
}

uint64_t AudioFileGroupBuilder.__deallocating_deinit()
{
  v1 = v0[5];
  outlined consume of AudioFileGroupBuilder.AudioFileGroup?(v0[3], v0[4]);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioFileGroupBuilder.AudioFileGroup(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioFileGroupBuilder.AudioFileGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for Builder.inputDescriptors() in conformance AudioFileGroupBuilder()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v1 = static AudioConstants.AudioFile.primType;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x80000002619942F0;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x80000002619942F0;
  *(inited + 64) = v1;
  *(inited + 72) = 1;
  *(inited + 80) = 32;
  v2 = v1;
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15InputDescriptorO_SayAFGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of InputDescriptor(inited + 32);
  return v3;
}

void protocol witness for Builder.clear(inputs:) in conformance AudioFileGroupBuilder(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = RIOBuilderInputsGetImportSession();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_7:
    __break(1u);
    return;
  }

  AudioFileGroupBuilder.releaseAudioFileGroup(importSession:)(v5);
}

uint64_t specialized AudioFileGroupBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v0 = static AudioConstants.AudioFileGroup.primType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = MEMORY[0x277D84FA0];
  v6 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v6 = MEMORY[0x277D84FA0];
    }
  }

  type metadata accessor for TypeNamePrimDirtyState();
  v7 = swift_allocObject();
  v7[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v8);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v6);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v7;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  v14 = *(v13 + 16);
  swift_arrayDestroy();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v15 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v5, v5, 0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_26198A640;
  *(v16 + 32) = v15;

  specialized Sequence.forEach(_:)(v16);

  swift_setDeallocating();
  v17 = *(v16 + 16);
  swift_arrayDestroy();
  return v5;
}

uint64_t outlined consume of AudioFileGroupBuilder.AudioFileGroup?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined copy of AudioFileGroupBuilder.AudioFileGroup?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

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

unint64_t lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef()
{
  result = lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef;
  if (!lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef)
  {
    type metadata accessor for RIOPxrTfTokenRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef;
  if (!lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef)
  {
    type metadata accessor for RIOPxrTfTokenRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t closure #1 in static TriggerBuilder.generateProximityToCameraTriggerSpecifications(inputs:)(float a1, uint64_t a2, uint64_t a3, void **a4)
{
  v7 = type metadata accessor for __RKEntityTriggerSpecification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v11, a3, v15);
  *&v11[v13] = a1;
  v16 = *MEMORY[0x277CDAF08];
  v17 = type metadata accessor for __RKEntityProximityTrigger.ExitType();
  (*(*(v17 - 8) + 104))(&v11[v14], v16, v17);
  (*(v8 + 104))(v11, *MEMORY[0x277CDAFE8], v7);
  v18 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *a4 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v18);
    *a4 = v18;
  }

  v18[2] = v21 + 1;
  return (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v11, v7);
}

uint64_t static ToolsFoundations.Token.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t ToolsFoundations.Token.description.getter()
{
  v1 = *v0;
  v2 = RIOPxrTfTokenCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t ToolsFoundations.Token.debugDescription.getter()
{
  v1 = *v0;
  v2 = RIOPxrTfTokenCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x26670F080](v3, v5);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0x203A6E656B6F543CLL;
}

uint64_t ToolsFoundations.Token.hash(into:)()
{
  v1 = *v0;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  return _CFObject.hash(into:)();
}

uint64_t ToolsFoundations.Token.hashValue.getter()
{
  v2 = *v0;
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ToolsFoundations.Token(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolsFoundations.Token()
{
  v1 = *v0;
  v2 = RIOPxrTfTokenCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolsFoundations.Token()
{
  v1 = *v0;
  v2 = RIOPxrTfTokenCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x26670F080](v3, v5);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0x203A6E656B6F543CLL;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ToolsFoundations.Token()
{
  v1 = *v0;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolsFoundations.Token()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance ToolsFoundations.Token(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return (specialized static ToolsFoundations.Token.< infix(_:_:)(&v4, &v5) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance ToolsFoundations.Token(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return (specialized static ToolsFoundations.Token.< infix(_:_:)(&v5, &v4) & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance ToolsFoundations.Token(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return specialized static ToolsFoundations.Token.< infix(_:_:)(&v4, &v5) & 1;
}

id protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance ToolsFoundations.Token@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (String.count.getter() < 1)
  {

    result = RIOPxrTfTokenEmpty();
    v5 = result;
  }

  else
  {
    String.utf8CString.getter();

    v5 = RIOPxrTfTokenCreateWithCString();
  }

  *a2 = v5;
  return result;
}

id static ToolsFoundations.Token.Empty.getter@<X0>(void *a1@<X8>)
{
  result = RIOPxrTfTokenEmpty();
  *a1 = result;
  return result;
}

id ToolsFoundations.Token.init(string:immortal:)@<X0>(uint64_t *a1@<X8>)
{
  if (String.count.getter() < 1)
  {

    result = RIOPxrTfTokenEmpty();
    v2 = result;
  }

  else
  {
    String.utf8CString.getter();

    v2 = RIOPxrTfTokenCreateWithCString();
  }

  *a1 = v2;
  return result;
}

id ToolsFoundations.Token.init(stringLiteral:)@<X0>(uint64_t *a1@<X8>)
{
  if (String.count.getter() < 1)
  {

    result = RIOPxrTfTokenEmpty();
    v2 = result;
  }

  else
  {
    String.utf8CString.getter();

    v2 = RIOPxrTfTokenCreateWithCString();
  }

  *a1 = v2;
  return result;
}

void ToolsFoundations.Token.swap(_:)(void **a1)
{
  v2 = *a1;
  v3 = *v1;
  *a1 = *v1;
  v4 = *v1;
  v5 = v3;

  *v1 = v2;
}

uint64_t specialized static ToolsFoundations.Token.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = RIOPxrTfTokenCopyString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = RIOPxrTfTokenCopyString();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

unint64_t lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token()
{
  result = lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token;
  if (!lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token;
  if (!lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token;
  if (!lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token;
  if (!lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolsFoundations.Token and conformance ToolsFoundations.Token);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolsFoundations.Token(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ToolsFoundations.Token(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in AudioMixGroupBuilder.stageSubscription.getter()
{
  if (one-time initialization token for gain != -1)
  {
    swift_once();
  }

  v0 = static AudioConstants.MixGroup.gain;
  type metadata accessor for NamedPropertyDirtyState();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = v0;
  v3 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v1[2] = v3;
  v1[3] = v5;
  v6 = one-time initialization token for speed;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static AudioConstants.MixGroup.speed;
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  v12 = one-time initialization token for mute;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static AudioConstants.MixGroup.mute;
  v14 = swift_allocObject();
  v14[4] = v13;
  v15 = v13;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  v17 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v14[2] = v3;
  v14[3] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8D0;
  *(inited + 32) = v1;
  *(inited + 40) = v8;
  *(inited + 48) = v14;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  return v3;
}

uint64_t AudioMixGroupBuilder.run(inputs:)(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &aBlock);
  if (v37)
  {
    type metadata accessor for EntityProxy();
    result = swift_dynamicCast();
    if (result)
    {
      __AssetRef.__as<A>(_:)();
      REAudioMixGroupsComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      if (ComponentByClass)
      {
        v4 = ComponentByClass;
        v5 = Inputs.prim.getter();
        v6 = *(v5 + 16);
        v7 = RIOPxrUsdObjectCopyName();
        v8 = RIOPxrTfTokenCopyString();
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v10;

        if (one-time initialization token for gain != -1)
        {
          swift_once();
        }

        *&aBlock = static AudioConstants.MixGroup.gain;
        v11 = static AudioConstants.MixGroup.gain;
        v12 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

        v13 = 0;
        if (v12)
        {
          LODWORD(aBlock) = 0;
          Float = RIOPxrVtValueGetFloat();

          if (Float)
          {
            v13 = aBlock;
          }
        }

        if (one-time initialization token for speed != -1)
        {
          swift_once();
        }

        *&aBlock = static AudioConstants.MixGroup.speed;
        v15 = static AudioConstants.MixGroup.speed;
        v16 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

        v17 = 1.0;
        if (v16)
        {
          LODWORD(aBlock) = 0;
          v18 = RIOPxrVtValueGetFloat();

          if (v18)
          {
            v17 = *&aBlock;
          }
        }

        if (one-time initialization token for mute != -1)
        {
          swift_once();
        }

        *&aBlock = static AudioConstants.MixGroup.mute;
        v19 = static AudioConstants.MixGroup.mute;
        v20 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

        if (v20 && (LOBYTE(aBlock) = 0, Bool = RIOPxrVtValueGetBool(), v20, (Bool & 1) != 0))
        {
          v22 = aBlock;
        }

        else
        {
          v22 = 0;
        }

        v23 = swift_allocObject();
        v24 = swift_weakInit();
        MEMORY[0x28223BE20](v24);
        v30[2] = v23;
        v30[3] = v4;
        v30[4] = v9;
        v30[5] = v34;
        v31 = v13;
        v32 = v17;
        v33 = v22;
        v25 = *(a1 + 56);
        v26 = swift_allocObject();
        *(v26 + 16) = partial apply for closure #1 in AudioMixGroupBuilder.run(inputs:);
        *(v26 + 24) = v30;
        v38 = thunk for @callee_guaranteed () -> ()partial apply;
        v39 = v26;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v36 = thunk for @escaping @callee_guaranteed () -> ();
        v37 = &block_descriptor_18;
        v27 = _Block_copy(&aBlock);

        RIOBuilderInputsPerformBlockSyncOnEngineQueue();

        _Block_release(v27);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    result = outlined destroy of Any?(&aBlock);
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in AudioMixGroupBuilder.run(inputs:)(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (MixGroupID = *(Strong + 24), v13 = *(Strong + 32), , v13 == 1))
  {
    MixGroupID = REAudioMixGroupsComponentCreateMixGroupID();
  }

  v14 = String.utf8CString.getter();
  MEMORY[0x26670FE50](a4, MixGroupID, v14 + 32, a7 & 1, a1, a2);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 24) = MixGroupID;
    *(result + 32) = 0;
  }

  return result;
}

uint64_t AudioMixGroupBuilder.clear(inputs:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &aBlock);
  if (!v16)
  {
    result = outlined destroy of Any?(&aBlock);
    goto LABEL_10;
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    *(v1 + 24) = 0;
    v7 = (v1 + 32);
    goto LABEL_11;
  }

  __AssetRef.__as<A>(_:)();
  REAudioMixGroupsComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {

    goto LABEL_10;
  }

  v6 = *(v1 + 24);
  v7 = (v2 + 32);
  if (*(v2 + 32))
  {

    *(v2 + 24) = v6;
LABEL_11:
    *v7 = 1;
    return result;
  }

  MEMORY[0x28223BE20](ComponentByClass);
  v13[2] = v8;
  v13[3] = v6;
  v9 = *(a1 + 56);
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in AudioMixGroupBuilder.clear(inputs:);
  *(v10 + 24) = v13;
  v17 = partial apply for thunk for @callee_guaranteed () -> ();
  v18 = v10;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> ();
  v16 = &block_descriptor_0;
  v11 = _Block_copy(&aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    *(v2 + 24) = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Builder.inputDescriptors() in conformance AudioMixGroupBuilder()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8E0;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v2 = static EntityBuilder.OutputName;
  v1 = qword_27FEBC3A0;
  v3 = one-time initialization token for OutputIdentifier;

  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static EntityBuilder.OutputIdentifier;
  v4 = *algn_27FEC8E68;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v5;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = v4;
  *(inited + 80) = 112;
  *(inited + 88) = 0xD000000000000017;
  *(inited + 96) = 0x8000000261994500;
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = 0x8000000261994500;
  *(inited + 120) = xmmword_26198A8F0;
  *(inited + 136) = 16;

  v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15InputDescriptorO_SayAFGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v6;
}

uint64_t specialized AudioMixGroupBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v0 = static AudioConstants.MixGroup.primType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = closure #1 in closure #1 in AudioMixGroupBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = v10;
  v6[3] = v5;
  v6[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v6;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  v14 = *(v13 + 16);
  swift_arrayDestroy();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v15 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v10, v10, 0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_26198A640;
  *(v16 + 32) = v15;

  specialized Sequence.forEach(_:)(v16);

  swift_setDeallocating();
  v17 = *(v16 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v4 = RIOPxrUsdPrimCopyAttribute();
    type metadata accessor for AnyAttribute();
    v5 = swift_allocObject();
    v5[2] = v4;
    EmptyValue = RIOPxrUsdAttributeCopyValue();
    if (!EmptyValue)
    {
      EmptyValue = RIOPxrVtValueCreateEmptyValue();
    }

    v7 = EmptyValue;
    outlined consume of Result<AnyAttribute, Object.Error>(v5, 0);
    return v7;
  }

  else
  {
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type Object.Error and conformance Object.Error()
{
  result = lazy protocol witness table cache variable for type Object.Error and conformance Object.Error;
  if (!lazy protocol witness table cache variable for type Object.Error and conformance Object.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Object.Error and conformance Object.Error);
  }

  return result;
}

void outlined consume of Object.Error(id a1)
{
  if (a1 >= 2)
  {
  }
}

void outlined consume of Result<AnyAttribute, Object.Error>(id a1, char a2)
{
  if (a2)
  {
    outlined consume of Object.Error(a1);
  }

  else
  {
  }
}

uint64_t static Utils.relativePath(base:path:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v22 = a3;
  v23 = a4;
  v20 = a1;
  v21 = a2;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  if (BidirectionalCollection<>.starts<A>(with:)())
  {
    v22 = a3;
    v23 = a4;
    v20 = a1;
    v21 = a2;
    v12 = type metadata accessor for Locale();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.range<A>(of:options:range:locale:)();
    v14 = v13;
    v16 = v15;
    outlined destroy of Locale?(v11);
    if (v16)
    {
      v17 = 15;
    }

    else
    {
      v17 = v14;
    }

    v18 = specialized Collection.subscript.getter(v17, a3, a4);
    a3 = MEMORY[0x26670F020](v18);
  }

  else
  {
  }

  return a3;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t RESharedObjectWrapper.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = *(v2 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  v14 = *(v1 + 88);
  (*(v4 + 16))(v7, &v0[v14], v3, v11);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    v15 = *(v4 + 8);
    v15(v7, v3);
LABEL_5:
    v15(&v0[v14], v3);
    return v0;
  }

  result = (*(v8 + 32))(v13, v7, v2);
  if (v9 == 8)
  {
    v17 = *v13;
    RERelease();
    (*(v8 + 8))(v13, v2);
    v15 = *(v4 + 8);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t RESharedObjectWrapper.__deallocating_deinit()
{
  RESharedObjectWrapper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata completion function for RESharedObjectWrapper(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in ActionBuilder.inputDescriptors()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = *(a3 + 16);
  if (RIOPxrUsdPrimHasRelationship())
  {
    v6 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v7 = swift_allocObject();
    v7[2] = v6;
    v8 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v7, 0);
    v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAHGTt0g5Tf4g_n(v8);

    return v9;
  }

  else
  {

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return MEMORY[0x277D84FA0];
  }
}

uint64_t closure #2 in ActionBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  if (!RIOPxrUsdStageHasPrimAtPrimPath())
  {
    return 0;
  }

  v4 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v6 = swift_allocObject();
  *(v6 + 16) = PrimIfNeeded;
  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  if (RIOPxrUsdPrimHasAttribute())
  {
    v9 = RIOPxrUsdPrimCopyAttribute();
    v10 = RIOPxrUsdAttributeCopyValue();
    if (!v10)
    {

      return 0;
    }

    v11 = v10;
    v12 = RIOPxrVtValueCopyToken();

    if (v12)
    {

      v13 = RIOPxrTfTokenCopyString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }
  }

  return 0;
}

uint64_t specialized closure #3 in ActionBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v12 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v12);
  if (!v2)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = v2;
  v6 = v3;
  v7 = v4;
  if (one-time initialization token for actionTypesUsingAffectedObjects != -1)
  {
    swift_once();
  }

  v8 = static ActionBuilder.actionTypesUsingAffectedObjects;

  v9 = specialized Set.contains(_:)(v6, v7, v8);

  if (v9)
  {
    v10 = closure #1 in ActionBuilder.inputDescriptors()(0x6465746365666661, 0xEF737463656A624FLL, v5);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized closure #4 in ActionBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v9 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v9);
  if (v2)
  {
    v5 = v2;
    if (v3 == 0x70756F7247 && v4 == 0xE500000000000000)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        v6 = MEMORY[0x277D84FA0];
        goto LABEL_9;
      }
    }

    v6 = closure #1 in ActionBuilder.inputDescriptors()(0x736E6F69746361, 0xE700000000000000, v5);
LABEL_9:

    return v6;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized closure #5 in ActionBuilder.inputDescriptors()(uint64_t a1, id *a2)
{
  v20 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v20);
  if (!v2)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = v2;
  if (v3 == 0x746962724FLL && v4 == 0xE500000000000000)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {

      return MEMORY[0x277D84FA0];
    }
  }

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  v9 = *(v5 + 16);
  if (RIOPxrUsdPrimHasRelationship())
  {
    v10 = *(v5 + 16);
    v11 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v12 = swift_allocObject();
    v12[2] = v11;
    v13 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v12, 0);
    if (*(v13 + 16))
    {
      v14 = *(v13 + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2619891C0;
      *(inited + 32) = v14;
      v16 = inited + 32;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_Tt0g5Tf4g_n(inited);
      v18 = v17;
      swift_setDeallocating();
      outlined destroy of SceneDescriptionFoundations.Path(v16);

      return v18;
    }
  }

  else
  {

    v20 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();

    outlined consume of Object.Error(v20);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized closure #6 in ActionBuilder.inputDescriptors()(uint64_t a1, id *a2)
{
  v20 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v20);
  if (!v2)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = v2;
  if (v3 == 0x726F66736E617254 && v4 == 0xE90000000000006DLL)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {

      return MEMORY[0x277D84FA0];
    }
  }

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  v9 = *(v5 + 16);
  if (RIOPxrUsdPrimHasRelationship())
  {
    v10 = *(v5 + 16);
    v11 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v12 = swift_allocObject();
    v12[2] = v11;
    v13 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v12, 0);
    if (*(v13 + 16))
    {
      v14 = *(v13 + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2619891C0;
      *(inited + 32) = v14;
      v16 = inited + 32;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_Tt0g5Tf4g_n(inited);
      v18 = v17;
      swift_setDeallocating();
      outlined destroy of SceneDescriptionFoundations.Path(v16);

      return v18;
    }
  }

  else
  {

    v20 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();

    outlined consume of Object.Error(v20);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized closure #7 in ActionBuilder.inputDescriptors()(uint64_t a1, id *a2)
{
  v20 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v20);
  if (!v2)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = v2;
  if (v3 == 0xD000000000000012 && v4 == 0x80000002619941A0)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {

      return MEMORY[0x277D84FA0];
    }
  }

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  v9 = *(v5 + 16);
  if (RIOPxrUsdPrimHasRelationship())
  {
    v10 = *(v5 + 16);
    v11 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v12 = swift_allocObject();
    v12[2] = v11;
    v13 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v12, 0);
    if (*(v13 + 16))
    {
      v14 = *(v13 + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2619891C0;
      *(inited + 32) = v14;
      v16 = inited + 32;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_Tt0g5Tf4g_n(inited);
      v18 = v17;
      swift_setDeallocating();
      outlined destroy of SceneDescriptionFoundations.Path(v16);

      return v18;
    }
  }

  else
  {

    v20 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();

    outlined consume of Object.Error(v20);
  }

  return MEMORY[0x277D84FA0];
}

id specialized closure #8 in ActionBuilder.inputDescriptors()(uint64_t a1, id *a2)
{
  v23 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v23);
  if (!v2)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = v2;
  if (v3 == 0x635365676E616843 && v4 == 0xEB00000000656E65)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {

      return MEMORY[0x277D84FA0];
    }
  }

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  v9 = *(v5 + 16);
  if (!RIOPxrUsdPrimHasRelationship())
  {

    v23 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();

    outlined consume of Object.Error(v23);
    return MEMORY[0x277D84FA0];
  }

  v10 = *(v5 + 16);
  v11 = RIOPxrUsdPrimCopyRelationship();

  type metadata accessor for Relationship();
  v12 = swift_allocObject();
  v12[2] = v11;
  v13 = Relationship.targets.getter();
  if (*(v13 + 16))
  {
    EmptyPath = *(v13 + 32);
  }

  else
  {

    EmptyPath = RIOPxrSdfPathCreateEmptyPath();
  }

  outlined consume of Result<AnyAttribute, Object.Error>(v12, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = RIOPxrSdfPathCopyParentPath();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_Tt0g5Tf4g_n(inited);
  v18 = v17;
  swift_setDeallocating();
  outlined destroy of SceneDescriptionFoundations.Path(inited + 32);
  v23 = v18;
  v19 = specialized static ActionBuilder.findSceneRoot(from:)(v5);
  if (v19)
  {
    v20 = *(v19 + 16);
    v21 = RIOPxrUsdObjectCopyPath();
    specialized Set._Variant.insert(_:)(&v22, v21, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path, &type metadata for SceneDescriptionFoundations.Path, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path, specialized _NativeSet.insertNew(_:at:isUnique:));

    return v23;
  }

  else
  {

    return v18;
  }
}

uint64_t ActionBuilder.run(inputs:)(uint64_t a1)
{
  v2 = v1;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(v19);
  v4 = v19[0];
  v5 = RIOPxrTfTokenCopyString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (one-time initialization token for actionTypeToActionSpecificationsGenerator != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static ActionBuilder.actionTypeToActionSpecificationsGenerator;
  if (*(static ActionBuilder.actionTypeToActionSpecificationsGenerator + 2) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8), (v11 & 1) != 0))
  {
    v12 = v9[7] + 16 * v10;
    v14 = *v12;
    v13 = *(v12 + 8);
    swift_endAccess();

    v19[0] = a1;
    v14(v18, v19);

    v15 = *&v18[0];
    swift_beginAccess();
    v16 = objc_getAssociatedObject(v2, &static BuilderAssociatedKeys.OutputsReference);
    result = swift_endAccess();
    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(v18, v19);
      type metadata accessor for Outputs();
      swift_dynamicCast();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
      v19[0] = v15;
      Outputs.subscript.setter(v19, 0x736E6F69746341, 0xE700000000000000);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_endAccess();

    return specialized ActionBuilder.clear(inputs:)();
  }

  return result;
}

uint64_t one-time initialization function for actionTypesUsingAffectedObjects()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for actionTypesUsingAffectedObjects);
  result = swift_arrayDestroy();
  static ActionBuilder.actionTypesUsingAffectedObjects = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for actionTypesUsingAffectedObjects);
  result = swift_arrayDestroy();
  static TriggerBuilder.actionTypesUsingAffectedObjects = v0;
  return result;
}

uint64_t one-time initialization function for actionTypeToActionSpecificationsGenerator()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit29__RKEntityActionSpecificationOG0C2IO6InputsCcTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for actionTypeToActionSpecificationsGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yyctMd, &_sSS_yyctMR);
  result = swift_arrayDestroy();
  static ActionBuilder.actionTypeToActionSpecificationsGenerator = v0;
  return result;
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance ActionBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance ActionBuilder);
  outlined destroy of OutputDescriptor(&unk_287410540);
  return v0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v42 = *a2;
  v43 = v5;
  v44 = *(a2 + 32);
  v6 = *(a2 + 48);
  v45 = v6;
  v7 = *v2;
  v8 = *(*v2 + 40);
  v10 = *(&v44 + 1);
  v9 = v44;
  v33 = v42;
  v34 = v5;
  v40[0] = v42;
  v40[1] = v5;
  v40[2] = v44;
  v41 = v6;
  Hasher.init(_seed:)();
  InputDescriptor.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  if ((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v7 + 48) + 56 * v13;
      v16 = *(v15 + 8);
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      v19 = *(v15 + 32);
      v20 = *(v15 + 40);
      *&v36 = *v15;
      *(&v36 + 1) = v16;
      *&v37 = v17;
      *(&v37 + 1) = v18;
      *&v38 = v19;
      *(&v38 + 1) = v20;
      v39 = *(v15 + 48);
      outlined copy of InputDescriptor(v36, v16, v17, v18, v19, v20, v39);
      v21 = specialized static InputDescriptor.== infix(_:_:)(&v36, &v42);
      outlined consume of InputDescriptor(v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39);
      if (v21)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v33 = v42;
        v34 = v43;
        v10 = *(&v44 + 1);
        v9 = v44;
        v6 = v45;
        goto LABEL_6;
      }
    }

    outlined consume of InputDescriptor(v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45);
    v25 = *(v7 + 48) + 56 * v13;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v30 = *(v25 + 32);
    v31 = *(v25 + 40);
    *a1 = *v25;
    *(a1 + 8) = v27;
    *(a1 + 16) = v28;
    *(a1 + 24) = v29;
    *(a1 + 32) = v30;
    *(a1 + 40) = v31;
    v32 = *(v25 + 48);
    *(a1 + 48) = v32;
    outlined copy of InputDescriptor(v26, v27, v28, v29, v30, v31, v32);
    return 0;
  }

  else
  {
LABEL_6:
    v22 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v35 = *v3;
    outlined init with copy of InputDescriptor(&v36, v40);
    specialized _NativeSet.insertNew(_:at:isUnique:)(&v36, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    *a1 = v33;
    *(a1 + 16) = v34;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    *(a1 + 48) = v6;
    return 1;
  }
}

{
  outlined init with take of OutputDescriptor(a2, v38);
  v3 = v38[0];
  v4 = v38[1];
  v5 = v38[2];
  v6 = v38[3];
  v7 = v39;
  v31 = v2;
  v8 = *v2;
  v9 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  v34 = v6;
  v35 = v5;
  String.hash(into:)();
  Hasher._combine(_:)(v7);
  v10 = Hasher._finalize()();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  v13 = v10 & ~v12;
  if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v30 = v8;
    v15 = *(v8 + 48);
    do
    {
      v16 = v15 + 40 * v13;
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *v16 == v3 && *(v16 + 8) == v4;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v18 == v35 && v17 == v34)
        {
          if (v7 == v19)
          {
            goto LABEL_16;
          }
        }

        else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v7 ^ v19) & 1) == 0)
        {
LABEL_16:
          outlined destroy of OutputDescriptor(a2);
          v22 = *(v30 + 48) + 40 * v13;
          v24 = *v22;
          v23 = *(v22 + 8);
          v25 = *(v22 + 16);
          v26 = *(v22 + 24);
          LOBYTE(v22) = *(v22 + 32);
          *a1 = v24;
          *(a1 + 8) = v23;
          *(a1 + 16) = v25;
          *(a1 + 24) = v26;
          *(a1 + 32) = v22;

          return 0;
        }
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v28 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v31;
  outlined init with copy of OutputDescriptor(a2, v37);
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v13, isUniquelyReferenced_nonNull_native);
  *v31 = v36;
  outlined init with take of OutputDescriptor(a2, a1);
  return 1;
}

{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for ImportSession.EvaluationFault(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  ImportSession.EvaluationFault.hash(into:)(v23);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      outlined init with copy of ImportSession.EvaluationFault(*(v10 + 48) + v16 * v14, v9);
      v17 = specialized static ImportSession.EvaluationFault.== infix(_:_:)(v9, a2);
      outlined destroy of ImportSession.EvaluationFault(v9);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of ImportSession.EvaluationFault(a2);
    outlined init with copy of ImportSession.EvaluationFault(*(v10 + 48) + v16 * v14, v22);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of ImportSession.EvaluationFault(a2, v9);
    v23[0] = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23[0];
    outlined init with take of ImportSession.EvaluationFault(a2, v20);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x26670FA00](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path, &type metadata for SceneDescriptionFoundations.Path, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path, specialized _NativeSet.insertNew(_:at:isUnique:));
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token, &type metadata for ToolsFoundations.Token, lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token, specialized _NativeSet.insertNew(_:at:isUnique:));
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for RIOPxrSdfPathRef(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v27;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v21 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16RIOPxrSdfPathRefa_Tt1g5(v7, result + 1);
        v22 = *(v21 + 16);
        if (*(v21 + 24) <= v22)
        {
          specialized _NativeSet.resize(capacity:)(v22 + 1);
        }

        v23 = v8;
        specialized _NativeSet._unsafeInsertNew(_:)(v23, v21);

        *v3 = v21;
        *a1 = v23;
        return 1;
      }
    }
  }

  else
  {
    v11 = *(v6 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for RIOPxrSdfPathRef(0);
    lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
    _CFObject.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v6 + 32);
    v14 = v12 & ~v13;
    if ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v15 = ~v13;
      while (1)
      {
        v16 = *(*(v6 + 48) + 8 * v14);
        v17 = static _CFObject.== infix(_:_:)();

        if (v17)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v24 = *(*(v6 + 48) + 8 * v14);
      *a1 = v24;
      v25 = v24;
      return 0;
    }

    else
    {
LABEL_11:
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *v3;
      v20 = a2;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v20, v14, isUniquelyReferenced_nonNull_native);
      *v3 = v28;
      *a1 = v20;
      return 1;
    }
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v22[9] = v8;
      type metadata accessor for PrimDirtyState();
      swift_dynamicCast();
      result = 0;
      *a1 = v22[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9RealityIO14PrimDirtyStateC_Tt1g5(v7, result + 1);
    v22[0] = v19;
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
      v19 = v22[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v21, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  (*(*a2 + 128))(v22);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(**(*(v6 + 48) + 8 * v13) + 136);

    LOBYTE(v15) = v15(a2);

    if (v15)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v22[9] = v8;
      type metadata accessor for PropertyDirtyState();
      swift_dynamicCast();
      result = 0;
      *a1 = v22[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9RealityIO18PropertyDirtyStateC_Tt1g5(v7, result + 1);
    v22[0] = v19;
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
      v19 = v22[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v21, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  (*(*a2 + 120))(v22);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(**(*(v6 + 48) + 8 * v13) + 128);

    LOBYTE(v15) = v15(a2);

    if (v15)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v26 = v8;
      type metadata accessor for StageDirtyState();
      swift_dynamicCast();
      result = 0;
      *a1 = *&v25[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v22 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9RealityIO15StageDirtyStateC_Tt1g5(v7, result + 1);
    *&v25[0] = v22;
    v23 = *(v22 + 16);
    if (*(v22 + 24) <= v23)
    {
      specialized _NativeSet.resize(capacity:)(v23 + 1);
      v22 = *&v25[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v24, v22);

    *v3 = v22;
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    specialized Set.hash(into:)(v25, *(a2 + 24));
    specialized Set.hash(into:)(v25, *(a2 + 16));
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      do
      {
        v15 = *(*(v6 + 48) + 8 * v13);
        v16 = *(v15 + 24);
        v17 = *(a2 + 24);

        if (_sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(v16, v17))
        {
          v18 = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*(v15 + 16), *(a2 + 16));

          if (v18)
          {

            *a1 = *(*(v6 + 48) + 8 * v13);

            return 0;
          }
        }

        else
        {
        }

        v13 = (v13 + 1) & v14;
      }

      while (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25[0] = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v21, v13, isUniquelyReferenced_nonNull_native);
    *v3 = *&v25[0];
  }

  *a1 = a2;
  return 1;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), void (*a6)(void *, unint64_t, uint64_t))
{
  v9 = v6;
  v11 = *v6;
  v12 = *(*v6 + 40);
  a3();
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    a5();
    while (1)
    {
      v24 = *(*(v11 + 48) + 8 * v15);
      v17 = v24;
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v22 = *(*(v11 + 48) + 8 * v15);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  else
  {
LABEL_5:
    v19 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v9;
    a6(a2, v15, isUniquelyReferenced_nonNull_native);
    *v9 = v25;
    *a1 = a2;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  v68 = *(a2 + 3);
  v69 = v7;
  v70 = *(a2 + 10);
  v8 = *(a2 + 1);
  v65 = *a2;
  v66 = v8;
  v67 = v6;
  Hasher.init(_seed:)();
  Stage.MissingReference.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = v4 + 56;
  v11 = -1 << *(v4 + 32);
  v12 = v9 & ~v11;
  v52 = a2;
  if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *a2;
    v15 = *(a2 + 1);
    v16 = *(a2 + 2);
    v61 = *(a2 + 4);
    v62 = v16;
    v54 = *(a2 + 5);
    v56 = *(a2 + 3);
    v57 = *(a2 + 6);
    v55 = *(a2 + 8);
    v48 = *(a2 + 9);
    v49 = *(a2 + 7);
    v50 = *(a2 + 10);
    v47 = v4;
    v17 = *(v4 + 48);
    v63 = v15;
    do
    {
      v18 = (v17 + 88 * v12);
      if (*v18 != v14)
      {
        goto LABEL_4;
      }

      v19 = v18[3];
      v20 = v18[4];
      v21 = v18[5];
      v22 = v18[6];
      v23 = v18[8];
      v59 = v18[7];
      v58 = v18[9];
      v60 = v18[10];
      if (v18[1] != v15 || v18[2] != v16)
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = v62;
        v15 = v63;
        if ((v25 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v20)
      {
        if (!v61)
        {
          goto LABEL_4;
        }

        if (v19 != v56 || v20 != v61)
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v16 = v62;
          v15 = v63;
          if ((v27 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v61)
      {
        goto LABEL_4;
      }

      if (v22)
      {
        if (!v57)
        {
          goto LABEL_4;
        }

        if (v21 != v54 || v22 != v57)
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v16 = v62;
          v15 = v63;
          if ((v29 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v57)
      {
        goto LABEL_4;
      }

      if (v23)
      {
        if (!v55)
        {
          goto LABEL_4;
        }

        if (v59 != v49 || v23 != v55)
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v16 = v62;
          v15 = v63;
          if ((v31 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v55)
      {
        goto LABEL_4;
      }

      if (v60)
      {
        if (v50)
        {
          if (v58 == v48 && v60 == v50 || (v32 = _stringCompareWithSmolCheck(_:_:expecting:)(), v16 = v62, v15 = v63, (v32 & 1) != 0))
          {
LABEL_43:
            outlined destroy of Stage.MissingReference(v52);
            v33 = *(v47 + 48) + 88 * v12;
            v34 = *(v33 + 16);
            v65 = *v33;
            v66 = v34;
            v36 = *(v33 + 48);
            v35 = *(v33 + 64);
            v37 = *(v33 + 80);
            v67 = *(v33 + 32);
            v70 = v37;
            v68 = v36;
            v69 = v35;
            v38 = *(v33 + 16);
            *a1 = *v33;
            *(a1 + 16) = v38;
            v39 = *(v33 + 32);
            v40 = *(v33 + 48);
            v41 = *(v33 + 64);
            *(a1 + 80) = *(v33 + 80);
            *(a1 + 48) = v40;
            *(a1 + 64) = v41;
            *(a1 + 32) = v39;
            outlined init with copy of Stage.MissingReference(&v65, v64);
            return 0;
          }
        }
      }

      else if (!v50)
      {
        goto LABEL_43;
      }

LABEL_4:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  v43 = *v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64[0] = *v51;
  outlined init with copy of Stage.MissingReference(v52, &v65);
  specialized _NativeSet.insertNew(_:at:isUnique:)(v52, v12, isUniquelyReferenced_nonNull_native);
  *v51 = v64[0];
  v45 = *(v52 + 48);
  *(a1 + 32) = *(v52 + 32);
  *(a1 + 48) = v45;
  *(a1 + 64) = *(v52 + 64);
  *(a1 + 80) = *(v52 + 80);
  v46 = *(v52 + 16);
  result = 1;
  *a1 = *v52;
  *(a1 + 16) = v46;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  *&v34 = a2;
  *(&v34 + 1) = a3;
  v6 = *v4;
  v7 = *(*v4 + 40);
  lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta();
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v32 = v5;
    do
    {
      v13 = (*(v6 + 48) + 24 * v11);
      v15 = *v13;
      v14 = v13[1];
      v16 = v13[2];

      v17 = v14;
      v18 = v16;
      if (_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v15, v5))
      {
        type metadata accessor for RIOPxrTfTokenRef(0);
        lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
        v19 = v17;
        v20 = *(&v34 + 1);
        v5 = v32;
        v9 = v6 + 56;
        v21 = static _CFObject.== infix(_:_:)();

        if (v21)
        {

          v22 = (*(v6 + 48) + 24 * v11);
          v23 = v22[1];
          v24 = v22[2];
          *a1 = *v22;
          a1[1] = v23;
          a1[2] = v24;

          v25 = v23;
          v26 = v24;
          return 0;
        }
      }

      else
      {
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v28 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v30;

  specialized _NativeSet.insertNew(_:at:isUnique:)(v34, *(&v34 + 1), a4, v11, isUniquelyReferenced_nonNull_native);
  *v30 = v33;
  *a1 = v34;
  a1[2] = a4;
  return 1;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9RealityIO14PrimDirtyStateC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v20 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for PrimDirtyState();
      v5 = v4;
      do
      {
        v19[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          specialized _NativeSet.resize(capacity:)(v14 + 1);
        }

        v6 = v19[9];
        v2 = v20;
        v7 = *(v20 + 40);
        Hasher.init(_seed:)();
        (*(*v6 + 128))(v19);
        result = Hasher._finalize()();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9RealityIO18PropertyDirtyStateC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v20 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for PropertyDirtyState();
      v5 = v4;
      do
      {
        v19[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          specialized _NativeSet.resize(capacity:)(v14 + 1);
        }

        v6 = v19[9];
        v2 = v20;
        v7 = *(v20 + 40);
        Hasher.init(_seed:)();
        (*(*v6 + 120))(v19);
        result = Hasher._finalize()();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16RIOPxrSdfPathRefa_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16RIOPxrSdfPathRefaGMd, &_ss11_SetStorageCySo16RIOPxrSdfPathRefaGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for RIOPxrSdfPathRef(0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeSet.resize(capacity:)(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        Hasher.init(_seed:)();
        lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
        _CFObject.hash(into:)();
        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9RealityIO15StageDirtyStateC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for StageDirtyState();
      v5 = v4;
      do
      {
        *&v12[0] = v5;
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeSet.resize(capacity:)(v10 + 1);
        }

        v2 = v14;
        v6 = v13;
        v7 = *(v14 + 40);
        Hasher.init(_seed:)();
        specialized Set.hash(into:)(v12, *(v6 + 24));
        specialized Set.hash(into:)(v12, *(v6 + 16));
        Hasher._finalize()();
        v8 = -1 << *(v2 + 32);
        v9 = _HashTable.nextHole(atOrAfter:)();
        *(v2 + 56 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v2 + 48) + 8 * v9) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO15InputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO15InputDescriptorOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      v36 = *(v19 + 32);
      v37 = *(v19 + 24);
      v35 = *(v19 + 40);
      v34 = *(v19 + 48);
      Hasher.init(_seed:)();
      InputDescriptor.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 56 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v37;
      *(v15 + 32) = v36;
      *(v15 + 40) = v35;
      *(v15 + 48) = v34;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x26670FA00](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      (*(*v18 + 128))(v29);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      (*(*v18 + 120))(v29);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v79 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v13 = *(v80 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ImportSession.EvaluationFault(0);
  v81 = *(v16 - 8);
  v82 = v16;
  v17 = *(v81 + 64);
  MEMORY[0x28223BE20](v16);
  v85 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v83 = &v68 - v20;
  v21 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v22 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v24 = result;
  if (*(v21 + 16))
  {
    v74 = v9;
    v75 = v8;
    v76 = v4;
    v77 = v1;
    v25 = 0;
    v26 = (v21 + 56);
    v27 = 1 << *(v21 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v21 + 56);
    v30 = (v27 + 63) >> 6;
    v73 = (v13 + 32);
    v72 = (v10 + 8);
    v71 = (v5 + 8);
    v70 = (v13 + 8);
    v31 = result + 56;
    v32 = v83;
    while (1)
    {
      if (!v29)
      {
        v35 = v25;
        while (1)
        {
          v25 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v25 >= v30)
          {
            break;
          }

          v36 = v26[v25];
          ++v35;
          if (v36)
          {
            v34 = __clz(__rbit64(v36));
            v29 = (v36 - 1) & v36;
            goto LABEL_17;
          }
        }

        v67 = 1 << *(v21 + 32);
        if (v67 >= 64)
        {
          bzero(v26, ((v67 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v26 = -1 << v67;
        }

        v2 = v77;
        *(v21 + 16) = 0;
        goto LABEL_46;
      }

      v34 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_17:
      v37 = *(v81 + 72);
      outlined init with take of ImportSession.EvaluationFault(*(v21 + 48) + v37 * (v34 | (v25 << 6)), v32);
      v38 = *(v24 + 40);
      Hasher.init(_seed:)();
      outlined init with copy of ImportSession.EvaluationFault(v32, v85);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        break;
      }

      if (EnumCaseMultiPayload <= 4)
      {
        v84 = v37;
        v40 = *v85;
        v41 = v85[1];
        if (EnumCaseMultiPayload == 3)
        {
          v42 = 4;
        }

        else
        {
          v42 = 5;
        }

LABEL_30:
        MEMORY[0x26670FA20](v42);
        String.hash(into:)();

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v84 = v37;
        v45 = *v85;
        v46 = v85[1];
        v47 = 6;
LABEL_27:
        MEMORY[0x26670FA20](v47);
        v32 = v83;
        String.hash(into:)();
        v37 = v84;

        goto LABEL_32;
      }

      MEMORY[0x26670FA20](0);
LABEL_32:
      result = Hasher._finalize()();
      v60 = -1 << *(v24 + 32);
      v61 = result & ~v60;
      v62 = v61 >> 6;
      if (((-1 << v61) & ~*(v31 + 8 * (v61 >> 6))) == 0)
      {
        v63 = 0;
        v64 = (63 - v60) >> 6;
        while (++v62 != v64 || (v63 & 1) == 0)
        {
          v65 = v62 == v64;
          if (v62 == v64)
          {
            v62 = 0;
          }

          v63 |= v65;
          v66 = *(v31 + 8 * v62);
          if (v66 != -1)
          {
            v33 = __clz(__rbit64(~v66)) + (v62 << 6);
            goto LABEL_9;
          }
        }

LABEL_48:
        __break(1u);
        return result;
      }

      v33 = __clz(__rbit64((-1 << v61) & ~*(v31 + 8 * (v61 >> 6)))) | v61 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v31 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      result = outlined init with take of ImportSession.EvaluationFault(v32, *(v24 + 48) + v33 * v37);
      ++*(v24 + 16);
    }

    v84 = v37;
    if (!EnumCaseMultiPayload)
    {
      v48 = *v85;
      v49 = v85[1];
      v47 = 1;
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v43 = *v85;
      v44 = v85[1];
      v42 = 2;
      goto LABEL_30;
    }

    v50 = *v73;
    v69 = v21;
    v51 = v78;
    v50(v78, v85, v80);
    MEMORY[0x26670FA20](3);
    v52 = v79;
    __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
    lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0]);
    v53 = v74;
    dispatch thunk of Hashable.hash(into:)();
    (*v72)(v52, v53);
    v54 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
    Hasher._combine(_:)(v54);
    v55 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
    Hasher._combine(_:)(HIDWORD(v55));
    __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
    Hasher._combine(_:)(v56);
    v57 = v75;
    __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
    lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0]);
    v58 = v76;
    dispatch thunk of Hashable.hash(into:)();
    (*v71)(v57, v58);
    v59 = v51;
    v21 = v69;
    (*v70)(v59, v80);
LABEL_31:
    v32 = v83;
    v37 = v84;
    goto LABEL_32;
  }

LABEL_46:

  *v2 = v24;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16RIOPxrSdfPathRefaGMd, &_ss11_SetStorageCySo16RIOPxrSdfPathRefaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for RIOPxrSdfPathRef(0);
      lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO6InputsC13PropertyDeltaVGMd, &_ss11_SetStorageCy9RealityIO6InputsC13PropertyDeltaVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v20 = *(v6 + 40);
      lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v6 + 16))
  {
    v30 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v32 = *(*(v6 + 48) + 8 * (v18 | (v10 << 6)));
      v21 = *(v9 + 40);
      a4();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v32;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    v5 = v30;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMR);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v3 + 16))
  {
    v34 = v2;
    v7 = 0;
    v35 = (v3 + 56);
    v36 = v3;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v15 | (v7 << 6));
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x26670FA20](0);
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v10 = v37;
      *v14 = v21;
      *(v14 + 8) = v20;
      *(v14 + 16) = v22;
      *(v14 + 24) = v23;
      *(v14 + 32) = v24;
      ++*(v6 + 16);
      v3 = v36;
    }

    v16 = v7;
    result = v35;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v35[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO5StageC16MissingReferenceVGMd, &_ss11_SetStorageCy9RealityIO5StageC16MissingReferenceVGMR);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v6 = 0;
    result = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v36 = v2;
    v37 = (v8 + 63) >> 6;
    v11 = v5 + 56;
    v38 = v3 + 56;
    v39 = v3;
    v40 = v5;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v41 = (v10 - 1) & v10;
LABEL_17:
      v19 = (*(v3 + 48) + 88 * (v16 | (v6 << 6)));
      v20 = *v19;
      *v46 = *(v19 + 1);
      *&v46[3] = *(v19 + 1);
      v22 = *(v19 + 1);
      v21 = *(v19 + 2);
      v23 = *(v19 + 3);
      v24 = *(v19 + 4);
      v25 = *(v19 + 5);
      v26 = *(v19 + 6);
      v42 = *(v19 + 9);
      v43 = *(v19 + 7);
      v44 = *(v19 + 10);
      v45 = *(v19 + 8);
      v27 = *(v5 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x26670FA20](v20);
      String.hash(into:)();
      if (v24)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (v26)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (v45)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (v44)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v5 = v40;
      v28 = -1 << *(v40 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v14 = v44;
        v13 = v45;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v11 + 8 * v30);
          if (v34 != -1)
          {
            v12 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v14 = v44;
      v13 = v45;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v15 = *(v40 + 48) + 88 * v12;
      *v15 = v20;
      *(v15 + 1) = *v46;
      *(v15 + 4) = *&v46[3];
      *(v15 + 8) = v22;
      *(v15 + 16) = v21;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      *(v15 + 40) = v25;
      *(v15 + 48) = v26;
      *(v15 + 56) = v43;
      *(v15 + 64) = v13;
      *(v15 + 72) = v42;
      *(v15 + 80) = v14;
      ++*(v40 + 16);
      result = v38;
      v3 = v39;
      v10 = v41;
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v6 >= v37)
      {
        break;
      }

      v18 = *(result + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      bzero(result, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *result = -1 << v35;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v21 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      specialized Set.hash(into:)(v22, *(v17 + 24));
      specialized Set.hash(into:)(v22, *(v17 + 16));
      Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v17;
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero((v3 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v2 = v21;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 128))(v7);
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 120))(v7);
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrSdfPathRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
  _CFObject.hash(into:)();
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v7, *(a1 + 24));
  specialized Set.hash(into:)(v7, *(a1 + 16));
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(__int128 *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1[1];
  v39 = *a1;
  v40 = v6;
  v41 = a1[2];
  v42 = *(a1 + 48);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  Hasher.init(_seed:)();
  InputDescriptor.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v9 + 48) + 56 * a2;
      v15 = *(v14 + 8);
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      v18 = *(v14 + 32);
      v19 = *(v14 + 40);
      v28 = *v14;
      v29 = v15;
      v30 = v16;
      v31 = v17;
      v32 = v18;
      v33 = v19;
      v34 = *(v14 + 48);
      outlined copy of InputDescriptor(v28, v15, v16, v17, v18, v19, v34);
      v20 = specialized static InputDescriptor.== infix(_:_:)(&v28, &v39);
      outlined consume of InputDescriptor(v28, v29, v30, v31, v32, v33, v34);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v22 = *(v21 + 48) + 56 * a2;
  v23 = v42;
  v24 = v40;
  *v22 = v39;
  *(v22 + 16) = v24;
  *(v22 + 32) = v41;
  *(v22 + 48) = v23;
  v25 = *(v21 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v21 + 16) = v27;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x26670FA00](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1, &_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  else
  {
    if (v6 > v5)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1, &_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
    do
    {
      v18 = *(*(v7 + 48) + 8 * a2);
      v12 = v18;
      v13 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1, &_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR, lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token);
  }

  else
  {
    if (v6 > v5)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1, &_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR, lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
    do
    {
      v18 = *(*(v7 + 48) + 8 * a2);
      v12 = v18;
      v13 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrSdfPathRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
  _CFObject.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = static _CFObject.== infix(_:_:)();

      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = a1;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  (*(*v5 + 128))(v17);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PrimDirtyState();
    do
    {
      v12 = *(**(*(v8 + 48) + 8 * a2) + 136);

      LOBYTE(v12) = v12(v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  (*(*v5 + 120))(v17);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PropertyDirtyState();
    do
    {
      v12 = *(**(*(v8 + 48) + 8 * a2) + 128);

      LOBYTE(v12) = v12(v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_51;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_51;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v51 = *(v5 + 2);
  v52 = *(v5 + 3);
  v53 = *(v5 + 4);
  v54 = *(v5 + 10);
  v49 = *v5;
  v50 = *(v5 + 1);
  Hasher.init(_seed:)();
  Stage.MissingReference.hash(into:)();
  result = Hasher._finalize()();
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = *v5;
    v14 = *(v5 + 1);
    v15 = *(v5 + 2);
    v46 = *(v5 + 4);
    v47 = v15;
    v37 = *(v5 + 5);
    v41 = *(v5 + 6);
    v42 = v8 + 56;
    v35 = *(v5 + 7);
    v38 = *(v5 + 8);
    v39 = *(v5 + 3);
    v34 = *(v5 + 9);
    v36 = *(v5 + 10);
    v16 = *(v8 + 48);
    v48 = v14;
    do
    {
      v17 = (v16 + 88 * a2);
      if (*v17 != v13)
      {
        goto LABEL_11;
      }

      result = v17[1];
      v18 = v17[3];
      v19 = v17[4];
      v21 = v17[5];
      v20 = v17[6];
      v22 = v17[8];
      v44 = v17[7];
      v43 = v17[9];
      v45 = v17[10];
      if (result != v14 || v17[2] != v15)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v47;
        v14 = v48;
        v10 = v42;
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v19)
      {
        if (!v46)
        {
          goto LABEL_11;
        }

        if (v18 != v39 || v19 != v46)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = v47;
          v14 = v48;
          v10 = v42;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v46)
      {
        goto LABEL_11;
      }

      if (v20)
      {
        if (!v41)
        {
          goto LABEL_11;
        }

        if (v21 != v37 || v20 != v41)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = v47;
          v14 = v48;
          v10 = v42;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v41)
      {
        goto LABEL_11;
      }

      if (v22)
      {
        if (!v38)
        {
          goto LABEL_11;
        }

        if (v44 != v35 || v22 != v38)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = v47;
          v14 = v48;
          v10 = v42;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v38)
      {
        goto LABEL_11;
      }

      if (v45)
      {
        if (v36)
        {
          if (v43 == v34 && v45 == v36 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v15 = v47, v14 = v48, v10 = v42, (result & 1) != 0))
          {
LABEL_50:
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!v36)
      {
        goto LABEL_50;
      }

LABEL_11:
      a2 = (a2 + 1) & v12;
    }

    while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_51:
  v27 = *v40;
  *(*v40 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = *(v27 + 48) + 88 * a2;
  v29 = *(v5 + 1);
  *v28 = *v5;
  *(v28 + 16) = v29;
  *(v28 + 80) = *(v5 + 10);
  v30 = *(v5 + 4);
  *(v28 + 48) = *(v5 + 3);
  *(v28 + 64) = v30;
  *(v28 + 32) = *(v5 + 2);
  v31 = *(v27 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v33;
  }

  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMR);
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v20, *(v5 + 24));
  specialized Set.hash(into:)(v20, *(v5 + 16));
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for StageDirtyState();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = *(v12 + 24);
      v14 = *(v5 + 24);

      if (_sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(v13, v14))
      {
        v15 = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*(v12 + 16), *(v5 + 16));

        if (v15)
        {
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v5;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v19;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  outlined init with take of OutputDescriptor(a1, v34);
  v7 = v34[0];
  v8 = v34[1];
  v9 = v34[3];
  v33 = v34[2];
  *v32 = v35;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v30 = v3;
  v31 = a1;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_24;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v32[0]);
  v14 = Hasher._finalize()();
  v15 = v12 + 56;
  v16 = -1 << *(v12 + 32);
  a2 = v14 & ~v16;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v12 + 48);
    do
    {
      v19 = v18 + 40 * a2;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *v19 == v7 && *(v19 + 8) == v8;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v20 == v33 && v21 == v9)
        {
          if (*v32 == v22)
          {
            goto LABEL_23;
          }
        }

        else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((*v32 ^ v22) & 1) == 0)
        {
LABEL_23:
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v25 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of OutputDescriptor(v31, *(v25 + 48) + 40 * a2);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

{
  v4 = v3;
  v8 = type metadata accessor for ImportSession.EvaluationFault(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    specialized _NativeSet.resize(capacity:)(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    v28 = v11;
    specialized _NativeSet.copyAndResize(capacity:)(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  Hasher.init(_seed:)();
  ImportSession.EvaluationFault.hash(into:)(v29);
  v18 = Hasher._finalize()();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      outlined init with copy of ImportSession.EvaluationFault(*(v16 + 48) + v21 * a2, v13);
      v22 = specialized static ImportSession.EvaluationFault.== infix(_:_:)(v13, a1);
      outlined destroy of ImportSession.EvaluationFault(v13);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of ImportSession.EvaluationFault(a1, *(v23 + 48) + *(v9 + 72) * a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v7 = result;
  *&v32 = result;
  *(&v32 + 1) = a2;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta();
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a4 = result & ~v13;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    v30 = v10;
    v31 = v10 + 56;
    do
    {
      v15 = (*(v10 + 48) + 24 * a4);
      v17 = *v15;
      v16 = v15[1];
      v18 = v15[2];

      v19 = v16;
      v20 = v18;
      if (_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v17, v7))
      {
        type metadata accessor for RIOPxrTfTokenRef(0);
        lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
        v21 = v19;
        v22 = *(&v32 + 1);
        v10 = v30;
        v12 = v31;
        v23 = static _CFObject.== infix(_:_:)();

        if (v23)
        {
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v12 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_15:
  v24 = *v29;
  *(*v29 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v24 + 48) + 24 * a4;
  *v25 = v32;
  *(v25 + 16) = a3;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO15InputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO15InputDescriptorOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        v25 = *(v4 + 48) + v17;
        v26 = *(v18 + 48);
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 40) = v24;
        *(v25 + 48) = v26;
        outlined copy of InputDescriptor(v19, v20, v21, v22, v23, v24, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for ImportSession.EvaluationFault(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        outlined init with copy of ImportSession.EvaluationFault(*(v7 + 48) + v22, v6);
        result = outlined init with take of ImportSession.EvaluationFault(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO5StageC16MissingReferenceVGMd, &_ss11_SetStorageCy9RealityIO5StageC16MissingReferenceVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of Stage.MissingReference(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 10);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x58uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16RIOPxrSdfPathRefaGMd, &_ss11_SetStorageCySo16RIOPxrSdfPathRefaGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO6InputsC13PropertyDeltaVGMd, &_ss11_SetStorageCy9RealityIO6InputsC13PropertyDeltaVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;

        v22 = v19;
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO15InputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO15InputDescriptorOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v38 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v33 = v1;
    v34 = (v8 + 63) >> 6;
    v11 = result + 56;
    v35 = v3 + 56;
    v36 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_17:
      v17 = *(v3 + 48) + 56 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 40);
      v24 = *(v17 + 48);
      v25 = *(v38 + 40);
      Hasher.init(_seed:)();
      outlined copy of InputDescriptor(v18, v19, v20, v21, v22, v23, v24);
      InputDescriptor.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v38 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v38 + 48) + 56 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 24) = v21;
      *(v13 + 32) = v22;
      *(v13 + 40) = v23;
      *(v13 + 48) = v24;
      ++*(v38 + 16);
      v7 = v35;
      v3 = v36;
      v10 = v37;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v34)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v38;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      result = MEMORY[0x26670FA00](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(*v18 + 128);

      v20(v30);
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(*v18 + 120);

      v20(v30);
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v33 = (v9 + 63) >> 6;
    v34 = v3;
    v12 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(v3 + 48) + 40 * (v15 | (v7 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x26670FA20](0);

      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v11 = v35;
      *v14 = v20;
      *(v14 + 8) = v19;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v33)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v75 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v13 = *(v77 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ImportSession.EvaluationFault(0);
  v79 = *(v16 - 8);
  v80 = v16;
  v17 = *(v79 + 64);
  MEMORY[0x28223BE20](v16);
  v82 = (&v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v81 = &v65 - v20;
  v21 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v22 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
  v23 = static _SetStorage.resize(original:capacity:move:)();
  result = v21;
  if (!*(v21 + 16))
  {

LABEL_44:
    *v2 = v23;
    return result;
  }

  v70 = v9;
  v71 = v8;
  v72 = v4;
  v73 = v2;
  v25 = 0;
  v26 = v21 + 56;
  v27 = 1 << *(v21 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(v21 + 56);
  v30 = (v27 + 63) >> 6;
  v69 = (v13 + 32);
  v68 = (v10 + 8);
  v67 = (v5 + 8);
  v66 = (v13 + 8);
  v31 = v23 + 56;
  v32 = v81;
  v78 = result;
  while (v29)
  {
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
LABEL_17:
    v37 = *(v79 + 72);
    outlined init with copy of ImportSession.EvaluationFault(*(result + 48) + v37 * (v34 | (v25 << 6)), v32);
    v38 = *(v23 + 40);
    Hasher.init(_seed:)();
    outlined init with copy of ImportSession.EvaluationFault(v32, v82);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v48 = *v82;
        v49 = v82[1];
        v47 = 1;
        goto LABEL_27;
      }

      v76 = v37;
      if (EnumCaseMultiPayload == 1)
      {
        v43 = *v82;
        v44 = v82[1];
        MEMORY[0x26670FA20](2);
        String.hash(into:)();
      }

      else
      {
        v50 = v74;
        (*v69)(v74, v82, v77);
        MEMORY[0x26670FA20](3);
        v51 = v75;
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0]);
        v52 = v70;
        dispatch thunk of Hashable.hash(into:)();
        (*v68)(v51, v52);
        v53 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        Hasher._combine(_:)(v53);
        v54 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        Hasher._combine(_:)(HIDWORD(v54));
        __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        Hasher._combine(_:)(v55);
        v56 = v71;
        __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
        lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0]);
        v57 = v72;
        dispatch thunk of Hashable.hash(into:)();
        (*v67)(v56, v57);
        (*v66)(v50, v77);
      }

      v32 = v81;
      v37 = v76;
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v45 = *v82;
        v46 = v82[1];
        v47 = 6;
LABEL_27:
        MEMORY[0x26670FA20](v47);
        v32 = v81;
        String.hash(into:)();

        goto LABEL_33;
      }

      MEMORY[0x26670FA20](0);
    }

    else
    {
      v40 = *v82;
      v41 = v82[1];
      if (EnumCaseMultiPayload == 3)
      {
        v42 = 4;
      }

      else
      {
        v42 = 5;
      }

      MEMORY[0x26670FA20](v42);
      String.hash(into:)();

      v32 = v81;
    }

LABEL_33:
    result = Hasher._finalize()();
    v58 = -1 << *(v23 + 32);
    v59 = result & ~v58;
    v60 = v59 >> 6;
    if (((-1 << v59) & ~*(v31 + 8 * (v59 >> 6))) == 0)
    {
      v61 = 0;
      v62 = (63 - v58) >> 6;
      while (++v60 != v62 || (v61 & 1) == 0)
      {
        v63 = v60 == v62;
        if (v60 == v62)
        {
          v60 = 0;
        }

        v61 |= v63;
        v64 = *(v31 + 8 * v60);
        if (v64 != -1)
        {
          v33 = __clz(__rbit64(~v64)) + (v60 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_46;
    }

    v33 = __clz(__rbit64((-1 << v59) & ~*(v31 + 8 * (v59 >> 6)))) | v59 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v31 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    outlined init with take of ImportSession.EvaluationFault(v32, *(v23 + 48) + v33 * v37);
    ++*(v23 + 16);
    result = v78;
  }

  v35 = v25;
  while (1)
  {
    v25 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v25 >= v30)
    {

      v2 = v73;
      goto LABEL_44;
    }

    v36 = *(v26 + 8 * v25);
    ++v35;
    if (v36)
    {
      v34 = __clz(__rbit64(v36));
      v29 = (v36 - 1) & v36;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16RIOPxrSdfPathRefaGMd, &_ss11_SetStorageCySo16RIOPxrSdfPathRefaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for RIOPxrSdfPathRef(0);
      lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(&lazy protocol witness table cache variable for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef, type metadata accessor for RIOPxrSdfPathRef);
      v19 = v17;
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v19;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO5StageC16MissingReferenceVGMd, &_ss11_SetStorageCy9RealityIO5StageC16MissingReferenceVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_37:
    *v2 = v6;
    return result;
  }

  v37 = v2;
  v38 = v3;
  v7 = 0;
  v8 = v3 + 56;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v39 = (v11 - 1) & v11;
LABEL_17:
    v23 = *(v3 + 48) + 88 * (v20 | (v7 << 6));
    v25 = *(v23 + 48);
    v24 = *(v23 + 64);
    v26 = *(v23 + 32);
    v46 = *(v23 + 80);
    v44 = v25;
    v45 = v24;
    v43 = v26;
    v27 = *(v23 + 16);
    v41 = *v23;
    v42 = v27;
    v28 = *(v6 + 40);
    Hasher.init(_seed:)();
    v29 = v43;
    MEMORY[0x26670FA20](v41);
    outlined init with copy of Stage.MissingReference(&v41, v40);
    String.hash(into:)();
    if (v29)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v44)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v44)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (v45)
        {
          goto LABEL_20;
        }

        goto LABEL_24;
      }
    }

    Hasher._combine(_:)(0);
    if (v45)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v46)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }

LABEL_24:
    Hasher._combine(_:)(0);
    if (v46)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_26;
    }

LABEL_25:
    Hasher._combine(_:)(0);
LABEL_26:
    v3 = v38;
    result = Hasher._finalize()();
    v30 = -1 << *(v6 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v30) >> 6;
      while (++v32 != v34 || (v33 & 1) == 0)
      {
        v35 = v32 == v34;
        if (v32 == v34)
        {
          v32 = 0;
        }

        v33 |= v35;
        v36 = *(v13 + 8 * v32);
        if (v36 != -1)
        {
          v14 = __clz(__rbit64(~v36)) + (v32 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_39;
    }

    v14 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v6 + 48) + 88 * v14;
    v16 = v42;
    *v15 = v41;
    v17 = v43;
    v18 = v44;
    v19 = v45;
    *(v15 + 80) = v46;
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    *(v15 + 16) = v16;
    *(v15 + 32) = v17;
    ++*(v6 + 16);
    v11 = v39;
  }

  v21 = v7;
  while (1)
  {
    v7 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v37;
      goto LABEL_37;
    }

    v22 = *(v8 + 8 * v7);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v39 = (v22 - 1) & v22;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO6InputsC13PropertyDeltaVGMd, &_ss11_SetStorageCy9RealityIO6InputsC13PropertyDeltaVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = v19[1];
      v21 = v19[2];
      *&v35 = *v19;
      *(&v35 + 1) = v20;
      v22 = *(v6 + 40);
      lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta();

      v23 = v20;
      v24 = v21;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v3 = v33;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v3 = v33;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v35;
      *(v15 + 16) = v21;
      ++*(v6 + 16);
      v11 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}