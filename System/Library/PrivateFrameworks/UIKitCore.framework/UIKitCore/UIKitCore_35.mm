void *sub_188EB2558(double a1)
{
  swift_getObjectType();
  [v1 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  [v1 response];
  [v6 setResponse_];
  [v1 trackingResponse];
  [v6 setTrackingResponse_];
  return v6;
}

uint64_t sub_188EB2630@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v15[3] = a3;
  v15[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  v11 = *(*(a3 - 8) + 16);
  v11(boxed_opaque_existential_0, a1, a3);
  v14[3] = a3;
  v14[4] = a4;
  v12 = __swift_allocate_boxed_opaque_existential_0(v14);
  v11(v12, a2, a3);
  sub_188A53994(v15, a5);
  sub_188A53994(v14, a5 + 40);
  *(a5 + 88) = 1;
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188EB2798()
{
  v0 = [objc_opt_self() currentThread];
  v1 = [v0 threadDictionary];

  *&v7[0] = 0xD00000000000001ELL;
  *(&v7[0] + 1) = 0x800000018A68F020;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for InProcessAnimationManager();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_188A3F5FC(v7, &qword_1EA934050);
    return 0;
  }
}

void sub_188EB28E8(uint64_t a1, double a2)
{
  v3 = __currentViewAnimationState;
  if (__currentViewAnimationState && (_s23InProcessAnimationStateCMa(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity;
    v7 = *(v5 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity);
    v8 = *(v5 + OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_startingVelocity + 8);
    *v6 = a2;
    *(v6 + 8) = 0;
    v9 = *(a1 + 16);
    v11 = v3;
    v9(a1);
    *v6 = v7;
    *(v6 + 8) = v8;
  }

  else
  {
    v10 = *(a1 + 16);

    v10(a1);
  }
}

unint64_t sub_188EB29EC()
{
  result = qword_1EA935CA8;
  if (!qword_1EA935CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935CA8);
  }

  return result;
}

uint64_t objectdestroy_157Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188EB2B20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_188EB2B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188EB2BB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188EB2BD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 88) = v3;
  return result;
}

id sub_188EB2D0C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_18A4A7258();
  v4 = sub_18A4A7258();
  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_188EB2DD4(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_1EA9314C8 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();
  if (qword_1EA9314E0 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  if (qword_1EA9314B8 != -1)
  {
    swift_once();
  }

  if (qword_1EA9314F8 != -1)
  {
    swift_once();
  }

  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_188EB2F58(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_1ED490220 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();
  if (qword_1ED48FCB8 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  if (qword_1ED48FCC0 != -1)
  {
    swift_once();
  }

  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_188EB3098(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_1EA931A40 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();
  if (qword_1EA931A48 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  if (qword_1EA931A38 != -1)
  {
    swift_once();
  }

  if (qword_1EA931A50 != -1)
  {
    swift_once();
  }

  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_188EB321C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_18A4A7258();
  v4 = sub_18A4A7258();
  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_188EB32E4(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_1EA931838 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();
  if (qword_1EA931850 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  if (qword_1EA931828 != -1)
  {
    swift_once();
  }

  if (qword_1EA931868 != -1)
  {
    swift_once();
  }

  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_188EB3468(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_1EA9317E8 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();
  if (qword_1EA931800 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  if (qword_1EA9317D8 != -1)
  {
    swift_once();
  }

  if (qword_1EA931818 != -1)
  {
    swift_once();
  }

  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_188EB35EC(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_1EA931AF8 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();
  if (qword_1EA931B10 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  if (qword_1ED48E728 != -1)
  {
    swift_once();
  }

  if (qword_1EA931B28 != -1)
  {
    swift_once();
  }

  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_188EB3770(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_1EA931B48 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();
  if (qword_1EA931B60 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();
  if (qword_1ED48E708 != -1)
  {
    swift_once();
  }

  if (qword_1EA931B78 != -1)
  {
    swift_once();
  }

  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_188EB38F4(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_1EA931798 != -1)
  {
    swift_once();
  }

  v3 = sub_18A4A7258();

  if (qword_1EA9317B0 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A7258();

  if (qword_1EA931788 != -1)
  {
    swift_once();
  }

  if (qword_1EA9317C8 != -1)
  {
    swift_once();
  }

  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

uint64_t sub_188EB3AA8@<X0>(char *a1@<X8>)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v3 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B07C(&type metadata for GlassFrostTrait, sub_1891DB9B8);
  os_unfair_lock_unlock(v3[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860);
  v4 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5 = [v1 _valueForNSIntegerTraitToken_];
  result = swift_unknownObjectRelease();
  v7 = v5 == 1;
  if (v5 == 2)
  {
    v7 = 2;
  }

  *a1 = v7;
  return result;
}

uint64_t EnvironmentValues.coreInheritedTraitCollection.getter()
{
  sub_188C6AAD4();
  sub_18A4A5328();
  return v1;
}

uint64_t sub_188EB3C50(void **a1)
{
  v1 = *a1;
  sub_188C6AAD4();
  v2 = v1;
  return sub_18A4A5338();
}

void (*EnvironmentValues.coreInheritedTraitCollection.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_188C6AAD4();
  sub_18A4A5328();
  return sub_188EB3D48;
}

void sub_188EB3D48(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_18A4A5338();
    v5 = *a1;
  }

  else
  {
    sub_18A4A5338();
  }
}

uint64_t EnvironmentValues.coreBridgedEnvironmentKeys.getter()
{
  sub_188EB631C();
  sub_18A4A5328();
  return v1;
}

uint64_t sub_188EB3E18()
{
  sub_188EB631C();

  return sub_18A4A5338();
}

uint64_t (*EnvironmentValues.coreBridgedEnvironmentKeys.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_188EB631C();
  sub_18A4A5328();
  return sub_188EB3F14;
}

uint64_t sub_188EB3F14(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_18A4A5338();
  }

  sub_18A4A5338();
}

uint64_t sub_188EB3FBC@<X0>(void *a1@<X8>)
{
  if (qword_1EA931D00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EA935CB0;
}

uint64_t EnvironmentValues.coreResolvedTraitCollection(wrapper:)(void *a1)
{
  sub_188C6AAD4();
  v3 = sub_18A4A5328();
  v4 = aBlock;
  if (aBlock)
  {
    v5 = aBlock;
  }

  else
  {
    v3 = [objc_opt_self() currentTraitCollection];
    v5 = v3;
  }

  v22[1] = v22;
  MEMORY[0x1EEE9AC00](v3);
  v20[0] = v1;
  v20[1] = 0;
  v21 = v5;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = sub_188EB7F24;
  v6[4] = &v19;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188BA5B68;
  *(v7 + 24) = v6;
  v27 = sub_188A86D40;
  v28 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_188A7AC24;
  v26 = &block_descriptor_16;
  v8 = _Block_copy(&aBlock);
  v9 = a1;
  v10 = v4;

  v11 = [v5 traitCollectionByModifyingTraits_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v21 = v1;
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = sub_188EB8D90;
    v13[4] = v20;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_188EB96A0;
    *(v14 + 24) = v13;
    v27 = sub_188EB96AC;
    v28 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_188A7AC24;
    v26 = &block_descriptor_14_0;
    v15 = _Block_copy(&aBlock);
    v16 = v9;
    v17 = v11;

    v18 = [v17 &selRef:v15 typeWithIdentifier:?];
    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if ((v15 & 1) == 0)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t UITraitCollection.coreResolvedTraitCollection(environment:wrapper:options:)(id a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = a2;
  if (!a2)
  {
    a1 = [v4 _environmentWrapper];
    v8 = a1;
  }

  v25[1] = v25;
  MEMORY[0x1EEE9AC00](a1);
  v23[0] = v7;
  v23[1] = a3;
  v24 = v4;
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = sub_188EB96A4;
  v9[4] = &v22;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_188EB96A0;
  *(v10 + 24) = v9;
  v30 = sub_188EB96AC;
  v31 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_188A7AC24;
  v29 = &block_descriptor_26_1;
  v11 = _Block_copy(&aBlock);
  v12 = a2;

  v13 = v8;

  v14 = [v4 traitCollectionByModifyingTraits_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v24 = v7;
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = sub_188EB96B0;
    v16[4] = v23;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_188EB96A0;
    *(v17 + 24) = v16;
    v30 = sub_188EB96AC;
    v31 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_188A7AC24;
    v29 = &block_descriptor_38;
    v18 = _Block_copy(&aBlock);
    v19 = v12;
    v20 = v14;

    v21 = [v20 traitCollectionByModifyingTraits_];
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      return v21;
    }
  }

  __break(1u);
  return result;
}

void *sub_188EB4730(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A730);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = v32 - v7;
  v8 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - v13;
  sub_188C8CD6C(a1, v10);
  v15 = (*(v12 + 48))(v10, 2, v11);
  v35 = v2;
  if (v15)
  {
    sub_188AD77B4(v10);
  }

  else
  {
    v16 = sub_188CEF124(v10, v32 - v13);
    MEMORY[0x1EEE9AC00](v16);
    sub_188A3F29C(v14, v32 - v13, &qword_1EA937E70);
    sub_18A4A4FA8();
    sub_188A3F5FC(v14, &qword_1EA937E70);
  }

  v17 = sub_18A4A2DB8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v32 - v20;
  MEMORY[0x1EEE9AC00](v22);
  result = sub_188B56DB8();
  if (result)
  {
    v24 = *((*MEMORY[0x1E69E7D40] & *result) + 0x60);
    v32[1] = v32;
    v32[0] = *(v18 + 16);
    v25 = result;
    (v32[0])(v32 - v20, result + v24, v17);

    (*(v18 + 32))(v32 - v20, v32 - v20, v17);
    v26 = v33;
    sub_188BAEFC0(v33);
    v27 = sub_18A4A4428();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    v28 = sub_18A4A51E8();
    v29 = MEMORY[0x1EEE9AC00](v28);
    (v32[0])(v32 - v20, v21, v17, v29);
    sub_188EB9650();
    v30 = v34;
    sub_18A4A6BB8();
    v31 = sub_18A4A6BC8();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    sub_18A4A5088();
    return (*(v18 + 8))(v21, v17);
  }

  return result;
}

uint64_t UITraitCollection.coreResolvedBaseEnvironment(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_18A4A5908();
  v171 = *(v6 - 8);
  v172 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v170 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v169 = &v135 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CC8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v168 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v167 = &v135 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v136 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v144 = &v135 - v17;
  v18 = sub_18A4A5738();
  v173 = *(v18 - 8);
  v174 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v157 = &v135 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CE0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v166 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v165 = &v135 - v25;
  v26 = sub_18A4A4428();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v164 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_18A4A5418();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v152 = &v135 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v151 = &v135 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v153 = &v135 - v34;
  v143 = sub_18A4A4E58();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CE8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v161 = &v135 - v37;
  v163 = sub_18A4A4528();
  v162 = *(v163 - 1);
  MEMORY[0x1EEE9AC00](v163);
  v140 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v139 = &v135 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CF0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v149 = &v135 - v42;
  v150 = sub_18A4A4DD8();
  v148 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v146 = &v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v145 = &v135 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v147 = &v135 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CF8);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v50 = &v135 - v49;
  v160 = sub_18A4A4CB8();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v138 = &v135 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v137 = &v135 - v53;
  v54 = sub_18A4A4CD8();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v135 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v135 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v135 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v135 - v65;
  v67 = sub_18A4A5318();
  v68 = *(*(v67 - 8) + 16);
  v175 = a2;
  v68(a2, a1, v67);
  v69 = v3;
  v70 = [v3 layoutDirection];
  if (v70)
  {
    if (v70 != 1)
    {
      goto LABEL_6;
    }

    v71 = MEMORY[0x1E697E7D8];
  }

  else
  {
    v71 = MEMORY[0x1E697E7D0];
  }

  (*(v55 + 104))(v60, *v71, v54);
  v72 = *(v55 + 32);
  v72(v63, v60, v54);
  v72(v66, v63, v54);
  (*(v55 + 16))(v57, v66, v54);
  sub_18A4A5018();
  (*(v55 + 8))(v66, v54);
LABEL_6:
  v73 = v3;
  DynamicTypeSize.init(_uiSizeCategory:)([v3 preferredContentSizeCategory], v50);
  v74 = v159;
  v75 = v160;
  if ((*(v159 + 48))(v50, 1, v160) == 1)
  {
    sub_188A3F5FC(v50, &qword_1EA935CF8);
  }

  else
  {
    v76 = v137;
    (*(v74 + 32))(v137, v50, v75);
    (*(v74 + 16))(v138, v76, v75);
    sub_18A4A4FF8();
    (*(v74 + 8))(v76, v75);
  }

  v77 = v173;
  v78 = v163;
  v79 = v162;
  v80 = [v69 legibilityWeight];
  v81 = v161;
  if (v80)
  {
    if (v80 != 1)
    {
      goto LABEL_14;
    }

    v82 = MEMORY[0x1E697E9F0];
  }

  else
  {
    v82 = MEMORY[0x1E697E9F8];
  }

  v83 = v148;
  v84 = v146;
  v85 = v150;
  (*(v148 + 104))(v146, *v82, v150);
  v86 = *(v83 + 32);
  v87 = v145;
  v86(v145, v84, v85);
  v88 = v147;
  v86(v147, v87, v85);
  v89 = v149;
  (*(v83 + 16))(v149, v88, v85);
  (*(v83 + 56))(v89, 0, 1, v85);
  sub_18A4A5028();
  (*(v83 + 8))(v88, v85);
  v77 = v173;
LABEL_14:
  [v73 displayGamut];
  sub_18A4A4508();
  if ((*(v79 + 48))(v81, 1, v78) == 1)
  {
    sub_188A3F5FC(v81, &qword_1EA935CE8);
  }

  else
  {
    v90 = v139;
    (*(v79 + 32))(v139, v81, v78);
    (*(v79 + 16))(v140, v90, v78);
    sub_18A4A4F08();
    (*(v79 + 8))(v90, v78);
  }

  v91 = [v73 _backlightLuminance];
  sub_18A4A5098();
  if (v91 == 1)
  {
    v92 = v141;
    sub_18A4A4E48();
    v163 = sub_18A4A5038();
    v94 = v93;
    v95 = MEMORY[0x1E697EA58];
    sub_188C623C8(&qword_1EA935D00, MEMORY[0x1E697EA58]);
    v96 = v143;
    sub_18A4A74E8();
    v97 = *(v142 + 8);
    v97(v94, v96);
    v77 = v173;
    sub_18A4A74E8();
    v179 = v176 | v177;
    sub_188C623C8(&qword_1EA935D08, v95);
    sub_18A4A8A98();
    v97(v92, v96);
    (v163)(v178, 0);
  }

  v98 = [v73 accessibilityContrast];
  if (v98)
  {
    if (v98 != 1)
    {
      goto LABEL_24;
    }

    v99 = MEMORY[0x1E697F608];
  }

  else
  {
    v99 = MEMORY[0x1E697F600];
  }

  v100 = v155;
  v101 = v152;
  v102 = v156;
  (*(v155 + 104))(v152, *v99, v156);
  v103 = *(v100 + 32);
  v104 = v151;
  v103(v151, v101, v102);
  v105 = v153;
  v103(v153, v104, v102);
  (*(v100 + 16))(v154, v105, v102);
  sub_18A4A50F8();
  (*(v100 + 8))(v105, v102);
LABEL_24:
  sub_188BAEFC0(v164);
  sub_18A4A51F8();
  [v73 displayScale];
  sub_18A4A4F28();
  v106 = [v73 horizontalSizeClass];
  if (v106 == 1)
  {
    v108 = MEMORY[0x1E697FF38];
    v107 = v165;
    goto LABEL_28;
  }

  v107 = v165;
  if (v106 == 2)
  {
    v108 = MEMORY[0x1E697FF40];
LABEL_28:
    v109 = v157;
    v110 = v174;
    (*(v77 + 104))(v157, *v108, v174);
    (*(v77 + 32))(v107, v109, v110);
    v111 = 0;
    goto LABEL_30;
  }

  v111 = 1;
LABEL_30:
  v112 = *(v77 + 56);
  v113 = 1;
  v112(v107, v111, 1, v174);
  sub_18A4A50C8();
  v114 = [v73 verticalSizeClass];
  if (v114 == 1)
  {
    v116 = MEMORY[0x1E697FF38];
    v115 = v166;
  }

  else
  {
    v115 = v166;
    if (v114 != 2)
    {
      goto LABEL_35;
    }

    v116 = MEMORY[0x1E697FF40];
  }

  v117 = v158;
  v118 = v174;
  (*(v77 + 104))(v158, *v116, v174);
  (*(v77 + 32))(v115, v117, v118);
  v113 = 0;
LABEL_35:
  v112(v115, v113, 1, v174);
  sub_18A4A5068();
  [v73 userInterfaceLevel];
  sub_18A4A51D8();
  [v73 displayCornerRadius];
  sub_18A4A50A8();
  if ([v73 _userInterfaceRenderingMode] == 2)
  {
    v119 = v144;
    sub_18A4A61A8();
    v120 = sub_18A4A6BC8();
    (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    sub_18A4A5088();
    sub_18A4A5278();
  }

  if ([v73 _vibrancy] == 1)
  {
    if (dyld_program_sdk_at_least())
    {
      v121 = v136;
      sub_18A4A5078();
      v122 = sub_18A4A6BC8();
      v123 = *(v122 - 8);
      v124 = (*(v123 + 48))(v121, 1, v122);
      sub_188A3F5FC(v121, &qword_1EA935CD8);
      if (v124 == 1)
      {
        v125 = v144;
        sub_18A4A61A8();
        (*(v123 + 56))(v125, 0, 1, v122);
        sub_18A4A5088();
      }
    }
  }

  [v73 activeAppearance];
  sub_18A4A50D8();
  v126 = sub_188E1AF8C();
  v127 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v126 + v127, v167, &qword_1EA935CD0);

  sub_18A4A5258();
  v128 = v168;
  _s5UIKit29UICorePlatformColorDefinitionC6system7SwiftUI0c6SystemE0VvgZ_0();
  v129 = sub_18A4A5828();
  (*(*(v129 - 8) + 56))(v128, 0, 1, v129);
  sub_18A4A52C8();
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v130 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901BD20(&type metadata for _UITraitColorMaterialRenderingMode, sub_188EB2F58);
  os_unfair_lock_unlock(v130[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860);
  v131 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v132 = [v73 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  if (!v132)
  {
LABEL_49:
    v133 = v170;
    sub_18A4A58F8();
    goto LABEL_51;
  }

  if (v132 != 1)
  {
    if (v132 == 2)
    {
      v133 = v170;
      sub_18A4A58D8();
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v133 = v170;
  sub_18A4A58E8();
LABEL_51:
  (*(v171 + 32))(v169, v133, v172);
  sub_18A4A5298();
  result = sub_188A84438();
  if (result)
  {
    v179 = result;
    sub_188EB9204();
    return sub_18A4A5338();
  }

  return result;
}

uint64_t UITraitCollection.coreResolvedGlassMaterialEnvironment(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_18A4A6068();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_18A4A5318();
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  [v3 _glassElevationLevel];
  sub_18A4A4F68();
  sub_188E1B6FC(v9);
  sub_188EB4730(v9, v3);
  sub_188AD77B4(v9);
  sub_188EB3AA8(&v15);
  if (v15 == 2)
  {
    sub_18A4A6008();
  }

  else if (v15 == 1)
  {
    sub_18A4A5FF8();
  }

  else
  {
    sub_18A4A5FD8();
  }

  sub_18A4A5188();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_188E1B948(&v14[-v12]);
  return sub_18A4A4FC8();
}

unint64_t sub_188EB631C()
{
  result = qword_1EA935CC0;
  if (!qword_1EA935CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935CC0);
  }

  return result;
}

uint64_t LayoutDirection.init(_uiLayoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A4CD8();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v9 = MEMORY[0x1E697E7D0];
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v9 = MEMORY[0x1E697E7D8];
LABEL_5:
    v10 = *v9;
    v11 = *(v5 + 104);
    v15 = v5;
    v11(v8, v10, v4, v6);
    (*(v15 + 32))(a2, v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  v13 = *(v5 + 56);

  return v13(a2, 1, 1, v4, v6);
}

uint64_t LegibilityWeight.init(_uiLegibilityWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A4DD8();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v9 = MEMORY[0x1E697E9F8];
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v9 = MEMORY[0x1E697E9F0];
LABEL_5:
    v10 = *v9;
    v11 = *(v5 + 104);
    v15 = v5;
    v11(v8, v10, v4, v6);
    (*(v15 + 32))(a2, v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  v13 = *(v5 + 56);

  return v13(a2, 1, 1, v4, v6);
}

uint64_t ColorSchemeContrast.init(_uiAccessibilityContrast:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A5418();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v9 = MEMORY[0x1E697F600];
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v9 = MEMORY[0x1E697F608];
LABEL_5:
    v10 = *v9;
    v11 = *(v5 + 104);
    v15 = v5;
    v11(v8, v10, v4, v6);
    (*(v15 + 32))(a2, v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  v13 = *(v5 + 56);

  return v13(a2, 1, 1, v4, v6);
}

uint64_t UserInterfaceSizeClass.init(_uiUserInterfaceSizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A5738();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v9 = MEMORY[0x1E697FF38];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v9 = MEMORY[0x1E697FF40];
LABEL_5:
    v10 = *v9;
    v11 = *(v5 + 104);
    v15 = v5;
    v11(v8, v10, v4, v6);
    (*(v15 + 32))(a2, v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  v13 = *(v5 + 56);

  return v13(a2, 1, 1, v4, v6);
}

uint64_t UITraitCollection.coreResolvedBaseTraitCollection(environment:wrapper:options:)(id a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v7 = a2;
  if (!a2)
  {
    a1 = [v3 _environmentWrapper];
    v7 = a1;
  }

  MEMORY[0x1EEE9AC00](a1);
  v16[2] = v6;
  v16[3] = a3;
  v16[4] = v3;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = sub_188EB96A4;
  v8[4] = v16;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_188EB96A0;
  *(v9 + 24) = v8;
  aBlock[4] = sub_188EB96AC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A7AC24;
  aBlock[3] = &block_descriptor_50_0;
  v10 = _Block_copy(aBlock);
  v11 = v7;

  v12 = a2;

  v13 = [v3 traitCollectionByModifyingTraits_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t UITraitCollection.coreResolvedGlassMaterialTraitCollection(environment:wrapper:)(uint64_t a1, void *a2)
{
  v10[2] = a1;
  v4 = swift_allocObject();
  v4[2] = a2;
  v4[3] = sub_188EB96B0;
  v4[4] = v10;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188EB96A0;
  *(v5 + 24) = v4;
  aBlock[4] = sub_188EB96AC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A7AC24;
  aBlock[3] = &block_descriptor_62;
  v6 = _Block_copy(aBlock);
  v7 = a2;

  v8 = [v2 traitCollectionByModifyingTraits_];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if ((a2 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_188EB6CB4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v162 = a4;
  v155 = a3;
  v6 = sub_18A4A5908();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v160 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_18A4A56B8();
  v165 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v147 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934850);
  MEMORY[0x1EEE9AC00](v156);
  v158 = &v147 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v150 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v147 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v157 = &v147 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v161 = &v147 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v154 = &v147 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v163 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v164 = &v147 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v148 = &v147 - v25;
  v153 = sub_18A4A4528();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A730);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v147 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CF8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v147 - v34;
  v36 = sub_18A4A4CD8();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v147 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  sub_18A4A5008();
  v41 = (*(v37 + 88))(v39, v36);
  v42 = 0;
  if (v41 != *MEMORY[0x1E697E7D0])
  {
    if (v41 == *MEMORY[0x1E697E7D8])
    {
      v42 = 1;
    }

    else
    {
      (*(v37 + 8))(v39, v36);
      v42 = -1;
    }
  }

  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v43);
  if (v42 != UIMutableTraits.layoutDirection.getter(v43, v44))
  {
    v45 = a1[3];
    v46 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v45);
    UIMutableTraits.layoutDirection.setter(v42, v45, v46);
  }

  v47 = v40;
  sub_18A4A4F18();
  v49 = v48;
  v50 = a1[3];
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v50);
  UIMutableTraits.displayScale.getter(v50, v51);
  if (v49 != v52)
  {
    v53 = a1[3];
    v54 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v53);
    UIMutableTraits.displayScale.setter(v53, v54);
  }

  sub_18A4A4FE8();
  v55 = sub_18A4A4CB8();
  (*(*(v55 - 8) + 56))(v35, 0, 1, v55);
  v56 = _sSo21UIContentSizeCategorya5UIKitE012_dynamicTypeB0AB7SwiftUI07DynamicfB0OSg_tcfC_0(v35);
  v57 = a1[3];
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v57);
  v59 = UIMutableTraits.preferredContentSizeCategory.getter(v57, v58);
  v60 = sub_18A4A7288();
  v62 = v61;
  if (v60 == sub_18A4A7288() && v62 == v63)
  {
  }

  else
  {
    v64 = sub_18A4A86C8();

    if ((v64 & 1) == 0)
    {
      v65 = a1[3];
      v66 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v65);
      UIMutableTraits.preferredContentSizeCategory.setter(v56, v65, v66);
    }
  }

  v166 = v47;
  sub_18A4A4EB8();
  v67 = sub_18A4A4428();
  v68 = *(v67 - 8);
  v69 = 1;
  (*(v68 + 56))(v32, 0, 1, v67);
  sub_188A3F29C(v32, v29, &qword_1EA93A730);
  v70 = (*(v68 + 88))(v29, v67);
  v71 = v157;
  if (v70 != *MEMORY[0x1E697DBB8])
  {
    if (v70 == *MEMORY[0x1E697DBA8])
    {
      v69 = 2;
    }

    else
    {
      (*(v68 + 8))(v29, v67);
      v69 = 0;
    }
  }

  sub_188A3F5FC(v32, &qword_1EA93A730);
  v72 = a1[3];
  v73 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v72);
  v74 = UIMutableTraits.userInterfaceStyle.getter(v72, v73);
  v75 = v159;
  v76 = v154;
  if (v69 != v74)
  {
    v77 = a1[3];
    v78 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v77);
    UIMutableTraits.userInterfaceStyle.setter(v69, v77, v78);
  }

  v79 = v151;
  sub_18A4A4EF8();
  v80 = sub_18A4A4518();
  (*(v152 + 8))(v79, v153);
  v81 = a1[3];
  v82 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v81);
  v83 = UIMutableTraits.displayGamut.getter(v81, v82);
  v84 = v161;
  v85 = v158;
  if (v80 != v83)
  {
    v86 = a1[3];
    v87 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v86);
    UIMutableTraits.displayGamut.setter(v80, v86, v87);
  }

  if (dyld_program_sdk_at_least())
  {
    v88 = v148;
    sub_18A4A5078();
    v89 = sub_18A4A6BC8();
    v90 = (*(*(v89 - 8) + 48))(v88, 1, v89);
    sub_188A3F5FC(v88, &qword_1EA935CD8);
    if (v90 != 1)
    {
      v91 = a1[3];
      v92 = a1[4];
      __swift_project_boxed_opaque_existential_0(a1, v91);
      if (UIMutableTraits._vibrancy.getter(v91, v92) == -1 || (v93 = a1[3], v94 = a1[4], __swift_project_boxed_opaque_existential_0(a1, v93), !UIMutableTraits._vibrancy.getter(v93, v94)))
      {
        v95 = a1[3];
        v96 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, v95);
        UIMutableTraits._vibrancy.setter(1, v95, v96);
      }
    }
  }

  v97 = v164;
  sub_18A4A50E8();
  v98 = sub_18A4A5418();
  v99 = *(v98 - 8);
  (*(v99 + 56))(v97, 0, 1, v98);
  v100 = v97;
  v101 = v163;
  sub_188A3F29C(v100, v163, &qword_1EA935D10);
  v102 = (*(v99 + 88))(v101, v98);
  v103 = 0;
  if (v102 != *MEMORY[0x1E697F600])
  {
    if (v102 == *MEMORY[0x1E697F608])
    {
      v103 = 1;
    }

    else
    {
      (*(v99 + 8))(v163, v98);
      v103 = -1;
    }
  }

  sub_188A3F5FC(v164, &qword_1EA935D10);
  v104 = a1[3];
  v105 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v104);
  if (v103 != UIMutableTraits.accessibilityContrast.getter(v104, v105))
  {
    v106 = a1[3];
    v107 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v106);
    UIMutableTraits.accessibilityContrast.setter(v103, v106, v107);
  }

  sub_18A4A50B8();
  v108 = _sSo24UIUserInterfaceSizeClassV5UIKitE05_sizeD0AB7SwiftUI04UserbcD0OSg_tcfC_0(v76);
  v109 = a1[3];
  v110 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v109);
  if (v108 != UIMutableTraits.horizontalSizeClass.getter(v109, v110))
  {
    v111 = a1[3];
    v112 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v111);
    UIMutableTraits.horizontalSizeClass.setter(v108, v111, v112);
  }

  sub_18A4A5058();
  v113 = _sSo24UIUserInterfaceSizeClassV5UIKitE05_sizeD0AB7SwiftUI04UserbcD0OSg_tcfC_0(v76);
  v114 = a1[3];
  v115 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v114);
  if (v113 != UIMutableTraits.verticalSizeClass.getter(v114, v115))
  {
    v116 = a1[3];
    v117 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v116);
    UIMutableTraits.verticalSizeClass.setter(v113, v116, v117);
  }

  if ((v155 & 1) == 0)
  {
    v118 = sub_18A4A51C8();
    v119 = a1[3];
    v120 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v119);
    if (v118 != UIMutableTraits.userInterfaceLevel.getter(v119, v120))
    {
      v121 = a1[3];
      v122 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v121);
      UIMutableTraits.userInterfaceLevel.setter(v118, v121, v122);
    }
  }

  sub_18A4A5248();
  v123 = a1[3];
  v124 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v123);
  v125 = sub_188E68C64(v123, v124);
  v126 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v125 + v126, v71, &qword_1EA935CD0);

  v127 = *(v156 + 48);
  sub_188A3F29C(v84, v85, &qword_1EA935CD0);
  sub_188A3F29C(v71, v85 + v127, &qword_1EA935CD0);
  v128 = *(v165 + 48);
  if (v128(v85, 1, v75) == 1)
  {
    sub_188A3F5FC(v71, &qword_1EA935CD0);
    if (v128(v85 + v127, 1, v75) == 1)
    {
      sub_188A3F5FC(v85, &qword_1EA935CD0);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v129 = v149;
  sub_188A3F29C(v85, v149, &qword_1EA935CD0);
  if (v128(v85 + v127, 1, v75) == 1)
  {
    sub_188A3F5FC(v71, &qword_1EA935CD0);
    (*(v165 + 8))(v129, v75);
LABEL_45:
    sub_188A3F5FC(v85, &unk_1EA934850);
LABEL_46:
    v130 = v150;
    sub_188A3F29C(v84, v150, &qword_1EA935CD0);
    v131 = type metadata accessor for MaterialBackdropContext();
    v132 = objc_allocWithZone(v131);
    v132[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags] = 0;
    v133 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
    (*(v165 + 56))(&v132[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy], 1, 1, v75);
    swift_beginAccess();
    sub_188E69B8C(v130, &v132[v133]);
    swift_endAccess();
    v167.receiver = v132;
    v167.super_class = v131;
    v134 = objc_msgSendSuper2(&v167, sel_init);
    sub_188A3F5FC(v130, &qword_1EA935CD0);
    v135 = a1[3];
    v136 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v135);
    sub_188E68CB8(v134, v135, v136);
    goto LABEL_47;
  }

  v144 = v165;
  v145 = v147;
  (*(v165 + 32))(v147, v85 + v127, v75);
  sub_188C623C8(&qword_1EA930AA0, MEMORY[0x1E697FC78]);
  LODWORD(v164) = sub_18A4A7248();
  v146 = *(v144 + 8);
  v146(v145, v75);
  sub_188A3F5FC(v71, &qword_1EA935CD0);
  v146(v129, v75);
  sub_188A3F5FC(v85, &qword_1EA935CD0);
  if ((v164 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  v137 = v160;
  sub_18A4A5288();
  v138 = sub_188EB93E8(v137);
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v139 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901BD20(&type metadata for _UITraitColorMaterialRenderingMode, sub_188EB2F58);
  os_unfair_lock_unlock(v139[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860);
  v140 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v141 = [v162 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  if (v138 == v141)
  {
    sub_188A3F5FC(v84, &qword_1EA935CD0);
  }

  else
  {
    v142 = a1[3];
    v143 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v142);
    sub_18904E324(v138, v142, v143);

    sub_188A3F5FC(v84, &qword_1EA935CD0);
  }
}

uint64_t UITraitEnvironmentLayoutDirection.init(_layoutDirection:)(uint64_t a1)
{
  v2 = sub_18A4A4CD8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  result = 0;
  if (v4 != *MEMORY[0x1E697E7D0])
  {
    if (v4 == *MEMORY[0x1E697E7D8])
    {
      return 1;
    }

    else
    {
      (*(v3 + 8))(a1, v2);
      return -1;
    }
  }

  return result;
}

uint64_t UIUserInterfaceStyle.init(_colorScheme:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_18A4A4428();
  v6 = *(v5 - 8);
  v7 = 0;
  if ((*(v6 + 48))(a1, 1, v5) != 1)
  {
    sub_188A3F29C(a1, v4, &qword_1EA93A730);
    v8 = (*(v6 + 88))(v4, v5);
    if (v8 == *MEMORY[0x1E697DBB8])
    {
      v7 = 1;
    }

    else if (v8 == *MEMORY[0x1E697DBA8])
    {
      v7 = 2;
    }

    else
    {
      (*(v6 + 8))(v4, v5);
      v7 = 0;
    }
  }

  sub_188A3F5FC(a1, &qword_1EA93A730);
  return v7;
}

uint64_t UIAccessibilityContrast.init(_colorSchemeContrast:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_18A4A5418();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a1, 1, v5) != 1)
  {
    sub_188A3F29C(a1, v4, &qword_1EA935D10);
    v8 = (*(v6 + 88))(v4, v5);
    if (v8 == *MEMORY[0x1E697F600])
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (v8 == *MEMORY[0x1E697F608])
    {
      v7 = 1;
      goto LABEL_7;
    }

    (*(v6 + 8))(v4, v5);
  }

  v7 = -1;
LABEL_7:
  sub_188A3F5FC(a1, &qword_1EA935D10);
  return v7;
}

uint64_t sub_188EB8324(void *a1, uint64_t a2)
{
  v81 = a2;
  v78 = sub_18A4A6068();
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v69 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v69 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v69 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = (&v69 - v13);
  v80 = sub_18A4A6BC8();
  v73 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18A4A4F58();
  v19 = a1[3];
  v20 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v19);
  UIMutableTraits._glassElevationLevel.setter(v18 & 1, v19, v20);
  v21 = sub_18A4A2F68();
  v71 = &v69;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v69 - v27;
  sub_18A4A4F98();
  if ((*(v22 + 48))(v28, 1, v21) == 1)
  {
    sub_188A3F5FC(v28, &qword_1EA937E70);
  }

  else
  {
    (*(v22 + 32))(v24, v28, v21);
    (*(v22 + 16))(v17, v24, v21);
    (*(v22 + 56))(v17, 0, 1, v21);
    (*(v26 + 56))(v17, 0, 2, v25);
    v29 = a1[3];
    v30 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v29);
    sub_188AC7FC4(v17, v29, v30);
    v31 = a1[3];
    v32 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v31);
    UIMutableTraits._userInterfaceRenderingMode.setter(2, v31, v32);
    (*(v22 + 8))(v24, v21);
  }

  v33 = v72;
  sub_18A4A5078();
  v34 = v73;
  v35 = v80;
  if ((*(v73 + 48))(v33, 1, v80) == 1)
  {
    sub_188A3F5FC(v33, &qword_1EA935CD8);
    v36 = v78;
  }

  else
  {
    (*(v34 + 32))(v79, v33, v35);
    v37 = sub_18A4A2DB8();
    v72 = &v69;
    v38 = *(v37 - 8);
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
    v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v41 - 8);
    sub_188EB9650();
    sub_18A4A6BA8();
    if ((*(v38 + 48))(&v69 - v42, 1, v37) == 1)
    {
      (*(v34 + 8))(v79, v80);
      sub_188A3F5FC(&v69 - v42, &qword_1EA935D70);
    }

    else
    {
      v43 = (*(v38 + 32))(v40, &v69 - v42, v37);
      v44 = MEMORY[0x1EEE9AC00](v43);
      (*(v38 + 16))(&v69 - v42, v40, v37, v44);
      (*(v38 + 56))(&v69 - v42, 0, 1, v37);
      v45 = a1[3];
      v46 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v45);
      sub_188F65750(&v69 - v42, v45, v46);
      (*(v38 + 8))(v40, v37);
      (*(v34 + 8))(v79, v80);
    }

    v36 = v78;
  }

  v47 = v76;
  v48 = v77;
  v49 = v74;
  v50 = v75;
  sub_18A4A5178();
  v51 = a1[3];
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v51);
  sub_188E68D0C(v51, v52);
  if (v83 == 2)
  {
    sub_18A4A6008();
  }

  else if (v83 == 1)
  {
    sub_18A4A5FF8();
  }

  else
  {
    sub_18A4A5FD8();
  }

  sub_188C623C8(&unk_1ED48EE88, MEMORY[0x1E69818B0]);
  v53 = sub_18A4A7248();
  v54 = *(v50 + 8);
  v54(v49, v36);
  if ((v53 & 1) == 0)
  {
    v55 = *(v50 + 16);
    v55(v47, v48, v36);
    v56 = v70;
    v55(v70, v47, v36);
    v57 = v56;
    v58 = v69;
    sub_18A4A5FF8();
    LOBYTE(v56) = sub_18A4A7248();
    v54(v58, v36);
    if (v56)
    {
      v54(v57, v36);
      v54(v47, v36);
      v59 = 1;
    }

    else
    {
      sub_18A4A6008();
      v60 = sub_18A4A7248();
      v54(v58, v36);
      v54(v57, v36);
      v54(v47, v36);
      if (v60)
      {
        v59 = 2;
      }

      else
      {
        v59 = 0;
      }
    }

    v61 = a1[3];
    v62 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v61);
    v82 = v59;
    sub_188E68D3C(&v82, v61, v62);
  }

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v65 = &v69 - v64;
  sub_18A4A4FB8();
  v66 = a1[3];
  v67 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v66);
  sub_188E68D94(v65, v66, v67);
  return (v54)(v48, v36);
}

uint64_t ColorScheme.init(_uiUserInterfaceStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A4428();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v9 = MEMORY[0x1E697DBB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v9 = MEMORY[0x1E697DBA8];
LABEL_5:
    v10 = *v9;
    v11 = *(v5 + 104);
    v15 = v5;
    v11(v8, v10, v4, v6);
    (*(v15 + 32))(a2, v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  v13 = *(v5 + 56);

  return v13(a2, 1, 1, v4, v6);
}

void sub_188EB8F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (UIApp)
  {
    v5 = UIApp;
    v6 = sub_18A4A28C8();
    sub_188E8DE2C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_188C623C8(&unk_1EA935D50, type metadata accessor for OpenExternalURLOptionsKey);
    v7 = sub_18A4A7088();

    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_188ABD010;
    v9[3] = &block_descriptor_68;
    v8 = _Block_copy(v9);

    [v5 openURL:v6 options:v7 completionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t UILegibilityWeight.init(_legibilityWeight:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_18A4A4DD8();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a1, 1, v5) != 1)
  {
    sub_188A3F29C(a1, v4, &qword_1EA935CF0);
    v8 = (*(v6 + 88))(v4, v5);
    if (v8 == *MEMORY[0x1E697E9F8])
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (v8 == *MEMORY[0x1E697E9F0])
    {
      v7 = 1;
      goto LABEL_7;
    }

    (*(v6 + 8))(v4, v5);
  }

  v7 = -1;
LABEL_7:
  sub_188A3F5FC(a1, &qword_1EA935CF0);
  return v7;
}

unint64_t sub_188EB9204()
{
  result = qword_1EA93FD90;
  if (!qword_1EA93FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FD90);
  }

  return result;
}

unint64_t sub_188EB925C()
{
  result = qword_1EA935D18;
  if (!qword_1EA935D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935D18);
  }

  return result;
}

unint64_t sub_188EB92B4()
{
  result = qword_1EA935D20;
  if (!qword_1EA935D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935D20);
  }

  return result;
}

unint64_t sub_188EB930C()
{
  result = qword_1EA935D28;
  if (!qword_1EA935D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935D28);
  }

  return result;
}

unint64_t sub_188EB9364()
{
  result = qword_1EA935D30;
  if (!qword_1EA935D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935D30);
  }

  return result;
}

uint64_t sub_188EB93E8(char *a1)
{
  v2 = sub_18A4A5908();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  (*(v3 + 16))(&v15 - v8, a1, v2, v7);
  sub_18A4A58F8();
  sub_188C623C8(&qword_1ED48F1A8, MEMORY[0x1E69806B8]);
  v10 = sub_18A4A7248();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(a1, v2);
    v11(v9, v2);
    return 0;
  }

  else
  {
    sub_18A4A58E8();
    v13 = sub_18A4A7248();
    v11(v5, v2);
    if (v13)
    {
      v11(a1, v2);
      v11(v9, v2);
      return 1;
    }

    else
    {
      sub_18A4A58D8();
      v14 = sub_18A4A7248();
      v11(a1, v2);
      v11(v5, v2);
      v11(v9, v2);
      if (v14)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }
}

unint64_t sub_188EB9650()
{
  result = qword_1EA935D60;
  if (!qword_1EA935D60)
  {
    sub_18A4A2DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935D60);
  }

  return result;
}

id sub_188EB96B4@<X0>(void *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = vbicq_s8(v1[1], vclezq_f64(v1[1]));
  v8[0] = vbicq_s8(*v1, vclezq_f64(*v1));
  v8[1] = v4;
  v5 = vbicq_s8(v1[3], vclezq_f64(v1[3]));
  v8[2] = vbicq_s8(v1[2], vclezq_f64(v1[2]));
  v8[3] = v5;
  result = [v3 valueWithCACornerRadii_];
  if (result)
  {
    v7 = result;
    result = sub_188A921E4();
    a1[3] = result;
    *a1 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_188EB9748()
{
  if ((~*v0 & 0x7FF0000000000000) == 0)
  {
    return 1;
  }

  v2 = vdupq_n_s64(0x7FF0000000000000uLL);
  result = 1;
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(*(v0 + 8), v2), v2), vceqq_s64(vandq_s8(*(v0 + 24), v2), v2)))) & 1) == 0)
  {
    return (*(v0 + 40) & 0x7FF0000000000000) == 0x7FF0000000000000 || (*(v0 + 48) & 0x7FF0000000000000) == 0x7FF0000000000000 || (~*(v0 + 56) & 0x7FF0000000000000) == 0;
  }

  return result;
}

BOOL sub_188EB97C0(double *a1, double a2)
{
  if (vabdd_f64(*v2, *a1) > a2)
  {
    return 0;
  }

  if (vabdd_f64(v2[1], a1[1]) > a2)
  {
    return 0;
  }

  if (vabdd_f64(v2[2], a1[2]) > a2)
  {
    return 0;
  }

  if (vabdd_f64(v2[3], a1[3]) > a2)
  {
    return 0;
  }

  if (vabdd_f64(v2[4], a1[4]) > a2)
  {
    return 0;
  }

  if (vabdd_f64(v2[5], a1[5]) > a2)
  {
    return 0;
  }

  if (vabdd_f64(v2[6], a1[6]) <= a2)
  {
    return vabdd_f64(v2[7], a1[7]) <= a2;
  }

  return 0;
}

double sub_188EB989C(float64x2_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934210);
  inited = swift_initStackObject();
  v4 = v1[1];
  v5 = a1[1];
  v6 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  v7 = vdivq_f64(vabdq_f64(*v1, *a1), v6);
  *(inited + 16) = xmmword_18A64FD70;
  *(inited + 32) = v7;
  v8 = vabdq_f64(v4, v5);
  v9 = v1[3];
  v10 = a1[3];
  v11 = vdivq_f64(vabdq_f64(v1[2], a1[2]), v6);
  *(inited + 48) = vdivq_f64(v8, v6);
  *(inited + 64) = v11;
  *(inited + 80) = vdivq_f64(vabdq_f64(v9, v10), v6);
  v12 = COERCE_DOUBLE(sub_188F7BBAC(inited));
  v14 = v13;
  swift_setDeallocating();
  result = v12;
  if (v14)
  {
    return 0.0;
  }

  return result;
}

float64x2_t sub_188EB99F0(float64x2_t *a1)
{
  v2 = vmulq_f64(a1[1], v1[1]);
  *v1 = vmulq_f64(*a1, *v1);
  v1[1] = v2;
  result = vmulq_f64(a1[2], v1[2]);
  v4 = vmulq_f64(a1[3], v1[3]);
  v1[2] = result;
  v1[3] = v4;
  return result;
}

float64x2_t sub_188EB9A20(double a1)
{
  v2 = vmulq_n_f64(v1[1], a1);
  *v1 = vmulq_n_f64(*v1, a1);
  v1[1] = v2;
  v3 = vmulq_n_f64(v1[2], a1);
  result = vmulq_n_f64(v1[3], a1);
  v1[2] = v3;
  v1[3] = result;
  return result;
}

double sub_188EB9A44()
{
  v1 = vmulq_f64(*v0, *v0);
  v2 = vmulq_f64(v0[1], v0[1]);
  v3 = vaddq_f64(vaddq_f64(vaddq_f64(v1, vdupq_laneq_s64(v1, 1)), v2), vdupq_laneq_s64(v2, 1));
  v4 = vmulq_f64(v0[2], v0[2]);
  v5 = vaddq_f64(vaddq_f64(v3, v4), vdupq_laneq_s64(v4, 1));
  v6 = vmulq_f64(v0[3], v0[3]);
  *&result = *&vaddq_f64(vaddq_f64(v5, v6), vdupq_laneq_s64(v6, 1));
  return result;
}

float64x2_t sub_188EB9A8C@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = vaddq_f64(a1[1], a2[1]);
  *a3 = vaddq_f64(*a1, *a2);
  a3[1] = v3;
  result = vaddq_f64(a1[2], a2[2]);
  v5 = vaddq_f64(a1[3], a2[3]);
  a3[2] = result;
  a3[3] = v5;
  return result;
}

float64x2_t sub_188EB9AB8(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vaddq_f64(a2[1], a1[1]);
  *a1 = vaddq_f64(*a2, *a1);
  a1[1] = v2;
  result = vaddq_f64(a2[2], a1[2]);
  v4 = vaddq_f64(a2[3], a1[3]);
  a1[2] = result;
  a1[3] = v4;
  return result;
}

float64x2_t sub_188EB9AE4@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = vsubq_f64(a1[1], a2[1]);
  *a3 = vsubq_f64(*a1, *a2);
  a3[1] = v3;
  result = vsubq_f64(a1[2], a2[2]);
  v5 = vsubq_f64(a1[3], a2[3]);
  a3[2] = result;
  a3[3] = v5;
  return result;
}

float64x2_t sub_188EB9B10(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vsubq_f64(a1[1], a2[1]);
  *a1 = vsubq_f64(*a1, *a2);
  a1[1] = v2;
  result = vsubq_f64(a1[2], a2[2]);
  v4 = vsubq_f64(a1[3], a2[3]);
  a1[2] = result;
  a1[3] = v4;
  return result;
}

uint64_t UIMutableTraits._headroomUsage.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 368);
  v5 = sub_188EB9E18();
  v4(&v7, &type metadata for _UITraitHDRHeadroomUsage, &type metadata for _UITraitHDRHeadroomUsage, &protocol witness table for _UITraitHDRHeadroomUsage, v5, a1, a2);
  return v7;
}

uint64_t UIMutableTraits._headroomUsage.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_188EB9E18();
  return v5(&v8, &type metadata for _UITraitHDRHeadroomUsage, &type metadata for _UITraitHDRHeadroomUsage, &protocol witness table for _UITraitHDRHeadroomUsage, v6, a2, a3);
}

void (*UIMutableTraits._headroomUsage.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = *(a3 + 368);
  v9 = sub_188EB9E18();
  v8(&type metadata for _UITraitHDRHeadroomUsage, &type metadata for _UITraitHDRHeadroomUsage, &protocol witness table for _UITraitHDRHeadroomUsage, v9, a2, a3);
  return sub_188EB9D8C;
}

void sub_188EB9D8C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  **a1 = *(*a1 + 8);
  v4 = *(v2 + 376);
  v5 = sub_188EB9E18();
  v4(v1, &type metadata for _UITraitHDRHeadroomUsage, &type metadata for _UITraitHDRHeadroomUsage, &protocol witness table for _UITraitHDRHeadroomUsage, v5, v3, v2);

  free(v1);
}

unint64_t sub_188EB9E18()
{
  result = qword_1EA935D78;
  if (!qword_1EA935D78)
  {
    type metadata accessor for _UIHDRHeadroomUsage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935D78);
  }

  return result;
}

id UIWindowSceneGeometryPreferencesIOS.interfaceOrientations.getter()
{
  result = [v0 interfaceOrientations];
  if (result)
  {
    return [v0 interfaceOrientations];
  }

  return result;
}

id UIWindowSceneGeometryPreferencesIOS.interfaceOrientations.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  return [v2 setInterfaceOrientations_];
}

id (*UIWindowSceneGeometryPreferencesIOS.interfaceOrientations.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = v1;
  *(a1 + 16) = v1;
  v4 = [v1 interfaceOrientations];
  v5 = v4;
  if (v4)
  {
    v4 = [v2 interfaceOrientations];
  }

  *a1 = v4;
  *(a1 + 8) = v5 == 0;
  return sub_188EB9F68;
}

id sub_188EB9F68(uint64_t *a1)
{
  if (*(a1 + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *a1;
  }

  return [a1[2] setInterfaceOrientations_];
}

int8x16_t UIWindowSceneGeometryPreferencesMac.systemFrame.getter@<Q0>(int8x16_t *a1@<X8>)
{
  [v1 systemFrame];
  y = v14.origin.y;
  x = v14.origin.x;
  width = v14.size.width;
  height = v14.size.height;
  IsNull = CGRectIsNull(v14);
  *v4.i64 = x;
  *&v4.i64[1] = y;
  *v5.i64 = width;
  *&v5.i64[1] = height;
  if (IsNull)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s64(v6);
  v8 = vbicq_s8(v4, v7);
  result = vbicq_s8(v5, v7);
  *a1 = v8;
  a1[1] = result;
  a1[2].i8[0] = IsNull;
  return result;
}

int8x16_t sub_188EBA004@<Q0>(id *a1@<X0>, int8x16_t *a2@<X8>)
{
  [*a1 systemFrame];
  y = v14.origin.y;
  x = v14.origin.x;
  width = v14.size.width;
  height = v14.size.height;
  IsNull = CGRectIsNull(v14);
  *v4.i64 = x;
  *&v4.i64[1] = y;
  *v5.i64 = width;
  *&v5.i64[1] = height;
  if (IsNull)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s64(v6);
  v8 = vbicq_s8(v4, v7);
  result = vbicq_s8(v5, v7);
  *a2 = v8;
  a2[1] = result;
  a2[2].i8[0] = IsNull;
  return result;
}

id UIWindowSceneGeometryPreferencesMac.systemFrame.setter(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E695F050];
  }

  else
  {
    v2 = a1;
  }

  return [v1 setSystemFrame_];
}

void (*UIWindowSceneGeometryPreferencesMac.systemFrame.modify(uint64_t *a1))(id **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v2;
  [v2 systemFrame];
  y = v16.origin.y;
  x = v16.origin.x;
  height = v16.size.height;
  width = v16.size.width;
  IsNull = CGRectIsNull(v16);
  *v7.i64 = x;
  *&v7.i64[1] = y;
  *v8.i64 = width;
  *&v8.i64[1] = height;
  if (IsNull)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  *v5 = vbicq_s8(v7, v10);
  v5[1] = vbicq_s8(v8, v10);
  v5[2].i8[0] = IsNull;
  return sub_188EBA16C;
}

void sub_188EBA16C(id **a1, char a2)
{
  v2 = *a1;
  v3 = MEMORY[0x1E695F050];
  if ((*a1)[4])
  {
    v4 = MEMORY[0x1E695F050];
  }

  else
  {
    v4 = *a1;
  }

  if (((*a1)[4] & 1) == 0)
  {
    v3 = *a1;
  }

  if ((a2 & 1) == 0)
  {
    v4 = v3;
  }

  [v2[5] setSystemFrame_];

  free(v2);
}

uint64_t (*sub_188EBA32C(uint64_t a1))()
{
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return sub_188EBB208;
}

uint64_t sub_188EBA3D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188EBB1BC;
  *(v5 + 24) = v4;
  *a2 = sub_188EBB1D8;
  a2[1] = v5;

  return swift_unknownObjectRetain();
}

uint64_t sub_188EBA4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v8 = sub_18A4A7308();
  v10 = v9;
  result = sub_18A4A82E8();
  if (v12)
  {
    v13 = result;
    v14 = v12;
    v15 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    sub_18A4A79B8();
    if (v5)
    {
    }

    else
    {
      v25 = a3;
      v16 = [v15 encodedData];
      v17 = sub_18A4A2928();
      v24 = v13;
      v19 = v18;

      v20 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D80);
      sub_18A4A7308();
      v23 = a2;
      v21 = sub_18A4A7258();

      v22 = MEMORY[0x18CFE4050](v21);

      [v20 setFlag:1 forSetting:v22];
      sub_188DBEE28(v8, v10, v24, v14);

      sub_188DBF7D8(v17, v19);
      sub_188DBF67C(v17, v19);
      sub_188DC0F30(v17, v19);
      sub_188EBA734(v23, v25);
      [v20 copy];
      sub_18A4A7DE8();
      sub_188DC0F30(v17, v19);

      swift_unknownObjectRelease();
      sub_188DBF854();
      swift_dynamicCast();
      return v26;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_188EBA734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  MEMORY[0x1EEE9AC00](v6);
  v7 = type metadata accessor for _BoxedCodableValue();
  if (a2)
  {
    v8 = v7;
    v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
    v17[0] = a1;
    v17[1] = a2;
    v9 = objc_allocWithZone(v8);
    sub_188A55598(v17, v16);

    v12 = sub_188DBF4DC(v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v17[0] = &type metadata for _UISceneConnectionOptionCoder._TargetContentIdentifierSetting;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D90);
    sub_18A4A7308();
    v14 = sub_18A4A7258();

    v15 = MEMORY[0x18CFE4050](v14);

    [v3 setObject:v13 forSetting:v15];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D90);
    sub_18A4A7308();
    v10 = sub_18A4A7258();

    v11 = MEMORY[0x18CFE4050](v10);

    [v3 setObject:0 forSetting:v11];
  }
}

void sub_188EBAC48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for _BoxedCodableValue();
  if (qword_1EA931DB0 != -1)
  {
    v13 = v4;
    swift_once();
    v4 = v13;
  }

  if (qword_1EA9398A8 == a1)
  {
    v15[0] = &type metadata for UIKeyboardInlineCandidateStorage.HostIdiomKey;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935DA0);
    sub_18A4A7308();
    v5 = sub_18A4A7258();

    v6 = MEMORY[0x18CFE4050](v5);

    [v1 setObject:0 forSetting:v6];
  }

  else
  {
    v7 = v1;
    v15[3] = MEMORY[0x1E69E6530];
    v15[0] = a1;
    v8 = objc_allocWithZone(v4);
    sub_188A55598(v15, v14);
    v9 = sub_188DBF4DC(v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v15[0] = &type metadata for UIKeyboardInlineCandidateStorage.HostIdiomKey;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935DA0);
    sub_18A4A7308();
    v11 = sub_18A4A7258();

    v12 = MEMORY[0x18CFE4050](v11);

    [v7 setObject:v10 forSetting:v12];
  }
}

uint64_t sub_188EBB14C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_188EBB20C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_64;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_188E49A94(v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_59;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        goto LABEL_58;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject group];
      if (v7)
      {
        break;
      }

      v11 = [v4 items];
      if (v11)
      {
        v12 = v11;
        sub_188A34624(0, &qword_1ED48E8C0);
        v10 = sub_18A4A7548();

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        goto LABEL_17;
      }

      v10 = MEMORY[0x1E69E7CC0];

      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_51:
      v14 = sub_18A4A7F68();
      v13 = 1;
      if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
      {
        goto LABEL_53;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = isUniquelyReferenced_nonNull_bridgeObject + v14;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
      {
        goto LABEL_55;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
        {
          v16 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }
      }

      else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
        goto LABEL_29;
      }

      sub_18A4A7F68();
LABEL_29:
      isUniquelyReferenced_nonNull_bridgeObject = sub_18A4A8168();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_30:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v13)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_18A4A7F68();
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
LABEL_4:

          if (v14 > 0)
          {
            goto LABEL_60;
          }

          goto LABEL_5;
        }
      }

      if (((v18 >> 1) - v17) < v14)
      {
        goto LABEL_61;
      }

      v20 = (v16 + 8 * v17 + 32);
      if (v13)
      {
        if (v19 < 1)
        {
          goto LABEL_63;
        }

        v21 = 0;
        if ((v10 & 0xC000000000000001) == 0)
        {
          goto LABEL_40;
        }

        while (1)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_188E49ABC(v21++, v10);
          *v20 = isUniquelyReferenced_nonNull_bridgeObject;
          if (v21 == v19)
          {
            break;
          }

          while (1)
          {
            ++v20;
            if ((v10 & 0xC000000000000001) != 0)
            {
              break;
            }

LABEL_40:
            if ((v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_56;
            }

            if (v21 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v22 = *(v10 + 32 + 8 * v21++);
            *v20 = v22;
            isUniquelyReferenced_nonNull_bridgeObject = v22;
            if (v21 == v19)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_47:

        v1 = v28;
        if (v14 < 1)
        {
          goto LABEL_5;
        }

        goto LABEL_48;
      }

      sub_188A34624(0, &qword_1ED48E8C0);
      swift_arrayInitWithCopy();

      if (v14 < 1)
      {
        goto LABEL_5;
      }

LABEL_48:
      v23 = *(v16 + 16);
      v5 = __OFADD__(v23, v14);
      v24 = v23 + v14;
      if (v5)
      {
        goto LABEL_62;
      }

      *(v16 + 16) = v24;
LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    v8 = v7;
    v9 = [v7 barButtonItems];
    sub_188A34624(0, &qword_1ED48E8C0);
    v10 = sub_18A4A7548();

    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

LABEL_17:
    if ((v10 & 0x4000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v13 = 0;
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_53:
    isUniquelyReferenced_nonNull_bridgeObject = sub_18A4A7F68();
    v15 = isUniquelyReferenced_nonNull_bridgeObject + v14;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
    {
      goto LABEL_21;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_18A4A7F68();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_188EBB620()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
  if (v2)
  {
    v3 = &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent];
    v4 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80];
    if (v4)
    {
      v5 = *(v3 + 11);
      v30 = *(v3 + 10);
      v31 = v5;
      v26 = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_188EBB970;
      v29 = &block_descriptor_103_1;
      v6 = _Block_copy(&v26);
      v7 = v2;
      sub_188A52E38(v4);
    }

    else
    {
      v7 = v2;
      v6 = 0;
    }

    [v7 setTitleMenuProvider_];
    _Block_release(v6);
  }

  v8 = &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent];
  v9 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 96];
  v10 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties] = v9;
  v11 = v9;
  sub_188B36178(v10);

  v12 = *(v8 + 13);
  v13 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renameHandler];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renameHandler] = v12;
  if (!v13)
  {
    if (!v12)
    {
      return;
    }

    v17 = v12;
    goto LABEL_12;
  }

  if (!v12 || (sub_188A34624(0, &qword_1EA936320), v14 = v12, v15 = v13, v16 = sub_18A4A7C88(), v15, (v16 & 1) == 0))
  {
LABEL_12:
    v18 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession];
    if (v18)
    {
      *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession] = 0;
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v1;
      v30 = sub_188EC23B8;
      v31 = v20;
      v26 = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_188A4A8F0;
      v29 = &block_descriptor_94;
      v21 = _Block_copy(&v26);
      v22 = v1;

      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v30 = sub_188EC23C0;
      v31 = v23;
      v26 = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_188ABD010;
      v29 = &block_descriptor_100_0;
      v24 = _Block_copy(&v26);
      v25 = v22;

      [v19 animateWithDuration:4 delay:v21 options:v24 animations:0.3 completion:0.0];
      _Block_release(v24);
      _Block_release(v21);
    }

    sub_188EBBDE4();

    goto LABEL_15;
  }

  v12 = v15;
LABEL_15:
}

id sub_188EBB970(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_188A34624(0, &qword_1ED48FC30);
  v2 = sub_18A4A7548();

  v3 = v1(v2);

  return v3;
}

void sub_188EBBA00()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleContent];
  v3 = v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleContent + 16];
  if (v3 != 255)
  {
    v5 = *v2;
    v4 = v2[1];
    if (v3)
    {
      v6 = v5;
LABEL_5:
      v7 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView;
      v8 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView];
      if (v8)
      {
        v9 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView];
      }

      else
      {
        type metadata accessor for NavigationBarSubtitleView();
        v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v11 = *&v1[v7];
        *&v1[v7] = v10;
        v9 = v10;

        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13 = &v9[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler];
        v14 = *&v9[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler];
        *v13 = sub_188EC2BF4;
        *(v13 + 1) = v12;

        sub_188A55B8C(v14);

        v8 = 0;
      }

      v15 = v8;
      sub_188CC4D48(v5, v4, v3);
      v16 = v15;
      LOBYTE(v15) = sub_1891E4324(v5, v4, v3 & 1);
      sub_188B4C634(v5, v4, v3);

      if (v15)
      {
        v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 1;
        sub_188AED2B0(v18);
        memcpy(__dst, &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
        memcpy(&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], v18, 0x20AuLL);
        sub_188A3F5FC(__dst, &unk_1EA9362C0);
        [v1 setNeedsLayout];

        sub_188B4C634(v5, v4, v3);
      }

      else
      {

        sub_188B4C634(v5, v4, v3);
      }

      return;
    }

    sub_188CCA578(*v2, v2[1], 0);
    if ([v5 length] > 0)
    {
      goto LABEL_5;
    }

    sub_188B4C634(v5, v4, v3);
  }

  v17 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView];
  if (v17)
  {
    *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView] = 0;

    v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 1;
    sub_188AED2B0(v18);
    memcpy(__dst, &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    memcpy(&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], v18, 0x20AuLL);
    sub_188A3F5FC(__dst, &unk_1EA9362C0);
    [v0 setNeedsLayout];
  }
}

id sub_188EBBCE8()
{
  v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView];
  *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView] = 0;

  v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties];
  if (v3)
  {
    v4 = v3;
    if ([v4 wantsIconRepresentation])
    {
      v5 = [v4 _iconView];

      v4 = *&v0[v1];
      *&v0[v1] = v5;
    }
  }

  return [v0 setNeedsLayout];
}

void sub_188EBBD90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_188EBBCE8();
  }
}

void sub_188EBBDE4()
{
  v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 88);
      v8[4] = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80);
      v8[5] = v4;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_188EBB970;
      v8[3] = &block_descriptor_49;
      v5 = _Block_copy(v8);
      v6 = v2;
      sub_188A52E38(v3);
    }

    else
    {
      v6 = v2;
      v5 = 0;
    }

    [v6 setTitleMenuProvider_];
    _Block_release(v5);

    v7 = *(v0 + v1);
    if (v7)
    {
      [v7 setDocumentProperties_];
    }
  }
}

id sub_188EBBF0C()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView;
    v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView];
    v4 = v1;
    if (v3)
    {
      [v3 setHorizontalTextInsetDidChangeCallback_];
    }

    v6 = [v1 renamerContentView];
    v7 = *&v0[v2];
    *&v0[v2] = v6;
    v8 = v6;

    [v8 becomeFirstResponder];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_188EC2114;
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_188D85708;
    v12[3] = &block_descriptor_17;
    v10 = _Block_copy(v12);

    [v8 setHorizontalTextInsetDidChangeCallback_];
    _Block_release(v10);
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView];
    *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView] = 0;
  }

  return [v0 setNeedsLayout];
}

id sub_188EBC094(uint64_t a1)
{
  sub_188EBBDE4();
  result = *(a1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView);
  if (result)
  {
    v3 = 1.0;
    if (!*(a1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession))
    {
      v3 = 0.0;
    }

    return [result setAlpha_];
  }

  return result;
}

id sub_188EBC108(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession))
  {
    return sub_188EBBF0C();
  }

  return result;
}

void sub_188EBC140(id a1)
{
  v3 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost;
  v4 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView];
    if (v5)
    {
      if (a1)
      {
        if (v5 == a1)
        {
          v17 = v5;
          v6 = v4;
          sub_188ECC9E8(a1);

          v7 = v17;
          goto LABEL_14;
        }

        goto LABEL_9;
      }
    }

    else if (a1)
    {
LABEL_9:
      v13 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
      v12 = v13;
      goto LABEL_10;
    }

    [v1 setNeedsLayout];
    v7 = *&v1[v3];
  }

  else
  {
    if (a1)
    {
      [a1 bounds];
      v12 = [objc_allocWithZone(_s22AugmentedTitleViewHostCMa()) initWithFrame_];
      v13 = 0;
      v4 = *&v1[v3];
LABEL_10:
      *&v1[v3] = v12;
      v14 = v13;
      v18 = v12;

      v15 = *&v18[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView];
      *&v18[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView] = a1;
      v16 = a1;
      sub_188ECC9E8(v15);

      sub_188BEBE14(0);
      sub_188EBC308();
      sub_188AEA3E4();
      [v1 setNeedsLayout];

      v7 = v18;
      goto LABEL_14;
    }

    v7 = 0;
  }

  *&v1[v3] = 0;
LABEL_14:
}

void sub_188EBC308()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost))
  {
    v7 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = v7;

      v4 = v3[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled];
      v3[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled] = 1;
      if ((v4 & 1) == 0)
      {
        *(&v9 + 1) = &type metadata for _GlassGroup;
        v10 = &protocol witness table for _GlassGroup;
        LOWORD(v8) = 256;
        *(&v8 + 1) = 0;
        LOWORD(v9) = 1;
LABEL_7:
        UIView._background.setter(&v8);

        return;
      }
    }

    else
    {
      v5 = *(v7 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled);
      *(v7 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled) = 0;
      v6 = v7;
      if (v5)
      {
        v10 = 0;
        v8 = 0u;
        v9 = 0u;
        goto LABEL_7;
      }
    }
  }
}

char *sub_188EBC4A4(uint64_t a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v10, sel_hitTest_withEvent_, a1, a2, a3);
  if (result)
  {
    v8 = result == v3;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if ((v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldPassThroughTouches] & 1) != 0 || (v9 = (*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content), !*(*v9 + 16)) && !*(v9[1] + 16))
    {

      return 0;
    }
  }

  return result;
}

void sub_188EBC5E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_188BEBE14(1);
  }
}

void sub_188EBC63C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_188CDFBF0();
  }
}

void sub_188EBC690()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession))
    {
      sub_188EBBF0C();
    }
  }
}

void sub_188EBC6F4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_requestedContentSize);
  if (v2 != a1)
  {
    if (v2)
    {
      v3 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics;
      v4 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics);
      sub_188BEBE14(0);
      if (v4 != *(v1 + v3))
      {
        v5 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
        if (v5)
        {
          v6 = v5;
          sub_188C57FA8(v6);
        }

        v7 = sub_188EBC854();
        if (v7)
        {
          v8 = v7;
          sub_188B49844();
        }

        v9 = sub_188AEAD00();
        if (v9)
        {
          v10 = v9;
          sub_188B49844();
        }

        v11 = sub_188AEAF10();
        if (v11)
        {
          v12 = v11;
          sub_188B49844();
        }

        v13 = sub_188AEB244();
        if (v13)
        {
          v14 = v13;
          sub_188B49844();
        }
      }
    }

    else
    {
      sub_18A4A8398();
      __break(1u);
    }
  }
}

void *sub_188EBC854()
{
  v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode;
  if (!*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode])
  {
    return 0;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__staticLeadingBar;
  v4 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__staticLeadingBar];
  if (!v4)
  {
    strcpy(v28, "StaticLeading");
    HIWORD(v28[1]) = -4864;
    sub_18A4A8048();
    v5 = [v2 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    v7 = [objc_opt_self() visualProviderForIdiom_];
    ObjectType = swift_getObjectType();

    sub_188A3F29C(v29, v28, &unk_1EA937A80);
    v9 = objc_allocWithZone(type metadata accessor for NavigationButtonBar());
    v10 = sub_18907B050(ObjectType, 0, v28);
    v11 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__plainItemAppearance];
    v12 = v11;
    sub_189079688(v11);
    v13 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__prominentItemAppearance];
    v14 = v13;
    sub_18907969C(v13);
    sub_188A3F5FC(v29, &unk_1EA937A80);
    v15 = *&v2[v3];
    *&v2[v3] = v10;

    v16 = *&v2[v3];
    if (v16 && (v17 = v16, sub_188B3280C(0), v17, (v18 = *&v2[v3]) != 0) && (v19 = v18, sub_188B32818(1), v19, (v20 = *&v2[v3]) != 0) && (v21 = *&v20[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer], *&v20[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer] = 0, v22 = v20, sub_188B3290C(v21), v22, v21, (v23 = *&v2[v3]) != 0))
    {
      *(v23 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate + 8) = &off_1EFAC6458;
      swift_unknownObjectWeakAssign();
      v4 = *&v2[v3];
    }

    else
    {
      v4 = 0;
    }

    if (*&v2[v1] == 1 && v4)
    {
      swift_beginAccess();
      v24 = v4;

      sub_189079C4C(v25);

      v4 = *&v2[v3];
    }
  }

  v26 = v4;
  return v4;
}

void sub_188EBCAEC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingItemGroups;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
LABEL_26:
    v4 = sub_18A4A7F68();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = sub_188E49AA8(v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v8 = *(v3 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v10 = [v8 isHidden];

    v5 = v7 + 1;
    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v6 = 0;
LABEL_13:

  v11 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode;
  v12 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode] = v6;
  if (v6 != v12)
  {
    [v1 setNeedsLayout];
    v6 = *&v1[v11];
  }

  if (v6 == 1)
  {
    v13 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__staticLeadingBar];
    if (v13)
    {
      v14 = v13;

      sub_189079C4C(v15);
    }
  }

  v16 = sub_188EBC854();
  if (v16)
  {
    v17 = v16;
    v18 = *&v16[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections];
    *&v16[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections] = MEMORY[0x1E69E7CC0];
    sub_188B34B5C(v18);
  }

  if (v4 != v7)
  {
    v19 = sub_188EBC854();
    if (v19)
    {
      v20 = v19;
      sub_188B34C9C();
      v20[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isCompact] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics] == 1;
      v21 = [v1 appearanceStorage];
      v22 = *&v20[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage];
      *&v20[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_appearanceStorage] = v21;
    }

    else
    {
      sub_18A4A8398();
      __break(1u);
    }
  }
}

BOOL sub_188EBCD74()
{
  result = 0;
  if (*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier + 8])
  {
    if (*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode] == 1)
    {
      v1 = [v0 traitCollection];
      v2 = [v1 userInterfaceIdiom];

      if (v2)
      {
        v3 = [v0 traitCollection];
        v4 = [v3 userInterfaceIdiom];

        if (v4 != 6)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_188EBCE38(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_188EBCEC4();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  a1(v4);
}

uint64_t sub_188EBCEC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v39 = MEMORY[0x1E69E7CC0];
  v8 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80);
  if (*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isTitleHidden) == 1)
  {
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties);
      if (v9)
      {
        sub_188A52E38(*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80));

        v10 = [v9 _representedURL];
        if (v10)
        {
          v11 = v10;
          sub_18A4A28D8();

          v12 = sub_18A4A28E8();
          (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
        }

        else
        {
          v12 = sub_18A4A28E8();
          (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
        }

        sub_188EC213C(v4, v7);
        sub_18A4A28E8();
        v15 = *(v12 - 8);
        v14 = 0;
        if ((*(v15 + 48))(v7, 1, v12) != 1)
        {
          v14 = sub_18A4A28C8();
          (*(v15 + 8))(v7, v12);
        }
      }

      else
      {
        v13 = sub_18A4A28E8();
        (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
        sub_188A52E38(v8);

        v14 = 0;
      }

      v16 = [objc_opt_self() titleMenuSuggestedActionsWithDocumentFileURL_];

      sub_188A34624(0, &qword_1ED48FC30);
      v17 = sub_18A4A7548();

      v18 = v8(v17);

      if (v18)
      {
        v19 = [v18 _copyWithOptions_];
        MEMORY[0x18CFE2450]();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
        sub_188A55B8C(v8);
      }

      else
      {
        sub_188A55B8C(v8);
      }
    }
  }

  else
  {
    sub_188A52E38(*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80));
  }

  v20 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalOverflowItems);
  if (v20)
  {
    v21 = v20;
    MEMORY[0x18CFE2450]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
  }

  v22 = sub_188EBC854();
  if (v22)
  {
    v23 = v22;
    v24 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode);
    if (v24 == 2)
    {
      if ((sub_189079CF4(v22) & 1) == 0)
      {
        v25 = sub_18907A448();
        goto LABEL_27;
      }
    }

    else if (v24 != 1)
    {
      goto LABEL_28;
    }

    v25 = sub_18907A158();
LABEL_27:
    sub_18920B968(v25);
LABEL_28:
  }

  v26 = sub_188AEAD00();
  if (!v26)
  {
    goto LABEL_37;
  }

  v27 = v26;
  v28 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode);
  if (v28 == 1)
  {
    goto LABEL_33;
  }

  if (v28 == 2)
  {
    if ((sub_189079CF4(v26) & 1) == 0)
    {
      v29 = sub_18907A448();
      goto LABEL_35;
    }

LABEL_33:
    v29 = sub_18907A158();
LABEL_35:
    sub_18920B968(v29);
  }

LABEL_37:
  v30 = sub_188AEB244();
  if (!v30)
  {
    goto LABEL_45;
  }

  v31 = v30;
  v32 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode);
  if (v32 == 1)
  {
    goto LABEL_41;
  }

  if (v32 == 2)
  {
    if ((sub_189079CF4(v30) & 1) == 0)
    {
      v33 = sub_18907A448();
      goto LABEL_43;
    }

LABEL_41:
    v33 = sub_18907A158();
LABEL_43:
    sub_18920B968(v33);
  }

LABEL_45:
  v34 = sub_188AEAF10();
  if (v34)
  {
    v35 = v34;
    v36 = sub_18907A158();
    sub_18920B968(v36);
  }

  if (sub_188EBCD74() && (dyld_program_sdk_at_least() & 1) == 0)
  {
    sub_188EBD850();
    MEMORY[0x18CFE2450]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
  }

  sub_188A55B8C(v8);
  return v39;
}

uint64_t sub_188EBD490(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_188EC2134, v4);
}

void sub_188EBD524(uint64_t a1, uint64_t a2)
{
  sub_188A34624(0, &qword_1ED48FC30);
  v3 = sub_18A4A7518();
  (*(a2 + 16))(a2, v3);
}

char *sub_188EBD5A0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (result[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isTitleHidden] == 1 && (v2 = *&result[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties]) != 0)
    {
      v3 = v2;
      v4 = sub_188B2A31C();
      if (v4)
      {
        v5 = v4;
        v6 = [v4 view];

        if (v6)
        {
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7)
          {
            v8 = v7;
            v9 = [v7 contextMenuInteraction];
            if (v9)
            {
              v10 = v9;
              v11 = swift_allocObject();
              *(v11 + 16) = v8;
              aBlock[4] = sub_188EC212C;
              aBlock[5] = v11;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_188EBD800;
              aBlock[3] = &block_descriptor_63_3;
              v12 = _Block_copy(aBlock);
              v13 = v6;

              v14 = [v3 _headerViewForMenuInteraction_sourceViewProvider_];

              _Block_release(v12);
              return v14;
            }
          }

          else
          {
          }
        }
      }

      result = sub_18A4A8398();
      __break(1u);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_188EBD800(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_188EBD850()
{
  v0 = sub_18A4A7258();
  v1 = sub_18A4A7258();
  v2 = sub_18A4A7258();
  v3 = _UILocalizedString(v0, v1, v2);

  if (v3)
  {
    sub_18A4A7288();
  }

  v4 = sub_18A4A7258();
  v5 = [objc_opt_self() systemImageNamed_];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = objc_allocWithZone(UIAction);

  v8 = sub_18A4A7258();

  aBlock[4] = sub_188EC21AC;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188BFF280;
  aBlock[3] = &block_descriptor_70_0;
  v9 = _Block_copy(aBlock);

  v10 = [v7 initWithTitle:v8 image:v5 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v9];
  _Block_release(v9);

  v11 = v10;
  [v11 setSubtitle_];
  [v11 setSelectedImage_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18A64B710;
  *(v12 + 32) = v11;
  v13 = objc_allocWithZone(UIMenu);
  v14 = v11;
  v15 = sub_18A4A7258();
  sub_188A34624(0, &qword_1ED48FC30);
  v16 = sub_18A4A7518();

  v17 = [v13 initWithTitle:v15 image:0 imageName:0 identifier:0 options:1 children:v16];

  v18 = v17;
  [v18 setSubtitle_];
  [v18 setPreferredElementSize_];

  return v18;
}

void sub_188EBDBA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1890D2B7C();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_188EBDC38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 1;
    }

    sub_188AED2B0(__src);
    memcpy(__dst, &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    memcpy(&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
    sub_188A3F5FC(__dst, &unk_1EA9362C0);
    [v1 setNeedsLayout];
  }
}

void sub_188EBDD14(char a1)
{
  sub_188B34264();
  sub_188B34820();
  sub_188EBCAEC();
  sub_188B339FC();
  sub_188B33F24();
  sub_188B337B0();
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v4)
    {
      [v4 _contentDidChange];
    }
  }

  sub_188AEAB44();
  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout) = 1;
  }
}

void sub_188EBDDA0(id a1)
{
  v2 = v1;
  sub_188EBDFCC(&OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingItemGroups);
  v4 = v3;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v14 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingItemGroups;
    swift_beginAccess();
    *(v2 + v14) = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  if (!v3 || (sub_188A34624(0, &qword_1ED48E8C0), a1 = a1, v5 = sub_18A4A7C88(), a1, v4, (v5 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18A64B710;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18A64B710;
    *(v7 + 32) = a1;
    v8 = objc_allocWithZone(UIBarButtonItemGroup);
    sub_188A34624(0, &qword_1ED48E8C0);
    v9 = a1;
    v10 = sub_18A4A7518();

    v11 = [v8 initWithBarButtonItems:v10 representativeItem:0];

    *(v6 + 32) = v11;
    v12 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticTrailingItemGroups;
    swift_beginAccess();
    v13 = *(v2 + v12);

    sub_188BB4630(v6, v13, 0);

LABEL_10:

    return;
  }
}

void sub_188EBDFCC(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    if (sub_18A4A7F68() != 1)
    {
      return;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return;
  }

  swift_beginAccess();
  v4 = *(v1 + v2);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_188E49AA8(0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;
  swift_endAccess();
  v7 = [v6 _items];

  v8 = [v7 count];
  if (v8 == 1)
  {
    swift_beginAccess();
    v4 = *(v1 + v2);
    if ((v4 & 0xC000000000000001) == 0)
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v9 = *(v4 + 32);
LABEL_10:
      v10 = v9;
      swift_endAccess();
      v11 = [v10 barButtonItems];

      sub_188A34624(0, &qword_1ED48E8C0);
      v12 = sub_18A4A7548();

      if ((v12 & 0xC000000000000001) != 0)
      {
        sub_188E49ABC(0, v12);
        goto LABEL_13;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v12 + 32);
LABEL_13:

        return;
      }

      goto LABEL_21;
    }

LABEL_18:
    v9 = sub_188E49AA8(0, v4);
    goto LABEL_10;
  }
}

void sub_188EBE1B8(id a1)
{
  v2 = v1;
  sub_188EBDFCC(&OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticTrailingItemGroups);
  v4 = v3;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v14 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticTrailingItemGroups;
    swift_beginAccess();
    *(v2 + v14) = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  if (!v3 || (sub_188A34624(0, &qword_1ED48E8C0), a1 = a1, v5 = sub_18A4A7C88(), a1, v4, (v5 & 1) == 0))
  {
    v6 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingItemGroups;
    swift_beginAccess();
    v7 = *(v2 + v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18A64B710;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18A64B710;
    *(v9 + 32) = a1;
    v10 = objc_allocWithZone(UIBarButtonItemGroup);
    sub_188A34624(0, &qword_1ED48E8C0);
    v11 = a1;

    v12 = sub_18A4A7518();

    v13 = [v10 initWithBarButtonItems:v12 representativeItem:0];

    *(v8 + 32) = v13;
    sub_188BB4630(v7, v8, 0);

LABEL_10:

    return;
  }
}

uint64_t sub_188EBE444()
{
  if ((*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleElementsHidden) & 1) == 0)
  {
    v1 = (v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext);
    if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 41) == 1)
    {
      if ((v1[43] & 1) == 0)
      {
        LOBYTE(v1) = v1[42];
        return v1 & 1;
      }
    }

    else if (!*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80))
    {
      v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 8);
      if (!v1)
      {
        return v1 & 1;
      }

      v3 = v1;
      v4 = _UINavigationBarCastToAugmentedTitleView(v3);
      if (v4)
      {
        v5 = v4;
        v6 = [v4 _navigationBarHeightShouldBeIncreasedByTabBarHeight];

        if (v6)
        {
          LOBYTE(v1) = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_useInlineLargeTitleMetrics) ^ 1;
          return v1 & 1;
        }

        goto LABEL_2;
      }
    }

    LOBYTE(v1) = 1;
    return v1 & 1;
  }

LABEL_2:
  LOBYTE(v1) = 0;
  return v1 & 1;
}

void sub_188EBE56C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationBar];
    [v4 invalidateIntrinsicContentSize];

    v5 = [v3 navigationBar];
    [v5 setNeedsLayout];

    v6 = [v3 navigationBar];
    [v6 _sendNavigationBarResize];
    swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_flags + 1) = 0;
}

void sub_188EBE658(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v2)
  {
    v3 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView;
    v4 = *(v2 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v4 && v4 == a1)
    {
      v6 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_flags;
      *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_flags) = 1;
      if (*(v2 + v3))
      {
        sub_188AEA3E4();
      }

      *(v1 + v6) = 0;
    }
  }
}

id sub_188EBE79C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_188EBE8E0()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext) != 1 || sub_188AEA5A0() <= 0.0)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration);
  if (v1 && (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration + 8) & 1) != 0 && (v2 = v1, v3 = sub_188B3461C(), v2, (v3 & 1) != 0))
  {
    return 2;
  }

  else
  {
    return sub_188EBE444() & 1;
  }
}

void sub_188EBE970()
{
  v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_debugVisualizer;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_debugVisualizer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_debugVisualizer];
    v4 = v3;
  }

  else
  {
    [v0 bounds];
    v4 = [objc_allocWithZone(type metadata accessor for NavigationBarContentView.DebugVisualizer()) initWithFrame_];
    v3 = 0;
    v2 = *&v0[v1];
  }

  *&v0[v1] = v4;
  v9 = v4;
  v10 = v3;

  v40 = v9;
  v11 = [v40 superview];
  if (v11)
  {
  }

  else
  {
    [v0 insertSubview:v40 atIndex:0];
  }

  v12 = &v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins];
  v13 = sub_188AECB54(*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins + 64], [v0 _shouldReverseLayoutDirection]);
  [v0 safeAreaInsets];
  v18 = v14;
  if (*(v12 + 8))
  {
    if ((~v13 & 5) != 0)
    {
      v19 = v13 | 5;
    }

    else
    {
      v19 = v13;
    }

    v18 = UIEdgeInsetsSubtract(v19, v14, v15, v16, v17, v14);
  }

  [v0 _shouldReverseLayoutDirection];
  _UIEdgeInsetsFromDirectionalEdgeInsets();
  v24 = UIEdgeInsetsAdd(15, v20, v21, v22, v23, v18);
  [v0 _shouldReverseLayoutDirection];
  _UIEdgeInsetsFromDirectionalEdgeInsets();
  v29.f64[0] = UIEdgeInsetsMax(10, v25, v26, v27, v28, v24);
  v30 = &v40[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_effectiveLayoutMargins];
  v32 = *&v40[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_effectiveLayoutMargins];
  v31 = *&v40[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_effectiveLayoutMargins + 16];
  *v30 = v29.f64[0];
  v30[1] = v33;
  v30[2] = 10.0;
  v30[3] = v34;
  v29.f64[1] = v33;
  __asm { FMOV            V1.2D, #10.0 }

  _Q1.f64[1] = v34;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v32, v29), vceqq_f64(v31, _Q1)))) & 1) == 0)
  {
    [v40 setNeedsLayout];
  }

  [v0 bounds];
  [v40 setFrame_];
}

void sub_188EBEC48()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
  *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton] = 0;
  if (v1)
  {
    [v0 setNeedsLayout];
  }

  v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
  *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl] = 0;

  v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView];
  *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView] = 0;

  v4 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView];
  *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView] = 0;

  v5 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost;
  v6 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v7)
    {
      if ([v7 _displayLayer] != 1)
      {
        v8 = *&v0[v5];
        *&v0[v5] = 0;
      }
    }
  }
}

id sub_188EBED24(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleNavigationBarTraits);
  *(v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleNavigationBarTraits) = a1;

  v5 = *(v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v5)
  {
    v6 = a1;
    v7 = *(v5 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v7)
    {
      v8 = a1;

      return [v7 _navigationBarTraitCollectionDidChangeTo_from_];
    }
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

void sub_188EBEDE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_assistant);
  v2 = sub_18A4A7258();
  [v1 setAssistedView:0 identifier:v2];

  swift_arrayDestroy();
  v3 = sub_18A4A7258();
  [v1 setAssistedView:0 identifier:v3];

  v4 = sub_188EBC854();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectWeakAssign();
  }

  v6 = sub_188AEAD00();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectWeakAssign();
  }

  v8 = sub_188AEB244();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectWeakAssign();
  }

  v10 = sub_188AEAF10();
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectWeakAssign();
  }
}

void sub_188EBEF68()
{
  swift_unknownObjectWeakAssign();
  if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost))
  {
    v7 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = v7;

      v4 = v3[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled];
      v3[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled] = 1;
      if ((v4 & 1) == 0)
      {
        *(&v9 + 1) = &type metadata for _GlassGroup;
        v10 = &protocol witness table for _GlassGroup;
        LOWORD(v8) = 256;
        *(&v8 + 1) = 0;
        LOWORD(v9) = 1;
LABEL_7:
        UIView._background.setter(&v8);

        return;
      }
    }

    else
    {
      v5 = *(v7 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled);
      *(v7 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled) = 0;
      v6 = v7;
      if (v5)
      {
        v10 = 0;
        v8 = 0u;
        v9 = 0u;
        goto LABEL_7;
      }
    }
  }
}

void sub_188EBF07C()
{
  swift_unknownObjectWeakAssign();
  if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost))
  {
    v7 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = v7;

      v4 = v3[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled];
      v3[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled] = 1;
      if ((v4 & 1) == 0)
      {
        *(&v9 + 1) = &type metadata for _GlassGroup;
        v10 = &protocol witness table for _GlassGroup;
        LOWORD(v8) = 256;
        *(&v8 + 1) = 0;
        LOWORD(v9) = 1;
LABEL_7:
        UIView._background.setter(&v8);

        return;
      }
    }

    else
    {
      v5 = *(v7 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled);
      *(v7 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled) = 0;
      v6 = v7;
      if (v5)
      {
        v10 = 0;
        v8 = 0u;
        v9 = 0u;
        goto LABEL_7;
      }
    }
  }
}

void sub_188EBF2CC(id a1)
{
  if (a1)
  {
    [a1 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA931080);
    v3 = swift_dynamicCast();
    v4 = v11;
    if (!v3)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__prominentItemAppearance;
  v6 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__prominentItemAppearance);
  *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__prominentItemAppearance) = v4;

  v7 = sub_188AEAF10();
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + v5);
    v10 = v9;
    sub_18907969C(v9);
  }
}

BOOL sub_188EBF450(uint64_t a1, uint64_t a2, uint64_t a3, char a4, SEL *a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v13 = *(v5 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
  v14 = v13;
  [v14 *a5];

  return v13 == 0;
}

BOOL sub_188EBF570(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v9 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
  v10 = v9;
  [v10 removeAllSymbolEffectsWithOptions:a2 animated:a3 & 1];

  return v9 == 0;
}

uint64_t sub_188EBF7C8()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_18A4A7288();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_18A4A82D8();
    sub_18A4A82D8();
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000013, 0x800000018A6903B0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](0x79614C6D6F726620, 0xEC0000003D74756FLL);
    MEMORY[0x18CFE22D0](0, 0xE000000000000000);

    MEMORY[0x18CFE22D0](0x756F79614C6F7420, 0xEA00000000003D74);
    MEMORY[0x18CFE22D0](0, 0xE000000000000000);

    MEMORY[0x18CFE22D0](0, 0xE000000000000000);
  }

  else
  {
    MEMORY[0x18CFE22D0](0x746E65746E6F6320, 0xED00003D77656956);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](0, 0xE000000000000000);
  }

  return v9;
}

void sub_188EBFA3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }
}

double sub_188EBFA98()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
  if (v1)
  {

    [v1 inlineTitleBaselineOffset];
  }

  else
  {
    v3 = [v0 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    v5 = 21.0;
    if (v4 == 5)
    {
      v5 = 16.0;
    }

    v6 = 28.0;
    if (v4 == 5)
    {
      v6 = 22.0;
    }

    if (*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize] != 1)
    {
      v5 = v6;
    }

    return *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titlePositionAdjustment + 8] + v5;
  }

  return result;
}

uint64_t sub_188EBFB68()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration);
  if (!v2)
  {
    return -1;
  }

  v3 = v2;
  v4 = [(_UIBarButtonItemSearchBarGroup *)v3 searchBar];
  if (!v4)
  {

    return -1;
  }

  [(_UIBarButtonItemSearchBarGroup *)v3 setProvidesRestingMeasurementValues:?];
  sub_188B4ECFC(0);
  [(_UIBarButtonItemSearchBarGroup *)v3 setProvidesRestingMeasurementValues:?];
  if (*v1 && (*(v1 + 8) & 1) != 0)
  {
    v5 = *v1;
    v6 = sub_188B3461C();

    if (v6)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = v10;
LABEL_9:
  if (v7)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_188EBFC40()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_188A84438();

  if (v3 && (, v4 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_scrollPocketInteraction, !*&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_scrollPocketInteraction]))
  {
    v9 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
    v10 = *&v1[v4];
    *&v1[v4] = v9;
    v11 = v9;

    [v1 addInteraction_];
  }

  else
  {
    v5 = [v1 traitCollection];
    v6 = sub_188A84438();

    if (v6)
    {
    }

    else
    {
      v7 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_scrollPocketInteraction;
      if (*&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_scrollPocketInteraction])
      {
        [v1 removeInteraction_];
        v8 = *&v1[v7];
        *&v1[v7] = 0;
      }
    }
  }

  v12 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_scrollPocketInteraction];
  if (v12)
  {
    v13 = v12;
    [v1 safeAreaInsets];
    [v13 _setInsets_];
  }
}

double sub_188EBFEB4(uint64_t a1)
{
  v3 = sub_188EBFA98();
  v4 = 0.0;
  if (v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled] == 1)
  {
    sub_188B55154();
    v5 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
    if (v5)
    {
      [v5 frame];
      v4 = v6;
    }
  }

  [v1 convertPoint:a1 toCoordinateSpace:{0.0, v3 + v4}];
  return v7;
}

void sub_188EC0234(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
    if (v2 && *(v2 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView))
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      v4 = a1;
      if (v3)
      {
        [v4 setAugmentedTitleView_];
      }
    }

    else
    {
      v5 = a1;
    }

    if (*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext) != 1 || (sub_188EBE444() & 1) != 0)
    {
      if (*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled) == 1 && (sub_188B55154(), (v6 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl)) != 0))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      [a1 setTitleView_];
    }

    v8 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
    v9 = a1;
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_18A64B710;
      *(v10 + 32) = v8;
      sub_188A34624(0, &qword_1ED48F680);
      v11 = v8;
      v12 = sub_18A4A7518();

      [a1 setViewsRepresentingBackButton_];

      v9 = a1;
    }
  }
}

id sub_188EC0404(double a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent];
  if (!v5)
  {
LABEL_9:
    if ((v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonHidden] & 1) == 0 && (v12 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton]) != 0 && (v13 = v12, [v2 convertPoint:v13 toCoordinateSpace:{a1, a2}], v14 = objc_msgSend(v13, sel_pointInside_withEvent_, 0), v13, v14))
    {
      v15 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem];
      if (v15)
      {
        v10 = v15;
        v16 = 1;
LABEL_16:
        v11 = [objc_opt_self() HUDItemForBarButtonItem:v10 atPoint:v2 inView:v16 isBackButton:{a1, a2}];
        goto LABEL_17;
      }
    }

    else
    {
      v17 = sub_188EC0688(a1, a2);
      if (v17)
      {
        v10 = v17;
        v16 = [v17 _showsChevron];
        goto LABEL_16;
      }
    }

    return 0;
  }

  v6 = [v5 string];
  sub_18A4A7288();

  if (sub_18A4A7358() < 1 || *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineTitleViewAlpha] <= 0.0 || v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled] != 1 || (sub_188B55154(), (v7 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl]) == 0))
  {

    goto LABEL_9;
  }

  v8 = v7;
  [v2 convertPoint:v8 toCoordinateSpace:{a1, a2}];
  if (([v8 pointInside:0 withEvent:?] & 1) == 0)
  {

    goto LABEL_9;
  }

  v9 = objc_allocWithZone(UIAccessibilityHUDItem);
  v10 = sub_18A4A7258();

  v11 = [v9 initWithTitle:v10 image:0 imageInsets:{0.0, 0.0, 0.0, 0.0}];

LABEL_17:
  return v11;
}

void *sub_188EC0688(double a1, double a2)
{
  v3 = v2;
  v6 = sub_188EBC854();
  if (!v6 || (v7 = v6, v19 = 0, MEMORY[0x1EEE9AC00](v6), v15 = v3, v16 = a1, v17 = a2, v18 = &v19, sub_188B487E8(sub_188EC2BF0, v14), v7, (result = v19) == 0))
  {
    v9 = sub_188AEAD00();
    if (!v9 || (v10 = v9, v19 = 0, MEMORY[0x1EEE9AC00](v9), v15 = v3, v16 = a1, v17 = a2, v18 = &v19, sub_188B487E8(sub_188EC2BF0, v14), v10, (result = v19) == 0))
    {
      v11 = sub_188AEB244();
      if (!v11 || (v12 = v11, v19 = 0, MEMORY[0x1EEE9AC00](v11), v15 = v3, v16 = a1, v17 = a2, v18 = &v19, sub_188B487E8(sub_188EC2BF0, v14), v12, (result = v19) == 0))
      {
        result = sub_188AEAF10();
        if (result)
        {
          v13 = result;
          v19 = 0;
          MEMORY[0x1EEE9AC00](result);
          v15 = v3;
          v16 = a1;
          v17 = a2;
          v18 = &v19;
          sub_188B487E8(sub_188EC2444, v14);

          return v19;
        }
      }
    }
  }

  return result;
}

void *sub_188EC0880(double a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
  if (v3 && (v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonHidden] & 1) == 0)
  {
    v4 = a1;
    v5 = a2;
    v6 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
    v7 = v3;
    if ([v7 _accessibilityShouldActivateOnHUDLift])
    {
      [v2 convertPoint:v7 toCoordinateSpace:{v4, v5}];
      v8 = [v7 pointInside:0 withEvent:?];

      result = v6;
      if (v8)
      {
        return result;
      }
    }

    else
    {
    }

    a2 = v5;
    a1 = v4;
  }

  result = sub_188EC0688(a1, a2);
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = [result view];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 _accessibilityShouldActivateOnHUDLift];

      if (v15)
      {
        return v14;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

BOOL sub_188EC09C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_188EC1AD0(v7, v9);
}

uint64_t sub_188EC0A20(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return sub_188EC1A1C(&v5, &v7) & 1;
}

uint64_t sub_188EC0A6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  sub_188A34624(0, &qword_1ED490230);
  return sub_18A4A7C88() & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

id sub_188EC0B60(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_effectiveLayoutMargins] = UIEdgeInsetsZero;
  v9 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_safeAreaVisualizer;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_effectiveLayoutMarginsVisualizer;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_leftCornerInsetsVisualizer;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_rightCornerInsetsVisualizer;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for NavigationBarContentView.DebugVisualizer();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setUserInteractionEnabled_];
  return v13;
}

id sub_188EC0CD0()
{
  v47.receiver = v0;
  v47.super_class = type metadata accessor for NavigationBarContentView.DebugVisualizer();
  objc_msgSendSuper2(&v47, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_safeAreaVisualizer];
  v2 = [v1 superview];
  v3 = &OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth;
  if (!v2)
  {
    [v0 addSubview_];
    v4 = *&v0[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_effectiveLayoutMarginsVisualizer];
    [v0 addSubview_];
    v5 = *&v0[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_leftCornerInsetsVisualizer];
    [v0 addSubview_];
    v6 = [v1 layer];
    v7 = objc_opt_self();
    v8 = [v7 redColor];
    v9 = [v8 CGColor];

    [v6 setBorderColor_];
    v10 = [v1 layer];
    [v10 setBorderWidth_];

    [v1 setUserInteractionEnabled_];
    v11 = [v4 layer];
    v12 = [v7 greenColor];
    v13 = [v12 CGColor];

    [v11 setBorderColor_];
    v14 = [v4 layer];
    [v14 setBorderWidth_];

    [v4 setUserInteractionEnabled_];
    v15 = [v7 systemOrangeColor];
    v16 = [v15 colorWithAlphaComponent_];

    [v5 setBackgroundColor_];
    [v5 setUserInteractionEnabled_];
    v17 = *&v0[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_rightCornerInsetsVisualizer];
    v18 = [v7 systemOrangeColor];
    v19 = [v18 colorWithAlphaComponent_];

    [v17 setBackgroundColor_];
    [v17 setUserInteractionEnabled_];
    v20 = [v0 layer];
    v21 = [v7 systemTealColor];
    v22 = [v21 CGColor];

    [v20 setBorderColor_];
    v3 = &OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth;
    v23 = [v0 layer];
    [v23 setBorderWidth_];
    v2 = v23;
  }

  [v0 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v0 safeAreaInsets];
  [v1 setFrame_];
  v36 = *&v0[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_effectiveLayoutMarginsVisualizer];
  [v0 bounds];
  [v36 setFrame_];
  [v0 _safeAreaCornerInsets];
  [*&v0[OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_leftCornerInsetsVisualizer] setFrame_];
  v41 = *&v0[v3[86]];
  [v0 bounds];
  return [v41 setFrame_];
}

id sub_188EC12F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarContentView.DebugVisualizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188EC13BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188EC13DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_188EC144C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[45])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188EC14A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_188EC1518(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_188EC1560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_188EC15C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_188EC160C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_188EC1674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 461))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188EC16BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 460) = 0;
    *(result + 456) = 0;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 461) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 461) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_188EC17AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188EC17F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188EC18A0(void *a1, void *a2, char a3, void *a4, void *a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      sub_188A34624(0, &qword_1ED490230);
      sub_188CCA578(a1, a2, 1);
      sub_188CCA578(a4, a5, 1);
      v10 = sub_18A4A7C88();
      sub_188CC51D8(a4, a5, 1);
      sub_188CC51D8(a1, a2, 1);
      return v10 & 1;
    }

    sub_188CCA578(a1, a2, 1);
    sub_188CCA578(a4, a5, 0);

    sub_188CC51D8(a1, a2, 1);
  }

  else if ((a6 & 1) == 0)
  {
    sub_188A34624(0, &qword_1ED490230);
    sub_188CCA578(a1, a2, 0);
    sub_188CCA578(a4, a5, 0);
    if (sub_18A4A7C88())
    {
      v10 = sub_18A4A7C88();

      return v10 & 1;
    }
  }

  return 0;
}

uint64_t sub_188EC1A1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  if (!CGRectEqualToRect(*(a1 + 8), *(a2 + 8)) || ((a1[40] ^ a2[40]) & 1) != 0 || ((a1[41] ^ a2[41]) & 1) != 0 || ((a1[42] ^ a2[42]) & 1) != 0 || ((a1[43] ^ a2[43]) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[44] ^ a2[44] ^ 1;
  }

  return v5 & 1;
}

BOOL sub_188EC1AD0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (*(a1 + 8) == *(a2 + 8) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 ? (v3 = *(a1 + 24) == *(a2 + 24)) : (v3 = 0), v3 && *(a1 + 32) == *(a2 + 32) && (*(a1 + 40) == *(a2 + 40) ? (v4 = *(a1 + 48) == *(a2 + 48)) : (v4 = 0), v4 ? (v5 = *(a1 + 56) == *(a2 + 56)) : (v5 = 0), v5)))
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  else
  {
    return 0;
  }
}

void sub_188EC1B4C()
{
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize) = 2;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarSections) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingItemsSupplementBackItem) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarSections) = 0;
  v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult;
  sub_188AED2B0(__src);
  memcpy((v0 + v1), __src, 0x20AuLL);
  v2 = (v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedExtension) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedHeight) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarSections) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_pinnedTrailingGroup) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleControl) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView) = 0;
  v3 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleContent;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = -1;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renderInlineLargeTitle) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleNavigationBarTraits) = 0;
  v4 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration;
  *v4 = 0;
  *(v4 + 8) = 0;
  v5 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleAttributes;
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + v5) = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titlePositionAdjustment) = UIOffsetZero;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overrideSize) = 0;
  v7 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarFrame;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarFrame;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  v9 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarFrame;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isDeferringSearchSuggestionsMenuRefreshForGeometryChange) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isTitleHidden) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renameHandler) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backAction) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalItems) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_useInlineLargeTitleMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_flags) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldPassThroughTouches) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_requestedContentSize) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__staticLeadingBar) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__leadingBar) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__centerBar) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__trailingBar) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__overflowItem) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalOverflowItems) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingItemGroups) = v6;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticTrailingItemGroups) = v6;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonHidden) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleElementsHidden) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineTitleViewAlpha) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView) = 0;
  v10 = (v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins);
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = 0;
  v10[5] = 0;
  v10[6] = 0;
  v10[7] = 0;
  v10[8] = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isPerformingLayout) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_debugVisualizer) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backIndicatorImage) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__plainItemAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__prominentItemAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_floatingTabBarPadding) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeight) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange) = UIFloatRangeZero;
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_scrollPocketInteraction) = 0;
  sub_18A4A8398();
  __break(1u);
}

void sub_188EC201C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backAction);
  if (v1)
  {

    [v1 performWithSender:0 target:0];
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem);
      if (v3)
      {
        v4 = Strong;
        v5 = v3;
        v6 = [v4 navigationBar];
        [v6 _sendNavigationPopForBackBarButtonItem_];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_188EC213C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_188EC2210(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, void *a6)
{
  if (a4 != 1)
  {
    sub_188EC226C(a1, a2, a3);
  }
}

uint64_t sub_188EC226C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

id sub_188EC2284(id result, uint64_t a2, char a3, void *a4, void *a5, void *a6)
{
  if (a4 != 1)
  {
    sub_188EC22E0(result, a2, a3);
    v9 = a6;
    v10 = a4;

    return a5;
  }

  return result;
}

uint64_t sub_188EC22E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_188EC22F8()
{
  result = qword_1EA92F318[0];
  if (!qword_1EA92F318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA92F318);
  }

  return result;
}

uint64_t sub_188EC2354(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_188EC23C0()
{
  if (!*(*(v0 + 16) + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession))
  {
    return sub_188EBBF0C();
  }

  return result;
}

uint64_t objectdestroy_121Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_188EC246C()
{
  sub_188B34264();
  sub_188B34820();
  sub_188EBCAEC();
  sub_188B339FC();
  sub_188B33F24();
  sub_188B337B0();
  v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v3)
    {
      [v3 _contentDidChange];
    }
  }

  sub_188AEAB44();
  v4 = *(v0 + v1);
  if (v4 && *(v4 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView))
  {

    sub_188AEA3E4();
  }
}

id sub_188EC2510()
{
  result = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
  if (result)
  {
    v2 = [result visualProvider];
    v3 = [v2 buttonContextMenuInteractionConfiguration];

    if (v3)
    {
      v4 = [v3 actionProvider];
      if (v4)
      {
        v5 = v4;
        sub_188A34624(0, &qword_1ED48FC30);
        v6 = sub_18A4A7518();
        v7 = (v5)[2](v5, v6);

        _Block_release(v5);
        return v7;
      }
    }

    return 0;
  }

  return result;
}

id sub_188EC2608()
{
  v8 = MEMORY[0x1E69E7CC0];
  if (sub_188EBCD74())
  {
    if (dyld_program_sdk_at_least())
    {
      v0 = [objc_opt_self() _defaultCommandForAction_];
      if (v0)
      {
        v1 = v0;
        MEMORY[0x18CFE2450]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
      }
    }
  }

  v2 = objc_allocWithZone(UIMenu);
  v3 = sub_18A4A7258();
  sub_188A34624(0, &qword_1ED48FC30);
  v4 = sub_18A4A7518();

  v5 = [v2 initWithTitle:v3 image:0 imageName:0 identifier:0 options:0 children:v4];

  v6 = v5;
  [v6 setSubtitle_];
  [v6 setPreferredElementSize_];

  return v6;
}

void sub_188EC279C()
{
  *(v0 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_effectiveLayoutMargins) = UIEdgeInsetsZero;
  v1 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_safeAreaVisualizer;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_effectiveLayoutMarginsVisualizer;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_leftCornerInsetsVisualizer;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtCC5UIKit24NavigationBarContentViewP33_345D3E4B07A261C8C2F7AC9E3003F3BA15DebugVisualizer_rightCornerInsetsVisualizer;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_188EC28B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_188EC2910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_188EC2980(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_188EC29DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy54_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_188EC2A6C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[54])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188EC2AC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 54) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 54) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_188EC2B2C()
{
  result = qword_1EA92F308;
  if (!qword_1EA92F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F308);
  }

  return result;
}

unint64_t sub_188EC2B94()
{
  result = qword_1EA936350;
  if (!qword_1EA936350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936350);
  }

  return result;
}

uint64_t UIControl.enumerateEventHandlers(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188EC2E34;
  *(v7 + 24) = v6;
  v10[4] = sub_188EC2E3C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188EC2E64;
  v10[3] = &block_descriptor_18;
  v8 = _Block_copy(v10);

  [v3 enumerateEventHandlers_];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188EC2D6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, void (*a6)(uint64_t, void *, uint64_t, char *))
{
  v12 = 0;
  if (result)
  {
    memset(v10, 0, sizeof(v10));
    v11 = xmmword_18A6507C0;
    a6(result, v10, a4, &v12);
LABEL_5:
    result = sub_188A3F5FC(v10, &qword_1EA936360);
    goto LABEL_6;
  }

  if (a3)
  {
    sub_188C85D28(a2, v10);
    *(&v11 + 1) = a3;
    a6(0, v10, a4, &v12);
    goto LABEL_5;
  }

LABEL_6:
  *a5 = v12;
  return result;
}

uint64_t sub_188EC2E64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v14 = a3;
    sub_188A55538(&v14, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v12 = a2;
  swift_unknownObjectRetain();
  v11(a2, v16, a4, a5, a6);

  return sub_188A3F5FC(v16, &qword_1EA934050);
}

__n128 sub_188EC2F38@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_188A55598(a1, v12);
  sub_188A55598(v12, v11);
  sub_188A34624(0, &qword_1ED48EC30);
  swift_dynamicCast();
  [v10 CAColorMatrixValue];

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  result = v9;
  a2[4] = v9;
  return result;
}

double sub_188EC3020@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_188A55598(a1, v9);
  sub_188A55598(v9, v8);
  sub_188A34624(0, &qword_1ED48EC30);
  swift_dynamicCast();
  [v7 CACornerRadiiValue];

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  v4 = v11;
  *a2 = v10;
  a2[1] = v4;
  result = *&v12;
  v6 = v13;
  a2[2] = v12;
  a2[3] = v6;
  return result;
}

id sub_188EC311C@<X0>(void *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = v1[1];
  v8[0] = *v1;
  v8[1] = v4;
  v5 = v1[3];
  v8[2] = v1[2];
  v8[3] = v5;
  v8[4] = v1[4];
  result = [v3 valueWithCAColorMatrix_];
  if (result)
  {
    v7 = result;
    result = sub_188A34624(0, &qword_1ED48EC30);
    a1[3] = result;
    *a1 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188EC31A8@<X0>(uint64_t a1@<X0>, SEL *a2@<X4>, void *a3@<X8>)
{
  sub_188A55598(a1, v13);
  sub_188A55598(v13, v12);
  sub_188A34624(0, &qword_1ED48EC30);
  swift_dynamicCast();
  [v11 *a2];
  v7 = v6;
  v9 = v8;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v13);
  *a3 = v7;
  a3[1] = v9;
  return result;
}

uint64_t sub_188EC3264@<X0>(SEL *a1@<X3>, void *a2@<X8>)
{
  v4 = [objc_opt_self() *a1];
  result = sub_188A34624(0, &qword_1ED48EC30);
  a2[3] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_188EC32E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_188A55598(a1, v11);
  sub_188A55598(v11, v10);
  sub_188A34624(0, &qword_1EA92E860);
  swift_dynamicCast();
  sub_1890908B0(v9, &v12);
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v11);
  *a2 = v12;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 36) = v7 != 0;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_188EC33C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_188A55598(a1, v6);
  v4 = sub_188CCF580(v6);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_188EC3424@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_188A55598(a1, v15);
  sub_188A55598(v15, v14);
  sub_188A34624(0, &qword_1ED48EC30);
  swift_dynamicCast();
  [v13 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v15);
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  return result;
}

uint64_t sub_188EC34F4@<X0>(void *a1@<X8>)
{
  v3 = [objc_opt_self() valueWithCGRect_];
  result = sub_188A34624(0, &qword_1ED48EC30);
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_188EC3588@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 112);
  v9[14] = *(v1 + 96);
  v9[15] = v3;
  v10 = *(v1 + 128);
  v4 = *(v1 + 48);
  v9[10] = *(v1 + 32);
  v9[11] = v4;
  v5 = *(v1 + 80);
  v9[12] = *(v1 + 64);
  v9[13] = v5;
  v6 = *(v1 + 16);
  v9[8] = *v1;
  v9[9] = v6;
  sub_188AA9844(v9);
  v7 = [objc_opt_self() valueWithCATransform3D_];
  result = sub_188A34624(0, &qword_1ED48EC30);
  a1[3] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_188EC3630@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  result = sub_188A34624(0, &qword_1ED48FD80);
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_188EC36A4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  sub_188A55598(a1, v12);
  v4 = sub_188C52118(v12);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v4;
  *(a2 + 1) = v6;
  *(a2 + 2) = v8;
  *(a2 + 3) = v10;
  return result;
}

id sub_188EC38A8(uint64_t a1, uint64_t a2)
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  v4 = sub_18A4A7798();
  v13.receiver = v2;
  v13.super_class = _UI3DPanGestureRecognizer;
  objc_msgSendSuper2(&v13, sel_touchesBegan_withEvent_, v4, a2);

  result = [v2 state];
  if (!result)
  {
    result = [v2 isVisionIdiom];
    if (result)
    {
      v6 = sub_18A4A7798();
      [v2 centroid3DOfTouches:v6 excludingEnded:1];
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setInitial3DLocationInScene_];
      [v2 initial3DLocationInScene];
      return [v2 setCurrent3DLocationInScene_];
    }
  }

  return result;
}

id sub_188EC3A0C(uint64_t a1, uint64_t a2)
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  v4 = sub_18A4A7798();
  v9.receiver = v2;
  v9.super_class = _UI3DPanGestureRecognizer;
  objc_msgSendSuper2(&v9, sel_touchesMoved_withEvent_, v4, a2);

  result = [v2 _movingTouches];
  if (result)
  {
    v6 = result;
    v7 = sub_18A4A7548();

    if ([v2 isVisionIdiom])
    {
      if (v7 >> 62)
      {
        v8 = sub_18A4A7F68();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = [v2 minimumNumberOfTouches];
      if (v8 < result)
      {
        result = [v2 willPanZ];
        if (result)
        {
          return [v2 setState_];
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_188EC3B74(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  v8 = sub_18A4A77A8();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

void sub_188EC3E60(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  sub_18A4A77A8();
  v8 = a4;
  v9 = a1;
  v10 = [v9 _movingTouches];
  v11 = sub_18A4A7798();

  v12.receiver = v9;
  v12.super_class = _UI3DPanGestureRecognizer;
  objc_msgSendSuper2(&v12, *a5, v11, v8);

  [v9 handleTouchesEndedWithOldMovingTouches_];
}

void sub_188EC3F6C(unint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v3 = [v1 _movingTouches];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  sub_188A34624(0, &qword_1EA9342F0);
  v5 = sub_18A4A7548();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!sub_18A4A7F68())
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = sub_189015900(a1, v5);

  if ((v6 & 1) == 0)
  {
    sub_188F986DC(a1);

    sub_188E405E8();
    v7 = sub_18A4A7798();

    [v1 update3DTouchesCentroid_];

    return;
  }

LABEL_12:
}

id sub_188EC4208()
{
  result = [v0 _movingTouches];
  if (result)
  {
    v2 = result;
    sub_188A34624(0, &qword_1EA9342F0);
    v3 = sub_18A4A7548();

    sub_188E405E8();
    v4 = sub_18A4A7798();
    [v0 centroid3DOfTouches:v4 excludingEnded:0];
    v6 = v5;

    sub_188F986DC(v3);

    v7 = sub_18A4A7798();

    [v0 centroid3DOfTouches:v7 excludingEnded:1];
    v9 = v8;

    v10 = v9 - v6;
    [v0 initial3DLocationInScene];
    [v0 setInitial3DLocationInScene_];
    [v0 initial3DLocationInScene];
    [v0 setInitial3DLocationInScene_];
    [v0 initial3DLocationInScene];
    [v0 setInitial3DLocationInScene_];
    [v0 current3DLocationInScene];
    [v0 setCurrent3DLocationInScene_];
    [v0 current3DLocationInScene];
    [v0 setCurrent3DLocationInScene_];
    [v0 current3DLocationInScene];

    return [v0 setCurrent3DLocationInScene_];
  }

  return result;
}

id _UI3DPanGestureRecognizer.init(target:action:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

id _UI3DPanGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____UI3DPanGestureRecognizer_canPanInZ] = 1;
  v5 = &v2[OBJC_IVAR____UI3DPanGestureRecognizer_initial3DLocationInScene];
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = &v2[OBJC_IVAR____UI3DPanGestureRecognizer_current3DLocationInScene];
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  sub_188C85D28(a1, v17);
  v7 = v18;
  if (v18)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v17, v18);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_18A4A86A8();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v2;
  v16.super_class = _UI3DPanGestureRecognizer;
  v14 = objc_msgSendSuper2(&v16, sel_initWithTarget_action_, v13, a2);
  swift_unknownObjectRelease();
  sub_188A553EC(a1);
  return v14;
}

id sub_188EC48C4(uint64_t a1)
{
  result = [v1 _movingTouches];
  if (result)
  {
    v4 = result;
    sub_188A34624(0, &qword_1EA9342F0);
    v5 = sub_18A4A7548();

    v6 = sub_188F986DC(v5);

    sub_1891E59A4(a1, v6);
    if ((v7 & 1) == 0)
    {
      sub_188E405E8();
      v8 = sub_18A4A7798();
      [v1 update3DTouchesCentroid_];
    }

    sub_188E405E8();
    v9 = sub_18A4A7798();

    [v1 centroid3DOfTouches:v9 excludingEnded:1];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    return [v1 setCurrent3DLocationInScene_];
  }

  return result;
}

id sub_188EC4A7C()
{
  v1 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_188EC4B00()
{
  v1 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___textEffectsView;
  v2 = *&v0[OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___textEffectsView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___textEffectsView];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for UITextEffectView());
    v5 = sub_189042C24(v0, v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_188EC4B78(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___textEffectsView] = 0;
  v3 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_completionBlocks;
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[v3] = sub_188E8E300(MEMORY[0x1E69E7CC0]);
  v5 = &v1[OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_activeReplacementEffect];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_activePlaceholders;
  *&v1[v6] = sub_188E8E328(v4);
  swift_unknownObjectWeakAssign();
  v12.receiver = v1;
  v12.super_class = _UITextViewAnimatedPlaceholderSupport;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = sub_188EC4A7C();
  [a1 addSubview_];

  v9 = *&v7[OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___containerView];
  v10 = sub_188EC4B00();
  [v9 addSubview_];

  return v7;
}

void sub_188EC4CD8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [v3 textView];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 selectedTextRange];
  if (!v9)
  {
    v11 = [v8 endOfDocument];
    v12 = [v8 endOfDocument];
    v10 = [v8 textRangeFromPosition:v11 toPosition:v12];

    if (v10)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_9:
    sub_18A4A8398();
    __break(1u);
    return;
  }

  v10 = v9;
LABEL_5:
  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_107_0;
    a2 = _Block_copy(aBlock);
  }

  [v3 replaceRangeUsingReplacementEffect:v10 withAttributedText:a1 completion:a2];
  _Block_release(a2);
}

uint64_t sub_188EC4F6C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 textView];
  if (v9)
  {
    v10 = v9;
    v11 = &selRef_imageGlyphCompositionalLayout;
    v12 = [objc_allocWithZone(_UITextViewAnimatedPlaceholderIdentifier) init];
    if ([a1 isEmpty])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
      inited = swift_initStackObject();
      v14 = inited;
      *(inited + 16) = xmmword_18A64BFB0;
      if (qword_1EA92E7F8 != -1)
      {
        inited = swift_once();
      }

      v15 = qword_1EA92E800;
      v14[4] = qword_1EA92E800;
      v14[8] = type metadata accessor for _UITextViewAnimatedPlaceholderIdentifier(inited);
      v14[5] = v12;
      v16 = v15;
      v17 = v12;
      sub_188AEC99C(v14);
      swift_setDeallocating();
      sub_188A3F5FC((v14 + 4), &qword_1EA93C6D0);
      v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v19 = sub_18A4A7258();
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      v20 = sub_18A4A7088();

      v21 = [v18 initWithString:v19 attributes:v20];

      [v10 insertAttributedText_];
      v11 = &selRef_imageGlyphCompositionalLayout;
    }

    else
    {
      v22 = [v10 _nsrangeForTextRange_];
      v24 = v23;
      v25 = [v10 textStorage];
      if (qword_1EA92E7F8 != -1)
      {
        swift_once();
      }

      [v25 addAttribute:qword_1EA92E800 value:v12 range:{v22, v24}];
    }

    sub_188EC53A8(a3, a4, v12);
    v26 = _s16PlaceholderChunkCMa();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_identifier] = v12;
    v28 = &v27[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type];
    *v28 = a2;
    v28[8] = 0;
    v46.receiver = v27;
    v46.super_class = v26;
    v29 = v11[369];
    v30 = v12;
    v31 = a2;
    v32 = objc_msgSendSuper2(&v46, v29);
    v33 = sub_188EC4B00();
    v34 = [objc_opt_self() clearColor];
    v35 = type metadata accessor for UITextEffectView.ReplacementTextEffect();
    v36 = swift_allocObject();
    v37 = v4;
    v38 = sub_1890417B8(v32, v33, v37, v34, v36);

    v39 = *&v37[OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___textEffectsView];
    v44[3] = v35;
    v44[4] = &protocol witness table for UITextEffectView.ReplacementTextEffect;
    v44[0] = v38;
    v45[3] = type metadata accessor for UITextEffectView.EffectID();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
    v41 = v39;

    sub_189001650(v44, boxed_opaque_existential_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    v42 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_activeReplacementEffect;
    swift_beginAccess();
    sub_188ECA910(v45, &v37[v42]);
    return swift_endAccess();
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_188EC53A8(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = v3;
    v7 = result;
    v8 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_completionBlocks;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = *(v9 + 16);

    if (v10 && (v11 = sub_188E8B958(a3), (v12 & 1) != 0))
    {
      v13 = *(*(v9 + 56) + 8 * v11);
      swift_endAccess();
      v14 = swift_allocObject();
      *(v14 + 16) = v7;
      *(v14 + 24) = a2;
      sub_188D738F4(v7);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_188A32A24(0, v13[2] + 1, 1, v13);
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_188A32A24((v15 > 1), v16 + 1, 1, v13);
      }

      sub_188A55B8C(v7);
      v13[2] = v16 + 1;
      v17 = &v13[2 * v16];
      v17[4] = sub_188E3FE50;
      v17[5] = v14;
    }

    else
    {
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934460);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_18A64BFB0;
      v19 = swift_allocObject();
      *(v19 + 16) = v7;
      *(v19 + 24) = a2;
      *(v18 + 32) = sub_188A4B574;
      *(v18 + 40) = v19;
      swift_beginAccess();
      sub_188D738F4(v7);
      v20 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v4 + v8);
      *(v4 + v8) = 0x8000000000000000;
      sub_188E9ECEC(v18, v20, isUniquelyReferenced_nonNull_native);

      *(v4 + v8) = v22;
      swift_endAccess();
      return sub_188A55B8C(v7);
    }
  }

  return result;
}

uint64_t sub_188EC56BC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UITextEffectView.EffectID();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v75 - v15;
  v17 = [v5 textView];
  if (v17)
  {
    v79 = a2;
    v80 = a3;
    v81 = v12;
    v82 = v17;
    v18 = [objc_allocWithZone(_UITextViewAnimatedPlaceholderIdentifier) init];
    if (qword_1EA92E720 != -1)
    {
      swift_once();
    }

    v19 = qword_1EA92E728;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFA0;
    v21 = qword_1EA92E7F8;

    if (v21 != -1)
    {
      v22 = swift_once();
    }

    v23 = qword_1EA92E800;
    *(inited + 32) = qword_1EA92E800;
    v24 = type metadata accessor for _UITextViewAnimatedPlaceholderIdentifier(v22);
    *(inited + 40) = v18;
    v25 = *off_1E70EC920;
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    v26 = objc_opt_self();
    v27 = v23;
    v28 = v18;
    v29 = v25;
    v78 = v26;
    v30 = [v26 clearColor];
    *(inited + 104) = sub_188A34624(0, qword_1ED4913C0);
    *(inited + 80) = v30;
    v31 = sub_188AEC99C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C6D0);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v19;
    sub_188EC9588(v31, sub_189038230, 0, isUniquelyReferenced_nonNull_native, v84);

    v33 = v82;
    v34 = [v82 textContainer];
    [v34 size];
    v36 = v35;

    sub_188EC9868(v36, a4);
    v38 = v37;
    v39 = [v33 textRangeFromPosition:a1 toPosition:a1];
    if (v39)
    {
      v40 = v39;
      v77 = v16;

      v76 = v38;

      v41 = _s16PlaceholderChunkCMa();
      v42 = objc_allocWithZone(v41);
      *&v42[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_identifier] = v28;
      v43 = &v42[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type];
      *v43 = 0;
      v43[8] = 2;
      v88.receiver = v42;
      v88.super_class = v41;
      v44 = v28;
      v45 = objc_msgSendSuper2(&v88, sel_init);
      v46 = sub_188EC4B00();
      if (qword_1EA92EB80 != -1)
      {
        swift_once();
      }

      v48 = qword_1EA92EB88;
      v47 = unk_1EA92EB90;
      v84[0] = qword_1EA92EB88;
      v84[1] = unk_1EA92EB90;
      v85 = xmmword_1EA92EB98;
      v86 = unk_1EA92EBA8;
      v87 = qword_1EA92EBB8;
      v49 = type metadata accessor for UITextEffectView.PonderingEffect();
      swift_allocObject();
      v50 = v47;

      v51 = v48;
      v52 = sub_189138BC4(v45, v46, v84);

      v53 = (v52 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_onAnimateToBaseColorCompletion);
      swift_beginAccess();
      v54 = *v53;
      v55 = v79;
      v56 = v80;
      *v53 = v79;
      v53[1] = v56;
      sub_188D738F4(v55);
      sub_188A55B8C(v54);
      v57 = [v78 clearColor];
      v58 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_animateFromColor;
      swift_beginAccess();
      v59 = *(v52 + v58);
      *(v52 + v58) = v57;

      v60 = *&v5[OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___textEffectsView];
      *&v86 = &protocol witness table for UITextEffectView.PonderingEffect;
      *(&v85 + 1) = v49;
      v84[0] = v52;
      v61 = v60;

      v62 = v77;
      sub_189001650(v84, v77);

      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      v63 = v81;
      sub_188ECA980(v62, v81);
      _s17ActivePlaceholderCMa();
      v64 = swift_allocObject();
      *(v64 + 16) = v45;
      sub_188ECA9E4(v63, v64 + OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4017ActivePlaceholder_effectID);
      v65 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_activePlaceholders;
      swift_beginAccess();
      v66 = *&v5[v65];
      if ((v66 & 0xC000000000000001) == 0)
      {
        v71 = v44;
        v72 = v45;
        goto LABEL_16;
      }

      if (v66 < 0)
      {
        v67 = *&v5[v65];
      }

      else
      {
        v67 = v66 & 0xFFFFFFFFFFFFFF8;
      }

      v68 = v44;
      v69 = v45;
      v70 = sub_18A4A7F68();
      if (!__OFADD__(v70, 1))
      {
        *&v5[v65] = sub_18907B9CC(v67, v70 + 1);
LABEL_16:
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v83 = *&v5[v65];
        sub_188E9EFD8(v64, v44, v73);
        *&v5[v65] = v83;

        swift_endAccess();

        sub_188ECAA48(v62);
        return v44;
      }

      __break(1u);
    }

    __break(1u);
  }

  sub_18A4A8398();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_188EC5E98(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_activePlaceholders;
  swift_beginAccess();
  v11 = sub_18903AB08(a1, *&v5[v10]);
  if (v11)
  {
    v12 = v11;
    swift_endAccess();
    v13 = sub_188EC4B00();
    sub_18900294C(v12 + OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4017ActivePlaceholder_effectID);

    v14 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_activeReplacementEffect;
    swift_beginAccess();
    sub_188A3F29C(&v5[v14], v36, &qword_1EA934050);
    if (v37)
    {

      return sub_188A3F5FC(v36, &qword_1EA934050);
    }

    sub_188A3F5FC(v36, &qword_1EA934050);
    sub_188EC53A8(a3, a4, a1);
    v16 = _s16PlaceholderChunkCMa();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_identifier] = a1;
    v18 = &v17[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type];
    *v18 = a2;
    v18[8] = 0;
    v40.receiver = v17;
    v40.super_class = v16;
    v19 = a2;
    v20 = a1;
    v21 = objc_msgSendSuper2(&v40, sel_init);
    v22 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___textEffectsView;
    v23 = *&v5[OBJC_IVAR____UITextViewAnimatedPlaceholderSupport____lazy_storage___textEffectsView];
    v24 = objc_opt_self();
    v25 = v21;
    v26 = v23;
    v27 = [v24 labelColor];
    v28 = [v27 colorWithAlphaComponent_];

    v29 = type metadata accessor for UITextEffectView.ReplacementTextEffect();
    v30 = swift_allocObject();
    v31 = sub_1890417B8(v25, v26, v5, v28, v30);

    if ([v19 _ui_containsTables])
    {
      v32 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled;
      swift_beginAccess();
      *(v31 + v32) = 0;
    }

    v33 = *&v5[v22];
    v37 = v29;
    v38 = &protocol witness table for UITextEffectView.ReplacementTextEffect;
    v36[0] = v31;
    v39[3] = type metadata accessor for UITextEffectView.EffectID();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
    v35 = v33;

    sub_189001650(v36, boxed_opaque_existential_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    swift_beginAccess();
    sub_188ECA910(v39, &v5[v14]);
  }

  return swift_endAccess();
}

void sub_188EC6470()
{
  sub_188ECAAA4(*(v0 + OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type), *(v0 + OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type + 8));
  v1 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_identifier);
}

id sub_188EC64B8()
{
  v2.receiver = v0;
  v2.super_class = _s16PlaceholderChunkCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188EC6544()
{
  sub_188ECAA48(v0 + OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4017ActivePlaceholder_effectID);

  return swift_deallocClassInstance();
}

unint64_t sub_188EC65B0()
{
  v1 = 0x2064696C61766E49;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_188EC6660()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1EA936390);
  __swift_project_value_buffer(v0, qword_1EA936390);
  return sub_18A4A4368();
}

id _sSo18UIScrollEdgeEffectC5UIKitEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_188EC6820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  v1 = *off_1E70EC918;
  *(inited + 32) = *off_1E70EC918;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = @"UICTFontTextStyleTitle3";
  v5 = [v2 preferredFontForTextStyle_];

  v6 = sub_188A34624(0, &qword_1ED48C4A0);
  *(inited + 40) = v5;
  v7 = *off_1E70EC920;
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 labelColor];
  v11 = [v10 colorWithAlphaComponent_];

  *(inited + 104) = sub_188A34624(0, qword_1ED4913C0);
  *(inited + 80) = v11;
  v12 = sub_188AEC99C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C6D0);
  result = swift_arrayDestroy();
  qword_1EA92E728 = v12;
  return result;
}

void sub_188EC69C4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_188A3F29C(a1, v12, &qword_1EA934050);
  if (v13)
  {
    type metadata accessor for _UITextViewAnimatedPlaceholderIdentifier(v10);
    if (swift_dynamicCast())
    {
      sub_188A34624(0, &qword_1ED490230);
      if (sub_18A4A7C88())
      {
        *a6 = a2;
        *(a6 + 8) = a3;
        *(a6 + 16) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_188A3F5FC(v12, &qword_1EA934050);
  }
}

id sub_188EC6AB8(uint64_t a1)
{
  result = [v1 textView];
  if (result)
  {
    v4 = result;
    v5 = [v1 textView];
    if (!v5)
    {
LABEL_7:

      return 0;
    }

    v6 = v5;
    v24 = 0;
    v25 = 0;
    v26 = 1;
    v7 = [v5 textStorage];
    v8 = *(a1 + OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_identifier);
    v9 = [v7 length];
    if (qword_1EA92E7F8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EA92E800;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = &v24;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_188ECAB3C;
    *(v12 + 24) = v11;
    aBlock[4] = sub_188ECAB40;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18914E7A8;
    aBlock[3] = &block_descriptor_53_1;
    v13 = _Block_copy(aBlock);
    v14 = v8;

    [v7 enumerateAttribute:v10 inRange:0 options:v9 usingBlock:{0, v13}];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v16 = v24;
      v17 = v25;
      v18 = v26;

      if (v18)
      {
        goto LABEL_7;
      }

      v19 = [v4 beginningOfDocument];
      result = [v4 positionFromPosition:v19 offset:v16];
      if (!result)
      {
        goto LABEL_15;
      }

      if (!__OFADD__(v16, v17))
      {
        v20 = result;
        result = [v4 positionFromPosition:v19 offset:v16 + v17];
        if (result)
        {
          v21 = result;
          v22 = [v4 textRangeFromPosition:v20 toPosition:result];

          return v22;
        }

LABEL_16:
        __break(1u);
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

void sub_188EC6DB4(void *a1)
{
  v3 = [v1 textView];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 placeholderChunk];
    if (v5)
    {
      v6 = v5;
      v7 = sub_188EC6AB8(v5);
      if (v7)
      {
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18A64BFB0;
        v10 = *off_1E70EC920;
        *(inited + 32) = *off_1E70EC920;
        v11 = objc_opt_self();
        v12 = v10;
        v13 = [v11 labelColor];
        v14 = [v13 colorWithAlphaComponent_];

        *(inited + 64) = sub_188A34624(0, qword_1ED4913C0);
        *(inited + 40) = v14;
        sub_188AEC99C(inited);
        swift_setDeallocating();
        sub_188A3F5FC(inited + 32, &qword_1EA93C6D0);
        type metadata accessor for Key(0);
        sub_188C5E0DC();
        v15 = sub_18A4A7088();

        [v4 _targetedPreviewForRange_withRenderingAttributes_includeFullDocument_];
      }

      else
      {
        sub_188ECA4C0();
        swift_allocError();
        *v18 = 2;
        swift_willThrow();
      }
    }

    else
    {
      sub_188ECA4C0();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_188ECA4C0();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
  }
}

void sub_188EC7050(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 textView];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 placeholderChunk];
    if (v8)
    {
      v9 = v8;
      v10 = [v3 textView];
      if (!v10)
      {
LABEL_8:
        sub_188ECA4C0();
        swift_allocError();
        *v22 = 2;
        swift_willThrow();

        return;
      }

      v11 = v10;
      v33 = a2;
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v12 = [v10 textStorage];
      v34 = v9;
      v13 = *&v9[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_identifier];
      v40 = [v12 length];
      if (qword_1EA92E7F8 != -1)
      {
        swift_once();
      }

      v35 = qword_1EA92E800;
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = &v37;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_188ECA514;
      *(v15 + 24) = v14;
      aBlock[4] = sub_188ECA51C;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18914E7A8;
      aBlock[3] = &block_descriptor_19;
      v16 = _Block_copy(aBlock);
      v17 = v13;

      [v12 enumerateAttribute:v35 inRange:0 options:v40 usingBlock:{0, v16}];

      _Block_release(v16);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v19 = v37;
        v20 = v38;
        v21 = v39;

        v9 = v34;
        if (v21)
        {
          goto LABEL_8;
        }

        if (v33)
        {
          v25 = *&v34[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type];
          v26 = v34[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type + 8];
          v27 = [objc_opt_self() labelColor];
          v28 = v27;
          if (v26 == 2 && !v25)
          {
            v29 = [v27 colorWithAlphaComponent_];

            v28 = v29;
          }
        }

        else
        {
          v28 = [objc_opt_self() clearColor];
        }

        v30 = [v7 textStorage];
        v31 = *off_1E70EC920;
        [v30 removeAttribute:*off_1E70EC920 range:{v19, v20}];

        v32 = [v7 textStorage];
        [v32 addAttribute:v31 value:v28 range:{v19, v20}];
      }
    }

    else
    {
      sub_188ECA4C0();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_188ECA4C0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }
}

uint64_t sub_188EC7614(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_18A4A76A8();
  v2[5] = sub_18A4A7698();
  v4 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188EC76B0, v4, v3);
}

uint64_t sub_188EC76B0()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188EC775C, v5, v4);
}

uint64_t sub_188EC775C()
{
  v1 = v0[3];

  v2 = [v1 textView];

  if (v2)
  {
  }

  v3 = v2 != 0;
  v4 = v0[6];
  v4[2](v4, v3);
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_188EC780C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_18A4A76A8();
  v2[4] = sub_18A4A7698();
  v4 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188EC78A4, v4, v3);
}

uint64_t sub_188EC78A4()
{
  v1 = *(v0 + 24);

  v2 = [v1 textView];
  if (v2)
  {
    v3 = v2;
    v4 = [*(v0 + 16) placeholderChunk];
    v5 = v4 != 0;
    if (!v4)
    {
LABEL_5:

      goto LABEL_7;
    }

    v6 = v4;
    v7 = sub_188EC6AB8(v4);

    if (v7)
    {
      v3 = v7;
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_7:
  v8 = *(v0 + 8);

  return v8(v5);
}

uint64_t sub_188EC7B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_18A4A76A8();
  v3[5] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188EC7BA4, v5, v4);
}

uint64_t sub_188EC7BA4()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_188EC7C68;
  v7 = v0[2];

  return sub_188EC780C(v7);
}

uint64_t sub_188EC7C68(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_188EC7DC8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_18A4A76A8();
  v2[9] = sub_18A4A7698();
  v4 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188EC7E60, v4, v3);
}

uint64_t sub_188EC7E60()
{
  sub_188EC6DB4(*(v0 + 56));
  v2 = v1;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_188EC81D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_18A4A76A8();
  v3[5] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188EC8274, v5, v4);
}

uint64_t sub_188EC8274()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_188EC8338;
  v7 = v0[2];

  return sub_188EC7DC8(v7);
}

uint64_t sub_188EC8338(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_188EC849C(uint64_t a1, char a2)
{
  *(v3 + 81) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  sub_18A4A76A8();
  *(v3 + 72) = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188EC8538, v5, v4);
}

uint64_t sub_188EC8538()
{
  sub_188EC7050(*(v0 + 56), *(v0 + 81));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_188EC8A3C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_18A4A76A8();
  *(v4 + 40) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188EC8ADC, v6, v5);
}

uint64_t sub_188EC8ADC()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_188EC8BA4;
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return sub_188EC849C(v8, v7);
}

uint64_t sub_188EC8BA4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

void sub_188EC8CFC(uint64_t a1)
{
  v2 = v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F8);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for UITextEffectView.EffectID();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = sub_188EC4B00();
  v21 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  sub_188ECA980(a1 + v21, v19);
  sub_18900294C(v19);

  sub_188ECAA48(v19);
  sub_188ECA980(a1 + v21, v13);
  v22 = *(v15 + 56);
  v22(v13, 0, 1, v14);
  v23 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_activeReplacementEffect;
  swift_beginAccess();
  v51 = v2;
  sub_188A3F29C(v2 + v23, &v52, &qword_1EA934050);
  if (v53)
  {
    sub_188A55538(&v52, v54);
    swift_dynamicCast();
    v24 = v10;
    v25 = 0;
  }

  else
  {
    sub_188A3F5FC(&v52, &qword_1EA934050);
    v24 = v10;
    v25 = 1;
  }

  v22(v24, v25, 1, v14);
  v26 = *(v50 + 48);
  sub_188A3F29C(v13, v5, &qword_1EA93E6C0);
  sub_188A3F29C(v10, &v5[v26], &qword_1EA93E6C0);
  v27 = *(v15 + 48);
  if (v27(v5, 1, v14) != 1)
  {
    v29 = v49;
    sub_188A3F29C(v5, v49, &qword_1EA93E6C0);
    if (v27(&v5[v26], 1, v14) != 1)
    {
      v30 = v48;
      sub_188ECA9E4(&v5[v26], v48);
      v31 = _s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0();
      sub_188ECAA48(v30);
      sub_188A3F5FC(v13, &qword_1EA93E6C0);
      sub_188ECAA48(v29);
      sub_188A3F5FC(v5, &qword_1EA93E6C0);
      sub_188A3F5FC(v10, &qword_1EA93E6C0);
      v28 = v51;
      if ((v31 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    sub_188A3F5FC(v13, &qword_1EA93E6C0);
    sub_188ECAA48(v29);
LABEL_9:
    sub_188A3F5FC(v5, &qword_1EA9363F8);
    sub_188A3F5FC(v10, &qword_1EA93E6C0);
    v28 = v51;
    goto LABEL_12;
  }

  sub_188A3F5FC(v13, &qword_1EA93E6C0);
  if (v27(&v5[v26], 1, v14) != 1)
  {
    goto LABEL_9;
  }

  sub_188A3F5FC(v5, &qword_1EA93E6C0);
  sub_188A3F5FC(v10, &qword_1EA93E6C0);
  v28 = v51;
LABEL_11:
  memset(v54, 0, sizeof(v54));
  swift_beginAccess();
  sub_188ECA910(v54, v28 + v23);
  swift_endAccess();
LABEL_12:
  swift_beginAccess();
  v32 = *(a1 + 24);
  _s16PlaceholderChunkCMa();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    return;
  }

  v34 = *(v33 + OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_identifier);
  v35 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_completionBlocks;
  swift_beginAccess();
  v36 = *(v28 + v35);
  v37 = *(v36 + 16);
  v38 = v32;
  if (!v37 || (v39 = sub_188E8B958(v34), (v40 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_21;
  }

  v41 = *(*(v36 + 56) + 8 * v39);
  swift_endAccess();
  v42 = *(v41 + 16);

  if (!v42)
  {
LABEL_19:

LABEL_21:

    return;
  }

  v43 = 0;
  v44 = v41 + 40;
  while (v43 < *(v41 + 16))
  {
    ++v43;
    v45 = *(v44 - 8);

    v45(v46);

    v44 += 16;
    if (v42 == v43)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t protocol witness for UITextEffectView.ReplacementTextEffect.Delegate.performReplacementAndGeneratePreview(for:effect:animation:) in conformance _UITextViewAnimatedPlaceholderSupport(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_188EC93B4;

  return sub_188EC9E28(a1, a3);
}

uint64_t sub_188EC93B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_188EC9544()
{
  result = sub_18A4A7258();
  qword_1EA92E800 = result;
  return result;
}

unint64_t sub_188EC9588(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_189037C84(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_188A55538(v41, v39);
  v13 = *a5;
  result = sub_188B00858(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_188B334E0(v19, a4 & 1);
    result = sub_188B00858(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for Key(0);
    result = sub_18A4A87A8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_188FA357C();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    sub_188A55538(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_188A55538(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_189037C84(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_188A55538(v41, v39);
        v30 = *a5;
        result = sub_188B00858(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_188B334E0(v34, 1);
          result = sub_188B00858(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          sub_188A55538(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_188A55538(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_189037C84(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_188E036A4();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_188EC9868(double a1, double a2)
{
  if (a2 == 0.0)
  {
    v3 = 2.5;
  }

  else
  {
    v3 = a2;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v5 = sub_18A4A7258();
  v6 = [v4 initWithString_];

  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v7 = sub_18A4A7088();
  [v6 sizeWithAttributes_];
  v9 = v8;

  v10 = floor(v3 * a1 / v9);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10 < 9.22337204e18)
  {
    sub_18A4A7408();
    v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v12 = sub_18A4A7258();

    v13 = sub_18A4A7088();
    [v11 initWithString:v12 attributes:v13];

    return;
  }

LABEL_10:
  __break(1u);
}

id sub_188EC9A28(void *a1)
{
  v4 = [v1 textView];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 placeholderChunk];
    if (v6)
    {
      v7 = v6;
      v8 = sub_188EC6AB8(v6);
      if (v8)
      {
        v9 = v8;
        v10 = &v7[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type];
        if (v7[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type + 8] > 1u)
        {
          sub_188ECA4C0();
          swift_allocError();
          *v23 = 3;
          swift_willThrow();
        }

        else
        {
          v11 = *v10;
          v27 = v7[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_type + 8];
          sub_188ECAAB8(*v10, v27);
          v12 = [v11 length];
          v28 = v11;
          v13 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
          v14 = *off_1E70EC920;
          [v13 removeAttribute:*off_1E70EC920 range:{0, v12}];
          v26 = objc_opt_self();
          v15 = [v26 clearColor];
          [v13 addAttribute:v14 value:v15 range:{0, v12}];

          if (qword_1EA92E7F8 != -1)
          {
            swift_once();
          }

          [v13 addAttribute:qword_1EA92E800 value:*&v7[OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4016PlaceholderChunk_identifier] range:{0, v12}];
          v25 = [v5 _replaceRange_withAttributedText_updatingSelection_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18A64BFB0;
          *(inited + 32) = v14;
          v17 = v14;
          v18 = [v26 labelColor];
          *(inited + 64) = sub_188A34624(0, qword_1ED4913C0);
          *(inited + 40) = v18;
          sub_188AEC99C(inited);
          swift_setDeallocating();
          sub_188A3F5FC(inited + 32, &qword_1EA93C6D0);
          type metadata accessor for Key(0);
          sub_188C5E0DC();
          v19 = sub_18A4A7088();

          v2 = [v5 _targetedPreviewForRange_withRenderingAttributes_includeFullDocument_];
          sub_188ECAAA4(v28, v27);
        }
      }

      else
      {
        sub_188ECA4C0();
        swift_allocError();
        *v22 = 2;
        swift_willThrow();
      }
    }

    else
    {
      sub_188ECA4C0();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_188ECA4C0();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_188EC9E28(uint64_t a1, _OWORD *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  *(v3 + 72) = *a2;
  sub_18A4A76A8();
  *(v3 + 88) = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188EC9EC8, v5, v4);
}

uint64_t sub_188EC9EC8()
{
  v1 = sub_188EC9A28(*(v0 + 56));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t _s17ActivePlaceholderCMa()
{
  result = qword_1EA92E730;
  if (!qword_1EA92E730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188ECA1A4()
{
  result = sub_18A4A29D8();
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

uint64_t get_enum_tag_for_layout_string_So37_UITextViewAnimatedPlaceholderSupportC5UIKitE0D5Chunk33_5BBAEA65D78BEF4D602D567ACAD13A40LLC0G4TypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for _UIScrollAwayInteraction.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _UIScrollAwayInteraction.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_188ECA314(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_188ECA33C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_188C48500;

  return sub_188EC8A3C(v2, v3, v5, v4);
}

uint64_t sub_188ECA400()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_188C48500;

  return sub_189162964(v2, v3, v4);
}

unint64_t sub_188ECA4C0()
{
  result = qword_1EA9363E8;
  if (!qword_1EA9363E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9363E8);
  }

  return result;
}

uint64_t sub_188ECA524()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_188C48500;

  return sub_188EC81D8(v2, v3, v4);
}

uint64_t sub_188ECA5D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C482B4;

  return sub_189162A4C(a1, v4, v5, v6);
}

uint64_t sub_188ECA6A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_188C48500;

  return sub_188EC7B08(v2, v3, v4);
}

uint64_t sub_188ECA758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_189162A4C(a1, v4, v5, v6);
}

uint64_t sub_188ECA824()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_188C48500;

  return sub_188EC7614(v2, v3);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188ECA910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188ECA980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UITextEffectView.EffectID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188ECA9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UITextEffectView.EffectID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188ECAA48(uint64_t a1)
{
  v2 = type metadata accessor for UITextEffectView.EffectID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_188ECAAA4(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

id sub_188ECAAB8(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t sub_188ECAAE4()
{
  result = qword_1EA936400;
  if (!qword_1EA936400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936400);
  }

  return result;
}

uint64_t sub_188ECAB4C()
{
  v0 = sub_18A4A7288();
  MEMORY[0x18CFE22D0](v0);

  qword_1EA92ECA8 = 0xD000000000000015;
  unk_1EA92ECB0 = 0x800000018A690B90;
  return result;
}

id sub_188ECABC0()
{
  v1 = OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___blurredPortal;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___blurredPortal];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___blurredPortal];
  }

  else
  {
    v4 = sub_188ECC580(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_188ECAC24()
{
  v1 = OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal];
  }

  else
  {
    v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
    [v4 setAutoresizingMask_];
    [v0 bounds];
    [v4 setFrame_];

    [v0 addSubview_];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_188ECACFC(uint64_t a1, void *a2, double a3)
{
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___blurredPortal] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask____lazy_storage___punchPortal] = 0;
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_region] = a1;
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_radius] = a3;
  *&v3[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView] = a2;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for _UIBlurredEdgeMask();
  v5 = a2;
  v6 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = [v6 layer];
  [v7 setContentsGravity_];

  v8 = [v6 layer];
  [v8 setNeedsDisplayOnBoundsChange_];

  v9 = [objc_opt_self() defaultCenter];
  v10 = [v5 superview];
  [v9 addObserver:v6 selector:sel__contentViewDidUpdate name:@"_UIVisualEffectContentViewDidUpdateNotification" object:v10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for _UIVisualEffectIsContentStaticTrait;
  *(inited + 40) = &off_1EE43C698;
  UIView.registerForTraitChanges(_:action:)(inited, sel__contentViewDidUpdate);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  return v6;
}

id sub_188ECAEFC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIBlurredEdgeMask();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_188ECB0DC(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_188ECC9C4;
  *(v4 + 24) = v3;
  v8[4] = sub_188A4B574;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_35;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_188ECB2A0()
{
  v1 = [*&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView] superview];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 _isContentViewStatic];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [v0 subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v6 = sub_18A4A7548();

  if (v6 >> 62)
  {
    v7 = sub_18A4A7F68();
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_188E49300(i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 setHidden_];
  }

LABEL_16:

  v11 = [v0 layer];
  v12 = v11;
  if (v4)
  {
    v13 = sub_188ECBAE4();
    [v12 setContents_];
  }

  else
  {
    [v11 setContents_];

    sub_188ECC308();
  }
}

id sub_188ECB4B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView);
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v1, &unk_1EA936408);
  swift_endAccess();
  if (v2)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_188A3F5FC(v9, &qword_1EA934050);
    goto LABEL_8;
  }

  sub_188A34624(0, &qword_1EA92E808);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    swift_beginAccess();
    v3 = v4;
    objc_setAssociatedObject(v1, &unk_1EA936408, v3, 1);
    swift_endAccess();

    return v3;
  }

  return v6;
}

uint64_t sub_188ECB61C()
{
  v1 = sub_188ECB4B4();
  *&v27[0] = 1802723693;
  *(&v27[0] + 1) = 0xE400000000000000;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v2)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(v27, &aBlock);
    __swift_project_boxed_opaque_existential_0(&aBlock, v24);
    v3 = sub_18A4A86A8();
    v4 = CFGetTypeID(v3);
    swift_unknownObjectRelease();
    if (v4 == CGImageGetTypeID())
    {
      sub_188A55538(&aBlock, v27);
      type metadata accessor for CGImage(0);
      swift_dynamicCast();
      return v21;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  sub_188A34624(0, &unk_1EA936450);
  v6 = [swift_getObjCClassFromMetadata() preferredFormat];
  [v6 setPreferredRange_];
  [v6 setOpaque_];
  [*&v0[OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView] bounds];
  v11 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v6 format:{v7, v8, v9, v10}];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188ECC578;
  *(v13 + 24) = v12;
  v25 = sub_188A86D40;
  v26 = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v23 = sub_188DBDF04;
  v24 = &block_descriptor_20;
  v14 = _Block_copy(&aBlock);
  v15 = v0;

  v16 = [v11 imageWithActions_];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    v18 = [v16 CGImage];
    v19 = sub_188ECB4B4();
    v20 = sub_18A4A7258();
    v5 = v18;
    [v19 __swift_setObject_forKeyedSubscript_];

    return v5;
  }

  __break(1u);
  return result;
}

void sub_188ECB9B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_sourceView);
  v3 = [v2 layer];
  v4 = [v3 shadowPath];

  if (v4)
  {
    v5 = [objc_opt_self() blackColor];
    [v5 setFill];

    v6 = [objc_opt_self() bezierPathWithCGPath_];
    [v6 fill];
  }

  else
  {
    [v2 bounds];

    [v2 drawViewHierarchyInRect_];
  }
}

uint64_t sub_188ECBAE4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  [v2 displayScale];
  v4 = v3;

  v5 = [v1 layer];
  [v5 setContentsScale_];

  v6 = OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_region;
  v7 = OBJC_IVAR____TtC5UIKit18_UIBlurredEdgeMask_radius;
  *&v55 = 0;
  *(&v55 + 1) = 0xE000000000000000;
  MEMORY[0x18CFE22D0](0x2D6F6C6168, 0xE500000000000000);
  type metadata accessor for Region(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](45, 0xE100000000000000);
  v8 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v8);

  v9 = sub_188ECB4B4();
  *&v54[0] = 0;
  *(&v54[0] + 1) = 0xE000000000000000;

  v10 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v10)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(v54, &v55);
    __swift_project_boxed_opaque_existential_0(&v55, v56);
    v11 = sub_18A4A86A8();
    v12 = CFGetTypeID(v11);
    swift_unknownObjectRelease();
    if (v12 == CGImageGetTypeID())
    {

      sub_188A55538(&v55, v54);
      type metadata accessor for CGImage(0);
      swift_dynamicCast();
      return v53;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v55);
  }

  v13 = sub_188ECB61C();
  if (!v13)
  {
LABEL_11:

    return v13;
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936438);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  v16 = *MEMORY[0x1E695F9A8];
  *(inited + 32) = *MEMORY[0x1E695F9A8];
  type metadata accessor for CGColorSpace(0);
  v51 = v17;
  *(inited + 64) = v17;
  *(inited + 40) = DeviceGray;
  v18 = v16;
  v50 = DeviceGray;
  v19 = v13;
  sub_188E8E350(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA934EC8);
  v20 = objc_allocWithZone(MEMORY[0x1E695F658]);
  type metadata accessor for CIImageOption(0);
  sub_188ECC530(&qword_1EA933958, type metadata accessor for CIImageOption);
  v21 = sub_18A4A7088();

  v22 = [v20 initWithCGImage:v19 options:v21];
  v52 = v19;

  v23 = sub_18A4A7258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9401B0);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_18A64BFB0;
  *(v24 + 32) = 0x6461527475706E69;
  v25 = v24 + 32;
  *(v24 + 40) = 0xEB00000000737569;
  v26 = v4 * *&v1[v7];
  *(v24 + 72) = MEMORY[0x1E69E7DE0];
  *(v24 + 48) = v26;
  sub_188AF3DD8(v24);
  swift_setDeallocating();
  sub_188A3F5FC(v25, &qword_1EA934DB8);
  v27 = sub_18A4A7088();

  v28 = [v22 imageByApplyingFilter:v23 withInputParameters:v27];

  v29 = *&v1[v6];
  v30 = v22;
  v31 = v28;
  if (!v29 || (v30 = v28, v31 = v22, v29 == 1))
  {
    v32 = v30;
    v33 = v31;
    v34 = sub_18A4A7258();
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_18A64BFB0;
    *(v35 + 32) = 0xD000000000000014;
    *(v35 + 40) = 0x800000018A690BD0;
    *(v35 + 72) = sub_188A34624(0, &qword_1EA936440);
    *(v35 + 48) = v33;
    v48 = v33;
    sub_188AF3DD8(v35);
    swift_setDeallocating();
    sub_188A3F5FC(v35 + 32, &qword_1EA934DB8);
    v36 = sub_18A4A7088();

    v49 = v32;
    v37 = [v32 imageByApplyingFilter:v34 withInputParameters:v36];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936448);
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_18A64BFB0;
    v39 = *MEMORY[0x1E695F868];
    *(v38 + 32) = *MEMORY[0x1E695F868];
    *(v38 + 64) = v51;
    *(v38 + 40) = v50;
    v40 = v50;
    v41 = v39;
    sub_188E8E374(v38);
    swift_setDeallocating();
    sub_188A3F5FC(v38 + 32, &qword_1EA934EB8);
    v42 = objc_allocWithZone(MEMORY[0x1E695F620]);
    type metadata accessor for CIContextOption(0);
    sub_188ECC530(&qword_1EA933948, type metadata accessor for CIContextOption);
    v43 = sub_18A4A7088();

    v44 = [v42 initWithOptions_];

    [v37 extent];
    v13 = [v44 createCGImage:v37 fromRect:*MEMORY[0x1E695F8C0] format:v40 colorSpace:?];
    if (v13)
    {
      v45 = sub_188ECB4B4();
      *&v55 = 0;
      *(&v55 + 1) = 0xE000000000000000;
      v46 = v13;
      [v45 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      return v13;
    }

    goto LABEL_11;
  }

  *&v55 = *&v1[v6];
  result = sub_18A4A8768();
  __break(1u);
  return result;
}