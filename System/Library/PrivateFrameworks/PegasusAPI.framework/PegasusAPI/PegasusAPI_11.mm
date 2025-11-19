float Argos_Protos_Productdatapb_ProductNetEdge.score.getter()
{
  v1 = *(v0 + *(type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge(0) + 20)) + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score;
  OUTLINED_FUNCTION_6_2();
  return *v1;
}

uint64_t Argos_Protos_Productdatapb_ProductNetEdge.score.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DCC12C(v9);
    *(v2 + v4) = v7;
  }

  v10 = (v7 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  result = OUTLINED_FUNCTION_18();
  *v10 = a1;
  return result;
}

uint64_t Argos_Protos_Productdatapb_ProductNetEdge.score.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  v3 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge(0);
  OUTLINED_FUNCTION_181_0(*(v3 + 20));
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DC1140(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DCC12C(v11);
    *(v9 + v8) = v7;
  }

  v12 = (v7 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  OUTLINED_FUNCTION_18();
  *v12 = v2;

  free(v1);
}

uint64_t _s10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t _s10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t sub_1B8DC1314@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Argos_Protos_Productdatapb_ProductIngredient.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8DC1458@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v3 = v2(0);
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t sub_1B8DC14B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9D00);
  __swift_project_value_buffer(v0, qword_1EBAB9D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "attributes";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nutrition_facts_per_serving";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "nutrition_facts_per_day";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "nutrition_facts_per_100_gramms";
  *(v15 + 1) = 30;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

void Argos_Protos_Productdatapb_ProductAttribute.decodeMessage<A>(decoder:)()
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
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8DC9C84();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8DC1854();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8DCD8E4();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8DC18F4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DC1854()
{
  type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute(0);
  sub_1B8DCDD6C(&qword_1EBAB9F38, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute);
  return sub_1B964C570();
}

uint64_t sub_1B8DC18F4()
{
  type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute(0);
  sub_1B8DCDD6C(&qword_1EBAB9F38, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute);
  return sub_1B964C570();
}

uint64_t Argos_Protos_Productdatapb_ProductAttribute.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_190_1(), OUTLINED_FUNCTION_12_4(), sub_1B8DCDD6C(v3, v4), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2[1] + 16) || (OUTLINED_FUNCTION_190_1(), OUTLINED_FUNCTION_12_4(), sub_1B8DCDD6C(v6, v7), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_175_1(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      if (!*(v2[2] + 16) || (OUTLINED_FUNCTION_190_1(), OUTLINED_FUNCTION_12_4(), sub_1B8DCDD6C(v8, v9), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        if (!*(v2[3] + 16) || (OUTLINED_FUNCTION_190_1(), OUTLINED_FUNCTION_12_4(), sub_1B8DCDD6C(v10, v11), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
        {
          v12 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductAttribute.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v4 = *v3;
  sub_1B8D68E00();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v2[1];
  v7 = v1[1];
  sub_1B8D68E00();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v2[2];
  v10 = v1[2];
  sub_1B8D68E00();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v2[3];
  v13 = v1[3];
  sub_1B8D68E00();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v16, v17);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DC1C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA2B0, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC1CF4(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA090, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC1D64()
{
  sub_1B8DCDD6C(&qword_1EBABA090, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC1DE4()
{
  result = MEMORY[0x1BFADC850](0x756269727474412ELL, 0xEA00000000006574);
  qword_1EBAB9D18 = 0xD00000000000002BLL;
  unk_1EBAB9D20 = 0x80000001B96EA590;
  return result;
}

uint64_t Argos_Protos_Productdatapb_ProductAttribute.Attribute.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value(0), sub_1B8DCDD6C(&qword_1EBAB9F48, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_175_1(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v7 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8DC20A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA2A8, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC2120(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9F38, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC2190()
{
  sub_1B8DCDD6C(&qword_1EBAB9F38, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC2210()
{
  if (qword_1EBAB5F00 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBAB9D18;
  v2 = unk_1EBAB9D20;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1BFADC850](0x65756C61562ELL, 0xE600000000000000);

  qword_1EBAB9D40 = v1;
  *algn_1EBAB9D48 = v2;
  return result;
}

uint64_t sub_1B8DC2354(uint64_t a1, uint64_t a2)
{
  result = sub_1B964C520();
  if (v2)
  {
  }

  if (v8)
  {
    if (*(a2 + 16) == 255)
    {
      v5 = -1;
    }

    else
    {
      sub_1B964C3D0();
      v5 = *(a2 + 16);
    }

    v6 = *a2;
    v7 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    return sub_1B8D525DC(v6, v7, v5);
  }

  return result;
}

uint64_t Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value.traverse<A>(visitor:)()
{
  v2 = *(v0 + 16);
  if (v2 == 255 || ((v2 & 1) == 0 ? (result = sub_1B8DC2578(v0)) : (result = sub_1B8DC25C4(v0)), !v1))
  {
    v4 = v0 + *(type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DC2578(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return sub_1B964C700();
  }

  return result;
}

uint64_t sub_1B8DC25C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *result;
    return sub_1B964C6B0();
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v2 != 255)
  {
    v55[0] = *v0;
    v55[1] = v1;
    v56 = v2;
    if (v6 != 255)
    {
      v53[0] = v5;
      v53[1] = v4;
      v7 = v6 & 1;
      v54 = v6 & 1;
      v8 = OUTLINED_FUNCTION_42_0();
      sub_1B8D52584(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_259();
      sub_1B8D52584(v11, v12, v6);
      v13 = OUTLINED_FUNCTION_42_0();
      sub_1B8D52584(v13, v14, v15);
      v16 = static Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value.OneOf_Type.== infix(_:_:)(v55, v53);
      v17 = OUTLINED_FUNCTION_259();
      sub_1B8D52574(v17, v18, v7);
      v19 = OUTLINED_FUNCTION_461();
      sub_1B8D52574(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_42_0();
      sub_1B8D525DC(v22, v23, v24);
      if (v16)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v29 = OUTLINED_FUNCTION_42_0();
    sub_1B8D52584(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_259();
    sub_1B8D52584(v32, v33, 255);
    v34 = OUTLINED_FUNCTION_42_0();
    sub_1B8D52584(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_461();
    sub_1B8D52574(v37, v38, v39);
LABEL_8:
    v40 = OUTLINED_FUNCTION_42_0();
    sub_1B8D525DC(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_259();
    sub_1B8D525DC(v43, v44, v6);
    return 0;
  }

  v25 = OUTLINED_FUNCTION_461();
  sub_1B8D52584(v25, v26, 255);
  if (v6 != 255)
  {
    v27 = OUTLINED_FUNCTION_259();
    sub_1B8D52584(v27, v28, v6);
    goto LABEL_8;
  }

  v46 = OUTLINED_FUNCTION_259();
  sub_1B8D52584(v46, v47, 255);
  v48 = OUTLINED_FUNCTION_461();
  sub_1B8D525DC(v48, v49, 255);
LABEL_11:
  v50 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v51, v52);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DC282C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA2A0, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC28AC(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9F48, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC291C()
{
  sub_1B8DCDD6C(&qword_1EBAB9F48, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC29B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9D68);
  __swift_project_value_buffer(v0, qword_1EBAB9D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "raw_categories";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "categories";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Productdatapb_ProductCategory.decodeMessage<A>(decoder:)()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Argos_Protos_Productdatapb_ProductCategory.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
    {
      v4 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductCategory(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductCategory.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  if ((sub_1B8D6123C(v3, *v4) & 1) == 0 || (sub_1B8D6123C(*(v2 + 8), *(v1 + 8)) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Argos_Protos_Productdatapb_ProductCategory(0);
  OUTLINED_FUNCTION_188_1(v5);
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DC2DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA298, type metadata accessor for Argos_Protos_Productdatapb_ProductCategory);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC2E3C(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA0C8, type metadata accessor for Argos_Protos_Productdatapb_ProductCategory);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC2EAC()
{
  sub_1B8DCDD6C(&qword_1EBABA0C8, type metadata accessor for Argos_Protos_Productdatapb_ProductCategory);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC2F44()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9D80);
  __swift_project_value_buffer(v0, qword_1EBAB9D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1B96511A0;
  v4 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v43 + v3 + v2 + v1[14];
  *(v43 + v3 + v2) = 2;
  *v8 = "description";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v43 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "brand";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v43 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "price";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v43 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "sku";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v43 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "gtin";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v43 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 17;
  *v18 = "web_url";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v19 = *MEMORY[0x1E69AADE8];
  v7();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "cluster_variant_id";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v7();
  v22 = (v43 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 12;
  *v23 = "retailer_logo_url";
  *(v23 + 1) = 17;
  v23[16] = 2;
  v7();
  v24 = (v43 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 7;
  *v25 = "product_category";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v7();
  v26 = (v43 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 8;
  *v27 = "product_attribute";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v7();
  v28 = (v43 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "ingredient_string";
  *(v29 + 1) = 17;
  v29[16] = 2;
  v7();
  v30 = (v43 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "ingredients";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v7();
  v32 = (v43 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 16;
  *v33 = "msrp";
  *(v33 + 1) = 4;
  v33[16] = 2;
  v7();
  v34 = (v43 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 18;
  *v35 = "metadata_type";
  *(v35 + 1) = 13;
  v35[16] = 2;
  v7();
  v36 = (v43 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 19;
  *v37 = "metadata_source";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v7();
  v38 = (v43 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 20;
  *v39 = "item_condition";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v7();
  v40 = (v43 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 21;
  *v41 = "item_avaliability";
  *(v41 + 1) = 17;
  v41[16] = 2;
  v7();
  return sub_1B964C760();
}

void *sub_1B8DC3554()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__price;
  v2 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__sku);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__gtin) = MEMORY[0x1E69E7CC0];
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__webURL);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__clusterVariantID);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__retailerLogoURL);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__productCategory;
  v9 = type metadata accessor for Argos_Protos_Productdatapb_ProductCategory(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__productAttribute;
  v11 = type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredientString);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredients) = v4;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__msrp, 1, 1, v2);
  v13 = v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataType;
  *v13 = 0;
  v13[8] = 1;
  v14 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataSource);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemCondition;
  *v15 = 0;
  v15[8] = 1;
  v16 = v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemAvaliability;
  *v16 = 0;
  v16[8] = 1;
  return v0;
}

void *sub_1B8DC36E0(void *a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F10, &unk_1B96511E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v89 = v78 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F08, &qword_1B96511D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v86 = v78 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F00, &qword_1B96511D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v93 = v78 - v8;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__price;
  v78[1] = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__price;
  v10 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__sku);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v79 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__gtin;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__gtin) = MEMORY[0x1E69E7CC0];
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__webURL);
  v80 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__webURL);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__clusterVariantID);
  v81 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__clusterVariantID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__retailerLogoURL);
  v82 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__retailerLogoURL);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__productCategory;
  v83 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__productCategory;
  v16 = type metadata accessor for Argos_Protos_Productdatapb_ProductCategory(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__productAttribute;
  v18 = type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredientString);
  v84 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredientString);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v85 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredients;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredients) = MEMORY[0x1E69E7CC0];
  v87 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__msrp;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__msrp, 1, 1, v10);
  v20 = v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataType;
  v88 = v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataType;
  *v20 = 0;
  v20[8] = 1;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataSource);
  v90 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataSource);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemCondition;
  v91 = v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemCondition;
  *v22 = 0;
  v22[8] = 1;
  v23 = v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemAvaliability;
  v92 = v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemAvaliability;
  *v23 = 0;
  v23[8] = 1;
  swift_beginAccess();
  v25 = a1[2];
  v24 = a1[3];
  swift_beginAccess();
  v1[2] = v25;
  v1[3] = v24;
  swift_beginAccess();
  v26 = a1[4];
  v27 = a1[5];
  swift_beginAccess();
  v1[4] = v26;
  v1[5] = v27;

  swift_beginAccess();
  v29 = a1[6];
  v28 = a1[7];
  swift_beginAccess();
  v30 = v1[7];
  v1[6] = v29;
  v1[7] = v28;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__sku);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  swift_beginAccess();
  v34 = v11[1];
  *v11 = v33;
  v11[1] = v32;

  v35 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__gtin;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = v79;
  swift_beginAccess();
  v38 = *(v1 + v37);
  *(v1 + v37) = v36;

  v39 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__webURL);
  swift_beginAccess();
  v41 = *v39;
  v40 = v39[1];
  v42 = v80;
  swift_beginAccess();
  v43 = v42[1];
  *v42 = v41;
  v42[1] = v40;

  v44 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__clusterVariantID);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  v47 = v81;
  swift_beginAccess();
  v48 = v47[1];
  *v47 = v46;
  v47[1] = v45;

  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__retailerLogoURL);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  v52 = v82;
  swift_beginAccess();
  v53 = v52[1];
  *v52 = v51;
  v52[1] = v50;

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
  v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredientString);
  swift_beginAccess();
  v56 = *v54;
  v55 = v54[1];
  v57 = v84;
  swift_beginAccess();
  v58 = v57[1];
  *v57 = v56;
  v57[1] = v55;

  v59 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredients;
  swift_beginAccess();
  v60 = *(a1 + v59);
  v61 = v85;
  swift_beginAccess();
  v62 = *(v1 + v61);
  *(v1 + v61) = v60;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v63 = a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataType;
  swift_beginAccess();
  v64 = *v63;
  LOBYTE(v63) = v63[8];
  v65 = v88;
  swift_beginAccess();
  *v65 = v64;
  v65[8] = v63;
  v66 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataSource);
  swift_beginAccess();
  v68 = *v66;
  v67 = v66[1];
  v69 = v90;
  swift_beginAccess();
  v70 = v69[1];
  *v69 = v68;
  v69[1] = v67;

  v71 = a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemCondition;
  swift_beginAccess();
  v72 = *v71;
  LOBYTE(v71) = v71[8];
  v73 = v91;
  swift_beginAccess();
  *v73 = v72;
  v73[8] = v71;
  v74 = a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemAvaliability;
  swift_beginAccess();
  v75 = *v74;
  LOBYTE(v74) = v74[8];

  v76 = v92;
  swift_beginAccess();
  *v76 = v75;
  v76[8] = v74;
  return v1;
}

uint64_t sub_1B8DC3FF4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8DC404C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8DC40A4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *sub_1B8DC41F8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__price, &qword_1EBAB9F00, &qword_1B96511D0);
  v4 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__sku + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__gtin);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__webURL + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__clusterVariantID + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__retailerLogoURL + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__productCategory, &qword_1EBAB9F08, &qword_1B96511D8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__productAttribute, &qword_1EBAB9F10, &unk_1B96511E0);
  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredientString + 8);

  v10 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredients);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__msrp, &qword_1EBAB9F00, &qword_1B96511D0);
  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataSource + 8);

  return v0;
}

uint64_t sub_1B8DC4350()
{
  v0 = sub_1B8DC41F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B8DC43FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C();
        continue;
      case 2:
        sub_1B8DC46F4();
        continue;
      case 3:
        sub_1B8DC4778();
        continue;
      case 4:
        sub_1B8DC47FC();
        continue;
      case 5:
      case 11:
      case 12:
      case 13:
      case 17:
      case 19:
        sub_1B8DC4D24();
        continue;
      case 7:
        sub_1B8DC48D8();
        continue;
      case 8:
        sub_1B8DC49B4();
        continue;
      case 10:
        sub_1B8DC4A90();
        continue;
      case 14:
        sub_1B8DC4B6C();
        continue;
      case 16:
        sub_1B8DC4C48();
        continue;
      case 18:
        v11 = sub_1B8DD0404;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataType;
        goto LABEL_14;
      case 20:
        v11 = sub_1B8DD03B0;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemCondition;
        goto LABEL_14;
      case 21:
        v11 = sub_1B8DD035C;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemAvaliability;
LABEL_14:
        sub_1B8DC4D90(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DC46F4()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8DC4778()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8DC47FC()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0);
  sub_1B8DCDD6C(&qword_1EBABA0F0, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DC48D8()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductCategory(0);
  sub_1B8DCDD6C(&qword_1EBABA0C8, type metadata accessor for Argos_Protos_Productdatapb_ProductCategory);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DC49B4()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute(0);
  sub_1B8DCDD6C(&qword_1EBABA090, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DC4A90()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  sub_1B8DCDD6C(&qword_1EBABA108, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DC4B6C()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient(0);
  sub_1B8DCDD6C(&qword_1EBAB9FD8, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DC4C48()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0);
  sub_1B8DCDD6C(&qword_1EBABA0F0, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DC4D24()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_12();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8DC4D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8DC4E64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F10, &unk_1B96511E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = v69 - v5;
  v74 = type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute(0);
  v6 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v71 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F08, &qword_1B96511D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = v69 - v10;
  v73 = type metadata accessor for Argos_Protos_Productdatapb_ProductCategory(0);
  v11 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v76 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F00, &qword_1B96511D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v69 - v17;
  v83 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0);
  v19 = *(*(v83 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v83);
  v69[1] = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  swift_beginAccess();
  v22 = a1[3];
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = a1[3];

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v25 = a1[5];
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = a1[5];

    sub_1B964C700();
    if (!v1)
    {

      goto LABEL_11;
    }
  }

LABEL_11:
  swift_beginAccess();
  v28 = a1[7];
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = a1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = a1[7];

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v18, 1, v83) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAB9F00, &qword_1B96511D0);
    v32 = v1;
  }

  else
  {
    sub_1B8DC3FF4();
    sub_1B8DCDD6C(&qword_1EBABA0F0, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price);
    sub_1B964C740();
    v32 = v1;
    if (v1)
    {
      return sub_1B8DC40A4();
    }

    sub_1B8DC40A4();
  }

  v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__sku);
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v34 & 0xFFFFFFFFFFFFLL;
  }

  v37 = v75;
  if (v36)
  {

    sub_1B964C700();
    if (v32)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v37, 1, v73) == 1)
  {
    sub_1B8D9207C(v37, &qword_1EBAB9F08, &qword_1B96511D8);
    v38 = v74;
  }

  else
  {
    sub_1B8DC3FF4();
    sub_1B8DCDD6C(&qword_1EBABA0C8, type metadata accessor for Argos_Protos_Productdatapb_ProductCategory);
    sub_1B964C740();
    v38 = v74;
    if (v32)
    {
      return sub_1B8DC40A4();
    }

    sub_1B8DC40A4();
  }

  swift_beginAccess();
  v39 = v72;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v39, 1, v38) == 1)
  {
    sub_1B8D9207C(v39, &qword_1EBAB9F10, &unk_1B96511E0);
    goto LABEL_36;
  }

  sub_1B8DC3FF4();
  sub_1B8DCDD6C(&qword_1EBABA090, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute);
  sub_1B964C740();
  if (v32)
  {
    return sub_1B8DC40A4();
  }

  sub_1B8DC40A4();
LABEL_36:
  v40 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__gtin;
  swift_beginAccess();
  if (*(*(a1 + v40) + 16))
  {
    type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
    sub_1B8DCDD6C(&qword_1EBABA108, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);

    sub_1B964C730();
    if (v32)
    {
    }
  }

  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__clusterVariantID);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {

    sub_1B964C700();
    if (!v32)
    {

      goto LABEL_44;
    }
  }

LABEL_44:
  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__retailerLogoURL);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {

    sub_1B964C700();
    if (v32)
    {
    }
  }

  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredientString);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52 || (, sub_1B964C700(), result = , !v32))
  {
    v53 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredients;
    swift_beginAccess();
    if (!*(*(a1 + v53) + 16) || (type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient(0), sub_1B8DCDD6C(&qword_1EBAB9FD8, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient), , sub_1B964C730(), result = , !v32))
    {
      swift_beginAccess();
      v54 = v70;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v54, 1, v83) == 1)
      {
        sub_1B8D9207C(v54, &qword_1EBAB9F00, &qword_1B96511D0);
      }

      else
      {
        sub_1B8DC3FF4();
        sub_1B8DCDD6C(&qword_1EBABA0F0, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price);
        sub_1B964C740();
        result = sub_1B8DC40A4();
        if (v32)
        {
          return result;
        }
      }

      v55 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__webURL);
      swift_beginAccess();
      v56 = *v55;
      v57 = v55[1];
      v58 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v58 = v56 & 0xFFFFFFFFFFFFLL;
      }

      if (!v58 || (, sub_1B964C700(), result = , !v32))
      {
        v59 = a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataType;
        swift_beginAccess();
        if (!*v59 || (v60 = v59[8], v81 = *v59, v82 = v60, sub_1B8DD0404(), result = sub_1B964C680(), !v32))
        {
          v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataSource);
          swift_beginAccess();
          v62 = *v61;
          v63 = v61[1];
          v64 = HIBYTE(v63) & 0xF;
          if ((v63 & 0x2000000000000000) == 0)
          {
            v64 = v62 & 0xFFFFFFFFFFFFLL;
          }

          if (!v64 || (, sub_1B964C700(), result = , !v32))
          {
            v65 = a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemCondition;
            swift_beginAccess();
            if (!*v65 || (v66 = v65[8], v79 = *v65, v80 = v66, sub_1B8DD03B0(), result = sub_1B964C680(), !v32))
            {
              v67 = a1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemAvaliability;
              result = swift_beginAccess();
              if (*v67)
              {
                v68 = v67[8];
                v77 = *v67;
                v78 = v68;
                sub_1B8DD035C();
                return sub_1B964C680();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B8DC5BD0()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_139_1();
  v208 = type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute(v2);
  v3 = OUTLINED_FUNCTION_59_1(v208);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v204 = v7 - v6;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA2D8, &qword_1B9652FC0);
  OUTLINED_FUNCTION_59_1(v207);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v209 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F10, &unk_1B96511E0);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  v205 = v16 - v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  v214 = &v200 - v19;
  v212 = type metadata accessor for Argos_Protos_Productdatapb_ProductCategory(0);
  v20 = OUTLINED_FUNCTION_59_1(v212);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v206 = (v24 - v23);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA2E0, &qword_1B9652FC8);
  OUTLINED_FUNCTION_59_1(v211);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_185();
  v213 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F08, &qword_1B96511D8);
  v30 = OUTLINED_FUNCTION_183(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66();
  v210 = (v33 - v34);
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  v215 = &v200 - v36;
  v218 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0);
  v37 = OUTLINED_FUNCTION_59_1(v218);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_66();
  v42 = (v40 - v41);
  MEMORY[0x1EEE9AC00](v43);
  v216 = &v200 - v44;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA2E8, &unk_1B9652FD0);
  v45 = OUTLINED_FUNCTION_59_1(v217);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_66();
  v50 = v48 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v200 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F00, &qword_1B96511D0);
  v55 = OUTLINED_FUNCTION_183(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_66();
  v202 = (v58 - v59);
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v60);
  v203 = &v200 - v61;
  OUTLINED_FUNCTION_230();
  v63 = MEMORY[0x1EEE9AC00](v62);
  v65 = (&v200 - v64);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v200 - v66;
  OUTLINED_FUNCTION_521();
  v68 = v1[2];
  v69 = v1[3];
  OUTLINED_FUNCTION_521();
  v70 = v68 == v0[2] && v69 == v0[3];
  if (!v70)
  {
    OUTLINED_FUNCTION_696();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  OUTLINED_FUNCTION_521();
  v71 = v1[4];
  v72 = v1[5];
  OUTLINED_FUNCTION_521();
  if (v71 != v0[4] || v72 != v0[5])
  {
    OUTLINED_FUNCTION_696();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  OUTLINED_FUNCTION_521();
  v74 = v1[6];
  v75 = v1[7];
  OUTLINED_FUNCTION_521();
  if (v74 != v0[6] || v75 != v0[7])
  {
    OUTLINED_FUNCTION_696();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  v200 = v42;
  v201 = v50;
  v77 = v0;
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v78 = *(v217 + 48);
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  v79 = v218;
  OUTLINED_FUNCTION_81(v53, 1);
  if (v70)
  {

    sub_1B8D9207C(v67, &qword_1EBAB9F00, &qword_1B96511D0);
    OUTLINED_FUNCTION_37_0(&v53[v78]);
    if (v70)
    {
      sub_1B8D9207C(v53, &qword_1EBAB9F00, &qword_1B96511D0);
      goto LABEL_21;
    }

LABEL_55:
    v116 = &qword_1EBABA2E8;
    v117 = &unk_1B9652FD0;
    v118 = v53;
LABEL_66:
    sub_1B8D9207C(v118, v116, v117);
    goto LABEL_67;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v53[v78]);
  if (v115)
  {

    sub_1B8D9207C(v67, &qword_1EBAB9F00, &qword_1B96511D0);
    OUTLINED_FUNCTION_108_1();
    sub_1B8DC40A4();
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_3_4();
  v119 = v216;
  sub_1B8DC3FF4();
  if (*v65 != *v119 || (v65[1] == v119[1] ? (v120 = v65[2] == v119[2]) : (v120 = 0), !v120 && (sub_1B964C9F0() & 1) == 0))
  {

    OUTLINED_FUNCTION_183_1();
    sub_1B8D9207C(v125, v126, v127);
    OUTLINED_FUNCTION_36_0();
    sub_1B8DC40A4();
    OUTLINED_FUNCTION_259();
    sub_1B8DC40A4();
LABEL_65:
    OUTLINED_FUNCTION_183_1();
    goto LABEL_66;
  }

  v121 = *(v79 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v122, v123);

  OUTLINED_FUNCTION_91_0();
  v124 = sub_1B964C850();
  sub_1B8D9207C(v67, &qword_1EBAB9F00, &qword_1B96511D0);
  OUTLINED_FUNCTION_36_0();
  sub_1B8DC40A4();
  OUTLINED_FUNCTION_259();
  sub_1B8DC40A4();
  sub_1B8D9207C(v53, &qword_1EBAB9F00, &qword_1B96511D0);
  if ((v124 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_21:
  v80 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__sku);
  OUTLINED_FUNCTION_79_1();
  v81 = *v80;
  v82 = v80[1];
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_174_0();
  v84 = v70 && v82 == v83;
  if (!v84 && (OUTLINED_FUNCTION_133_1() & 1) == 0)
  {
    goto LABEL_67;
  }

  v85 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__gtin;
  OUTLINED_FUNCTION_521();
  v86 = *(v1 + v85);
  v87 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__gtin;
  OUTLINED_FUNCTION_521();
  v88 = *(v77 + v87);

  OUTLINED_FUNCTION_696();
  sub_1B8D86460();
  v90 = v89;

  if ((v90 & 1) == 0)
  {
    goto LABEL_67;
  }

  v91 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__webURL);
  OUTLINED_FUNCTION_79_1();
  v92 = *v91;
  v93 = v91[1];
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_174_0();
  v95 = v70 && v93 == v94;
  if (!v95 && (OUTLINED_FUNCTION_133_1() & 1) == 0)
  {
    goto LABEL_67;
  }

  v96 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__clusterVariantID);
  OUTLINED_FUNCTION_79_1();
  v97 = *v96;
  v98 = v96[1];
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_174_0();
  v100 = v70 && v98 == v99;
  if (!v100 && (OUTLINED_FUNCTION_133_1() & 1) == 0)
  {
    goto LABEL_67;
  }

  v101 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__retailerLogoURL);
  OUTLINED_FUNCTION_79_1();
  v102 = *v101;
  v103 = v101[1];
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_174_0();
  v105 = v70 && v103 == v104;
  if (!v105 && (OUTLINED_FUNCTION_133_1() & 1) == 0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v106 = v215;
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v107 = *(v211 + 48);
  v108 = v213;
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  v109 = v212;
  OUTLINED_FUNCTION_81(v108, 1);
  if (v70)
  {
    sub_1B8D9207C(v106, &qword_1EBAB9F08, &qword_1B96511D8);
    OUTLINED_FUNCTION_37_0(v108 + v107);
    v110 = v214;
    if (v70)
    {
      sub_1B8D9207C(v108, &qword_1EBAB9F08, &qword_1B96511D8);
      goto LABEL_47;
    }

LABEL_73:
    v116 = &qword_1EBABA2E0;
    v117 = &qword_1B9652FC8;
    v118 = v108;
    goto LABEL_66;
  }

  v129 = v210;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v108 + v107);
  v110 = v214;
  if (v130)
  {
    sub_1B8D9207C(v215, &qword_1EBAB9F08, &qword_1B96511D8);
    sub_1B8DC40A4();
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_10_3();
  v131 = v206;
  sub_1B8DC3FF4();
  v132 = sub_1B8D6123C(*v129, *v131);
  if ((v132 & 1) == 0 || (sub_1B8D6123C(v129[1], v131[1]) & 1) == 0)
  {
    sub_1B8DC40A4();
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v137, v138, v139);
    sub_1B8DC40A4();
    OUTLINED_FUNCTION_112_1();
    goto LABEL_66;
  }

  v133 = *(v109 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v134, v135);
  v136 = sub_1B964C850();
  sub_1B8DC40A4();
  OUTLINED_FUNCTION_189(v215);
  OUTLINED_FUNCTION_236();
  sub_1B8DC40A4();
  OUTLINED_FUNCTION_189(v108);
  if ((v136 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_47:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v111 = *(v207 + 48);
  v112 = v209;
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  v113 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_81(v113, v114);
  if (v70)
  {
    sub_1B8D9207C(v110, &qword_1EBAB9F10, &unk_1B96511E0);
    OUTLINED_FUNCTION_37_0(v112 + v111);
    if (v70)
    {
      sub_1B8D9207C(v112, &qword_1EBAB9F10, &unk_1B96511E0);
      goto LABEL_84;
    }

LABEL_82:
    v116 = &qword_1EBABA2D8;
    v117 = &qword_1B9652FC0;
    v118 = v112;
    goto LABEL_66;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v112 + v111);
  if (v140)
  {
    sub_1B8D9207C(v110, &qword_1EBAB9F10, &unk_1B96511E0);
    sub_1B8DC40A4();
    goto LABEL_82;
  }

  sub_1B8DC3FF4();
  v141 = OUTLINED_FUNCTION_690();
  v142 = static Argos_Protos_Productdatapb_ProductAttribute.== infix(_:_:)(v141);
  sub_1B8DC40A4();
  OUTLINED_FUNCTION_189(v110);
  sub_1B8DC40A4();
  OUTLINED_FUNCTION_189(v112);
  if ((v142 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_84:
  v143 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredientString);
  OUTLINED_FUNCTION_79_1();
  v144 = *v143;
  v145 = v143[1];
  v146 = (v77 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredientString);
  OUTLINED_FUNCTION_521();
  if (v144 != *v146 || v145 != v146[1])
  {
    OUTLINED_FUNCTION_696();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  v148 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredients;
  OUTLINED_FUNCTION_521();
  v149 = *(v1 + v148);
  v150 = OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__ingredients;
  OUTLINED_FUNCTION_521();
  v151 = *(v77 + v150);

  OUTLINED_FUNCTION_696();
  sub_1B8D68530();
  v153 = v152;

  if ((v153 & 1) == 0)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_521();
  v154 = v203;
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v155 = *(v217 + 48);
  v156 = v201;
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_91_0();
  sub_1B8D92024();
  v157 = OUTLINED_FUNCTION_538();
  v158 = v218;
  OUTLINED_FUNCTION_81(v157, v159);
  if (v70)
  {
    sub_1B8D9207C(v154, &qword_1EBAB9F00, &qword_1B96511D0);
    OUTLINED_FUNCTION_37_0(v156 + v155);
    if (v70)
    {
      sub_1B8D9207C(v156, &qword_1EBAB9F00, &qword_1B96511D0);
LABEL_95:
      v160 = v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataType;
      OUTLINED_FUNCTION_521();
      v161 = *v160;
      v162 = v160[8];
      OUTLINED_FUNCTION_521();
      v163 = OUTLINED_FUNCTION_167_1();
      if (sub_1B8D92198(v163, v164, v165))
      {
        v166 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataSource);
        OUTLINED_FUNCTION_79_1();
        v167 = *v166;
        v168 = v166[1];
        v169 = (v77 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__metadataSource);
        OUTLINED_FUNCTION_521();
        v170 = v167 == *v169 && v168 == v169[1];
        if (v170 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
        {
          v171 = v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemCondition;
          OUTLINED_FUNCTION_521();
          v172 = *v171;
          v173 = v171[8];
          OUTLINED_FUNCTION_521();
          v174 = OUTLINED_FUNCTION_167_1();
          if (sub_1B8D92198(v174, v175, v176))
          {
            v177 = v1 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemAvaliability;
            OUTLINED_FUNCTION_521();
            v178 = *v177;
            v179 = v177[8];

            v180 = v77 + OBJC_IVAR____TtCV10PegasusAPI42Argos_Protos_Productdatapb_ProductMetadataP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__itemAvaliability;
            OUTLINED_FUNCTION_521();
            v181 = *v180;
            v182 = v180[8];

            v128 = sub_1B8D92198(v178, v179, v181);
            goto LABEL_69;
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_106;
  }

  v183 = v202;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v156 + v155);
  if (v184)
  {
    sub_1B8D9207C(v203, &qword_1EBAB9F00, &qword_1B96511D0);
    OUTLINED_FUNCTION_108_1();
    sub_1B8DC40A4();
LABEL_106:
    v116 = &qword_1EBABA2E8;
    v117 = &unk_1B9652FD0;
    v118 = v156;
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_3_4();
  v185 = v200;
  sub_1B8DC3FF4();
  if (*v183 != *v185 || (v183[1] == v185[1] ? (v186 = v183[2] == v185[2]) : (v186 = 0), !v186 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_183_1();
    sub_1B8D9207C(v197, v198, v199);
    OUTLINED_FUNCTION_36_0();
    sub_1B8DC40A4();
    sub_1B8DC40A4();
    goto LABEL_65;
  }

  v187 = *(v158 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v188, v189);
  v190 = sub_1B964C850();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v191, v192, v193);
  sub_1B8DC40A4();
  sub_1B8DC40A4();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v194, v195, v196);
  if (v190)
  {
    goto LABEL_95;
  }

LABEL_67:

LABEL_68:
  v128 = 0;
LABEL_69:
  OUTLINED_FUNCTION_264(v128);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DC6CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA290, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC6D44(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9F98, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC6DB4()
{
  sub_1B8DCDD6C(&qword_1EBAB9F98, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC6E34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9DA0);
  __swift_project_value_buffer(v0, qword_1EBAB9DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GTIN_TYPE_GTIN8";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GTIN_TYPE_GTIN12";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GTIN_TYPE_GTIN13";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GTIN_TYPE_GTIN14";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "GTIN_TYPE_ISBN10";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "GTIN_TYPE_ISBN13";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "GTIN_TYPE_ASIN";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "GTIN_OTHER";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DC7190()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9DB8);
  __swift_project_value_buffer(v0, qword_1EBAB9DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WEB_DATA";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DATA_FEED_MANAGEMENT_DATA";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CLUSTER_VARIANT_ENTITY_METADATA";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DC73F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9DD0);
  __swift_project_value_buffer(v0, qword_1EBAB9DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ITEM_CONDITION_TYPE_UNSPECIFIED";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ITEM_CONDITION_TYPE_DAMAGED";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ITEM_CONDITION_TYPE_NEW";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ITEM_CONDITION_TYPE_REFURBISHED";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ITEM_CONDITION_TYPE_USED";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DC76A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9DE8);
  __swift_project_value_buffer(v0, qword_1EBAB9DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ITEM_AVALIABILITY_TYPE_UNSPECIFIED";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ITEM_AVALIABILITY_TYPE_BACK_ORDER";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ITEM_AVALIABILITY_TYPE_DISCONTINUED";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ITEM_AVALIABILITY_TYPE_IN_STOCK";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ITEM_AVALIABILITY_TYPE_IN_STORE_ONLY";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ITEM_AVALIABILITY_TYPE_LIMITED_AVAILABILITY";
  *(v18 + 1) = 43;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "ITEM_AVALIABILITY_TYPE_ONLINE_ONLY";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "ITEM_AVALIABILITY_TYPE_OUT_OF_STOCK";
  *(v22 + 1) = 35;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "ITEM_AVALIABILITY_TYPE_PRE_ORDER";
  *(v24 + 1) = 32;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "ITEM_AVALIABILITY_TYPE_PRE_SALE";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "ITEM_AVALIABILITY_TYPE_SOLD_OUT";
  *(v28 + 1) = 31;
  v28[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DC7AF8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E10);
  __swift_project_value_buffer(v0, qword_1EBAB9E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "price_macro";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "price_currency";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Productdatapb_ProductMetadata.Price.decodeMessage<A>(decoder:)()
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
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Argos_Protos_Productdatapb_ProductMetadata.Price.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      v7 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductMetadata.Price.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price(0);
  OUTLINED_FUNCTION_188_1(v6);
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DC7F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA288, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC7F80(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA0F0, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC7FF0()
{
  sub_1B8DCDD6C(&qword_1EBABA0F0, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC8090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD00000000000002ALL;
  *a5 = 0x80000001B96EA5F0;
  return result;
}

uint64_t sub_1B8DC811C(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B8DC816C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E38);
  __swift_project_value_buffer(v0, qword_1EBAB9E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Productdatapb_ProductMetadata.Gtin.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_9();
      sub_1B8DC83C0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Argos_Protos_Productdatapb_ProductMetadata.Gtin.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    if (!*(v2 + 16) || (v8 = *(v2 + 16), v9 = *(v2 + 24), sub_1B8DCDDB4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      v7 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductMetadata.Gtin.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  OUTLINED_FUNCTION_141_1();
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v6 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v6 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v6 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v6 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v6 == 6)
        {
          goto LABEL_11;
        }

        return 0;
      case 7:
        if (v6 == 7)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v6)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_11:
  v9 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_188_1(v9);
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DC8678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA280, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC86F8(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA108, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC8768()
{
  sub_1B8DCDD6C(&qword_1EBABA108, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC8800()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E50);
  __swift_project_value_buffer(v0, qword_1EBAB9E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_url";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_main_image";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_review_image";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "display_rank";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "width";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "height";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Productdatapb_ProductImage.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Argos_Protos_Productdatapb_ProductImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    if (*(v2 + 16) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
    {
      if (*(v2 + 17) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
      {
        if (!*(v2 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          if (!*(v2 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
          {
            if (!*(v2 + 28) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
            {
              v7 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductImage.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  OUTLINED_FUNCTION_141_1();
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 17) != *(v1 + 17) || *(v2 + 20) != *(v1 + 20) || *(v2 + 24) != *(v1 + 24) || *(v2 + 28) != *(v1 + 28))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DC8E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA278, type metadata accessor for Argos_Protos_Productdatapb_ProductImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC8EA8(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9F90, type metadata accessor for Argos_Protos_Productdatapb_ProductImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC8F18()
{
  sub_1B8DCDD6C(&qword_1EBAB9F90, type metadata accessor for Argos_Protos_Productdatapb_ProductImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC8FB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E68);
  __swift_project_value_buffer(v0, qword_1EBAB9E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "product_metadata";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "product_images";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "original_doc_key";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Argos_Protos_Productdatapb_Product.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8DC9C84();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8DCB1D0();
        break;
    }
  }
}

void Argos_Protos_Productdatapb_Product.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_159();
  v9 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = OUTLINED_FUNCTION_140_1();
  v24 = type metadata accessor for Argos_Protos_Productdatapb_Product(v13);
  v25 = v0;
  v14 = *(v24 + 28);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB92D0, &unk_1B964DAB0);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    sub_1B8DC3FF4();
    OUTLINED_FUNCTION_11_3();
    sub_1B8DCDD6C(v15, v16);
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_158_1();
    if (v1)
    {
      goto LABEL_9;
    }
  }

  v17 = *v0;
  if (!*(*v25 + 16) || (type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0), OUTLINED_FUNCTION_35_0(), sub_1B8DCDD6C(v18, v19), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v1))
  {
    v20 = v25[1];
    v21 = v25[2];
    OUTLINED_FUNCTION_1();
    if (!v22 || (OUTLINED_FUNCTION_153_1(), sub_1B964C700(), !v1))
    {
      v23 = v25 + *(v24 + 24);
      sub_1B964C290();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Productdatapb_Product.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_139_1();
  v5 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D8, &qword_1B9651200) - 8);
  v16 = *(*v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_35();
  v40 = type metadata accessor for Argos_Protos_Productdatapb_Product(v18);
  v41 = v1;
  v19 = *(v40 + 28);
  v20 = v15[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v21)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v20);
    if (!v21)
    {
      OUTLINED_FUNCTION_1_4();
      sub_1B8DC3FF4();
      v24 = *(v5 + 20);
      if (*&v14[v24] == *(v3 + v24) || (v25 = *&v14[v24], , , sub_1B8DC5BD0(), v27 = v26, , , (v27 & 1) != 0))
      {
        v28 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_6();
        sub_1B8DCDD6C(v29, v30);
        OUTLINED_FUNCTION_259();
        sub_1B964C850();
        OUTLINED_FUNCTION_34_1();
        sub_1B8DC40A4();
        OUTLINED_FUNCTION_686();
        sub_1B8DC40A4();
        sub_1B8D9207C(v2, &qword_1EBAB92D0, &unk_1B964DAB0);
        if (v28)
        {
          goto LABEL_14;
        }

LABEL_21:
        v39 = 0;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_101_1();
      sub_1B8DC40A4();
      sub_1B8DC40A4();
      v22 = &qword_1EBAB92D0;
      v23 = &unk_1B964DAB0;
LABEL_10:
      sub_1B8D9207C(v2, v22, v23);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_33_3();
    sub_1B8DC40A4();
LABEL_9:
    v22 = &qword_1EBAB92D8;
    v23 = &qword_1B9651200;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v2 + v20);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB92D0, &unk_1B964DAB0);
LABEL_14:
  v31 = v41;
  v32 = *v41;
  v33 = *v0;
  sub_1B8D7BC20();
  if ((v34 & 1) == 0)
  {
    goto LABEL_21;
  }

  v35 = v31[1] == v0[1] && v31[2] == v0[2];
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v36 = *(v40 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v37, v38);
  v39 = sub_1B964C850();
LABEL_22:
  OUTLINED_FUNCTION_264(v39);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DC98D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA270, type metadata accessor for Argos_Protos_Productdatapb_Product);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC9950(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC99C0()
{
  sub_1B8DCDD6C(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DC9A58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E80);
  __swift_project_value_buffer(v0, qword_1EBAB9E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "products";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

void Argos_Protos_Productdatapb_ProductData.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8DC9C84();
    }
  }
}

void sub_1B8DC9C84()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Argos_Protos_Productdatapb_ProductData.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Productdatapb_Product(0), sub_1B8DCDD6C(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductData(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Argos_Protos_Productdatapb_ProductData.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v2 = *v1;
  sub_1B8D719A4();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductData(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DC9EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA268, type metadata accessor for Argos_Protos_Productdatapb_ProductData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DC9F28(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA140, type metadata accessor for Argos_Protos_Productdatapb_ProductData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DC9F98()
{
  sub_1B8DCDD6C(&qword_1EBABA140, type metadata accessor for Argos_Protos_Productdatapb_ProductData);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCA030()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9E98);
  __swift_project_value_buffer(v0, qword_1EBAB9E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "product_metadata";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "product_image";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DCA25C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_696();
      OUTLINED_FUNCTION_171_0();
      a5();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_696();
      OUTLINED_FUNCTION_171_0();
      a4();
    }
  }

  return result;
}

uint64_t sub_1B8DCA2EC()
{
  v0 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo(0) + 20);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  sub_1B8DCDD6C(&qword_1EBAB9F98, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata);
  return sub_1B964C580();
}

uint64_t sub_1B8DCA3A0()
{
  v0 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo(0) + 24);
  type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  sub_1B8DCDD6C(&qword_1EBAB9F90, type metadata accessor for Argos_Protos_Productdatapb_ProductImage);
  return sub_1B964C580();
}

void Argos_Protos_Productdatapb_ProductSourceInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v36 = v4;
  v37 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_140_1();
  v34 = type metadata accessor for Argos_Protos_Productdatapb_ProductImage(v10);
  v11 = OUTLINED_FUNCTION_59_1(v34);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v33[1] = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v33 - v20;
  v22 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v26 = type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo(0);
  v27 = *(v26 + 20);
  v35 = v3;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAB92D0, &unk_1B964DAB0);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    sub_1B8DC3FF4();
    OUTLINED_FUNCTION_11_3();
    sub_1B8DCDD6C(v28, v29);
    sub_1B964C740();
    sub_1B8DC40A4();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  v30 = *(v26 + 24);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v2, 1, v34) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9F28, &qword_1B96511F0);
LABEL_7:
    OUTLINED_FUNCTION_176_1();
    sub_1B964C290();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_97_1();
  sub_1B8DC3FF4();
  OUTLINED_FUNCTION_35_0();
  sub_1B8DCDD6C(v31, v32);
  OUTLINED_FUNCTION_175_1();
  sub_1B964C740();
  OUTLINED_FUNCTION_158_1();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Productdatapb_ProductSourceInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v60 = type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  v3 = OUTLINED_FUNCTION_59_1(v60);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v57[1] = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v57[2] = v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9FB8, &qword_1B9651208);
  OUTLINED_FUNCTION_59_1(v59);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  v61 = v16;
  v17 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  v18 = OUTLINED_FUNCTION_59_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v57 - v28;
  v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D8, &qword_1B9651200) - 8);
  v31 = *(*v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  v33 = OUTLINED_FUNCTION_140_1();
  v58 = type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo(v33);
  v34 = *(v58 + 20);
  v35 = v30[14];
  v62 = v2;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v36)
  {
    OUTLINED_FUNCTION_37_0(v0 + v35);
    if (v36)
    {
      sub_1B8D9207C(v0, &qword_1EBAB92D0, &unk_1B964DAB0);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v35);
  if (v36)
  {
    OUTLINED_FUNCTION_33_3();
    sub_1B8DC40A4();
LABEL_9:
    v37 = &qword_1EBAB92D8;
    v38 = &qword_1B9651200;
LABEL_10:
    v39 = v0;
LABEL_23:
    sub_1B8D9207C(v39, v37, v38);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1_4();
  sub_1B8DC3FF4();
  v40 = *(v17 + 20);
  if (*&v29[v40] != *(v23 + v40))
  {
    v41 = *&v29[v40];

    sub_1B8DC5BD0();
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      sub_1B8DC40A4();
      OUTLINED_FUNCTION_432();
      sub_1B8DC40A4();
      v37 = &qword_1EBAB92D0;
      v38 = &unk_1B964DAB0;
      goto LABEL_10;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v44, v45);
  v46 = sub_1B964C850();
  OUTLINED_FUNCTION_32_2();
  sub_1B8DC40A4();
  sub_1B8DC40A4();
  sub_1B8D9207C(v0, &qword_1EBAB92D0, &unk_1B964DAB0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  v47 = *(v58 + 24);
  v48 = *(v59 + 48);
  v49 = v61;
  sub_1B8D92024();
  sub_1B8D92024();
  v50 = v60;
  OUTLINED_FUNCTION_178(v49, 1, v60);
  if (v36)
  {
    OUTLINED_FUNCTION_178(v49 + v48, 1, v50);
    if (v36)
    {
      sub_1B8D9207C(v49, &qword_1EBAB9F28, &qword_1B96511F0);
LABEL_27:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_6();
      sub_1B8DCDD6C(v55, v56);
      v52 = sub_1B964C850();
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v49 + v48, 1, v50);
  if (v51)
  {
    OUTLINED_FUNCTION_98_1();
    sub_1B8DC40A4();
LABEL_22:
    v37 = &qword_1EBAB9FB8;
    v38 = &qword_1B9651208;
    v39 = v49;
    goto LABEL_23;
  }

  sub_1B8DC3FF4();
  v53 = OUTLINED_FUNCTION_461();
  v54 = static Argos_Protos_Productdatapb_ProductImage.== infix(_:_:)(v53);
  OUTLINED_FUNCTION_294();
  sub_1B8DC40A4();
  OUTLINED_FUNCTION_182();
  sub_1B8DC40A4();
  sub_1B8D9207C(v49, &qword_1EBAB9F28, &qword_1B96511F0);
  if (v54)
  {
    goto LABEL_27;
  }

LABEL_24:
  v52 = 0;
LABEL_25:
  OUTLINED_FUNCTION_264(v52);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DCAD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA260, type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DCADA8(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA158, type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DCAE18()
{
  sub_1B8DCDD6C(&qword_1EBABA158, type metadata accessor for Argos_Protos_Productdatapb_ProductSourceInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCAEB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9EB0);
  __swift_project_value_buffer(v0, qword_1EBAB9EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "original_key";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "product_metadata";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "product_image";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Productdatapb_ProductNetNode.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8DCB1D0();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8DCB260();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DCB1D0()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 28);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  OUTLINED_FUNCTION_11_3();
  sub_1B8DCDD6C(v2, v3);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

uint64_t sub_1B8DCB260()
{
  v0 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0) + 32);
  type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  sub_1B8DCDD6C(&qword_1EBAB9F90, type metadata accessor for Argos_Protos_Productdatapb_ProductImage);
  return sub_1B964C580();
}

void Argos_Protos_Productdatapb_ProductNetNode.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_159();
  v43 = type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  v9 = OUTLINED_FUNCTION_59_1(v43);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v42 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v24 = *v0;
  v25 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v26 || (sub_1B964C700(), !v1))
  {
    v27 = v0[2];
    v28 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v29 || (sub_1B964C700(), !v1))
    {
      v41 = v4;
      v40 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
      v30 = v40[7];
      sub_1B8D92024();
      v31 = OUTLINED_FUNCTION_538();
      if (__swift_getEnumTagSinglePayload(v31, v32, v20) == 1)
      {
        sub_1B8D9207C(v19, &qword_1EBAB92D0, &unk_1B964DAB0);
      }

      else
      {
        sub_1B8DC3FF4();
        OUTLINED_FUNCTION_11_3();
        sub_1B8DCDD6C(v33, v34);
        sub_1B964C740();
        sub_1B8DC40A4();
        if (v1)
        {
          goto LABEL_12;
        }
      }

      v35 = v40[8];
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v2, 1, v43) == 1)
      {
        sub_1B8D9207C(v2, &qword_1EBAB9F28, &qword_1B96511F0);
LABEL_11:
        v38 = v0 + v40[6];
        sub_1B964C290();
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_97_1();
      sub_1B8DC3FF4();
      OUTLINED_FUNCTION_35_0();
      sub_1B8DCDD6C(v36, v37);
      sub_1B964C740();
      OUTLINED_FUNCTION_158_1();
      if (!v1)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Productdatapb_ProductNetNode.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Argos_Protos_Productdatapb_ProductImage(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v68 = v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9FB8, &qword_1B9651208);
  OUTLINED_FUNCTION_59_1(v69);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_258();
  v19 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
  OUTLINED_FUNCTION_183(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D8, &qword_1B9651200);
  OUTLINED_FUNCTION_59_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_159();
  v36 = *v1 == *v0 && v1[1] == v0[1];
  if (!v36 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v37 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v37 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v66 = v4;
  v67 = v2;
  v64 = v10;
  v65 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  v38 = *(v65 + 28);
  v39 = *(v32 + 48);
  OUTLINED_FUNCTION_171_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_171_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3);
  if (v36)
  {
    OUTLINED_FUNCTION_37_0(v3 + v39);
    if (v36)
    {
      sub_1B8D9207C(v3, &qword_1EBAB92D0, &unk_1B964DAB0);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3 + v39);
  if (v40)
  {
    OUTLINED_FUNCTION_33_3();
    sub_1B8DC40A4();
LABEL_19:
    v41 = &qword_1EBAB92D8;
    v42 = &qword_1B9651200;
LABEL_20:
    v43 = v3;
LABEL_33:
    sub_1B8D9207C(v43, v41, v42);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_1_4();
  sub_1B8DC3FF4();
  v44 = *(v19 + 20);
  if (*&v31[v44] != *(v25 + v44))
  {
    v45 = *&v31[v44];

    OUTLINED_FUNCTION_176_1();
    sub_1B8DC5BD0();
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      OUTLINED_FUNCTION_101_1();
      sub_1B8DC40A4();
      OUTLINED_FUNCTION_182();
      sub_1B8DC40A4();
      v41 = &qword_1EBAB92D0;
      v42 = &unk_1B964DAB0;
      goto LABEL_20;
    }
  }

  v48 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v49, v50);
  sub_1B964C850();
  OUTLINED_FUNCTION_34_1();
  sub_1B8DC40A4();
  sub_1B8DC40A4();
  sub_1B8D9207C(v3, &qword_1EBAB92D0, &unk_1B964DAB0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_24:
  v51 = v65;
  v52 = *(v65 + 32);
  v53 = *(v69 + 48);
  v54 = v67;
  sub_1B8D92024();
  sub_1B8D92024();
  v55 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_81(v55, v56);
  if (v36)
  {
    OUTLINED_FUNCTION_37_0(v54 + v53);
    if (v36)
    {
      sub_1B8D9207C(v54, &qword_1EBAB9F28, &qword_1B96511F0);
LABEL_37:
      v61 = *(v51 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_6();
      sub_1B8DCDD6C(v62, v63);
      v59 = sub_1B964C850();
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v57 = v68;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v54 + v53);
  if (v58)
  {
    OUTLINED_FUNCTION_98_1();
    sub_1B8DC40A4();
LABEL_32:
    v41 = &qword_1EBAB9FB8;
    v42 = &qword_1B9651208;
    v43 = v54;
    goto LABEL_33;
  }

  sub_1B8DC3FF4();
  v60 = static Argos_Protos_Productdatapb_ProductImage.== infix(_:_:)(v57);
  sub_1B8DC40A4();
  sub_1B8DC40A4();
  sub_1B8D9207C(v54, &qword_1EBAB9F28, &qword_1B96511F0);
  if (v60)
  {
    goto LABEL_37;
  }

LABEL_34:
  v59 = 0;
LABEL_35:
  OUTLINED_FUNCTION_264(v59);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DCBC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA258, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DCBCFC(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DCBD6C()
{
  sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCBE04()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9EC8);
  __swift_project_value_buffer(v0, qword_1EBAB9EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "end";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DCC064(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_57_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B8DCC0B4()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__start;
  v2 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__end, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score) = 0;
  return v0;
}

uint64_t sub_1B8DCC12C(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F30, &qword_1B96511F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__start;
  v5 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__end, 1, 1, v5);
  v6 = (v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score) = 0;
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
  v7 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  swift_beginAccess();
  v8 = *v7;

  swift_beginAccess();
  *v6 = v8;
  return v1;
}

uint64_t sub_1B8DCC344()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__start, &qword_1EBAB9F30, &qword_1B96511F8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__end, &qword_1EBAB9F30, &qword_1B96511F8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B8DCC440()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v15 = v3;
  v5 = v4;
  v6 = v0;
  v8 = *(v7(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = v5(0);
    OUTLINED_FUNCTION_57_0(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    *(v6 + v8) = v15(v13);
  }

  v14 = OUTLINED_FUNCTION_176_1();
  v2(v14);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8DCC4F0()
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
      case 5:
        sub_1B8DCC708();
        break;
      case 4:
        sub_1B8DCC62C();
        break;
      case 3:
        sub_1B8DCC5A0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8DCC5A0()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DCC62C()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DCC708()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DCC814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DCC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F30, &qword_1B96511F8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v21 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  v13 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v20[1] = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  swift_beginAccess();
  if (*v17 == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    v20[2] = a4;
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1B8D9207C(v12, &qword_1EBAB9F30, &qword_1B96511F8);
    }

    else
    {
      sub_1B8DC3FF4();
      sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode);
      sub_1B964C740();
      result = sub_1B8DC40A4();
      if (v4)
      {
        return result;
      }
    }

    swift_beginAccess();
    v19 = v21;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v19, 1, v13) == 1)
    {
      return sub_1B8D9207C(v19, &qword_1EBAB9F30, &qword_1B96511F8);
    }

    else
    {
      sub_1B8DC3FF4();
      sub_1B8DCDD6C(&qword_1EBABA170, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode);
      sub_1B964C740();
      return sub_1B8DC40A4();
    }
  }

  return result;
}

uint64_t sub_1B8DCCC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = *(v7(0) + 20);
  if (*(v5 + v8) != *(v4 + v8))
  {
    v9 = *(v5 + v8);

    v10 = OUTLINED_FUNCTION_177_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v12, v13);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8DCCD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v38[2] = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA2D0, &qword_1B9652FB8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v41 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F30, &qword_1B96511F8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v38[1] = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v40 = v38 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v42 = v38 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v38 - v21;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v39 = v7;
  v23 = *(v7 + 48);
  v24 = v4;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {

    sub_1B8D9207C(v22, &qword_1EBAB9F30, &qword_1B96511F8);
    if (__swift_getEnumTagSinglePayload(&v12[v23], 1, v4) == 1)
    {
      sub_1B8D9207C(v12, &qword_1EBAB9F30, &qword_1B96511F8);
      goto LABEL_8;
    }

LABEL_6:
    v25 = v12;
LABEL_14:
    sub_1B8D9207C(v25, &qword_1EBABA2D0, &qword_1B9652FB8);
    goto LABEL_15;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v12[v23], 1, v4) == 1)
  {

    sub_1B8D9207C(v22, &qword_1EBAB9F30, &qword_1B96511F8);
    sub_1B8DC40A4();
    goto LABEL_6;
  }

  sub_1B8DC3FF4();

  static Argos_Protos_Productdatapb_ProductNetNode.== infix(_:_:)();
  v27 = v26;
  sub_1B8DC40A4();
  sub_1B8D9207C(v22, &qword_1EBAB9F30, &qword_1B96511F8);
  sub_1B8DC40A4();
  sub_1B8D9207C(v12, &qword_1EBAB9F30, &qword_1B96511F8);
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  swift_beginAccess();
  v28 = v40;
  sub_1B8D92024();
  swift_beginAccess();
  v29 = *(v39 + 48);
  v30 = v41;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v30, 1, v24) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v30 + v29, 1, v24) == 1)
    {
      sub_1B8D9207C(v28, &qword_1EBAB9F30, &qword_1B96511F8);
      sub_1B8DC40A4();
      goto LABEL_13;
    }

    sub_1B8DC3FF4();
    static Argos_Protos_Productdatapb_ProductNetNode.== infix(_:_:)();
    v33 = v32;
    sub_1B8DC40A4();
    sub_1B8D9207C(v28, &qword_1EBAB9F30, &qword_1B96511F8);
    sub_1B8DC40A4();
    sub_1B8D9207C(v30, &qword_1EBAB9F30, &qword_1B96511F8);
    if (v33)
    {
      goto LABEL_17;
    }

LABEL_15:

    return 0;
  }

  sub_1B8D9207C(v28, &qword_1EBAB9F30, &qword_1B96511F8);
  if (__swift_getEnumTagSinglePayload(v30 + v29, 1, v24) != 1)
  {
LABEL_13:
    v25 = v30;
    goto LABEL_14;
  }

  sub_1B8D9207C(v30, &qword_1EBAB9F30, &qword_1B96511F8);
LABEL_17:
  v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  swift_beginAccess();
  v35 = *v34;

  v36 = (a2 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Productdatapb_ProductNetEdgeP33_2E1FB37B8DF8A5845446090C5F7C217613_StorageClass__score);
  swift_beginAccess();
  v37 = *v36;

  return v35 == v37;
}

uint64_t sub_1B8DCD458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA250, type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DCD4D8(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBABA188, type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DCD548()
{
  sub_1B8DCDD6C(&qword_1EBABA188, type metadata accessor for Argos_Protos_Productdatapb_ProductNetEdge);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCD600(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_246();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D060;
  v14 = (v13 + v12);
  v15 = v13 + v12 + v10[14];
  *v14 = 1;
  *v15 = a3;
  *(v15 + 8) = 4;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v11 + v10[14];
  *(v14 + v11) = 2;
  *v20 = a4;
  *(v20 + 1) = a5;
  v20[16] = 2;
  v19();
  return sub_1B964C760();
}

void sub_1B8DCD830()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_176_1();
      sub_1B8DCD8E4();
    }

    else if (v1 == 1)
    {
      sub_1B964C530();
    }
  }
}

void sub_1B8DCD8E4()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Argos_Protos_Productdatapb_ProductIngredient.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient(0), sub_1B8DCDD6C(&qword_1EBAB9FD8, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_175_1(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v7 = *(type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8DCDA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_51_2(a1);
  OUTLINED_FUNCTION_141_1();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0 || (a3(*(v5 + 16), *(v4 + 16)) & 1) == 0)
  {
    return 0;
  }

  v11 = a4(0);
  OUTLINED_FUNCTION_188_1(v11);
  OUTLINED_FUNCTION_0_6();
  sub_1B8DCDD6C(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DCDB1C(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8DCDD6C(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DCDBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DCDD6C(&qword_1EBABA248, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DCDC7C(uint64_t a1)
{
  v2 = sub_1B8DCDD6C(&qword_1EBAB9FD8, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DCDCEC()
{
  sub_1B8DCDD6C(&qword_1EBAB9FD8, type metadata accessor for Argos_Protos_Productdatapb_ProductIngredient);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DCDD6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8DCDDB4()
{
  result = qword_1EBAB9F78;
  if (!qword_1EBAB9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB9F78);
  }

  return result;
}

unint64_t sub_1B8DCDE0C()
{
  result = qword_1EBAB9FE8;
  if (!qword_1EBAB9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB9FE8);
  }

  return result;
}

unint64_t sub_1B8DCDE64()
{
  result = qword_1EBAB9FF0;
  if (!qword_1EBAB9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB9FF0);
  }

  return result;
}

unint64_t sub_1B8DCDEBC()
{
  result = qword_1EBAB9FF8;
  if (!qword_1EBAB9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB9FF8);
  }

  return result;
}

unint64_t sub_1B8DCDF14()
{
  result = qword_1EBABA000;
  if (!qword_1EBABA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA000);
  }

  return result;
}

unint64_t sub_1B8DCDF6C()
{
  result = qword_1EBABA008;
  if (!qword_1EBABA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA008);
  }

  return result;
}

unint64_t sub_1B8DCDFC4()
{
  result = qword_1EBABA010;
  if (!qword_1EBABA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA010);
  }

  return result;
}

unint64_t sub_1B8DCE01C()
{
  result = qword_1EBABA018;
  if (!qword_1EBABA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA018);
  }

  return result;
}

unint64_t sub_1B8DCE074()
{
  result = qword_1EBABA020;
  if (!qword_1EBABA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA020);
  }

  return result;
}

unint64_t sub_1B8DCE0CC()
{
  result = qword_1EBABA028;
  if (!qword_1EBABA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA028);
  }

  return result;
}

unint64_t sub_1B8DCE124()
{
  result = qword_1EBABA030;
  if (!qword_1EBABA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA030);
  }

  return result;
}

unint64_t sub_1B8DCE17C()
{
  result = qword_1EBABA038;
  if (!qword_1EBABA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA038);
  }

  return result;
}

unint64_t sub_1B8DCE1D4()
{
  result = qword_1EBABA040;
  if (!qword_1EBABA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA040);
  }

  return result;
}

void sub_1B8DCF2D0()
{
  sub_1B8DCF3D0(319, &qword_1EBABA1A8, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute.Attribute, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8DCF3D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8DCF4B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8DCF4F8(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1B8DCF574()
{
  sub_1B8DCF61C(319, qword_1EDA06FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8DCF61C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B8DCF6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t sub_1B8DCF7E4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t sub_1B8DCF874()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8DCF934()
{
  sub_1B8DCF3D0(319, &qword_1EBABA1F0, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8DCF3D0(319, &qword_1ED9CA028, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8DCFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1B964C2B0();
    if (v9 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

void sub_1B8DCFB58()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8DCF3D0(319, &qword_1ED9CA028, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B8DCF3D0(319, &qword_1ED9CA2D0, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8DCFC7C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8DCF3D0(319, &qword_1ED9CA028, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B8DCF3D0(319, &qword_1ED9CA2D0, type metadata accessor for Argos_Protos_Productdatapb_ProductImage, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_115Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_116Tm()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v4 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_231();

    return __swift_storeEnumTagSinglePayload(v7, v0, v0, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_83Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_84Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B8DD0000(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B8DCF3D0(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B8DD00AC()
{
  sub_1B8DCF3D0(319, &qword_1ED9CA040, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Price, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1B8DCF3D0(319, &qword_1ED9CA0D0, type metadata accessor for Argos_Protos_Productdatapb_ProductCategory, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_1B8DCF3D0(319, &qword_1ED9C9D58, type metadata accessor for Argos_Protos_Productdatapb_ProductAttribute, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8DD028C()
{
  sub_1B8DCF3D0(319, &qword_1ED9CA190, type metadata accessor for Argos_Protos_Productdatapb_ProductNetNode, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B8DD035C()
{
  result = qword_1EBABA2B8;
  if (!qword_1EBABA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA2B8);
  }

  return result;
}

unint64_t sub_1B8DD03B0()
{
  result = qword_1EBABA2C0;
  if (!qword_1EBABA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA2C0);
  }

  return result;
}

unint64_t sub_1B8DD0404()
{
  result = qword_1EBABA2C8;
  if (!qword_1EBABA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA2C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_2()
{
  result = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  v0 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t result)
{
  v1 = *(*result + 48);
  v2 = *(*result + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_65_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  v1 = *(v0 + *(type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 20));
  v5 = *v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_83_1()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 20) = 0;
}

uint64_t OUTLINED_FUNCTION_116_0@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1B8D92024();
}

void OUTLINED_FUNCTION_117_0()
{
  v2 = *(v0 + 8);
  *(v1 + 72) = *v0;
  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_133_1()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_135_2()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 20) = 0;
  v3 = v0 + *(v1 + 40);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void OUTLINED_FUNCTION_141_1()
{
  v2 = *(v1 + 8);
  v3 = *v0;
  v4 = v0[1];
}

uint64_t OUTLINED_FUNCTION_158_1()
{

  return sub_1B8DC40A4();
}

uint64_t OUTLINED_FUNCTION_159_1()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v3 = v0 + *(v1 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_160_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_161_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v3 = v0 + *(v1 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_163_1()
{
  v2 = *(*(v0 + 64) + *(v0 + 72));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_167_1()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_186_0()
{

  return sub_1B8DCDD6C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_187_1()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_188_1(uint64_t a1)
{
  v2 = *(a1 + 24);

  return sub_1B964C2B0();
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.entityIds.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Argos_Protos_Scenenetfeaturespb_Label.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(v0) + 28);
  return nullsub_1;
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectFraming.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 16);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectFraming.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 16) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectFraming.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1060()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 16) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.background.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 20);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.background.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 20) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.background.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 20);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD11D0()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 20) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.blur.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 24);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.blur.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 24) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.blur.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1340()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.timing.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 28);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.timing.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 28) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.timing.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 28);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD14B0()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 28) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lightning.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 32);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lightning.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 32) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lightning.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1620()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 32) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.reflections.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 36);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.reflections.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 36) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.reflections.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 36);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1790()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 36) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorHarmony.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 40);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorHarmony.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 40) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorHarmony.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1900()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 40) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorBrightness.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 44);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorBrightness.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 44) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.colorBrightness.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1A70()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 44) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.perspective.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 48);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.perspective.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 48) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.perspective.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1BE0()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 48) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.postProcessing.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 52);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.postProcessing.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 52) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.postProcessing.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1D50()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 52) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.composition.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 56);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.composition.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 56) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.composition.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD1EC0()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 56) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.interestingness.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 60);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.interestingness.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 60) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.interestingness.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 60);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2030()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 60) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.tilt.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 64);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.tilt.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 64) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.tilt.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD21A0()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 64) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectSharpness.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 68);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectSharpness.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 68) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.subjectSharpness.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2310()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 68) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.symmetry.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 72);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.symmetry.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 72) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.symmetry.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2480()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 72) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.repetition.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 76);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.repetition.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 76) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.repetition.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD25F0()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 76) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.immersiveFeeling.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 80);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.immersiveFeeling.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 80) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.immersiveFeeling.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2760()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 80) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.noise.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 84);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.noise.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 84) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.noise.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD28D0()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 84) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.failure.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 88);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.failure.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 88) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.failure.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 88);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2A40()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 88) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.objectIntrusion.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 92);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.objectIntrusion.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 92) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.objectIntrusion.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 92);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2BB0()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 92) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

float Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lowLight.getter()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 96);
}

void Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lowLight.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_3_5();
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8DD462C(v5);
    OUTLINED_FUNCTION_16_3(v6);
  }

  OUTLINED_FUNCTION_9_3();
  *(v4 + 96) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.lowLight.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DD2D20()
{
  OUTLINED_FUNCTION_32_3();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DD462C(v6);
    OUTLINED_FUNCTION_15(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 96) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v8);
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0) + 20);
  if (qword_1EBAB5FC8 != -1)
  {
    OUTLINED_FUNCTION_7_4();
  }

  *(a1 + v2) = qword_1EBABA320;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.aestheticAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  sub_1B8DD4AC4(v1 + *(v8 + 48), v7);
  v9 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    return sub_1B8DD4B34(v7, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(v9 + 20);
  if (qword_1EBAB5FC8 != -1)
  {
    OUTLINED_FUNCTION_7_4();
  }

  *(a1 + v10) = qword_1EBABA320;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v7, &qword_1EBABA340, &qword_1B9653000);
  }

  return result;
}

uint64_t sub_1B8DD3018(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8DD4B98(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Argos_Protos_Scenenetfeaturespb_ScenenetOutput.aestheticAttributes.setter();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.aestheticAttributes.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(v2) + 48);
  sub_1B8D9207C(v1 + v3, &qword_1EBABA340, &qword_1B9653000);
  sub_1B8DD4B34(v0, v1 + v3);
  v4 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Argos_Protos_Scenenetfeaturespb_ScenenetOutput.aestheticAttributes.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0) + 48);
  *(v3 + 10) = v11;
  sub_1B8DD4AC4(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1EBAB5FC8 != -1)
    {
      OUTLINED_FUNCTION_7_4();
    }

    *&v10[v12] = qword_1EBABA320;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBABA340, &qword_1B9653000);
    }
  }

  else
  {
    sub_1B8DD4B34(v6, v10);
  }

  return sub_1B8DD32B0;
}

void sub_1B8DD32B0(uint64_t **a1, char a2)
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
    sub_1B8DD4B98((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBABA340, &qword_1B9653000);
    sub_1B8DD4B34(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B8DD4BFC(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBABA340, &qword_1B9653000);
    sub_1B8DD4B34(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL Argos_Protos_Scenenetfeaturespb_ScenenetOutput.hasAestheticAttributes.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  sub_1B8DD4AC4(v0 + *(v7 + 48), v6);
  v8 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  v9 = __swift_getEnumTagSinglePayload(v6, 1, v8) != 1;
  sub_1B8D9207C(v6, &qword_1EBABA340, &qword_1B9653000);
  return v9;
}

Swift::Void __swiftcall Argos_Protos_Scenenetfeaturespb_ScenenetOutput.clearAestheticAttributes()()
{
  v1 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0) + 48);
  sub_1B8D9207C(v0 + v1, &qword_1EBABA340, &qword_1B9653000);
  v2 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.classificationLabels.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.scenePrint.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.saliencyAMap.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.saliencyAMap.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.saliencyOMap.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.saliencyOMap.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.dedupEmbedding.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0) + 44);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(v2) + 44);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Argos_Protos_Scenenetfeaturespb_ScenenetOutput.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(v0) + 44);
  return nullsub_1;
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v2;
  *(a1 + 24) = xmmword_1B9652FE0;
  *(a1 + 40) = xmmword_1B9652FE0;
  *(a1 + 56) = v2;
  v3 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  v4 = a1 + *(v3 + 44);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 48);
  v6 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t sub_1B8DD38CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA2F0);
  __swift_project_value_buffer(v0, qword_1EBABA2F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entity_ids";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t Argos_Protos_Scenenetfeaturespb_Label.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      if (!*(*(v2 + 24) + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v1))
      {
        v7 = v2 + *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Scenenetfeaturespb_Label.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_1B8D6123C(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_4_4();
  sub_1B8CD19A0(v6, v7);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8DD3DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19A0(&qword_1EBABA3D8, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DD3E58(uint64_t a1)
{
  v2 = sub_1B8CD19A0(&qword_1EBABA358, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DD3EC8()
{
  sub_1B8CD19A0(&qword_1EBABA358, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DD3F60()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA308);
  __swift_project_value_buffer(v0, qword_1EBABA308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1B9652FF0;
  v4 = v49 + v3 + v1[14];
  *(v49 + v3) = 1;
  *v4 = "subject_framing";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v49 + v3 + v2 + v1[14];
  *(v49 + v3 + v2) = 2;
  *v8 = "background";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v49 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "blur";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v7();
  v12 = (v49 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timing";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v49 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "lightning";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v7();
  v16 = (v49 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "reflections";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v7();
  v18 = (v49 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "color_harmony";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v7();
  v20 = (v49 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "color_brightness";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v7();
  v22 = (v49 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "perspective";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v7();
  v24 = (v49 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "post_processing";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v7();
  v26 = (v49 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "composition";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v7();
  v28 = (v49 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "interestingness";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v7();
  v30 = (v49 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "tilt";
  *(v31 + 1) = 4;
  v31[16] = 2;
  v7();
  v32 = (v49 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "subject_sharpness";
  *(v33 + 1) = 17;
  v33[16] = 2;
  v7();
  v34 = (v49 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "symmetry";
  *(v35 + 1) = 8;
  v35[16] = 2;
  v7();
  v36 = (v49 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "repetition";
  *(v37 + 1) = 10;
  v37[16] = 2;
  v7();
  v38 = (v49 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "immersive_feeling";
  *(v39 + 1) = 17;
  v39[16] = 2;
  v7();
  v40 = (v49 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "noise";
  *(v41 + 1) = 5;
  v41[16] = 2;
  v7();
  v42 = (v49 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "failure";
  *(v43 + 1) = 7;
  v43[16] = 2;
  v7();
  v44 = (v49 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "object_intrusion";
  *(v45 + 1) = 16;
  v45[16] = 2;
  v7();
  v46 = (v49 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "low_light";
  *(v47 + 1) = 9;
  v47[16] = 2;
  v7();
  return sub_1B964C760();
}

double sub_1B8DD45E8()
{
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  qword_1EBABA320 = v0;
  return result;
}

uint64_t sub_1B8DD462C(_DWORD *a1)
{
  *(v1 + 96) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  v3 = a1[4];
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = a1[5];
  swift_beginAccess();
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = a1[6];
  swift_beginAccess();
  *(v1 + 24) = v5;
  swift_beginAccess();
  v6 = a1[7];
  swift_beginAccess();
  *(v1 + 28) = v6;
  swift_beginAccess();
  v7 = a1[8];
  swift_beginAccess();
  *(v1 + 32) = v7;
  swift_beginAccess();
  v8 = a1[9];
  swift_beginAccess();
  *(v1 + 36) = v8;
  swift_beginAccess();
  v9 = a1[10];
  swift_beginAccess();
  *(v1 + 40) = v9;
  swift_beginAccess();
  v10 = a1[11];
  swift_beginAccess();
  *(v1 + 44) = v10;
  swift_beginAccess();
  v11 = a1[12];
  swift_beginAccess();
  *(v1 + 48) = v11;
  swift_beginAccess();
  v12 = a1[13];
  swift_beginAccess();
  *(v1 + 52) = v12;
  swift_beginAccess();
  v13 = a1[14];
  swift_beginAccess();
  *(v1 + 56) = v13;
  swift_beginAccess();
  v14 = a1[15];
  swift_beginAccess();
  *(v1 + 60) = v14;
  swift_beginAccess();
  v15 = a1[16];
  swift_beginAccess();
  *(v1 + 64) = v15;
  swift_beginAccess();
  v16 = a1[17];
  swift_beginAccess();
  *(v1 + 68) = v16;
  swift_beginAccess();
  v17 = a1[18];
  swift_beginAccess();
  *(v1 + 72) = v17;
  swift_beginAccess();
  v18 = a1[19];
  swift_beginAccess();
  *(v1 + 76) = v18;
  swift_beginAccess();
  v19 = a1[20];
  swift_beginAccess();
  *(v1 + 80) = v19;
  swift_beginAccess();
  v20 = a1[21];
  swift_beginAccess();
  *(v1 + 84) = v20;
  swift_beginAccess();
  v21 = a1[22];
  swift_beginAccess();
  *(v1 + 88) = v21;
  swift_beginAccess();
  v22 = a1[23];
  swift_beginAccess();
  *(v1 + 92) = v22;
  swift_beginAccess();
  v23 = a1[24];

  swift_beginAccess();
  *(v1 + 96) = v23;
  return v1;
}

uint64_t sub_1B8DD4AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8DD4B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8DD4B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8DD4BFC(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    OUTLINED_FUNCTION_8_3();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8DD462C(v6);
  }

  OUTLINED_FUNCTION_24_3();
  return sub_1B8DD4D00();
}

uint64_t sub_1B8DD4D00()
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
        sub_1B8DD4FBC();
        break;
      case 2:
        sub_1B8DD5040();
        break;
      case 3:
        sub_1B8DD50C4();
        break;
      case 4:
        sub_1B8DD5148();
        break;
      case 5:
        sub_1B8DD51CC();
        break;
      case 6:
        sub_1B8DD5250();
        break;
      case 7:
        sub_1B8DD52D4();
        break;
      case 8:
        sub_1B8DD5358();
        break;
      case 9:
        sub_1B8DD53DC();
        break;
      case 10:
        sub_1B8DD5460();
        break;
      case 11:
        sub_1B8DD54E4();
        break;
      case 12:
        sub_1B8DD5568();
        break;
      case 13:
        sub_1B8DD55EC();
        break;
      case 14:
        sub_1B8DD5670();
        break;
      case 15:
        sub_1B8DD56F4();
        break;
      case 16:
        sub_1B8DD5778();
        break;
      case 17:
        sub_1B8DD57FC();
        break;
      case 18:
        sub_1B8DD5880();
        break;
      case 19:
        sub_1B8DD5904();
        break;
      case 20:
        sub_1B8DD5988();
        break;
      case 21:
        sub_1B8DD5A0C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DD4FBC()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5040()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD50C4()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5148()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD51CC()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5250()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD52D4()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5358()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD53DC()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5460()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD54E4()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5568()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD55EC()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5670()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD56F4()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5778()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD57FC()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5880()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5904()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5988()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DD5A0C()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t Argos_Protos_Scenenetfeaturespb_AestheticAttributes.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8DD5AF8(v3);
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DD5AF8(float *a1)
{
  swift_beginAccess();
  if (a1[4] == 0.0 || (result = sub_1B964C6B0(), !v1))
  {
    swift_beginAccess();
    if (a1[5] == 0.0 || (result = sub_1B964C6B0(), !v1))
    {
      swift_beginAccess();
      if (a1[6] == 0.0 || (result = sub_1B964C6B0(), !v1))
      {
        swift_beginAccess();
        if (a1[7] == 0.0 || (result = sub_1B964C6B0(), !v1))
        {
          swift_beginAccess();
          if (a1[8] == 0.0 || (result = sub_1B964C6B0(), !v1))
          {
            swift_beginAccess();
            if (a1[9] == 0.0 || (result = sub_1B964C6B0(), !v1))
            {
              swift_beginAccess();
              if (a1[10] == 0.0 || (result = sub_1B964C6B0(), !v1))
              {
                swift_beginAccess();
                if (a1[11] == 0.0 || (result = sub_1B964C6B0(), !v1))
                {
                  swift_beginAccess();
                  if (a1[12] == 0.0 || (result = sub_1B964C6B0(), !v1))
                  {
                    swift_beginAccess();
                    if (a1[13] == 0.0 || (result = sub_1B964C6B0(), !v1))
                    {
                      swift_beginAccess();
                      if (a1[14] == 0.0 || (result = sub_1B964C6B0(), !v1))
                      {
                        swift_beginAccess();
                        if (a1[15] == 0.0 || (result = sub_1B964C6B0(), !v1))
                        {
                          swift_beginAccess();
                          if (a1[16] == 0.0 || (result = sub_1B964C6B0(), !v1))
                          {
                            swift_beginAccess();
                            if (a1[17] == 0.0 || (result = sub_1B964C6B0(), !v1))
                            {
                              swift_beginAccess();
                              if (a1[18] == 0.0 || (result = sub_1B964C6B0(), !v1))
                              {
                                swift_beginAccess();
                                if (a1[19] == 0.0 || (result = sub_1B964C6B0(), !v1))
                                {
                                  swift_beginAccess();
                                  if (a1[20] == 0.0 || (result = sub_1B964C6B0(), !v1))
                                  {
                                    swift_beginAccess();
                                    if (a1[21] == 0.0 || (result = sub_1B964C6B0(), !v1))
                                    {
                                      swift_beginAccess();
                                      if (a1[22] == 0.0 || (result = sub_1B964C6B0(), !v1))
                                      {
                                        swift_beginAccess();
                                        if (a1[23] == 0.0 || (result = sub_1B964C6B0(), !v1))
                                        {
                                          result = swift_beginAccess();
                                          if (a1[24] != 0.0)
                                          {
                                            return sub_1B964C6B0();
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
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

uint64_t static Argos_Protos_Scenenetfeaturespb_AestheticAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && !sub_1B8DD611C(v5, v6))
  {
    return 0;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_4_4();
  sub_1B8CD19A0(v7, v8);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8DD611C(float *a1, float *a2)
{
  swift_beginAccess();
  v4 = a1[4];
  swift_beginAccess();
  if (v4 != a2[4])
  {
    return 0;
  }

  swift_beginAccess();
  v5 = a1[5];
  swift_beginAccess();
  if (v5 != a2[5])
  {
    return 0;
  }

  swift_beginAccess();
  v6 = a1[6];
  swift_beginAccess();
  if (v6 != a2[6])
  {
    return 0;
  }

  swift_beginAccess();
  v7 = a1[7];
  swift_beginAccess();
  if (v7 != a2[7])
  {
    return 0;
  }

  swift_beginAccess();
  v8 = a1[8];
  swift_beginAccess();
  if (v8 != a2[8])
  {
    return 0;
  }

  swift_beginAccess();
  v9 = a1[9];
  swift_beginAccess();
  if (v9 != a2[9])
  {
    return 0;
  }

  swift_beginAccess();
  v10 = a1[10];
  swift_beginAccess();
  if (v10 != a2[10])
  {
    return 0;
  }

  swift_beginAccess();
  v11 = a1[11];
  swift_beginAccess();
  if (v11 != a2[11])
  {
    return 0;
  }

  swift_beginAccess();
  v12 = a1[12];
  swift_beginAccess();
  if (v12 != a2[12])
  {
    return 0;
  }

  swift_beginAccess();
  v13 = a1[13];
  swift_beginAccess();
  if (v13 != a2[13])
  {
    return 0;
  }

  swift_beginAccess();
  v14 = a1[14];
  swift_beginAccess();
  if (v14 != a2[14])
  {
    return 0;
  }

  swift_beginAccess();
  v15 = a1[15];
  swift_beginAccess();
  if (v15 != a2[15])
  {
    return 0;
  }

  swift_beginAccess();
  v16 = a1[16];
  swift_beginAccess();
  if (v16 != a2[16])
  {
    return 0;
  }

  swift_beginAccess();
  v17 = a1[17];
  swift_beginAccess();
  if (v17 != a2[17])
  {
    return 0;
  }

  swift_beginAccess();
  v18 = a1[18];
  swift_beginAccess();
  if (v18 != a2[18])
  {
    return 0;
  }

  swift_beginAccess();
  v19 = a1[19];
  swift_beginAccess();
  if (v19 != a2[19])
  {
    return 0;
  }

  swift_beginAccess();
  v20 = a1[20];
  swift_beginAccess();
  if (v20 != a2[20])
  {
    return 0;
  }

  swift_beginAccess();
  v21 = a1[21];
  swift_beginAccess();
  if (v21 != a2[21])
  {
    return 0;
  }

  swift_beginAccess();
  v22 = a1[22];
  swift_beginAccess();
  if (v22 != a2[22])
  {
    return 0;
  }

  swift_beginAccess();
  v23 = a1[23];
  swift_beginAccess();
  if (v23 != a2[23])
  {
    return 0;
  }

  swift_beginAccess();
  v24 = a1[24];
  swift_beginAccess();
  return v24 == a2[24];
}

uint64_t sub_1B8DD669C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19A0(&qword_1EBABA3D0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DD671C(uint64_t a1)
{
  v2 = sub_1B8CD19A0(&qword_1EBABA360, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DD678C()
{
  sub_1B8CD19A0(&qword_1EBABA360, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DD6824()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA328);
  __swift_project_value_buffer(v0, qword_1EBABA328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "aesthetic_attributes";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "aesthetic_score";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "technique_score";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "classification_labels";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "scene_print";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "saliency_a_map";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "saliency_o_map";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dedup_embedding";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
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
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B8DD6C68();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 4:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B8DD6D1C();
        break;
      case 5:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C430();
        break;
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DD6C68()
{
  v0 = *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0) + 48);
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  sub_1B8CD19A0(&qword_1EBABA360, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);
  return sub_1B964C580();
}

uint64_t sub_1B8DD6D1C()
{
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0);
  sub_1B8CD19A0(&qword_1EBABA358, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label);
  return sub_1B964C570();
}

uint64_t Argos_Protos_Scenenetfeaturespb_ScenenetOutput.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  sub_1B8DD4AC4(v1 + *(v14 + 48), v7);
  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBABA340, &qword_1B9653000);
  }

  else
  {
    sub_1B8DD4B34(v7, v13);
    sub_1B8CD19A0(&qword_1EBABA360, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes);
    OUTLINED_FUNCTION_79_0();
    sub_1B964C740();
    result = sub_1B8DD4BFC(v13);
    if (v0)
    {
      return result;
    }
  }

  if (*v1 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
  {
    if (*(v1 + 4) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
    {
      if (!*(*(v1 + 8) + 16) || (type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label(0), sub_1B8CD19A0(&qword_1EBABA358, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
      {
        if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C610(), !v0))
        {
          if (sub_1B8D99EA8(*(v1 + 24), *(v1 + 32)) || (v19 = *(v1 + 24), v20 = *(v1 + 32), OUTLINED_FUNCTION_79_0(), result = sub_1B964C6A0(), !v0))
          {
            if (sub_1B8D99EA8(*(v1 + 40), *(v1 + 48)) || (v21 = *(v1 + 40), v22 = *(v1 + 48), OUTLINED_FUNCTION_79_0(), result = sub_1B964C6A0(), !v0))
            {
              if (!*(*(v1 + 56) + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C610(), !v0))
              {
                v23 = v1 + *(v14 + 44);
                OUTLINED_FUNCTION_12();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Scenenetfeaturespb_ScenenetOutput.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA368, &qword_1B9653008) - 8);
  v15 = *(*v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  v20 = *(v19 + 48);
  v21 = v14[14];
  sub_1B8DD4AC4(v1 + v20, v18);
  sub_1B8DD4AC4(v0 + v20, &v18[v21]);
  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v22, v23, v24) != 1)
  {
    sub_1B8DD4AC4(v18, v13);
    OUTLINED_FUNCTION_38_1();
    if (__swift_getEnumTagSinglePayload(v28, v29, v30) != 1)
    {
      sub_1B8DD4B34(&v18[v21], v7);
      v35 = *(v2 + 20);
      v36 = *&v13[v35];
      v37 = *&v7[v35];
      if (v36 == v37 || sub_1B8DD611C(v36, v37))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_4_4();
        sub_1B8CD19A0(v38, v39);
        v40 = sub_1B964C850();
        sub_1B8DD4BFC(v7);
        sub_1B8DD4BFC(v13);
        sub_1B8D9207C(v18, &qword_1EBABA340, &qword_1B9653000);
        if ((v40 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      sub_1B8DD4BFC(v7);
      sub_1B8DD4BFC(v13);
      v31 = &qword_1EBABA340;
      v32 = &qword_1B9653000;
LABEL_7:
      sub_1B8D9207C(v18, v31, v32);
      goto LABEL_8;
    }

    sub_1B8DD4BFC(v13);
LABEL_6:
    v31 = &qword_1EBABA368;
    v32 = &qword_1B9653008;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v25, v26, v27) != 1)
  {
    goto LABEL_6;
  }

  sub_1B8D9207C(v18, &qword_1EBABA340, &qword_1B9653000);
LABEL_13:
  if (*v1 == *v0 && *(v1 + 4) == *(v0 + 4))
  {
    v41 = *(v1 + 8);
    v42 = *(v0 + 8);
    sub_1B8D67B70();
    if (v43 & 1) != 0 && (sub_1B8D63AC4(*(v1 + 16), *(v0 + 16)) & 1) != 0 && (MEMORY[0x1BFADC060](*(v1 + 24), *(v1 + 32), *(v0 + 24), *(v0 + 32)) & 1) != 0 && (MEMORY[0x1BFADC060](*(v1 + 40), *(v1 + 48), *(v0 + 40), *(v0 + 48)) & 1) != 0 && (sub_1B8D63AC4(*(v1 + 56), *(v0 + 56)))
    {
      v44 = *(v19 + 44);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_4_4();
      sub_1B8CD19A0(v45, v46);
      v33 = sub_1B964C850();
      return v33 & 1;
    }
  }

LABEL_8:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1B8DD745C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD19A0(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t (*sub_1B8DD7510(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1B8DD7564(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19A0(&qword_1EBABA3C8, type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DD75E4(uint64_t a1)
{
  v2 = sub_1B8CD19A0(&qword_1EBABA3A0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DD7654()
{
  sub_1B8CD19A0(&qword_1EBABA3A0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput);

  return sub_1B964C5D0();
}

void sub_1B8DD7A5C()
{
  sub_1B8DD7D14(319, qword_1EDA06FD0);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8DD7B28()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8DD7BD4()
{
  sub_1B8DD7D60(319, &qword_1EBABA3C0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_Label, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B8DD7D14(319, &qword_1ED9EB2E8);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B8DD7D60(319, &qword_1ED9C9328, type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B8DD7D14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B964C910();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B8DD7D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  v5 = *(result + 20);
  *(a1 + 84) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*(*a1 + 72) + *(*a1 + 84));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_2_4()
{
  result = type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  v1 = *(v0 + *(type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  v2 = *(v0 + 84);
  v3 = *(v0 + 72);

  return type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes._StorageClass();
}

unint64_t Argos_Protos_Visualquerypb_ImageType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B8DD8010@<X0>(uint64_t *a1@<X8>)
{
  result = Argos_Protos_Visualquerypb_ImageType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8DD8044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DDA1A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Argos_Protos_Visualquerypb_ImageType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABA3E0 = a1;
}

uint64_t sub_1B8DD81A8@<X0>(uint64_t *a1@<X8>)
{
  result = static Argos_Protos_Visualquerypb_ImageType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageGeolocation.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v9);
  OUTLINED_FUNCTION_28_2(v2 + *(v10 + 48), v1);
  v11 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    v13 = a1 + *(v11 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v11 + 36);
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_6();
    return sub_1B8DD8C38();
  }

  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageGeolocation.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_1_6();
  sub_1B8DD8C38();
  type metadata accessor for Locationpb_Point(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Argos_Protos_Visualquerypb_ImageMetadata.imageGeolocation.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_26_1(v5);
  v7 = type metadata accessor for Locationpb_Point(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  v12 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v11);
  OUTLINED_FUNCTION_16_4(*(v12 + 48));
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    v14 = v9 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v7 + 36);
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_6();
    sub_1B8DD8C38();
  }

  return sub_1B8DD84DC;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.hasImageGeolocation.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v7);
  OUTLINED_FUNCTION_23_2(*(v8 + 48));
  v9 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualquerypb_ImageMetadata.clearImageGeolocation()()
{
  v1 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBAB9280, &qword_1B96535F0);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageGeolocationS2Cells.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void Argos_Protos_Visualquerypb_ImageMetadata.imageType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageURL.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.imageURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.webPageURL.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.webPageURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.originatingAppBundleID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.originatingAppBundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0) + 44);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v2) + 44);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Argos_Protos_Visualquerypb_ImageMetadata.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v0) + 44);
  return nullsub_1;
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  v2 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  v3 = a1 + *(v2 + 44);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 48);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.imageBytes.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.imageBytes.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.visualUnderstanding.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v9);
  OUTLINED_FUNCTION_28_2(v2 + *(v10 + 24), v1);
  v11 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v13 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v11 + 24);
    type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBABA430, &qword_1B96535F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_6();
    return sub_1B8DD8C38();
  }

  return result;
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.visualUnderstanding.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_3_6();
  sub_1B8DD8C38();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8DD8C38()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

void (*Argos_Protos_Visualquerypb_VisualQuery.visualUnderstanding.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_26_1(v5);
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  v12 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v11);
  OUTLINED_FUNCTION_16_4(*(v12 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    v14 = v9 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v7 + 24);
    type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBABA430, &qword_1B96535F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_6();
    sub_1B8DD8C38();
  }

  return sub_1B8DD8DE0;
}

uint64_t sub_1B8DD8E08()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8DD8E5C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.hasVisualUnderstanding.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v7);
  OUTLINED_FUNCTION_23_2(*(v8 + 24));
  v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualquerypb_VisualQuery.clearVisualUnderstanding()()
{
  v1 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBABA430, &qword_1B96535F8);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.imageMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v9);
  OUTLINED_FUNCTION_28_2(v1 + *(v10 + 28), v2);
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  OUTLINED_FUNCTION_57(v2);
  if (v11)
  {
    Argos_Protos_Visualquerypb_ImageMetadata.init()(a1);
    result = OUTLINED_FUNCTION_57(v2);
    if (!v11)
    {
      return sub_1B8D9207C(v2, &qword_1EBABA438, &unk_1B9653600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_5();
    return sub_1B8DD8C38();
  }

  return result;
}

uint64_t sub_1B8DD9078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_432();
  v9(v8);
  return a2;
}

uint64_t sub_1B8DD90D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  sub_1B8DD8E08();
  return a7(v12);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.imageMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_2_5();
  sub_1B8DD8C38();
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Argos_Protos_Visualquerypb_VisualQuery.imageMetadata.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_26_1(v5);
  v7 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  v12 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v11);
  OUTLINED_FUNCTION_16_4(*(v12 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    *(v9 + 8) = 0;
    *(v9 + 16) = 1;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0xE000000000000000;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0xE000000000000000;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0xE000000000000000;
    *(v9 + 72) = 0;
    v14 = v9 + *(v7 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v7 + 48);
    type metadata accessor for Locationpb_Point(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBABA438, &unk_1B9653600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_5();
    sub_1B8DD8C38();
  }

  return sub_1B8DD9354;
}

void sub_1B8DD937C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    v13 = (*a1)[4];
    sub_1B8DD8E08();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B8DD8C38();
    OUTLINED_FUNCTION_187_1();
    sub_1B8DD8E5C();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B8DD8C38();
    OUTLINED_FUNCTION_187_1();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.hasImageMetadata.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v7);
  OUTLINED_FUNCTION_23_2(*(v8 + 28));
  v9 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualquerypb_VisualQuery.clearImageMetadata()()
{
  v1 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBABA438, &unk_1B9653600);
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Argos_Protos_Visualquerypb_VisualQuery.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(v0) + 20);
  return nullsub_1;
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  v2 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  v3 = a1 + v2[5];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[6];
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B8DD9710()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA3E8);
  __swift_project_value_buffer(v0, qword_1EBABA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SCREENSHOT";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DD991C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA400);
  __swift_project_value_buffer(v0, qword_1EBABA400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_geolocation";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 6;
  *v10 = "image_geolocation_s2_cells";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "image_type";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "image_url";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "web_page_url";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "originating_app_bundle_id";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "image_geodirection";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "image_geolocation_error";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
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
        OUTLINED_FUNCTION_9();
        sub_1B8DD9D60();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8DD9E14();
        break;
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4F0();
        break;
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DD9D60()
{
  v0 = *(type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0) + 48);
  type metadata accessor for Locationpb_Point(0);
  sub_1B8DDB6FC(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
  return sub_1B964C580();
}

uint64_t Argos_Protos_Visualquerypb_ImageMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Locationpb_Point(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v31 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  v32 = v3;
  sub_1B8DD9078(v3 + *(v31 + 48), v10, &qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9280, &qword_1B96535F0);
  }

  else
  {
    sub_1B8DD8C38();
    sub_1B8DDB6FC(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
    OUTLINED_FUNCTION_79_0();
    sub_1B964C740();
    result = sub_1B8DD8E5C();
    if (v4)
    {
      return result;
    }
  }

  v19 = v32;
  if (!*(v32 + 8) || (v20 = *(v32 + 16), v33 = *(v32 + 8), v34 = v20, sub_1B8DDA1A0(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v4))
  {
    v21 = *(v19 + 24);
    v22 = *(v19 + 32);
    OUTLINED_FUNCTION_1();
    if (!v23 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
    {
      v24 = *(v19 + 40);
      v25 = *(v19 + 48);
      OUTLINED_FUNCTION_1();
      if (!v26 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
      {
        v27 = *(v19 + 56);
        v28 = *(v19 + 64);
        OUTLINED_FUNCTION_1();
        if (!v29 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
        {
          if (!*(*v19 + 16) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C660(), !v4))
          {
            if (*(v19 + 72) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v4))
            {
              if (*(v19 + 76) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v4))
              {
                v30 = v19 + *(v31 + 44);
                OUTLINED_FUNCTION_12();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B8DDA1A0()
{
  result = qword_1EBABA440;
  if (!qword_1EBABA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA440);
  }

  return result;
}

uint64_t static Argos_Protos_Visualquerypb_ImageMetadata.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_280();
  v3 = type metadata accessor for Locationpb_Point(v2);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9288, &unk_1B964DA70) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v45 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  v21 = *(v45 + 48);
  v22 = v16[14];
  sub_1B8DD9078(v1 + v21, v20, &qword_1EBAB9280, &qword_1B96535F0);
  sub_1B8DD9078(v0 + v21, &v20[v22], &qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_178(v23, v24, v25);
  if (v32)
  {
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_178(v26, v27, v28);
    if (v32)
    {
      sub_1B8D9207C(v20, &qword_1EBAB9280, &qword_1B96535F0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v20, &qword_1EBAB9288, &unk_1B964DA70);
    goto LABEL_39;
  }

  sub_1B8DD9078(v20, v15, &qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_178(v29, v30, v31);
  if (v32)
  {
    sub_1B8DD8E5C();
    goto LABEL_9;
  }

  sub_1B8DD8C38();
  v33 = static Locationpb_Point.== infix(_:_:)(v15, v9);
  sub_1B8DD8E5C();
  sub_1B8DD8E5C();
  sub_1B8D9207C(v20, &qword_1EBAB9280, &qword_1B96535F0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  if ((sub_1B8D921A4(*v1, *v0) & 1) == 0)
  {
    goto LABEL_39;
  }

  v34 = *(v1 + 8);
  v35 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v34 = v34 != 0;
  }

  if (*(v0 + 16) != 1)
  {
    if (v34 != v35)
    {
      goto LABEL_39;
    }

    goto LABEL_21;
  }

  if (!v35)
  {
    if (!v34)
    {
      goto LABEL_21;
    }

LABEL_39:
    v42 = 0;
    return v42 & 1;
  }

  if (v34 != 1)
  {
    goto LABEL_39;
  }

LABEL_21:
  v36 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v36 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v37 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v37 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v38 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v38 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 72) != *(v0 + 72) || *(v1 + 76) != *(v0 + 76))
  {
    goto LABEL_39;
  }

  v39 = *(v45 + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_14_4();
  sub_1B8DDB6FC(v40, v41);
  v42 = sub_1B964C850();
  return v42 & 1;
}

uint64_t sub_1B8DDA628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DDB6FC(&qword_1EBABA4D8, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DDA6A8(uint64_t a1)
{
  v2 = sub_1B8DDB6FC(&qword_1EBABA458, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DDA718()
{
  sub_1B8DDB6FC(&qword_1EBABA458, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DDA7B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA418);
  __swift_project_value_buffer(v0, qword_1EBABA418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "image_bytes";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visual_understanding";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_metadata";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8DDAB18();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8DDAA64();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8DDAA64()
{
  v0 = *(type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0) + 24);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  sub_1B8DDB6FC(&qword_1EBABA460, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding);
  return sub_1B964C580();
}

uint64_t sub_1B8DDAB18()
{
  v0 = *(type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0) + 28);
  type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  sub_1B8DDB6FC(&qword_1EBABA458, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata);
  return sub_1B964C580();
}

uint64_t Argos_Protos_Visualquerypb_VisualQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, int *a3)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_104(v9, v32);
  v34 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(0);
  v10 = OUTLINED_FUNCTION_59_1(v34);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v32 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v26 = *v3;
  v25 = v3[1];
  v35 = v3;
  if (sub_1B8D99EA8(v26, v25) || (result = sub_1B964C6A0(), !v4))
  {
    v36 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
    v28 = v35;
    sub_1B8DD9078(v35 + v36[6], v20, &qword_1EBABA430, &qword_1B96535F8);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      sub_1B8D9207C(v20, &qword_1EBABA430, &qword_1B96535F8);
    }

    else
    {
      sub_1B8DD8C38();
      sub_1B8DDB6FC(&qword_1EBABA460, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding);
      sub_1B964C740();
      result = sub_1B8DD8E5C();
      if (v4)
      {
        return result;
      }

      v28 = v35;
    }

    v30 = v33;
    v29 = v34;
    sub_1B8DD9078(v28 + v36[7], v33, &qword_1EBABA438, &unk_1B9653600);
    if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
    {
      sub_1B8D9207C(v30, &qword_1EBABA438, &unk_1B9653600);
    }

    else
    {
      sub_1B8DD8C38();
      sub_1B8DDB6FC(&qword_1EBABA458, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata);
      sub_1B964C740();
      result = sub_1B8DD8E5C();
      if (v4)
      {
        return result;
      }
    }

    v31 = v28 + v36[5];
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Argos_Protos_Visualquerypb_VisualQuery.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_280();
  v60 = type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata(v3);
  v4 = OUTLINED_FUNCTION_59_1(v60);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_104(v14, v56);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA468, &qword_1B9653610);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_22_3();
  v20 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v19);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_183(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v56 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA470, &qword_1B9653618);
  OUTLINED_FUNCTION_59_1(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v56 - v34;
  if ((MEMORY[0x1BFADC060](*v1, v1[1], *v0, v0[1]) & 1) == 0)
  {
    goto LABEL_22;
  }

  v56 = v9;
  v36 = type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery(0);
  v61 = v0;
  v37 = v1;
  v57 = v36;
  v58 = v1;
  v38 = *(v36 + 24);
  v39 = *(v30 + 48);
  sub_1B8DD9078(v37 + v38, v35, &qword_1EBABA430, &qword_1B96535F8);
  sub_1B8DD9078(v61 + v38, &v35[v39], &qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_178(v35, 1, v20);
  if (v40)
  {
    OUTLINED_FUNCTION_178(&v35[v39], 1, v20);
    if (v40)
    {
      sub_1B8D9207C(v35, &qword_1EBABA430, &qword_1B96535F8);
      goto LABEL_12;
    }

LABEL_10:
    v41 = &qword_1EBABA470;
    v42 = &qword_1B9653618;
    v43 = v35;
LABEL_21:
    sub_1B8D9207C(v43, v41, v42);
    goto LABEL_22;
  }

  sub_1B8DD9078(v35, v29, &qword_1EBABA430, &qword_1B96535F8);
  OUTLINED_FUNCTION_178(&v35[v39], 1, v20);
  if (v40)
  {
    sub_1B8DD8E5C();
    goto LABEL_10;
  }

  sub_1B8DD8C38();
  static Argos_Protos_Visualunderstandingpb_VisualUnderstanding.== infix(_:_:)();
  v45 = v44;
  sub_1B8DD8E5C();
  OUTLINED_FUNCTION_236();
  sub_1B8DD8E5C();
  sub_1B8D9207C(v35, &qword_1EBABA430, &qword_1B96535F8);
  if ((v45 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v46 = v57;
  v47 = *(v57 + 28);
  v48 = *(v15 + 48);
  OUTLINED_FUNCTION_28_2(v58 + v47, v2);
  OUTLINED_FUNCTION_28_2(v61 + v47, v2 + v48);
  OUTLINED_FUNCTION_178(v2, 1, v60);
  if (v40)
  {
    OUTLINED_FUNCTION_57(v2 + v48);
    if (v40)
    {
      sub_1B8D9207C(v2, &qword_1EBABA438, &unk_1B9653600);
LABEL_25:
      v53 = *(v46 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_14_4();
      sub_1B8DDB6FC(v54, v55);
      v50 = sub_1B964C850();
      return v50 & 1;
    }

    goto LABEL_20;
  }

  sub_1B8DD9078(v2, v59, &qword_1EBABA438, &unk_1B9653600);
  OUTLINED_FUNCTION_57(v2 + v48);
  if (v49)
  {
    sub_1B8DD8E5C();
LABEL_20:
    v41 = &qword_1EBABA468;
    v42 = &qword_1B9653610;
    v43 = v2;
    goto LABEL_21;
  }

  sub_1B8DD8C38();
  v52 = static Argos_Protos_Visualquerypb_ImageMetadata.== infix(_:_:)();
  OUTLINED_FUNCTION_514();
  sub_1B8DD8E5C();
  sub_1B8DD8E5C();
  sub_1B8D9207C(v2, &qword_1EBABA438, &unk_1B9653600);
  if (v52)
  {
    goto LABEL_25;
  }

LABEL_22:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_1B8DDB4A8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8DDB6FC(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DDB58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DDB6FC(&qword_1EBABA4D0, type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DDB60C(uint64_t a1)
{
  v2 = sub_1B8DDB6FC(&qword_1EBABA4C0, type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DDB67C()
{
  sub_1B8DDB6FC(&qword_1EBABA4C0, type metadata accessor for Argos_Protos_Visualquerypb_VisualQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DDB6FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8DDB748()
{
  result = qword_1EBABA480;
  if (!qword_1EBABA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA480);
  }

  return result;
}

unint64_t sub_1B8DDB7A0()
{
  result = qword_1EBABA488;
  if (!qword_1EBABA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA488);
  }

  return result;
}

unint64_t sub_1B8DDB7F8()
{
  result = qword_1EBABA490;
  if (!qword_1EBABA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA490);
  }

  return result;
}

unint64_t sub_1B8DDB850()
{
  result = qword_1EBABA498;
  if (!qword_1EBABA498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABA4A0, &qword_1B9653708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA498);
  }

  return result;
}