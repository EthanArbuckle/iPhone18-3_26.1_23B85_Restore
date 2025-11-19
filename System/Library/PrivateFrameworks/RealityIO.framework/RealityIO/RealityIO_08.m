void specialized Properties.subscript.setter(uint64_t a1, char a2)
{
  swift_getAtKeyPath();
  if (a2)
  {

    return;
  }

  v5 = *v2;
  if (String.count.getter() <= 0)
  {

    v6 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();

    v6 = RIOPxrTfTokenCreateWithCString();
  }

  Int32 = RIOPxrSdfValueTypeNameCreateInt32();
  v8 = *(v5 + 16);
  Attribute = RIOPxrUsdPrimCreateAttribute();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v10 = Attribute;
  v11 = RIOPxrVtValueCreateWithInt32();
  v12 = RIOPxrUsdAttributeSetValue();

  if (!v12)
  {
  }
}

{
  swift_getAtKeyPath();
  if (a2)
  {
  }

  else
  {
    v4 = *v2;
    if (String.count.getter() <= 0)
    {

      v5 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v5 = RIOPxrTfTokenCreateWithCString();
    }

    Double = RIOPxrSdfValueTypeNameCreateDouble();
    v7 = *(v4 + 16);
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v9 = RIOPxrVtValueCreateWithDouble();
    v10 = RIOPxrUsdAttributeSetValue();

    if (!v10)
    {
    }
  }
}

void specialized Properties.subscript.setter(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (a2)
  {
    v4 = *v2;
    if (String.count.getter() <= 0)
    {

      v5 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v5 = RIOPxrTfTokenCreateWithCString();
    }

    String = RIOPxrSdfValueTypeNameCreateString();
    v7 = *(v4 + 16);
    Attribute = RIOPxrUsdPrimCreateAttribute();
    String.utf8CString.getter();
    v9 = RIOPxrVtValueCreateWithCString();

    v10 = RIOPxrUsdAttributeSetValue();

    if (!v10)
    {
    }
  }

  else
  {
  }
}

void specialized Properties.subscript.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_getAtKeyPath();
  if (a1[4])
  {
  }

  else
  {
    v7 = *v1;
    if (String.count.getter() <= 0)
    {

      v8 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v8 = RIOPxrTfTokenCreateWithCString();
    }

    Double3 = RIOPxrSdfValueTypeNameCreateDouble3();
    v10 = *(v7 + 16);
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v12 = RIOPxrVtValueCreateWithDouble3();
    v13 = RIOPxrUsdAttributeSetValue();

    if (!v13)
    {
    }
  }
}

{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_getAtKeyPath();
  if (a1[4])
  {
  }

  else
  {
    v7 = *v1;
    if (String.count.getter() <= 0)
    {

      v8 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v8 = RIOPxrTfTokenCreateWithCString();
    }

    Quatd = RIOPxrSdfValueTypeNameCreateQuatd();
    v10 = *(v7 + 16);
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v12 = RIOPxrVtValueCreateWithQuatd();
    v13 = RIOPxrUsdAttributeSetValue();

    if (!v13)
    {
    }
  }
}

void specialized Properties.subscript.setter(uint64_t a1)
{
  swift_getAtKeyPath();
  if (a1)
  {
    v3 = *v1;
    if (String.count.getter() <= 0)
    {

      v4 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v4 = RIOPxrTfTokenCreateWithCString();
    }

    TokenArray = RIOPxrSdfValueTypeNameCreateTokenArray();
    v6 = *(v3 + 16);
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v8 = specialized static ToolsFoundations.Token.vtValue(from:)(a1);
    v9 = RIOPxrUsdAttributeSetValue();

    if (!v9)
    {
    }
  }

  else
  {
  }
}

void specialized Properties.subscript.setter(void *a1, uint64_t a2, uint64_t (*a3)(id), uint64_t (*a4)(void *))
{
  swift_getAtKeyPath();
  if (a1)
  {
    v8 = *v4;
    if (String.count.getter() <= 0)
    {

      v10 = RIOPxrTfTokenEmpty();
      v9 = v10;
    }

    else
    {
      String.utf8CString.getter();

      v9 = RIOPxrTfTokenCreateWithCString();
    }

    v11 = a3(v10);
    v12 = *(v8 + 16);
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v14 = a4(a1);
    v15 = RIOPxrUsdAttributeSetValue();

    if (!v15)
    {
    }
  }

  else
  {
  }
}

void specialized Properties.subscript.setter(unsigned __int8 a1)
{
  v2 = a1;
  swift_getAtKeyPath();
  if (v2 == 2)
  {
  }

  else
  {
    v3 = *v1;
    if (String.count.getter() <= 0)
    {

      v4 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v4 = RIOPxrTfTokenCreateWithCString();
    }

    Bool = RIOPxrSdfValueTypeNameCreateBool();
    v6 = *(v3 + 16);
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v8 = RIOPxrVtValueCreateWithBool();
    v9 = RIOPxrUsdAttributeSetValue();

    if (!v9)
    {
    }
  }
}

id closure #1 in Stage.setTrigger(trigger:at:mapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  if (*(a2 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v13 & 1) != 0))
  {
    *a6 = *(*(a2 + 56) + 8 * v12);
  }

  else
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
    v15 = swift_allocError();
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
    v19 = *(v18 + 48);
    v20 = *(v18 + 64);
    *v17 = a3;
    v21 = type metadata accessor for __RKEntityTriggerSpecification();
    (*(*(v21 - 8) + 16))(&v17[v19], a4, v21);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 16))(&v17[v20], a1, v22);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *a5 = v15;
    return a3;
  }
}

void Stage.makeParentPrim(from:baseName:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v23 = *a1;
  SceneDescriptionFoundations.Path.deletingLastPathComponent()(&v21);
  v8 = v21;
  v20 = a2;
  SceneDescriptionFoundations.Path.appendingPathComponent(_:)(a2, a3, &v23);
  v9 = *(v4 + 16);
  v10 = v23;
  if (RIOPxrUsdStageHasPrimAtPrimPath())
  {
    v19 = a4;
    v11 = 0;
    while (!__OFADD__(v11, 1))
    {
      v21 = v20;
      v22 = a3;

      MEMORY[0x26670F080](95, 0xE100000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26670F080](v12);

      v14 = v21;
      v13 = v22;
      v15 = RIOPxrSdfPathCopyString();
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v16 == 47 && v18 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v21 = 47;
        v22 = 0xE100000000000000;
      }

      else
      {
        v21 = v16;
        v22 = v18;
        MEMORY[0x26670F080](47, 0xE100000000000000);
      }

      MEMORY[0x26670F080](v14, v13);
      String.utf8CString.getter();

      v10 = RIOPxrSdfPathCreateFromCString();

      v23 = v10;
      ++v11;
      if ((RIOPxrUsdStageHasPrimAtPrimPath() & 1) == 0)
      {
        a4 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *a4 = v10;
  }
}

void setRotationAxis #1 (direction:axis:on:) in Stage.setAction(action:at:mapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7)
{
  *&v38 = a7;
  v41 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a1, &v37 - v14, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  v16 = type metadata accessor for __RKEntitySpinDirectionType();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  *&v19 = 1.0;
  if (v18 != 1)
  {
    v20 = (*(v17 + 88))(v15, v16, 1.0);
    if (v20 != *MEMORY[0x277CDAF28])
    {
      *&v19 = -1.0;
      if (v20 == *MEMORY[0x277CDAF20])
      {
        goto LABEL_6;
      }

      (*(v17 + 8))(v15, v16, -1.0);
    }

    *&v19 = 1.0;
  }

LABEL_6:
  if (a4)
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
    swift_allocError();
    v22 = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMR);
    v24 = *(v23 + 48);
    v25 = &v22[*(v23 + 64)];
    *v22 = a6;
    v26 = type metadata accessor for __RKEntityActionSpecification();
    (*(*(v26 - 8) + 16))(&v22[v24], v38, v26);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    *v25 = 1936291937;
    *(v25 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v27 = a6;
  }

  else
  {
    v38 = v19;
    *&v28.f64[0] = a2;
    *&v28.f64[1] = a3;
    v37 = v28;
    if (String.count.getter() < 1)
    {
      v29 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v29 = RIOPxrTfTokenCreateWithCString();
    }

    v30 = v29;
    *&v31 = *&v38 * *&v37.f64[1];
    v37 = vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(HIDWORD(v37.f64[0]), a2)), *&v38);
    v38 = v31;
    Double3 = RIOPxrSdfValueTypeNameCreateDouble3();
    v33 = *(v41 + 16);
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v39 = v37;
    v40 = v38;
    v35 = RIOPxrVtValueCreateWithDouble3();
    v36 = RIOPxrUsdAttributeSetValue();

    if ((v36 & 1) == 0)
    {
    }
  }
}

void setEaseType #1 (ease:easeType:on:) in Stage.setAction(action:at:mapping:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v55 = a5;
  v56 = a4;
  v57 = a3;
  v7 = type metadata accessor for __RKEntityMoveEaseType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v52 - v12;
  MEMORY[0x28223BE20](v13);
  v53 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v52 - v24;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a1, &v52 - v24, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  v26 = type metadata accessor for __RKEntityMoveEase();
  LODWORD(a1) = (*(*(v26 - 8) + 48))(v25, 1, v26);
  outlined destroy of Any?(v25, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  if (a1 != 1)
  {
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a2, v21, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
    v27 = (*(v8 + 48))(v21, 1, v7);
    outlined destroy of Any?(v21, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
    if (v27 == 1)
    {
      if (String.count.getter() >= 1)
      {
        v28 = RIOPxrTfTokenCreateWithCString();
LABEL_16:
        v44 = v28;
        goto LABEL_17;
      }

      v42 = RIOPxrTfTokenEmpty();
LABEL_15:
      v28 = v42;
      goto LABEL_16;
    }
  }

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a2, v18, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  if ((*(v8 + 48))(v18, 1, v7) == 1)
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors);
    swift_allocError();
    v30 = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMR);
    v32 = *(v31 + 48);
    v33 = &v30[*(v31 + 64)];
    v34 = v56;
    *v30 = v56;
    v35 = type metadata accessor for __RKEntityActionSpecification();
    (*(*(v35 - 8) + 16))(&v30[v32], v55, v35);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    *v33 = 0x6570795465736165;
    *(v33 + 1) = 0xE800000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v36 = v34;
    return;
  }

  v37 = v53;
  (*(v8 + 32))(v53, v18, v7);
  v38 = *(v8 + 16);
  v39 = v54;
  v38(v54, v37, v7);
  v40 = v52;
  v38(v52, v39, v7);
  v41 = (*(v8 + 88))(v40, v7);
  if (v41 != *MEMORY[0x277CDAE60] && v41 != *MEMORY[0x277CDAE68] && v41 != *MEMORY[0x277CDAE58])
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  v43 = *(v8 + 8);
  v43(v39, v7);
  v43(v37, v7);
  if (String.count.getter() < 1)
  {

    v42 = RIOPxrTfTokenEmpty();
    goto LABEL_15;
  }

  String.utf8CString.getter();

  v44 = RIOPxrTfTokenCreateWithCString();

LABEL_17:
  if (String.count.getter() < 1)
  {
    v45 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v45 = RIOPxrTfTokenCreateWithCString();
  }

  v46 = v45;
  Token = RIOPxrSdfValueTypeNameCreateToken();
  v48 = *(v57 + 16);
  Attribute = RIOPxrUsdPrimCreateAttribute();
  v50 = RIOPxrVtValueCreateWithToken();
  v51 = RIOPxrUsdAttributeSetValue();

  if ((v51 & 1) == 0)
  {
  }
}

uint64_t key path setter for Xformable.xformTranslateOp : Xformable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v8[0] = v3;
  v8[1] = v2;
  v6 = *(v5 + 24);

  return v6(v8, v4, v5);
}

uint64_t key path setter for Xformable.xformOrientOp : Xformable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v8[0] = v3;
  v8[1] = v2;
  v6 = *(v5 + 48);

  return v6(v8, v4, v5);
}

uint64_t key path setter for Xformable.xformScaleOp : Xformable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v8[0] = v3;
  v8[1] = v2;
  v6 = *(v5 + 72);

  return v6(v8, v4, v5);
}

uint64_t key path setter for Xformable.xformOpOrder : Xformable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v8[0] = v3;
  v8[1] = v2;
  v6 = *(v5 + 96);

  return v6(v8, v4, v5);
}

void *key path getter for BehaviorSchema.triggers : BehaviorSchema@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, uint64_t, uint64_t)@<X3>, void *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v9, v5, v6);
  v8 = v9[1];
  *a3 = v9[0];
  a3[1] = v8;
  return result;
}

uint64_t key path setter for BehaviorSchema.triggers : BehaviorSchema(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11[0] = v7;
  v11[1] = v6;

  return a5(v11, v8, v9);
}

uint64_t SceneDescriptionFoundations.Path.lastPathComponent.getter()
{
  v1 = *v0;
  v2 = RIOPxrSdfPathCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v14[0] = 47;
  v14[1] = 0xE100000000000000;
  v6 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v3, v5, v14);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32 * v7);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X8>)
{
  v35 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v8 = a5;
  v9 = a4;
  v13 = HIBYTE(a5) & 0xF;
  if (a1)
  {
    v14 = (a5 & 0x2000000000000000) != 0 ? HIBYTE(a5) & 0xF : a4 & 0xFFFFFFFFFFFFLL;
    if (v14)
    {
      v15 = 7;
      if (((a5 >> 60) & ((a4 & 0x800000000000000) == 0)) != 0)
      {
        v15 = 11;
      }

      v30 = v15 | (v14 << 16);
      v16 = 4 * v14;
      v12 = MEMORY[0x277D84F90];
      v17 = 15;
      do
      {
        v18 = v17 >> 14;
        if (v17 >> 14 == v16)
        {
          break;
        }

        v32 = v12;
        v29 = a1;
        while (2)
        {
          v33 = v17;
          while (1)
          {
            v34[0] = String.subscript.getter();
            v34[1] = v19;
            v20 = v35(v34);
            if (v7)
            {

              return v12;
            }

            v12 = v20;

            if (v12)
            {
              break;
            }

            v17 = String.index(after:)();
            v18 = v17 >> 14;
            if (v17 >> 14 == v16)
            {
              v12 = v32;
              v17 = v33;
              goto LABEL_39;
            }
          }

          if (v33 >> 14 == v18 && (a2 & 1) != 0)
          {
            v17 = String.index(after:)();
            v18 = v17 >> 14;
            if (v17 >> 14 != v16)
            {
              continue;
            }

            v12 = v32;
            goto LABEL_39;
          }

          break;
        }

        v12 = v32;
        if (v18 < v33 >> 14)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          return result;
        }

        if (v16 < v18)
        {
          goto LABEL_54;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
        }

        v23 = v12[2];
        v22 = v12[3];
        if (v23 >= v22 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v12);
        }

        v12[2] = v23 + 1;
        v24 = &v12[4 * v23];
        v24[4] = v33;
        v24[5] = v17;
        v24[6] = v9;
        v24[7] = v8;
        v17 = String.index(after:)();
        a1 = v29;
      }

      while (v12[2] != v29);
LABEL_39:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v12;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_44:
        v28 = v12[2];
        v27 = v12[3];
        if (v28 >= v27 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v12);
        }

        v12[2] = v28 + 1;
        v26 = &v12[4 * v28];
        v26[4] = v17;
        v26[5] = v30;
        goto LABEL_47;
      }

      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      goto LABEL_44;
    }
  }

  if ((a5 & 0x2000000000000000) == 0)
  {
    v13 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v25 = 7;
  if (((a5 >> 60) & ((a4 & 0x800000000000000) == 0)) != 0)
  {
    v25 = 11;
  }

  if (v13 || (a2 & 1) == 0)
  {
    v10 = v25 | (v13 << 16);
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = v12[2];
    a6 = v12[3];
    v6 = v11 + 1;
    if (v11 < a6 >> 1)
    {
LABEL_37:
      v12[2] = v6;
      v26 = &v12[4 * v11];
      v26[4] = 15;
      v26[5] = v10;
LABEL_47:
      v26[6] = v9;
      v26[7] = v8;
      return v12;
    }

LABEL_50:
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a6 > 1), v6, 1, v12);
    goto LABEL_37;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t specialized Properties.subscript.setter(uint64_t a1)
{
  swift_getAtKeyPath();
  if (a1)
  {
    v3 = *v1;
    if (String.count.getter() <= 0)
    {

      v4 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v4 = RIOPxrTfTokenCreateWithCString();
    }

    v5 = *(v3 + 16);
    Relationship = RIOPxrUsdPrimCreateCreateRelationship();
    v7 = *(a1 + 16);
    if (v7)
    {
      v13 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v8 = 32;
      do
      {
        v9 = *(a1 + v8);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = *(v13 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 += 8;
        --v7;
      }

      while (v7);
    }

    type metadata accessor for RIOPxrSdfPathRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    RIOPxrUsdRelationshipSetTargets();
  }

  else
  {
  }
}

uint64_t type metadata completion function for InteractionSpecificationsUSDStageErrors.InteractionType()
{
  result = type metadata accessor for __RKEntityTriggerSpecification();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for __RKEntityActionSpecification();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for InteractionSpecificationsUSDStageErrors()
{
  type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, target: UUID)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, valueName: String)();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, target: UUID)()
{
  if (!lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, target: UUID))
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(255);
    type metadata accessor for UUID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, target: UUID));
    }
  }
}

void type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType)()
{
  if (!lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType))
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType));
    }
  }
}

void type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, valueName: String)()
{
  if (!lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, valueName: String))
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, valueName: String));
    }
  }
}

uint64_t outlined init with copy of InteractionSpecificationsUSDStageErrors(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of InteractionSpecificationsUSDStageErrors.InteractionType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of InteractionSpecificationsUSDStageErrors.InteractionType(uint64_t a1)
{
  v2 = type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int BuilderOrder.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type BuilderOrder and conformance BuilderOrder()
{
  result = lazy protocol witness table cache variable for type BuilderOrder and conformance BuilderOrder;
  if (!lazy protocol witness table cache variable for type BuilderOrder and conformance BuilderOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderOrder and conformance BuilderOrder);
  }

  return result;
}

uint64_t closure #1 in static ActionBuilder.generateNotificationActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for __RKEntityActionSpecification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8, a2, v14);
  (*(v15 + 56))(v8, 0, 1, v14);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __RKEntityCustomActionArguments.init(target:actionIdentifier:customArguments:)();
  (*(v10 + 104))(v13, *MEMORY[0x277CDAFA8], v9);
  v16 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    *a3 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v16);
    *a3 = v16;
  }

  v16[2] = v19 + 1;
  return (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, v13, v9);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t specialized static ActionBuilder.generateNotificationActionSpecifications(inputs:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v26 - v2;
  v4 = type metadata accessor for __RKEntityGroupActionOrder();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSS_Tt1g5Tf4ndn_n();
  v11 = v10;
  v19 = *(specialized Inputs.pathsForRelationship(named:requestContext:)() + 16);

  if (v19)
  {
    v26[0] = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](v20);
    v26[-4] = v26;
    v26[-3] = v9;
    v26[-2] = v11;
    specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateNotificationActionSpecifications(inputs:), &v26[-6]);

    result = v26[0];
    if (*(v26[0] + 16) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v21 = type metadata accessor for __RKEntityActionSpecification();
      v22 = *(v21 - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2619891C0;
      (*(v5 + 104))(v8, *MEMORY[0x277CDAEF8], v4);

      __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
      (*(v22 + 104))(v25 + v24, *MEMORY[0x277CDAFA0], v21);

      return v25;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v12 = type metadata accessor for __RKEntityActionSpecification();
    v13 = *(v12 - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2619891C0;
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    __RKEntityCustomActionArguments.init(target:actionIdentifier:customArguments:)();
    (*(v13 + 104))(v16 + v15, *MEMORY[0x277CDAFA8], v12);
    return v16;
  }

  return result;
}

uint64_t partial apply for closure #1 in static ActionBuilder.generateNotificationActionSpecifications(inputs:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return closure #1 in static ActionBuilder.generateNotificationActionSpecifications(inputs:)(a1, a2, *(v2 + 16));
}

uint64_t USDImportService.__allocating_init()()
{
  v0 = swift_allocObject();
  static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v1 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  return v0;
}

char *_s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(char *a1, int a2, int a3, int a4)
{
  v30[0] = a2;
  v30[1] = a3;
  v6 = type metadata accessor for __EngineRef();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11, v14);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v7 + 8))(v10, v6);
  if (specialized static USDImportService.canLoad(url:)())
  {
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v20 = (v12 + 8);
    if (a4)
    {
      SingleUseImporterWithURL = RIOImportSessionCreateSingleUseImporterWithURL();
    }

    else
    {
      SingleUseImporterWithURL = RIOImportSessionCreateWithURL();
    }

    v24 = SingleUseImporterWithURL;

    v25 = type metadata accessor for ImportSession(0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ06AnchorK0C_Tt0g5(v24);
    v29 = *v20;
    (*v20)(a1, v11);
    v29(v16, v11);
    return v28;
  }

  else
  {
    v22 = *(v12 + 8);
    v22(a1, v11);
    v22(v16, v11);
    return 0;
  }
}

uint64_t static USDImportService.urlForUSD(named:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v18);
  v68 = &v55 - v19;
  v69 = v7;
  v20 = 0;
  v66 = (v8 + 56);
  v67 = v11;
  v64 = (v8 + 48);
  v59 = 0;
  v60 = (v8 + 32);
  v57 = (v8 + 8);
  v58 = a3;
  v61 = v17;
  v62 = a1;
  v56 = a2;
  while (1)
  {
    v21 = &outlined read-only object #0 of one-time initialization function for supportedFilePathExtensions + 16 * v20;
    v23 = *(v21 + 4);
    v22 = *(v21 + 5);

    v24 = MEMORY[0x26670EFB0](a1, a2);
    v25 = a2;
    if (v22)
    {

      v26 = MEMORY[0x26670EFB0](v23, v22);
    }

    else
    {
      v26 = 0;
    }

    v27 = a3;
    v28 = [a3 URLForResource:v24 withExtension:{v26, v55}];

    if (v28)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = v67;
    v31 = v69;
    v63 = *v66;
    v63(v17, v29, 1, v69);
    v32 = v17;
    v33 = v68;
    outlined init with take of URL?(v32, v68);
    v34 = v65;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v33, v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*v64)(v34, 1, v31) != 1)
    {
      break;
    }

    outlined destroy of Any?(v33, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    outlined destroy of Any?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v17 = v61;
    a3 = v27;
    a2 = v25;
LABEL_3:
    a1 = v62;
    if (++v20 == 6)
    {
      v53 = 1;
      v54 = v55;
      v48 = v69;
      return (v63)(v54, v53, 1, v48);
    }
  }

  v35 = *v60;
  (*v60)(v30, v34, v31);
  if (!v22)
  {
    result = URL.isFileURL.getter();
    if (result)
    {
      v37 = 0;
      v38 = MEMORY[0x277D84F90];
LABEL_14:
      v39 = 6;
      if (v37 > 6)
      {
        v39 = v37;
      }

      v40 = v39 + 1;
      v41 = (&outlined read-only object #0 of one-time initialization function for supportedFilePathExtensions + 16 * v37 + 40);
      while (v37 != 6)
      {
        if (v40 == ++v37)
        {
          __break(1u);
          return result;
        }

        v42 = v41 + 2;
        v43 = *v41;
        v41 += 2;
        if (v43)
        {
          v44 = *(v42 - 3);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1, v38);
            v38 = result;
          }

          v46 = *(v38 + 16);
          v45 = *(v38 + 24);
          if (v46 >= v45 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v38);
            v38 = result;
          }

          *(v38 + 16) = v46 + 1;
          v47 = v38 + 16 * v46;
          *(v47 + 32) = v44;
          *(v47 + 40) = v43;
          goto LABEL_14;
        }
      }

      URL.pathExtension.getter();
      v49 = String.lowercased()();

      v70 = v49;
      v30 = v67;
      MEMORY[0x28223BE20](v50);
      *(&v55 - 2) = &v70;
      v51 = v59;
      v52 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v55 - 4), v38);
      v59 = v51;
      v48 = v69;

      outlined destroy of Any?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      if (v52)
      {
        goto LABEL_31;
      }

      a3 = v58;
      v17 = v61;
    }

    else
    {
      outlined destroy of Any?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      a3 = v58;
      v17 = v61;
      v48 = v69;
    }

    (*v57)(v30, v48);
    a2 = v56;
    goto LABEL_3;
  }

  outlined destroy of Any?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v48 = v69;
LABEL_31:
  v54 = v55;
  v35(v55, v30, v48);
  v53 = 0;
  return (v63)(v54, v53, 1, v48);
}

uint64_t USDImportService.init()()
{
  v1 = v0;
  static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  return v1;
}

BOOL static USDImportService.canLoad(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  static USDImportService.urlForUSD(named:in:)(a1, a2, a3, &v13 - v8);
  v10 = type metadata accessor for URL();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  outlined destroy of Any?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v11;
}

unint64_t USDImportService.LoadError.errorDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  Error = type metadata accessor for USDImportService.LoadError();
  v10 = *(*(Error - 8) + 64);
  MEMORY[0x28223BE20](Error);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of USDImportService.LoadError(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD000000000000033;
      }

      else
      {
        return 0xD00000000000002DLL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000030;
    }

    else
    {
      return 0xD000000000000037;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = *v12;
        v35 = 0;
        v36 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        MEMORY[0x26670F080](0xD000000000000034, 0x80000002619974C0);
        v20 = Dictionary.description.getter();
        v22 = v21;

        MEMORY[0x26670F080](v20, v22);

        return v35;
      }

      v27 = *v12;
      v28 = v12[1];
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x26670F080](0xD00000000000001ALL, 0x8000000261997480);
      v34 = v27;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26670F080](v29);

      MEMORY[0x26670F080](0xD000000000000013, 0x80000002619974A0);
      v34 = v28;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26670F080](v30);

      v16 = 0x62616C6961766120;
      v17 = 0xEA0000000000656CLL;
LABEL_16:
      MEMORY[0x26670F080](v16, v17);
      return v35;
    }

    if (!EnumCaseMultiPayload)
    {
      v14 = *v12;
      v15 = v12[1];
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v35 = 0xD000000000000023;
      v36 = 0x8000000261995C60;
      MEMORY[0x26670F080](v14, v15);

      v16 = 0x6E7562206E692022;
      v17 = 0xEB00000000656C64;
      goto LABEL_16;
    }

    outlined init with take of URL?(v12, v8);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v35 = 0xD00000000000001ELL;
    v36 = 0x80000002619975C0;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v8, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v23 = type metadata accessor for URL();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v5, 1, v23) == 1)
    {
      outlined destroy of Any?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      object = 0xE600000000000000;
      countAndFlagsBits = 0x79726F6D656DLL;
    }

    else
    {
      v31 = URL.path(percentEncoded:)(1);
      object = v31._object;
      (*(v24 + 8))(v5, v23);
      countAndFlagsBits = v31._countAndFlagsBits;
    }

    MEMORY[0x26670F080](countAndFlagsBits, object);

    MEMORY[0x26670F080](34, 0xE100000000000000);
    v32 = v35;
    outlined destroy of Any?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return v32;
  }
}

uint64_t USDImportService.load(with:)(uint64_t Error)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v173 = v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v174 = v163 - v6;
  MEMORY[0x28223BE20](v7);
  v167 = v163 - v8;
  MEMORY[0x28223BE20](v9);
  v166 = v163 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v163 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v163 - v15;
  v180 = type metadata accessor for URL();
  v175 = *(v180 - 8);
  v17 = *(v175 + 64);
  MEMORY[0x28223BE20](v180);
  v168 = v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v172 = v163 - v20;
  MEMORY[0x28223BE20](v21);
  v171 = v163 - v22;
  MEMORY[0x28223BE20](v23);
  v169 = v163 - v24;
  MEMORY[0x28223BE20](v25);
  v165 = v163 - v26;
  MEMORY[0x28223BE20](v27);
  v164 = v163 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = v163 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v163 - v33;
  if (*(Error + 16))
  {
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x8000000261997180);
    if (v36)
    {
      outlined init with copy of Any(*(Error + 56) + 32 * v35, &v178);
      if (swift_dynamicCast())
      {
        if (v176)
        {
          if (one-time initialization token for rioAudio != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          __swift_project_value_buffer(v37, static Logger.rioAudio);
          v38 = static os_log_type_t.error.getter();
          v39 = Logger.logObject.getter();
          if (os_log_type_enabled(v39, v38))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_26187B000, v39, v38, "Ignoring generateDecimatedMesh param: no longer supported.", v40, 2u);
            MEMORY[0x266713AD0](v40, -1, -1);
          }
        }
      }
    }
  }

  if (*(Error + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v42 & 1) != 0) && (outlined init with copy of Any(*(Error + 56) + 32 * v41, &v178), (swift_dynamicCast() & 1) != 0))
  {
    v43 = 0xD000000000000013;
    if (v176 == 0x6D6F724664616F4CLL && v177 == 0xEB000000004C5255)
    {
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v51 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*(Error + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746E65746E6F63, 0xEA0000000000664FLL), (v53 & 1) != 0))
    {
      outlined init with copy of Any(*(Error + 56) + 32 * v52, &v178);
      v54 = v180;
      v55 = swift_dynamicCast();
      v56 = v175;
      v163[0] = *(v175 + 56);
      v163[1] = v175 + 56;
      (v163[0])(v16, v55 ^ 1u, 1, v54);
      if ((*(v56 + 48))(v16, 1, v54) != 1)
      {
        (*(v175 + 32))(v34, v16, v180);
        if (*(Error + 16))
        {
          v57 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D614E68746977, 0xE800000000000000);
          if (v58)
          {
            outlined init with copy of Any(*(Error + 56) + 32 * v57, &v178);
            if (swift_dynamicCast())
            {
            }
          }
        }

        v59 = type metadata accessor for Entity();
        v60 = specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(v34, v59, 0, 0);
        if (!v60)
        {
          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          swift_allocError();
          v87 = v86;
          v88 = v175;
          v13 = v180;
          (*(v175 + 16))(v86, v34, v180);
          (v163[0])(v87, 0, 1, v13);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_177;
        }

        v16 = v60;
        Error = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v61 = *&v16[Error];
        RIOImportSessionUpdateSynchronouslyOnEngineQueue();
        v62 = *&v16[Error];
        result = RIOImportSessionGetSceneCount();
        v13 = v180;
        if ((result & 0x8000000000000000) == 0)
        {
          v64 = result;
          if (!result)
          {
            goto LABEL_70;
          }

          v31 = 0;
          v43 = 0;
          do
          {
            v65 = *&v16[Error];
            if (RIOImportSessionIsSceneActive())
            {
              v66 = __OFADD__(v31++, 1);
              if (v66)
              {
                __break(1u);
                goto LABEL_47;
              }
            }

            ++v43;
          }

          while (v64 != v43);
          if (v31 < 2)
          {
LABEL_70:
            Error = *(v16 + 3);
            v85 = *(v175 + 8);

            v85(v34, v13);

            return Error;
          }

          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v88 = v175;
LABEL_177:
          v145 = *(v88 + 8);
          Error = v88 + 8;
          v145(v34, v13);
          return Error;
        }

        goto LABEL_195;
      }
    }

    else
    {
LABEL_47:
      (*(v175 + 56))(v16, 1, 1, v180);
    }

    outlined destroy of Any?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v43 = 0xD000000000000013;
  }

LABEL_17:
  if (*(Error + 16) && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v45 & 1) != 0))
  {
    outlined init with copy of Any(*(Error + 56) + 32 * v44, &v178);
    v46 = swift_dynamicCast();
    v47 = v175;
    v48 = v180;
    if (v46)
    {
      if (v176 == (v43 - 3) && 0x8000000261997240 == v177)
      {
      }

      else
      {
        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v67 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (*(Error + 16) && (v68 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746E65746E6F63, 0xEA0000000000664FLL), (v69 & 1) != 0))
      {
        outlined init with copy of Any(*(Error + 56) + 32 * v68, &v178);
        v70 = swift_dynamicCast();
        (*(v47 + 56))(v13, v70 ^ 1u, 1, v48);
        if ((*(v47 + 48))(v13, 1, v48) != 1)
        {
          (*(v47 + 32))(v31, v13, v48);
          if (*(Error + 16))
          {
            v71 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D614E68746977, 0xE800000000000000);
            if (v72)
            {
              outlined init with copy of Any(*(Error + 56) + 32 * v71, &v178);
              swift_dynamicCast();
            }
          }

          v83 = v170;
          v84 = specialized USDImportService.loadModel(contentsOf:withName:)(v31);
          if (!v83)
          {
            Error = v84;
          }

          (*(v47 + 8))(v31, v48);
          goto LABEL_116;
        }
      }

      else
      {
        (*(v47 + 56))(v13, 1, 1, v48);
      }

      outlined destroy of Any?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    v47 = v175;
    v48 = v180;
  }

LABEL_24:
  if (*(Error + 16))
  {
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
    if (v50)
    {
      outlined init with copy of Any(*(Error + 56) + 32 * v49, &v178);
      if (swift_dynamicCast())
      {
        if (v176 == 0x6D6F724664616F4CLL && v177 == 0xEE00656C646E7542)
        {
        }

        else
        {
          v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v73 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        if (*(Error + 16))
        {
          v74 = specialized __RawDictionaryStorage.find<A>(_:)(0x64656D616ELL, 0xE500000000000000);
          if (v75)
          {
            outlined init with copy of Any(*(Error + 56) + 32 * v74, &v178);
            if (swift_dynamicCast())
            {
              v77 = v176;
              v76 = v177;
              specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, Error, &v178);
              if (v179)
              {
                type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
                if (swift_dynamicCast())
                {
                  v78 = v176;
                  v79 = v166;
                  static USDImportService.urlForUSD(named:in:)(v77, v76, v176, v166);
                  if ((*(v47 + 48))(v79, 1, v48) == 1)
                  {
                    outlined destroy of Any?(v79, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                    v80 = type metadata accessor for ModelEntity();
                    v81 = *(v80 + 48);
                    v82 = *(v80 + 52);
                    swift_allocObject();
                    Error = ModelEntity.init()();

                    return Error;
                  }

                  Error = v164;
                  (*(v47 + 32))(v164, v79, v48);
                  v146 = type metadata accessor for Entity();
                  v147 = specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(Error, v146, 0, 0);
                  if (v147)
                  {
                    v148 = v147;
                    v173 = v78;
                    v174 = v78;
                    v149 = [v174 bundleIdentifier];
                    if (v149)
                    {
                      v150 = v149;
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                    }

                    v153 = [v174 bundlePath];
                    static String._unconditionallyBridgeFromObjectiveC(_:)();

                    v154 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
                    swift_beginAccess();
                    v155 = *&v148[v154];
                    String.utf8CString.getter();
                    v156 = v155;

                    String.utf8CString.getter();

                    String.utf8CString.getter();
                    RIOImportSessionSetBundleInfo();

                    v157 = *&v148[v154];
                    RIOImportSessionUpdateSynchronouslyOnEngineQueue();
                    v158 = *&v148[v154];
                    result = RIOImportSessionGetSceneCount();
                    if (result < 0)
                    {
                      goto LABEL_196;
                    }

                    v159 = result;
                    v47 = v175;
                    v48 = v180;
                    v78 = v173;
                    if (!result)
                    {
                      goto LABEL_191;
                    }

                    v160 = 0;
                    v161 = 0;
                    while (1)
                    {
                      v162 = *&v148[v154];
                      if (RIOImportSessionIsSceneActive())
                      {
                        v66 = __OFADD__(v160++, 1);
                        if (v66)
                        {
                          break;
                        }
                      }

                      if (v159 == ++v161)
                      {
                        goto LABEL_190;
                      }
                    }

                    __break(1u);
LABEL_190:
                    if (v160 < 2)
                    {
LABEL_191:
                      Error = *(v148 + 3);

                      (*(v47 + 8))(v164, v48);

                      return Error;
                    }

                    type metadata accessor for USDImportService.LoadError();
                    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
                    swift_allocError();
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();

                    Error = v164;
                  }

                  else
                  {
                    type metadata accessor for USDImportService.LoadError();
                    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
                    swift_allocError();
                    v152 = v151;
                    (*(v47 + 16))(v151, Error, v48);
                    (*(v47 + 56))(v152, 0, 1, v48);
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();
                  }

                  (*(v47 + 8))(Error, v48);

                  return Error;
                }
              }

              else
              {

                outlined destroy of Any?(&v178, &_sypSgMd, &_sypSgMR);
              }
            }
          }
        }
      }
    }
  }

LABEL_74:
  if (!*(Error + 16))
  {
    goto LABEL_80;
  }

  v89 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v90 & 1) == 0)
  {
    goto LABEL_80;
  }

  outlined init with copy of Any(*(Error + 56) + 32 * v89, &v178);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_80;
  }

  if (v176 == 0xD000000000000013 && 0x8000000261997220 == v177)
  {
  }

  else
  {
    v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v93 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, Error, &v178);
  if (!v179)
  {
LABEL_102:
    outlined destroy of Any?(&v178, &_sypSgMd, &_sypSgMR);
    goto LABEL_80;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_80;
  }

  v95 = v176;
  v94 = v177;
  specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, Error, &v178);
  if (!v179)
  {

    goto LABEL_102;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
  if (swift_dynamicCast())
  {
    v96 = v176;
    v97 = v170;
    v98 = USDImportService.loadModel(named:in:)(v95, v94, v176);
    if (!v97)
    {
      Error = v98;
    }

    return Error;
  }

LABEL_80:
  if (!*(Error + 16))
  {
    goto LABEL_105;
  }

  v91 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v92 & 1) == 0)
  {
    goto LABEL_105;
  }

  outlined init with copy of Any(*(Error + 56) + 32 * v91, &v178);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_105;
  }

  if (v176 == 0xD000000000000019 && 0x8000000261997200 == v177)
  {
  }

  else
  {
    v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v99 & 1) == 0)
    {
      goto LABEL_105;
    }
  }

  specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, Error, &v178);
  if (!v179)
  {
LABEL_104:
    outlined destroy of Any?(&v178, &_sypSgMd, &_sypSgMR);
    goto LABEL_105;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_105;
  }

  v101 = v176;
  v100 = v177;
  specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, Error, &v178);
  if (!v179)
  {

    goto LABEL_104;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
  if (swift_dynamicCast())
  {
    v102 = v176;
    Error = v167;
    static USDImportService.urlForUSD(named:in:)(v101, v100, v176, v167);
    if ((*(v47 + 48))(Error, 1, v48) == 1)
    {
      outlined destroy of Any?(Error, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      Error = type metadata accessor for USDImportService.LoadError();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
      swift_allocError();
      *v103 = v101;
      v103[1] = v100;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v142 = v165;
      (*(v47 + 32))(v165, Error, v48);

      v143 = v170;
      v144 = specialized USDImportService.loadBodyTracked(contentsOf:withName:)(v142);
      if (!v143)
      {
        Error = v144;
      }

      (*(v47 + 8))(v142, v48);

      swift_bridgeObjectRelease_n();
    }

    return Error;
  }

LABEL_105:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, Error, &v178);
  if (!v179)
  {
LABEL_120:
    v109 = &_sypSgMd;
    v110 = &_sypSgMR;
    v111 = &v178;
    goto LABEL_121;
  }

  if (swift_dynamicCast())
  {
    if (v176 == 0xD000000000000016 && 0x80000002619971E0 == v177)
    {

      goto LABEL_111;
    }

    v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v104)
    {
LABEL_111:
      specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, Error, &v178);
      if (v179)
      {
        v105 = v174;
        v106 = swift_dynamicCast();
        (*(v47 + 56))(v105, v106 ^ 1u, 1, v48);
        if ((*(v47 + 48))(v105, 1, v48) != 1)
        {
          v107 = v169;
          (*(v47 + 32))(v169, v105, v48);
          v108 = specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, Error, &v178);
          if (v179)
          {
            if (swift_dynamicCast())
            {
              Error = specialized USDImportService.loadBodyTracked(contentsOf:withName:)(v107);
              (*(v47 + 8))(v107, v48);
LABEL_116:

              return Error;
            }

            (*(v47 + 8))(v107, v48);
            goto LABEL_122;
          }

          (*(v47 + 8))(v107, v48, v108);
          goto LABEL_120;
        }
      }

      else
      {
        outlined destroy of Any?(&v178, &_sypSgMd, &_sypSgMR);
        v105 = v174;
        (*(v47 + 56))(v174, 1, 1, v48);
      }

      v109 = &_s10Foundation3URLVSgMd;
      v110 = &_s10Foundation3URLVSgMR;
      v111 = v105;
LABEL_121:
      outlined destroy of Any?(v111, v109, v110);
    }
  }

LABEL_122:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, Error, &v178);
  if (!v179)
  {
    v112 = &_sypSgMd;
    v113 = &_sypSgMR;
    v114 = &v178;
LABEL_136:
    outlined destroy of Any?(v114, v112, v113);
    goto LABEL_137;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_137;
  }

  if (v176 == 0xD000000000000011 && 0x80000002619971C0 == v177)
  {

    goto LABEL_129;
  }

  v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v115 & 1) == 0)
  {
LABEL_137:
    specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, Error, &v178);
    if (v179)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_164;
      }

      if (v176 == 0xD000000000000013 && 0x80000002619971A0 == v177)
      {
      }

      else
      {
        v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v122 & 1) == 0)
        {
          goto LABEL_164;
        }
      }

      specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, Error, &v178);
      if (v179)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_164;
        }

        v124 = v176;
        v123 = v177;
        specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, Error, &v178);
        if (v179)
        {
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
          if (swift_dynamicCast())
          {
            v125 = v176;
            Error = USDImportService.loadAnchor(named:in:)(v124, v123, v176);

            return Error;
          }

LABEL_164:
          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          swift_allocError();
          *v140 = Error;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return Error;
        }
      }
    }

    outlined destroy of Any?(&v178, &_sypSgMd, &_sypSgMR);
    goto LABEL_164;
  }

LABEL_129:
  specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, Error, &v178);
  if (!v179)
  {
    outlined destroy of Any?(&v178, &_sypSgMd, &_sypSgMR);
    v116 = v173;
    (*(v47 + 56))(v173, 1, 1, v48);
    goto LABEL_135;
  }

  v116 = v173;
  v117 = swift_dynamicCast();
  v118 = *(v47 + 56);
  v118(v116, v117 ^ 1u, 1, v48);
  if ((*(v47 + 48))(v116, 1, v48) == 1)
  {
LABEL_135:
    v112 = &_s10Foundation3URLVSgMd;
    v113 = &_s10Foundation3URLVSgMR;
    v114 = v116;
    goto LABEL_136;
  }

  v119 = v171;
  (*(v47 + 32))(v171, v116, v48);
  specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, Error, &v178);
  if (v179)
  {
    v120 = swift_dynamicCast();
    v121 = v168;
    if (v120)
    {
    }
  }

  else
  {
    outlined destroy of Any?(&v178, &_sypSgMd, &_sypSgMR);
    v121 = v168;
  }

  Error = v47 + 16;
  v126 = *(v47 + 16);
  v127 = v172;
  v126(v172, v119, v48);
  v126(v121, v127, v48);
  v128 = _s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(v121, 0, 0, 1);
  if (!v128)
  {
    v175 = type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    v139 = v138;
    v126(v138, v119, v48);
    v118(v139, 0, 1, v48);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_172;
  }

  v129 = v128;
  Error = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v130 = *&v129[Error];
  RIOImportSessionUpdateSynchronouslyOnEngineQueue();
  v131 = *&v129[Error];
  result = RIOImportSessionGetSceneCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v132 = result;
    if (!result)
    {
      goto LABEL_199;
    }

    v133 = 0;
    v134 = 0;
    while (1)
    {
      v135 = *&v129[Error];
      if (RIOImportSessionIsSceneActive())
      {
        v66 = __OFADD__(v133++, 1);
        if (v66)
        {
          break;
        }
      }

      if (v132 == ++v134)
      {
        goto LABEL_158;
      }
    }

    __break(1u);
LABEL_158:
    if (v133 < 2)
    {
LABEL_199:
      v136 = *(v129 + 3);
      type metadata accessor for AnchorEntity();
      if (swift_dynamicCastClass())
      {

        v137 = *(v47 + 8);
        v137(v172, v48);
        v137(v171, v48);
        return swift_dynamicCastClassUnconditional();
      }
    }

    type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v119 = v171;
LABEL_172:
    v141 = *(v47 + 8);
    v141(v172, v48);
    v141(v119, v48);
    return Error;
  }

  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> USDImportService.loadAsync(with:)(Swift::OpaquePointer with)
{
  v3 = v2;
  v4 = v1;
  v277 = type metadata accessor for DispatchWorkItemFlags();
  v276 = *(v277 - 8);
  v6 = *(v276 + 64);
  MEMORY[0x28223BE20](v277);
  v273 = &v266 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = type metadata accessor for DispatchQoS();
  v274 = *(v275 - 8);
  v8 = *(v274 + 64);
  MEMORY[0x28223BE20](v275);
  v272 = &v266 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v282 = &v266 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v281 = &v266 - v14;
  MEMORY[0x28223BE20](v15);
  v283 = &v266 - v16;
  MEMORY[0x28223BE20](v17);
  v284 = &v266 - v18;
  MEMORY[0x28223BE20](v19);
  v279 = &v266 - v20;
  MEMORY[0x28223BE20](v21);
  v285 = &v266 - v22;
  MEMORY[0x28223BE20](v23);
  v286 = &v266 - v24;
  MEMORY[0x28223BE20](v25);
  v280 = &v266 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v266 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v290 = (&v266 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v270 = &v266 - v34;
  MEMORY[0x28223BE20](v35);
  v278 = &v266 - v36;
  MEMORY[0x28223BE20](v37);
  v291 = (&v266 - v38);
  MEMORY[0x28223BE20](v39);
  v292 = &v266 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v266 - v42;
  v293 = type metadata accessor for URL();
  v300 = *(v293 - 1);
  v44 = *(v300 + 64);
  MEMORY[0x28223BE20](v293);
  v287 = &v266 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v269 = &v266 - v47;
  MEMORY[0x28223BE20](v48);
  v271 = &v266 - v49;
  MEMORY[0x28223BE20](v50);
  v288 = &v266 - v51;
  MEMORY[0x28223BE20](v52);
  v289 = (&v266 - v53);
  MEMORY[0x28223BE20](v54);
  v56 = &v266 - v55;
  specialized Dictionary.subscript.getter(0xD000000000000015, 0x8000000261997180, with._rawValue, &aBlock);
  if (v296)
  {
    if (swift_dynamicCast() && (v299 & 1) != 0)
    {
      v268 = v29;
      if (one-time initialization token for rioAudio != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Logger.rioAudio);
      v58 = static os_log_type_t.error.getter();
      v59 = Logger.logObject.getter();
      if (os_log_type_enabled(v59, v58))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_26187B000, v59, v58, "Ignoring generateDecimatedMesh param: no longer supported.", v60, 2u);
        v61 = v60;
        v3 = v2;
        MEMORY[0x266713AD0](v61, -1, -1);
      }

      v29 = v268;
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v268 = v29;
  if (__PAIR128__(0x80000002619973E0, 0xD000000000000010) == v299)
  {
  }

  else
  {
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v62 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, with._rawValue, &aBlock);
  if (!v296)
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    (*(v300 + 56))(v43, 1, 1, v293);
    goto LABEL_23;
  }

  v63 = v293;
  v64 = swift_dynamicCast();
  v65 = v300;
  (*(v300 + 56))(v43, v64 ^ 1u, 1, v63);
  if ((*(v65 + 48))(v43, 1, v63) == 1)
  {
LABEL_23:
    v71 = &_s10Foundation3URLVSgMd;
    v72 = &_s10Foundation3URLVSgMR;
    p_aBlock = v43;
LABEL_26:
    outlined destroy of Any?(p_aBlock, v71, v72);
    goto LABEL_27;
  }

  v66 = v300;
  v67 = v43;
  v68 = v293;
  (*(v300 + 32))(v56, v67, v293);
  v69 = specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
    (*(v66 + 8))(v56, v68, v69);
LABEL_25:
    v71 = &_sypSgMd;
    v72 = &_sypSgMR;
    p_aBlock = &aBlock;
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
  if (swift_dynamicCast())
  {
    v291 = swift_allocObject();
    v291[1] = v299;
    specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
    v267 = v4;
    if (v296)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
      if (swift_dynamicCast())
      {
        v70 = swift_allocObject();
        *(v70 + 16) = v299;
        v290 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_197:
        specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
        if (v296)
        {
          if (swift_dynamicCast())
          {
            v149 = v299;
          }

          else
          {
            v149 = 2;
          }
        }

        else
        {
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v149 = 2;
        }

        v292 = v3;
        specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
        if (v296)
        {
          v150 = swift_dynamicCast();
          if (v150)
          {
            v151 = v299;
          }

          else
          {
            v151 = 0;
          }

          v152 = v150 ^ 1;
        }

        else
        {
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v151 = 0;
          v152 = 1;
        }

        specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
        if (v296)
        {
          v153 = v149;
          v154 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
          v155 = v268;
          v156 = swift_dynamicCast();
          v157 = *(*(v154 - 8) + 56);
          v158 = v154;
          v149 = v153;
          v157(v155, v156 ^ 1u, 1, v158);
        }

        else
        {
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v159 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
          (*(*(v159 - 8) + 56))(v268, 1, 1, v159);
        }

        specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, with._rawValue, &aBlock);
        if (v296)
        {
          swift_dynamicCast();
        }

        else
        {
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
        }

        v160 = v268;
        v161 = v290;
        specialized USDImportService.loadAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v56, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v291, v290, v70, v149, v151, v152, v268);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v161);

        (*(v300 + 8))(v56, v293);
        v162 = v160;
        goto LABEL_379;
      }
    }

    else
    {
      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    v290 = 0;
    v70 = 0;
    goto LABEL_197;
  }

  (*(v300 + 8))(v56, v293);
LABEL_27:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (v296)
  {
    v74 = swift_dynamicCast();
    v75 = v300;
    if (v74)
    {
      if (__PAIR128__(0x80000002619973C0, 0xD000000000000013) == v299)
      {
      }

      else
      {
        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v76 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, with._rawValue, &aBlock);
      if (v296)
      {
        if (swift_dynamicCast())
        {
          v77 = v299;
          specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, with._rawValue, &aBlock);
          if (v296)
          {
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_336:

              v75 = v300;
              goto LABEL_32;
            }

            v78 = v299;
            specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
            if (v296)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
              if (swift_dynamicCast())
              {
                v300 = swift_allocObject();
                *(v300 + 16) = v299;
                specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                v267 = v4;
                if (v296)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                  if (swift_dynamicCast())
                  {
                    v79 = swift_allocObject();
                    *(v79 + 16) = v299;
                    v293 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_346:
                    specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
                    if (v296)
                    {
                      if (swift_dynamicCast())
                      {
                        v212 = v299;
                      }

                      else
                      {
                        v212 = 2;
                      }
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v212 = 2;
                    }

                    v292 = v3;
                    specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
                    if (v296)
                    {
                      v213 = swift_dynamicCast();
                      if (v213)
                      {
                        v214 = v299;
                      }

                      else
                      {
                        v214 = 0;
                      }

                      LODWORD(v215) = v213 ^ 1;
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v214 = 0;
                      LODWORD(v215) = 1;
                    }

                    specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
                    if (v296)
                    {
                      v216 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                      LODWORD(v291) = v215;
                      v215 = v214;
                      v217 = v79;
                      v218 = v212;
                      v219 = v78;
                      v220 = v216;
                      v221 = v280;
                      v222 = swift_dynamicCast();
                      v223 = *(*(v220 - 8) + 56);
                      v224 = v220;
                      v78 = v219;
                      v212 = v218;
                      v79 = v217;
                      v214 = v215;
                      LOBYTE(v215) = v291;
                      v223(v221, v222 ^ 1u, 1, v224);
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v225 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                      v221 = v280;
                      (*(*(v225 - 8) + 56))(v280, 1, 1, v225);
                    }

                    v226 = v293;
                    USDImportService.loadAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v77, *(&v77 + 1), v78, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v300, v293, v79, v212, v214, v215, v221);
                    outlined consume of (@escaping @callee_guaranteed () -> ())?(v226);

LABEL_378:

                    v162 = v221;
                    goto LABEL_379;
                  }
                }

                else
                {
                  outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                }

                v293 = 0;
                v79 = 0;
                goto LABEL_346;
              }

              goto LABEL_336;
            }
          }

          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v75 = v300;
        }
      }

      else
      {
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      }
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v75 = v300;
  }

LABEL_32:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
    goto LABEL_54;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  if (__PAIR128__(0x80000002619973A0, 0xD000000000000011) == v299)
  {
  }

  else
  {
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v80 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, with._rawValue, &aBlock);
  if (v296)
  {
    if (swift_dynamicCast())
    {
      v81 = v299;
      specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
      if (v296)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
        if (swift_dynamicCast())
        {
          v82 = swift_allocObject();
          *(v82 + 16) = v299;
          specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
          v267 = v4;
          if (v296)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
            if (swift_dynamicCast())
            {
              v83 = swift_allocObject();
              *(v83 + 16) = v299;
              v300 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_219:
              specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
              if (v296)
              {
                v163 = swift_dynamicCast();
                v164 = v299;
                if (!v163)
                {
                  v164 = 2;
                }
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v164 = 2;
              }

              LODWORD(v293) = v164;
              specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
              if (v296)
              {
                v165 = swift_dynamicCast();
                if (v165)
                {
                  v166 = v299;
                }

                else
                {
                  v166 = 0;
                }

                v167 = v165 ^ 1;
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v166 = 0;
                v167 = 1;
              }

              specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
              if (v296)
              {
                v168 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                v169 = v286;
                v170 = swift_dynamicCast();
                (*(*(v168 - 8) + 56))(v169, v170 ^ 1u, 1, v168);
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v171 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                v169 = v286;
                (*(*(v171 - 8) + 56))(v286, 1, 1, v171);
              }

              v172 = v300;
              USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v81, *(&v81 + 1), thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v82, v300, v83, v293, v166, v167, v169);
              outlined consume of (@escaping @callee_guaranteed () -> ())?(v172);

              outlined consume of Data._Representation(v81, *(&v81 + 1));
              outlined destroy of Any?(v169, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
              return;
            }
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          }

          v300 = 0;
          v83 = 0;
          goto LABEL_219;
        }

        outlined consume of Data._Representation(v81, *(&v81 + 1));
      }

      else
      {
        outlined consume of Data._Representation(v81, *(&v81 + 1));
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      }

      v75 = v300;
    }
  }

  else
  {
LABEL_54:
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

LABEL_55:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    goto LABEL_60;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_60:
    v84 = v293;
    goto LABEL_61;
  }

  if (__PAIR128__(0x8000000261997380, 0xD000000000000015) == v299)
  {

    v84 = v293;
  }

  else
  {
    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v84 = v293;
    if ((v85 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, with._rawValue, &aBlock);
  if (!v296)
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v86 = v292;
    (*(v75 + 56))(v292, 1, 1, v84);
    goto LABEL_113;
  }

  v86 = v292;
  v87 = swift_dynamicCast();
  (*(v75 + 56))(v86, v87 ^ 1u, 1, v84);
  if ((*(v75 + 48))(v86, 1, v84) == 1)
  {
LABEL_113:
    outlined destroy of Any?(v86, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    goto LABEL_61;
  }

  v88 = v86;
  v89 = v289;
  (*(v75 + 32))(v289, v88, v84);
  v90 = specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
  if (v296)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
    if (swift_dynamicCast())
    {
      v91 = swift_allocObject();
      *(v91 + 16) = v299;
      specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, with._rawValue, &aBlock);
      if (v296)
      {
        v92 = swift_dynamicCast();
        v93 = *(&v299 + 1);
        if (!v92)
        {
          v93 = 0;
        }

        v292 = v93;
      }

      else
      {
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
        v292 = 0;
      }

      specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
      v267 = v4;
      if (v296)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
        if (swift_dynamicCast())
        {
          v173 = swift_allocObject();
          *(v173 + 16) = v299;
          v174 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_239:
          specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
          if (v296)
          {
            if (swift_dynamicCast())
            {
              v175 = v299;
            }

            else
            {
              v175 = 2;
            }
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            v175 = 2;
          }

          specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
          if (v296)
          {
            v176 = swift_dynamicCast();
            if (v176)
            {
              v177 = v299;
            }

            else
            {
              v177 = 0;
            }

            v178 = v176 ^ 1;
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            v177 = 0;
            v178 = 1;
          }

          specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
          if (v296)
          {
            v179 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
            v180 = v285;
            v181 = swift_dynamicCast();
            (*(*(v179 - 8) + 56))(v180, v181 ^ 1u, 1, v179);
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            v182 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
            v180 = v285;
            (*(*(v182 - 8) + 56))(v285, 1, 1, v182);
          }

          v183 = v289;
          specialized USDImportService.loadModelAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v289, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v91, v174, v173, v175, v177, v178, v180);
LABEL_293:
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v174);

          (*(v300 + 8))(v183, v293);
          outlined destroy of Any?(v180, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
          return;
        }
      }

      else
      {
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      }

      v174 = 0;
      v173 = 0;
      goto LABEL_239;
    }

    (*(v75 + 8))(v89, v84);
  }

  else
  {
    (*(v75 + 8))(v89, v84, v90);
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

LABEL_61:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
LABEL_84:
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    goto LABEL_85;
  }

  if (swift_dynamicCast())
  {
    if (__PAIR128__(0x8000000261997360, 0xD000000000000018) == v299)
    {

      goto LABEL_75;
    }

    v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v94)
    {
LABEL_75:
      specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, with._rawValue, &aBlock);
      if (v296)
      {
        if (swift_dynamicCast())
        {
          v95 = v299;
          specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, with._rawValue, &aBlock);
          if (v296)
          {
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
            if (swift_dynamicCast())
            {
              v267 = v4;
              v96 = v299;
              specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
              if (v296)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
                if (swift_dynamicCast())
                {
                  v300 = swift_allocObject();
                  *(v300 + 16) = v299;
                  specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                  if (v296)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                    if (swift_dynamicCast())
                    {
                      v97 = swift_allocObject();
                      *(v97 + 16) = v299;
                      v293 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_363:
                      specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
                      if (v296)
                      {
                        if (swift_dynamicCast())
                        {
                          v227 = v299;
                        }

                        else
                        {
                          v227 = 2;
                        }
                      }

                      else
                      {
                        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                        v227 = 2;
                      }

                      v292 = v3;
                      specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
                      if (v296)
                      {
                        v228 = swift_dynamicCast();
                        if (v228)
                        {
                          v229 = v299;
                        }

                        else
                        {
                          v229 = 0;
                        }

                        v230 = v228 ^ 1;
                      }

                      else
                      {
                        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                        v229 = 0;
                        v230 = 1;
                      }

                      specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
                      if (v296)
                      {
                        v231 = v229;
                        v232 = v97;
                        v233 = v227;
                        v234 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                        v221 = v279;
                        v235 = swift_dynamicCast();
                        v236 = *(*(v234 - 8) + 56);
                        v237 = v234;
                        v227 = v233;
                        v97 = v232;
                        v229 = v231;
                        v236(v221, v235 ^ 1u, 1, v237);
                      }

                      else
                      {
                        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                        v238 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                        v221 = v279;
                        (*(*(v238 - 8) + 56))(v279, 1, 1, v238);
                      }

                      v239 = v293;
                      USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v95, *(&v95 + 1), v96, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v300, v293, v97, v227, v229, v230, v221);
                      outlined consume of (@escaping @callee_guaranteed () -> ())?(v239);

                      goto LABEL_378;
                    }
                  }

                  else
                  {
                    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                  }

                  v293 = 0;
                  v97 = 0;
                  goto LABEL_363;
                }
              }

              else
              {

                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
              }

              v4 = v267;
              v84 = v293;
            }

            else
            {
            }
          }

          else
          {

            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          }
        }

        goto LABEL_85;
      }

      goto LABEL_84;
    }
  }

LABEL_85:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
    goto LABEL_97;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_98;
  }

  if (__PAIR128__(0x8000000261997340, 0xD000000000000016) == v299)
  {
  }

  else
  {
    v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v98 & 1) == 0)
    {
      goto LABEL_98;
    }
  }

  specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, with._rawValue, &aBlock);
  if (v296)
  {
    if (swift_dynamicCast())
    {
      v99 = *(&v299 + 1);
      v100 = v299;
      specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
      if (v296)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
        if (swift_dynamicCast())
        {
          v267 = v4;
          v101 = swift_allocObject();
          *(v101 + 16) = v299;
          specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
          v300 = v101;
          if (v296)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
            if (swift_dynamicCast())
            {
              v102 = swift_allocObject();
              *(v102 + 16) = v299;
              v103 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_257:
              v292 = v3;
              specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
              if (v296)
              {
                if (swift_dynamicCast())
                {
                  v184 = v299;
                }

                else
                {
                  v184 = 2;
                }
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v184 = 2;
              }

              specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
              if (v296)
              {
                v185 = swift_dynamicCast();
                if (v185)
                {
                  v186 = v299;
                }

                else
                {
                  v186 = 0;
                }

                v187 = v185 ^ 1;
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v186 = 0;
                v187 = 1;
              }

              specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
              if (v296)
              {
                v188 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                v189 = v284;
                v190 = swift_dynamicCast();
                (*(*(v188 - 8) + 56))(v189, v190 ^ 1u, 1, v188);
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v191 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                v189 = v284;
                (*(*(v191 - 8) + 56))(v284, 1, 1, v191);
              }

              USDImportService.loadModelAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v100, v99, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<ModelEntity, Error>) -> (@out ()), v300, v103, v102, v184, v186, v187, v189);
LABEL_313:
              outlined consume of (@escaping @callee_guaranteed () -> ())?(v103);

              outlined consume of Data._Representation(v100, v99);
              v162 = v189;
LABEL_379:
              outlined destroy of Any?(v162, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
              return;
            }
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          }

          v103 = 0;
          v102 = 0;
          goto LABEL_257;
        }

        outlined consume of Data._Representation(v100, v99);
      }

      else
      {
        outlined consume of Data._Representation(v100, v99);
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      }
    }
  }

  else
  {
LABEL_97:
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

LABEL_98:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
LABEL_121:
    v113 = &_sypSgMd;
    v114 = &_sypSgMR;
    v115 = &aBlock;
    goto LABEL_122;
  }

  if (swift_dynamicCast())
  {
    if (__PAIR128__(0x8000000261997320, 0xD000000000000016) == v299)
    {

      goto LABEL_103;
    }

    v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v104)
    {
LABEL_103:
      specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, with._rawValue, &aBlock);
      if (v296)
      {
        v105 = v291;
        v106 = swift_dynamicCast();
        (*(v75 + 56))(v105, v106 ^ 1u, 1, v84);
        if ((*(v75 + 48))(v105, 1, v84) != 1)
        {
          v107 = v105;
          v108 = v288;
          (*(v75 + 32))(v288, v107, v84);
          v109 = specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
          if (v296)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
            if (swift_dynamicCast())
            {
              v110 = swift_allocObject();
              *(v110 + 16) = v299;
              specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, with._rawValue, &aBlock);
              if (v296)
              {
                v111 = swift_dynamicCast();
                v112 = *(&v299 + 1);
                if (!v111)
                {
                  v112 = 0;
                }

                v292 = v112;
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v292 = 0;
              }

              specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
              v267 = v4;
              if (v296)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                if (swift_dynamicCast())
                {
                  v192 = swift_allocObject();
                  *(v192 + 16) = v299;
                  v174 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_278:
                  specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
                  if (v296)
                  {
                    if (swift_dynamicCast())
                    {
                      v193 = v299;
                    }

                    else
                    {
                      v193 = 2;
                    }
                  }

                  else
                  {
                    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                    v193 = 2;
                  }

                  specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
                  if (v296)
                  {
                    v194 = swift_dynamicCast();
                    if (v194)
                    {
                      v195 = v299;
                    }

                    else
                    {
                      v195 = 0;
                    }

                    v196 = v194 ^ 1;
                  }

                  else
                  {
                    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                    v195 = 0;
                    v196 = 1;
                  }

                  specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
                  if (v296)
                  {
                    v197 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                    v180 = v283;
                    v198 = swift_dynamicCast();
                    (*(*(v197 - 8) + 56))(v180, v198 ^ 1u, 1, v197);
                  }

                  else
                  {
                    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                    v199 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                    v180 = v283;
                    (*(*(v199 - 8) + 56))(v283, 1, 1, v199);
                  }

                  v183 = v288;
                  specialized USDImportService.loadAnchorAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v288, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v110, v174, v192, v193, v195, v196, v180);
                  goto LABEL_293;
                }
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
              }

              v174 = 0;
              v192 = 0;
              goto LABEL_278;
            }

            (*(v75 + 8))(v108, v84);
            goto LABEL_123;
          }

          (*(v75 + 8))(v108, v84, v109);
          goto LABEL_121;
        }
      }

      else
      {
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
        v105 = v291;
        (*(v75 + 56))(v291, 1, 1, v84);
      }

      v113 = &_s10Foundation3URLVSgMd;
      v114 = &_s10Foundation3URLVSgMR;
      v115 = v105;
LABEL_122:
      outlined destroy of Any?(v115, v113, v114);
    }
  }

LABEL_123:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
    goto LABEL_137;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_138;
  }

  if (__PAIR128__(0x8000000261997300, 0xD000000000000018) == v299)
  {
  }

  else
  {
    v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v116 & 1) == 0)
    {
      goto LABEL_138;
    }
  }

  specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
LABEL_137:
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    goto LABEL_138;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_138;
  }

  v117 = v299;
  specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, with._rawValue, &aBlock);
  if (!v296)
  {
    goto LABEL_295;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_340:

    v84 = v293;
LABEL_138:
    specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
    if (!v296)
    {
LABEL_150:
      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      goto LABEL_151;
    }

    if (swift_dynamicCast())
    {
      if (__PAIR128__(0x80000002619972C0, 0xD000000000000017) == v299)
      {

        goto LABEL_143;
      }

      v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v121)
      {
LABEL_143:
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, with._rawValue, &aBlock);
        if (v296)
        {
          if (swift_dynamicCast())
          {
            v99 = *(&v299 + 1);
            v100 = v299;
            specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
            if (v296)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
              if (swift_dynamicCast())
              {
                v267 = v4;
                v122 = swift_allocObject();
                *(v122 + 16) = v299;
                specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                v300 = v122;
                if (v296)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                  if (swift_dynamicCast())
                  {
                    v123 = swift_allocObject();
                    *(v123 + 16) = v299;
                    v103 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_298:
                    v292 = v3;
                    specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
                    if (v296)
                    {
                      if (swift_dynamicCast())
                      {
                        v200 = v299;
                      }

                      else
                      {
                        v200 = 2;
                      }
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v200 = 2;
                    }

                    specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
                    if (v296)
                    {
                      v201 = swift_dynamicCast();
                      if (v201)
                      {
                        v202 = v299;
                      }

                      else
                      {
                        v202 = 0;
                      }

                      v203 = v201 ^ 1;
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v202 = 0;
                      v203 = 1;
                    }

                    specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
                    if (v296)
                    {
                      v204 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                      v189 = v282;
                      v205 = swift_dynamicCast();
                      (*(*(v204 - 8) + 56))(v189, v205 ^ 1u, 1, v204);
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v206 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                      v189 = v282;
                      (*(*(v206 - 8) + 56))(v282, 1, 1, v206);
                    }

                    USDImportService.loadAnchorAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v100, v99, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v300, v103, v123, v200, v202, v203, v189);
                    goto LABEL_313;
                  }
                }

                else
                {
                  outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                }

                v103 = 0;
                v123 = 0;
                goto LABEL_298;
              }

              outlined consume of Data._Representation(v100, v99);
            }

            else
            {
              outlined consume of Data._Representation(v100, v99);
              outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            }
          }

          goto LABEL_151;
        }

        goto LABEL_150;
      }
    }

LABEL_151:
    specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
    if (!v296)
    {
      goto LABEL_166;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_167;
    }

    if (__PAIR128__(0x80000002619972A0, 0xD00000000000001ELL) == v299)
    {
    }

    else
    {
      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v124 & 1) == 0)
      {
        goto LABEL_167;
      }
    }

    specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, with._rawValue, &aBlock);
    if (v296)
    {
      if (swift_dynamicCast())
      {
        v125 = v299;
        specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
        if (v296)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
          if (swift_dynamicCast())
          {
            v126 = swift_allocObject();
            *(v126 + 16) = v299;
            specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, with._rawValue, &aBlock);
            if (v296)
            {
              type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
              if (swift_dynamicCast())
              {
                v127 = v299;
                specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                if (v296)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                  if (swift_dynamicCast())
                  {
                    v128 = swift_allocObject();
                    *(v128 + 16) = v299;
                    v300 = v128;

                    v129 = v270;
                    static USDImportService.urlForUSD(named:in:)(v125, *(&v125 + 1), v127, v270);
                    v130 = v293;
                    if ((*(v75 + 48))(v129, 1, v293) == 1)
                    {
                      outlined destroy of Any?(v129, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                      type metadata accessor for __ServiceLocator();
                      static __ServiceLocator.shared.getter();
                      dispatch thunk of __ServiceLocator.engine.getter();
                      v292 = v3;

                      v293 = __Engine.queue.getter();

                      v131 = swift_allocObject();
                      *(v131 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply;
                      *(v131 + 24) = v126;
                      *(v131 + 32) = v125;
                      v297 = partial apply for closure #1 in USDImportService.loadBodyTrackedAsync(named:in:fulfill:postLoad:);
                      v298 = v131;
                      *&aBlock = MEMORY[0x277D85DD0];
                      *(&aBlock + 1) = 1107296256;
                      v295 = thunk for @escaping @callee_guaranteed () -> ();
                      v296 = &block_descriptor_17;
                      v132 = _Block_copy(&aBlock);

                      v133 = v272;
                      static DispatchQoS.unspecified.getter();
                      *&v299 = MEMORY[0x277D84F90];
                      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                      v134 = v273;
                      v135 = v277;
                      dispatch thunk of SetAlgebra.init<A>(_:)();
                      v136 = v293;
                      MEMORY[0x26670F3A0](0, v133, v134, v132);

                      _Block_release(v132);

                      (*(v276 + 8))(v134, v135);
                      (*(v274 + 8))(v133, v275);
                    }

                    else
                    {
                      v263 = v269;
                      (*(v75 + 32))(v269, v129, v130);

                      specialized USDImportService.loadBodyTrackedAsync(contentsOf:withName:fulfill:postLoad:)(v263, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v126, thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply, v300);

                      swift_bridgeObjectRelease_n();

                      (*(v75 + 8))(v263, v130);
                    }

                    return;
                  }
                }

                else
                {

                  outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                }
              }

              else
              {
              }
            }

            else
            {

              outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            }

            v84 = v293;
          }

          else
          {

            v84 = v293;
          }
        }

        else
        {

          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v84 = v293;
        }
      }
    }

    else
    {
LABEL_166:
      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

LABEL_167:
    specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
    if (!v296)
    {
      goto LABEL_316;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_318;
    }

    if (__PAIR128__(0x8000000261997280, 0xD00000000000001BLL) == v299)
    {
    }

    else
    {
      v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v137 & 1) == 0)
      {
        goto LABEL_318;
      }
    }

    specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, with._rawValue, &aBlock);
    if (v296)
    {
      v138 = v290;
      v139 = swift_dynamicCast();
      (*(v75 + 56))(v138, v139 ^ 1u, 1, v84);
      if ((*(v75 + 48))(v138, 1, v84) != 1)
      {
        v140 = v138;
        v141 = v287;
        (*(v75 + 32))(v287, v140, v84);
        v142 = specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
        if (v296)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
          if (swift_dynamicCast())
          {
            v143 = swift_allocObject();
            *(v143 + 16) = v299;
            v144 = specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
            if (v296)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
              if (swift_dynamicCast())
              {
                v145 = swift_allocObject();
                *(v145 + 16) = v299;
                specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, with._rawValue, &aBlock);
                if (v296)
                {
                  swift_dynamicCast();
                }

                else
                {
                  outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                }

                v240 = v287;
                specialized USDImportService.loadBodyTrackedAsync(contentsOf:withName:fulfill:postLoad:)(v287, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v143, thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply, v145);

                (*(v75 + 8))(v240, v84);
                return;
              }

              (*(v75 + 8))(v287, v84);

              goto LABEL_318;
            }

            (*(v75 + 8))(v287, v84, v144);

            goto LABEL_316;
          }

          (*(v75 + 8))(v141, v84);
LABEL_318:
          specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
          if (v296)
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_334;
            }

            if (__PAIR128__(0x8000000261997260, 0xD00000000000001CLL) == v299)
            {
            }

            else
            {
              v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v207 & 1) == 0)
              {
                goto LABEL_334;
              }
            }

            specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, with._rawValue, &aBlock);
            if (v296)
            {
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_334;
              }

              v208 = v299;
              specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
              if (v296)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
                if (swift_dynamicCast())
                {
                  v209 = swift_allocObject();
                  *(v209 + 16) = v299;
                  specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                  if (v296)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                    if (swift_dynamicCast())
                    {
                      v210 = swift_allocObject();
                      *(v210 + 16) = v299;
                      USDImportService.loadBodyTrackedAsync(from:fulfill:postLoad:)(v208, *(&v208 + 1), thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v209, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error), v210);

                      outlined consume of Data._Representation(v208, *(&v208 + 1));
                      return;
                    }

                    outlined consume of Data._Representation(v208, *(&v208 + 1));

                    goto LABEL_334;
                  }

                  outlined consume of Data._Representation(v208, *(&v208 + 1));

                  goto LABEL_333;
                }

                outlined consume of Data._Representation(v208, *(&v208 + 1));
LABEL_334:
                type metadata accessor for USDImportService.LoadError();
                lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
                swift_allocError();
                v211->_rawValue = with._rawValue;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                return;
              }

              outlined consume of Data._Representation(v208, *(&v208 + 1));
            }
          }

LABEL_333:
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          goto LABEL_334;
        }

        (*(v75 + 8))(v141, v84, v142);
LABEL_316:
        v146 = &_sypSgMd;
        v147 = &_sypSgMR;
        v148 = &aBlock;
        goto LABEL_317;
      }
    }

    else
    {
      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      v138 = v290;
      (*(v75 + 56))(v290, 1, 1, v84);
    }

    v146 = &_s10Foundation3URLVSgMd;
    v147 = &_s10Foundation3URLVSgMR;
    v148 = v138;
LABEL_317:
    outlined destroy of Any?(v148, v146, v147);
    goto LABEL_318;
  }

  v291 = v299;
  specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
  if (!v296)
  {

LABEL_295:

    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v84 = v293;
    goto LABEL_138;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_340;
  }

  v267 = v4;
  v288 = swift_allocObject();
  *(v288 + 16) = v299;
  specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
  if (v296)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
    v118 = swift_dynamicCast();
    v119 = v281;
    if (v118)
    {
      v120 = swift_allocObject();
      *(v120 + 16) = v299;
      v289 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
      v290 = v120;
    }

    else
    {
      v289 = 0;
      v290 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v289 = 0;
    v290 = 0;
    v119 = v281;
  }

  specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
  if (v296)
  {
    v241 = swift_dynamicCast();
    v242 = v299;
    if (!v241)
    {
      v242 = 2;
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v242 = 2;
  }

  LODWORD(v287) = v242;
  v292 = v3;
  specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
  if (v296)
  {
    v243 = swift_dynamicCast();
    if (v243)
    {
      v244 = v299;
    }

    else
    {
      v244 = 0;
    }

    v245 = v243 ^ 1;
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v244 = 0;
    v245 = 1;
  }

  specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
  if (v296)
  {
    v246 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
    v247 = swift_dynamicCast();
    (*(*(v246 - 8) + 56))(v119, v247 ^ 1u, 1, v246);
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v248 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
    (*(*(v248 - 8) + 56))(v119, 1, 1, v248);
  }

  v249 = v278;
  static USDImportService.urlForUSD(named:in:)(v117, *(&v117 + 1), v291, v278);
  v250 = v300;
  v251 = v293;
  if ((*(v300 + 48))(v249, 1, v293) == 1)
  {
    outlined destroy of Any?(v249, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v252 = __Engine.queue.getter();

    v253 = swift_allocObject();
    v254 = v288;
    *(v253 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply;
    *(v253 + 24) = v254;
    *(v253 + 32) = v117;
    v297 = partial apply for closure #1 in USDImportService.loadBodyTrackedAsync(named:in:fulfill:postLoad:);
    v298 = v253;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v295 = thunk for @escaping @callee_guaranteed () -> ();
    v296 = &block_descriptor_39;
    v255 = _Block_copy(&aBlock);

    v256 = v272;
    static DispatchQoS.unspecified.getter();
    *&v299 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v257 = v273;
    v258 = v277;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v256, v257, v255);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v289);
    _Block_release(v255);

    (*(v276 + 8))(v257, v258);
    v259 = v281;
    (*(v274 + 8))(v256, v275);
  }

  else
  {
    v260 = v271;
    (*(v250 + 32))(v271, v249, v251);
    v265 = v119;
    v264 = v244;
    v261 = v291;
    v262 = v289;
    _s9RealityIO16USDImportServiceC19loadAsyncCommonImpl33_591477937901C3574B11AA1E47A8ACC410contentsOf5named2in22configureImportSession7fulfill8postLoad24enforceMemoryConstraints11memoryLimit14featuresToSkip12selectEntity10entityTypey10Foundation3URLV_SSSgSo8NSBundleCSgyAA0tU0CcSgys6ResultOyxs5Error_pGcySDySSypGKcSgSbSgSiSg0A3Kit6EntityC02__X7OptionsV16LoadableFeaturesVSgA9_AYKcSgxmtA9_RbzlFA7_12AnchorEntityC_Tt9g5(v260, v117, *(&v117 + 1), v291, 0, 0, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v288, v289, v290, v287, v264, v245, v265, 0, 0);
    v259 = v281;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v262);

    (*(v250 + 8))(v260, v251);
  }

  outlined destroy of Any?(v259, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
}

void specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for USDImportService.LoadError();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
  v5 = swift_allocError();
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a3, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  swift_storeEnumTagMultiPayload();
  a1(v5, 1);
}

void specialized closure #3 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(void (*a1)(void *, uint64_t))
{
  type metadata accessor for USDImportService.LoadError();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
  v2 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a1(v2, 1);
}

void specialized closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for USDImportService.LoadError();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
  v7 = swift_allocError();
  *v8 = a3;
  v8[1] = a4;
  swift_storeEnumTagMultiPayload();
  a1(v7, 1);
}

uint64_t specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *))
{
  v95 = a7;
  v99 = a4;
  v103 = a2;
  v104 = a3;
  v105 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v100 = *(v21 - 8);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v102 = &v93 - v22;
  v107 = swift_allocObject();
  *(v107 + 16) = 0;
  result = swift_allocObject();
  v106 = result;
  *(result + 16) = 0;
  if (a5)
  {
    v24 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v25 = *(a5 + v24);
    result = RIOImportSessionGetSceneCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v26 = result;
      v97 = v15;
      v98 = v20;
      if (!result)
      {
        goto LABEL_11;
      }

      v27 = v12;
      v28 = v11;
      v29 = v17;
      v30 = v16;
      v31 = 0;
      v32 = 0;
      while (1)
      {
        v33 = *(a5 + v24);
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v31++, 1))
          {
            break;
          }
        }

        if (v26 == ++v32)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      v16 = v30;
      v17 = v29;
      v11 = v28;
      v12 = v27;
      if (v31 >= 2)
      {
        type metadata accessor for USDImportService.LoadError();
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
        v36 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v96 = v16;
        v37 = v106;
        v38 = *(v106 + 16);
        *(v106 + 16) = v36;

        v39 = (v105 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v40 = *v39;
        v41 = v39[1];
        *v39 = 0;
        v39[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v40);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v105 = __Engine.queue.getter();

        v42 = v102;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v99, v102, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v43 = (*(v100 + 80) + 48) & ~*(v100 + 80);
        v44 = swift_allocObject();
        v45 = v103;
        v46 = v104;
        v44[2] = v37;
        v44[3] = v45;
        v47 = v107;
        v44[4] = v46;
        v44[5] = v47;
        outlined init with take of URL?(v42, v44 + v43);
        v113 = partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v114 = v44;
        aBlock = MEMORY[0x277D85DD0];
        v110 = 1107296256;
        v111 = thunk for @escaping @callee_guaranteed () -> ();
        v112 = &block_descriptor_156;
        v48 = _Block_copy(&aBlock);

        v49 = v98;
        static DispatchQoS.unspecified.getter();
        v108 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v50 = v97;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v51 = v105;
        MEMORY[0x26670F3A0](0, v49, v50, v48);
        _Block_release(v48);

        (*(v12 + 8))(v50, v11);
        (*(v17 + 8))(v49, v96);
      }

      else
      {
LABEL_11:
        if (a6)
        {

          v35 = v105;
          v53 = a6(v105);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
          v55 = v106;
          v54 = v107;
          v56 = *(v107 + 16);
          *(v107 + 16) = v53;
        }

        else
        {
          v54 = v107;
          v52 = *(v107 + 16);
          *(v107 + 16) = *(a5 + 24);

          v35 = v105;
          v55 = v106;
        }

        v57 = *(v54 + 16);
        if (!v57)
        {
          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          v61 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v62 = *(v55 + 16);
          *(v55 + 16) = v61;

          v63 = (v35 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
          swift_beginAccess();
          v64 = *v63;
          v65 = v63[1];
          *v63 = 0;
          v63[1] = 0;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v64);
          ImportSession.sceneUpdatePassCompletion.didset();
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v105 = __Engine.queue.getter();

          v66 = v102;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v99, v102, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v67 = (*(v100 + 80) + 48) & ~*(v100 + 80);
          v68 = swift_allocObject();
          v69 = v103;
          v70 = v104;
          v68[2] = v55;
          v68[3] = v69;
          v71 = v107;
          v68[4] = v70;
          v68[5] = v71;
          outlined init with take of URL?(v66, v68 + v67);
          v113 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v114 = v68;
          aBlock = MEMORY[0x277D85DD0];
          v110 = 1107296256;
          v111 = thunk for @escaping @callee_guaranteed () -> ();
          v112 = &block_descriptor_163;
          v72 = _Block_copy(&aBlock);

          v73 = v98;
          static DispatchQoS.unspecified.getter();
          v108 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v74 = v97;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v75 = v105;
          MEMORY[0x26670F3A0](0, v73, v74, v72);
          _Block_release(v72);

          (*(v12 + 8))(v74, v11);
          (*(v17 + 8))(v73, v16);

LABEL_24:
        }

        v58 = *(v54 + 16);

        v59 = specialized USDImportService.generatePostLoadData(from:entity:)(v35, v57);

        v60 = *(v59 + 2);
        v96 = v16;
        v94 = v17;
        if (v60)
        {
          if (a9)
          {
            a9(v59);
          }

          v76 = v99;
        }

        else
        {

          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          v77 = swift_allocError();
          v76 = v99;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v99, v78, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          swift_storeEnumTagMultiPayload();
          v79 = *(v55 + 16);
          *(v55 + 16) = v77;
        }

        v80 = (v35 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v81 = *v80;
        v82 = v80[1];
        *v80 = 0;
        v80[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v81);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v83 = __Engine.queue.getter();

        v84 = v102;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v76, v102, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v85 = (*(v100 + 80) + 48) & ~*(v100 + 80);
        v86 = swift_allocObject();
        v87 = v103;
        v88 = v104;
        v86[2] = v55;
        v86[3] = v87;
        v89 = v107;
        v86[4] = v88;
        v86[5] = v89;
        outlined init with take of URL?(v84, v86 + v85);
        v113 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v114 = v86;
        aBlock = MEMORY[0x277D85DD0];
        v110 = 1107296256;
        v111 = thunk for @escaping @callee_guaranteed () -> ();
        v112 = &block_descriptor_170;
        v90 = _Block_copy(&aBlock);

        v91 = v98;
        static DispatchQoS.unspecified.getter();
        v108 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v92 = v97;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v91, v92, v90);
        _Block_release(v90);

        (*(v12 + 8))(v92, v11);
        (*(v94 + 8))(v91, v96);
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v88[1] = a7;
  v97 = a4;
  v99 = a2;
  v100 = a3;
  v93 = a1;
  v94 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v94 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v94);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v95 = *(v20 - 8);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v98 = v88 - v21;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  result = swift_allocObject();
  v101 = result;
  *(result + 16) = 0;
  if (a5)
  {
    v24 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v25 = *(a5 + v24);
    result = RIOImportSessionGetSceneCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v26 = result;
      v90 = v16;
      v91 = v14;
      v92 = v19;
      v27 = v11;
      if (!result)
      {
        goto LABEL_12;
      }

      v28 = v22;
      v29 = v15;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v32 = *(a5 + v24);
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v30++, 1))
          {
            break;
          }
        }

        if (v26 == ++v31)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      v34 = v30 < 2;
      v15 = v29;
      v27 = v11;
      v22 = v28;
      if (v34)
      {
LABEL_12:
        if (a6)
        {

          v35 = v93;
          v36 = a6(v93);
          v88[0] = v27;
          v52 = v36;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
          v53 = *(v22 + 16);
          *(v22 + 16) = v52;
          v54 = v101;
        }

        else
        {
          v88[0] = v27;
          v51 = *(v22 + 16);
          *(v22 + 16) = *(a5 + 24);

          v54 = v101;
          v35 = v93;
        }

        v55 = *(v22 + 16);
        if (!v55 || (type metadata accessor for ModelEntity(), !swift_dynamicCastClass()))
        {
          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          v58 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v59 = *(v54 + 16);
          *(v54 + 16) = v58;

          v60 = (v35 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
          swift_beginAccess();
          v61 = *v60;
          v62 = v60[1];
          *v60 = 0;
          v60[1] = 0;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v61);
          ImportSession.sceneUpdatePassCompletion.didset();
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v63 = __Engine.queue.getter();

          v64 = v98;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v65 = (*(v95 + 80) + 48) & ~*(v95 + 80);
          v66 = swift_allocObject();
          v67 = v99;
          v68 = v100;
          v66[2] = v54;
          v66[3] = v67;
          v66[4] = v68;
          v66[5] = v22;
          outlined init with take of URL?(v64, v66 + v65);
          v107 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v108 = v66;
          aBlock = MEMORY[0x277D85DD0];
          v104 = 1107296256;
          v105 = thunk for @escaping @callee_guaranteed () -> ();
          v106 = &block_descriptor_289;
          v69 = _Block_copy(&aBlock);

          v70 = v92;
          static DispatchQoS.unspecified.getter();
          v102 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v71 = v91;
          v72 = v94;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v70, v71, v69);
          _Block_release(v69);

          (*(v88[0] + 8))(v71, v72);
          (*(v90 + 8))(v70, v15);

LABEL_25:
        }

        v56 = specialized USDImportService.generatePostLoadData(from:entity:)(v35, v55);

        v57 = *(v56 + 2);
        v89 = v15;
        if (v57)
        {
          v45 = v88[0];
          if (a9)
          {
            a9(v56);
          }

          v73 = v97;
        }

        else
        {

          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          v74 = swift_allocError();
          v73 = v97;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          swift_storeEnumTagMultiPayload();
          v76 = *(v54 + 16);
          *(v54 + 16) = v74;

          v45 = v88[0];
        }

        v77 = (v35 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v78 = *v77;
        v79 = v77[1];
        *v77 = 0;
        v77[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v78);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v43 = __Engine.queue.getter();

        v80 = v98;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v73, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v81 = (*(v95 + 80) + 48) & ~*(v95 + 80);
        v82 = swift_allocObject();
        v83 = v99;
        v84 = v100;
        v82[2] = v54;
        v82[3] = v83;
        v82[4] = v84;
        v82[5] = v22;
        outlined init with take of URL?(v80, v82 + v81);
        v107 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v108 = v82;
        aBlock = MEMORY[0x277D85DD0];
        v104 = 1107296256;
        v105 = thunk for @escaping @callee_guaranteed () -> ();
        v106 = &block_descriptor_296;
        v50 = _Block_copy(&aBlock);
      }

      else
      {
        type metadata accessor for USDImportService.LoadError();
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
        v37 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v89 = v15;
        v38 = v101;
        v39 = *(v101 + 16);
        *(v101 + 16) = v37;

        v40 = (v93 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v41 = *v40;
        v42 = v40[1];
        *v40 = 0;
        v40[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v41);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v43 = __Engine.queue.getter();

        v44 = v98;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v45 = v11;
        v46 = (*(v95 + 80) + 48) & ~*(v95 + 80);
        v47 = swift_allocObject();
        v48 = v99;
        v49 = v100;
        v47[2] = v38;
        v47[3] = v48;
        v47[4] = v49;
        v47[5] = v22;
        outlined init with take of URL?(v44, v47 + v46);
        v107 = partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v108 = v47;
        aBlock = MEMORY[0x277D85DD0];
        v104 = 1107296256;
        v105 = thunk for @escaping @callee_guaranteed () -> ();
        v106 = &block_descriptor_282;
        v50 = _Block_copy(&aBlock);
      }

      v85 = v92;
      static DispatchQoS.unspecified.getter();
      v102 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v86 = v91;
      v87 = v94;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v85, v86, v50);
      _Block_release(v50);

      (*(v45 + 8))(v86, v87);
      (*(v90 + 8))(v85, v89);

      goto LABEL_25;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v88[1] = a7;
  v97 = a4;
  v99 = a2;
  v100 = a3;
  v93 = a1;
  v94 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v94 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v94);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v95 = *(v20 - 8);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v98 = v88 - v21;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  result = swift_allocObject();
  v101 = result;
  *(result + 16) = 0;
  if (a5)
  {
    v24 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v25 = *(a5 + v24);
    result = RIOImportSessionGetSceneCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v26 = result;
      v90 = v16;
      v91 = v14;
      v92 = v19;
      v27 = v11;
      if (!result)
      {
        goto LABEL_12;
      }

      v28 = v22;
      v29 = v15;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v32 = *(a5 + v24);
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v30++, 1))
          {
            break;
          }
        }

        if (v26 == ++v31)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      v34 = v30 < 2;
      v15 = v29;
      v27 = v11;
      v22 = v28;
      if (v34)
      {
LABEL_12:
        if (a6)
        {

          v35 = v93;
          v36 = a6(v93);
          v88[0] = v27;
          v52 = v36;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
          v53 = *(v22 + 16);
          *(v22 + 16) = v52;
          v54 = v101;
        }

        else
        {
          v88[0] = v27;
          v51 = *(v22 + 16);
          *(v22 + 16) = *(a5 + 24);

          v54 = v101;
          v35 = v93;
        }

        v55 = *(v22 + 16);
        if (!v55 || (type metadata accessor for AnchorEntity(), !swift_dynamicCastClass()))
        {
          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          v58 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v59 = *(v54 + 16);
          *(v54 + 16) = v58;

          v60 = (v35 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
          swift_beginAccess();
          v61 = *v60;
          v62 = v60[1];
          *v60 = 0;
          v60[1] = 0;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v61);
          ImportSession.sceneUpdatePassCompletion.didset();
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v63 = __Engine.queue.getter();

          v64 = v98;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v65 = (*(v95 + 80) + 48) & ~*(v95 + 80);
          v66 = swift_allocObject();
          v67 = v99;
          v68 = v100;
          v66[2] = v54;
          v66[3] = v67;
          v66[4] = v68;
          v66[5] = v22;
          outlined init with take of URL?(v64, v66 + v65);
          v107 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v108 = v66;
          aBlock = MEMORY[0x277D85DD0];
          v104 = 1107296256;
          v105 = thunk for @escaping @callee_guaranteed () -> ();
          v106 = &block_descriptor_413;
          v69 = _Block_copy(&aBlock);

          v70 = v92;
          static DispatchQoS.unspecified.getter();
          v102 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v71 = v91;
          v72 = v94;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v70, v71, v69);
          _Block_release(v69);

          (*(v88[0] + 8))(v71, v72);
          (*(v90 + 8))(v70, v15);

LABEL_25:
        }

        v56 = specialized USDImportService.generatePostLoadData(from:entity:)(v35, v55);

        v57 = *(v56 + 2);
        v89 = v15;
        if (v57)
        {
          v45 = v88[0];
          if (a9)
          {
            a9(v56);
          }

          v73 = v97;
        }

        else
        {

          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          v74 = swift_allocError();
          v73 = v97;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          swift_storeEnumTagMultiPayload();
          v76 = *(v54 + 16);
          *(v54 + 16) = v74;

          v45 = v88[0];
        }

        v77 = (v35 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v78 = *v77;
        v79 = v77[1];
        *v77 = 0;
        v77[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v78);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v43 = __Engine.queue.getter();

        v80 = v98;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v73, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v81 = (*(v95 + 80) + 48) & ~*(v95 + 80);
        v82 = swift_allocObject();
        v83 = v99;
        v84 = v100;
        v82[2] = v54;
        v82[3] = v83;
        v82[4] = v84;
        v82[5] = v22;
        outlined init with take of URL?(v80, v82 + v81);
        v107 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v108 = v82;
        aBlock = MEMORY[0x277D85DD0];
        v104 = 1107296256;
        v105 = thunk for @escaping @callee_guaranteed () -> ();
        v106 = &block_descriptor_420;
        v50 = _Block_copy(&aBlock);
      }

      else
      {
        type metadata accessor for USDImportService.LoadError();
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
        v37 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v89 = v15;
        v38 = v101;
        v39 = *(v101 + 16);
        *(v101 + 16) = v37;

        v40 = (v93 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v41 = *v40;
        v42 = v40[1];
        *v40 = 0;
        v40[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v41);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v43 = __Engine.queue.getter();

        v44 = v98;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v45 = v11;
        v46 = (*(v95 + 80) + 48) & ~*(v95 + 80);
        v47 = swift_allocObject();
        v48 = v99;
        v49 = v100;
        v47[2] = v38;
        v47[3] = v48;
        v47[4] = v49;
        v47[5] = v22;
        outlined init with take of URL?(v44, v47 + v46);
        v107 = partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v108 = v47;
        aBlock = MEMORY[0x277D85DD0];
        v104 = 1107296256;
        v105 = thunk for @escaping @callee_guaranteed () -> ();
        v106 = &block_descriptor_406;
        v50 = _Block_copy(&aBlock);
      }

      v85 = v92;
      static DispatchQoS.unspecified.getter();
      v102 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v86 = v91;
      v87 = v94;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v85, v86, v50);
      _Block_release(v50);

      (*(v45 + 8))(v86, v87);
      (*(v90 + 8))(v85, v89);

      goto LABEL_25;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v88[1] = a7;
  v97 = a4;
  v99 = a2;
  v100 = a3;
  v93 = a1;
  v94 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v94 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v94);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v95 = *(v20 - 8);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v98 = v88 - v21;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  result = swift_allocObject();
  v101 = result;
  *(result + 16) = 0;
  if (a5)
  {
    v24 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v25 = *(a5 + v24);
    result = RIOImportSessionGetSceneCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v26 = result;
      v90 = v16;
      v91 = v14;
      v92 = v19;
      v27 = v11;
      if (!result)
      {
        goto LABEL_12;
      }

      v28 = v22;
      v29 = v15;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v32 = *(a5 + v24);
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v30++, 1))
          {
            break;
          }
        }

        if (v26 == ++v31)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      v34 = v30 < 2;
      v15 = v29;
      v27 = v11;
      v22 = v28;
      if (v34)
      {
LABEL_12:
        if (a6)
        {

          v35 = v93;
          v36 = a6(v93);
          v88[0] = v27;
          v52 = v36;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
          v53 = *(v22 + 16);
          *(v22 + 16) = v52;
          v54 = v101;
        }

        else
        {
          v88[0] = v27;
          v51 = *(v22 + 16);
          *(v22 + 16) = *(a5 + 24);

          v54 = v101;
          v35 = v93;
        }

        v55 = *(v22 + 16);
        if (!v55 || (type metadata accessor for BodyTrackedEntity(), !swift_dynamicCastClass()))
        {
          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          v58 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v59 = *(v54 + 16);
          *(v54 + 16) = v58;

          v60 = (v35 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
          swift_beginAccess();
          v61 = *v60;
          v62 = v60[1];
          *v60 = 0;
          v60[1] = 0;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v61);
          ImportSession.sceneUpdatePassCompletion.didset();
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v63 = __Engine.queue.getter();

          v64 = v98;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v65 = (*(v95 + 80) + 48) & ~*(v95 + 80);
          v66 = swift_allocObject();
          v67 = v99;
          v68 = v100;
          v66[2] = v54;
          v66[3] = v67;
          v66[4] = v68;
          v66[5] = v22;
          outlined init with take of URL?(v64, v66 + v65);
          v107 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v108 = v66;
          aBlock = MEMORY[0x277D85DD0];
          v104 = 1107296256;
          v105 = thunk for @escaping @callee_guaranteed () -> ();
          v106 = &block_descriptor_514;
          v69 = _Block_copy(&aBlock);

          v70 = v92;
          static DispatchQoS.unspecified.getter();
          v102 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v71 = v91;
          v72 = v94;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v70, v71, v69);
          _Block_release(v69);

          (*(v88[0] + 8))(v71, v72);
          (*(v90 + 8))(v70, v15);

LABEL_25:
        }

        v56 = specialized USDImportService.generatePostLoadData(from:entity:)(v35, v55);

        v57 = *(v56 + 2);
        v89 = v15;
        if (v57)
        {
          v45 = v88[0];
          if (a9)
          {
            a9(v56);
          }

          v73 = v97;
        }

        else
        {

          type metadata accessor for USDImportService.LoadError();
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
          v74 = swift_allocError();
          v73 = v97;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v75, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          swift_storeEnumTagMultiPayload();
          v76 = *(v54 + 16);
          *(v54 + 16) = v74;

          v45 = v88[0];
        }

        v77 = (v35 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v78 = *v77;
        v79 = v77[1];
        *v77 = 0;
        v77[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v78);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v43 = __Engine.queue.getter();

        v80 = v98;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v73, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v81 = (*(v95 + 80) + 48) & ~*(v95 + 80);
        v82 = swift_allocObject();
        v83 = v99;
        v84 = v100;
        v82[2] = v54;
        v82[3] = v83;
        v82[4] = v84;
        v82[5] = v22;
        outlined init with take of URL?(v80, v82 + v81);
        v107 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v108 = v82;
        aBlock = MEMORY[0x277D85DD0];
        v104 = 1107296256;
        v105 = thunk for @escaping @callee_guaranteed () -> ();
        v106 = &block_descriptor_521;
        v50 = _Block_copy(&aBlock);
      }

      else
      {
        type metadata accessor for USDImportService.LoadError();
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
        v37 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v89 = v15;
        v38 = v101;
        v39 = *(v101 + 16);
        *(v101 + 16) = v37;

        v40 = (v93 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v41 = *v40;
        v42 = v40[1];
        *v40 = 0;
        v40[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v41);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v43 = __Engine.queue.getter();

        v44 = v98;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v45 = v11;
        v46 = (*(v95 + 80) + 48) & ~*(v95 + 80);
        v47 = swift_allocObject();
        v48 = v99;
        v49 = v100;
        v47[2] = v38;
        v47[3] = v48;
        v47[4] = v49;
        v47[5] = v22;
        outlined init with take of URL?(v44, v47 + v46);
        v107 = partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v108 = v47;
        aBlock = MEMORY[0x277D85DD0];
        v104 = 1107296256;
        v105 = thunk for @escaping @callee_guaranteed () -> ();
        v106 = &block_descriptor_507;
        v50 = _Block_copy(&aBlock);
      }

      v85 = v92;
      static DispatchQoS.unspecified.getter();
      v102 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v86 = v91;
      v87 = v94;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v85, v86, v50);
      _Block_release(v50);

      (*(v45 + 8))(v86, v87);
      (*(v90 + 8))(v85, v89);

      goto LABEL_25;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s9RealityIO16USDImportServiceC19loadAsyncCommonImpl33_591477937901C3574B11AA1E47A8ACC4LL10contentsOf5named2in22configureImportSession7fulfill8postLoad24enforceMemoryConstraints11memoryLimit14featuresToSkip12selectEntity10entityTypey10Foundation3URLV_SSSgSo8NSBundleCSgyAA0tU0CcSgys6ResultOyxs5Error_pGcySDySSypGKcSgSbSgSiSg0A3Kit6EntityC02__X7OptionsV16LoadableFeaturesVSgA9_AYKcSgxmtA9_RbzlFA7_12AnchorEntityC_Tt9g5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16)
{
  v153 = a8;
  v152 = a7;
  v137 = a6;
  v157 = a5;
  v138 = a4;
  v146 = a3;
  v135[1] = a2;
  v145 = type metadata accessor for DispatchWorkItemFlags();
  v144 = *(v145 - 8);
  v17 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v141 = v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchQoS();
  v142 = *(v143 - 8);
  v19 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v140 = v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v135 - v23;
  v25 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v148 = *(v25 - 8);
  v26 = *(v148 + 64);
  MEMORY[0x28223BE20](v25);
  v136 = v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v147 = v135 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v149 = *(v30 - 8);
  v31 = *(v149 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v151 = v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = v135 - v34;
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = v135 - v43;
  v45 = *(v37 + 16);
  v45(v135 - v43, a1, v36, v42);
  (v45)(v35, a1, v36);
  v155 = v37;
  v46 = v37;
  v47 = v157;
  v48 = *(v46 + 56);
  v158 = v35;
  v48(v35, 0, 1, v36);
  v154 = v44;
  v156 = v36;
  (v45)(v40, v44, v36);
  v49 = _s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(v40, 0, 0, 1);
  v50 = v49;
  if (v47)
  {
    if (v49)
    {
      sub_26187DB8C(v47);

      v47(v51);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v47);
      goto LABEL_5;
    }
  }

  else if (v49)
  {
LABEL_5:
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a14, v24, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    v52 = v148;
    v53 = (*(v148 + 48))(v24, 1, v25);
    v54 = v147;
    if (v53 == 1)
    {

      result = outlined destroy of Any?(v24, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      (*(v52 + 32))(v147, v24, v25);

      v67 = v136;
      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
      v68 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v69 = *(v52 + 8);
      v69(v67, v25);
      if (v68)
      {
        v70 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v71 = *(v50 + v70);
        RIOImportSessionSetLoadAudio();
      }

      result = (v69)(v54, v25);
    }

    if (a11 != 2 && (a11 & 1) != 0)
    {
      if (a13)
      {
        result = MEMORY[0x266713650](result);
        v72 = result;
      }

      else
      {
        v72 = a12;
      }

      if (v72 + 0x4000000000000000 < 0)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v73 = swift_allocObject();
      v74 = MEMORY[0x277D84F90];
      *(v73 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v75 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v76 = *(v50 + v75);
      v164 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
      v165 = v73;
      aBlock = MEMORY[0x277D85DD0];
      v161 = 1107296256;
      v162 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v163 = &block_descriptor_443;
      v77 = _Block_copy(&aBlock);
      v78 = v76;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v77);

      swift_beginAccess();
      v79 = *(v73 + 16);

      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 1 << *(v79 + 32);
      v86 = -1;
      if (v85 < 64)
      {
        v86 = ~(-1 << v85);
      }

      v87 = v86 & *(v79 + 64);
      v88 = (v85 + 63) >> 6;
      if (v87)
      {
        while (1)
        {
          v89 = v80;
LABEL_24:
          v90 = (*(v79 + 56) + ((v89 << 11) | (32 * __clz(__rbit64(v87)))));
          v91 = __OFADD__(v81, *v90);
          v81 += *v90;
          if (v91)
          {
            break;
          }

          v92 = v90[1];
          v91 = __OFADD__(v82, v92);
          v82 += v92;
          if (v91)
          {
            goto LABEL_54;
          }

          v93 = v90[2];
          v91 = __OFADD__(v83, v93);
          v83 += v93;
          if (v91)
          {
            goto LABEL_55;
          }

          v87 &= v87 - 1;
          v94 = v90[3];
          if (v94 > v84)
          {
            v84 = v94;
          }

          v80 = v89;
          if (!v87)
          {
            goto LABEL_21;
          }
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      while (1)
      {
LABEL_21:
        v89 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v89 >= v88)
        {
          break;
        }

        v87 = *(v79 + 64 + 8 * v89);
        ++v80;
        if (v87)
        {
          goto LABEL_24;
        }
      }

      v95 = v82 * v84;
      if ((v82 * v84) >> 64 != (v82 * v84) >> 63)
      {
        goto LABEL_57;
      }

      if ((v95 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_58;
      }

      if ((v83 * 3) >> 64 != (3 * v83) >> 63)
      {
        goto LABEL_59;
      }

      if ((3 * v83 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v96 = 4 * v95;
      v97 = v96 + 12 * v83;
      if (__OFADD__(v96, 12 * v83))
      {
        goto LABEL_61;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= 2 * v72 / 3)
      {
        v98 = 2 * v72 / 3;
      }

      else
      {
        v98 = result;
      }

      v91 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v91)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v99 & ~(v99 >> 63), v50, COERCE_DOUBLE(0x100000001000));
      v101 = v100;

      v102 = v97 + v101;
      if (__OFADD__(v97, v101))
      {
        goto LABEL_63;
      }

      v103 = (v102 * 3) >> 64;
      v104 = 3 * v102;
      if (v103 != v104 >> 63)
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return result;
      }

      if (__OFADD__(v72, 10))
      {
        goto LABEL_65;
      }

      v105 = v104;
      if (v72 + 10 < v104 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v106 = __Engine.queue.getter();

        v107 = swift_allocObject();
        v108 = v153;
        v107[2] = v152;
        v107[3] = v108;
        v107[4] = v105 / 2;
        v107[5] = v72;
        v164 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v165 = v107;
        aBlock = MEMORY[0x277D85DD0];
        v161 = 1107296256;
        v162 = thunk for @escaping @callee_guaranteed () -> ();
        v163 = &block_descriptor_457;
        v109 = _Block_copy(&aBlock);

        v110 = v140;
        static DispatchQoS.unspecified.getter();
        v159 = v74;
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v111 = v141;
        v112 = v145;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v110, v111, v109);
        _Block_release(v109);

        (*(v144 + 8))(v111, v112);
        (*(v142 + 8))(v110, v143);
        v66 = v158;
        goto LABEL_45;
      }
    }

    v147 = a16;
    v157 = a10;
    v148 = a9;
    if (v138 && v146)
    {
      v113 = v138;
      v114 = [v113 bundleIdentifier];
      if (v114)
      {
        v115 = v114;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v116 = [v113 bundlePath];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v117 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v118 = *(v50 + v117);
      String.utf8CString.getter();
      v119 = v118;

      String.utf8CString.getter();

      String.utf8CString.getter();
      RIOImportSessionSetBundleInfo();
    }

    v120 = v151;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v158, v151, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v121 = (*(v149 + 80) + 40) & ~*(v149 + 80);
    v122 = (v150 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
    v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
    v124 = (v123 + 23) & 0xFFFFFFFFFFFFFFF8;
    v125 = swift_allocObject();
    v126 = v152;
    v125[2] = v50;
    v125[3] = v126;
    v125[4] = v153;
    outlined init with take of URL?(v120, v125 + v121);
    *(v125 + v122) = v50;
    v127 = (v125 + v123);
    *v127 = a15;
    v127[1] = v147;
    *(v125 + v124) = v139;
    v128 = (v125 + ((v124 + 15) & 0xFFFFFFFFFFFFFFF8));
    v129 = v148;
    v130 = v157;
    *v128 = v148;
    v128[1] = v130;
    v131 = (v50 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v132 = v131[1];
    v152 = *v131;
    *v131 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v131[1] = v125;
    swift_retain_n();

    sub_26187DB8C(a15);

    sub_26187DB8C(v129);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v152);
    ImportSession.sceneUpdatePassCompletion.didset();

    v133 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v134 = *(v50 + v133);
    RIOImportSessionUpdate();

    outlined destroy of Any?(v158, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v155 + 8))(v154, v156);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v56 = __Engine.queue.getter();

  v57 = v158;
  v58 = v151;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v158, v151, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v59 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v60 = swift_allocObject();
  v61 = v153;
  *(v60 + 16) = v152;
  *(v60 + 24) = v61;
  outlined init with take of URL?(v58, v60 + v59);
  v164 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v165 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v161 = 1107296256;
  v162 = thunk for @escaping @callee_guaranteed () -> ();
  v163 = &block_descriptor_434;
  v62 = _Block_copy(&aBlock);

  v63 = v140;
  static DispatchQoS.unspecified.getter();
  v159 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v64 = v141;
  v65 = v145;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v63, v64, v62);
  _Block_release(v62);

  (*(v144 + 8))(v64, v65);
  (*(v142 + 8))(v63, v143);
  v66 = v57;
LABEL_45:
  outlined destroy of Any?(v66, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v155 + 8))(v154, v156);
}

char *specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v5 = type metadata accessor for __EngineRef();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = v11[2];
  v19(&v33 - v17, a1, v10, v16);
  (v19)(v14, v18, v10);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v6 + 8))(v9, v5);
  if (specialized static USDImportService.canLoad(url:)())
  {
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    SingleUseImporterWithURL = RIOImportSessionCreateSingleUseImporterWithURL();

    v24 = type metadata accessor for ImportSession(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = specialized ImportSession.init<A>(core:entityType:)(SingleUseImporterWithURL, v34);
    v28 = v11[1];
    v28(v14, v10);
    v28(v18, v10);
    v29 = v35;
    if (v35 && v27)
    {
      sub_26187DB8C(v35);

      v29(v30);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v29);
    }
  }

  else
  {
    v31 = v11[1];
    v31(v14, v10);
    v31(v18, v10);
    return 0;
  }

  return v27;
}

uint64_t USDImportService.loadAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  LODWORD(v151) = a8;
  v148 = a7;
  v147 = a6;
  v162 = a5;
  v161 = a4;
  v158 = type metadata accessor for DispatchWorkItemFlags();
  v156 = *(v158 - 8);
  v14 = *(v156 + 64);
  MEMORY[0x28223BE20](v158);
  v155 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for DispatchQoS();
  v157 = *(v159 - 8);
  v16 = *(v157 + 64);
  MEMORY[0x28223BE20](v159);
  v160 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v137 - v20;
  v150 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v149 = *(v150 - 8);
  v22 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v143 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v144 = &v137 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v152 = *(v26 - 8);
  v27 = *(v152 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v154 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v137 - v30;
  v153 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v137 - v34;
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for USDImportService();
  v145 = a3;
  static USDImportService.urlForUSD(named:in:)(a1, a2, a3, v35);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    outlined destroy of Any?(v35, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v41 = __Engine.queue.getter();

    v42 = swift_allocObject();
    v43 = v162;
    v42[2] = v161;
    v42[3] = v43;
    v42[4] = a1;
    v42[5] = a2;
    v168 = partial apply for closure #1 in USDImportService.loadBodyTrackedAsync(named:in:fulfill:postLoad:);
    v169 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v165 = 1107296256;
    v166 = thunk for @escaping @callee_guaranteed () -> ();
    v167 = &block_descriptor_183;
    v44 = _Block_copy(&aBlock);

    v45 = v160;
    static DispatchQoS.unspecified.getter();
    v163 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v46 = v155;
    v47 = v158;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v45, v46, v44);
    _Block_release(v44);

    (*(v156 + 8))(v46, v47);
    (*(v157 + 8))(v45, v159);
  }

  v141 = a1;
  v140 = a2;
  (*(v37 + 32))(v40, v35, v36);
  v48 = type metadata accessor for Entity();
  (*(v37 + 16))(v31, v40, v36);
  (*(v37 + 56))(v31, 0, 1, v36);
  v49 = specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(v40, v48, 0, 0);
  v142 = v36;
  if (!v49)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v54 = __Engine.queue.getter();

    v55 = v154;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v31, v154, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v56 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v57 = swift_allocObject();
    v58 = v162;
    *(v57 + 16) = v161;
    *(v57 + 24) = v58;
    outlined init with take of URL?(v55, v57 + v56);
    v168 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v169 = v57;
    aBlock = MEMORY[0x277D85DD0];
    v165 = 1107296256;
    v166 = thunk for @escaping @callee_guaranteed () -> ();
    v167 = &block_descriptor_190;
    v59 = _Block_copy(&aBlock);

    v60 = v160;
    static DispatchQoS.unspecified.getter();
    v163 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v61 = v155;
    v62 = v158;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v60, v61, v59);
    _Block_release(v59);

    (*(v156 + 8))(v61, v62);
    (*(v157 + 8))(v60, v159);
    outlined destroy of Any?(v31, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v37 + 8))(v40, v142);
  }

  v50 = v49;
  v137 = v40;
  v139 = v37;
  v138 = v31;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a11, v21, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v51 = v149;
  v52 = v150;
  if ((*(v149 + 48))(v21, 1, v150) == 1)
  {

    v53 = outlined destroy of Any?(v21, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  }

  else
  {
    v63 = v144;
    (*(v51 + 32))(v144, v21, v52);

    v64 = v143;
    static Entity.__LoadOptions.LoadableFeatures.audio.getter();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
    v65 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v66 = *(v51 + 8);
    v66(v64, v52);
    if (v65)
    {
      v67 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v68 = *(v50 + v67);
      RIOImportSessionSetLoadAudio();
    }

    v53 = (v66)(v63, v52);
  }

  if (v151 == 2 || (v151 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (a10)
  {
    result = MEMORY[0x266713650](v53);
  }

  else
  {
    result = a9;
  }

  if (result + 0x4000000000000000 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v151 = result;
  v70 = 2 * result / 3;
  v71 = swift_allocObject();
  *(v71 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v72 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v73 = *(v50 + v72);
  v168 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
  v169 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v165 = 1107296256;
  v166 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
  v167 = &block_descriptor_199;
  v74 = _Block_copy(&aBlock);
  v75 = v73;

  RIOImportSessionGatherMeshEstimates();
  _Block_release(v74);

  swift_beginAccess();
  v76 = *(v71 + 16);

  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 1 << *(v76 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v76 + 64);
  v85 = (v82 + 63) >> 6;
  v86 = v139;
  v87 = v162;
  if (v84)
  {
    while (1)
    {
      v88 = v77;
LABEL_23:
      v89 = (*(v76 + 56) + ((v88 << 11) | (32 * __clz(__rbit64(v84)))));
      v90 = __OFADD__(v78, *v89);
      v78 += *v89;
      if (v90)
      {
        break;
      }

      v91 = v89[1];
      v90 = __OFADD__(v79, v91);
      v79 += v91;
      if (v90)
      {
        goto LABEL_50;
      }

      v92 = v89[2];
      v90 = __OFADD__(v80, v92);
      v80 += v92;
      if (v90)
      {
        goto LABEL_51;
      }

      v84 &= v84 - 1;
      v93 = v89[3];
      if (v93 > v81)
      {
        v81 = v93;
      }

      v77 = v88;
      if (!v84)
      {
        goto LABEL_20;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  while (1)
  {
LABEL_20:
    v88 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v88 >= v85)
    {
      break;
    }

    v84 = *(v76 + 64 + 8 * v88);
    ++v77;
    if (v84)
    {
      goto LABEL_23;
    }
  }

  v94 = v79 * v81;
  if ((v79 * v81) >> 64 != (v79 * v81) >> 63)
  {
    goto LABEL_53;
  }

  v95 = v138;
  if ((v94 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_54;
  }

  v96 = 3 * v80;
  if ((v80 * 3) >> 64 != (3 * v80) >> 63)
  {
    goto LABEL_55;
  }

  if ((v96 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v97 = 4 * v94;
  v98 = v97 + 12 * v80;
  if (__OFADD__(v97, 4 * v96))
  {
    goto LABEL_57;
  }

  result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
  if (result >= v70)
  {
    v99 = v70;
  }

  else
  {
    v99 = result;
  }

  v90 = __OFSUB__(v99, v98);
  v100 = v99 - v98;
  if (v90)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v100 & ~(v100 >> 63), v50, COERCE_DOUBLE(0x100000001000));
  v101 = v160;
  v103 = v102;

  v104 = v98 + v103;
  if (__OFADD__(v98, v103))
  {
    goto LABEL_59;
  }

  v105 = (v104 * 3) >> 64;
  v106 = 3 * v104;
  if (v105 == v106 >> 63)
  {
    if (__OFADD__(v151, 10))
    {
      goto LABEL_61;
    }

    v107 = v106;
    if (v151 + 10 < v106 / 2)
    {
      v108 = v151;
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.engine.getter();

      v109 = __Engine.queue.getter();

      v110 = swift_allocObject();
      v110[2] = v161;
      v110[3] = v87;
      v110[4] = v107 / 2;
      v110[5] = v108;
      v168 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
      v169 = v110;
      aBlock = MEMORY[0x277D85DD0];
      v165 = 1107296256;
      v166 = thunk for @escaping @callee_guaranteed () -> ();
      v167 = &block_descriptor_213_0;
      v111 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v163 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v112 = v155;
      v113 = v158;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v101, v112, v111);
      _Block_release(v111);

      (*(v156 + 8))(v112, v113);
      (*(v157 + 8))(v101, v159);
      outlined destroy of Any?(v95, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v86 + 8))(v137, v142);
    }

LABEL_45:
    v114 = v145;
    v115 = [v114 bundleIdentifier];
    if (v115)
    {
      v116 = v115;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v117 = [v114 bundlePath];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v118 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    v160 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v119 = *(v50 + v118);
    String.utf8CString.getter();
    v120 = v119;

    String.utf8CString.getter();

    String.utf8CString.getter();
    RIOImportSessionSetBundleInfo();

    v121 = v138;
    v122 = v154;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v138, v154, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v123 = (*(v152 + 80) + 40) & ~*(v152 + 80);
    v124 = (v153 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
    v125 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
    v126 = (v125 + 23) & 0xFFFFFFFFFFFFFFF8;
    v127 = swift_allocObject();
    v128 = v161;
    v127[2] = v50;
    v127[3] = v128;
    v127[4] = v162;
    outlined init with take of URL?(v122, v127 + v123);
    *(v127 + v124) = v50;
    v129 = (v127 + v125);
    *v129 = 0;
    v129[1] = 0;
    *(v127 + v126) = v146;
    v130 = (v127 + ((v126 + 15) & 0xFFFFFFFFFFFFFFF8));
    v131 = v147;
    v132 = v148;
    *v130 = v147;
    v130[1] = v132;
    v133 = (v50 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v134 = *v133;
    v135 = v133[1];
    *v133 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v133[1] = v127;
    swift_retain_n();

    sub_26187DB8C(v131);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v134);
    ImportSession.sceneUpdatePassCompletion.didset();

    v136 = *&v160[v50];
    RIOImportSessionUpdate();

    outlined destroy of Any?(v121, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v139 + 8))(v137, v142);
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Data.Iterator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62 == 2)
  {
    v11 = *(a2 + 16);
  }

  outlined copy of Data._Representation(a2, a3);
  Data.Iterator.init(_:at:)();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator, MEMORY[0x277CC92E0]);
  v12 = 0;
  while (1)
  {
    result = dispatch thunk of IteratorProtocol.next()();
    if (v17[15])
    {
      result = (*(v7 + 8))(v10, v6);
      v16 = *(a1 + 16);
      if (v16 != v12)
      {
        if (v12 < v16)
        {
          return 0;
        }

        goto LABEL_15;
      }

      return 1;
    }

    v14 = *(a1 + 16);
    if (v12 == v14)
    {
      (*(v7 + 8))(v10, v6);
      return 1;
    }

    if (v12 >= v14)
    {
      break;
    }

    v15 = *(a1 + 32 + v12++);
    if (v17[14] != v15)
    {
      (*(v7 + 8))(v10, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10)
{
  v115 = a8;
  LODWORD(v125) = a7;
  v118 = a6;
  v117 = a5;
  v126 = a4;
  v128 = a3;
  v127 = a2;
  v123 = type metadata accessor for DispatchWorkItemFlags();
  v124 = *(v123 - 8);
  v11 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  v120 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for DispatchQoS();
  v121 = *(v122 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v113 - v17;
  v19 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v113 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v113 - v32;
  v34 = type metadata accessor for URL();
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  v35 = closure #1 in USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(a1, v127, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAL_Tt0g5);
  if (v35)
  {
    v36 = v35;
    v114 = v29;
    v127 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a10, v18, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      outlined destroy of Any?(v18, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      (*(v20 + 32))(v26, v18, v19);

      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
      v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v47 = *(v20 + 8);
      v47(v23, v19);
      if (v46)
      {
        v48 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v49 = *(v36 + v48);
        RIOImportSessionSetLoadAudio();
      }

      v47(v26, v19);
    }

    v50 = v128;
    v51 = v33;
    v52 = v127;
    v53 = v114;
    if (v125 != 2 && (v125 & 1) != 0)
    {
      result = v115;
      if (a9)
      {
        result = MEMORY[0x266713650](v115);
      }

      if (result + 0x4000000000000000 < 0)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v55 = v36;
      v115 = result;
      v56 = 2 * result / 3;
      v57 = swift_allocObject();
      *(v57 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v58 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v59 = *(v55 + v58);
      v134 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
      v135 = v57;
      aBlock = MEMORY[0x277D85DD0];
      v131 = 1107296256;
      v132 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v133 = &block_descriptor_229_0;
      v60 = _Block_copy(&aBlock);
      v61 = v59;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v60);

      swift_beginAccess();
      v62 = *(v57 + 16);

      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 1 << *(v62 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v62 + 64);
      v71 = (v68 + 63) >> 6;
      if (v70)
      {
        while (1)
        {
          v72 = v63;
LABEL_20:
          v73 = (*(v62 + 56) + ((v72 << 11) | (32 * __clz(__rbit64(v70)))));
          v74 = __OFADD__(v64, *v73);
          v64 += *v73;
          if (v74)
          {
            break;
          }

          v75 = v73[1];
          v74 = __OFADD__(v65, v75);
          v65 += v75;
          if (v74)
          {
            goto LABEL_45;
          }

          v76 = v73[2];
          v74 = __OFADD__(v66, v76);
          v66 += v76;
          if (v74)
          {
            goto LABEL_46;
          }

          v70 &= v70 - 1;
          v77 = v73[3];
          if (v77 > v67)
          {
            v67 = v77;
          }

          v63 = v72;
          if (!v70)
          {
            goto LABEL_17;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      while (1)
      {
LABEL_17:
        v72 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v72 >= v71)
        {
          break;
        }

        v70 = *(v62 + 64 + 8 * v72);
        ++v63;
        if (v70)
        {
          goto LABEL_20;
        }
      }

      v78 = v65 * v67;
      if ((v65 * v67) >> 64 != (v65 * v67) >> 63)
      {
        goto LABEL_48;
      }

      v52 = v127;
      if ((v78 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_49;
      }

      v79 = 3 * v66;
      if ((v66 * 3) >> 64 != (3 * v66) >> 63)
      {
        goto LABEL_50;
      }

      if ((v79 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v80 = 4 * v78;
      v81 = v80 + 12 * v66;
      if (__OFADD__(v80, 4 * v79))
      {
        goto LABEL_52;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= v56)
      {
        v82 = v56;
      }

      else
      {
        v82 = result;
      }

      v74 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v74)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v125 = v55;
      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v83 & ~(v83 >> 63), v55, COERCE_DOUBLE(0x100000001000));
      v84 = v123;
      v85 = v124;
      v87 = v86;

      v88 = v81 + v87;
      if (__OFADD__(v81, v87))
      {
        goto LABEL_54;
      }

      v89 = (v88 * 3) >> 64;
      v90 = 3 * v88;
      v53 = v114;
      if (v89 != v90 >> 63)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v36 = v55;
      v50 = v128;
      if (__OFADD__(v115, 10))
      {
        goto LABEL_56;
      }

      v51 = v33;
      v91 = v90;
      if (v115 + 10 < v90 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v92 = __Engine.queue.getter();

        v93 = swift_allocObject();
        v94 = v126;
        v93[2] = v50;
        v93[3] = v94;
        v95 = v115;
        v93[4] = v91 / 2;
        v93[5] = v95;
        v134 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v135 = v93;
        aBlock = MEMORY[0x277D85DD0];
        v131 = 1107296256;
        v132 = thunk for @escaping @callee_guaranteed () -> ();
        v133 = &block_descriptor_243;
        v96 = _Block_copy(&aBlock);

        v97 = v119;
        static DispatchQoS.unspecified.getter();
        v129 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v98 = v120;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v97, v98, v96);
        _Block_release(v96);

        (*(v85 + 8))(v98, v84);
        (*(v121 + 8))(v97, v122);
        v45 = v33;
        goto LABEL_41;
      }
    }

    v113 = v51;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v51, v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v99 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v100 = (v53 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
    v102 = (v101 + 23) & 0xFFFFFFFFFFFFFFF8;
    v103 = swift_allocObject();
    v103[2] = v36;
    v103[3] = v50;
    v103[4] = v126;
    outlined init with take of URL?(v52, v103 + v99);
    *(v103 + v100) = v36;
    v104 = (v103 + v101);
    *v104 = 0;
    v104[1] = 0;
    *(v103 + v102) = v116;
    v105 = (v103 + ((v102 + 15) & 0xFFFFFFFFFFFFFFF8));
    v106 = v117;
    v107 = v118;
    *v105 = v117;
    v105[1] = v107;
    v108 = (v36 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v109 = *v108;
    v110 = v108[1];
    *v108 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v108[1] = v103;
    swift_retain_n();

    sub_26187DB8C(v106);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v109);
    ImportSession.sceneUpdatePassCompletion.didset();

    v111 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v112 = *(v36 + v111);
    RIOImportSessionUpdate();

    return outlined destroy of Any?(v113, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v37 = __Engine.queue.getter();

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v33, v30, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v38 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v39 = swift_allocObject();
  v40 = v126;
  *(v39 + 16) = v128;
  *(v39 + 24) = v40;
  outlined init with take of URL?(v30, v39 + v38);
  v134 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v135 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v131 = 1107296256;
  v132 = thunk for @escaping @callee_guaranteed () -> ();
  v133 = &block_descriptor_220;
  v41 = _Block_copy(&aBlock);

  v42 = v119;
  static DispatchQoS.unspecified.getter();
  v129 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v43 = v120;
  v44 = v123;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v42, v43, v41);
  _Block_release(v41);

  (*(v124 + 8))(v43, v44);
  (*(v121 + 8))(v42, v122);
  v45 = v33;
LABEL_41:
  outlined destroy of Any?(v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t USDImportService.loadModel(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  v70 = a1;
  v71 = a2;
  v23 = a1;
  v25 = v24;
  static USDImportService.urlForUSD(named:in:)(v23, a2, a3, v12);
  if ((*(v25 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of Any?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v26 = type metadata accessor for ModelEntity();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    return ModelEntity.init()();
  }

  v66 = v9;
  (*(v25 + 32))(v22, v12, v13);
  v30 = *(v25 + 16);
  v30(v19, v22, v13);
  v68 = v30;
  v69 = v16;
  v30(v16, v22, v13);
  v72 = v19;
  URL._bridgeToObjectiveC()(v31);
  v32 = v72;
  v34 = v33;
  v35 = RIOPxrUsdStageCreateWithFileURL();

  if (!v35)
  {
    goto LABEL_7;
  }

  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  v67 = v22;
  v37 = TopLevelEntityFromStage;
  type metadata accessor for Stage();
  inited = swift_initStackObject();
  *(inited + 16) = v37;
  v39 = specialized static USDImportService.loadModel_createImportSession(stage:url:)(inited, v32, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5);

  v22 = v67;
  if (v39)
  {
    v40 = a3;
    v41 = [v40 bundleIdentifier];
    if (v41)
    {
      v42 = v41;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v64 = 0;
    }

    v46 = [v40 bundlePath];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v40;

    v47 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v48 = *(v39 + v47);
    String.utf8CString.getter();
    v49 = v48;

    String.utf8CString.getter();

    String.utf8CString.getter();
    RIOImportSessionSetBundleInfo();

    v50 = *(v39 + v47);
    RIOImportSessionUpdateSynchronouslyOnEngineQueue();
    v51 = *(v39 + v47);
    result = RIOImportSessionGetSceneCount();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v52 = result;
    v53 = v73;
    if (!result)
    {
      goto LABEL_18;
    }

    v54 = 0;
    v55 = 0;
    while (1)
    {
      v56 = *(v39 + v47);
      if (RIOImportSessionIsSceneActive())
      {
        if (__OFADD__(v54++, 1))
        {
          break;
        }
      }

      if (v52 == ++v55)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    if (v54 >= 2)
    {
      type metadata accessor for USDImportService.LoadError();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = v72;
      v45 = v69;
    }

    else
    {
LABEL_18:
      v58 = v66;
      v45 = v69;
      v68(v66, v69, v13);
      (*(v25 + 56))(v58, 0, 1, v13);
      v59 = specialized static USDImportService.loadModel_selectEntity(contentsOf:importSession:)(v58, v39);
      if (!v53)
      {
        v61 = v59;
        outlined destroy of Any?(v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

        v62 = *(v25 + 8);
        v62(v67, v13);
        v62(v45, v13);
        v62(v72, v13);
        return v61;
      }

      outlined destroy of Any?(v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v32 = v72;
    }

    v22 = v67;
  }

  else
  {
LABEL_7:
    type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    v44 = v43;
    v68(v43, v22, v13);
    (*(v25 + 56))(v44, 0, 1, v13);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v45 = v69;
  }

  v60 = *(v25 + 8);
  v60(v22, v13);
  v60(v45, v13);
  return (v60)(v32, v13);
}

uint64_t USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v184 = a8;
  v180 = a7;
  v179 = a6;
  v198 = a5;
  v199 = a3;
  v200 = a4;
  v193 = type metadata accessor for DispatchWorkItemFlags();
  v196 = *(v193 - 8);
  v13 = *(v196 + 64);
  MEMORY[0x28223BE20](v193);
  v195 = v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for DispatchQoS();
  v197 = *(v194 - 8);
  v15 = *(v197 + 64);
  MEMORY[0x28223BE20](v194);
  v192 = v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v181 = v172 - v19;
  v183 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v182 = *(v183 - 8);
  v20 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v175 = v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v176 = v172 - v23;
  v187 = type metadata accessor for __EngineRef();
  v186 = *(v187 - 8);
  v24 = *(v186 + 64);
  MEMORY[0x28223BE20](v187);
  v185 = v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v188 = *(v26 - 8);
  v27 = *(v188 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v190 = v172 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v172 - v30;
  v189 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = v172 - v34;
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v191 = v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = v172 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v172 - v43;
  type metadata accessor for USDImportService();
  v45 = a1;
  v46 = a1;
  v47 = a2;
  static USDImportService.urlForUSD(named:in:)(v46, a2, v199, v35);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    outlined destroy of Any?(v35, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v48 = __Engine.queue.getter();

    v49 = swift_allocObject();
    v50 = v198;
    v49[2] = v200;
    v49[3] = v50;
    v49[4] = v45;
    v49[5] = v47;
    v208 = partial apply for closure #1 in USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:);
    v209 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v205 = 1107296256;
    v206 = thunk for @escaping @callee_guaranteed () -> ();
    v207 = &block_descriptor_309;
    v51 = _Block_copy(&aBlock);

    v52 = v192;
    static DispatchQoS.unspecified.getter();
    v203 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v53 = v195;
    v54 = v193;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v52, v53, v51);
    _Block_release(v51);

    (*(v196 + 8))(v53, v54);
    (*(v197 + 8))(v52, v194);
  }

  v172[0] = v45;
  v172[1] = a2;
  v55 = v37;
  v56 = *(v37 + 32);
  v56(v44, v35, v36);
  v57 = *(v55 + 16);
  v57(v31, v44, v36);
  v201 = v36;
  v174 = v55;
  v59 = v55 + 56;
  v58 = *(v55 + 56);
  v177 = v31;
  v58(v31, 0, 1, v201);
  v57(v41, v44, v201);
  v60 = v191;
  v173 = v44;
  v57(v191, v44, v201);
  v61 = *(v59 + 24);
  v62 = v201;
  v63 = (v61 + 16) & ~v61;
  v64 = swift_allocObject();
  v56((v64 + v63), v60, v62);
  v191 = v41;
  URL._bridgeToObjectiveC()(&v210);
  v66 = v65;
  v67 = RIOPxrUsdStageCreateWithFileURL();

  v68 = v200;
  if (!v67)
  {
LABEL_8:
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v87 = __Engine.queue.getter();

    v88 = v177;
    v89 = v190;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v177, v190, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v90 = (*(v188 + 80) + 32) & ~*(v188 + 80);
    v91 = swift_allocObject();
    v92 = v198;
    *(v91 + 16) = v68;
    *(v91 + 24) = v92;
    outlined init with take of URL?(v89, v91 + v90);
    v208 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v209 = v91;
    aBlock = MEMORY[0x277D85DD0];
    v205 = 1107296256;
    v206 = thunk for @escaping @callee_guaranteed () -> ();
    v207 = &block_descriptor_319;
    v93 = _Block_copy(&aBlock);

    v94 = v192;
    static DispatchQoS.unspecified.getter();
    v203 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v95 = v195;
    v96 = v193;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v94, v95, v93);
    _Block_release(v93);

    (*(v196 + 8))(v95, v96);
    (*(v197 + 8))(v94, v194);
    v97 = *(v174 + 8);
    v97(v191, v62);
    outlined destroy of Any?(v88, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v97(v173, v62);
  }

  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for __ServiceLocator();
  v70 = TopLevelEntityFromStage;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v71 = v185;
  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v186 + 8))(v71, v187);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  v73 = type metadata accessor for ImportSession(0);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  v76 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5(SingleUseImporterWithStage);
  if (!v76)
  {

    goto LABEL_8;
  }

  v77 = v76;
  v187 = v64;
  v78 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v79 = *(v77 + v78);

  RIOImportSessionSetIsLoadModelUseCase();
  v80 = *(v77 + v78);
  URL._bridgeToObjectiveC()(&v210);
  v82 = v81;
  RIOImportSessionSetOriginalUrl();

  v83 = v181;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a11, v181, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v84 = v182;
  v85 = v183;
  if ((*(v182 + 48))(v83, 1, v183) == 1)
  {

    result = outlined destroy of Any?(v83, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  }

  else
  {
    v98 = v176;
    (*(v84 + 32))(v176, v83, v85);

    v99 = v175;
    static Entity.__LoadOptions.LoadableFeatures.audio.getter();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
    v100 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v101 = *(v84 + 8);
    v101(v99, v85);
    if (v100)
    {
      v102 = *(v77 + v78);
      RIOImportSessionSetLoadAudio();
    }

    result = (v101)(v98, v85);
  }

  v186 = v78;
  if (v184 == 2 || (v184 & 1) == 0)
  {
LABEL_47:
    v148 = v199;
    v149 = [v148 bundleIdentifier];
    if (v149)
    {
      v150 = v149;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v151 = [v148 bundlePath];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v152 = *(v77 + v78);
    String.utf8CString.getter();
    v153 = v152;

    String.utf8CString.getter();

    String.utf8CString.getter();
    RIOImportSessionSetBundleInfo();

    v154 = v190;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v177, v190, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v155 = (*(v188 + 80) + 40) & ~*(v188 + 80);
    v156 = (v189 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
    v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
    v158 = (v157 + 23) & 0xFFFFFFFFFFFFFFF8;
    v159 = swift_allocObject();
    v160 = v200;
    v159[2] = v77;
    v159[3] = v160;
    v159[4] = v198;
    outlined init with take of URL?(v154, v159 + v155);
    *(v159 + v156) = v77;
    v161 = (v159 + v157);
    v162 = v187;
    *v161 = partial apply for closure #3 in USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:);
    v161[1] = v162;
    *(v159 + v158) = v178;
    v163 = (v159 + ((v158 + 15) & 0xFFFFFFFFFFFFFFF8));
    v164 = v179;
    v165 = v180;
    *v163 = v179;
    v163[1] = v165;
    v166 = (v77 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v167 = *v166;
    v168 = v166[1];
    *v166 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v166[1] = v159;
    swift_retain_n();

    sub_26187DB8C(v164);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v167);
    ImportSession.sceneUpdatePassCompletion.didset();

    v169 = *(v77 + v186);
    RIOImportSessionUpdate();

    v170 = *(v174 + 8);
    v171 = v201;
    v170(v191, v201);
    outlined destroy of Any?(v177, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (v170)(v173, v171);
  }

  if (a10)
  {
    result = MEMORY[0x266713650](result);
    v103 = result;
  }

  else
  {
    v103 = a9;
  }

  if (v103 + 0x4000000000000000 < 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v104 = swift_allocObject();
  *(v104 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v105 = *(v77 + v78);
  v208 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
  v209 = v104;
  aBlock = MEMORY[0x277D85DD0];
  v205 = 1107296256;
  v206 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
  v207 = &block_descriptor_328;
  v106 = _Block_copy(&aBlock);
  v107 = v105;

  RIOImportSessionGatherMeshEstimates();
  _Block_release(v106);

  swift_beginAccess();
  v108 = *(v104 + 16);

  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 1 << *(v108 + 32);
  v115 = -1;
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  v116 = v115 & *(v108 + 64);
  v117 = (v114 + 63) >> 6;
  if (v116)
  {
    while (1)
    {
      v118 = v109;
LABEL_26:
      v119 = (*(v108 + 56) + ((v118 << 11) | (32 * __clz(__rbit64(v116)))));
      v120 = __OFADD__(v110, *v119);
      v110 += *v119;
      if (v120)
      {
        break;
      }

      v121 = v119[1];
      v120 = __OFADD__(v111, v121);
      v111 += v121;
      if (v120)
      {
        goto LABEL_52;
      }

      v122 = v119[2];
      v120 = __OFADD__(v112, v122);
      v112 += v122;
      if (v120)
      {
        goto LABEL_53;
      }

      v116 &= v116 - 1;
      v123 = v119[3];
      if (v123 > v113)
      {
        v113 = v123;
      }

      v109 = v118;
      if (!v116)
      {
        goto LABEL_23;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  while (1)
  {
LABEL_23:
    v118 = v109 + 1;
    if (__OFADD__(v109, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v118 >= v117)
    {
      break;
    }

    v116 = *(v108 + 64 + 8 * v118);
    ++v109;
    if (v116)
    {
      goto LABEL_26;
    }
  }

  v124 = v111 * v113;
  if ((v111 * v113) >> 64 != (v111 * v113) >> 63)
  {
    goto LABEL_55;
  }

  if ((v124 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_56;
  }

  v125 = 3 * v112;
  if ((v112 * 3) >> 64 != (3 * v112) >> 63)
  {
    goto LABEL_57;
  }

  if ((v125 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v126 = 4 * v124;
  v127 = v126 + 12 * v112;
  if (__OFADD__(v126, 4 * v125))
  {
    goto LABEL_59;
  }

  result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
  if (result >= 2 * v103 / 3)
  {
    v128 = 2 * v103 / 3;
  }

  else
  {
    v128 = result;
  }

  v120 = __OFSUB__(v128, v127);
  v129 = v128 - v127;
  if (v120)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v129 & ~(v129 >> 63), v77, COERCE_DOUBLE(0x100000001000));
  v130 = v197;
  v131 = v196;
  v133 = v132;

  v134 = v127 + v133;
  if (__OFADD__(v127, v133))
  {
    goto LABEL_61;
  }

  v135 = (v134 * 3) >> 64;
  v136 = 3 * v134;
  v137 = v195;
  v78 = v186;
  if (v135 == v136 >> 63)
  {
    if (__OFADD__(v103, 10))
    {
      goto LABEL_63;
    }

    v138 = v136;
    if (v103 + 10 < v136 / 2)
    {
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.engine.getter();

      v139 = __Engine.queue.getter();

      v140 = swift_allocObject();
      v141 = v198;
      v140[2] = v200;
      v140[3] = v141;
      v140[4] = v138 / 2;
      v140[5] = v103;
      v208 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
      v209 = v140;
      aBlock = MEMORY[0x277D85DD0];
      v205 = 1107296256;
      v206 = thunk for @escaping @callee_guaranteed () -> ();
      v207 = &block_descriptor_342;
      v142 = _Block_copy(&aBlock);

      v143 = v192;
      static DispatchQoS.unspecified.getter();
      v202 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v144 = v137;
      v145 = v193;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v143, v144, v142);
      _Block_release(v142);

      (*(v131 + 8))(v144, v145);
      (*(v130 + 8))(v143, v194);
      v146 = *(v174 + 8);
      v147 = v201;
      v146(v191, v201);
      outlined destroy of Any?(v177, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v146(v173, v147);
    }

    goto LABEL_47;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void closure #1 in USDImportService.loadAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for USDImportService.LoadError();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
  v7 = swift_allocError();
  *v8 = a3;
  v8[1] = a4;
  swift_storeEnumTagMultiPayload();

  a1(v7, 1);
}

uint64_t closure #3 in USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = a3(v9, a1);
  outlined destroy of Any?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

id USDImportService.loadModelAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, char a9, uint64_t a10)
{
  v130 = a7;
  v127 = a6;
  v126 = a5;
  v141 = a4;
  v140 = a3;
  v136 = type metadata accessor for DispatchWorkItemFlags();
  v135 = *(v136 - 8);
  v13 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v132 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for DispatchQoS();
  v133 = *(v134 - 8);
  v15 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v131 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v123 - v19;
  v129 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v128 = *(v129 - 8);
  v21 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v23 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v124 = &v123 - v25;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v137 = *(v31 - 8);
  v32 = *(v137 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v139 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v33;
  v35 = MEMORY[0x28223BE20](v34);
  v36 = *(v27 + 56);
  v142 = &v123 - v37;
  v36(v35);
  v38 = specialized static USDImportService.createDummyDataFilename(from:)(a1, a2);
  if (v39)
  {
    v40 = v38;
    v41 = v39;
    v123 = a8;
    type metadata accessor for Stage();
    swift_allocObject();

    outlined copy of Data._Representation(a1, a2);
    v54 = Stage.init(identifier:data:)(v40, v41, a1, a2);
    URL.init(fileURLWithPath:)();

    v55 = specialized static USDImportService.loadModel_createImportSession(stage:url:)(v54, v30, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5);

    (*(v27 + 8))(v30, v26);
    v56 = v123;
    if (v55)
    {
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a10, v20, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      v57 = v128;
      v58 = v129;
      if ((*(v128 + 48))(v20, 1, v129) == 1)
      {

        result = outlined destroy of Any?(v20, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      }

      else
      {
        v59 = v124;
        (*(v57 + 32))(v124, v20, v58);

        static Entity.__LoadOptions.LoadableFeatures.audio.getter();
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
        v60 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v61 = *(v57 + 8);
        v61(v23, v58);
        if (v60)
        {
          v62 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
          swift_beginAccess();
          v63 = *(v55 + v62);
          RIOImportSessionSetLoadAudio();
        }

        result = (v61)(v59, v58);
        v56 = v123;
      }

      if (v130 != 2 && (v130 & 1) != 0)
      {
        if (a9)
        {
          result = MEMORY[0x266713650](result);
          v56 = result;
        }

        if (v56 + 0x4000000000000000 < 0)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v64 = v56;
        v65 = 2 * v56 / 3;
        v66 = swift_allocObject();
        *(v66 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v67 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v68 = *(v55 + v67);
        v148 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
        v149 = v66;
        aBlock = MEMORY[0x277D85DD0];
        v145 = 1107296256;
        v146 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
        v147 = &block_descriptor_358;
        v69 = _Block_copy(&aBlock);
        v70 = v68;

        RIOImportSessionGatherMeshEstimates();
        _Block_release(v69);

        swift_beginAccess();
        v71 = *(v66 + 16);

        v72 = 0;
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v77 = 1 << *(v71 + 32);
        v78 = -1;
        if (v77 < 64)
        {
          v78 = ~(-1 << v77);
        }

        v79 = v78 & *(v71 + 64);
        v80 = (v77 + 63) >> 6;
        if (v79)
        {
          while (1)
          {
            v81 = v72;
LABEL_23:
            v82 = (*(v71 + 56) + ((v81 << 11) | (32 * __clz(__rbit64(v79)))));
            v83 = __OFADD__(v73, *v82);
            v73 += *v82;
            if (v83)
            {
              break;
            }

            v84 = v82[1];
            v83 = __OFADD__(v74, v84);
            v74 += v84;
            if (v83)
            {
              goto LABEL_47;
            }

            v85 = v82[2];
            v83 = __OFADD__(v75, v85);
            v75 += v85;
            if (v83)
            {
              goto LABEL_48;
            }

            v79 &= v79 - 1;
            v86 = v82[3];
            if (v86 > v76)
            {
              v76 = v86;
            }

            v72 = v81;
            if (!v79)
            {
              goto LABEL_20;
            }
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        while (1)
        {
LABEL_20:
          v81 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v81 >= v80)
          {
            break;
          }

          v79 = *(v71 + 64 + 8 * v81);
          ++v72;
          if (v79)
          {
            goto LABEL_23;
          }
        }

        v87 = v74 * v76;
        if ((v74 * v76) >> 64 != (v74 * v76) >> 63)
        {
          goto LABEL_50;
        }

        if ((v87 - 0x2000000000000000) >> 62 != 3)
        {
          goto LABEL_51;
        }

        v88 = 3 * v75;
        if ((v75 * 3) >> 64 != (3 * v75) >> 63)
        {
          goto LABEL_52;
        }

        if ((v88 - 0x2000000000000000) >> 62 != 3)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v89 = 4 * v87;
        v90 = v89 + 12 * v75;
        if (__OFADD__(v89, 4 * v88))
        {
          goto LABEL_54;
        }

        result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
        if (result >= v65)
        {
          v91 = v65;
        }

        else
        {
          v91 = result;
        }

        v83 = __OFSUB__(v91, v90);
        v92 = v91 - v90;
        if (v83)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v92 & ~(v92 >> 63), v55, COERCE_DOUBLE(0x100000001000));
        v94 = v93;

        v95 = v90 + v94;
        if (__OFADD__(v90, v94))
        {
          goto LABEL_56;
        }

        v96 = (v95 * 3) >> 64;
        v97 = 3 * v95;
        if (v96 != v97 >> 63)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        if (__OFADD__(v64, 10))
        {
          goto LABEL_58;
        }

        v98 = v97;
        if (v64 + 10 < v97 / 2)
        {
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v99 = __Engine.queue.getter();

          v100 = swift_allocObject();
          v101 = v141;
          v100[2] = v140;
          v100[3] = v101;
          v100[4] = v98 / 2;
          v100[5] = v64;
          v148 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v149 = v100;
          aBlock = MEMORY[0x277D85DD0];
          v145 = 1107296256;
          v146 = thunk for @escaping @callee_guaranteed () -> ();
          v147 = &block_descriptor_372;
          v102 = _Block_copy(&aBlock);

          v103 = v131;
          static DispatchQoS.unspecified.getter();
          v143 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v104 = v132;
          v105 = v136;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v103, v104, v102);
          _Block_release(v102);

          (*(v135 + 8))(v104, v105);
          (*(v133 + 8))(v103, v134);
          v52 = v142;
          goto LABEL_4;
        }
      }

      v106 = v142;
      v107 = v139;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v142, v139, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v108 = (*(v137 + 80) + 40) & ~*(v137 + 80);
      v109 = (v138 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
      v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
      v111 = (v110 + 23) & 0xFFFFFFFFFFFFFFF8;
      v112 = swift_allocObject();
      v113 = v140;
      v112[2] = v55;
      v112[3] = v113;
      v112[4] = v141;
      outlined init with take of URL?(v107, v112 + v108);
      *(v112 + v109) = v55;
      v114 = (v112 + v110);
      *v114 = closure #2 in USDImportService.loadModelAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:);
      v114[1] = 0;
      *(v112 + v111) = v125;
      v115 = (v112 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8));
      v116 = v126;
      v117 = v127;
      *v115 = v126;
      v115[1] = v117;
      v118 = (v55 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
      swift_beginAccess();
      v119 = *v118;
      v120 = v118[1];
      *v118 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
      v118[1] = v112;
      swift_retain_n();

      sub_26187DB8C(v116);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v119);
      ImportSession.sceneUpdatePassCompletion.didset();

      v121 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v122 = *(v55 + v121);
      RIOImportSessionUpdate();

      return outlined destroy of Any?(v106, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v42 = __Engine.queue.getter();

  v43 = v142;
  v44 = v139;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v142, v139, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v45 = (*(v137 + 80) + 32) & ~*(v137 + 80);
  v46 = swift_allocObject();
  v47 = v141;
  *(v46 + 16) = v140;
  *(v46 + 24) = v47;
  outlined init with take of URL?(v44, v46 + v45);
  v148 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v149 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v145 = 1107296256;
  v146 = thunk for @escaping @callee_guaranteed () -> ();
  v147 = &block_descriptor_349;
  v48 = _Block_copy(&aBlock);

  v49 = v131;
  static DispatchQoS.unspecified.getter();
  v143 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v50 = v132;
  v51 = v136;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v49, v50, v48);
  _Block_release(v48);

  (*(v135 + 8))(v50, v51);
  (*(v133 + 8))(v49, v134);
  v52 = v43;
LABEL_4:
  outlined destroy of Any?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t USDImportService.loadAnchor(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  v59 = a1;
  v22 = a1;
  v24 = v23;
  static USDImportService.urlForUSD(named:in:)(v22, a2, a3, v10);
  if ((*(v12 + 48))(v10, 1, v24) == 1)
  {
    outlined destroy of Any?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v25 = type metadata accessor for AnchorEntity();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    return MEMORY[0x26670DA40]();
  }

  v54 = v3;
  v55 = a2;
  (*(v12 + 32))(v21, v10, v24);
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();

  v57 = *(v12 + 8);
  v58 = v12 + 8;
  v57(v18, v24);
  v29 = *(v12 + 16);
  v29(v15, v21, v24);
  v29(v18, v15, v24);
  v30 = _s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(v18, 0, 0, 1);
  v56 = v15;
  if (!v30)
  {
    type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    v36 = v35;
    v29(v35, v21, v24);
    (*(v12 + 56))(v36, 0, 1, v24);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_20:
    v51 = v57;
    v57(v56, v24);
    return v51(v21, v24);
  }

  v31 = v30;
  v52 = v21;
  v32 = a3;
  v33 = [v32 bundleIdentifier];
  if (v33)
  {
    v34 = v33;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v53 = 0;
  }

  v37 = [v32 bundlePath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v39 = *&v31[v38];
  String.utf8CString.getter();
  v40 = v39;

  String.utf8CString.getter();

  String.utf8CString.getter();
  RIOImportSessionSetBundleInfo();

  v41 = *&v31[v38];
  RIOImportSessionUpdateSynchronouslyOnEngineQueue();
  v42 = *&v31[v38];
  result = RIOImportSessionGetSceneCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v43 = result;
    if (!result)
    {
      goto LABEL_24;
    }

    v44 = 0;
    v45 = 0;
    while (1)
    {
      v46 = *&v31[v38];
      if (RIOImportSessionIsSceneActive())
      {
        if (__OFADD__(v44++, 1))
        {
          break;
        }
      }

      if (v43 == ++v45)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    if (v44 < 2)
    {
LABEL_24:
      v48 = *(v31 + 3);
      type metadata accessor for AnchorEntity();
      if (swift_dynamicCastClass())
      {

        v49 = swift_dynamicCastClassUnconditional();
        v50 = v57;
        v57(v56, v24);
        v50(v52, v24);
        return v49;
      }
    }

    type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v21 = v52;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t USDImportService.loadAnchorAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10)
{
  v115 = a8;
  LODWORD(v125) = a7;
  v118 = a6;
  v117 = a5;
  v126 = a4;
  v128 = a3;
  v127 = a2;
  v123 = type metadata accessor for DispatchWorkItemFlags();
  v124 = *(v123 - 8);
  v11 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  v120 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for DispatchQoS();
  v121 = *(v122 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v119 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v113 - v17;
  v19 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v113 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v113 - v32;
  v34 = type metadata accessor for URL();
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  v35 = closure #1 in USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(a1, v127, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ06AnchorK0C_Tt0g5);
  if (v35)
  {
    v36 = v35;
    v114 = v29;
    v127 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a10, v18, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      outlined destroy of Any?(v18, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      (*(v20 + 32))(v26, v18, v19);

      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
      v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v47 = *(v20 + 8);
      v47(v23, v19);
      if (v46)
      {
        v48 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v49 = *(v36 + v48);
        RIOImportSessionSetLoadAudio();
      }

      v47(v26, v19);
    }

    v50 = v128;
    v51 = v33;
    v52 = v127;
    v53 = v114;
    if (v125 != 2 && (v125 & 1) != 0)
    {
      result = v115;
      if (a9)
      {
        result = MEMORY[0x266713650](v115);
      }

      if (result + 0x4000000000000000 < 0)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v55 = v36;
      v115 = result;
      v56 = 2 * result / 3;
      v57 = swift_allocObject();
      *(v57 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v58 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v59 = *(v55 + v58);
      v134 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
      v135 = v57;
      aBlock = MEMORY[0x277D85DD0];
      v131 = 1107296256;
      v132 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v133 = &block_descriptor_473;
      v60 = _Block_copy(&aBlock);
      v61 = v59;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v60);

      swift_beginAccess();
      v62 = *(v57 + 16);

      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 1 << *(v62 + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v70 = v69 & *(v62 + 64);
      v71 = (v68 + 63) >> 6;
      if (v70)
      {
        while (1)
        {
          v72 = v63;
LABEL_20:
          v73 = (*(v62 + 56) + ((v72 << 11) | (32 * __clz(__rbit64(v70)))));
          v74 = __OFADD__(v64, *v73);
          v64 += *v73;
          if (v74)
          {
            break;
          }

          v75 = v73[1];
          v74 = __OFADD__(v65, v75);
          v65 += v75;
          if (v74)
          {
            goto LABEL_45;
          }

          v76 = v73[2];
          v74 = __OFADD__(v66, v76);
          v66 += v76;
          if (v74)
          {
            goto LABEL_46;
          }

          v70 &= v70 - 1;
          v77 = v73[3];
          if (v77 > v67)
          {
            v67 = v77;
          }

          v63 = v72;
          if (!v70)
          {
            goto LABEL_17;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      while (1)
      {
LABEL_17:
        v72 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v72 >= v71)
        {
          break;
        }

        v70 = *(v62 + 64 + 8 * v72);
        ++v63;
        if (v70)
        {
          goto LABEL_20;
        }
      }

      v78 = v65 * v67;
      if ((v65 * v67) >> 64 != (v65 * v67) >> 63)
      {
        goto LABEL_48;
      }

      v52 = v127;
      if ((v78 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_49;
      }

      v79 = 3 * v66;
      if ((v66 * 3) >> 64 != (3 * v66) >> 63)
      {
        goto LABEL_50;
      }

      if ((v79 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v80 = 4 * v78;
      v81 = v80 + 12 * v66;
      if (__OFADD__(v80, 4 * v79))
      {
        goto LABEL_52;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= v56)
      {
        v82 = v56;
      }

      else
      {
        v82 = result;
      }

      v74 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v74)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v125 = v55;
      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v83 & ~(v83 >> 63), v55, COERCE_DOUBLE(0x100000001000));
      v84 = v123;
      v85 = v124;
      v87 = v86;

      v88 = v81 + v87;
      if (__OFADD__(v81, v87))
      {
        goto LABEL_54;
      }

      v89 = (v88 * 3) >> 64;
      v90 = 3 * v88;
      v53 = v114;
      if (v89 != v90 >> 63)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v36 = v55;
      v50 = v128;
      if (__OFADD__(v115, 10))
      {
        goto LABEL_56;
      }

      v51 = v33;
      v91 = v90;
      if (v115 + 10 < v90 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v92 = __Engine.queue.getter();

        v93 = swift_allocObject();
        v94 = v126;
        v93[2] = v50;
        v93[3] = v94;
        v95 = v115;
        v93[4] = v91 / 2;
        v93[5] = v95;
        v134 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v135 = v93;
        aBlock = MEMORY[0x277D85DD0];
        v131 = 1107296256;
        v132 = thunk for @escaping @callee_guaranteed () -> ();
        v133 = &block_descriptor_487;
        v96 = _Block_copy(&aBlock);

        v97 = v119;
        static DispatchQoS.unspecified.getter();
        v129 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v98 = v120;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v97, v98, v96);
        _Block_release(v96);

        (*(v85 + 8))(v98, v84);
        (*(v121 + 8))(v97, v122);
        v45 = v33;
        goto LABEL_41;
      }
    }

    v113 = v51;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v51, v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v99 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v100 = (v53 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
    v102 = (v101 + 23) & 0xFFFFFFFFFFFFFFF8;
    v103 = swift_allocObject();
    v103[2] = v36;
    v103[3] = v50;
    v103[4] = v126;
    outlined init with take of URL?(v52, v103 + v99);
    *(v103 + v100) = v36;
    v104 = (v103 + v101);
    *v104 = 0;
    v104[1] = 0;
    *(v103 + v102) = v116;
    v105 = (v103 + ((v102 + 15) & 0xFFFFFFFFFFFFFFF8));
    v106 = v117;
    v107 = v118;
    *v105 = v117;
    v105[1] = v107;
    v108 = (v36 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v109 = *v108;
    v110 = v108[1];
    *v108 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v108[1] = v103;
    swift_retain_n();

    sub_26187DB8C(v106);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v109);
    ImportSession.sceneUpdatePassCompletion.didset();

    v111 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v112 = *(v36 + v111);
    RIOImportSessionUpdate();

    return outlined destroy of Any?(v113, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v37 = __Engine.queue.getter();

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v33, v30, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v38 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v39 = swift_allocObject();
  v40 = v126;
  *(v39 + 16) = v128;
  *(v39 + 24) = v40;
  outlined init with take of URL?(v30, v39 + v38);
  v134 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v135 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v131 = 1107296256;
  v132 = thunk for @escaping @callee_guaranteed () -> ();
  v133 = &block_descriptor_464;
  v41 = _Block_copy(&aBlock);

  v42 = v119;
  static DispatchQoS.unspecified.getter();
  v129 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v43 = v120;
  v44 = v123;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v42, v43, v41);
  _Block_release(v41);

  (*(v124 + 8))(v43, v44);
  (*(v121 + 8))(v42, v122);
  v45 = v33;
LABEL_41:
  outlined destroy of Any?(v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t closure #1 in USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for __EngineRef();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = specialized static USDImportService.createDummyDataFilename(from:)(a1, a2);
  if (!v12)
  {
    return 0;
  }

  v13 = v11;
  v14 = v12;
  type metadata accessor for Stage();
  swift_allocObject();
  outlined copy of Data._Representation(a1, a2);
  v16 = Stage.init(identifier:data:)(v13, v14, a1, a2);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v7 + 8))(v10, v6);
  v17 = *(v16 + 16);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  v19 = type metadata accessor for ImportSession(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = a3(SingleUseImporterWithStage);

  if (!v22)
  {
    return 0;
  }

  return v22;
}

uint64_t USDImportService.loadBodyTrackedAsync(from:fulfill:postLoad:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = a6;
  v86 = a5;
  v98 = a4;
  v96 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = *(v92 + 64);
  MEMORY[0x28223BE20](v8);
  v90 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS();
  v89 = *(v91 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v81 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v80 - v18;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v94 = *(v31 - 8);
  v32 = *(v94 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v95 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = *(v20 + 56);
  v97 = &v80 - v36;
  v35(v34);
  v83 = v14;
  v37 = *(v14 + 56);
  v99 = v30;
  v84 = v13;
  v37(v30, 1, 1, v13);
  v38 = specialized static USDImportService.createDummyDataFilename(from:)(a1, a2);
  if (!v39)
  {
    goto LABEL_3;
  }

  v40 = v38;
  v41 = v39;
  type metadata accessor for Stage();
  swift_allocObject();

  outlined copy of Data._Representation(a1, a2);
  v53 = Stage.init(identifier:data:)(v40, v41, a1, a2);
  URL.init(fileURLWithPath:)();

  v54 = specialized static USDImportService.loadModel_createImportSession(stage:url:)(v53, v23, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ011BodyTrackedK0C_Tt0g5);

  (*(v20 + 8))(v23, v19);
  if (v54)
  {
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v99, v27, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    v55 = v83;
    v56 = v84;
    if ((*(v83 + 48))(v27, 1, v84) == 1)
    {

      outlined destroy of Any?(v27, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      v57 = v82;
      (*(v55 + 32))(v82, v27, v56);

      v58 = v81;
      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140]);
      v59 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v60 = *(v55 + 8);
      v60(v58, v56);
      if (v59)
      {
        v61 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v62 = *(v54 + v61);
        RIOImportSessionSetLoadAudio();
      }

      v60(v57, v56);
    }

    v63 = v97;
    v64 = v95;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v95, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v65 = (*(v94 + 80) + 40) & ~*(v94 + 80);
    v66 = (v32 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    v70 = v96;
    v69[2] = v54;
    v69[3] = v70;
    v69[4] = v98;
    outlined init with take of URL?(v64, v69 + v65);
    *(v69 + v66) = v54;
    v71 = (v69 + v67);
    *v71 = closure #2 in USDImportService.loadBodyTrackedAsync(from:fulfill:postLoad:);
    v71[1] = 0;
    *(v69 + v68) = v85;
    v72 = (v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8));
    v73 = v86;
    v74 = v87;
    *v72 = v86;
    v72[1] = v74;
    v75 = (v54 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v76 = *v75;
    v77 = v75[1];
    *v75 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v75[1] = v69;
    swift_retain_n();

    sub_26187DB8C(v73);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v76);
    ImportSession.sceneUpdatePassCompletion.didset();

    v78 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v79 = *(v54 + v78);
    RIOImportSessionUpdate();

    outlined destroy of Any?(v99, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    return outlined destroy of Any?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
LABEL_3:
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v42 = __Engine.queue.getter();

    v43 = v97;
    v44 = v95;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v97, v95, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v45 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v46 = swift_allocObject();
    v47 = v98;
    *(v46 + 16) = v96;
    *(v46 + 24) = v47;
    outlined init with take of URL?(v44, v46 + v45);
    aBlock[4] = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_535;
    v48 = _Block_copy(aBlock);

    v49 = v88;
    static DispatchQoS.unspecified.getter();
    v100 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v50 = v90;
    v51 = v93;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v49, v50, v48);
    _Block_release(v48);

    (*(v92 + 8))(v50, v51);
    (*(v89 + 8))(v49, v91);
    outlined destroy of Any?(v99, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    outlined destroy of Any?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}

uint64_t closure #2 in USDImportService.loadModelAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = a2(v7, a1);
  outlined destroy of Any?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v9;
}

void protocol witness for USDImportService.init() in conformance USDImportService(uint64_t *a1@<X8>)
{
  type metadata accessor for USDImportService();
  v2 = swift_allocObject();
  static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v3 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  *a1 = v2;
}

void specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = v9;
LABEL_3:
    a2(v9, 1);

    return;
  }

  swift_beginAccess();
  if (!*(a4 + 16))
  {
    type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    v9 = swift_allocError();
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a5, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    swift_storeEnumTagMultiPayload();
    goto LABEL_3;
  }

  a2(v11, 0);
}

void specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = v11;
    a2(v11, 1);
    v13 = v11;
  }

  else
  {
    swift_beginAccess();
    if (*(a4 + 16))
    {
      a6(0);
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;

        a2(v15, 0);

        return;
      }

      type metadata accessor for USDImportService.LoadError();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
      v18 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      a2(v18, 1);
      v13 = v18;
    }

    else
    {
      type metadata accessor for USDImportService.LoadError();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
      v16 = swift_allocError();
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a5, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      swift_storeEnumTagMultiPayload();
      a2(v16, 1);
      v13 = v16;
    }
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    if (!a2)
    {
      v7 = 1;
      return v7 & 1;
    }

    v2 = a2;
    goto LABEL_7;
  }

  if (!a2)
  {
    v3 = a1;
LABEL_7:

    v7 = 0;
    return v7 & 1;
  }

  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v4 = v3;
  v5 = v2;
  v6 = v4;
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v7 & 1;
}

uint64_t specialized static USDImportService.canLoad(url:)()
{
  result = URL.isFileURL.getter();
  if (result)
  {
    v1 = 0;
    v2 = MEMORY[0x277D84F90];
LABEL_3:
    if (v1 <= 6)
    {
      v3 = 6;
    }

    else
    {
      v3 = v1;
    }

    v4 = v3 + 1;
    v5 = (&outlined read-only object #0 of one-time initialization function for supportedFilePathExtensions + 16 * v1 + 40);
    while (1)
    {
      if (v1 == 6)
      {
        URL.pathExtension.getter();
        v13 = String.lowercased()();

        v16 = v13;
        MEMORY[0x28223BE20](v14);
        v15[2] = &v16;
        v12 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v15, v2);

        return v12 & 1;
      }

      if (v4 == ++v1)
      {
        break;
      }

      v6 = v5 + 2;
      v7 = *v5;
      v5 += 2;
      if (v7)
      {
        v8 = *(v6 - 3);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
          v2 = result;
        }

        v10 = *(v2 + 16);
        v9 = *(v2 + 24);
        if (v10 >= v9 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v2);
          v2 = result;
        }

        *(v2 + 16) = v10 + 1;
        v11 = v2 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = 0;
    return v12 & 1;
  }

  return result;
}

uint64_t type metadata accessor for USDImportService.LoadError()
{
  result = type metadata singleton initialization cache for USDImportService.LoadError;
  if (!type metadata singleton initialization cache for USDImportService.LoadError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for OS_os_log(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t specialized static USDImportService.loadModel_selectEntity(contentsOf:importSession:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = type metadata accessor for Entity.ChildCollection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = *(a2 + 24);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection, MEMORY[0x277CDB190]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v12 = dispatch thunk of Collection.distance(from:to:)();
  v13 = *(v4 + 8);
  v13(v10, v3);
  if (v12 < 1)
  {
    Error = type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v22, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return Error;
  }

  HasHierarchy.children.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v23[5] == v23[0])
  {
    v13(v7, v3);
LABEL_8:
    Error = type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    goto LABEL_9;
  }

  v16 = dispatch thunk of Collection.subscript.read();
  v18 = *v17;

  v16(v23, 0);
  v13(v7, v3);
  type metadata accessor for ModelEntity();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    goto LABEL_8;
  }

  Error = v19;

  Entity.coreEntity.getter();

  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  HasHierarchy.setParent(_:preservingWorldTransform:)();
  return Error;
}

uint64_t specialized USDImportService.loadModel(contentsOf:withName:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v58 - v4;
  v60 = type metadata accessor for __EngineRef();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v60);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v58 - v17;
  v63 = v11;
  v19 = *(v11 + 16);
  v19(v58 - v17, a1, v10, v16);
  v64 = v14;
  v59 = a1;
  v62 = v19;
  (v19)(v14, a1, v10);
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = RIOPxrUsdStageCreateWithFileURL();

  if (!v23)
  {
    goto LABEL_15;
  }

  v58[0] = v5;
  v61 = v18;
  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for __ServiceLocator();
  v25 = TopLevelEntityFromStage;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v6 + 8))(v9, v60);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  v27 = type metadata accessor for ImportSession(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5(SingleUseImporterWithStage);
  if (!v30)
  {

    v18 = v61;
LABEL_15:
    type metadata accessor for USDImportService.LoadError();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
    swift_allocError();
    v9 = v53;
    v62(v53, v59, v10);
    v54 = v63;
    (*(v63 + 56))(v9, 0, 1, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v55 = *(v54 + 8);
    v55(v64, v10);
    v55(v18, v10);
    return v9;
  }

  v31 = v30;
  v32 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v33 = *(v31 + v32);

  RIOImportSessionSetIsLoadModelUseCase();
  v34 = *(v31 + v32);
  URL._bridgeToObjectiveC()(v35);
  v37 = v36;
  RIOImportSessionSetOriginalUrl();

  v38 = *(v31 + v32);
  RIOImportSessionUpdateSynchronouslyOnEngineQueue();
  v39 = *(v31 + v32);
  result = RIOImportSessionGetSceneCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v41 = result;
    v42 = v61;
    if (!result)
    {
      goto LABEL_12;
    }

    v43 = 0;
    v9 = 0;
    while (1)
    {
      v44 = *(v31 + v32);
      if (RIOImportSessionIsSceneActive())
      {
        if (__OFADD__(v43++, 1))
        {
          break;
        }
      }

      if (v41 == ++v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    if (v43 >= 2)
    {
      type metadata accessor for USDImportService.LoadError();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v56 = *(v63 + 8);
      v56(v64, v10);
      v56(v42, v10);
    }

    else
    {
LABEL_12:
      v46 = v58[0];
      v47 = v64;
      v62(v58[0], v64, v10);
      v48 = v63 + 56;
      (*(v63 + 56))(v46, 0, 1, v10);
      v49 = v58[1];
      v50 = specialized static USDImportService.loadModel_selectEntity(contentsOf:importSession:)(v46, v31);
      v51 = (v48 - 48);
      if (v49)
      {
        outlined destroy of Any?(v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v52 = *v51;
        (*v51)(v47, v10);
        v52(v42, v10);
      }

      else
      {
        v9 = v50;
        outlined destroy of Any?(v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

        v57 = *v51;
        (*v51)(v47, v10);
        v57(v42, v10);
      }
    }

    return v9;
  }

  __break(1u);
  return result;
}