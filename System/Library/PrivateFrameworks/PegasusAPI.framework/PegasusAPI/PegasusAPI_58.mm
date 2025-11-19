uint64_t sub_1B9269830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E58, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92698B0(uint64_t a1)
{
  v2 = sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9269920()
{
  sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B92699B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4580);
  __swift_project_value_buffer(v0, qword_1EBAB4580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "use_case_state_minutes";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "use_case_state_counts";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "family_state_minutes";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "family_state_counts";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DialogStateMeta.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_DialogStateMeta.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C650(), !v1))
  {
    if (!*(v2[1] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C650(), !v1))
    {
      if (!*(v2[2] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C650(), !v1))
      {
        if (!*(v2[3] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C650(), !v1))
        {
          v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DialogStateMeta.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  if ((sub_1B8D921A8(v3, *v4) & 1) == 0 || (sub_1B8D921A8(v2[1], v1[1]) & 1) == 0 || (sub_1B8D921A8(v2[2], v1[2]) & 1) == 0 || (sub_1B8D921A8(v2[3], v1[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta(0);
  OUTLINED_FUNCTION_764(v5);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9269EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E50, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9269F40(uint64_t a1)
{
  v2 = sub_1B8CD2D08(qword_1ED9CA228, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9269FB0()
{
  sub_1B8CD2D08(qword_1ED9CA228, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta);

  return sub_1B964C5D0();
}

uint64_t sub_1B926A03C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9250);
  __swift_project_value_buffer(v0, qword_1EBAC9250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cat_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cat_params";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "spoken_only";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_CatDialogComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_CatDialogComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
      {
        v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B926A42C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E48, type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926A4AC(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9C18, type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B926A51C()
{
  sub_1B8CD2D08(&qword_1EBAC9C18, type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B926A5B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB51E8);
  __swift_project_value_buffer(v0, qword_1EBAB51E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "app_name";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "app_id";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "punchout_uri";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "image_resource_url";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B926A918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E40, type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926A998(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1ED9CC368, type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B926AA08()
{
  sub_1B8CD2D08(&qword_1ED9CC368, type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash);

  return sub_1B964C5D0();
}

uint64_t sub_1B926AA94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9268);
  __swift_project_value_buffer(v0, qword_1EBAC9268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "geo_objects";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "video_objects";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B926ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9538, &qword_1B96AA818);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FC0, L"f\n\a");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC9538, &qword_1B96AA818);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC9FC0, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(&qword_1EBAC6760, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9FC0, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9FC0, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9FC0, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9FC0, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC9538, &qword_1B96AA818);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B926B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9538, &qword_1B96AA818);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FC8, L"f\n\a");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC9538, &qword_1B96AA818);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC9FC8, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC6778, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9FC8, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9FC8, L"f\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9FC8, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9FC8, L"f\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC9538, &qword_1B96AA818);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void Apple_Parsec_Siri_V2alpha_DomainObjectComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_243_3();
  v2 = OUTLINED_FUNCTION_190_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_257_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_90(v1);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_7_6();
    sub_1B926B9A4(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7_6();
    sub_1B926B790(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_106_7();
  sub_1B9239E50();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(0);
    OUTLINED_FUNCTION_479_0(v17);
    OUTLINED_FUNCTION_214_4();
    sub_1B964C290();
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B926B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9538, &qword_1B96AA818);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC9538, &qword_1B96AA818);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC6760, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B926B9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9538, &qword_1B96AA818);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC9538, &qword_1B96AA818);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC6778, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B926BC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E38, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926BCDC(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9C38, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B926BD4C()
{
  sub_1B8CD2D08(&qword_1EBAC9C38, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B926BDE4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB49C8);
  __swift_project_value_buffer(v0, qword_1EBAB49C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case_state";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "family_state";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B926C0A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E30, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926C124(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1ED9CA6B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B926C194()
{
  sub_1B8CD2D08(&qword_1ED9CA6B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState);

  return sub_1B964C5D0();
}

uint64_t sub_1B926C22C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9280);
  __swift_project_value_buffer(v0, qword_1EBAC9280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "experiment_id";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "treatment_id";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "deployment_id";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_TrialIdentifiers.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TrialIdentifiers.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TrialIdentifiers(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_TrialIdentifiers.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v10 = v4 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TrialIdentifiers(0);
  OUTLINED_FUNCTION_736(v11);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B926C6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E28, type metadata accessor for Apple_Parsec_Siri_V2alpha_TrialIdentifiers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926C73C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9C58, type metadata accessor for Apple_Parsec_Siri_V2alpha_TrialIdentifiers);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B926C7AC()
{
  sub_1B8CD2D08(&qword_1EBAC9C58, type metadata accessor for Apple_Parsec_Siri_V2alpha_TrialIdentifiers);

  return sub_1B964C5D0();
}

uint64_t sub_1B926C844()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9298);
  __swift_project_value_buffer(v0, qword_1EBAC9298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "display_properties";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "objects";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_PersonSnippet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B926DAE4();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B926CAEC();
    }
  }
}

void Apple_Parsec_Siri_V2alpha_PersonSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v2 || (sub_1B927AE14(), OUTLINED_FUNCTION_687(), sub_1B964C600(), !v0))
  {
    if (!*(*(v1 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0), sub_1B8CD2D08(&qword_1EBAB4FB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Person), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet(0) + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B926CCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E20, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926CD58(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9C70, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B926CDC8()
{
  sub_1B8CD2D08(&qword_1EBAC9C70, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B926CE48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC92B0);
  __swift_project_value_buffer(v0, qword_1EBAC92B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9653B20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PERSON_PROPERTY_FIRST_NAME";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PERSON_PROPERTY_FULL_NAME";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PERSON_PROPERTY_LAST_NAME";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PERSON_PROPERTY_MIDDLE_NAME";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PERSON_PROPERTY_NICK_NAME";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PERSON_PROPERTY_PREFIX";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PERSON_PROPERTY_SUFFIX";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "PERSON_PROPERTY_ME";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "PERSON_PROPERTY_PHONES";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "PERSON_PROPERTY_COMPANY";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "PERSON_PROPERTY_ADDRESSES";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "PERSON_PROPERTY_EMAILS";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "PERSON_PROPERTY_RELATED_NAMES";
  *(v32 + 1) = 29;
  v32[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B926D2EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC92C8);
  __swift_project_value_buffer(v0, qword_1EBAC92C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "objects";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_ClockSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock(), sub_1B8CD2D08(&qword_1EBAC65C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet(0) + 20);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B926D624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E18, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926D6A4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9C88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B926D714()
{
  sub_1B8CD2D08(&qword_1EBAC9C88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B926D7AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4650);
  __swift_project_value_buffer(v0, qword_1EBAB4650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "ui_view";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "app_entities";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "referenced_entities";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_SageExperience.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B926DB38();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B926DAE4();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9271380();
        break;
    }
  }
}

void sub_1B926DAE4()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD2D08(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B926DB38()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(0);
  sub_1B8CD2D08(&qword_1EBAB4F88, type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_SageExperience.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_588_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9578, &qword_1B96AA860);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_835();
  if (!v13 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity(0), OUTLINED_FUNCTION_397_1(), sub_1B8CD2D08(v14, v15), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_352_0(), sub_1B964C730(), (v0 = v2) == 0))
  {
    if (!*(*(v1 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity(0), OUTLINED_FUNCTION_397_1(), sub_1B8CD2D08(v16, v17), OUTLINED_FUNCTION_231(), sub_1B964C730(), !v0))
    {
      v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
      v19 = *(v18 + 28);
      sub_1B8D92024();
      OUTLINED_FUNCTION_178(v3, 1, v9);
      if (v20)
      {
        sub_1B8D9207C(v3, &qword_1EBAC9578, &qword_1B96AA860);
LABEL_9:
        v23 = v1 + *(v18 + 24);
        sub_1B964C290();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_4_39();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_395_0();
      sub_1B8CD2D08(v21, v22);
      OUTLINED_FUNCTION_257_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_80_5();
      sub_1B9239E50();
      if (!v0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_SageExperience.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v9 = OUTLINED_FUNCTION_190_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC97A8, &qword_1B96AA8F8) - 8);
  v16 = *(*v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_79();
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  v18 = *(v42 + 28);
  v19 = v15[14];
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v20, v21, v22);
  if (v29)
  {
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_178(v23, v24, v25);
    if (v29)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9578, &qword_1B96AA860);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC97A8, &qword_1B96AA8F8);
LABEL_14:
    v41 = 0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v26, v27, v28);
  if (v29)
  {
    OUTLINED_FUNCTION_80_5();
    sub_1B9239E50();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_4_39();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_541_0();
  static Apple_Parsec_Siri_V2alpha_UIView.== infix(_:_:)();
  v31 = v30;
  sub_1B9239E50();
  OUTLINED_FUNCTION_531_0();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAC9578, &qword_1B96AA860);
  if ((v31 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v32 = *v4;
  v33 = *v2;
  sub_1B8D6C9CC();
  if ((v34 & 1) == 0)
  {
    goto LABEL_14;
  }

  v35 = v4[1];
  v36 = v2[1];
  sub_1B8D6C9CC();
  if ((v37 & 1) == 0)
  {
    goto LABEL_14;
  }

  v38 = *(v42 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v39, v40);
  v41 = OUTLINED_FUNCTION_656_0();
LABEL_15:
  OUTLINED_FUNCTION_264(v41);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B926E180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E10, type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926E200(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB4640, type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B926E270()
{
  sub_1B8CD2D08(&qword_1EBAB4640, type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience);

  return sub_1B964C5D0();
}

uint64_t sub_1B926E308()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC92E0);
  __swift_project_value_buffer(v0, qword_1EBAC92E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "search_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "siri_dialog";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ui_view";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "metadata";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "referenced_entity_offsets";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B926E6C0();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B926E774();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B926E7DC();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B926E890();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B926E944();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C440();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B926E6C0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity(0) + 28);
  sub_1B964C1C0();
  sub_1B8CD2D08(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

uint64_t sub_1B926E7DC()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity(0) + 32);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog(0);
  sub_1B8CD2D08(&qword_1EBAC97C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog);
  return sub_1B964C580();
}

uint64_t sub_1B926E890()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity(0) + 36);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(0);
  sub_1B8CD2D08(&qword_1EBAB4F88, type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView);
  return sub_1B964C580();
}

uint64_t sub_1B926E944()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity(0) + 40);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata(0);
  sub_1B8CD2D08(&qword_1EBAC97C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_AppEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9588, &qword_1B96AA870);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v63 = v8;
  v9 = OUTLINED_FUNCTION_201();
  v64 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata(v9);
  v10 = OUTLINED_FUNCTION_59_1(v64);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9578, &qword_1B96AA860);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = OUTLINED_FUNCTION_251_3(v17);
  v67 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(v18);
  v19 = OUTLINED_FUNCTION_59_1(v67);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9580, &qword_1B96AA868);
  OUTLINED_FUNCTION_183(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_79();
  v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog(0);
  v26 = OUTLINED_FUNCTION_59_1(v65);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_21();
  v29 = OUTLINED_FUNCTION_531_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_183(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_211_2();
  v35 = sub_1B964C1C0();
  v36 = OUTLINED_FUNCTION_30_1(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v68 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity(0);
  v41 = *(v68 + 28);
  sub_1B8D92024();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_178(v42, v43, v44);
  if (v45)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
  }

  else
  {
    v46 = *(v38 + 32);
    v47 = OUTLINED_FUNCTION_128();
    v48(v47);
    OUTLINED_FUNCTION_13_26();
    sub_1B8CD2D08(v49, v50);
    sub_1B964C740();
    if (v1)
    {
      (*(v38 + 8))(v2, v35);
      goto LABEL_27;
    }

    (*(v38 + 8))(v2, v35);
  }

  v51 = v0;
  if (*v0)
  {
    v69 = *(v0 + 8);
    sub_1B927AE68();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_585_1();
    sub_1B964C680();
    v53 = v67;
    v52 = v68;
    if (v1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v53 = v67;
    v52 = v68;
  }

  v54 = v52[8];
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v3, 1, v65);
  if (v45)
  {
    sub_1B8D9207C(v3, &qword_1EBAC9580, &qword_1B96AA868);
  }

  else
  {
    OUTLINED_FUNCTION_26_20();
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC97C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_585_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_222_3();
    sub_1B9239E50();
    if (v1)
    {
      goto LABEL_27;
    }
  }

  v55 = v64;
  v56 = v52[9];
  sub_1B8D92024();
  v57 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v57, v58, v53);
  if (v45)
  {
    sub_1B8D9207C(v66, &qword_1EBAC9578, &qword_1B96AA860);
  }

  else
  {
    OUTLINED_FUNCTION_4_39();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_395_0();
    sub_1B8CD2D08(v59, v60);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_585_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_80_5();
    sub_1B9239E50();
    if (v1)
    {
      goto LABEL_27;
    }

    v55 = v64;
  }

  v61 = v52[10];
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v63, 1, v55);
  if (v45)
  {
    sub_1B8D9207C(v63, &qword_1EBAC9588, &qword_1B96AA870);
  }

  else
  {
    OUTLINED_FUNCTION_25_16();
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC97C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_585_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_220_4();
    sub_1B9239E50();
    if (v1)
    {
      goto LABEL_27;
    }
  }

  if (!*(*(v51 + 16) + 16) || (OUTLINED_FUNCTION_79_0(), sub_1B964C620(), !v1))
  {
    v62 = v51 + v52[6];
    sub_1B964C290();
  }

LABEL_27:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_AppEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v109 = v1;
  v3 = v2;
  v103 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata(0);
  v4 = OUTLINED_FUNCTION_59_1(v103);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v100 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9588, &qword_1B96AA870);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v101 = v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC97D0, &qword_1B96AA900);
  OUTLINED_FUNCTION_59_1(v102);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  v16 = OUTLINED_FUNCTION_201();
  v105 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(v16);
  v17 = OUTLINED_FUNCTION_59_1(v105);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9578, &qword_1B96AA860);
  OUTLINED_FUNCTION_183(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_185();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC97A8, &qword_1B96AA8F8);
  OUTLINED_FUNCTION_59_1(v104);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v28 = OUTLINED_FUNCTION_251_3(v27);
  v107 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog(v28);
  v29 = OUTLINED_FUNCTION_59_1(v107);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_21();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9580, &qword_1B96AA868);
  OUTLINED_FUNCTION_183(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_185();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC97D8, &qword_1B96AA908);
  OUTLINED_FUNCTION_59_1(v106);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_201();
  v39 = sub_1B964C1C0();
  v40 = OUTLINED_FUNCTION_30_1(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  v47 = v46 - v45;
  v48 = OUTLINED_FUNCTION_245();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
  OUTLINED_FUNCTION_183(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_79();
  v54 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20) - 8);
  v55 = *(*v54 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v56);
  v57 = OUTLINED_FUNCTION_22_3();
  v108 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity(v57);
  v58 = v108[7];
  v59 = v54[14];
  OUTLINED_FUNCTION_106_6();
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v60)
  {
    OUTLINED_FUNCTION_37_0(v0 + v59);
    if (v60)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
      goto LABEL_14;
    }

LABEL_9:
    v64 = &qword_1EBAB8F28;
    v65 = &unk_1B9683B20;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v59);
  if (v60)
  {
    v61 = *(v42 + 8);
    v62 = OUTLINED_FUNCTION_311();
    v63(v62);
    goto LABEL_9;
  }

  (*(v42 + 32))(v47, v0 + v59, v39);
  OUTLINED_FUNCTION_13_26();
  sub_1B8CD2D08(v67, v68);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_396_0();
  v69 = sub_1B964C850();
  v70 = *(v42 + 8);
  v71 = OUTLINED_FUNCTION_200();
  v70(v71);
  v72 = OUTLINED_FUNCTION_311();
  v70(v72);
  sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
  if ((v69 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v73 = *v3;
  v74 = *v109;
  if (*(v109 + 8) == 1)
  {
    if (v74)
    {
      if (v74 == 1)
      {
        if (v73 != 1)
        {
          goto LABEL_11;
        }
      }

      else if (v73 != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v73)
    {
      goto LABEL_11;
    }
  }

  else if (v73 != v74)
  {
    goto LABEL_11;
  }

  v0 = v108[8];
  v75 = *(v106 + 48);
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_436_0();
  v76 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v76, v77, v107);
  if (v60)
  {
    OUTLINED_FUNCTION_48(v0 + v75);
    if (v60)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9580, &qword_1B96AA868);
      goto LABEL_34;
    }

LABEL_32:
    v64 = &qword_1EBAC97D8;
    v65 = &qword_1B96AA908;
    goto LABEL_10;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v0 + v75);
  if (v78)
  {
    OUTLINED_FUNCTION_222_3();
    sub_1B9239E50();
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_26_20();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_196();
  static Apple_Parsec_Siri_V2alpha_SiriDialog.== infix(_:_:)();
  v80 = v79;
  sub_1B9239E50();
  OUTLINED_FUNCTION_200();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAC9580, &qword_1B96AA868);
  if ((v80 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_34:
  v0 = v108[9];
  v81 = *(v104 + 48);
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_436_0();
  v82 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v82, v83, v105);
  if (v60)
  {
    OUTLINED_FUNCTION_48(v0 + v81);
    if (v60)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9578, &qword_1B96AA860);
      goto LABEL_44;
    }

LABEL_42:
    v64 = &qword_1EBAC97A8;
    v65 = &qword_1B96AA8F8;
    goto LABEL_10;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v0 + v81);
  if (v84)
  {
    OUTLINED_FUNCTION_80_5();
    sub_1B9239E50();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_4_39();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_196();
  static Apple_Parsec_Siri_V2alpha_UIView.== infix(_:_:)();
  v86 = v85;
  sub_1B9239E50();
  OUTLINED_FUNCTION_200();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAC9578, &qword_1B96AA860);
  if ((v86 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_44:
  v0 = v108[10];
  v87 = *(v102 + 48);
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_436_0();
  v88 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v88, v89);
  if (!v60)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v0 + v87);
    if (!v90)
    {
      OUTLINED_FUNCTION_25_16();
      sub_1B9239DA8();
      if (*(v101 + *(v103 + 20)) == *(v100 + *(v103 + 20)) || (, , v91 = OUTLINED_FUNCTION_432(), v93 = sub_1B92743B4(v91, v92), , , v93))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_75();
        sub_1B8CD2D08(v94, v95);
        OUTLINED_FUNCTION_439_0();
        v96 = sub_1B964C850();
        sub_1B9239E50();
        OUTLINED_FUNCTION_74_7();
        sub_1B9239E50();
        sub_1B8D9207C(v0, &qword_1EBAC9588, &qword_1B96AA870);
        if ((v96 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_56;
      }

      sub_1B9239E50();
      sub_1B9239E50();
      v64 = &qword_1EBAC9588;
      v65 = &qword_1B96AA870;
LABEL_10:
      sub_1B8D9207C(v0, v64, v65);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_220_4();
    sub_1B9239E50();
LABEL_52:
    v64 = &qword_1EBAC97D0;
    v65 = &qword_1B96AA900;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v0 + v87);
  if (!v60)
  {
    goto LABEL_52;
  }

  sub_1B8D9207C(v0, &qword_1EBAC9588, &qword_1B96AA870);
LABEL_56:
  if (sub_1B8D921A8(v3[2], v109[2]))
  {
    v97 = v108[6];
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_75();
    sub_1B8CD2D08(v98, v99);
    v66 = sub_1B964C850();
    goto LABEL_12;
  }

LABEL_11:
  v66 = 0;
LABEL_12:
  OUTLINED_FUNCTION_264(v66);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B926FA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E08, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926FACC(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC97A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B926FB3C()
{
  sub_1B8CD2D08(&qword_1EBAC97A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B926FBD4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC92F8);
  __swift_project_value_buffer(v0, qword_1EBAC92F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "response_gen_attributes";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rendered_dialog";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B926FE00()
{
  OUTLINED_FUNCTION_697_0();
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_171_0();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_171_0();
      v2();
    }
  }

  return result;
}

uint64_t sub_1B926FE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseGenAttributes(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9590, &qword_1B96AA878);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog.OneOf_Dialog(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9F90, L"Z\n\a");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC9590, &qword_1B96AA878);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC9F90, L"Z\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9CC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseGenAttributes);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9F90, L"Z\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9F90, L"Z\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9F90, L"Z\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9F90, L"Z\n\a");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC9590, &qword_1B96AA878);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9270374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9590, &qword_1B96AA878);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog.OneOf_Dialog(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9548, &qword_1B96AA828);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC9590, &qword_1B96AA878);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC9548, &qword_1B96AA828);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9548, &qword_1B96AA828);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9548, &qword_1B96AA828);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9548, &qword_1B96AA828);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC9548, &qword_1B96AA828);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC9590, &qword_1B96AA878);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void Apple_Parsec_Siri_V2alpha_SiriDialog.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_243_3();
  v2 = OUTLINED_FUNCTION_190_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_257_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog.OneOf_Dialog(0);
  OUTLINED_FUNCTION_90(v1);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_7_6();
    sub_1B9270B60(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7_6();
    sub_1B927094C(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_110_6();
  sub_1B9239E50();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog(0);
    OUTLINED_FUNCTION_479_0(v17);
    OUTLINED_FUNCTION_214_4();
    sub_1B964C290();
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B927094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9590, &qword_1B96AA878);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseGenAttributes(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog.OneOf_Dialog(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC9590, &qword_1B96AA878);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9CC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseGenAttributes);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9270B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9590, &qword_1B96AA878);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog.OneOf_Dialog(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC9590, &qword_1B96AA878);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_SiriDialog.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog.OneOf_Dialog(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC97E8, &qword_1B96AA910);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3(v16);
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_70_9();
    if (v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9590, &qword_1B96AA878);
LABEL_12:
      v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog(0);
      OUTLINED_FUNCTION_871(v21);
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v22, v23);
      v18 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v17)
  {
    OUTLINED_FUNCTION_110_6();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC97E8, &qword_1B96AA910);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_V2alpha_SiriDialog.OneOf_Dialog.== infix(_:_:)();
  v20 = v19;
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAC9590, &qword_1B96AA878);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9271018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E00, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9271098(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC97C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9271108()
{
  sub_1B8CD2D08(&qword_1EBAC97C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog);

  return sub_1B964C5D0();
}

uint64_t sub_1B9271194()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9310);
  __swift_project_value_buffer(v0, qword_1EBAC9310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "custom_attributes";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

void sub_1B9271380()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD2D08(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Siri_V2alpha_ResponseGenAttributes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0), sub_1B8CD2D08(&qword_1EBAC97F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseGenAttributes(0) + 20);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9271520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DF8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseGenAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92715A0(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9CC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseGenAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9271610()
{
  sub_1B8CD2D08(&qword_1EBAC9CC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseGenAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B92716A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4F98);
  __swift_project_value_buffer(v0, qword_1EBAB4F98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "casino_snippet";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t sub_1B9271864()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_445_0();
      v0();
    }
  }

  return result;
}

uint64_t sub_1B92718C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95A0, &qword_1B96AA888);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView.OneOf_View(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9518, &qword_1B96AA7F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC95A0, &qword_1B96AA888);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    sub_1B8D9207C(v22, &qword_1EBAC9518, &qword_1B96AA7F8);
    sub_1B9239DA8();
    sub_1B9239DA8();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD2D08(&qword_1ED9CA310, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
  v24 = v31;
  sub_1B964C580();
  if (v24)
  {
    v25 = v22;
    return sub_1B8D9207C(v25, &qword_1EBAC9518, &qword_1B96AA7F8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9518, &qword_1B96AA7F8);
    v25 = v20;
    return sub_1B8D9207C(v25, &qword_1EBAC9518, &qword_1B96AA7F8);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBAC9518, &qword_1B96AA7F8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC95A0, &qword_1B96AA888);
  sub_1B9239DA8();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

void Apple_Parsec_Siri_V2alpha_UIView.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_587_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95A0, &qword_1B96AA888);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_458();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  OUTLINED_FUNCTION_565_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView.OneOf_View(0);
  v13 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v13, v14, v15);
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAC95A0, &qword_1B96AA888);
LABEL_5:
    v19 = v20 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(0) + 20);
    OUTLINED_FUNCTION_213_3();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_233();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_403_0();
  sub_1B8CD2D08(v17, v18);
  OUTLINED_FUNCTION_352_0();
  OUTLINED_FUNCTION_609_1();
  OUTLINED_FUNCTION_17_21();
  sub_1B9239E50();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_UIView.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView.OneOf_View(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9808, &qword_1B96AA918);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3(v16);
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_70_9();
    if (v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC95A0, &qword_1B96AA888);
LABEL_12:
      v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView(0);
      OUTLINED_FUNCTION_871(v20);
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v21, v22);
      v18 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v17)
  {
    OUTLINED_FUNCTION_171_2();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC9808, &qword_1B96AA918);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_246();
  v19 = static Apple_Parsec_Siri_V2alpha_UIView.OneOf_View.== infix(_:_:)();
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAC95A0, &qword_1B96AA888);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B927218C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B927220C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB4F88, type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B927227C()
{
  sub_1B8CD2D08(&qword_1EBAB4F88, type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView);

  return sub_1B964C5D0();
}

uint64_t sub_1B9272314()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9328);
  __swift_project_value_buffer(v0, qword_1EBAC9328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "general_attributes";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "custom_attributes";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "event_attributes";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "place_attributes";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "id_attributes";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "contact_attribute";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "app_attribute";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9272660()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__generalAttributes;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__customAttributes) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__eventAttributes;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__placeAttributes;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__idAttributes;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__contactAttribute;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appAttribute;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  return v0;
}

uint64_t sub_1B927276C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC95D0, &unk_1B96AA8C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36[7] = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95C8, &qword_1B96AA8B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36[6] = v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95C0, &qword_1B96AA8B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36[5] = v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v36[4] = v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95B8, &unk_1B96AA8A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95B0, &qword_1B96AA898);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__generalAttributes;
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__customAttributes;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__customAttributes) = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__eventAttributes;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__placeAttributes;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__idAttributes;
  v36[1] = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__idAttributes;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__contactAttribute;
  v36[2] = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__contactAttribute;
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appAttribute;
  v36[3] = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appAttribute;
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__customAttributes;
  swift_beginAccess();
  v33 = *(a1 + v32);
  swift_beginAccess();
  v34 = *(v1 + v21);
  *(v1 + v21) = v33;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B9272DD0()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__generalAttributes, &qword_1EBAC95B0, &qword_1B96AA898);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__customAttributes);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__eventAttributes, &qword_1EBAC95B8, &unk_1B96AA8A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__placeAttributes, &qword_1EBAC6350, &qword_1B9698610);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__idAttributes, &qword_1EBAC95C0, &qword_1B96AA8B0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__contactAttribute, &qword_1EBAC95C8, &qword_1B96AA8B8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appAttribute, &unk_1EBAC95D0, &unk_1B96AA8C0);
  return v0;
}

uint64_t sub_1B9272ED0(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1B9272F80()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B92730B4();
        break;
      case 2:
        sub_1B9273190();
        break;
      case 3:
        sub_1B927326C();
        break;
      case 4:
        sub_1B9273348();
        break;
      case 5:
        sub_1B9273424();
        break;
      case 6:
        sub_1B9273500();
        break;
      case 7:
        sub_1B92735DC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92730B4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes(0);
  sub_1B8CD2D08(&qword_1EBAC9CF8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9273190()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0);
  sub_1B8CD2D08(&qword_1EBAC97F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B927326C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes(0);
  sub_1B8CD2D08(&qword_1EBAC9D68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9273348()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  sub_1B8CD2D08(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9273424()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes(0);
  sub_1B8CD2D08(&qword_1EBAC9D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9273500()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes(0);
  sub_1B8CD2D08(&qword_1EBAC9D38, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92735DC()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes(0);
  sub_1B8CD2D08(&qword_1EBAC9D80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92736E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC95D0, &unk_1B96AA8C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = v48 - v7;
  v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes(0);
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v48[1] = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95C8, &qword_1B96AA8B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = v48 - v12;
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes(0);
  v13 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48[2] = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95C0, &qword_1B96AA8B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v58 = v48 - v17;
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes(0);
  v18 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v61 = v48 - v22;
  v56 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  v23 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95B8, &unk_1B96AA8A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v60 = v48 - v27;
  v57 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes(0);
  v28 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v55 = v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95B0, &qword_1B96AA898);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = v48 - v32;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_1B8D9207C(v33, &qword_1EBAC95B0, &qword_1B96AA898);
    v36 = v62;
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9CF8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes);
    v37 = v62;
    sub_1B964C740();
    v36 = v37;
    result = sub_1B9239E50();
    if (v37)
    {
      return result;
    }
  }

  v39 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__customAttributes;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = v60;
  if (*(v40 + 16))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0);
    sub_1B8CD2D08(&qword_1EBAC97F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute);

    sub_1B964C730();

    v42 = v61;
    if (v36)
    {
      return result;
    }
  }

  else
  {
    v42 = v61;
  }

  swift_beginAccess();
  sub_1B8D92024();
  v43 = __swift_getEnumTagSinglePayload(v41, 1, v57) == 1;
  v44 = v41;
  v45 = v59;
  v46 = v58;
  if (v43)
  {
    sub_1B8D9207C(v44, &qword_1EBAC95B8, &unk_1B96AA8A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9D68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v36)
    {
      return result;
    }

    v45 = v59;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v42, 1, v56) == 1)
  {
    sub_1B8D9207C(v42, &qword_1EBAC6350, &qword_1B9698610);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v36)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v46, 1, v54) == 1)
  {
    sub_1B8D9207C(v46, &qword_1EBAC95C0, &qword_1B96AA8B0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v36)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v45, 1, v52) == 1)
  {
    sub_1B8D9207C(v45, &qword_1EBAC95C8, &qword_1B96AA8B8);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9D38, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v36)
    {
      return result;
    }
  }

  swift_beginAccess();
  v47 = v49;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v47, 1, v50) == 1)
  {
    return sub_1B8D9207C(v47, &unk_1EBAC95D0, &unk_1B96AA8C0);
  }

  sub_1B9239DA8();
  sub_1B8CD2D08(&qword_1EBAC9D80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes);
  sub_1B964C740();
  return sub_1B9239E50();
}

uint64_t sub_1B92742E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_177_1();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v13, v14);
  OUTLINED_FUNCTION_288();
  return OUTLINED_FUNCTION_656_0() & 1;
}

BOOL sub_1B92743B4(uint64_t a1, uint64_t a2)
{
  v159 = a2;
  v131 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes(0);
  v3 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v127 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9F98, L"Z\n\v");
  v5 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v132 = &v127 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC95D0, &unk_1B96AA8C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v128 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v138 = &v127 - v11;
  v136 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes(0);
  v12 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v129 = (&v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FA0, L"^\n\v");
  v14 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v137 = &v127 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95C8, &qword_1B96AA8B8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v133 = (&v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v127 - v20;
  v143 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes(0);
  v21 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  v134 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FA8, L"b\n\v");
  v23 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v144 = &v127 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95C0, &qword_1B96AA8B0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v140 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v155 = &v127 - v29;
  v148 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  v30 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v141 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6358, &qword_1B9698618);
  v32 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v149 = &v127 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v145 = &v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v150 = &v127 - v38;
  v153 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes(0);
  v39 = *(*(v153 - 8) + 64);
  MEMORY[0x1EEE9AC00](v153);
  v146 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FB0, L"^\n\v");
  v41 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v154 = &v127 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95B8, &unk_1B96AA8A0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v151 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v157 = &v127 - v47;
  v48 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v156 = &v127 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FB8, L"b\n\v");
  v52 = v51 - 8;
  v53 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v127 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC95B0, &qword_1B96AA898);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v158 = &v127 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v127 - v60;
  swift_beginAccess();
  sub_1B8D92024();
  v62 = v159;
  swift_beginAccess();
  v63 = *(v52 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55, 1, v48) == 1)
  {

    sub_1B8D9207C(v61, &qword_1EBAC95B0, &qword_1B96AA898);
    if (__swift_getEnumTagSinglePayload(&v55[v63], 1, v48) == 1)
    {
      sub_1B8D9207C(v55, &qword_1EBAC95B0, &qword_1B96AA898);
      goto LABEL_10;
    }

LABEL_6:
    v64 = &qword_1EBAC9FB8;
    v65 = L"b\n\v";
LABEL_7:
    v66 = v55;
LABEL_8:
    sub_1B8D9207C(v66, v64, v65);
    goto LABEL_59;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v55[v63], 1, v48) == 1)
  {

    sub_1B8D9207C(v61, &qword_1EBAC95B0, &qword_1B96AA898);
    sub_1B9239E50();
    goto LABEL_6;
  }

  sub_1B9239DA8();

  static Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes.== infix(_:_:)();
  v68 = v67;
  sub_1B9239E50();
  sub_1B8D9207C(v61, &qword_1EBAC95B0, &qword_1B96AA898);
  sub_1B9239E50();
  sub_1B8D9207C(v55, &qword_1EBAC95B0, &qword_1B96AA898);
  if ((v68 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_10:
  v69 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__customAttributes;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Siri_V2alpha_AppEntityMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__customAttributes;
  swift_beginAccess();
  v72 = *(v62 + v71);

  sub_1B8D84AE0();
  v74 = v73;

  if ((v74 & 1) == 0)
  {
    goto LABEL_59;
  }

  swift_beginAccess();
  v75 = v157;
  sub_1B8D92024();
  swift_beginAccess();
  v76 = *(v152 + 48);
  v55 = v154;
  sub_1B8D92024();
  sub_1B8D92024();
  v77 = v153;
  if (__swift_getEnumTagSinglePayload(v55, 1, v153) == 1)
  {
    sub_1B8D9207C(v75, &qword_1EBAC95B8, &unk_1B96AA8A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v55[v76], 1, v77);
    v79 = v155;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v55, &qword_1EBAC95B8, &unk_1B96AA8A0);
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v84 = v151;
  sub_1B8D92024();
  v85 = __swift_getEnumTagSinglePayload(&v55[v76], 1, v77);
  v79 = v155;
  if (v85 == 1)
  {
    sub_1B8D9207C(v157, &qword_1EBAC95B8, &unk_1B96AA8A0);
    sub_1B9239E50();
LABEL_19:
    v64 = &qword_1EBAC9FB0;
    v65 = L"^\n\v";
    goto LABEL_7;
  }

  v86 = v146;
  sub_1B9239DA8();
  if (*v84 != *v86 || *(v84 + 1) != *(v86 + 1) || *(v84 + 2) != *(v86 + 2))
  {
    sub_1B9239E50();
    v88 = &qword_1EBAC95B8;
    v89 = &unk_1B96AA8A0;
    sub_1B8D9207C(v157, &qword_1EBAC95B8, &unk_1B96AA8A0);
    sub_1B9239E50();
    v66 = v55;
LABEL_26:
    v64 = v88;
    v65 = v89;
    goto LABEL_8;
  }

  v87 = *(v77 + 28);
  sub_1B964C2B0();
  sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  LODWORD(v158) = sub_1B964C850();
  sub_1B9239E50();
  sub_1B8D9207C(v157, &qword_1EBAC95B8, &unk_1B96AA8A0);
  sub_1B9239E50();
  sub_1B8D9207C(v55, &qword_1EBAC95B8, &unk_1B96AA8A0);
  if ((v158 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_14:
  swift_beginAccess();
  v80 = v150;
  sub_1B8D92024();
  swift_beginAccess();
  v81 = *(v147 + 48);
  v82 = v149;
  sub_1B8D92024();
  sub_1B8D92024();
  v83 = v148;
  if (__swift_getEnumTagSinglePayload(v82, 1, v148) == 1)
  {
    sub_1B8D9207C(v80, &qword_1EBAC6350, &qword_1B9698610);
    if (__swift_getEnumTagSinglePayload(v82 + v81, 1, v83) == 1)
    {
      sub_1B8D9207C(v82, &qword_1EBAC6350, &qword_1B9698610);
      goto LABEL_31;
    }

LABEL_29:
    v64 = &qword_1EBAC6358;
    v65 = &qword_1B9698618;
    v66 = v82;
    goto LABEL_8;
  }

  v90 = v145;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v82 + v81, 1, v83) == 1)
  {
    sub_1B8D9207C(v150, &qword_1EBAC6350, &qword_1B9698610);
    sub_1B9239E50();
    goto LABEL_29;
  }

  v91 = v141;
  sub_1B9239DA8();
  v92 = static Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.== infix(_:_:)(v90, v91);
  sub_1B9239E50();
  sub_1B8D9207C(v150, &qword_1EBAC6350, &qword_1B9698610);
  sub_1B9239E50();
  sub_1B8D9207C(v82, &qword_1EBAC6350, &qword_1B9698610);
  if ((v92 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_31:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v93 = *(v142 + 48);
  v94 = v79;
  v95 = v144;
  sub_1B8D92024();
  v96 = v95;
  sub_1B8D92024();
  v97 = v143;
  if (__swift_getEnumTagSinglePayload(v95, 1, v143) == 1)
  {
    sub_1B8D9207C(v94, &qword_1EBAC95C0, &qword_1B96AA8B0);
    if (__swift_getEnumTagSinglePayload(v95 + v93, 1, v97) == 1)
    {
      sub_1B8D9207C(v95, &qword_1EBAC95C0, &qword_1B96AA8B0);
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  v98 = v140;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v96 + v93, 1, v97) == 1)
  {
    sub_1B8D9207C(v155, &qword_1EBAC95C0, &qword_1B96AA8B0);
    sub_1B9239E50();
LABEL_36:
    v64 = &qword_1EBAC9FA8;
    v65 = L"b\n\v";
    v66 = v96;
    goto LABEL_8;
  }

  v99 = v134;
  sub_1B9239DA8();
  v100 = *v98 == *v99 && v98[1] == v99[1];
  if (!v100 && (sub_1B964C9F0() & 1) == 0 || (v98[2] == v99[2] ? (v101 = v98[3] == v99[3]) : (v101 = 0), !v101 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B9239E50();
    v88 = &qword_1EBAC95C0;
    v89 = &qword_1B96AA8B0;
    sub_1B8D9207C(v155, &qword_1EBAC95C0, &qword_1B96AA8B0);
    sub_1B9239E50();
    v66 = v96;
    goto LABEL_26;
  }

  v102 = *(v97 + 24);
  sub_1B964C2B0();
  sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v103 = sub_1B964C850();
  sub_1B9239E50();
  sub_1B8D9207C(v155, &qword_1EBAC95C0, &qword_1B96AA8B0);
  sub_1B9239E50();
  sub_1B8D9207C(v96, &qword_1EBAC95C0, &qword_1B96AA8B0);
  if ((v103 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_48:
  swift_beginAccess();
  v104 = v139;
  sub_1B8D92024();
  swift_beginAccess();
  v105 = *(v135 + 48);
  v106 = v137;
  sub_1B8D92024();
  sub_1B8D92024();
  v107 = v136;
  if (__swift_getEnumTagSinglePayload(v106, 1, v136) != 1)
  {
    v110 = v133;
    sub_1B8D92024();
    v111 = __swift_getEnumTagSinglePayload(v106 + v105, 1, v107);
    v109 = v138;
    if (v111 != 1)
    {
      v112 = v129;
      sub_1B9239DA8();
      v113 = static Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes.== infix(_:_:)(v110, v112);
      sub_1B9239E50();
      sub_1B8D9207C(v139, &qword_1EBAC95C8, &qword_1B96AA8B8);
      sub_1B9239E50();
      sub_1B8D9207C(v106, &qword_1EBAC95C8, &qword_1B96AA8B8);
      if (v113)
      {
        goto LABEL_56;
      }

LABEL_59:

      return 0;
    }

    sub_1B8D9207C(v139, &qword_1EBAC95C8, &qword_1B96AA8B8);
    sub_1B9239E50();
    goto LABEL_53;
  }

  sub_1B8D9207C(v104, &qword_1EBAC95C8, &qword_1B96AA8B8);
  v108 = __swift_getEnumTagSinglePayload(v106 + v105, 1, v107);
  v109 = v138;
  if (v108 != 1)
  {
LABEL_53:
    v64 = &qword_1EBAC9FA0;
    v65 = L"^\n\v";
    v66 = v106;
    goto LABEL_8;
  }

  sub_1B8D9207C(v106, &qword_1EBAC95C8, &qword_1B96AA8B8);
LABEL_56:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v114 = *(v130 + 48);
  v115 = v132;
  sub_1B8D92024();
  v116 = v115;
  sub_1B8D92024();
  v117 = v131;
  if (__swift_getEnumTagSinglePayload(v115, 1, v131) == 1)
  {

    sub_1B8D9207C(v109, &unk_1EBAC95D0, &unk_1B96AA8C0);
    if (__swift_getEnumTagSinglePayload(v115 + v114, 1, v117) == 1)
    {
      sub_1B8D9207C(v115, &unk_1EBAC95D0, &unk_1B96AA8C0);
      return 1;
    }

    goto LABEL_64;
  }

  v119 = v128;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v116 + v114, 1, v117) == 1)
  {

    sub_1B8D9207C(v109, &unk_1EBAC95D0, &unk_1B96AA8C0);
    sub_1B9239E50();
LABEL_64:
    v120 = &qword_1EBAC9F98;
    v121 = L"Z\n\v";
    v122 = v116;
LABEL_65:
    sub_1B8D9207C(v122, v120, v121);
    return 0;
  }

  v123 = v127;
  sub_1B9239DA8();
  v124 = *v119 == *v123 && v119[1] == v123[1];
  if (!v124 && (sub_1B964C9F0() & 1) == 0)
  {

    sub_1B9239E50();
    sub_1B8D9207C(v109, &unk_1EBAC95D0, &unk_1B96AA8C0);
    sub_1B9239E50();
    v122 = v116;
    v120 = &unk_1EBAC95D0;
    v121 = &unk_1B96AA8C0;
    goto LABEL_65;
  }

  v125 = *(v117 + 20);
  sub_1B964C2B0();
  sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v126 = sub_1B964C850();

  sub_1B9239E50();
  sub_1B8D9207C(v109, &unk_1EBAC95D0, &unk_1B96AA8C0);
  sub_1B9239E50();
  sub_1B8D9207C(v116, &unk_1EBAC95D0, &unk_1B96AA8C0);
  return (v126 & 1) != 0;
}

uint64_t sub_1B9275B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9275BC0(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC97C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9275C30()
{
  sub_1B8CD2D08(&qword_1EBAC97C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B9275CC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9348);
  __swift_project_value_buffer(v0, qword_1EBAC9348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "alternate_names";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content_url";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "display_name";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "thumbnail_data";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "title";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C4D0();
        break;
      case 2:
      case 3:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9276018();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9276018()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes(0) + 36);
  sub_1B964C1C0();
  sub_1B8CD2D08(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_151();
  v8 = sub_1B964C1C0();
  v9 = OUTLINED_FUNCTION_30_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  if (!*(*v2 + 16) || (v1 = v0, sub_1B964C6E0(), !v0))
  {
    v14 = v2[1];
    v15 = v2[2];
    OUTLINED_FUNCTION_1();
    if (!v16 || (OUTLINED_FUNCTION_156_0(), (v0 = v1) == 0))
    {
      v17 = v2[3];
      v18 = v2[4];
      OUTLINED_FUNCTION_1();
      if (!v19 || (OUTLINED_FUNCTION_156_0(), (v0 = v1) == 0))
      {
        v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes(0);
        v20 = *(v36 + 36);
        sub_1B8D92024();
        OUTLINED_FUNCTION_90(v3);
        if (v21)
        {
          sub_1B8D9207C(v3, &qword_1EBAB8F20, &qword_1B964D720);
        }

        else
        {
          v22 = OUTLINED_FUNCTION_525_0();
          v23(v22);
          OUTLINED_FUNCTION_13_26();
          sub_1B8CD2D08(v24, v25);
          OUTLINED_FUNCTION_683_0();
          OUTLINED_FUNCTION_17_15();
          sub_1B964C740();
          v0 = v1;
          if (v1)
          {
            v26 = *(v11 + 8);
            v27 = OUTLINED_FUNCTION_233();
            v28(v27);
            goto LABEL_16;
          }

          v29 = *(v11 + 8);
          v30 = OUTLINED_FUNCTION_233();
          v31(v30);
        }

        v32 = v2[5];
        v33 = v2[6];
        OUTLINED_FUNCTION_1();
        if (!v34 || (sub_1B964C700(), !v0))
        {
          v35 = v2 + *(v36 + 32);
          sub_1B964C290();
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_112();
  v3 = sub_1B964C1C0();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_79();
  if ((sub_1B8D6123C(*v1, *v0) & 1) == 0)
  {
    goto LABEL_21;
  }

  v17 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v18 = v1[3] == v0[3] && v1[4] == v0[4];
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v38 = v6;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes(0);
  v19 = *(v37 + 36);
  v20 = *(v13 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v17)
  {
    OUTLINED_FUNCTION_690();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v20);
    if (!v21)
    {
      v26 = OUTLINED_FUNCTION_497_0();
      v27(v26);
      OUTLINED_FUNCTION_13_26();
      sub_1B8CD2D08(v28, v29);
      OUTLINED_FUNCTION_541_0();
      v30 = sub_1B964C850();
      v31 = OUTLINED_FUNCTION_128();
      MEMORY[0](v31);
      v32 = OUTLINED_FUNCTION_200();
      MEMORY[0](v32);
      sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    v22 = *(v38 + 8);
    v23 = OUTLINED_FUNCTION_200();
    v24(v23);
LABEL_20:
    sub_1B8D9207C(v2, &qword_1EBAB8F28, &unk_1B9683B20);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_37_0(v2 + v20);
  if (!v17)
  {
    goto LABEL_20;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_24:
  v33 = v1[5] == v0[5] && v1[6] == v0[6];
  if (v33 || (sub_1B964C9F0() & 1) != 0)
  {
    v34 = *(v37 + 32);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_75();
    sub_1B8CD2D08(v35, v36);
    v25 = OUTLINED_FUNCTION_199_0();
    goto LABEL_22;
  }

LABEL_21:
  v25 = 0;
LABEL_22:
  OUTLINED_FUNCTION_264(v25);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92766E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DE0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9276764(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9CF8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92767D4()
{
  sub_1B8CD2D08(&qword_1EBAC9CF8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B9276860()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9360);
  __swift_project_value_buffer(v0, qword_1EBAC9360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "string_value";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "timestamp";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "temperature";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C530();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9276B70(v11, v12);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B9276D24(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B9277228(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9276B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FA0, &unk_1B964D790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0;
  result = sub_1B964C520();
  if (v2)
  {
  }

  v9 = v14;
  if (v14)
  {
    v15 = v13;
    v10 = (a2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0) + 20));
    sub_1B8D92024();
    v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    sub_1B8D9207C(v7, &qword_1EBAB8FA0, &unk_1B964D790);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(v10, &qword_1EBAB8FA0, &unk_1B964D790);
    *v10 = v15;
    v10[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_1B9276D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FA0, &unk_1B964D790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0) + 20);
  v30 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8FA0, &unk_1B964D790);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC6340, &qword_1B9698600);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC6340, &qword_1B9698600);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC6340, &qword_1B9698600);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC6340, &qword_1B9698600);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v32;
  sub_1B8D9207C(v22, &qword_1EBAC6340, &qword_1B9698600);
  v28 = v29;
  v27 = v30;
  sub_1B8D9207C(v30 + v29, &qword_1EBAB8FA0, &unk_1B964D790);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_1B9277228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Temperature(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FA0, &unk_1B964D790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9F88, L"Z\n\a");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0) + 20);
  v30 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8FA0, &unk_1B964D790);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBAC9F88, L"Z\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9D20, type metadata accessor for Apple_Parsec_Siri_V2alpha_Temperature);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC9F88, L"Z\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9F88, L"Z\n\a");
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC9F88, L"Z\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v32;
  sub_1B8D9207C(v22, &qword_1EBAC9F88, L"Z\n\a");
  v28 = v29;
  v27 = v30;
  sub_1B8D9207C(v30 + v29, &qword_1EBAB8FA0, &unk_1B964D790);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

void Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FA0, &unk_1B964D790);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_192_4();
  v7 = *v0;
  v8 = v0[1];
  OUTLINED_FUNCTION_1();
  if (v9)
  {
    OUTLINED_FUNCTION_11_5();
    sub_1B964C700();
    if (v1)
    {
      goto LABEL_13;
    }
  }

  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0);
  v11 = *(v10 + 20);
  sub_1B8D92024();
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.OneOf_Value(0);
  OUTLINED_FUNCTION_178(v2, 1, v12);
  if (v13)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_190_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_3_48();
    sub_1B9239E50();
    OUTLINED_FUNCTION_100_5();
    sub_1B9277878();
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v16 = OUTLINED_FUNCTION_100_5();
    sub_1B92779D4(v16, v17, v18, v19);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_100_5();
    sub_1B9277BF4(v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_3_48();
  sub_1B9239E50();
  if (!v1)
  {
LABEL_5:
    v14 = *(v10 + 24);
    OUTLINED_FUNCTION_8_1();
  }

LABEL_13:
  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B9277878()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FA0, &unk_1B964D790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v9 - v2);
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0) + 20);
  sub_1B8D92024();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    result = sub_1B8D9207C(v3, &qword_1EBAB8FA0, &unk_1B964D790);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v7 = v3[1];
      sub_1B964C700();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92779D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FA0, &unk_1B964D790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0) + 20);
  sub_1B8D92024();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FA0, &unk_1B964D790);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9277BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FA0, &unk_1B964D790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Temperature(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0) + 20);
  sub_1B8D92024();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8FA0, &unk_1B964D790);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9D20, type metadata accessor for Apple_Parsec_Siri_V2alpha_Temperature);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.OneOf_Value(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FA0, &unk_1B964D790);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FA8, &qword_1B96AA920);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = *v1 == *v0 && v1[1] == v0[1];
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0);
  v17 = *(v26 + 20);
  v18 = *(v12 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2);
  if (v16)
  {
    OUTLINED_FUNCTION_50(v2 + v18);
    if (v16)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8FA0, &unk_1B964D790);
LABEL_17:
      v23 = *(v26 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v24, v25);
      v20 = OUTLINED_FUNCTION_634();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2 + v18);
  if (v19)
  {
    OUTLINED_FUNCTION_3_48();
    sub_1B9239E50();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB8FA8, &qword_1B96AA920);
    goto LABEL_15;
  }

  sub_1B9239DA8();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute.OneOf_Value.== infix(_:_:)();
  v22 = v21;
  sub_1B9239E50();
  sub_1B9239E50();
  sub_1B8D9207C(v2, &qword_1EBAB8FA0, &unk_1B964D790);
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_15:
  v20 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9278134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92781B4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC97F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9278224()
{
  sub_1B8CD2D08(&qword_1EBAC97F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute);

  return sub_1B964C5D0();
}

uint64_t sub_1B92782BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9378);
  __swift_project_value_buffer(v0, qword_1EBAC9378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "units";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_Temperature.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C510();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Temperature.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Temperature(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B927863C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DD0, type metadata accessor for Apple_Parsec_Siri_V2alpha_Temperature);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92786BC(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9D20, type metadata accessor for Apple_Parsec_Siri_V2alpha_Temperature);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B927872C()
{
  sub_1B8CD2D08(&qword_1EBAC9D20, type metadata accessor for Apple_Parsec_Siri_V2alpha_Temperature);

  return sub_1B964C5D0();
}

uint64_t sub_1B92787C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9390);
  __swift_project_value_buffer(v0, qword_1EBAC9390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "phone_number";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "email";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "imessage_url";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "imessage_id";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9278A34()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_318_1();
        v0();
        break;
      default:
        continue;
    }
  }
}

void sub_1B9278AF8()
{
  OUTLINED_FUNCTION_822();
  v3 = v2;
  OUTLINED_FUNCTION_1_15();
  if (!v4 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    v5 = v1[2];
    v6 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      v8 = v1[4];
      v9 = v1[5];
      OUTLINED_FUNCTION_1();
      if (!v10 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
      {
        v11 = v1[6];
        v12 = v1[7];
        OUTLINED_FUNCTION_1();
        if (!v13 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
        {
          v14 = *(v3(0) + 32);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9278BD8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v14 = v8 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v4 + 48) == *(v3 + 48) && *(v4 + 56) == *(v3 + 56);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v16 = a3(0);
  OUTLINED_FUNCTION_764(v16);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v17, v18);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9278D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9278DBC(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9D38, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9278E2C()
{
  sub_1B8CD2D08(&qword_1EBAC9D38, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B9278EB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC93A8);
  __swift_project_value_buffer(v0, qword_1EBAC93A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "muid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "umc_id";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B92790AC()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_318_1();
      v0();
    }
  }

  return result;
}

uint64_t sub_1B9279160(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = a3(0);
  OUTLINED_FUNCTION_188_1(v10);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B927928C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B927930C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B927937C()
{
  sub_1B8CD2D08(&qword_1EBAC9D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B9279408()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC93C0);
  __swift_project_value_buffer(v0, qword_1EBAC93C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "all_day";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_date";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "end_date";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
      {
        v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 8) != *(v5 + 8) || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes(0);
  OUTLINED_FUNCTION_736(v6);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9279890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9279910(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9D68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9279980()
{
  sub_1B8CD2D08(&qword_1EBAC9D68, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B9279A18()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC93D8);
  __swift_project_value_buffer(v0, qword_1EBAC93D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "adam_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v1 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes(0);
  OUTLINED_FUNCTION_871(v5);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9279D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9279DF8(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9D80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9279E68()
{
  sub_1B8CD2D08(&qword_1EBAC9D80, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B9279F00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB43C8);
  __swift_project_value_buffer(v0, qword_1EBAB43C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "prompt_types";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_UserPromptSignals.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (sub_1B927AEBC(), OUTLINED_FUNCTION_687(), result = sub_1B964C600(), !v0))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B927A1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_51_2(a1);
  if ((v7(v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  OUTLINED_FUNCTION_871(v8);
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B927A294()
{
  OUTLINED_FUNCTION_250_1();
  sub_1B964CA70();
  v0(0);
  v1 = OUTLINED_FUNCTION_461();
  sub_1B8CD2D08(v1, v2);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B927A368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9DA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B927A3E8(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB43B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B927A458()
{
  sub_1B8CD2D08(&qword_1EBAB43B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals);

  return sub_1B964C5D0();
}

uint64_t sub_1B927A4D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4408);
  __swift_project_value_buffer(v0, qword_1EBAB4408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PROMPT_TYPE_UNDEFINED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PROMPT_TYPE_SHARE_DEVICE_LOCATION";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PROMPT_TYPE_SHARE_PRECISE_DEVICE_LOCATION";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B927ACC4()
{
  result = qword_1EBAC95F8;
  if (!qword_1EBAC95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC95F8);
  }

  return result;
}

unint64_t sub_1B927AD18()
{
  result = qword_1EBAC9600;
  if (!qword_1EBAC9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9600);
  }

  return result;
}

unint64_t sub_1B927AD6C()
{
  result = qword_1EBAC96A0;
  if (!qword_1EBAC96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC96A0);
  }

  return result;
}

unint64_t sub_1B927ADC0()
{
  result = qword_1EBAC9708;
  if (!qword_1EBAC9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9708);
  }

  return result;
}

unint64_t sub_1B927AE14()
{
  result = qword_1EBAC9788;
  if (!qword_1EBAC9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9788);
  }

  return result;
}

unint64_t sub_1B927AE68()
{
  result = qword_1EBAC97B8;
  if (!qword_1EBAC97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC97B8);
  }

  return result;
}

unint64_t sub_1B927AEBC()
{
  result = qword_1EBAB43F8;
  if (!qword_1EBAB43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB43F8);
  }

  return result;
}

unint64_t sub_1B927AF14()
{
  result = qword_1EBAB5C18;
  if (!qword_1EBAB5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5C18);
  }

  return result;
}

unint64_t sub_1B927AF6C()
{
  result = qword_1EBAB5C08;
  if (!qword_1EBAB5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5C08);
  }

  return result;
}

unint64_t sub_1B927AFC4()
{
  result = qword_1EBAB5C10;
  if (!qword_1EBAB5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5C10);
  }

  return result;
}

unint64_t sub_1B927B04C()
{
  result = qword_1EBAC9870;
  if (!qword_1EBAC9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9870);
  }

  return result;
}

unint64_t sub_1B927B0A4()
{
  result = qword_1EBAC9878;
  if (!qword_1EBAC9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9878);
  }

  return result;
}

unint64_t sub_1B927B0FC()
{
  result = qword_1EBAC9880;
  if (!qword_1EBAC9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9880);
  }

  return result;
}

unint64_t sub_1B927B184()
{
  result = qword_1EBAC9898;
  if (!qword_1EBAC9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9898);
  }

  return result;
}

unint64_t sub_1B927B1DC()
{
  result = qword_1EBAC98A0;
  if (!qword_1EBAC98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC98A0);
  }

  return result;
}

unint64_t sub_1B927B234()
{
  result = qword_1EBAC98A8;
  if (!qword_1EBAC98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC98A8);
  }

  return result;
}

unint64_t sub_1B927B2BC()
{
  result = qword_1EBAB4970;
  if (!qword_1EBAB4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4970);
  }

  return result;
}

unint64_t sub_1B927B314()
{
  result = qword_1EBAB4960;
  if (!qword_1EBAB4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4960);
  }

  return result;
}

unint64_t sub_1B927B36C()
{
  result = qword_1EBAB4968;
  if (!qword_1EBAB4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4968);
  }

  return result;
}

unint64_t sub_1B927B3F4()
{
  result = qword_1EBAB4770;
  if (!qword_1EBAB4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4770);
  }

  return result;
}

unint64_t sub_1B927B44C()
{
  result = qword_1EBAB4760;
  if (!qword_1EBAB4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4760);
  }

  return result;
}

unint64_t sub_1B927B4A4()
{
  result = qword_1EBAB4768;
  if (!qword_1EBAB4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4768);
  }

  return result;
}

unint64_t sub_1B927B52C()
{
  result = qword_1EBAC98E0;
  if (!qword_1EBAC98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC98E0);
  }

  return result;
}

unint64_t sub_1B927B584()
{
  result = qword_1EBAC98E8;
  if (!qword_1EBAC98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC98E8);
  }

  return result;
}

unint64_t sub_1B927B5DC()
{
  result = qword_1EBAC98F0;
  if (!qword_1EBAC98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC98F0);
  }

  return result;
}

unint64_t sub_1B927B664()
{
  result = qword_1EBAC9908;
  if (!qword_1EBAC9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9908);
  }

  return result;
}

unint64_t sub_1B927B6BC()
{
  result = qword_1EBAC9910;
  if (!qword_1EBAC9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9910);
  }

  return result;
}

unint64_t sub_1B927B714()
{
  result = qword_1EBAC9918;
  if (!qword_1EBAC9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9918);
  }

  return result;
}

unint64_t sub_1B927B79C()
{
  result = qword_1EBAC9930;
  if (!qword_1EBAC9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9930);
  }

  return result;
}

unint64_t sub_1B927B7F4()
{
  result = qword_1EBAC9938;
  if (!qword_1EBAC9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9938);
  }

  return result;
}

unint64_t sub_1B927B84C()
{
  result = qword_1EBAC9940;
  if (!qword_1EBAC9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9940);
  }

  return result;
}

unint64_t sub_1B927B8D4()
{
  result = qword_1EBAB5BB8;
  if (!qword_1EBAB5BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5BB8);
  }

  return result;
}

unint64_t sub_1B927B92C()
{
  result = qword_1EBAB5BA8;
  if (!qword_1EBAB5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5BA8);
  }

  return result;
}

unint64_t sub_1B927B984()
{
  result = qword_1EBAB5BB0;
  if (!qword_1EBAB5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5BB0);
  }

  return result;
}

unint64_t sub_1B927BA0C()
{
  result = qword_1EBAC9968;
  if (!qword_1EBAC9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9968);
  }

  return result;
}

unint64_t sub_1B927BA64()
{
  result = qword_1EBAC9970;
  if (!qword_1EBAC9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9970);
  }

  return result;
}

unint64_t sub_1B927BABC()
{
  result = qword_1EBAC9978;
  if (!qword_1EBAC9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9978);
  }

  return result;
}

unint64_t sub_1B927BB44()
{
  result = qword_1EBAC9990;
  if (!qword_1EBAC9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9990);
  }

  return result;
}

unint64_t sub_1B927BB9C()
{
  result = qword_1EBAC9998;
  if (!qword_1EBAC9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9998);
  }

  return result;
}

unint64_t sub_1B927BBF4()
{
  result = qword_1EBAC99A0;
  if (!qword_1EBAC99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC99A0);
  }

  return result;
}

unint64_t sub_1B927BC7C()
{
  result = qword_1EBAC99B8;
  if (!qword_1EBAC99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC99B8);
  }

  return result;
}

unint64_t sub_1B927BCD4()
{
  result = qword_1EBAC99C0;
  if (!qword_1EBAC99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC99C0);
  }

  return result;
}

unint64_t sub_1B927BD2C()
{
  result = qword_1EBAC99C8;
  if (!qword_1EBAC99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC99C8);
  }

  return result;
}

unint64_t sub_1B927BDB4()
{
  result = qword_1EBAB43F0;
  if (!qword_1EBAB43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB43F0);
  }

  return result;
}

unint64_t sub_1B927BE0C()
{
  result = qword_1EBAB43E0;
  if (!qword_1EBAB43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB43E0);
  }

  return result;
}

unint64_t sub_1B927BE64()
{
  result = qword_1EBAB43E8;
  if (!qword_1EBAB43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB43E8);
  }

  return result;
}

void sub_1B9280240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B928039C()
{
  v0 = OUTLINED_FUNCTION_503_0();
  sub_1B9282D68(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_515_1();
    sub_1B964C2B0();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t sub_1B9280484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_187Tm_0);
}

uint64_t sub_1B92804DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_299Tm_0);
}

uint64_t __swift_store_extra_inhabitant_index_417Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t __swift_get_extra_inhabitant_index_443Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_753();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v3 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_444Tm()
{
  OUTLINED_FUNCTION_586();
  OUTLINED_FUNCTION_468();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_115_1();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_1B9280800(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_503_0();
  sub_1B964C2B0();
  if (v7 <= 0x3F)
  {
    sub_1B9280240(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B92809E4()
{
  sub_1B9280240(319, &qword_1ED9CF5C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B9280240(319, &qword_1ED9CF600, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B9280240(319, &qword_1ED9EC1E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9280B60()
{
  sub_1B9280240(319, &qword_1ED9CF5C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9280240(319, &qword_1ED9F8210, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9280D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j____swift_get_extra_inhabitant_index_647Tm);
}

uint64_t sub_1B9280D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_648Tm);
}

uint64_t sub_1B9280DEC()
{
  v1 = OUTLINED_FUNCTION_503_0();
  v3 = v2(v1);
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(v0 - 8) + 84) = *(*(v3 - 8) + 84);
    return 0;
  }

  return v3;
}

uint64_t __swift_get_extra_inhabitant_index_647Tm()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_753();
  }

  else
  {
    if (v0 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_101_4();
      return OUTLINED_FUNCTION_700(*(v6 + 8));
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_266();
    v4 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void __swift_store_extra_inhabitant_index_648Tm()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    if (v1 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_101_4();
      *(v4 + 8) = (v0 - 1);
      return;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_258_0();
  }

  OUTLINED_FUNCTION_81_0();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_1B928103C()
{
  sub_1B9280240(319, &qword_1ED9D08D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B92810F8()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B9281204()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B9281388()
{
  sub_1B9280240(319, &qword_1EBAC8468, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B9280240(319, &qword_1ED9CF580, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B9280240(319, &qword_1ED9D0168, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B928150C()
{
  sub_1B9280240(319, &qword_1ED9CF578, type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B9280240(319, &qword_1EBAC8468, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B9280240(319, &qword_1ED9D2E98, type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B9280240(319, &qword_1ED9D1B90, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B9281790()
{
  sub_1B9280240(319, &qword_1EBAC8468, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9280240(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B92818F8()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B92819E4()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9280240(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9281B54()
{
  sub_1B9282D68(319, &qword_1ED9CF528, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9281CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_503_0();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_425Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_267_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B9281E28()
{
  sub_1B9282D68(319, &qword_1ED9CF640, &type metadata for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B9280240(319, &qword_1ED9CF690, type metadata accessor for Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9281FAC()
{
  sub_1B9280240(319, &qword_1ED9CF688, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9280240(319, qword_1ED9D2B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B92820D0()
{
  sub_1B9282D68(319, &qword_1ED9CF530, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9280240(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B9280240(319, qword_1ED9D35B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriDialog, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B9280240(319, qword_1ED9D2B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_UIView, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B9280240(319, qword_1ED9D1248, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_638Tm()
{
  OUTLINED_FUNCTION_468();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_753();
  }

  else
  {
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_index_639Tm()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_115_1();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_1B9282508()
{
  v0 = OUTLINED_FUNCTION_503_0();
  sub_1B9280240(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_515_1();
    sub_1B964C2B0();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t sub_1B9282568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_764Tm);
}

uint64_t __swift_get_extra_inhabitant_index_764Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
    OUTLINED_FUNCTION_266();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

uint64_t sub_1B9282668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_765Tm);
}

void __swift_store_extra_inhabitant_index_765Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v2 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
      OUTLINED_FUNCTION_258_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B92827D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_503_0();
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    v7 = OUTLINED_FUNCTION_515_1();
    result = a4(v7);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_611Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_622_0();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    v7 = *(v2 + 36);
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void __swift_store_extra_inhabitant_index_612Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_633_0();
    }

    else
    {
      v6 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      v5 = *(v0 + 36);
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_1B92829BC()
{
  sub_1B9282D68(319, qword_1EDA06FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9280240(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9282B10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B9280240(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t sub_1B9282BA4()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_Temperature(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9282D68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9282DD0()
{
  sub_1B9280240(319, &qword_1ED9ECAE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1B9280240(319, &qword_1ED9ED7E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1B9280240(319, &qword_1ED9D8FE0, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1B9280240(319, &qword_1ED9EB358, type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1B9280240(319, &qword_1ED9EBD10, type metadata accessor for Apple_Parsec_Siri_V2alpha_ConversationContext, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1B9283090()
{
  sub_1B9280240(319, &qword_1ED9D3810, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_1B9280240(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_1B9280240(319, &qword_1ED9EE358, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_1B9280240(319, &qword_1ED9EE0F0, type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_1B9280240(319, &qword_1ED9EB988, type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_1B9280240(319, &qword_1ED9EBCE0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VisualSearchContext, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_1B9280240(319, &qword_1ED9DD9E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRContext, MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_1B9280240(319, &qword_1ED9D38A8, type metadata accessor for Apple_Parsec_Search_SearchConversationContext, MEMORY[0x1E69E6720]);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B9283494()
{
  sub_1B9280240(319, &qword_1ED9EE1E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_1B9280240(319, &qword_1ED9EE298, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_1B9280240(319, &qword_1ED9EE250, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_1B9280240(319, &qword_1ED9D9D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_1B9280240(319, &qword_1ED9D38A8, type metadata accessor for Apple_Parsec_Search_SearchConversationContext, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_1B9280240(319, &qword_1ED9EB348, MEMORY[0x1E69AA9B8], MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1B92837BC()
{
  sub_1B9280240(319, &qword_1ED9EE2C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_1B9280240(319, &qword_1ED9EE2B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_1B9280240(319, &qword_1ED9EBCF8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_1B9280240(319, &qword_1ED9D8FD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_1B9280240(319, &qword_1ED9D6850, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_1B9280240(319, qword_1ED9D1190, type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_1B9280240(319, qword_1ED9D3720, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData, MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_1B9280240(319, qword_1ED9D16E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience, MEMORY[0x1E69E6720]);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B9283B88()
{
  sub_1B9280240(319, &qword_1ED9EE738, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9280240(319, &qword_1ED9EDB10, type metadata accessor for Latencyinfopb_KfedLatencyInfo, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9280240(319, &qword_1ED9EE720, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9283D50()
{
  sub_1B9280240(319, &qword_1ED9D5278, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B9280240(319, &qword_1ED9EB9A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9283E80()
{
  sub_1B9280240(319, &qword_1ED9D2318, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B9280240(319, qword_1ED9D15E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9283FE8()
{
  sub_1B9280240(319, qword_1ED9CFB60, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityGeneralAttributes, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_1B9280240(319, qword_1ED9CFF40, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityEventAttributes, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_1B9280240(319, qword_1ED9CFE78, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_1B9280240(319, qword_1ED9D0948, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityIDAttributes, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_1B9280240(319, qword_1ED9CFC08, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityContactAttributes, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_1B9280240(319, qword_1ED9CF9F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityAppstoreAttributes, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B92842CC()
{
  result = qword_1EBAC9F78;
  if (!qword_1EBAC9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9F78);
  }

  return result;
}

unint64_t sub_1B9284320()
{
  result = qword_1EBAB5BC0;
  if (!qword_1EBAB5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5BC0);
  }

  return result;
}

unint64_t sub_1B9284374()
{
  result = qword_1EBAC9F80;
  if (!qword_1EBAC9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC9F80);
  }

  return result;
}

unint64_t sub_1B92843C8()
{
  result = qword_1EBAB4778;
  if (!qword_1EBAB4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4778);
  }

  return result;
}

unint64_t sub_1B928441C()
{
  result = qword_1EBAB4978;
  if (!qword_1EBAB4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4978);
  }

  return result;
}

unint64_t sub_1B9284470()
{
  result = qword_1EBAB5C20;
  if (!qword_1EBAB5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5C20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_92_9()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_93_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_94_10()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_102_8()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_103_3()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_156_7(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_163_5()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_165_4(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_231_4(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_232_1(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityMetadata(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_239_3(uint64_t a1)
{
  v2 = *(a1 + 56);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_241_3()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_245_3()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_246_3()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_247_2()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_248_2(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_249_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_255_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  v6 = *(v4 + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_257_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_313_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_333_1()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityCustomAttribute(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_361_1()
{

  return sub_1B9239DA8();
}

uint64_t OUTLINED_FUNCTION_415_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_427_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_428_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_429_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_430_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_431_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_433_1(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_436_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_439_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_440_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_446_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_450_0()
{
  v1 = *(v0 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_454_0()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_455_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_470_0()
{

  return sub_1B9239DA8();
}

uint64_t OUTLINED_FUNCTION_473_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_493_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_505_1()
{

  return sub_1B9239DA8();
}

uint64_t OUTLINED_FUNCTION_506_0()
{

  return sub_1B9239DA8();
}

uint64_t OUTLINED_FUNCTION_511_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_517_1(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 - 88) = v1;

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_520_1()
{
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_563_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_565_0()
{
  *(v1 - 88) = v0;

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_573_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_576_1()
{
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_578_1@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = a1;
  return 0;
}

void OUTLINED_FUNCTION_590_0(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
}

void OUTLINED_FUNCTION_593_1(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
}

uint64_t OUTLINED_FUNCTION_603_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_604_1()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_609_1()
{
  v2 = *(v0 - 72);

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_610_1()
{
  v3 = v0 + *(v1 + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = xmmword_1B9652FE0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 96) = sub_1B964C7B0();
  *(a1 + 104) = v2;
  v3 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  v4 = a1 + v3[13];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = v3[14];
  sub_1B964C150();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v3[15];
  type metadata accessor for Searchfoundation_EngagementSignal(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults()
{
  result = qword_1EBACA1C8;
  if (!qword_1EBACA1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_EngagementSignal(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA198, L"Z\n\a");
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v68 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA1A0, L"Z\n\v");
  OUTLINED_FUNCTION_59_1(v74);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = sub_1B964C150();
  v21 = OUTLINED_FUNCTION_30_1(v20);
  v75 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_88();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB8, &qword_1B96835C8);
  OUTLINED_FUNCTION_59_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v68 - v36;
  v38 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v39 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v39 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v40 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v71 = v19;
  v72 = v3;
  v69 = v9;
  v70 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  v41 = *(v70 + 56);
  v42 = *(v32 + 48);
  sub_1B8DD9078(v1 + v41, v37, &qword_1EBAC2CB0, &qword_1B96835C0);
  sub_1B8DD9078(v0 + v41, &v37[v42], &qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_37_0(v37);
  if (v38)
  {
    OUTLINED_FUNCTION_37_0(&v37[v42]);
    if (v38)
    {
      sub_1B8D9207C(v37, &qword_1EBAC2CB0, &qword_1B96835C0);
      goto LABEL_27;
    }

LABEL_24:
    v44 = &qword_1EBAC2CB8;
    v45 = &qword_1B96835C8;
    v46 = v37;
LABEL_25:
    sub_1B8D9207C(v46, v44, v45);
LABEL_48:
    v66 = 0;
    return v66 & 1;
  }

  sub_1B8DD9078(v37, v2, &qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_37_0(&v37[v42]);
  if (v43)
  {
    (*(v75 + 8))(v2, v20);
    goto LABEL_24;
  }

  v47 = v75;
  (*(v75 + 32))(v27, &v37[v42], v20);
  OUTLINED_FUNCTION_4_40();
  sub_1B8CD2D50(v48, v49);
  v50 = sub_1B964C850();
  v51 = *(v47 + 8);
  v51(v27, v20);
  v51(v2, v20);
  sub_1B8D9207C(v37, &qword_1EBAC2CB0, &qword_1B96835C0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_27:
  if ((MEMORY[0x1BFADC060](*(v1 + 48), *(v1 + 56), *(v0 + 48), *(v0 + 56)) & 1) == 0 || *(v1 + 64) != *(v0 + 64) || *(v1 + 72) != *(v0 + 72))
  {
    goto LABEL_48;
  }

  v52 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
  if (!v52 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_48;
  }

  sub_1B8DB4EB4(*(v1 + 96), *(v0 + 96));
  if ((v53 & 1) == 0)
  {
    goto LABEL_48;
  }

  v55 = v70;
  v54 = v71;
  v56 = *(v70 + 60);
  v57 = *(v74 + 48);
  sub_1B8DD9078(v1 + v56, v71, &qword_1EBACA198, L"Z\n\a");
  sub_1B8DD9078(v0 + v56, v54 + v57, &qword_1EBACA198, L"Z\n\a");
  OUTLINED_FUNCTION_178(v54, 1, v72);
  if (v38)
  {
    OUTLINED_FUNCTION_37_0(v54 + v57);
    if (v38)
    {
      sub_1B8D9207C(v54, &qword_1EBACA198, L"Z\n\a");
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v58 = v73;
  sub_1B8DD9078(v54, v73, &qword_1EBACA198, L"Z\n\a");
  OUTLINED_FUNCTION_37_0(v54 + v57);
  if (v59)
  {
    sub_1B9288894(v58);
LABEL_44:
    v44 = &qword_1EBACA1A0;
    v45 = L"Z\n\v";
    v46 = v54;
    goto LABEL_25;
  }

  v60 = v69;
  sub_1B92888F0(v54 + v57, v69);
  v61 = static Searchfoundation_EngagementSignal.== infix(_:_:)(v58, v60);
  sub_1B9288894(v60);
  sub_1B9288894(v58);
  sub_1B8D9207C(v54, &qword_1EBACA198, L"Z\n\a");
  if ((v61 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_46:
  v62 = *(v1 + 104);
  v63 = *(v0 + 104);
  sub_1B8D61678();
  if ((v64 & 1) == 0)
  {
    goto LABEL_48;
  }

  v65 = *(v55 + 52);
  sub_1B964C2B0();
  sub_1B8CD2D50(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v66 = sub_1B964C850();
  return v66 & 1;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.prefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.prefix.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.query.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.query.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.rawQuery.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.rawQuery.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.completionScore.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  v7 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  v8 = OUTLINED_FUNCTION_115(*(v7 + 56));
  sub_1B8DD9078(v8, v9, &qword_1EBAC2CB0, &qword_1B96835C0);
  v10 = sub_1B964C150();
  v11 = OUTLINED_FUNCTION_9_2();
  if (!v12)
  {
    return (*(*(v10 - 8) + 32))(a1, v1, v10);
  }

  MEMORY[0x1BFADC0D0](v11);
  result = OUTLINED_FUNCTION_9_2();
  if (!v12)
  {
    return sub_1B8D9207C(v1, &qword_1EBAC2CB0, &qword_1B96835C0);
  }

  return result;
}

uint64_t sub_1B9286A3C(uint64_t a1)
{
  v2 = sub_1B964C150();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.completionScore.setter();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.completionScore.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_16() + 56);
  sub_1B8D9207C(v1 + v2, &qword_1EBAC2CB0, &qword_1B96835C0);
  v3 = sub_1B964C150();
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 32))(v1 + v2, v0, v3);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
}

void (*Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.completionScore.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C150();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults() + 56);
  *(v3 + 12) = v13;
  sub_1B8DD9078(v1 + v13, v6, &qword_1EBAC2CB0, &qword_1B96835C0);
  v14 = OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v15)
  {
    MEMORY[0x1BFADC0D0](v14);
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v15)
    {
      sub_1B8D9207C(v6, &qword_1EBAC2CB0, &qword_1B96835C0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B9286D48;
}

void sub_1B9286D48(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1B8D9207C(v9 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.hasCompletionScore.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  v6 = OUTLINED_FUNCTION_115(*(v5 + 56));
  sub_1B8DD9078(v6, v7, &qword_1EBAC2CB0, &qword_1B96835C0);
  sub_1B964C150();
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  OUTLINED_FUNCTION_129_2();
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.clearCompletionScore()()
{
  v1 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBAC2CB0, &qword_1B96835C0);
  sub_1B964C150();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.feedbackQuery.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.feedbackQuery.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.serverSideQueryFeatures.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.serverSideQueryFeatures.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.l3BlenderFeatures.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.engagementSignal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA198, L"Z\n\a");
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  v7 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  v8 = OUTLINED_FUNCTION_115(*(v7 + 60));
  sub_1B8DD9078(v8, v9, &qword_1EBACA198, L"Z\n\a");
  v10 = type metadata accessor for Searchfoundation_EngagementSignal(0);
  OUTLINED_FUNCTION_9_2();
  if (!v11)
  {
    return sub_1B92888F0(v1, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v12 = a1 + *(v10 + 40);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v11)
  {
    return sub_1B8D9207C(v1, &qword_1EBACA198, L"Z\n\a");
  }

  return result;
}

uint64_t sub_1B928723C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_EngagementSignal(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B9288954(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.engagementSignal.setter();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.engagementSignal.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_16() + 60);
  sub_1B8D9207C(v1 + v2, &qword_1EBACA198, L"Z\n\a");
  sub_1B92888F0(v0, v1 + v2);
  type metadata accessor for Searchfoundation_EngagementSignal(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.engagementSignal.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA198, L"Z\n\a");
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_EngagementSignal(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults() + 60);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBACA198, L"Z\n\a");
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0;
    *(v10 + 4) = 0;
    v10[3] = MEMORY[0x1E69E7CC0];
    v17 = v10 + *(v7 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBACA198, L"Z\n\a");
    }
  }

  else
  {
    sub_1B92888F0(v6, v10);
  }

  return sub_1B92874AC;
}

void sub_1B92874AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B9288954((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBACA198, L"Z\n\a");
    sub_1B92888F0(v4, v8 + v3);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    sub_1B9288894(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBACA198, L"Z\n\a");
    sub_1B92888F0(v5, v8 + v3);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.hasEngagementSignal.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA198, L"Z\n\a");
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  v6 = OUTLINED_FUNCTION_115(*(v5 + 60));
  sub_1B8DD9078(v6, v7, &qword_1EBACA198, L"Z\n\a");
  type metadata accessor for Searchfoundation_EngagementSignal(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  OUTLINED_FUNCTION_129_2();
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.clearEngagementSignal()()
{
  v1 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  sub_1B8D9207C(v0 + *(v1 + 60), &qword_1EBACA198, L"Z\n\a");
  type metadata accessor for Searchfoundation_EngagementSignal(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.results.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults() + 52);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.unknownFields.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_16() + 52);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t sub_1B928783C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA180);
  __swift_project_value_buffer(v0, qword_1EBACA180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B96511C0;
  v4 = v33 + v3 + v1[14];
  *(v33 + v3) = 1;
  *v4 = "prefix";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v33 + v3 + v2 + v1[14];
  *(v33 + v3 + v2) = 2;
  *v8 = "query";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v33 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "raw_query";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v33 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "completion_score";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v33 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "feedback_query";
  *(v14 + 1) = 14;
  v14[16] = 2;
  *(v14 + 3) = "fbq";
  *(v14 + 4) = 3;
  v14[40] = 2;
  v15 = *MEMORY[0x1E69AADD8];
  v7();
  v16 = v1[14];
  v17 = (v33 + v3 + 5 * v2);
  *v17 = 6;
  v18 = v17 + v16;
  *v18 = "max_age_seconds";
  *(v18 + 1) = 15;
  v18[16] = 2;
  *(v18 + 3) = "max_age";
  *(v18 + 4) = 7;
  v18[40] = 2;
  v7();
  v19 = (v33 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "suggestions_are_blended";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v7();
  v21 = v1[14];
  v22 = (v33 + v3 + 7 * v2);
  *v22 = 8;
  v23 = v22 + v21;
  *v23 = "server_side_query_features";
  *(v23 + 1) = 26;
  v23[16] = 2;
  *(v23 + 3) = "sqf";
  *(v23 + 4) = 3;
  v23[40] = 2;
  v7();
  v24 = v1[14];
  v25 = (v33 + v3 + 8 * v2);
  *v25 = 9;
  v26 = v25 + v24;
  *v26 = "l3_blender_features";
  *(v26 + 1) = 19;
  v26[16] = 2;
  *(v26 + 3) = "l3b";
  *(v26 + 4) = 3;
  v26[40] = 2;
  v7();
  v27 = v1[14];
  v28 = (v33 + v3 + 9 * v2);
  *v28 = 10;
  v29 = v28 + v27;
  *v29 = "engagement_signal";
  *(v29 + 1) = 17;
  v29[16] = 2;
  *(v29 + 3) = "engagement_scores";
  *(v29 + 4) = 17;
  v29[40] = 2;
  v7();
  v30 = (v33 + v3 + 10 * v2);
  v31 = v30 + v1[14];
  *v30 = 51;
  *v31 = "results";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7BF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACA180);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9287E60();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B9287F14();
        break;
      case 10:
        OUTLINED_FUNCTION_9();
        sub_1B9287F98();
        break;
      default:
        if (result == 51)
        {
          OUTLINED_FUNCTION_9();
          sub_1B928804C();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B9287E60()
{
  v0 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults() + 56);
  sub_1B964C150();
  sub_1B8CD2D50(&qword_1ED9C8FD8, MEMORY[0x1E69AA960]);
  return sub_1B964C580();
}

uint64_t sub_1B9287F14()
{
  sub_1B964C260();
  sub_1B964C240();
  return sub_1B964C3B0();
}

uint64_t sub_1B9287F98()
{
  v0 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults() + 60);
  type metadata accessor for Searchfoundation_EngagementSignal(0);
  sub_1B8CD2D50(&qword_1EBACA1A8, type metadata accessor for Searchfoundation_EngagementSignal);
  return sub_1B964C580();
}

uint64_t sub_1B928804C()
{
  type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0);
  sub_1B8CD2D50(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA198, L"Z\n\a");
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v49 - v7;
  v52 = type metadata accessor for Searchfoundation_EngagementSignal(0);
  v8 = OUTLINED_FUNCTION_59_1(v52);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v51 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = sub_1B964C150();
  v20 = OUTLINED_FUNCTION_30_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v27 = v26 - v25;
  v28 = *v0;
  v29 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v30 || (result = OUTLINED_FUNCTION_156_0(), (v2 = v1) == 0))
  {
    v32 = v0[2];
    v33 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v34 || (result = OUTLINED_FUNCTION_156_0(), (v2 = v1) == 0))
    {
      v35 = v0[4];
      v36 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v37 || (result = OUTLINED_FUNCTION_156_0(), (v2 = v1) == 0))
      {
        v50 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
        sub_1B8DD9078(v0 + v50[14], v18, &qword_1EBAC2CB0, &qword_1B96835C0);
        if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
        {
          sub_1B8D9207C(v18, &qword_1EBAC2CB0, &qword_1B96835C0);
        }

        else
        {
          (*(v22 + 32))(v27, v18, v19);
          OUTLINED_FUNCTION_4_40();
          sub_1B8CD2D50(v38, v39);
          v1 = v2;
          sub_1B964C740();
          if (v2)
          {
            return (*(v22 + 8))(v27, v19);
          }

          (*(v22 + 8))(v27, v19);
        }

        if (sub_1B8D99EA8(v0[6], v0[7]))
        {
          v40 = v53;
        }

        else
        {
          v41 = v0[6];
          v42 = v0[7];
          v1 = v2;
          result = sub_1B964C6A0();
          v40 = v53;
          if (v2)
          {
            return result;
          }
        }

        if (!v0[8] || (v1 = v2, result = sub_1B964C6D0(), !v2))
        {
          if (*(v0 + 72) != 1 || (v1 = v2, result = sub_1B964C670(), !v2))
          {
            v43 = v0[10];
            v44 = v0[11];
            OUTLINED_FUNCTION_1();
            if (!v45 || (v1 = v2, result = sub_1B964C700(), !v2))
            {
              if (!*(v0[12] + 16) || (sub_1B964C260(), sub_1B964C240(), v1 = v2, result = sub_1B964C5F0(), !v2))
              {
                sub_1B8DD9078(v0 + v50[15], v40, &qword_1EBACA198, L"Z\n\a");
                if (__swift_getEnumTagSinglePayload(v40, 1, v52) == 1)
                {
                  sub_1B8D9207C(v40, &qword_1EBACA198, L"Z\n\a");
                }

                else
                {
                  v46 = v40;
                  v47 = v51;
                  sub_1B92888F0(v46, v51);
                  sub_1B8CD2D50(&qword_1EBACA1A8, type metadata accessor for Searchfoundation_EngagementSignal);
                  OUTLINED_FUNCTION_18_21();
                  sub_1B964C740();
                  result = sub_1B9288894(v47);
                  if (v1)
                  {
                    return result;
                  }
                }

                if (!*(v0[13] + 16) || (type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0), sub_1B8CD2D50(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult), OUTLINED_FUNCTION_18_21(), result = sub_1B964C730(), !v1))
                {
                  v48 = v0 + v50[13];
                  return sub_1B964C290();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  sub_1B8CD2D50(&qword_1EBACA1B0, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9288724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D50(&qword_1EBACA1E8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92887A4(uint64_t a1)
{
  v2 = sub_1B8CD2D50(&qword_1EBAC3560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9288814()
{
  sub_1B8CD2D50(&qword_1EBAC3560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults);

  return sub_1B964C5D0();
}

uint64_t sub_1B9288894(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_EngagementSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B92888F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_EngagementSignal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9288954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_EngagementSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9288B00()
{
  sub_1B9288C98();
  if (v0 <= 0x3F)
  {
    sub_1B9288CF8(319, &qword_1ED9C8FA8, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B9288CF8(319, &qword_1ED9C8FD0, MEMORY[0x1E69AA960], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B9288CF8(319, &qword_1EBACA1E0, type metadata accessor for Searchfoundation_EngagementSignal, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B9288C98()
{
  if (!qword_1EBACA1D8)
  {
    v0 = sub_1B964C7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBACA1D8);
    }
  }
}

void sub_1B9288CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_23_16()
{

  return type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
}

uint64_t sub_1B9288DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929379C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Spotlight_V1alpha_TopicType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9288ED0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Spotlight_V1alpha_TopicType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9288F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9293844();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Spotlight_V1alpha_SectionStatusCode.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B9289010@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Spotlight_V1alpha_SectionStatusCode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9289060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92937F0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Spotlight_V1alpha_StatusCode.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B9289150@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Spotlight_V1alpha_StatusCode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest.topics.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest(v7) + 24);
  OUTLINED_FUNCTION_100_0();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(a1 + v11) = qword_1ED9D38C8;
    v12 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_49();
    OUTLINED_FUNCTION_182();
    return sub_1B9289920();
  }

  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_3_49();
  OUTLINED_FUNCTION_116_5();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v7);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v10 + v17) = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_49();
    OUTLINED_FUNCTION_246();
    sub_1B9289920();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B9289498()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9289ABC();
    sub_1B8D9207C(v4 + v3, &qword_1EBABED40, &qword_1B96809F0);
    OUTLINED_FUNCTION_3_49();
    sub_1B9289920();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_22_20();
    sub_1B9289B14();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBABED40, &qword_1B96809F0);
    OUTLINED_FUNCTION_3_49();
    sub_1B9289920();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest(0);
  OUTLINED_FUNCTION_163_2(v1);
  v2 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_TopicContext.topic.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext(v7) + 24);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    v11 = *(v9 + 28);
    type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
    v12 = OUTLINED_FUNCTION_40_3();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = a1 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F78, &unk_1B964D770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_64();
    OUTLINED_FUNCTION_182();
    return sub_1B9289920();
  }

  return result;
}

uint64_t sub_1B92897B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B9289ABC();
  return a7(v7);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_TopicContext.topic.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8F78, &unk_1B964D770);
  OUTLINED_FUNCTION_1_64();
  OUTLINED_FUNCTION_116_5();
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  v3 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  v4 = *(v3 + 28);
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v1 + *(v3 + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9289920()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

void Apple_Parsec_Spotlight_V1alpha_TopicContext.topic.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    v17 = *(v8 + 28);
    type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = v10 + *(v8 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8F78, &unk_1B964D770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_64();
    OUTLINED_FUNCTION_246();
    sub_1B9289920();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9289ABC()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B9289B14()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B9289BA4()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 24);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v10 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v13, v14, v15);
  return v12;
}

uint64_t sub_1B9289C94()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 24), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B9289D48()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9289DD0()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_TopicContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_TopicContext.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext(0);
  OUTLINED_FUNCTION_163_2(v1);
  v2 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Spotlight_V1alpha_Topic.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.id.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.id.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.detail.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v0) + 28);
  return sub_1B8D92024();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.detail.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v2) + 28);

  return sub_1B928A024(v0, v3);
}

uint64_t sub_1B928A024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F68, &qword_1B964D760);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.detail.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.flight.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v7) + 28);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_115_10();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8F68, &qword_1B964D760);
LABEL_6:
    *a1 = 0;
    v11 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(0);
    return OUTLINED_FUNCTION_163_2(v11);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_2_47();
    sub_1B9289B14();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_24_22();
  OUTLINED_FUNCTION_182();
  return sub_1B9289920();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Apple_Parsec_Spotlight_V1alpha_Topic.flight.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_45_13(v11);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F68, &qword_1B964D760);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_24_22();
      OUTLINED_FUNCTION_177_1();
      sub_1B9289920();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_2_47();
    sub_1B9289B14();
  }

  *v10 = 0;
  v14 = v10 + *(v8 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.weather.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v7) + 28);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_115_10();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8F68, &qword_1B964D760);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_182();
      return sub_1B9289920();
    }

    OUTLINED_FUNCTION_2_47();
    sub_1B9289B14();
  }

  *a1 = 0;
  v12 = a1 + *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Spotlight_V1alpha_Topic.weather.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_45_13(v11);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F68, &qword_1B964D760);
LABEL_7:
    *v10 = 0;
    v14 = v10 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_2_47();
    sub_1B9289B14();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_177_1();
  sub_1B9289920();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.sports.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v7) + 28);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_115_10();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8F68, &qword_1B964D760);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_21_18();
      OUTLINED_FUNCTION_182();
      return sub_1B9289920();
    }

    OUTLINED_FUNCTION_2_47();
    sub_1B9289B14();
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v12 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(0);
  return OUTLINED_FUNCTION_163_2(v12);
}

uint64_t sub_1B928A724(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0) + 28);
  sub_1B8D9207C(v2 + v4, &qword_1EBAB8F68, &qword_1B964D760);
  sub_1B9289920();
  OUTLINED_FUNCTION_115_10();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v2 + v4, 0, 1, a2);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Apple_Parsec_Spotlight_V1alpha_Topic.sports.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_45_13(v11);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F68, &qword_1B964D760);
LABEL_7:
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v14 = v10 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_2_47();
    sub_1B9289B14();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_18();
  OUTLINED_FUNCTION_177_1();
  sub_1B9289920();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B928A96C()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = *(*v0 + 10);
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9289ABC();
    sub_1B8D9207C(v6 + v3, &qword_1EBAB8F68, &qword_1B964D760);
    sub_1B9289920();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_110_7();
    sub_1B9289B14();
  }

  else
  {
    sub_1B8D9207C(v6 + v3, &qword_1EBAB8F68, &qword_1B964D760);
    sub_1B9289920();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_110_7();
  }

  free(v1);
  free(v5);
  free(v4);
  OUTLINED_FUNCTION_283();

  free(v8);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v54 = v1;
  v51 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(0);
  v2 = OUTLINED_FUNCTION_59_1(v51);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v53 = (v6 - v5);
  v50 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(0);
  v7 = OUTLINED_FUNCTION_59_1(v50);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v52 = (v11 - v10);
  v12 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(0);
  v13 = OUTLINED_FUNCTION_59_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  v16 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  v17 = OUTLINED_FUNCTION_59_1(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v49 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v49 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA330, &qword_1B96B2708);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v49 - v33;
  v35 = *(v32 + 56);
  sub_1B9289ABC();
  sub_1B9289ABC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_19_20();
      sub_1B9289ABC();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_23_17();
        v37 = v52;
        sub_1B9289920();
        if (*v25 == *v37 && v25[1] == v37[1])
        {
          v38 = *(v50 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_76();
          sub_1B8CD2D98(v39, v40);
          sub_1B964C850();
          OUTLINED_FUNCTION_7_32();
          sub_1B9289B14();
        }

        else
        {
          OUTLINED_FUNCTION_7_32();
          sub_1B9289B14();
        }

        OUTLINED_FUNCTION_7_32();
LABEL_25:
        sub_1B9289B14();
        OUTLINED_FUNCTION_2_47();
        sub_1B9289B14();
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_7_32();
    }

    else
    {
      OUTLINED_FUNCTION_19_20();
      sub_1B9289ABC();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_21_18();
        v41 = v53;
        sub_1B9289920();
        v42 = *v22 == *v41 && v22[1] == v41[1];
        if (v42 || (sub_1B964C9F0() & 1) != 0)
        {
          v43 = *(v51 + 20);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_76();
          sub_1B8CD2D98(v44, v45);
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_57_11();
        sub_1B9289B14();
        goto LABEL_25;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_20();
    sub_1B9289ABC();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_24_22();
      sub_1B9289920();
      if (*v27 == *v0)
      {
        v46 = *(v12 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_76();
        sub_1B8CD2D98(v47, v48);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_5_33();
      sub_1B9289B14();
      OUTLINED_FUNCTION_5_33();
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_5_33();
  }

  sub_1B9289B14();
  sub_1B8D9207C(v34, &qword_1EBACA330, &qword_1B96B2708);
LABEL_26:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v2 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_76();
  sub_1B8CD2D98(v3, v4);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_76();
  sub_1B8CD2D98(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_76();
  sub_1B8CD2D98(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail.requestedEntityType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail.requestedEntityType.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.sections.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B928B558()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B928B5E0()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.contextID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.contextID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.statusCode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.statusCode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.identifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.feedback.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.feedback.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.normalizedTopic.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v7) + 44);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    v11 = *(v9 + 28);
    type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
    v12 = OUTLINED_FUNCTION_40_3();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = a1 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F78, &unk_1B964D770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_64();
    OUTLINED_FUNCTION_182();
    return sub_1B9289920();
  }

  return result;
}