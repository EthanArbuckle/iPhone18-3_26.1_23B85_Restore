char *AssistantEnabledCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_12(OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D16D4(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id AssistantEnabledCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssistantEnabledCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssistantEnabledCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_12@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for AssistantEnabledCapability();
}

id MUXCapability.__allocating_init(status:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_35();
  return MUXCapability.init(status:)(v2);
}

uint64_t sub_2698FAF48()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698FB010(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698FB070(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698FB010(v2, v3);
}

id MUXCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_13(OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x8000000269909010;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0AB8(8, v8);

  return v6;
}

uint64_t sub_2698FB2F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD00000000000001CLL, 0x8000000269909010, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698FB414(uint64_t a1)
{
  v2 = sub_2698D2A38(a1);
  v3 = 0;
  v20 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap;
  v22 = v2;
  do
  {
    v4 = v3;
    if (v22 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    if ((OUTLINED_FUNCTION_2_7() & 1) == 0)
    {
      goto LABEL_18;
    }

    if ((OUTLINED_FUNCTION_2_7() & 1) == 0)
    {
      goto LABEL_17;
    }

    v9 = sub_26990395C();

    v10 = sub_2698D0124(v9, v7, v8);
    v12 = v11;
    MEMORY[0x26D647E90](v10);

    sub_269903F0C();
    OUTLINED_FUNCTION_35();

    if (v12)
    {
LABEL_17:

      return;
    }

    v13 = *(v21 + v20);
    if (!*(v13 + 16) || (v14 = *(v21 + v20), , v15 = sub_2698D1D34(v7, v8), v17 = v16, , (v17 & 1) == 0))
    {
LABEL_18:

      return;
    }

    v18 = *(*(v13 + 56) + 16 * v15);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v19 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while ((v19 & 1) != 0);
}

char *MUXCapability.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_35();
  return MUXCapability.init(coder:)(v2);
}

char *MUXCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_13(OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_key);
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_35();
  sub_2698D16E8(v4);

  if (!*(*&v1[OBJC_IVAR____TtC27SiriVirtualDeviceResolution13MUXCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v1;
}

id MUXCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MUXCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_13@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for MUXCapability();
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return sub_26990399C();
}

uint64_t sub_2698FBBBC()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698FBC84(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698FBCE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698FBC84(v2, v3);
}

id AppLaunchCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_14(OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000002699090A0;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A90(2, v8);

  return v6;
}

uint64_t sub_2698FBF6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000022, 0x80000002699090A0, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698FC088(uint64_t a1)
{
  v2 = sub_2698D2A38(a1);
  v3 = 0;
  v19 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap;
  v21 = v2;
  do
  {
    v4 = v3;
    if (v21 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_12();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_12();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_1_12();
    v9 = sub_26990395C();

    v10 = sub_2698D0124(v9, v7, v8);
    MEMORY[0x26D647E90](v10);

    v11 = sub_269903F0C();

    if (v11)
    {
LABEL_17:

      return;
    }

    v12 = *(v20 + v19);
    if (!*(v12 + 16) || (v13 = *(v20 + v19), , v14 = sub_2698D1D34(v7, v8), v16 = v15, , (v16 & 1) == 0))
    {
LABEL_18:

      return;
    }

    v17 = *(*(v12 + 56) + 16 * v14);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v18 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while ((v18 & 1) != 0);
}

char *AppLaunchCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_14(OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D16FC(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution19AppLaunchCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id AppLaunchCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppLaunchCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppLaunchCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_14@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for AppLaunchCapability();
}

uint64_t sub_2698FC828()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698FC8F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698FC950(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698FC8F0(v2, v3);
}

id CustomTimerIntentHandlingCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_15(OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000028;
  *(inited + 40) = 0x8000000269909180;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0ACC(10, v8);

  return v6;
}

uint64_t sub_2698FCBD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000028, 0x8000000269909180, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698FCCF4(uint64_t a1)
{
  v2 = sub_2698D2A38(a1);
  v3 = 0;
  v19 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap;
  v21 = v2;
  do
  {
    v4 = v3;
    if (v21 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_13();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_13();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_1_13();
    v9 = sub_26990395C();

    v10 = sub_2698D0124(v9, v7, v8);
    MEMORY[0x26D647E90](v10);

    v11 = sub_269903F0C();

    if (v11)
    {
LABEL_17:

      return;
    }

    v12 = *(v20 + v19);
    if (!*(v12 + 16) || (v13 = *(v20 + v19), , v14 = sub_2698D1D34(v7, v8), v16 = v15, , (v16 & 1) == 0))
    {
LABEL_18:

      return;
    }

    v17 = *(*(v12 + 56) + 16 * v14);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v18 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while ((v18 & 1) != 0);
}

char *CustomTimerIntentHandlingCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_15(OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D1710(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id CustomTimerIntentHandlingCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CustomTimerIntentHandlingCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomTimerIntentHandlingCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_15@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for CustomTimerIntentHandlingCapability();
}

uint64_t sub_2698FD494()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2698FD55C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2698FD5BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2698FD55C(v2, v3);
}

id VideoPlaybackCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_16(OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x8000000269909290;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0A7C(1, v8);

  return v6;
}

uint64_t sub_2698FD844()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000026, 0x8000000269909290, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2698FD960(uint64_t a1)
{
  v2 = sub_2698D2A38(a1);
  v3 = 0;
  v19 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap;
  v21 = v2;
  do
  {
    v4 = v3;
    if (v21 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_2();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_2();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_1_2();
    v9 = sub_26990395C();

    v10 = sub_2698D0124(v9, v7, v8);
    MEMORY[0x26D647E90](v10);

    v11 = sub_269903F0C();

    if (v11)
    {
LABEL_17:

      return;
    }

    v12 = *(v20 + v19);
    if (!*(v12 + 16) || (v13 = *(v20 + v19), , v14 = sub_2698D1D34(v7, v8), v16 = v15, , (v16 & 1) == 0))
    {
LABEL_18:

      return;
    }

    v17 = *(*(v12 + 56) + 16 * v14);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v18 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while ((v18 & 1) != 0);
}

char *VideoPlaybackCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_16(OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D1724(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id VideoPlaybackCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoPlaybackCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlaybackCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_16@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for VideoPlaybackCapability();
}

uint64_t sub_2698FE070()
{
  v0 = CapabilityKey.rawValue.getter();
  v2 = v1;
  if (v0 == CapabilityKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_269903FAC();
  }

  return v5 & 1;
}

SiriVirtualDeviceResolution::DeviceUnitCategory_optional __swiftcall DeviceUnitCategory.init(accessoryType:)(Swift::String accessoryType)
{
  object = accessoryType._object;
  countAndFlagsBits = accessoryType._countAndFlagsBits;
  v4 = v1;
  if (qword_28033E180 != -1)
  {
    swift_once();
  }

  v5 = off_28033EB20;
  if (!*(off_28033EB20 + 2))
  {

    goto LABEL_7;
  }

  v6 = sub_2698D1D34(countAndFlagsBits, object);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:
    v12 = 0;
    v11 = 1;
    goto LABEL_8;
  }

  v11 = 0;
  v12 = *(v5[7] + 8 * v6);
LABEL_8:
  *v4 = v12;
  *(v4 + 8) = v11;
  result.value.rawValue = v9;
  result.is_nil = v10;
  return result;
}

uint64_t sub_2698FE1C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_2698FE21C()
{
  v1 = *v0;
  v27 = MEMORY[0x277D84FA0];
  if (*v0)
  {
    v15 = *MEMORY[0x277CCE8B0];
    v16 = sub_26990390C();
    OUTLINED_FUNCTION_0_17(v16, v17, v18);

    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v23 = *MEMORY[0x277CCE870];
      v24 = sub_26990390C();
      OUTLINED_FUNCTION_0_17(v24, v25, v26);

      if ((v1 & 8) == 0)
      {
        return v27;
      }

      goto LABEL_5;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v19 = *MEMORY[0x277CCE900];
  v20 = sub_26990390C();
  OUTLINED_FUNCTION_0_17(v20, v21, v22);

  if ((v1 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 8) != 0)
  {
LABEL_5:
    v2 = *MEMORY[0x277CCE920];
    v3 = sub_26990390C();
    OUTLINED_FUNCTION_0_17(v3, v4, v5);

    v6 = *MEMORY[0x277CCE930];
    v7 = sub_26990390C();
    OUTLINED_FUNCTION_0_17(v7, v8, v9);

    v10 = *MEMORY[0x277CCE938];
    v11 = sub_26990390C();
    OUTLINED_FUNCTION_0_17(v11, v12, v13);
  }

  return v27;
}

void *sub_2698FE32C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033EB70, "'");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269907A20;
  v1 = *MEMORY[0x277CCE870];
  *(inited + 32) = sub_26990390C();
  *(inited + 40) = v2;
  *(inited + 48) = 4;
  v3 = *MEMORY[0x277CCE8B0];
  *(inited + 56) = sub_26990390C();
  *(inited + 64) = v4;
  *(inited + 72) = 1;
  v5 = *MEMORY[0x277CCE900];
  *(inited + 80) = sub_26990390C();
  *(inited + 88) = v6;
  *(inited + 96) = 2;
  v7 = *MEMORY[0x277CCE920];
  *(inited + 104) = sub_26990390C();
  *(inited + 112) = v8;
  *(inited + 120) = 8;
  v9 = *MEMORY[0x277CCE930];
  *(inited + 128) = sub_26990390C();
  *(inited + 136) = v10;
  *(inited + 144) = 8;
  v11 = *MEMORY[0x277CCE938];
  *(inited + 152) = sub_26990390C();
  *(inited + 160) = v12;
  *(inited + 168) = 8;
  result = sub_2699038BC();
  off_28033EB20 = result;
  return result;
}

void *sub_2698FE46C()
{
  sub_2698FFCDC();
  result = sub_2699038BC();
  off_28033EB28 = result;
  return result;
}

uint64_t DeviceUnitCategory.description.getter()
{
  v1 = *v0;
  v21 = MEMORY[0x277D84FA0];
  if (qword_28033E188 != -1)
  {
LABEL_17:
    swift_once();
  }

  v2 = off_28033EB28;
  v3 = off_28033EB28 + 64;
  v4 = 1 << *(off_28033EB28 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_28033EB28 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    if ((*(v2[6] + 8 * v11) & ~v1) == 0)
    {
      v12 = (v2[7] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      sub_2698FE928(&v19, v14, v13);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_269903D4C();

  v19 = 0xD000000000000015;
  v20 = 0x8000000269909380;
  if (*(v21 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033EB30, &qword_269907A40);
    sub_2698FEA74();
    sub_2698E42D4();
    v15 = sub_2699039BC();
    v17 = v16;
  }

  else
  {

    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x26D647ED0](v15, v17);

  MEMORY[0x26D647ED0](32032, 0xE200000000000000);
  return v19;
}

uint64_t sub_2698FE748@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_2698FE778@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

SiriVirtualDeviceResolution::DeviceUnitCategory sub_2698FE84C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DeviceUnitCategory.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2698FE88C@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceUnitCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2698FE8C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_269907A30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_2698FE928(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26990404C();
  sub_26990394C();
  v9 = sub_26990408C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_269903FAC() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2698FF550(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

unint64_t sub_2698FEA74()
{
  result = qword_28033EB38;
  if (!qword_28033EB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033EB30, &qword_269907A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB38);
  }

  return result;
}

unint64_t sub_2698FEADC()
{
  result = qword_28033EB40;
  if (!qword_28033EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB40);
  }

  return result;
}

unint64_t sub_2698FEB34()
{
  result = qword_28033EB48;
  if (!qword_28033EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB48);
  }

  return result;
}

unint64_t sub_2698FEB88()
{
  result = qword_28033EB50;
  if (!qword_28033EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB50);
  }

  return result;
}

unint64_t sub_2698FEBE0()
{
  result = qword_28033EB58;
  if (!qword_28033EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceUnitCategory(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceUnitCategory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2698FEC8C(void *a1, void *a2)
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

    v9 = sub_269903CBC();

    if (v9)
    {

      sub_2698DC698();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_269903CAC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_2698FEE90(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_2698FF2A8(v18 + 1);
        }

        v19 = v8;
        sub_2698FF4CC(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_2698DC698();
    v11 = *(v6 + 40);
    v12 = sub_269903BDC();
    v13 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v6 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        v20 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v3;
        v19 = a2;
        sub_2698FF6B8(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v25;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_269903BEC();

      if (v16)
      {
        break;
      }

      v12 = v14 + 1;
    }

    v22 = *(*(v6 + 48) + 8 * v14);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  return result;
}

uint64_t sub_2698FEE90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
    v2 = sub_269903D1C();
    v16 = v2;
    sub_269903C9C();
    while (1)
    {
      if (!sub_269903CCC())
      {

        return v2;
      }

      sub_2698DC698();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2698FF2A8(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_269903BDC();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2698FF04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033EB60, " '");
  result = sub_269903D0C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2698FE8C4(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_26990404C();
    sub_26990394C();
    result = sub_26990408C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2698FF2A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
  result = sub_269903D0C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_2698FE8C4(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_269903BDC();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2698FF4CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_269903BDC();
  v5 = -1 << *(a2 + 32);
  result = sub_269903C8C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2698FF550(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2698FF04C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2698FFAA8(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_26990404C();
      sub_26990394C();
      result = sub_26990408C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_269903FAC() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2698FF800();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_269903FDC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_2698FF6B8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2698FF2A8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2698FFD30(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_269903BDC();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_2698DC698();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_269903BEC();

        if (v16)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2698FF958();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_269903FDC();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_2698FF800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033EB60, " '");
  v2 = *v0;
  v3 = sub_269903CFC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

id sub_2698FF958()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
  v2 = *v0;
  v3 = sub_269903CFC();
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

uint64_t sub_2698FFAA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033EB60, " '");
  result = sub_269903D0C();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_26990404C();

        sub_26990394C();
        result = sub_26990408C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2698FFCDC()
{
  result = qword_28033EB68;
  if (!qword_28033EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033EB68);
  }

  return result;
}

uint64_t sub_2698FFD30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E560, &unk_269906900);
  result = sub_269903D0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_269903BDC();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_0_17(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_2698FE928(va, a1, a2);
}

uint64_t sub_269900000()
{
  v1 = (v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_key);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2699000C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_key);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_269900128(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2699000C8(v2, v3);
}

id SeymourRoutingCapability.init(status:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v10.receiver = v1;
  v10.super_class = OUTLINED_FUNCTION_0_18(OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_key);
  v4 = objc_msgSendSuper2(&v10, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28033E1A8, qword_269905F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269905F20;
  *(inited + 32) = 0xD000000000000027;
  *(inited + 40) = 0x80000002699093A0;
  objc_allocWithZone(type metadata accessor for BooleanCapabilityPrimitive());
  v6 = v4;
  *(inited + 48) = sub_2698DBE0C(a1);
  v7 = sub_2699038BC();
  v8 = sub_2698D0418(v7);

  sub_2698D0AA4(3, v8);

  return v6;
}

uint64_t sub_2699003B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap);

  v2 = sub_2698D0C90(0xD000000000000027, 0x80000002699093A0, v1);

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for BooleanCapabilityPrimitive();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___SVDBooleanCapabilityPrimitive_supportStatus);
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_2699004CC(uint64_t a1)
{
  v2 = sub_2698D2A38(a1);
  v3 = 0;
  v19 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap;
  v21 = v2;
  do
  {
    v4 = v3;
    if (v21 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6482B0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key];
    v8 = *&v5[OBJC_IVAR____TtC27SiriVirtualDeviceResolution21CapabilityDescription_key + 8];

    OUTLINED_FUNCTION_1_15();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_1_15();
    if ((sub_26990399C() & 1) == 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_1_15();
    v9 = sub_26990395C();

    v10 = sub_2698D0124(v9, v7, v8);
    MEMORY[0x26D647E90](v10);

    v11 = sub_269903F0C();

    if (v11)
    {
LABEL_17:

      return;
    }

    v12 = *(v20 + v19);
    if (!*(v12 + 16) || (v13 = *(v20 + v19), , v14 = sub_2698D1D34(v7, v8), v16 = v15, , (v16 & 1) == 0))
    {
LABEL_18:

      return;
    }

    v17 = *(*(v12 + 56) + 16 * v14);
    swift_unknownObjectRetain();

    type metadata accessor for BooleanCapabilityPrimitive();
    if (!swift_dynamicCastClass())
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();
    v18 = sub_2698DBF48(v6);
    swift_unknownObjectRelease_n();

    v3 = v4 + 1;
  }

  while ((v18 & 1) != 0);
}

char *SeymourRoutingCapability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033E1A0, &qword_269906120);
  *&v1[v3] = sub_2699038BC();
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_0_18(OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_key);
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2698D1738(a1);

  if (!*(*&v4[OBJC_IVAR____TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability_primitivesMap] + 16))
  {

    return 0;
  }

  return v4;
}

id SeymourRoutingCapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SeymourRoutingCapability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourRoutingCapability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_18@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *v3 = 0x6669636570736E55;
  v3[1] = 0xEB00000000646569;

  return type metadata accessor for SeymourRoutingCapability();
}

id SVDCapabilityDescriptionsGroupedByCapabilityKey(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 capabilityKey];
        if ([v9 length])
        {
          v10 = [v2 objectForKey:v9];
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v2 setObject:v10 forKey:v9];
          }

          [v10 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}