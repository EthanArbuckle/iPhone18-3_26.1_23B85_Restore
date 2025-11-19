uint64_t sub_26B1A52A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B214030();
  NanoID.hash(into:)(v4, v1, v2);
  return sub_26B214070();
}

uint64_t NanoID.init(from:)(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_20();
  sub_26B2140E0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    OUTLINED_FUNCTION_4_20();
    v1 = sub_26B213E40();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t NanoID.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B214110();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26B213E70();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_26B1A5474@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = NanoID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_26B1A54A0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return NanoID.encode(to:)(a1);
}

uint64_t static UInt32.nanoID()()
{
  v0 = OUTLINED_FUNCTION_3_19();
  _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(v0, v1, 4uLL);
  String.fourChar.getter();
  v3 = v2;

  if ((v3 & 0x100000000) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static UInt64.nanoID()()
{
  v0 = OUTLINED_FUNCTION_3_19();
  _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(v0, v1, 8uLL);
  String.eightChar.getter();
  v3 = v2;
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_26B1A556C()
{
  result = qword_2803E7C50;
  if (!qword_2803E7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7C50);
  }

  return result;
}

unint64_t sub_26B1A55C4()
{
  result = qword_2803E7C58[0];
  if (!qword_2803E7C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E7C58);
  }

  return result;
}

Swift::String *sub_26B1A5680@<X0>(Swift::String *result@<X0>, SonicFoundation::NanoID *a2@<X8>)
{
  if (!v2)
  {
    v4 = NanoID.init(nativeValue:)(*result);
    result = v4.nanoIDString._countAndFlagsBits;
    *a2 = v4;
  }

  return result;
}

uint64_t sub_26B1A56BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  result = NanoID.nativeValue.getter(*v1);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t ProtobufDataConvertible<>.init(_protobufData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v9 = sub_26B212410();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v24 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v23 - v19;
  v28 = a1;
  v29 = a2;
  swift_getAssociatedConformanceWitness();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  sub_26B14F044(a1, a2);
  sub_26B212400();
  v21 = v30;
  sub_26B2124B0();
  if (!v21)
  {
    (*(v24 + 16))(v18, v20, AssociatedTypeWitness);
    (*(a4 + 24))(v18, a3, a4);
    (*(v24 + 8))(v20, AssociatedTypeWitness);
  }

  return sub_26B14FF4C(a1, a2);
}

uint64_t ProtobufDataConvertible<>._protobufData.getter(uint64_t a1, uint64_t a2)
{
  v20[0] = sub_26B212430();
  v4 = OUTLINED_FUNCTION_0(v20[0]);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v20 - v17;
  (*(a2 + 32))(a1, a2);
  swift_getAssociatedConformanceWitness();
  sub_26B212420();
  sub_26B2124C0();
  (*(v6 + 8))(v10, v20[0]);
  (*(v14 + 8))(v18, AssociatedTypeWitness);
  return v20[2];
}

uint64_t *sub_26B1A5C04(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_26B1A5C58(a1, a2, a3);
}

uint64_t *sub_26B1A5C58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = v3 + *(*v3 + 104);
  *v7 = xmmword_26B215910;
  (*(*(*(v6 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a2;
  *(v7 + 8) = a3;
  sub_26B14D918(a2, a3);
  sub_26B156574(v8, v9);
  sub_26B156574(a2, a3);
  return v3;
}

uint64_t sub_26B1A5D3C()
{
  v1 = (v0 + *(*v0 + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = xmmword_26B215910;
  return sub_26B156574(v2, v3);
}

uint64_t sub_26B1A5D68@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B1A5E08(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  swift_endAccess();
  sub_26B1A5D3C();
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_26B1A5EF0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  sub_26B156574(*(v0 + *(*v0 + 104)), *(v0 + *(*v0 + 104) + 8));
  return v0;
}

uint64_t sub_26B1A5F80()
{
  v0 = sub_26B1A5EF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ProtobufData.data.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = (*v1 + *(**v1 + 104));
  v14 = *v13;
  v15 = v13[1];
  if (v15 >> 60 != 15)
  {
    v16 = *v13;
    v19 = v13[1];
LABEL_6:
    sub_26B14D918(v14, v15);
    return v16;
  }

  sub_26B1A5D68(v12);
  v16 = v12;
  v17 = (*(*(a1 + 24) + 16))(v4);
  if (!v2)
  {
    v16 = v17;
    v20 = v18;
    (*(v6 + 8))(v12, v4);
    v21 = *v13;
    v22 = v13[1];
    *v13 = v16;
    v13[1] = v20;
    sub_26B14F044(v16, v20);
    sub_26B156574(v21, v22);
    goto LABEL_6;
  }

  (*(v6 + 8))(v12, v4);
  return v16;
}

uint64_t ProtobufData.decode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v18 = *v3;
  v13 = *(v12 + 24);
  v14 = *(v13 + 8);
  sub_26B14F044(v15, v16);
  result = v14(a1, a2, v7, v13);
  if (!v4)
  {
    return sub_26B1A5E08(v11);
  }

  return result;
}

Swift::Void __swiftcall ProtobufData.clear()()
{
  v1 = (*v0 + *(**v0 + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = xmmword_26B215910;
  sub_26B156574(v2, v3);
}

uint64_t ProtobufData.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  type metadata accessor for ProtobufData.Storage();
  (*(v7 + 16))(v13, a1, a2);
  v14 = sub_26B1A5C04(v13, 0, 0xF000000000000000);
  result = (*(v7 + 8))(a1, a2);
  *a3 = v14;
  return result;
}

uint64_t ProtobufData.init(protobufData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v16 = *(v15 + 8);
  sub_26B14F044(v17, v18);
  v16(a1, a2, a3, a4);
  if (v5)
  {
    return sub_26B14FF4C(a1, a2);
  }

  ProtobufData.init(wrappedValue:)(v14, a3, &v20);
  result = sub_26B14FF4C(a1, a2);
  *a5 = v20;
  return result;
}

uint64_t sub_26B1A64D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = type metadata accessor for ProtobufData();
  return ProtobufData.wrappedValue.setter(v7, v9);
}

uint64_t ProtobufData.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = *v2;
  (*(v6 + 16))(v11 - v10, a1, v4);
  sub_26B1A5E08(v12);
  return (*(v6 + 8))(a1, v4);
}

void (*ProtobufData.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  OUTLINED_FUNCTION_9_0();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[5] = v10;
  v11 = *v2;
  sub_26B1A5D68(v10);
  return sub_26B1A6754;
}

void sub_26B1A6754(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    ProtobufData.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    ProtobufData.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_26B1A68C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B1A6914(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

SonicFoundation::LiteralSQL_optional __swiftcall LiteralSQL.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.rawValue = rawValue;
  return result;
}

uint64_t LiteralSQL.sql.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return sub_26B2128F0();
}

void SQL.init(stringLiteral:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  OUTLINED_FUNCTION_8_17(a1);
}

uint64_t LiteralSQL.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return v1;
}

uint64_t LiteralSQL.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26B1A6A70@<X0>(uint64_t *a1@<X8>)
{
  result = LiteralSQL.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1A6AB8()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v32 = 0;
  v33 = 0xE000000000000000;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = *v1 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_26B1A8DCC(v4, v26);
      if (v31)
      {
        if (v31 == 1)
        {
          sub_26B150514(v26, v24);
          MEMORY[0x26D670040](63, 0xE100000000000000);
          __src[0] = *(v5 + 16) + 1;
          __src[1] = 0;
          LOBYTE(__src[2]) = 0;
          sub_26B16BCF8(v24, &__src[3]);
          LOBYTE(__src[10]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_17();
            v5 = v14;
          }

          v6 = *(v5 + 16);
          if (v6 >= *(v5 + 24) >> 1)
          {
            OUTLINED_FUNCTION_6_17();
            v5 = v15;
          }

          __swift_destroy_boxed_opaque_existential_1(v24);
          *(v5 + 16) = v6 + 1;
          memcpy((v5 + 88 * v6 + 32), __src, 0x51uLL);
        }

        else
        {
          v7 = v27;
          v8 = v28;
          v10 = v29;
          v9 = v30;
          sub_26B150514(v26, v24);
          __src[0] = v7;
          __src[1] = v8;
          MEMORY[0x26D670040](2703144, 0xE300000000000000);
          MEMORY[0x26D670040](__src[0], __src[1]);

          __src[0] = *(v5 + 16) + 1;
          __src[1] = 0;
          LOBYTE(__src[2]) = 0;
          v11 = v25;
          v12 = __swift_project_boxed_opaque_existential_1(v24, v25);
          sub_26B1A6E88(v12, v11, &__src[3]);
          __src[8] = v10;
          __src[9] = v9;
          LOBYTE(__src[10]) = 1;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = *(v5 + 16);
            sub_26B16AF14();
            v5 = v17;
          }

          v13 = *(v5 + 16);
          if (v13 >= *(v5 + 24) >> 1)
          {
            OUTLINED_FUNCTION_6_17();
            v5 = v18;
          }

          *(v5 + 16) = v13 + 1;
          memcpy((v5 + 88 * v13 + 32), __src, 0x51uLL);
          __swift_destroy_boxed_opaque_existential_1(v24);
        }
      }

      else
      {
        MEMORY[0x26D670040](*&v26[0], *(&v26[0] + 1));
      }

      v4 += 80;
      --v3;
    }

    while (v3);
    v19 = v32;
    v2 = v33;
  }

  else
  {
    v19 = 0;
    v5 = MEMORY[0x277D84F90];
  }

  v20 = v1[2];

  v1[1] = v19;
  v1[2] = v2;
  if (!*(v5 + 16))
  {
  }

  v21 = v1[3];

  v1[3] = v5;
  return result;
}

SonicFoundation::SQL::Interpolation __swiftcall SQL.Interpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = MEMORY[0x277D84F90];
  if (__OFADD__(interpolationCount, 2))
  {
    __break(1u);
  }

  else
  {
    sub_26B16AFCC();
    *v3 = literalCapacity;
  }

  result.bindQueue._rawValue = v5;
  result.parameterizedSQL.value._object = v4;
  result.parameterizedSQL.value._countAndFlagsBits = interpolationCount;
  result.tokens._rawValue = literalCapacity;
  return result;
}

Swift::Void __swiftcall SQL.Interpolation.appendLiteral(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_26B2128F0();
  sub_26B16A518();
  sub_26B16A6D4(*(*v1 + 16));
  OUTLINED_FUNCTION_2_25();
  *(v4 + 32) = countAndFlagsBits;
  *(v4 + 40) = object;
  *(v4 + 104) = 0;
  *v1 = v5;
}

void SQL.Interpolation.appendInterpolation(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (a1[4])
  {
    v3 = *a1;
    v4 = sub_26B2128F0();

    sub_26B168BB8(v4);
  }

  else
  {
    v5 = a1[1];
    sub_26B2128F0();
    sub_26B16A518();
    sub_26B16A6D4(*(*v1 + 16));
    OUTLINED_FUNCTION_2_25();
    *(v6 + 32) = v2;
    *(v6 + 40) = v5;
    *(v6 + 104) = 0;
    *v1 = v7;
  }
}

uint64_t sub_26B1A6E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s12ReferenceBoxCMa();
  (*(v6 + 16))(v9, a1, a2);
  result = sub_26B1E4F44(v9);
  a3[3] = v10;
  a3[4] = &off_287BC1198;
  *a3 = result;
  return result;
}

uint64_t sub_26B1A6F74()
{
  v1 = *v0;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_26B1A8DCC(v3, v17);
      if (v18)
      {
        if (v18 == 1)
        {
          sub_26B150514(v17, v14);
          v4 = v15;
          v5 = v16;
          __swift_project_boxed_opaque_existential_1(v14, v15);
          (*(v5 + 16))(v13, v4, v5);
          v6 = v13[0];
          v7 = v13[1];
          swift_beginAccess();
          MEMORY[0x26D670040](v6, v7);
          swift_endAccess();
        }

        else
        {

          sub_26B150514(v17, v14);
          v9 = v15;
          v10 = v16;
          v11 = __swift_project_boxed_opaque_existential_1(v14, v15);
          sub_26B1A70FC(v11, v19, v9, v10);
        }

        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      else
      {
        v8 = v17[0];
        swift_beginAccess();
        MEMORY[0x26D670040](v8, *(&v8 + 1));
        swift_endAccess();
      }

      v3 += 80;
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  return v19[0];
}

uint64_t sub_26B1A70FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v6 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = &v44 - v9;
  v56 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = sub_26B2133E0();
  v48 = *(v52 - 8);
  v11 = *(v48 + 64);
  v12 = MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = &v44 - v14;
  v47 = sub_26B213A20();
  v15 = *(*(v47 - 1) + 8);
  MEMORY[0x28223BE20](v47);
  v45 = (&v44 - v16);
  v55 = v6;
  v53 = sub_26B213A10();
  v44 = *(v53 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x28223BE20](v53);
  v54 = &v44 - v18;
  swift_beginAccess();
  MEMORY[0x26D670040](0x205443454C455328, 0xE800000000000000);
  swift_endAccess();
  v19 = *(a4 + 16);
  v58 = a3;
  v59 = a4;
  v19(a3, a4);
  v61 = sub_26B2128F0();
  v20 = (v61 + 40);
  v21 = 0;
  while (1)
  {
    v22 = *(v61 + 16);
    if (v21 == v22)
    {
      break;
    }

    if (v21 >= v22)
    {
LABEL_20:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v23 = *(v20 - 1);
    v24 = *v20;
    v64 = 0x6E6D756C6F63;
    v65 = 0xE600000000000000;
    v62[0] = ++v21;
    sub_26B2128F0();
    v25 = sub_26B213B90();
    MEMORY[0x26D670040](v25);

    MEMORY[0x26D670040](542327072, 0xE400000000000000);
    MEMORY[0x26D670040](v23, v24);

    v26 = v64;
    v27 = v65;
    swift_beginAccess();
    MEMORY[0x26D670040](v26, v27);
    swift_endAccess();

    if (v21 != *(v61 + 16))
    {
      swift_beginAccess();
      MEMORY[0x26D670040](8236, 0xE200000000000000);
      swift_endAccess();
    }

    v20 += 3;
  }

  v28 = v61;

  swift_beginAccess();
  MEMORY[0x26D670040](0x5628204D4F524620, 0xEE00205345554C41);
  swift_endAccess();
  MEMORY[0x26D670170](v58, v55);
  sub_26B2139F0();
  v48 += 32;
  v47 = (v46 + 32);
  v57 = v59 + 32;
  v45 = (v46 + 8);
  v46 = v28 + 40;
  v29 = TupleTypeMetadata2;
  v30 = v49;
  v31 = v59;
  while (1)
  {
    v32 = v51;
    sub_26B213A00();
    (*v48)(v30, v32, v52);
    if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
    {
      break;
    }

    v55 = *v30;
    (*v47)(v60, v30 + *(v29 + 48), v56);
    swift_beginAccess();
    MEMORY[0x26D670040](8232, 0xE200000000000000);
    swift_endAccess();
    v33 = 0;
    v34 = *(v61 + 16);
    v35 = v34 - 1;
    v36 = v46;
    while (v34 != v33)
    {
      if (v33 >= *(v61 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v37 = *v36;
      v62[0] = *(v36 - 1);
      v62[1] = v37;
      v38 = *(v31 + 32);
      sub_26B2128F0();
      v38(&v64, v62, v60);

      v40 = v66;
      v39 = v67;
      __swift_project_boxed_opaque_existential_1(&v64, v66);
      (*(*(v39 + 8) + 8))(v63, v40);
      v41 = v63[0];
      v42 = v63[1];
      swift_beginAccess();
      MEMORY[0x26D670040](v41, v42);
      swift_endAccess();

      if (v35 != v33)
      {
        swift_beginAccess();
        MEMORY[0x26D670040](8236, 0xE200000000000000);
        swift_endAccess();
      }

      __swift_destroy_boxed_opaque_existential_1(&v64);
      v36 += 3;
      ++v33;
    }

    swift_beginAccess();
    MEMORY[0x26D670040](10528, 0xE200000000000000);
    swift_endAccess();
    if (v55 != v35)
    {
      swift_beginAccess();
      MEMORY[0x26D670040](8236, 0xE200000000000000);
      swift_endAccess();
    }

    (*v45)(v60, v56);
    v29 = TupleTypeMetadata2;
    v30 = v49;
  }

  (*(v44 + 8))(v54, v53);

  swift_beginAccess();
  MEMORY[0x26D670040](2697504, 0xE300000000000000);
  return swift_endAccess();
}

uint64_t SQL.init(stringInterpolation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  sub_26B2128F0();
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v4 = *(v12 + 16);
  if (v4)
  {

    v5 = v10;
    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    v6 = v9;
    v7 = v11;
    v8 = v12;
LABEL_5:

    *a2 = v6;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = v4 != 0;
    return result;
  }

  if (v11)
  {
    v6 = v10;
    sub_26B2128F0();

    v7 = 0;
    v8 = 0;
    v5 = v11;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void SQL.description.getter()
{
  v1 = sub_26B211BE0();
  v2 = OUTLINED_FUNCTION_22_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_20();
  v5 = v0[1];
  if ((v0[4] & 1) == 0)
  {
    v7 = *v0;
    sub_26B2128F0();
    goto LABEL_5;
  }

  if (v0[2])
  {
    v6 = v0[2];
    sub_26B2128F0();
LABEL_5:
    sub_26B211BC0();
    sub_26B14FCC8();
    sub_26B213490();
    v8 = OUTLINED_FUNCTION_5_16();
    v9(v8);

    return;
  }

  __break(1u);
}

uint64_t *_s15SonicFoundation3SQLO05debugC0SSvg_0()
{
  v1 = sub_26B211BE0();
  v2 = OUTLINED_FUNCTION_22_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_20();
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 32))
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v14 = *v0;
    v15 = v5;
    v16 = v8;
    v17 = v7;
    v6 = sub_26B1A6F74();
    v5 = v9;
  }

  else
  {
    v10 = *(v0 + 8);
    sub_26B2128F0();
  }

  v14 = v6;
  v15 = v5;
  sub_26B211BC0();
  sub_26B14FCC8();
  sub_26B213490();
  v11 = OUTLINED_FUNCTION_5_16();
  v12(v11);

  return &v14;
}

uint64_t Array<A>.joined(by:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v22 = *(result + 16);
  v23 = *result;
  v21 = *(result + 32);
  v7 = *(a2 + 16);
  v8 = (a2 + 64);
  v9 = 0xE000000000000000;
  if (v7)
  {
    do
    {
      v10 = *v8;
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v24 = v8;
      v25 = v7;
      v13 = *(v8 - 4);
      v14 = *(v8 - 3);
      v29 = v3;
      v30 = v9;
      v31 = v4;
      v32 = v5;
      v15 = v6 & 1;
      v33 = v15;
      *&v26 = v13;
      *(&v26 + 1) = v14;
      *&v27 = v12;
      *(&v27 + 1) = v11;
      v28 = v10;
      v16 = v5;
      sub_26B1A8558(v13, v14, v12, v11, v10);
      static SQL.+ infix(_:_:)(&v29, &v26, &v34);
      sub_26B1A85A8(v3, v9, v4, v16, v15);
      result = sub_26B1A85A8(v13, v14, v12, v11, v10);
      v3 = v34;
      v9 = v35;
      v4 = v36;
      v5 = v37;
      v6 = v38;
      v7 = v25 - 1;
      if (v25 != 1)
      {
        v29 = v34;
        v30 = v35;
        v31 = v36;
        v32 = v37;
        v33 = v38;
        v26 = v23;
        v27 = v22;
        v28 = v21;
        v17 = v34;
        v18 = v36;
        v19 = v37;
        static SQL.+ infix(_:_:)(&v29, &v26, &v34);
        result = sub_26B1A85A8(v17, v9, v18, v19, v6);
        v3 = v34;
        v9 = v35;
        v4 = v36;
        v5 = v37;
        v6 = v38;
      }

      v8 = v24 + 40;
    }

    while (v25 != 1);
  }

  *a3 = v3;
  *(a3 + 8) = v9;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6 & 1;
  return result;
}

double static SQL.+= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v15[0] = *a1;
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v16 = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  v14 = v3;
  static SQL.+ infix(_:_:)(v15, v13, v17);
  sub_26B1A85A8(v4, v5, v6, v7, v8);
  v10 = v18;
  result = *v17;
  v12 = v17[1];
  *a1 = v17[0];
  *(a1 + 16) = v12;
  *(a1 + 32) = v10;
  return result;
}

uint64_t static SQL.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if ((a2[4] & 1) == 0)
    {
      sub_26B1A85F4();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26B2162F0;
      *(inited + 32) = v5;
      *(inited + 40) = v6;
      *(inited + 104) = 0;
      v36 = v4;
      v16 = OUTLINED_FUNCTION_0_31();
      sub_26B1A8558(v16, v17, v18, v19, v20);
      sub_26B2128F0();
      v14 = inited;
      goto LABEL_8;
    }

    v36 = *a1;
    sub_26B2128F0();
  }

  else
  {
    v11 = *(a1 + 8);
    v10 = *(a1 + 16);
    v12 = *(a1 + 24);
    if ((a2[4] & 1) == 0)
    {
      v37 = *a1;
      v26 = OUTLINED_FUNCTION_0_31();
      sub_26B1A8558(v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_7_13();
      MEMORY[0x26D670040](v5, v6);
      v31 = OUTLINED_FUNCTION_0_31();
      result = sub_26B1A85A8(v31, v32, v33, v34, v35);
      v25 = 0;
      v24 = 0;
      v22 = v37;
      v23 = v11;
      goto LABEL_10;
    }

    sub_26B1A85F4();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26B2162F0;
    *(v13 + 32) = v4;
    *(v13 + 40) = v11;
    *(v13 + 104) = 0;
    v36 = v13;
    OUTLINED_FUNCTION_7_13();
  }

  v14 = sub_26B2128F0();
LABEL_8:
  sub_26B168BB8(v14);
  v38 = MEMORY[0x277D84F90];
  result = sub_26B1A6AB8();
  v22 = v36;
  v23 = 0;
  v24 = 1;
  v25 = v38;
LABEL_10:
  *a3 = v22;
  *(a3 + 8) = v23;
  *(a3 + 16) = 0;
  *(a3 + 24) = v25;
  *(a3 + 32) = v24;
  return result;
}

uint64_t SQL.Interpolation.appendInterpolation(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_26B1A8644(v4, v1, v2, v3);
}

uint64_t SQL.Interpolation.appendInterpolation<A>(unsafe:)()
{
  v1 = sub_26B213B90();
  v3 = v2;
  sub_26B16A518();
  v4 = *(*v0 + 16);
  result = sub_26B16A6D4(v4);
  v6 = *v0;
  *(v6 + 16) = v4 + 1;
  v7 = v6 + 80 * v4;
  *(v7 + 32) = v1;
  *(v7 + 40) = v3;
  *(v7 + 104) = 0;
  *v0 = v6;
  return result;
}

void *SQL.Interpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10[3] = swift_getAssociatedTypeWitness();
  v10[4] = a4;
  __swift_allocate_boxed_opaque_existential_0(v10);
  sub_26B212DF0();
  LOBYTE(v10[9]) = 1;
  sub_26B16A518();
  v7 = *(*v5 + 16);
  sub_26B16A6D4(v7);
  v8 = *v5;
  *(v8 + 16) = v7 + 1;
  result = memcpy((v8 + 80 * v7 + 32), v10, 0x49uLL);
  *v5 = v8;
  return result;
}

void *SQL.Interpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  v13[5] = sub_26B1E4F84();
  v13[6] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v13[7] = &unk_26B219560;
  v13[8] = v9;
  LOBYTE(v13[9]) = 2;
  sub_26B16A518();
  v10 = *(*v3 + 16);
  sub_26B16A6D4(v10);
  v11 = *v3;
  *(v11 + 16) = v10 + 1;
  result = memcpy((v11 + 80 * v10 + 32), v13, 0x49uLL);
  *v3 = v11;
  return result;
}

uint64_t sub_26B1A828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_26B1A82B0, 0, 0);
}

uint64_t sub_26B1A82B0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = _s15CollectionTableVMa();
  v4 = sub_26B1E4F84();
  v6 = v5;
  v0[5] = v5;
  v7 = swift_task_alloc();
  v0[6] = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_26B1A83B8;
  v9 = v0[2];

  return SQLDatabase.registerFunction<A>(_:named:)(v3, v4, v6, v3, WitnessTable);
}

uint64_t sub_26B1A83B8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B1A84F4, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26B1A84F4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_26B1A8558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_26B2128F0();
    sub_26B2128F0();
    v5 = vars8;
  }

  return sub_26B2128F0();
}

uint64_t sub_26B1A85A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

void sub_26B1A85F4()
{
  if (!qword_2803E7020)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7020);
    }
  }
}

uint64_t sub_26B1A8644(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_26B16BCF8(v12, __src);
  __src[72] = 1;
  sub_26B16A518();
  v8 = *(*a2 + 16);
  sub_26B16A6D4(v8);
  v9 = *a2;
  *(v9 + 16) = v8 + 1;
  memcpy((v9 + 80 * v8 + 32), __src, 0x49uLL);
  *a2 = v9;
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_26B1A8710(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B1A87C0;

  return sub_26B1A828C(a1, a2, v7, v6);
}

uint64_t sub_26B1A87C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_26B1A88B8()
{
  result = qword_2803E7D60;
  if (!qword_2803E7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D60);
  }

  return result;
}

unint64_t sub_26B1A8910()
{
  result = qword_2803E7D68;
  if (!qword_2803E7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D68);
  }

  return result;
}

unint64_t sub_26B1A8968()
{
  result = qword_2803E7D70;
  if (!qword_2803E7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D70);
  }

  return result;
}

unint64_t sub_26B1A89C0()
{
  result = qword_2803E7D78;
  if (!qword_2803E7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D78);
  }

  return result;
}

unint64_t sub_26B1A8A18()
{
  result = qword_2803E7D80;
  if (!qword_2803E7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D80);
  }

  return result;
}

unint64_t sub_26B1A8A70()
{
  result = qword_2803E7D88;
  if (!qword_2803E7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D88);
  }

  return result;
}

uint64_t sub_26B1A8ADC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_26B1A8B1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1A8B7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B1A8BBC(uint64_t result, int a2, int a3)
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

uint64_t sub_26B1A8C28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1A8C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1A8CB8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_26B1A8D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1A8D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1A8D90(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_26B1A8558(v0, v3, v1, v2, 0);
}

uint64_t static SQLDatabase.Location.memory()@<X0>(void *a1@<X8>)
{
  _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(0xD000000000000040, 0x800000026B21FCB0, 0xFuLL);
  *a1 = v2;
  a1[1] = v3;
  type metadata accessor for SQLDatabase.Location(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static SQLDatabase.Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B211EF0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = type metadata accessor for SQLDatabase.Location(0);
  v14 = OUTLINED_FUNCTION_27(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v39 - v20);
  sub_26B1A91AC();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  v28 = (v25 - v24 + *(v27 + 56));
  sub_26B1A9210(a1, v25 - v24);
  sub_26B1A9210(a2, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26B1A9210(v26, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 32))(v12, v28, v4);
      LOBYTE(v29) = sub_26B211E90();
      v30 = *(v7 + 8);
      v30(v12, v4);
      v30(v19, v4);
LABEL_14:
      v33 = type metadata accessor for SQLDatabase.Location;
      goto LABEL_15;
    }

    (*(v7 + 8))(v19, v4);
  }

  else
  {
    sub_26B1A9210(v26, v21);
    v32 = *v21;
    v31 = v21[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v32 == *v28 && v31 == v28[1])
      {
        v37 = v28[1];

        LOBYTE(v29) = 1;
      }

      else
      {
        v35 = v28[1];
        v36 = sub_26B213E30();

        v29 = v36 << 31 >> 31;
      }

      goto LABEL_14;
    }
  }

  LOBYTE(v29) = 0;
  v33 = sub_26B1A91AC;
LABEL_15:
  sub_26B1A9274(v26, v33);
  return v29 & 1;
}

void sub_26B1A91AC()
{
  if (!qword_2803E7D90)
  {
    type metadata accessor for SQLDatabase.Location(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E7D90);
    }
  }
}

uint64_t sub_26B1A9210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B1A9274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_27(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SQLDatabase.Location.hash(into:)()
{
  v1 = sub_26B211EF0();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for SQLDatabase.Location(0);
  v11 = OUTLINED_FUNCTION_27(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v16 = (v15 - v14);
  sub_26B1A9210(v0, v15 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v9, v16, v1);
    MEMORY[0x26D671480](1);
    sub_26B1AAA7C(&qword_2803E7D98, MEMORY[0x277CC9260]);
    sub_26B2129A0();
    return (*(v4 + 8))(v9, v1);
  }

  else
  {
    v18 = *v16;
    v19 = v16[1];
    MEMORY[0x26D671480](0);
    _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  }
}

uint64_t SQLDatabase.Location.hashValue.getter()
{
  sub_26B214030();
  SQLDatabase.Location.hash(into:)();
  return sub_26B214070();
}

uint64_t sub_26B1A94C8()
{
  sub_26B214030();
  SQLDatabase.Location.hash(into:)();
  return sub_26B214070();
}

uint64_t SQLDatabase.__allocating_init(location:options:)()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_10_10(v4);

  return SQLDatabase.init(location:options:)(v5, v6);
}

uint64_t sub_26B1A95C4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_18();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  OUTLINED_FUNCTION_9_14();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t SQLDatabase.init(location:options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 64) = *(a2 + 8);
  return OUTLINED_FUNCTION_2_13(sub_26B1A96D8, 0);
}

uint64_t sub_26B1A96D8()
{
  v1 = *(v0 + 24);
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection) = 0;
  v2 = MEMORY[0x277D84F90];
  if (sub_26B16EAD0(MEMORY[0x277D84F90]))
  {
    v3 = sub_26B1AA8E8(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_transactions) = v3;
  *(v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_isDeserialized) = 0;
  *(v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations) = v2;
  v6 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_scalarFunctions;
  _s14ScalarFunctionCMa();
  *(v4 + v6) = sub_26B2128C0();
  v7 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  _s13TableFunctionCMa();
  *(v4 + v7) = sub_26B2128C0();
  sub_26B1A9210(v5, v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_location);
  v8 = v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_options;
  v9 = *(v0 + 64);
  *v8 = *(v0 + 56);
  *(v8 + 8) = v9;
  _s10ConnectionCMa();
  swift_allocObject();

  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_26B1A98A0;
  v11 = *(v0 + 24);

  return sub_26B1AC488();
}

uint64_t sub_26B1A98A0()
{
  v3 = v1;
  OUTLINED_FUNCTION_6_18();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *(v4 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v5 + 40) = v3;

  sub_26B1AAA7C(&qword_2803E7DA0, type metadata accessor for SQLDatabase);
  swift_getObjectType();
  v11 = sub_26B212F70();
  if (v3)
  {
    v12 = sub_26B1A9AA0;
  }

  else
  {
    *(v5 + 48) = v0;
    v12 = sub_26B1A9A24;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_26B1A9A24()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_0_32();
  sub_26B1A9274(v4, v5);
  v6 = *(v3 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  *(v3 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection) = v1;

  OUTLINED_FUNCTION_9_14();
  v8 = v0[3];

  return v7(v8);
}

uint64_t sub_26B1A9AA0()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[2];
  v1 = v0[3];

  OUTLINED_FUNCTION_0_32();
  sub_26B1A9274(v2, v3);
  OUTLINED_FUNCTION_10_0();
  v5 = v0[5];

  return v4();
}

uint64_t SQLDatabase.__allocating_init(of:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 16) = v5;
  v6 = *(*(type metadata accessor for SQLDatabase.Location(0) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 101) = *v3;

  return MEMORY[0x2822009F8](sub_26B1A9BA4, 0, 0);
}

uint64_t sub_26B1A9BA4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 32);
  static SQLDatabase.Location.memory()(*(v0 + 40));
  *(v0 + 88) = 16777473;
  *(v0 + 92) = 0;
  *(v0 + 95) = 0;
  *(v0 + 99) = 2;
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_26B1A9C78;
  v5 = *(v0 + 40);

  return SQLDatabase.init(location:options:)(v5, v0 + 88);
}

uint64_t sub_26B1A9C78()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_18();
  v4 = *(v3 + 48);
  v5 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v7 + 56) = v0;
  *(v7 + 64) = v1;

  if (v1)
  {
    v8 = sub_26B1A9F4C;
    v9 = 0;
  }

  else
  {
    v8 = sub_26B1A9D84;
    v9 = v0;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_26B1A9D84(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 56) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  *(v3 + 72) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_25();
    *(v3 + 100) = *(v3 + 101);

    a1 = sub_26B1A9E10;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26B1A9E10()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_26B1AC110(*(v0 + 16), *(v0 + 24), (v0 + 100));
  *(v0 + 80) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  sub_26B1AAA7C(&qword_2803E7DA0, type metadata accessor for SQLDatabase);
  if (v2)
  {
    swift_getObjectType();
    v5 = sub_26B212F70();
    v7 = v6;
    v8 = sub_26B1AA040;
  }

  else
  {
    swift_retain_n();
    swift_getObjectType();
    v5 = sub_26B212F70();
    v7 = v9;
    v8 = sub_26B1A9FB0;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_26B1A9F4C()
{
  OUTLINED_FUNCTION_25();
  sub_26B14FF4C(v0[2], v0[3]);
  v1 = v0[8];
  v2 = v0[5];

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B1A9FB0()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[7];
  v2 = v0[5];
  sub_26B14FF4C(v0[2], v0[3]);

  *(v1 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_isDeserialized) = 1;

  OUTLINED_FUNCTION_9_14();
  v4 = v0[7];

  return v3(v4);
}

uint64_t sub_26B1AA040()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[7];
  sub_26B14FF4C(v0[2], v0[3]);

  v2 = v0[10];
  v3 = v0[5];

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t sub_26B1AA0CC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  *(v3 + 24) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_25();

    a1 = sub_26B1AA150;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26B1AA150()
{
  v1 = v0[3];
  v2 = sub_26B1AC2C0();
  v0[4] = 0;
  v3 = v2;
  v5 = v4;
  v6 = v0[3];

  v7 = v0[1];

  return v7(v3, v5);
}

uint64_t sub_26B1AA21C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_10_0();
  v3 = *(v0 + 32);

  return v2();
}

uint64_t SQLDatabase.attachedLocations.getter()
{
  v1 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return sub_26B2128F0();
}

uint64_t SQLDatabase.deinit()
{
  OUTLINED_FUNCTION_0_32();
  sub_26B1A9274(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);

  v4 = *(v0 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_transactions);

  v5 = *(v0 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations);

  v6 = *(v0 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_scalarFunctions);

  v7 = *(v0 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SQLDatabase.__deallocating_deinit()
{
  SQLDatabase.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26B1AA398()
{
  v1 = v0;
  v2 = sub_26B211EF0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = type metadata accessor for SQLDatabase.Location(0);
  v12 = OUTLINED_FUNCTION_27(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v17 = (v16 - v15);
  sub_26B1A9210(v1, v16 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v10, v17, v2);
    v18 = sub_26B211E30();
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v19 = *v17;
    v20 = v17[1];
    sub_26B2136C0();

    MEMORY[0x26D670040](v19, v20);

    MEMORY[0x26D670040](0xD000000000000019, 0x800000026B21FEA0);
    return 0x3A656C6966;
  }

  return v18;
}

uint64_t SQLColumnName.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return v1;
}

uint64_t SQLColumnName.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26B1AA5EC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26B182C14();
}

uint64_t sub_26B1AA5FC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26B182F60();
}

uint64_t sub_26B1AA604@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = SQLColumnName.init(stringLiteral:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_26B1AA644@<X0>(uint64_t *a1@<X8>)
{
  result = SQLColumnName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1AA678()
{
  sub_26B212A80();
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  v0 = sub_26B214070();

  return v0;
}

void sub_26B1AA6F0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_26B1AAFFC(), v2 = sub_26B213680(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_26B212A80();
      sub_26B214030();
      v27 = v6;
      _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
      v8 = sub_26B214070();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_26B212A80();
        v17 = v16;
        if (v15 == sub_26B212A80() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_26B213E30();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_26B1AA8E8(unint64_t a1)
{
  if (sub_26B152D14(a1))
  {
    sub_26B1AB090();
    v2 = sub_26B213680();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  result = sub_26B16EAD0(a1);
  if (result)
  {
    v4 = result;
    v5 = 0;
    v6 = v2 + 56;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D670B70](v5, a1);
        v7 = result;
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(a1 + 32 + 8 * v5);
      }

      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      v9 = *(v2 + 40);
      sub_26B214030();
      MEMORY[0x26D671480](v7);
      result = sub_26B214070();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = result & v10;
        v12 = (result & v10) >> 6;
        v13 = *(v6 + 8 * v12);
        v14 = 1 << (result & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        if (*(*(v2 + 48) + 8 * v11) == v7)
        {

          goto LABEL_18;
        }

        result = v11 + 1;
      }

      *(v6 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v7;
      v15 = *(v2 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_21;
      }

      *(v2 + 16) = v16;
LABEL_18:
      if (v5 == v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_19:

    return v2;
  }

  return result;
}

uint64_t sub_26B1AAA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B1AAAE4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26B1AAB68()
{
  result = qword_2803E7DB0;
  if (!qword_2803E7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DB0);
  }

  return result;
}

unint64_t sub_26B1AABC0()
{
  result = qword_2803E7DB8;
  if (!qword_2803E7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DB8);
  }

  return result;
}

unint64_t sub_26B1AAC18()
{
  result = qword_2803E7DC0;
  if (!qword_2803E7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DC0);
  }

  return result;
}

uint64_t sub_26B1AAC74()
{
  result = type metadata accessor for SQLDatabase.Location(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SQLDatabase.__allocating_init(location:options:)()
{
  v2 = *(v0 + 152);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_10_10(v4);

  return v7(v5);
}

uint64_t sub_26B1AAE64()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_18();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  OUTLINED_FUNCTION_9_14();

  return v6(v0);
}

uint64_t sub_26B1AAF50()
{
  result = sub_26B1AAFC4();
  if (v1 <= 0x3F)
  {
    result = sub_26B211EF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B1AAFC4()
{
  result = qword_280D2DB50;
  if (!qword_280D2DB50)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280D2DB50);
  }

  return result;
}

void sub_26B1AAFFC()
{
  if (!qword_2803E7DC8)
  {
    type metadata accessor for URLResourceKey(255);
    sub_26B1AAA7C(&qword_2803E6BA0, type metadata accessor for URLResourceKey);
    v0 = sub_26B213690();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7DC8);
    }
  }
}

void sub_26B1AB090()
{
  if (!qword_2803E7DD0)
  {
    type metadata accessor for SQLDatabase.Transaction();
    sub_26B1AAA7C(&qword_2803E7DD8, type metadata accessor for SQLDatabase.Transaction);
    v0 = sub_26B213690();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7DD0);
    }
  }
}

uint64_t sub_26B1AB148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  while (v7 != v6)
  {
    v8 = *(type metadata accessor for SQLDatabase.AttachedLocation() - 8);
    v9 = (a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    v10 = *v9 == a2 && v9[1] == a3;
    if (v10 || (sub_26B213E30() & 1) != 0)
    {
      v11 = v6;
      goto LABEL_11;
    }

    ++v6;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t SQLDatabase.AttachedLocation.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return v1;
}

uint64_t SQLDatabase.AttachedLocation.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLDatabase.AttachedLocation.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SQLDatabase.AttachedLocation() + 20);
  OUTLINED_FUNCTION_0_33();
  return sub_26B1ABCE0(v1 + v4, a1, v5);
}

uint64_t type metadata accessor for SQLDatabase.AttachedLocation()
{
  result = qword_2803E7DE0;
  if (!qword_2803E7DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SQLDatabase.AttachedLocation.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SQLDatabase.AttachedLocation() + 20);
  OUTLINED_FUNCTION_0_33();
  return sub_26B1ABD9C(a1, v1 + v4, v5);
}

uint64_t SQLDatabase.attach(name:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for SQLDatabase.AttachedLocation();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B1AB49C, v3, 0);
}

uint64_t sub_26B1AB49C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = *(v0[9] + 20);
  OUTLINED_FUNCTION_0_33();
  sub_26B1ABCE0(v9, v1 + v8, v10);
  *v1 = v6;
  v1[1] = v5;
  v11 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations;
  swift_beginAccess();
  sub_26B2128F0();
  sub_26B16A530();
  v12 = *(*(v3 + v11) + 16);
  sub_26B16A6EC(v12);
  v13 = *(v3 + v11);
  *(v13 + 16) = v12 + 1;
  sub_26B1AB8AC(v1, v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12);
  *(v3 + v11) = v13;
  swift_endAccess();
  return OUTLINED_FUNCTION_1_25();
}

uint64_t SQLDatabase.detach(name:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26B1AB5D0, v2, 0);
}

uint64_t sub_26B1AB5D0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations;
  swift_beginAccess();
  sub_26B2128F0();
  result = sub_26B1AB910((v2 + v4), v3, v1);
  v6 = *(*(v2 + v4) + 16);
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    sub_26B18E4F4(result, v6);
    swift_endAccess();
    return OUTLINED_FUNCTION_1_25();
  }

  return result;
}

uint64_t sub_26B1AB6D0()
{
  v1 = sub_26B211EF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SQLDatabase.Location(0);
  v7 = OUTLINED_FUNCTION_27(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(type metadata accessor for SQLDatabase.AttachedLocation() + 20);
  OUTLINED_FUNCTION_0_33();
  sub_26B1ABCE0(v0 + v13, v11, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v11, v1);
    v15 = sub_26B211E30();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v16 = *v11;
    v17 = v11[1];
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_26B2136C0();

    v19 = 0x3A656C6966;
    v20 = 0xE500000000000000;
    MEMORY[0x26D670040](v16, v17);

    MEMORY[0x26D670040](0xD000000000000019, 0x800000026B21FEA0);
    return v19;
  }

  return v15;
}

uint64_t sub_26B1AB8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.AttachedLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B1AB910(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SQLDatabase.AttachedLocation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v35 - v16);
  v18 = *a1;
  sub_26B2128F0();
  result = sub_26B1AB148(v18, a2, a3);
  if (v3)
  {
  }

  v37 = v12;
  v38 = a3;
  v41 = a2;
  if (v20)
  {
    v21 = *(v18 + 16);

    return v21;
  }

  v35 = 0;
  v36 = a1;
  v39 = result;
  v22 = result + 1;
  v23 = v38;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v40 = v8;
  while (1)
  {
    v24 = *(v18 + 16);
    if (v22 == v24)
    {

      return v39;
    }

    if (v22 >= v24)
    {
      break;
    }

    v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v26 = v18 + v25;
    v27 = *(v8 + 72);
    v28 = v27 * v22;
    sub_26B1ABCE0(v18 + v25 + v27 * v22, v17, type metadata accessor for SQLDatabase.AttachedLocation);
    if (*v17 == v41 && v17[1] == v23)
    {
      result = sub_26B1ABD40(v17);
      goto LABEL_16;
    }

    v30 = sub_26B213E30();
    result = sub_26B1ABD40(v17);
    if (v30)
    {
      v23 = v38;
LABEL_16:
      v8 = v40;
      goto LABEL_27;
    }

    v31 = v39;
    if (v22 == v39)
    {
      v23 = v38;
    }

    else
    {
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v32 = *(v18 + 16);
      if (v39 >= v32)
      {
        goto LABEL_31;
      }

      v33 = v27 * v39;
      result = sub_26B1ABCE0(v26 + v33, v15, type metadata accessor for SQLDatabase.AttachedLocation);
      if (v22 >= v32)
      {
        goto LABEL_32;
      }

      sub_26B1ABCE0(v26 + v28, v37, type metadata accessor for SQLDatabase.AttachedLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B16BB38(v18);
        v18 = v34;
      }

      v23 = v38;
      result = sub_26B1ABD9C(v37, v18 + v25 + v33, type metadata accessor for SQLDatabase.AttachedLocation);
      if (v22 >= *(v18 + 16))
      {
        goto LABEL_33;
      }

      result = sub_26B1ABD9C(v15, v18 + v25 + v28, type metadata accessor for SQLDatabase.AttachedLocation);
      *v36 = v18;
      v31 = v39;
    }

    v8 = v40;
    v39 = v31 + 1;
LABEL_27:
    ++v22;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_26B1ABC64()
{
  result = type metadata accessor for SQLDatabase.Location(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B1ABCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_27(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26B1ABD40(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabase.AttachedLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B1ABD9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_27(v5);
  (*(v6 + 40))(a2, a1);
  return a2;
}

void *sub_26B1ABDFC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v9 = MEMORY[0x277D84F90];
  v10 = sub_26B1ABF04(MEMORY[0x277D84F90]);
  v12 = v11;
  v14 = v13;
  sub_26B1ABF04(v9);

  __src[2] = v10;
  __src[3] = v12;
  __src[4] = v14;
  __src[5] = a3;
  LOBYTE(__src[6]) = a4 & 1;
  __src[7] = a1;
  LOBYTE(__src[8]) = a2 & 1;
  __src[0] = 0;
  __src[1] = 0;
  sub_26B1CF4B4();

  return memcpy(a5, __src, 0x41uLL);
}

uint64_t sub_26B1ABF04(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  sub_26B1AF8F8(*(a1 + 16), 0);
  sub_26B15B3FC();
  v3 = 0;
  v4 = v2;
  v18 = *(a1 + 16);
  v19 = a1;
  v17 = a1 + 32;
  while (1)
  {
    if (v3 == v18)
    {

      return 0;
    }

    if (v3 >= *(v19 + 16))
    {
      break;
    }

    v5 = v17 + 40 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = *(v5 + 32);
    v11 = (v20 + 40);
    v12 = *(v20 + 16) + 1;
    while (--v12)
    {
      if (*(v11 - 1) != v7 || *v11 != v6)
      {
        v11 += 2;
        if ((sub_26B213E30() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_26B2128F0();

    sub_26B1D46C0(v7, v6);
    v14 = *(v4 + 16);
    if (v14 >= *(v4 + 24) >> 1)
    {
      sub_26B15B3FC();
    }

    ++v3;
    *(v4 + 16) = v14 + 1;
    v15 = v4 + 24 * v14;
    *(v15 + 32) = v9;
    *(v15 + 40) = v8;
    *(v15 + 48) = v10;
  }

  __break(1u);
LABEL_17:
  sub_26B2128F0();

  __break(1u);
  return result;
}

void sub_26B1AC110(uint64_t a1, unint64_t a2, char *a3)
{
  v6 = *a3;
  v39 = 0;
  v7 = sub_26B1AEB1C(&v39, a1, a2, v6, v3);
  v8 = v4;
  if (v4)
  {
LABEL_10:
    v38 = v8;
    v27 = v8;
    sub_26B162128();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    v28 = v36;
    v29 = v37;

    LODWORD(v34) = v28;
    BYTE4(v34) = v29;
    LODWORD(v33) = 17;
    BYTE4(v33) = 14;
    if (static SQLError.Code.== infix(_:_:)(&v34, &v33))
    {
    }

    else
    {
LABEL_13:

      sqlite3_free(v39);
      swift_willThrow();
    }

    return;
  }

  sub_26B1E26EC(v7, &v35);
  if (v36 != 1 && (v36 != 14 || v35 != 16))
  {
    OUTLINED_FUNCTION_17();
    swift_beginAccess();
    sqlite3_extended_errcode(*(v3 + 136));
    if (OUTLINED_FUNCTION_73())
    {
      sub_26B212C20();
      OUTLINED_FUNCTION_61();
      if (sqlite3_errmsg(*(v3 + 136)))
      {
        v10 = sub_26B212C20();
        v12 = v11;
        sub_26B1AFA88();
        OUTLINED_FUNCTION_30_0();
        v8 = swift_allocError();
        v19 = OUTLINED_FUNCTION_23_5(v8, v13, v14, v15, v16, v17, v18);
        OUTLINED_FUNCTION_8_18(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36);
        *(v5 + 32) = v10;
        *(v5 + 40) = v12;
        swift_willThrow();
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_26B1AC2C0()
{
  piSize[4] = *MEMORY[0x277D85DE8];
  v2 = sub_26B211F30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&piSize[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  piSize[0] = 0;
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v7 = sqlite3_serialize(*(v0 + 136), "main", piSize, 0);
  if (v7)
  {
    v8 = v7;
    v9 = piSize[0];
    *v6 = j__sqlite3_free;
    v6[1] = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277CC92B8], v2);
    result = MEMORY[0x26D66F380](v8, v9, v6);
  }

  else
  {
    result = sub_26B1AECD0(v0, sub_26B1AFADC);
    if (!v1)
    {
      sub_26B1AFAF8();
      OUTLINED_FUNCTION_30_0();
      swift_allocError();
      *v11 = 0;
      v11[1] = 0;
      result = swift_willThrow();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26B1AC488()
{
  OUTLINED_FUNCTION_25();
  v1[76] = v0;
  v1[75] = v2;
  v3 = *(type metadata accessor for SQLDatabase.AttachedLocation() - 8);
  v1[77] = v3;
  v4 = *(v3 + 64) + 15;
  v1[78] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1AC540()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 608);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 136) = 0;
  sub_26B1ABDFC(20, 0, 0, 1, (v1 + 144));
  _s9StatementCMa();
  sub_26B166760();
  *(v1 + 216) = sub_26B2128C0();
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  *(v1 + 248) = 1;
  v2 = OUTLINED_FUNCTION_12_12();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

const char *sub_26B1AC614()
{
  v38 = v0;
  v1 = *(v0 + 600);
  sub_26B1AA398();
  v2 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_options;
  *(v0 + 632) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_options;
  v3 = (v1 + v2);
  v4 = *(v1 + v2);
  v5 = *(v1 + v2 + 4);
  v6 = *(v1 + v2 + 11);
  if ((v4 & 1) == 0)
  {
    v8 = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = v3[2] == 0;
  if (v3[1])
  {
    v8 = 6;
    v9 = 14;
  }

  else
  {
    v8 = 2;
    v9 = 10;
  }

  if (v3[2])
  {
    v8 = v9;
  }

  if (v5)
  {
LABEL_5:
    v8 |= 0x10u;
  }

LABEL_6:
  v10 = v8 | (v6 << 20);
  v11 = *(v0 + 608);
  v12 = sub_26B212B10();

  swift_beginAccess();
  v13 = sqlite3_open_v2((v12 + 32), (v11 + 136), v10 + 0x100000, 0);
  swift_endAccess();

  v14 = *(v11 + 136);
  if (v13)
  {
    v15 = sqlite3_extended_errcode(v14);
    result = sqlite3_errstr(v13);
    if (result)
    {
      v17 = *(v0 + 608);
      v18 = sub_26B212C20();
      v20 = v19;
      result = sqlite3_errmsg(*(v17 + 136));
      if (result)
      {
        v21 = *(v0 + 608);
        v22 = *(v0 + 600);
        v23 = sub_26B212C20();
        v25 = v24;
        sub_26B1AFA88();
        OUTLINED_FUNCTION_30_0();
        swift_allocError();
        v27 = v26;
        *v26 = v15;
        sub_26B1E26EC(v15, &v36);
        v28 = v37;
        v27[1] = v36;
        *(v27 + 8) = v28;
        *(v27 + 2) = v18;
        *(v27 + 3) = v20;
        *(v27 + 4) = v23;
        *(v27 + 5) = v25;
        swift_willThrow();
        sqlite3_close_v2(*(v21 + 136));

        v29 = *(v0 + 624);

        OUTLINED_FUNCTION_10_0();

        return v30();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sqlite3_extended_result_codes(v14, 1);
  *(v0 + 89) = v3[6];
  *(v0 + 90) = v3[7];
  *(v0 + 91) = v3[8];
  OUTLINED_FUNCTION_13(&unk_26B219EE0);
  v35 = v31;
  v32 = v3[9];
  v33 = swift_task_alloc();
  *(v0 + 640) = v33;
  *v33 = v0;
  v33[1] = sub_26B1AC8D4;
  v34 = *(v0 + 608);

  return v35(v32);
}

uint64_t sub_26B1AC8D4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 640);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_72();
    sub_26B212F70();
    OUTLINED_FUNCTION_1_26();
    v9 = OUTLINED_FUNCTION_11_10();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_13(&unk_26B219EE8);
    v12 = swift_task_alloc();
    *(v3 + 648) = v12;
    *v12 = v7;
    v12[1] = sub_26B1ACA34;
    v13 = OUTLINED_FUNCTION_27_5(*(v3 + 89));

    return v14(v13);
  }
}

uint64_t sub_26B1ACA34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 648);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_72();
    sub_26B212F70();
    OUTLINED_FUNCTION_1_26();
    v9 = OUTLINED_FUNCTION_11_10();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_13(&unk_26B219EF0);
    v12 = swift_task_alloc();
    *(v3 + 656) = v12;
    *v12 = v7;
    v12[1] = sub_26B1ACB94;
    v13 = OUTLINED_FUNCTION_27_5(*(v3 + 90));

    return v14(v13);
  }
}

uint64_t sub_26B1ACB94()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 656);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_72();
    sub_26B212F70();
    OUTLINED_FUNCTION_1_26();
    v9 = OUTLINED_FUNCTION_11_10();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_13(&unk_26B219EF8);
    v12 = swift_task_alloc();
    *(v3 + 664) = v12;
    *v12 = v7;
    v12[1] = sub_26B1ACCF4;
    v13 = OUTLINED_FUNCTION_27_5(*(v3 + 91));

    return v14(v13);
  }
}

uint64_t sub_26B1ACCF4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 664);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_72();
    sub_26B212F70();
    OUTLINED_FUNCTION_1_26();
  }

  else
  {
    v12 = *(v3 + 608);
    *(v3 + 672) = sub_26B1AFB4C();
    swift_getObjectType();
    sub_26B212F70();
    OUTLINED_FUNCTION_20_6();
    v11 = sub_26B1ACE20;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_26B1ACE20()
{
  OUTLINED_FUNCTION_25();
  v1 = *(*(v0 + 600) + *(v0 + 632));
  *(*(v0 + 608) + 112) = (v1 & 1) == 0;
  if (v1)
  {
    *(v0 + 368) = 0xD00000000000001DLL;
    *(v0 + 376) = 0x800000026B220040;
    *(v0 + 384) = 0;
    *(v0 + 392) = 0;
    *(v0 + 400) = 0;
    v2 = swift_task_alloc();
    *(v0 + 688) = v2;
    *v2 = v0;
    v2[1] = sub_26B1ACFB4;
    v3 = *(v0 + 608);

    return sub_26B1B3E68();
  }

  else
  {
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_26_7();
    *(v0 + 704) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations;
    v5 = OUTLINED_FUNCTION_12_12();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_26B1ACF44()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[76];
  v2 = v0[75];

  v3 = v0[85];
  v4 = v0[78];

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B1ACFB4()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  v5 = v2[86];
  *v4 = *v1;
  v3[87] = v0;

  v6 = v2[84];
  v7 = v2[76];
  sub_26B1A85A8(v3[46], v2[47], v2[48], v2[49], *(v3 + 400));
  swift_getObjectType();
  sub_26B212F70();
  OUTLINED_FUNCTION_20_6();
  if (v0)
  {
    v10 = sub_26B1ADF58;
  }

  else
  {
    v10 = sub_26B1AD16C;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_26B1AD16C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_26_7();
  *(v0 + 704) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations;
  v1 = OUTLINED_FUNCTION_12_12();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B1AD1D8()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 704);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  *(v0 + 712) = *(v1 + v2);
  sub_26B2128F0();
  swift_getObjectType();
  sub_26B212F70();
  OUTLINED_FUNCTION_20_6();
  v3 = OUTLINED_FUNCTION_11_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B1AD268()
{
  v6 = *(v1 + 712);
  v7 = *(v6 + 16);
  *(v1 + 720) = v7;
  if (!v7)
  {
    v35 = *(v1 + 600);

    *(v1 + 728) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_scalarFunctions;
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_20_0();

    return MEMORY[0x2822009F8](v26, v27, v28);
  }

  v8 = *(v1 + 624);
  v9 = *(*(v1 + 616) + 80);
  *(v1 + 92) = v9;
  *(v1 + 744) = 0;
  if (*(v6 + 16))
  {
    v3 = 0x800000026B220060;
    sub_26B1AFBA0(v6 + ((v9 + 32) & ~v9), v8);
    v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_67();
    v11 = v10;
    v4 = *(v10 + 16);
    v2 = v4 + 1;
    if (v4 < *(v10 + 24) >> 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_10_11();
  v11 = v41;
LABEL_4:
  v12 = *(v1 + 624);
  OUTLINED_FUNCTION_37_2();
  v14 = v11 + v4 * v13;
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = v3;
  *(v14 + 104) = 0;
  v15 = sub_26B1AB6D0();
  v17 = v16;
  v18 = MEMORY[0x277D837D0];
  v19 = &protocol witness table for String;
  OUTLINED_FUNCTION_66(v15, v16);
  OUTLINED_FUNCTION_54();
  if (v3 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_10_11();
    v11 = v42;
  }

  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_65(v20);
  __swift_destroy_boxed_opaque_existential_1((v1 + 288));

  OUTLINED_FUNCTION_33_3();
  if (v21)
  {
    OUTLINED_FUNCTION_16_7();
    v11 = v43;
  }

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_53();
  if (v2 > (v18 >> 1))
  {
    OUTLINED_FUNCTION_10_11();
    v11 = v44;
  }

  v22 = *(v1 + 624);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_69(v23);
  __swift_destroy_boxed_opaque_existential_1((v1 + 328));
  sub_26B1ABD40(v22);
  OUTLINED_FUNCTION_33_3();
  if (v21)
  {
    OUTLINED_FUNCTION_16_7();
    v11 = v45;
  }

  *(v11 + 16) = v17;
  OUTLINED_FUNCTION_3_21();
  v24 = *(v1 + 280);
  OUTLINED_FUNCTION_2_26(v25, *(v1 + 232), *(v1 + 248), *(v1 + 264));
  *(v1 + 448) = v11;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0;
  *(v1 + 472) = v0;
  sub_26B2128F0();
  sub_26B2128F0();
  v26 = sub_26B1A6AB8();
  v29 = *(*(v1 + 472) + 16);
  if (!v29)
  {
    v31 = *(v1 + 464);
    if (v31)
    {
      v34 = *(v1 + 456);
      v37 = *(v1 + 464);
      sub_26B2128F0();

      OUTLINED_FUNCTION_60();
      goto LABEL_19;
    }

    __break(1u);
    return MEMORY[0x2822009F8](v26, v27, v28);
  }

  v30 = *(v1 + 448);
  v31 = *(v1 + 456);
  v33 = *(v1 + 464);
  v32 = *(v1 + 472);
  sub_26B2128F0();
  sub_26B2128F0();
  sub_26B2128F0();
  v34 = v30;
  v19 = v33;
  v5 = v32;
LABEL_19:

  *(v1 + 408) = v34;
  *(v1 + 416) = v31;
  *(v1 + 424) = v19;
  *(v1 + 432) = v5;
  *(v1 + 440) = v29 != 0;
  v38 = swift_task_alloc();
  *(v1 + 752) = v38;
  *v38 = v1;
  OUTLINED_FUNCTION_19_7(v38);
  OUTLINED_FUNCTION_20_0();

  return sub_26B1B3E68();
}

uint64_t sub_26B1AD584()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 728);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  *(v0 + 736) = *(v1 + v2);
  sub_26B2128F0();
  swift_getObjectType();
  sub_26B212F70();
  OUTLINED_FUNCTION_20_6();
  v3 = OUTLINED_FUNCTION_11_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B1AD614()
{
  v41 = v0;
  v4 = 0;
  v5 = v0[92];
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_57();
  if (!v3)
  {
    while (1)
    {
LABEL_2:
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v9 >= v2)
      {
        break;
      }

      v3 = *(v1 + 8 * v9);
      ++v4;
      if (v3)
      {
        v4 = v9;
        goto LABEL_6;
      }
    }

    v14 = v0[92];
    v15 = v0[75];

    v0[96] = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_51_1();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  while (1)
  {
LABEL_6:
    v10 = *(v0[76] + 136);
    if (!v10)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_38_3();
    v11 = sub_26B1CD218(v10);
    v12 = v11;
    sub_26B1E26EC(v11, &v39);
    if (v40 != 1 && (v40 != 14 || v39 != 16))
    {
      break;
    }

    v3 &= v3 - 1;
    OUTLINED_FUNCTION_42_0();

    if (!v3)
    {
      goto LABEL_2;
    }
  }

  sqlite3_extended_errcode(*(v0[76] + 136));
  v6 = sqlite3_errstr(v12);
  if (!v6)
  {
    goto LABEL_25;
  }

  v17 = v0[76];
  sub_26B212C20();
  v6 = sqlite3_errmsg(*(v17 + 136));
  if (v6)
  {
    v18 = v0[92];
    v37 = v0[75];
    v38 = v0[76];
    sub_26B212C20();
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v19 = swift_allocError();
    v24 = OUTLINED_FUNCTION_55(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_45_1(v24, v25, v26, v27, v28, v29, v30, v31, v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_42_0();

    v32 = v0[78];

    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_51_1();

    __asm { BRAA            X1, X16 }
  }

LABEL_26:
  __break(1u);
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1AD80C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 752);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v3 + 760) = v0;

  if (v0)
  {
    v9 = *(v3 + 712);
    v10 = *(v3 + 672);
    v11 = *(v3 + 608);
    sub_26B1A85A8(*(v3 + 408), *(v3 + 416), *(v3 + 424), *(v3 + 432), *(v3 + 440));

    swift_getObjectType();
    sub_26B212F70();
    OUTLINED_FUNCTION_20_6();
    v14 = sub_26B1ADFC8;
  }

  else
  {
    v15 = *(v3 + 672);
    v16 = *(v3 + 608);
    sub_26B1A85A8(*(v3 + 408), *(v3 + 416), *(v3 + 424), *(v3 + 432), *(v3 + 440));
    swift_getObjectType();
    sub_26B212F70();
    OUTLINED_FUNCTION_20_6();
    v14 = sub_26B1AD978;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_26B1AD978()
{
  v5 = *(v1 + 744) + 1;
  if (v5 == *(v1 + 720))
  {
    v6 = *(v1 + 712);
    v7 = *(v1 + 600);

    *(v1 + 728) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_scalarFunctions;
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_20_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  *(v1 + 744) = v5;
  v12 = *(v1 + 712);
  if (v5 >= *(v12 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_26B1AFBA0(v12 + ((*(v1 + 92) + 32) & ~*(v1 + 92)) + *(*(v1 + 616) + 72) * v5, *(v1 + 624));
    v0 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_67();
    v14 = v13;
    v3 = *(v13 + 16);
    v2 = v3 + 1;
    if (v3 < *(v13 + 24) >> 1)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_10_11();
  v14 = v38;
LABEL_7:
  v15 = *(v1 + 624);
  *(v14 + 16) = v2;
  v16 = v14 + 80 * v3;
  *(v16 + 32) = 0xD000000000000010;
  *(v16 + 40) = 0x800000026B220060;
  *(v16 + 104) = 0;
  v17 = sub_26B1AB6D0();
  v19 = v18;
  v20 = MEMORY[0x277D837D0];
  v21 = &protocol witness table for String;
  OUTLINED_FUNCTION_66(v17, v18);
  OUTLINED_FUNCTION_54();
  if (v3 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_10_11();
    v14 = v39;
  }

  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_65(v22);
  __swift_destroy_boxed_opaque_existential_1((v1 + 288));

  OUTLINED_FUNCTION_33_3();
  if (v23)
  {
    OUTLINED_FUNCTION_16_7();
    v14 = v40;
  }

  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_53();
  if (v2 > (v20 >> 1))
  {
    OUTLINED_FUNCTION_10_11();
    v14 = v41;
  }

  v24 = *(v1 + 624);
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_69(v25);
  __swift_destroy_boxed_opaque_existential_1((v1 + 328));
  sub_26B1ABD40(v24);
  OUTLINED_FUNCTION_33_3();
  if (v23)
  {
    OUTLINED_FUNCTION_16_7();
    v14 = v42;
  }

  *(v14 + 16) = v19;
  OUTLINED_FUNCTION_3_21();
  v26 = *(v1 + 280);
  OUTLINED_FUNCTION_2_26(v27, *(v1 + 232), *(v1 + 248), *(v1 + 264));
  *(v1 + 448) = v14;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0;
  *(v1 + 472) = v0;
  sub_26B2128F0();
  sub_26B2128F0();
  v8 = sub_26B1A6AB8();
  v28 = *(*(v1 + 472) + 16);
  if (v28)
  {

    v29 = *(v1 + 448);
    v30 = *(v1 + 456);
    v32 = *(v1 + 464);
    v31 = *(v1 + 472);
    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    v33 = v29;
    v21 = v32;
    v4 = v31;
  }

  else
  {
    v30 = *(v1 + 464);
    if (!v30)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v8, v9, v10);
    }

    v33 = *(v1 + 456);
    v34 = *(v1 + 464);
    sub_26B2128F0();

    OUTLINED_FUNCTION_60();
  }

  *(v1 + 408) = v33;
  *(v1 + 416) = v30;
  *(v1 + 424) = v21;
  *(v1 + 432) = v4;
  *(v1 + 440) = v28 != 0;
  v35 = swift_task_alloc();
  *(v1 + 752) = v35;
  *v35 = v1;
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_20_0();

  return sub_26B1B3E68();
}

uint64_t sub_26B1ADCA8()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 768);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  *(v0 + 776) = *(v1 + v2);
  sub_26B2128F0();
  swift_getObjectType();
  sub_26B212F70();
  OUTLINED_FUNCTION_20_6();
  v3 = OUTLINED_FUNCTION_11_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_26B1ADD38()
{
  v42 = v0;
  v4 = 0;
  v5 = v0[97];
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_57();
  if (v3)
  {
LABEL_6:
    while (1)
    {
      v7 = *(v0[76] + 136);
      if (!v7)
      {
        break;
      }

      OUTLINED_FUNCTION_38_3();
      v8 = sub_26B1D6D2C(v7);
      v9 = v8;
      sub_26B1E26EC(v8, &v40);
      if (v41 != 1 && (v41 != 14 || v40 != 16))
      {
        sqlite3_extended_errcode(*(v0[76] + 136));
        if (!sqlite3_errstr(v9))
        {
          goto LABEL_25;
        }

        v19 = v0[76];
        sub_26B212C20();
        if (sqlite3_errmsg(*(v19 + 136)))
        {
          v20 = v0[97];
          v38 = v0[75];
          v39 = v0[76];
          sub_26B212C20();
          sub_26B1AFA88();
          OUTLINED_FUNCTION_30_0();
          v21 = swift_allocError();
          v26 = OUTLINED_FUNCTION_55(v21, v22, v23, v24, v25);
          OUTLINED_FUNCTION_45_1(v26, v27, v28, v29, v30, v31, v32, v33, v37, v38, v39, v40, v41);
          OUTLINED_FUNCTION_42_0();

          v34 = v0[78];

          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_51_1();

          __asm { BRAA            X1, X16 }
        }

        goto LABEL_26;
      }

      v3 &= v3 - 1;
      OUTLINED_FUNCTION_42_0();

      if (!v3)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        v11 = v0[97];
        v12 = v0[78];
        v13 = v0[76];
        v14 = v0[75];

        *(v13 + 128) = &off_287BBFB48;
        swift_unknownObjectWeakAssign();

        v15 = v0[1];
        v16 = v0[76];
        OUTLINED_FUNCTION_51_1();

        __asm { BRAA            X2, X16 }
      }

      v3 = *(v1 + 8 * v6);
      ++v4;
      if (v3)
      {
        v4 = v6;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_26B1ADF58()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[76];
  v2 = v0[75];

  v3 = v0[87];
  v4 = v0[78];

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B1ADFC8()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[76];
  v2 = v0[75];

  v3 = v0[95];
  v4 = v0[78];

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B1AE05C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  return sub_26B1AE038();
}

uint64_t sub_26B1AE070(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char **a6)
{
  OUTLINED_FUNCTION_17();
  result = swift_beginAccess();
  v13 = *(a1 + 136);
  if (!v13)
  {
    goto LABEL_15;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  v14 = sqlite3_prepare_v3(v13, a2, a4, 1u, (a5 + 48), a6);
  swift_endAccess();
  sub_26B1E26EC(v14, &v36);
  OUTLINED_FUNCTION_56();
  if (v16)
  {
  }

  OUTLINED_FUNCTION_64();
  v16 = v16 && v15 == 16;
  if (v16)
  {
  }

  sqlite3_extended_errcode(*(a1 + 136));
  result = OUTLINED_FUNCTION_74();
  if (!result)
  {
    goto LABEL_16;
  }

  sub_26B212C20();
  OUTLINED_FUNCTION_63();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    v17 = sub_26B212C20();
    v19 = v18;
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v20 = swift_allocError();
    v28 = OUTLINED_FUNCTION_25_5(v20, v21, v22, v23, v24, v25, v26, v27, v36);
    OUTLINED_FUNCTION_9_15(v28, v29, v30, v31, v32, v33, v34, v35, v36, SBYTE4(v36));
    *(v6 + 32) = v17;
    *(v6 + 40) = v19;
    swift_willThrow();
  }

LABEL_17:
  __break(1u);
  return result;
}

const char *sub_26B1AE1FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = a3();
  sub_26B1E26EC(v7, &v29);
  OUTLINED_FUNCTION_56();
  if (v9)
  {
  }

  OUTLINED_FUNCTION_64();
  v9 = v9 && v8 == 16;
  if (v9)
  {
  }

  sqlite3_extended_errcode(*(a1 + 136));
  result = OUTLINED_FUNCTION_74();
  if (!result)
  {
    goto LABEL_12;
  }

  sub_26B212C20();
  OUTLINED_FUNCTION_63();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    v10 = sub_26B212C20();
    v12 = v11;
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v13 = swift_allocError();
    v21 = OUTLINED_FUNCTION_25_5(v13, v14, v15, v16, v17, v18, v19, v20, v29);
    OUTLINED_FUNCTION_9_15(v21, v22, v23, v24, v25, v26, v27, v28, v29, SBYTE4(v29));
    *(v3 + 32) = v10;
    *(v3 + 40) = v12;
    swift_willThrow();
  }

LABEL_13:
  __break(1u);
  return result;
}

sqlite3 *sub_26B1AE300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = sub_26B1CEAC0(result, a2, a3, a4);
  if (v4)
  {
  }

  sub_26B1E26EC(v11, &v33);
  OUTLINED_FUNCTION_56();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_64();
  v13 = v13 && v12 == 16;
  if (v13)
  {
  }

  sqlite3_extended_errcode(*(a1 + 136));
  result = OUTLINED_FUNCTION_74();
  if (!result)
  {
    goto LABEL_13;
  }

  sub_26B212C20();
  OUTLINED_FUNCTION_63();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    v14 = sub_26B212C20();
    v16 = v15;
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v17 = swift_allocError();
    v25 = OUTLINED_FUNCTION_25_5(v17, v18, v19, v20, v21, v22, v23, v24, v33);
    OUTLINED_FUNCTION_9_15(v25, v26, v27, v28, v29, v30, v31, v32, v33, SBYTE4(v33));
    *(v5 + 32) = v14;
    *(v5 + 40) = v16;
    swift_willThrow();
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_26B1AE448(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = sub_26B1DFB3C(result, a2);
  if (!v2)
  {
    result = sub_26B1E26EC(result, &v31);
    if (v32 != 1 && (v32 != 14 || v31 != 16))
    {
      sqlite3_extended_errcode(*(a1 + 136));
      result = OUTLINED_FUNCTION_73();
      if (result)
      {
        sub_26B212C20();
        OUTLINED_FUNCTION_61();
        result = sqlite3_errmsg(*(a1 + 136));
        if (result)
        {
          v8 = sub_26B212C20();
          v10 = v9;
          sub_26B1AFA88();
          OUTLINED_FUNCTION_30_0();
          v11 = swift_allocError();
          v18 = OUTLINED_FUNCTION_23_5(v11, v12, v13, v14, v15, v16, v17);
          OUTLINED_FUNCTION_8_18(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
          *(v3 + 32) = v8;
          *(v3 + 40) = v10;
          return swift_willThrow();
        }

LABEL_14:
        __break(1u);
        return result;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_26B1AE594(uint64_t a1)
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_17();
  v8 = sqlite3_exec(v4, v5, v6, v7, 0);
  result = sub_26B1E26EC(v8, &v33);
  if (v34 != 1 && (v34 != 14 || v33 != 16))
  {
    sqlite3_extended_errcode(*(a1 + 136));
    result = OUTLINED_FUNCTION_73();
    if (result)
    {
      sub_26B212C20();
      OUTLINED_FUNCTION_61();
      result = sqlite3_errmsg(*(a1 + 136));
      if (result)
      {
        v10 = sub_26B212C20();
        v12 = v11;
        sub_26B1AFA88();
        OUTLINED_FUNCTION_30_0();
        v13 = swift_allocError();
        v20 = OUTLINED_FUNCTION_23_5(v13, v14, v15, v16, v17, v18, v19);
        OUTLINED_FUNCTION_8_18(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
        *(v1 + 32) = v10;
        *(v1 + 40) = v12;
        return swift_willThrow();
      }

LABEL_13:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

const char *sub_26B1AE720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(const char *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  result = *(a1 + 136);
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = a4(result, a2, a3);
  if (v4)
  {
  }

  sub_26B1E26EC(v11, &v33);
  OUTLINED_FUNCTION_56();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_64();
  v13 = v13 && v12 == 16;
  if (v13)
  {
  }

  sqlite3_extended_errcode(*(a1 + 136));
  result = OUTLINED_FUNCTION_74();
  if (!result)
  {
    goto LABEL_13;
  }

  sub_26B212C20();
  OUTLINED_FUNCTION_63();
  result = sqlite3_errmsg(*(a1 + 136));
  if (result)
  {
    v14 = sub_26B212C20();
    v16 = v15;
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    v17 = swift_allocError();
    v25 = OUTLINED_FUNCTION_25_5(v17, v18, v19, v20, v21, v22, v23, v24, v33);
    OUTLINED_FUNCTION_9_15(v25, v26, v27, v28, v29, v30, v31, v32, v33, SBYTE4(v33));
    *(v5 + 32) = v14;
    *(v5 + 40) = v16;
    swift_willThrow();
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_26B1AE83C()
{
  v1 = v0;
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v2 = *(v0 + 136);
  if (!v2)
  {
LABEL_12:
    sub_26B1AEDF0(v1 + 120);
    v21 = *(v1 + 152);
    v22 = *(v1 + 160);
    v23 = *(v1 + 168);
    v24 = *(v1 + 176);
    sub_26B193F8C(*(v1 + 144));

    v25 = *(v1 + 216);

    swift_defaultActor_destroy();
    return v1;
  }

  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v3 = *(v0 + 216);
  OUTLINED_FUNCTION_17();
  v4 = swift_beginAccess();
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  MEMORY[0x28223BE20](v4);
  _s9StatementCMa();
  v29[0] = v5;
  v29[1] = v6;
  v29[2] = v7;
  v29[3] = sub_26B1AFA80;
  v29[4] = swift_getKeyPath();
  v26 = *(v1 + 112);
  v27 = *(v1 + 113);

  v8 = sub_26B2128F0();
  v28 = sub_26B1F8AD4(v8);

  sub_26B168A44(v29);
  result = sub_26B16EAD0(v28);
  if (!result)
  {
LABEL_9:

    if (!(v26 & 1 | ((v27 & 1) == 0)))
    {
      OUTLINED_FUNCTION_17();
      sqlite3_exec(v13, v14, v15, v16, 0);
      OUTLINED_FUNCTION_17();
      sqlite3_exec(v17, v18, v19, v20, 0);
    }

    sqlite3_close_v2(v2);

    goto LABEL_12;
  }

  v10 = result;
  if (result >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D670B70](i, v28);
      }

      else
      {
        v12 = *(v28 + 8 * i + 32);
      }

      sub_26B1CFE9C();
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1AEABC()
{
  sub_26B1AE83C();

  return MEMORY[0x282200960](v0);
}

sqlite3_uint64 sub_26B1AEB1C(unsigned __int8 **a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  result = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_14;
      }

      result = HIDWORD(a2) - a2;
      goto LABEL_6;
    case 2uLL:
      v12 = *(a2 + 16);
      v11 = *(a2 + 24);
      result = v11 - v12;
      if (__OFSUB__(v11, v12))
      {
        goto LABEL_15;
      }

LABEL_6:
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      else
      {
LABEL_7:
        v13 = sqlite3_malloc64(result);
        *a1 = v13;
        v14 = 7;
        if (v13)
        {
          v15 = v13;
          MEMORY[0x26D66F450](a2, a3);
          MEMORY[0x26D66F450](a2, a3);
          sub_26B212040();
          *(v15 + 9) = 257;
          swift_beginAccess();
          v16 = *(a5 + 136);
          v17 = MEMORY[0x26D66F450](a2, a3);
          v18 = MEMORY[0x26D66F450](a2, a3);
          if (a4)
          {
            v19 = 3;
          }

          else
          {
            v19 = 7;
          }

          return sqlite3_deserialize(v16, "main", v15, v17, v18, v19);
        }

        return v14;
      }

      return result;
    case 3uLL:
      goto LABEL_7;
    default:
      result = BYTE6(a3);
      goto LABEL_7;
  }
}

uint64_t sub_26B1AECD0(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    result = sub_26B1E26EC(result, v26);
    if (BYTE4(v26[0]) != 1 && (BYTE4(v26[0]) != 14 || LODWORD(v26[0]) != 16))
    {
      OUTLINED_FUNCTION_17();
      swift_beginAccess();
      sqlite3_extended_errcode(*(a1 + 136));
      result = OUTLINED_FUNCTION_73();
      if (result)
      {
        sub_26B212C20();
        OUTLINED_FUNCTION_61();
        result = sqlite3_errmsg(*(a1 + 136));
        if (result)
        {
          v7 = sub_26B212C20();
          v9 = v8;
          sub_26B1AFA88();
          OUTLINED_FUNCTION_30_0();
          v10 = swift_allocError();
          v17 = OUTLINED_FUNCTION_23_5(v10, v11, v12, v13, v14, v15, v16);
          OUTLINED_FUNCTION_8_18(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v27, v28);
          *(v3 + 32) = v7;
          *(v3 + 40) = v9;
          return swift_willThrow();
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B1AEE18(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x2822009F8](sub_26B1AEE3C, 0, 0);
}

uint64_t sub_26B1AF0BC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v12();
  }
}

uint64_t sub_26B1AF1D4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 72);
  return v2();
}

uint64_t sub_26B1AF1F8(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x2822009F8](sub_26B1AF21C, 0, 0);
}

uint64_t sub_26B1AF3F0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v12();
  }
}

uint64_t sub_26B1AF508(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x2822009F8](sub_26B1AF52C, 0, 0);
}

uint64_t sub_26B1AF700(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 49) = a1;
  return MEMORY[0x2822009F8](sub_26B1AF724, 0, 0);
}

uint64_t sub_26B1AF8F8(uint64_t result, char a2)
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v3 = v2;
  v5 = result;
  sub_26B15F540(result);
  v6 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x26D66F630](v5);
  v9 = v8;
  if (a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v6 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  if (v7 < v9)
  {
    v11 = v9;
    return sub_26B1D48D8(v11, v10);
  }

  if (v10 > v9)
  {
    v9 = v10;
  }

  v11 = MEMORY[0x26D66F630](*(v3[1] + 16));
  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 < v7)
  {
    return sub_26B1D48D8(v11, v10);
  }

  result = sub_26B1D4818();
  v12 = *v3;
  if (!v12)
  {
    if (!v10)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v12 + 24) & 0x3FLL) != v10)
  {
    *(v12 + 24) = *(v12 + 24) & 0xFFFFFFFFFFFFFFC0 | v10 & 0x3F;
  }

  return result;
}

uint64_t sub_26B1AFA34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  result = swift_getAtKeyPath();
  *a2 = v7;
  return result;
}

unint64_t sub_26B1AFA88()
{
  result = qword_2803E7DF0;
  if (!qword_2803E7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DF0);
  }

  return result;
}

unint64_t sub_26B1AFAF8()
{
  result = qword_2803E7DF8;
  if (!qword_2803E7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DF8);
  }

  return result;
}

unint64_t sub_26B1AFB4C()
{
  result = qword_2803E7E00;
  if (!qword_2803E7E00)
  {
    _s10ConnectionCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E00);
  }

  return result;
}

uint64_t sub_26B1AFBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.AttachedLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_9_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10)
{
  *(v12 + 4) = a9;
  *(v12 + 8) = a10;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
}

void OUTLINED_FUNCTION_10_11()
{

  sub_26B16AFCC();
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 56);
  return v2;
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  v7 = *(v2 + 624);
  *(v0 + 16) = v1;
  v8 = v0 + 80 * v3;
  *(v8 + 32) = 542327072;
  *(v8 + 40) = 0xE400000000000000;
  v9 = *(v2 + 176);
  v10 = *(v2 + 192);
  v11 = *(v2 + 208);
  *(v8 + 96) = *(v2 + 224);
  *(v8 + 64) = v10;
  *(v8 + 80) = v11;
  *(v8 + 48) = v9;
  *(v8 + 104) = 0;
  v12 = *v7;
  v13 = v7[1];
  *(v2 + 352) = v4;
  *(v2 + 360) = v5;
  *(v2 + 328) = v12;
  *(v2 + 336) = v13;

  return sub_26B16BCF8(v2 + 328, v2 + 96);
}

uint64_t OUTLINED_FUNCTION_19_7(uint64_t a1)
{
  *(a1 + 8) = sub_26B1AD80C;
  v2 = *(v1 + 608);
  return v1 + 408;
}

void OUTLINED_FUNCTION_22_7()
{

  sub_26B16AFCC();
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *a2 = v7;

  return sub_26B1E26EC(v7, va);
}

uint64_t OUTLINED_FUNCTION_26_7()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  *(v0 + 144) = sub_26B1AE05C;
  *(v0 + 152) = 0;

  return sub_26B193F8C(v2);
}

uint64_t OUTLINED_FUNCTION_32_3()
{
  v2 = v1[84];
  v3 = v1[76];
  return v1[75] + v0;
}

uint64_t OUTLINED_FUNCTION_35_2()
{
  *(v0[76] + 113) = *(v0[75] + v0[79] + 3);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_3()
{
  v4 = *(*(v0 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v2)))));

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_40_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + 16;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);

  return sub_26B1A85A8(v2, v3, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_41_1()
{
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  *(v15 + 4) = a12;
  *(v15 + 8) = a13;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_53()
{
  *(v1 + 168) = 1;
  v3 = *(v0 + 24);

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_54()
{
  *(v1 + 88) = 1;
  v3 = *(v0 + 24);
  v4 = *(v0 + 16) + 1;

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *a2 = v5;

  return sub_26B1E26EC(v5, va);
}

void OUTLINED_FUNCTION_60()
{
  v1 = v0[56];
  v3 = v0[58];
  v2 = v0[59];
}

void *OUTLINED_FUNCTION_65@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + v3 * a1 + 32), (v2 + 16), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1, uint64_t a2)
{
  v2[39] = v3;
  v2[40] = v4;
  v2[36] = a1;
  v2[37] = a2;

  return sub_26B16BCF8((v2 + 36), (v2 + 2));
}

void OUTLINED_FUNCTION_67()
{

  sub_26B16AFCC();
}

void *OUTLINED_FUNCTION_69@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + v2 * a1 + 32), (v3 + 96), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_26B2128F0();
}

unint64_t OUTLINED_FUNCTION_71()
{
  *(v0 + 680) = v1;
  v3 = *(v0 + 608);

  return sub_26B1AFB4C();
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_getObjectType();
}

const char *OUTLINED_FUNCTION_73()
{

  return sqlite3_errstr(v0);
}

const char *OUTLINED_FUNCTION_74()
{

  return sqlite3_errstr(v0);
}

uint64_t sub_26B1B011C()
{
  OUTLINED_FUNCTION_25();
  v1[4] = v0;
  v2 = MEMORY[0x277D837D0];
  sub_26B1B3BF4(0, &qword_2803E79A0, MEMORY[0x277D837D0], MEMORY[0x277D857B8]);
  v1[5] = v3;
  OUTLINED_FUNCTION_1_7(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_31();
  sub_26B1B3BF4(0, &qword_2803E79A8, v2, MEMORY[0x277D857A8]);
  v1[8] = v7;
  OUTLINED_FUNCTION_1_7(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B1B0258()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[10];
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  sub_26B1B3C44(&qword_2803E7E68, &qword_2803E79A0, MEMORY[0x277D857B8]);
  OUTLINED_FUNCTION_31_4();
  v0[11] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_13_13();
  sub_26B1B3C44(v2, v3, v4);
  v5 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[12] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_6_19(v6);

  return MEMORY[0x282200308](v0 + 2);
}

uint64_t sub_26B1B037C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    v9 = v3[11];
    (*(v3[9] + 8))(v3[10], v3[8]);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1B0494()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_17_7(isUniquelyReferenced_nonNull_native, v5, v6, v7);
      sub_26B16A704();
      v7 = v20;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      OUTLINED_FUNCTION_8_3(v8);
      sub_26B16A704();
      v7 = v21;
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 16 * v9;
    *(v10 + 32) = v2;
    *(v10 + 40) = v1;
    v0[11] = v7;
    OUTLINED_FUNCTION_13_13();
    sub_26B1B3C44(v11, v12, v13);
    v14 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v0[12] = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_6_19();

    return MEMORY[0x282200308](v0 + 2);
  }

  else
  {
    v17 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    OUTLINED_FUNCTION_9_14();
    v19 = v0[11];

    return v18(v19);
  }
}

uint64_t sub_26B1B0620()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[10];
  v2 = v0[7];

  OUTLINED_FUNCTION_10_0();
  v4 = v0[13];

  return v3();
}

uint64_t sub_26B1B0688()
{
  *(v1 + 256) = v0;
  OUTLINED_FUNCTION_33();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26B1B06B4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 256);
  v2 = *(v1 + 40);
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v3;
  *(v0 + 40) = v4;
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_26B1BC924;
  *(v0 + 72) = 0;
  sub_26B1B384C(v1, v0 + 208);
  *(v0 + 264) = MEMORY[0x277D84F90];
  v5 = OUTLINED_FUNCTION_33_4(&unk_26B219F78);
  *(v0 + 272) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_8_19(v5);

  return v7();
}

uint64_t sub_26B1B0778()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 272);
  *v4 = *v1;
  *(v3 + 280) = v7;
  *(v3 + 288) = v0;

  if (v0)
  {
    v8 = *(v3 + 264);
    v9 = *(v3 + 32);
    *(v3 + 80) = *(v3 + 16);
    *(v3 + 96) = v9;
    v10 = *(v3 + 64);
    *(v3 + 112) = *(v3 + 48);
    *(v3 + 128) = v10;
    OUTLINED_FUNCTION_11_11();
    sub_26B1B38A8(v3 + 80, v11);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26B1B08A0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 280);
  if (v1)
  {
    v2 = *(v0 + 264);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_17_7(isUniquelyReferenced_nonNull_native, v4, v5, v6);
      sub_26B16B158();
      v6 = v16;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      OUTLINED_FUNCTION_8_3(v7);
      sub_26B16B158();
      v6 = v17;
    }

    *(v6 + 16) = v8 + 1;
    *(v6 + 8 * v8 + 32) = v1;
    *(v0 + 264) = v6;
    v9 = OUTLINED_FUNCTION_33_4(&unk_26B219F78);
    *(v0 + 272) = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_8_19();

    return v18();
  }

  else
  {
    v11 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v11;
    v12 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v12;
    OUTLINED_FUNCTION_11_11();
    sub_26B1B38A8(v0 + 144, v13);
    OUTLINED_FUNCTION_9_14();
    v15 = *(v0 + 264);

    return v14(v15);
  }
}

uint64_t sub_26B1B09D4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 288);
  return v2();
}

uint64_t sub_26B1B09F8()
{
  OUTLINED_FUNCTION_25();
  v1[8] = v0;
  sub_26B1B3564(0);
  v1[9] = v2;
  OUTLINED_FUNCTION_1_7(v2);
  v1[10] = v3;
  v5 = *(v4 + 64);
  v1[11] = OUTLINED_FUNCTION_31();
  sub_26B1B3640(0);
  v1[12] = v6;
  OUTLINED_FUNCTION_1_7(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1B0AEC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[14];
  (*(v0[10] + 16))(v0[11], v0[8], v0[9]);
  sub_26B1B37E8(&qword_2803E7E50, sub_26B1B3564);
  OUTLINED_FUNCTION_31_4();
  v0[15] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_12_13();
  sub_26B1B37E8(v2, v3);
  v4 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[16] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_4_22(v5);

  return MEMORY[0x282200308](v7);
}

uint64_t sub_26B1B0BF4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    v9 = v3[15];
    (*(v3[13] + 8))(v3[14], v3[12]);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1B0D0C()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 24);
  if (!v1)
  {
    v22 = *(v0 + 88);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    sub_26B1B3704(*(v0 + 16), *(v0 + 24));

    OUTLINED_FUNCTION_9_14();
    v27 = *(v0 + 120);
    OUTLINED_FUNCTION_20_0();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v0 + 120);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 120);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_17_7(isUniquelyReferenced_nonNull_native, v9, v10, v11);
    sub_26B16B258();
    v11 = v30;
  }

  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  if (v13 >= v12 >> 1)
  {
    OUTLINED_FUNCTION_8_3(v12);
    sub_26B16B258();
    v11 = v31;
  }

  *(v11 + 16) = v13 + 1;
  v14 = v11 + 48 * v13;
  *(v14 + 32) = v3;
  *(v14 + 40) = v1;
  *(v14 + 48) = v4;
  *(v14 + 56) = v5;
  *(v14 + 64) = v6;
  *(v14 + 72) = v7;
  *(v0 + 120) = v11;
  OUTLINED_FUNCTION_12_13();
  sub_26B1B37E8(v15, v16);
  v17 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 128) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x282200308](v20);
}

uint64_t sub_26B1B0EAC()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[14];
  v2 = v0[11];

  OUTLINED_FUNCTION_10_0();
  v4 = v0[17];

  return v3();
}

uint64_t SQLDatabase._markdown(sql:)()
{
  OUTLINED_FUNCTION_12();
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 16);
  *(v1 + 232) = *v2;
  *(v1 + 296) = v4;
  *(v1 + 304) = v0;
  v5 = *(v2 + 32);
  *(v1 + 248) = v3;
  *(v1 + 264) = v5;
  v6 = swift_task_alloc();
  *(v1 + 312) = v6;
  *v6 = v1;
  v6[1] = sub_26B1B0FFC;
  v7 = *MEMORY[0x277D85DE8];

  return SQLDatabase.results(dynamicValues:)(v1 + 64, v1 + 232);
}

uint64_t sub_26B1B0FFC()
{
  OUTLINED_FUNCTION_12();
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 320) = v0;

  if (v0)
  {
    v7 = sub_26B1B1DC0;
  }

  else
  {
    v7 = sub_26B1B114C;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v3, 0);
}

uint64_t sub_26B1B114C()
{
  OUTLINED_FUNCTION_12();
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  *(v0 + 41) = *(v0 + 89);
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  *(v0 + 192) = *(v0 + 24);
  *(v0 + 208) = v3;
  *(v0 + 224) = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = sub_26B1B125C;
  v5 = *MEMORY[0x277D85DE8];

  return sub_26B1B240C();
}

uint64_t sub_26B1B125C()
{
  OUTLINED_FUNCTION_12();
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  *v3 = v6;
  v2[42] = v7;
  v2[43] = v0;

  if (v0)
  {
    v8 = v2[38];
    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_26B1B1580, v8, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v2[44] = v10;
    *v10 = v6;
    v10[1] = sub_26B1B1418;
    v11 = *MEMORY[0x277D85DE8];

    return sub_26B1B0688();
  }
}

uint64_t sub_26B1B1418()
{
  OUTLINED_FUNCTION_12();
  v14 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 352);
  *v3 = *v1;
  v2[45] = v6;
  v2[46] = v0;

  if (v0)
  {
    v7 = v2[42];
    v8 = v2[38];

    v9 = *MEMORY[0x277D85DE8];
    v10 = sub_26B1B1E40;
    v11 = v8;
  }

  else
  {
    v11 = v2[38];
    v12 = *MEMORY[0x277D85DE8];
    v10 = sub_26B1B1608;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_26B1B1580()
{
  OUTLINED_FUNCTION_25();
  v5 = *MEMORY[0x277D85DE8];
  sub_26B1B33AC(v0 + 16);
  v1 = *(v0 + 344);
  OUTLINED_FUNCTION_10_0();
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_26B1B1608()
{
  v76 = v0;
  v75 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    *&v74 = MEMORY[0x277D84F90];
    sub_26B15B518();
    v4 = v74;
    v5 = *(v74 + 16);
    v6 = 24 * v5 + 48;
    v7 = (v1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      *&v74 = v4;
      v10 = *(v4 + 24);
      sub_26B2128F0();
      if (v5 >= v10 >> 1)
      {
        sub_26B15B518();
        v4 = v74;
      }

      *(v4 + 16) = v5 + 1;
      v11 = (v4 + v6);
      *(v11 - 16) = 3;
      *(v11 - 1) = v9;
      *v11 = v8;
      v6 += 24;
      v7 += 2;
      ++v5;
      --v2;
    }

    while (v2);
    v66 = v4;
    v12 = *(v0 + 336);

    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = *(v0 + 336);

    v66 = MEMORY[0x277D84F90];
  }

  v14 = *(v0 + 360);
  v15 = *(v14 + 16);
  if (v15)
  {
    sub_26B15B4F8(0, v15, 0);
    v16 = 0;
    v17 = v3;
    v69 = v14 + 32;
    v67 = v15;
    v68 = v14;
    do
    {
      if (v16 >= *(v14 + 16))
      {
LABEL_50:
        __break(1u);
      }

      v18 = *(v69 + 8 * v16);
      v19 = *(v18 + 16);
      if (v19)
      {
        v70 = v16;
        v71 = v17;
        sub_26B2128F0();
        sub_26B15B55C(0, v19, 0);
        v20 = v3;
        v21 = 32;
        v73 = v18;
        while (1)
        {
          v22 = *(v18 + v21);
          v23 = *(v22 + 16);

          switch(sqlite3_value_type(v23))
          {
            case 1:
              *(v0 + 176) = MEMORY[0x277D83B88];
              *(v0 + 184) = &protocol witness table for Int;
              *(v0 + 152) = sqlite3_value_int64(*(v22 + 16));
              goto LABEL_35;
            case 2:
              *(v0 + 176) = MEMORY[0x277D839F8];
              *(v0 + 184) = &protocol witness table for Double;
              *(v0 + 152) = sqlite3_value_double(*(v22 + 16));
              goto LABEL_35;
            case 3:
              *(v0 + 176) = MEMORY[0x277D837D0];
              *(v0 + 184) = &protocol witness table for String;
              v24 = *(v22 + 16);
              v25 = sqlite3_value_text(v24);
              sqlite3_value_bytes(v24);
              if (v25)
              {
                v26 = sub_26B212A40();
                if (v27)
                {
                  *(v0 + 152) = v26;
                  *(v0 + 160) = v27;
                  goto LABEL_35;
                }

                *&v74 = 0;
                *(&v74 + 1) = 0xE000000000000000;
                sub_26B2136C0();
                v43 = *(&v74 + 1);
                *(v0 + 272) = v74;
                *(v0 + 280) = v43;
                MEMORY[0x26D670040](0xD00000000000001ALL, 0x800000026B220130);
                *(v0 + 288) = v25;
                sub_26B2138F0();
                v41 = *(v0 + 272);
                v42 = *(v0 + 280);
              }

              else
              {
                v41 = 0xD00000000000002DLL;
                v42 = 0x800000026B220100;
              }

              sub_26B1B34BC();
              v44 = OUTLINED_FUNCTION_24_4();
              *v45 = v41;
              v45[1] = v42;
              swift_willThrow();
              __swift_deallocate_boxed_opaque_existential_2((v0 + 152));

              goto LABEL_31;
            case 4:
              *(v0 + 176) = MEMORY[0x277CC9318];
              *(v0 + 184) = sub_26B1B3400();
              v30 = *(v22 + 16);
              v31 = sqlite3_value_blob(v30);
              v32 = sqlite3_value_bytes(v30);
              if (v32 < 1)
              {
                v39 = 0;
                v40 = 0xC000000000000000;
                goto LABEL_34;
              }

              if (v31)
              {
                v33 = v32;
                v34 = v32;
                if (v32 < 0xF)
                {
                  *(&v74 + 6) = 0;
                  *&v74 = 0;
                  BYTE14(v74) = v32;
                  memcpy(&v74, v31, v32);
                  v39 = v74;
                  v40 = v72 & 0xF00000000000000 | DWORD2(v74) | ((WORD6(v74) | (BYTE14(v74) << 16)) << 32);
                  v72 = v40;
                }

                else
                {
                  v35 = sub_26B211D50();
                  v36 = *(v35 + 48);
                  v37 = *(v35 + 52);
                  swift_allocObject();
                  if (v33 == 0x7FFFFFFF)
                  {
                    v38 = sub_26B211D00();
                    sub_26B211F60();
                    v39 = swift_allocObject();
                    *(v39 + 16) = xmmword_26B219F00;
                    v40 = v38 | 0x8000000000000000;
                  }

                  else
                  {
                    v48 = sub_26B211D00();
                    v39 = v34 << 32;
                    v40 = v48 | 0x4000000000000000;
                  }
                }

LABEL_34:
                *(v0 + 152) = v39;
                *(v0 + 160) = v40;
LABEL_35:
                sub_26B150514((v0 + 152), v0 + 112);
                v49 = *(v0 + 136);
                __swift_project_boxed_opaque_existential_1((v0 + 112), v49);
                v50 = *(v49 - 8);
                v51 = *(v50 + 64);
                OUTLINED_FUNCTION_31();
                (*(v50 + 16))();
                v46 = sub_26B212AE0();
                v47 = v52;

                __swift_destroy_boxed_opaque_existential_1((v0 + 112));
                goto LABEL_36;
              }

              __swift_deallocate_boxed_opaque_existential_2((v0 + 152));
LABEL_31:
              *(v0 + 184) = 0;
              *(v0 + 168) = 0u;
              *(v0 + 152) = 0u;
              sub_26B1B38A8(v0 + 152, sub_26B1B3454);

              v46 = 0x6D616E79444C5153;
              v47 = 0xEF65756C61566369;
LABEL_36:
              v54 = *(v20 + 16);
              v53 = *(v20 + 24);
              if (v54 >= v53 >> 1)
              {
                v56 = OUTLINED_FUNCTION_8_3(v53);
                sub_26B15B55C(v56, v54 + 1, 1);
              }

              *(v20 + 16) = v54 + 1;
              v55 = v20 + 16 * v54;
              *(v55 + 32) = v46;
              *(v55 + 40) = v47;
              v21 += 8;
              --v19;
              v18 = v73;
              if (!v19)
              {

                v3 = MEMORY[0x277D84F90];
                v15 = v67;
                v14 = v68;
                v16 = v70;
                v17 = v71;
                goto LABEL_41;
              }

              break;
            case 5:
              *(v0 + 176) = &type metadata for SQLNull;
              *(v0 + 184) = sub_26B1B3510();
              v28 = *(v22 + 16);
              if (sqlite3_value_type(v28) == 5)
              {
                goto LABEL_35;
              }

              *&v74 = 0;
              *(&v74 + 1) = 0xE000000000000000;
              sub_26B2136C0();

              *&v74 = 0xD00000000000001ELL;
              *(&v74 + 1) = 0x800000026B220150;
              *(v0 + 60) = sqlite3_value_type(v28);
              v29 = sub_26B213B90();
              MEMORY[0x26D670040](v29);

              MEMORY[0x26D670040](0x65756C617620, 0xE600000000000000);
              __swift_deallocate_boxed_opaque_existential_2((v0 + 152));

              goto LABEL_31;
            default:
              __break(1u);
              goto LABEL_50;
          }
        }
      }

      v20 = v3;
LABEL_41:
      v58 = *(v17 + 16);
      v57 = *(v17 + 24);
      if (v58 >= v57 >> 1)
      {
        v59 = v16;
        sub_26B15B4F8((v57 > 1), v58 + 1, 1);
        v16 = v59;
      }

      ++v16;
      *(v17 + 16) = v58 + 1;
      *(v17 + 8 * v58 + 32) = v20;
    }

    while (v16 != v15);
    v60 = *(v0 + 360);

    sub_26B1B33AC(v0 + 16);
  }

  else
  {
    v61 = *(v0 + 360);

    sub_26B1B33AC(v0 + 16);
    v17 = MEMORY[0x277D84F90];
  }

  v62 = *(v0 + 296);
  *v62 = 0;
  *(v62 + 8) = v66;
  *(v62 + 16) = v17;
  OUTLINED_FUNCTION_10_0();
  v64 = *MEMORY[0x277D85DE8];

  return v63();
}

uint64_t sub_26B1B1DC0()
{
  OUTLINED_FUNCTION_25();
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 320);
  OUTLINED_FUNCTION_10_0();
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_26B1B1E40()
{
  OUTLINED_FUNCTION_25();
  v5 = *MEMORY[0x277D85DE8];
  sub_26B1B33AC(v0 + 16);
  v1 = *(v0 + 368);
  OUTLINED_FUNCTION_10_0();
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_26B1B1EC8()
{
  OUTLINED_FUNCTION_25();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 64) = v5;
  v6 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v6;
  *(v1 + 48) = *(v3 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v1 + 104) = v7;
  *v7 = v8;
  v7[1] = sub_26B1B1F70;

  return sub_26B1D33E4();
}

uint64_t sub_26B1B1F70()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v0;

  v8 = v3[12];
  if (v0)
  {
    v9 = sub_26B1B2330;
  }

  else
  {
    v9 = sub_26B1B2078;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_26B1B2078()
{
  OUTLINED_FUNCTION_30();
  if (qword_2803E6AB0 != -1)
  {
    OUTLINED_FUNCTION_18_7();
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v0[7] = v1;
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_27_6(v4);
  v5[4] = v2;
  v5[5] = v1;
  v5[6] = v3;
  OUTLINED_FUNCTION_14_11();
  sub_26B1B37E8(v6, v7);
  v8 = *(MEMORY[0x277D85A70] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[17] = v9;
  *v9 = v10;
  v9[1] = sub_26B1B21F0;
  v11 = v0[8];
  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x282200908](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26B1B21F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = v5[17];
  v7 = v5[16];
  v8 = v5[14];
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v3 + 144) = v0;

  v11 = *(v3 + 96);
  if (v0)
  {
    v12 = sub_26B1B23B0;
  }

  else
  {
    v12 = sub_26B1B2354;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_26B1B2330()
{
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_10_0();
  return v2();
}

uint64_t sub_26B1B2354()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_10_0();

  return v2();
}

uint64_t sub_26B1B23B0()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 112);

  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B1B240C()
{
  OUTLINED_FUNCTION_25();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  v5 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v5;
  *(v1 + 48) = *(v3 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v1 + 104) = v6;
  *v6 = v7;
  v6[1] = sub_26B1B24B0;

  return sub_26B1D33E4();
}

uint64_t sub_26B1B24B0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v0;

  v8 = v3[12];
  if (v0)
  {
    v9 = sub_26B1B2330;
  }

  else
  {
    v9 = sub_26B1B25B8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_26B1B25B8()
{
  OUTLINED_FUNCTION_30();
  if (qword_2803E6AB0 != -1)
  {
    OUTLINED_FUNCTION_18_7();
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v0[8] = v1;
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_27_6(v4);
  v5[4] = v2;
  v5[5] = v1;
  v5[6] = v3;
  OUTLINED_FUNCTION_14_11();
  sub_26B1B37E8(v6, v7);
  v8 = *(MEMORY[0x277D85A70] + 4);

  v9 = swift_task_alloc();
  v0[17] = v9;
  sub_26B1B3BF4(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *v9 = v0;
  v9[1] = sub_26B1B2754;
  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x282200908](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_26B1B2754()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = v5[17];
  v7 = v5[16];
  v8 = v5[14];
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v3 + 144) = v0;

  v11 = *(v3 + 96);
  if (v0)
  {
    v12 = sub_26B1B23B0;
  }

  else
  {
    v12 = sub_26B1B2894;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_26B1B2894()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 112);

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_9_14();

  return v3();
}

uint64_t sub_26B1B28F4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v6[12] = v8;
  *v8 = v6;
  v8[1] = sub_26B1B2A00;

  return v10();
}

uint64_t sub_26B1B2A00()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 104) = v0;

  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_26B1B2CD8;
  }

  else
  {
    v7 = sub_26B1B2B20;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26B1B2B20()
{
  v25 = v0;
  v1 = *(v0 + 104);
  sub_26B1D416C(*(v0 + 80), *(v0 + 72), *(v0 + 88));
  v2 = v1;
  if (v1)
  {
    *(v0 + 64) = v1;
    v3 = v1;
    sub_26B16C9BC(0, &qword_280D2DA78);
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 16);
      v5 = *(v0 + 20);
      v6 = *(v0 + 24);
      v7 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = *(v0 + 48);
      v9 = *(v0 + 56);
      v21 = v5;
      v22 = v6;
      v23 = 17;
      v24 = 14;
      if (static SQLError.Code.== infix(_:_:)(&v21, &v23))
      {
        v19 = v10;
        v20 = v7;
        v12 = *(v0 + 80);
        v11 = *(v0 + 88);
        v13 = *(v0 + 72);

        OUTLINED_FUNCTION_34_3();
        if (v11)
        {
        }

        else
        {
          sub_26B1AFA88();
          OUTLINED_FUNCTION_24_4();
          *v16 = v4;
          *(v16 + 4) = v5;
          *(v16 + 8) = v6;
          *(v16 + 16) = v20;
          *(v16 + 24) = v8;
          *(v16 + 32) = v19;
          *(v16 + 40) = v9;
          swift_willThrow();
        }

        goto LABEL_12;
      }
    }

    v15 = *(v0 + 72);
    v14 = *(v0 + 80);

    OUTLINED_FUNCTION_10_12();
    if (v15)
    {
    }

    else
    {
      swift_willThrow();
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_10_0();

  return v17();
}

uint64_t sub_26B1B2E44(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a3;
  v11 = (a1 + *a1);
  v8 = a1[1];
  v9 = swift_task_alloc();
  v5[13] = v9;
  *v9 = v5;
  v9[1] = sub_26B1B2F58;

  return (v11)(v5 + 8, a3, a4);
}

uint64_t sub_26B1B2F58()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *(v2 + 104);
  *v4 = *v1;
  *(v3 + 112) = v0;

  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_26B1B3230;
  }

  else
  {
    v7 = sub_26B1B3078;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26B1B339C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_26B1B3400()
{
  result = qword_2803E7E08;
  if (!qword_2803E7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E08);
  }

  return result;
}

void sub_26B1B3454()
{
  if (!qword_2803E7E10)
  {
    sub_26B16C9BC(255, &qword_2803E7E18);
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7E10);
    }
  }
}

unint64_t sub_26B1B34BC()
{
  result = qword_2803E7E20;
  if (!qword_2803E7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E20);
  }

  return result;
}

unint64_t sub_26B1B3510()
{
  result = qword_2803E7E28;
  if (!qword_2803E7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E28);
  }

  return result;
}

uint64_t sub_26B1B3584()
{
  v0 = qword_2803E7E38;
  if (!qword_2803E7E38)
  {
    v1 = type metadata accessor for SQLDatabase.Results();
    v0 = v1;
    if (!v2)
    {
      atomic_store(v1, &qword_2803E7E38);
    }
  }

  return v0;
}

void sub_26B1B3660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_26B1B3584();
    v7 = sub_26B1B37E8(&qword_2803E7E40, sub_26B1B3584);
    v8 = a3(a1, v6, &type metadata for SQLDatabase.TableColumnInfo, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26B1B3704(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26B1B3748()
{
  OUTLINED_FUNCTION_26_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_26B178E9C;
  v3 = OUTLINED_FUNCTION_20_7();

  return sub_26B1B28F4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26B1B37E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B1B38A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26B1B3908()
{
  if (!qword_2803E7E60)
  {
    sub_26B1B3BF4(255, &qword_2803E7010, &type metadata for SQLDynamicValue, MEMORY[0x277D83940]);
    v0 = type metadata accessor for SQLDatabase.AsyncResultsIterator();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7E60);
    }
  }
}

uint64_t sub_26B1B3984(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_26B1B3A4C;

  return sub_26B1B2E44(a2, a3, a4, a5, a6);
}

uint64_t sub_26B1B3A4C()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_26B1B3B44()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_26_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_26B1760A8;
  v3 = OUTLINED_FUNCTION_20_7();

  return v4(v3);
}

void sub_26B1B3BF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26B1B3C44(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_26B1B3BF4(255, a2, MEMORY[0x277D837D0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_5_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  *a2 = a13;
  *(a2 + 4) = v14;
  *(a2 + 8) = v13;
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_26B1AECD0(v0, sub_26B1B3C94);
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_26B1AECD0(v0, sub_26B1B3830);
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_26_8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

__n128 OUTLINED_FUNCTION_27_6(__n128 *a1)
{
  v1[8].n128_u64[0] = a1;
  result = v1[5];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_26B213150();
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return sub_26B1D416C(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_33_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return sub_26B1D416C(v1, v2, v0);
}

uint64_t sub_26B1B3E68()
{
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v0;
  v3 = *(v2 + 16);
  *(v1 + 16) = *v2;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v2 + 32);
  OUTLINED_FUNCTION_13(dword_26B219F30);
  v7 = v4;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_26B1B3F2C;

  return v7();
}

uint64_t sub_26B1B3F2C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *(v4 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v9 + 72) = v0;

  if (v0)
  {
    v10 = sub_26B1AF1D4;
  }

  else
  {
    v10 = sub_26B1B403C;
  }

  return MEMORY[0x2822009F8](v10, v6, 0);
}

uint64_t SQLDatabase.results(dynamicValues:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a2 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B4088, v2);
}

uint64_t sub_26B1B4088()
{
  result = *(*(v0 + 24) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  if (result)
  {
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_10_3();
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    *v7 = v8;
    *(v7 + 8) = v6;
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;

    v9 = OUTLINED_FUNCTION_4_23();
    sub_26B1A8558(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_25_2();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1B4128()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26B1BD374;

  return SQLExecution.execute(dynamicOnce:)();
}

uint64_t sub_26B1B41D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = v2;
  *(v1 + 288) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 304) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B427C;

  return SQLDatabase.Transaction.results(dynamicValues:)(v1 + 208, v1 + 256);
}

uint64_t sub_26B1B427C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1B4374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_13(&unk_26B219F78);
  v22 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_103(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_32_5(v11);
  OUTLINED_FUNCTION_111();

  return v13(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_26B1B4410()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 360);
  v8 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1B4514()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_74_0();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1B4584(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = v2;
  *(v1 + 288) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 304) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B427C;

  return SQLDatabase.results(dynamicValues:)(v1 + 208, v1 + 256);
}

uint64_t sub_26B1B462C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = v2;
  *(v1 + 288) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 304) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B46D4;

  return sub_26B1B97E4(v1 + 208, v1 + 256);
}

uint64_t sub_26B1B46D4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1B47CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_13(&unk_26B219F78);
  v22 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_103(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_32_5(v11);
  OUTLINED_FUNCTION_111();

  return v13(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_26B1B4868()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 360);
  v8 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1B4974()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_108();
  v1 = OUTLINED_FUNCTION_4_23();
  sub_26B1A85A8(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_98();
  sub_26B1BC950(v0 + 144);
  OUTLINED_FUNCTION_9_14();
  v6 = *(v0 + 376);
  OUTLINED_FUNCTION_25_2();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26B1B49EC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_74_0();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1B4A5C()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_108();
  v1 = OUTLINED_FUNCTION_4_23();
  sub_26B1A85A8(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_99();
  sub_26B1BC950(v0 + 80);
  v6 = *(v0 + 368);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t SQLExecution.execute(dynamicOnce:)()
{
  OUTLINED_FUNCTION_10_3();
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  *(v0 + 256) = *v5;
  *(v0 + 272) = v7;
  *(v0 + 288) = v6;
  v8 = *(v1 + 32);
  OUTLINED_FUNCTION_17_8();
  v15 = (v9 + *v9);
  v11 = *(v10 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 304) = v12;
  *v12 = v13;
  v12[1] = sub_26B1B427C;

  return v15(v0 + 208, v0 + 256, v4, v2);
}

uint64_t sub_26B1B4BF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26B1BD374;

  return SQLExecution.execute(dynamicAll:)();
}

uint64_t sub_26B1B4CA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v2;
  *(v1 + 144) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B4D48;

  return SQLDatabase.Transaction.results(dynamicValues:)(v1 + 64, v1 + 112);
}

uint64_t sub_26B1B4D48()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1B4E40()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_13(&dword_26B219F20);
  v13 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_31_5(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_26B1B4ECC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 168);
  v8 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1B4FD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v2;
  *(v1 + 144) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B4D48;

  return SQLDatabase.results(dynamicValues:)(v1 + 64, v1 + 112);
}

uint64_t sub_26B1B5078(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v2;
  *(v1 + 144) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v1;
  v3[1] = sub_26B1B5120;

  return sub_26B1B97E4(v1 + 64, v1 + 112);
}

uint64_t sub_26B1B5120()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1B5218()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_13(&dword_26B219F20);
  v13 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_102(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_31_5(v2, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_26B1B52A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 168);
  v8 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1B53B0()
{
  OUTLINED_FUNCTION_25();
  sub_26B1B33AC(v0 + 16);
  OUTLINED_FUNCTION_9_14();
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_26B1B5410()
{
  OUTLINED_FUNCTION_25();
  sub_26B1B33AC(v0 + 16);
  OUTLINED_FUNCTION_40_1();

  return v1();
}

uint64_t SQLExecution.execute(dynamicAll:)()
{
  OUTLINED_FUNCTION_10_3();
  v2 = *(v1 + 16);
  *(v0 + 112) = *v1;
  v3 = *(v1 + 32);
  *(v0 + 128) = v2;
  *(v0 + 144) = v3;
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_19_8();
  v12 = (v6 + *v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 152) = v9;
  *v9 = v10;
  v9[1] = sub_26B1B4D48;
  OUTLINED_FUNCTION_95();

  return v12();
}

uint64_t sub_26B1B5590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_task_alloc();
  *(v14 + 16) = v23;
  *v23 = v14;
  v23[1] = sub_26B178E9C;

  return SQLExecution.execute<A>(once:)(a1, a2, a3, a6, a4, a7, a5, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t SQLExecution.execute<A>(once:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_76();
  v17 = v16;
  v18 = v15;
  v20 = v19;
  v22 = v21;
  *(v14 + 368) = v15;
  *(v14 + 376) = v23;
  *(v14 + 352) = v24;
  *(v14 + 360) = v19;
  if (v19 == 1)
  {
    v25 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v27 = OUTLINED_FUNCTION_31();
    for (i = 0; v20 != i; ++i)
    {
      *(v27 + 8 * i) = *((v18 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v14 + 384) = TupleTypeMetadata;
  v29 = *(*(sub_26B2133E0() - 8) + 64);
  *(v14 + 392) = OUTLINED_FUNCTION_31();
  v30 = *(v22 + 32);
  v31 = *(v22 + 16);
  *(v14 + 304) = *v22;
  *(v14 + 320) = v31;
  *(v14 + 336) = v30;
  v32 = *(v17 + 56);
  OUTLINED_FUNCTION_17_8();
  v48 = v33 + *v33;
  v35 = *(v34 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v14 + 400) = v36;
  *v36 = v37;
  v36[1] = sub_26B1B5840;
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_105();

  return v45(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, v48, a12, a13, a14);
}

uint64_t sub_26B1B5840()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 400);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 408) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1B5938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_35_3();
  v14 = *(v12 + 376);
  v13 = *(v12 + 384);
  v16 = *(v12 + 360);
  v15 = *(v12 + 368);
  v17 = *(v12 + 208);
  v18 = *(v12 + 216);
  *(v12 + 416) = v17;
  *(v12 + 424) = v18;
  v19 = *(v12 + 224);
  v20 = *(v12 + 232);
  *(v12 + 432) = v19;
  *(v12 + 440) = v20;
  v21 = *(v12 + 240);
  *(v12 + 448) = v21;
  v22 = *(v12 + 248);
  *(v12 + 249) = v22;
  *(v12 + 256) = v17;
  *(v12 + 264) = v18;
  *(v12 + 272) = v19;
  *(v12 + 280) = v20;
  *(v12 + 288) = v21;
  *(v12 + 296) = v22;

  sub_26B1A8558(v18, v19, v20, v21, v22);
  v23 = type metadata accessor for SQLDatabase.Results();
  WitnessTable = swift_getWitnessTable();
  sub_26B1CA00C(v23, WitnessTable, v12 + 16);
  v25 = *(v12 + 256);
  v26 = *(v12 + 264);
  v27 = *(v12 + 272);
  v28 = *(v12 + 280);
  v29 = *(v12 + 288);
  LOBYTE(v19) = *(v12 + 296);

  sub_26B1A85A8(v26, v27, v28, v29, v19);
  v30 = *(MEMORY[0x277D856F8] + 4);
  v31 = swift_task_alloc();
  *(v12 + 456) = v31;
  *(v12 + 464) = type metadata accessor for SQLDatabase.AsyncResultsIterator();
  swift_getWitnessTable();
  *v31 = v12;
  v31[1] = sub_26B1B5ADC;
  v32 = *(v12 + 392);
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_51_2();

  return MEMORY[0x282200320](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_26B1B5ADC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 456);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1B5BD8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82();
  v3 = v1[48];
  v2 = v1[49];

  v4 = OUTLINED_FUNCTION_39_2();
  sub_26B1A85A8(v4, v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_98();
  (*(*(v0 - 8) + 8))(v1 + 18, v0, v9);
  v10 = 1;
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    (*(*(v1[48] - 8) + 32))(v1[44], v1[49]);
    v10 = 0;
  }

  v11 = v1[49];
  __swift_storeEnumTagSinglePayload(v1[44], v10, 1, v1[48]);

  OUTLINED_FUNCTION_20();

  return v12();
}

uint64_t sub_26B1B5CF4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B1B5D50()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_82();

  v2 = OUTLINED_FUNCTION_39_2();
  sub_26B1A85A8(v2, v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_99();
  (*(*(v0 - 8) + 8))(v1 + 80, v0, v7);
  v8 = *(v1 + 344);
  v9 = *(v1 + 392);

  OUTLINED_FUNCTION_10_0();

  return v10();
}

uint64_t sub_26B1B5E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  *v19 = v12;
  v19[1] = sub_26B1BD374;

  return SQLExecution.execute<A>(all:)(a1, a2, a5, a3, a6, a4, v20, v21, a9, a10, a11, a12);
}

uint64_t SQLExecution.execute<A>(all:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_35_3();
  v14 = *(v13 + 16);
  *(v12 + 112) = *v13;
  *(v12 + 160) = v15;
  *(v12 + 168) = v16;
  *(v12 + 152) = v17;
  v18 = *(v13 + 32);
  *(v12 + 128) = v14;
  *(v12 + 144) = v18;
  v20 = *(v19 + 56);
  OUTLINED_FUNCTION_17_8();
  v36 = v21 + *v21;
  v23 = *(v22 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v12 + 176) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_100(v24);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_91();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v36, a12);
}

uint64_t sub_26B1B6000()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1B60F8()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 192) = v4;
  *(v0 + 200) = v5;
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  *(v0 + 208) = v6;
  *(v0 + 216) = v7;
  v8 = *(v0 + 48);
  *(v0 + 224) = v8;
  v9 = *(v0 + 56);
  *(v0 + 57) = v9;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  type metadata accessor for SQLDatabase.Results();
  swift_getWitnessTable();
  *v10 = v0;
  v10[1] = sub_26B1B6208;
  OUTLINED_FUNCTION_25_2();

  return AsyncSequence.collect()(v11, v12);
}

uint64_t sub_26B1B6208()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 232);
  v8 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v4 + 240) = v0;

  if (!v0)
  {
    *(v4 + 248) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1B630C()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_107();
  v1 = OUTLINED_FUNCTION_4_23();
  sub_26B1A85A8(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_14();
  v6 = *(v0 + 248);
  OUTLINED_FUNCTION_25_2();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26B1B6380()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_107();
  v1 = OUTLINED_FUNCTION_4_23();
  sub_26B1A85A8(v1, v2, v3, v4, v5);
  v6 = *(v0 + 240);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t SQLExecution.execute<A, each B>(once:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_76();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  *(v21 + 88) = v22;
  *(v21 + 96) = v28;
  *(v21 + 72) = v29;
  *(v21 + 80) = v24;
  *(v21 + 56) = v30;
  *(v21 + 64) = v31;
  if (v24 == 1)
  {
    TupleTypeMetadata = *(v22 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_31();
    for (i = 0; v25 != i; ++i)
    {
      *(v33 + 8 * i) = *((v23 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v21 + 104) = TupleTypeMetadata;
  v35 = *(TupleTypeMetadata - 8);
  *(v21 + 112) = v35;
  v36 = *(v35 + 64) + 15;
  *(v21 + 120) = swift_task_alloc();
  *(v21 + 128) = swift_task_alloc();
  *(v21 + 136) = swift_task_alloc();
  v37 = sub_26B2133E0();
  *(v21 + 144) = v37;
  v38 = *(v37 - 8);
  *(v21 + 152) = v38;
  v39 = *(v38 + 64) + 15;
  *(v21 + 160) = swift_task_alloc();
  v40 = swift_task_alloc();
  v41 = *(v27 + 16);
  *(v21 + 16) = *v27;
  *(v21 + 168) = v40;
  OUTLINED_FUNCTION_68(*(v27 + 32), v41);
  v42 = *(a21 + 40);
  OUTLINED_FUNCTION_17_8();
  v58 = v43 + *v43;
  v45 = *(v44 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v21 + 176) = v46;
  *v46 = v47;
  v46[1] = sub_26B1B6668;
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_105();

  return v55(v48, v49, v50, v51, v52, v53, v54, v55, v58, a10, a11, a12);
}

uint64_t sub_26B1B6668()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1B6760()
{
  OUTLINED_FUNCTION_84();
  v40 = v1;
  OUTLINED_FUNCTION_30();
  v2 = *(v0 + 160);
  v3 = *(v0 + 104);
  (*(*(v0 + 152) + 16))(v2, *(v0 + 168), *(v0 + 144));
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 80);
    (*(v16 + 32))(*(v0 + 136), *(v0 + 160), *(v0 + 104));
    *(v0 + 192) = OUTLINED_FUNCTION_31();
    v18 = *(v16 + 16);
    v19 = OUTLINED_FUNCTION_15();
    v21 = v20(v19);
    if (v17)
    {
      v23 = (*(v0 + 88) & 0xFFFFFFFFFFFFFFFELL);
      v24 = 32;
      do
      {
        v25 = *(v0 + 80);
        if (v25 != 1)
        {
          v26 = *(v0 + 128) + *(*(v0 + 104) + v24);
        }

        v27 = *(v0 + 120);
        OUTLINED_FUNCTION_62_0(v21, v22, *v23);
        v29 = *(v28 + 16);
        v30 = OUTLINED_FUNCTION_104();
        v31(v30);
        OUTLINED_FUNCTION_96();
        v24 += 16;
      }

      while (v25);
    }

    OUTLINED_FUNCTION_2_28(*(v0 + 64));
    v33 = *(v32 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v0 + 200) = v34;
    *v34 = v35;
    v34[1] = sub_26B1B69E0;
    v36 = *(v0 + 72);
    v37 = *(v0 + 56);
    OUTLINED_FUNCTION_111();

    __asm { BRAA            X2, X16 }
  }

  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 96);
  v7 = *(v0 + 56);
  v8 = *(*(v0 + 152) + 8);
  v8(*(v0 + 168), v5);
  v8(v4, v5);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v6);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 120);

  OUTLINED_FUNCTION_20();

  return v14();
}

uint64_t sub_26B1B69E0()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[26] = v0;

  if (!v0)
  {
    v10 = v3[15];
    v9 = v3[16];
    v11 = v3[13];
    v12 = v3[14];
    v13 = *(v12 + 8);
    v3[27] = v13;
    v3[28] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    v13(v10, v11);
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26B1B6B1C()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 96);
  v7 = *(v0 + 56);
  (*(v0 + 216))(*(v0 + 136), *(v0 + 104));
  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_26_0();
  v10(v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v6);

  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 120);

  OUTLINED_FUNCTION_20();

  return v16();
}

uint64_t sub_26B1B6BFC()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26B1B6C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_35_3();
  v13 = v12[24];
  v14 = v12[21];
  v15 = v12[18];
  v16 = v12[19];
  v17 = v12[16];
  v18 = v12[15];
  v19 = v12[13];
  v20 = *(v12[14] + 8);
  v20(v12[17], v19);
  v21 = *(v16 + 8);
  v22 = OUTLINED_FUNCTION_26_0();
  v23(v22);
  v20(v17, v19);
  v20(v18, v19);

  v24 = v12[26];
  v26 = v12[20];
  v25 = v12[21];
  v28 = v12[16];
  v27 = v12[17];
  v29 = v12[15];

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_51_2();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t SQLExecution.execute<A, each B>(all:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_76();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  *(v12 + 104) = v15;
  *(v12 + 112) = v21;
  *(v12 + 88) = v22;
  *(v12 + 96) = v17;
  *(v12 + 80) = v23;
  v24 = *(*(v21 - 8) + 64);
  *(v12 + 120) = OUTLINED_FUNCTION_31();
  if (v18 == 1)
  {
    TupleTypeMetadata = *(v16 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_31();
    for (i = 0; v18 != i; ++i)
    {
      *(v26 + 8 * i) = *((v16 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v12 + 128) = TupleTypeMetadata;
  v28 = *(TupleTypeMetadata - 8);
  *(v12 + 136) = v28;
  *(v12 + 144) = *(v28 + 64);
  *(v12 + 152) = swift_task_alloc();
  *(v12 + 160) = swift_task_alloc();
  v29 = swift_task_alloc();
  v30 = *(v20 + 16);
  *(v12 + 16) = *v20;
  *(v12 + 168) = v29;
  OUTLINED_FUNCTION_68(*(v20 + 32), v30);
  v31 = *(v14 + 48);
  OUTLINED_FUNCTION_17_8();
  v46 = v32 + *v32;
  v34 = *(v33 + 4);
  v35 = swift_task_alloc();
  *(v12 + 176) = v35;
  *v35 = v12;
  OUTLINED_FUNCTION_32_5(v35);
  OUTLINED_FUNCTION_105();

  return v42(v36, v37, v38, v39, v40, v41, v42, v43, v46, a10, a11, a12);
}

uint64_t sub_26B1B6FC4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v1;
  *(v2 + 184) = v6;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1B70C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  v14 = *(v10 + 184);
  v15 = *(v10 + 128);
  v16 = *(v10 + 112);
  *(v10 + 56) = sub_26B212EC0();
  sub_26B2128F0();
  v17 = sub_26B212E50();

  *(v10 + 64) = v17;
  OUTLINED_FUNCTION_16_2();
  if (v17 == sub_26B212EF0())
  {
    v18 = *(v10 + 184);

    OUTLINED_FUNCTION_109();

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_57_0();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  v28 = *(v10 + 184);
  v29 = *(v10 + 128);
  OUTLINED_FUNCTION_16_2();
  sub_26B212EE0();
  OUTLINED_FUNCTION_34_0();
  if (v11)
  {
    (*(*(v10 + 136) + 16))(*(v10 + 168), *(v10 + 184) + ((*(*(v10 + 136) + 80) + 32) & ~*(*(v10 + 136) + 80)) + *(*(v10 + 136) + 72) * v17, *(v10 + 128));
LABEL_7:
    OUTLINED_FUNCTION_67_0();
    *(v10 + 200) = swift_task_alloc();
    v30 = *(v12 + 32);
    v31 = OUTLINED_FUNCTION_15();
    v33 = v32(v31);
    if (v13)
    {
      v35 = 32;
      do
      {
        v36 = *(v10 + 96);
        if (v36 != 1)
        {
          v37 = *(v10 + 160) + *(*(v10 + 128) + v35);
        }

        v38 = *(v10 + 152);
        OUTLINED_FUNCTION_62_0(v33, v34, *(*(v10 + 104) & 0xFFFFFFFFFFFFFFFELL));
        v40 = *(v39 + 16);
        v41 = OUTLINED_FUNCTION_104();
        v42(v41);
        OUTLINED_FUNCTION_96();
        v35 += 16;
      }

      while (v36);
    }

    OUTLINED_FUNCTION_2_28(*(v10 + 80));
    a9 = v43;
    v45 = *(v44 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v10 + 208) = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_36_2(v46);
    OUTLINED_FUNCTION_57_0();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  v48 = *(v10 + 184);
  v49 = *(v10 + 144);
  v50 = *(v10 + 128);
  result = sub_26B213730();
  if (v49 == 8)
  {
    v51 = OUTLINED_FUNCTION_70_0(result);
    v52(v51);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1B7334()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[27] = v0;

  if (v0)
  {
    v9 = v3[23];
    v10 = v3[7];
  }

  else
  {
    v12 = v3[19];
    v11 = v3[20];
    v14 = v3 + 16;
    v13 = v3[16];
    v15 = *(v14[1] + 8);
    v15(v11, v13);
    v15(v12, v13);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_26B1B7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  v14 = *(v10 + 184);
  v16 = *(v10 + 120);
  v15 = *(v10 + 128);
  v17 = *(v10 + 112);
  sub_26B212F50();
  sub_26B212F00();
  OUTLINED_FUNCTION_26_0();
  v18 = sub_26B212EF0();
  v19 = *(v10 + 64);
  if (v19 == v18)
  {
    v20 = *(v10 + 200);
    v21 = *(v10 + 184);

    OUTLINED_FUNCTION_109();

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_57_0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  v31 = *(v10 + 200);

  v32 = *(v10 + 184);
  v33 = *(v10 + 128);
  OUTLINED_FUNCTION_16_2();
  sub_26B212EE0();
  OUTLINED_FUNCTION_34_0();
  if (v11)
  {
    (*(*(v10 + 136) + 16))(*(v10 + 168), *(v10 + 184) + ((*(*(v10 + 136) + 80) + 32) & ~*(*(v10 + 136) + 80)) + *(*(v10 + 136) + 72) * v19, *(v10 + 128));
LABEL_7:
    OUTLINED_FUNCTION_67_0();
    *(v10 + 200) = swift_task_alloc();
    v34 = *(v12 + 32);
    v35 = OUTLINED_FUNCTION_15();
    v37 = v36(v35);
    if (v13)
    {
      v39 = 32;
      do
      {
        v40 = *(v10 + 96);
        if (v40 != 1)
        {
          v41 = *(v10 + 160) + *(*(v10 + 128) + v39);
        }

        v42 = *(v10 + 152);
        OUTLINED_FUNCTION_62_0(v37, v38, *(*(v10 + 104) & 0xFFFFFFFFFFFFFFFELL));
        v44 = *(v43 + 16);
        v45 = OUTLINED_FUNCTION_104();
        v46(v45);
        OUTLINED_FUNCTION_96();
        v39 += 16;
      }

      while (v40);
    }

    OUTLINED_FUNCTION_2_28(*(v10 + 80));
    a9 = v47;
    v49 = *(v48 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v10 + 208) = v50;
    *v50 = v51;
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_57_0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  v52 = *(v10 + 144);
  v53 = *(v10 + 128);
  result = sub_26B213730();
  if (v52 == 8)
  {
    v54 = OUTLINED_FUNCTION_70_0(result);
    v55(v54);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1B76E4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[15];

  OUTLINED_FUNCTION_10_0();

  return v6();
}

uint64_t sub_26B1B7768()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v1 = v0[25];
  v2 = v0[19];
  v3 = *(v0[17] + 8);
  (v3)(v0[20], v0[16]);
  v4 = OUTLINED_FUNCTION_26_0();
  v3(v4);

  v5 = v0[27];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[15];

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t SQLExecution.results<A, each B>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_35_3();
  v22 = *(v21 + 16);
  *(v20 + 64) = *v21;
  *(v20 + 152) = v23;
  *(v20 + 160) = a19;
  *(v20 + 168) = a20;
  *(v20 + 136) = v24;
  *(v20 + 144) = v25;
  *(v20 + 120) = v26;
  *(v20 + 128) = v27;
  *(v20 + 104) = v28;
  *(v20 + 112) = v29;
  v30 = *(v21 + 32);
  *(v20 + 80) = v22;
  *(v20 + 96) = v30;
  v31 = *(a19 + 56);
  OUTLINED_FUNCTION_17_8();
  v47 = v32 + *v32;
  v34 = *(v33 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v20 + 176) = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_100(v35);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_91();

  return v44(v37, v38, v39, v40, v41, v42, v43, v44, v47, a10);
}

uint64_t sub_26B1B795C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1B7A54()
{
  v17 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 56);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = *(v0 + 40);
  v16 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v12 = *(v0 + 152);
  OUTLINED_FUNCTION_16_2();
  *(v9 + 32) = swift_allocateMetadataPack();
  *(v9 + 40) = v12;
  *(v9 + 56) = swift_allocateWitnessTablePack();
  *(v9 + 64) = v7;
  *(v9 + 72) = v4;
  sub_26B1C9B7C(&v13, &unk_26B219FB8, v9, v6);

  OUTLINED_FUNCTION_20();

  return v10();
}

uint64_t sub_26B1B7B84()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 184);
  return v2();
}

uint64_t sub_26B1B7BA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a5;
  v7[6] = a7;
  v7[3] = a3;
  v7[4] = a4;
  v7[2] = a1;
  if (a5 == 1)
  {
    TupleTypeMetadata = *(a7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v12 = swift_task_alloc();
    for (i = 0; a5 != i; ++i)
    {
      *(v12 + 8 * i) = *((a7 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v7[7] = TupleTypeMetadata;
  v14 = *(TupleTypeMetadata - 8);
  v7[8] = v14;
  v15 = *(v14 + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v16 = swift_task_alloc();
  v7[11] = v16;
  if (a5)
  {
    v17 = v16;
    v18 = (a7 & 0xFFFFFFFFFFFFFFFELL);
    v19 = (TupleTypeMetadata + 32);
    v20 = a5;
    do
    {
      if (a5 == 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = *v19;
      }

      v23 = *v18++;
      v22 = v23;
      v24 = *a2++;
      (*(*(v22 - 8) + 16))(v17 + v21, v24);
      v19 += 4;
      --v20;
    }

    while (v20);
  }

  return MEMORY[0x2822009F8](sub_26B1B7D78, 0, 0);
}

uint64_t sub_26B1B7D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_30();
  v10 = *(v9 + 88);
  v11 = *(v9 + 64);
  v12 = *(v9 + 72);
  v13 = *(v9 + 56);
  v14 = *(v9 + 40);
  *(v9 + 96) = OUTLINED_FUNCTION_31();
  v15 = *(v11 + 16);
  v16 = OUTLINED_FUNCTION_15();
  v18 = v17(v16);
  if (v14)
  {
    v20 = (*(v9 + 48) & 0xFFFFFFFFFFFFFFFELL);
    v21 = 32;
    do
    {
      v22 = *(v9 + 40);
      if (v22 != 1)
      {
        v23 = *(v9 + 80) + *(*(v9 + 56) + v21);
      }

      v24 = *(v9 + 72);
      OUTLINED_FUNCTION_62_0(v18, v19, *v20);
      v26 = *(v25 + 16);
      v27 = OUTLINED_FUNCTION_104();
      v28(v27);
      OUTLINED_FUNCTION_96();
      v21 += 16;
    }

    while (v22);
  }

  OUTLINED_FUNCTION_2_28(*(v9 + 24));
  v45 = v29;
  v31 = *(v30 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v9 + 104) = v32;
  *v32 = v33;
  v32[1] = sub_26B1B7EEC;
  v34 = *(v9 + 32);
  v35 = *(v9 + 16);
  OUTLINED_FUNCTION_111();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45);
}

uint64_t sub_26B1B7EEC()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[14] = v0;

  if (!v0)
  {
    v10 = v3[9];
    v9 = v3[10];
    v11 = v3[7];
    v12 = v3[8];
    v13 = *(v12 + 8);
    v3[15] = v13;
    v3[16] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    v13(v10, v11);
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26B1B8028()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 56));

  OUTLINED_FUNCTION_20();

  return v5();
}

uint64_t sub_26B1B80B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  v11 = v10[11];
  v12 = v10[12];
  v13 = v10[9];
  v14 = v10[7];
  v15 = *(v10[8] + 8);
  v15(v10[10], v14);
  v15(v13, v14);
  v15(v11, v14);

  OUTLINED_FUNCTION_10_0();
  v16 = v10[14];
  OUTLINED_FUNCTION_57_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t SQLExecution.execute<A>(once:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_35_3();
  v19 = *(OUTLINED_FUNCTION_50_2(v13, v14, v15, v16, v17, v18) + 40);
  OUTLINED_FUNCTION_19_8();
  v35 = v20 + *v20;
  v22 = *(v21 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v12 + 56) = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_55_0(v23);
  OUTLINED_FUNCTION_78();

  return v32(v25, v26, v27, v28, v29, v30, v31, v32, a9, v35, a11, a12);
}

uint64_t sub_26B1B8274()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v12();
  }
}

uint64_t sub_26B1B8388()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 64);
  return v2();
}

uint64_t SQLExecution.execute<A>(all:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_83();
  v14 = *(v13 + 16);
  *(v12 + 16) = *v13;
  OUTLINED_FUNCTION_68(*(v13 + 32), v14);
  v16 = *(v15 + 48);
  OUTLINED_FUNCTION_17_8();
  v31 = v17 + *v17;
  v19 = *(v18 + 4);
  v20 = swift_task_alloc();
  *(v12 + 56) = v20;
  *v20 = v12;
  OUTLINED_FUNCTION_32_5(v20);
  OUTLINED_FUNCTION_91();

  return v27(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, v31, a12);
}

uint64_t sub_26B1B84D4()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v10 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_9_14();

    return v14(v3);
  }
}

uint64_t SQLExecution.results<A>(for:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_35_3();
  v19 = *(OUTLINED_FUNCTION_50_2(v13, v14, v15, v16, v17, v18) + 56);
  OUTLINED_FUNCTION_19_8();
  v35 = v20 + *v20;
  v22 = *(v21 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v12 + 56) = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_55_0(v23);
  OUTLINED_FUNCTION_78();

  return v32(v25, v26, v27, v28, v29, v30, v31, v32, a9, v35, a11, a12);
}

uint64_t sub_26B1B86E4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v12();
  }
}

uint64_t SQLDatabase.Transaction.execute(_:)(uint64_t a1)
{
  *(v2 + 56) = v1;
  v3 = *(a1 + 16);
  *(v2 + 64) = *a1;
  *(v2 + 80) = v3;
  *(v2 + 49) = *(a1 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B8824, v1);
}

uint64_t sub_26B1B8824()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 49);
  *(v0 + 96) = *(*(v0 + 56) + 128);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_68(v1, v2);

  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_32_5(v3);

  return sub_26B1B3E68();
}

uint64_t sub_26B1B88E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *(v5 + 96);
  v8 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v3 + 112) = v0;

  if (v0)
  {
    v10 = *(v3 + 56);

    return MEMORY[0x2822009F8](sub_26B1B8A20, v10, 0);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v11();
  }
}

uint64_t sub_26B1B8A20()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 112);
  return v2();
}

uint64_t SQLDatabase.Transaction.results(dynamicValues:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a2 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B8A70, v2);
}

uint64_t sub_26B1B8A70()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  *v6 = *(*(v0 + 24) + 128);
  *(v6 + 8) = v5;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;

  v7 = OUTLINED_FUNCTION_4_23();
  sub_26B1A8558(v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26B1B8B24()
{
  OUTLINED_FUNCTION_76();
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(*(v0 + 48) + 128);
  OUTLINED_FUNCTION_89(*(v0 + 16), v17, v18, v19, v20, v21, v22);

  v10 = OUTLINED_FUNCTION_4_23();
  sub_26B1A8558(v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_20();

  return v15();
}

uint64_t sub_26B1B8BBC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B178E9C;

  return SQLDatabase.Transaction.execute(_:)(a1);
}

uint64_t sub_26B1B8C54(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_26B1BD36C;

  return sub_26B1B41D4(v2 + 16);
}

uint64_t sub_26B1B8D10(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_26B1BD36C;

  return sub_26B1B4CA0(v2 + 16);
}

uint64_t sub_26B1B8DCC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B178E9C;

  return SQLDatabase.Transaction.results(dynamicValues:)(a1, a2);
}

uint64_t sub_26B1B8E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26B178E9C;

  return SQLDatabase.Transaction.results<each A>(for:)(a1, a2, a3, a4, a5);
}

uint64_t SQLDatabase.execute(_:)(uint64_t a1)
{
  *(v2 + 56) = v1;
  v3 = *(a1 + 16);
  *(v2 + 64) = *a1;
  *(v2 + 80) = v3;
  *(v2 + 49) = *(a1 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B8F70, v1);
}

void sub_26B1B8F70()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  *(v0 + 96) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_12();
    v2 = *(v0 + 49);
    v3 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    OUTLINED_FUNCTION_68(v2, v3);

    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_32_5(v4);

    sub_26B1B3E68();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B1B9040()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *(v5 + 96);
  v8 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v3 + 112) = v0;

  if (v0)
  {
    v10 = *(v3 + 56);

    return MEMORY[0x2822009F8](sub_26B1BD354, v10, 0);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v11();
  }
}

void sub_26B1B91AC()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  if (v1)
  {
    OUTLINED_FUNCTION_76();
    v18 = v0;
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v16[0] = *(v0 + 56);
    v16[1] = v5;
    v16[2] = v4;
    v16[3] = v3;
    v17 = v2;
    sub_26B1C9BA4(v1, v16, v9);

    v10 = OUTLINED_FUNCTION_39_2();
    sub_26B1A8558(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_20();

    v15();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B1B926C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = *v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_56_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_32_5(v5);

  return SQLDatabase.execute(_:)(v2);
}

uint64_t sub_26B1B92F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_26B1BD36C;

  return sub_26B1B4584(v2 + 16);
}

uint64_t sub_26B1B93B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_26B1BD36C;

  return sub_26B1B4FD0(v2 + 16);
}

uint64_t sub_26B1B9470(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B178E9C;

  return SQLDatabase.results(dynamicValues:)(a1, a2);
}

uint64_t sub_26B1B951C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26B178E9C;

  return SQLDatabase.results<each A>(for:)(a1, a2, a3, a4, a5);
}

uint64_t sub_26B1B95E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return MEMORY[0x2822009F8](sub_26B1B9604, a2, 0);
}

const char *sub_26B1B9604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_35_3();
  a18 = v20;
  do
  {
    do
    {
      v23 = *(v20 + 104);
      v24 = sub_26B1CFF78();
      sub_26B1E26EC(v24, &a10);
    }

    while (BYTE4(a10) == 1);
  }

  while (BYTE4(a10) == 14 && a10 == 16);
  v26 = *(v20 + 96);
  swift_beginAccess();
  v27 = sqlite3_extended_errcode(*(v26 + 136));
  result = sqlite3_errstr(v24);
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v29 = sub_26B212C20();
  v31 = v30;
  result = sqlite3_errmsg(*(v26 + 136));
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v32 = sub_26B212C20();
  v34 = v33;
  sub_26B1AFA88();
  v35 = swift_allocError();
  v37 = v36;
  *v36 = v27;
  sub_26B1E26EC(v27, &a10);
  v38 = BYTE4(a10);
  v37[1] = a10;
  *(v37 + 8) = v38;
  *(v37 + 2) = v29;
  *(v37 + 3) = v31;
  *(v37 + 4) = v32;
  *(v37 + 5) = v34;
  swift_willThrow();
  *(v20 + 88) = v35;
  v39 = v35;
  sub_26B162128();
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v40 = *(v20 + 20);
  v41 = *(v20 + 24);
  v42 = *(v20 + 40);
  v43 = *(v20 + 56);

  LODWORD(a9) = v40;
  BYTE4(a9) = v41;
  LODWORD(a10) = 17;
  BYTE4(a10) = 14;
  if (static SQLError.Code.== infix(_:_:)(&a9, &a10))
  {

    OUTLINED_FUNCTION_20();
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_91();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_26B1B97E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a2 + 32);
  return OUTLINED_FUNCTION_2_13(sub_26B1B9810, v2);
}

uint64_t sub_26B1B9810()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  *v6 = *(v0 + 24);
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v1;
  sub_26B1A8558(v4, v5, v2, v3, v1);
  OUTLINED_FUNCTION_10_0();
  v9 = v7;

  return v9();
}

uint64_t sub_26B1B98C4()
{
  OUTLINED_FUNCTION_76();
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  OUTLINED_FUNCTION_89(*(v0 + 16), v17, v18, v19, v20, v21, v22);

  v10 = OUTLINED_FUNCTION_4_23();
  sub_26B1A8558(v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_20();

  return v15();
}

uint64_t sub_26B1B9958()
{
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_56_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_32_5(v3);

  return sub_26B1B3E68();
}

uint64_t sub_26B1B99E4(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_26B1BD36C;

  return sub_26B1B462C(v2 + 16);
}

uint64_t sub_26B1B9AA0(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_26B1B9B5C;

  return sub_26B1B5078(v2 + 16);
}

uint64_t sub_26B1B9B5C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;

  OUTLINED_FUNCTION_9_14();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26B1B9C48(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B178E9C;

  return sub_26B1B97E4(a1, a2);
}

uint64_t sub_26B1B9CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_task_alloc();
  *(v14 + 16) = v23;
  *v23 = v14;
  v23[1] = sub_26B1760A8;

  return SQLExecution.execute<A>(once:)(a1, a2, a3, a6, a4, a7, a5, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26B1B9DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  *v19 = v12;
  v19[1] = sub_26B1B9EA8;

  return SQLExecution.execute<A>(all:)(a1, a2, a5, a3, a6, a4, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_26B1B9EA8()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;

  OUTLINED_FUNCTION_9_14();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26B1B9F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26B178E9C;

  return sub_26B1B9898(a1, a2, a3, a4, a5);
}

uint64_t sub_26B1BA060@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
  *(a1 + 48) = sub_26B1BC924;
  *(a1 + 56) = 0;
  return sub_26B1B384C(v1, &v4);
}

uint64_t sub_26B1BA0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_1_27();
  if (v11)
  {
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_26_9(dword_26B21B710);

      v12 = swift_task_alloc();
      v13 = OUTLINED_FUNCTION_80(v12);
      *v13 = v14;
      OUTLINED_FUNCTION_8_20(v13);
      OUTLINED_FUNCTION_57_0();

      return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
      OUTLINED_FUNCTION_57_0();

      return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_14(v10);
    OUTLINED_FUNCTION_25_6();
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_81(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_32_5(v25);
    OUTLINED_FUNCTION_57_0();

    return sub_26B1D0334();
  }
}

uint64_t sub_26B1BA224()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  OUTLINED_FUNCTION_94(v7);
  if (!v0)
  {
    OUTLINED_FUNCTION_46_2();
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1BA320()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 184);
  v8 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v4 + 192) = v0;

  if (!v0)
  {
    *(v4 + 224) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1BA4C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15_7();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 200);
  v8 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v4 + 208) = v0;

  if (!v0)
  {
    *(v4 + 216) = v1;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1BA5CC()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_22_9();
  sub_26B1A85A8(v1, v2, v3, v0, v4);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_25_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_26B1BA638()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77();

  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_9_14();

  return v2();
}

uint64_t sub_26B1BA69C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77();

  OUTLINED_FUNCTION_60_0();

  return v0();
}

uint64_t sub_26B1BA6F8()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[28];
  OUTLINED_FUNCTION_9_14();

  return v4();
}

uint64_t sub_26B1BA760()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_41_2();
  sub_26B162128();
  OUTLINED_FUNCTION_9();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_44_2(), v1 = , (OUTLINED_FUNCTION_10_13(v1, v2, v3, v4, v5, v6, v7, v8, v15, *v16, v16[4], *v17, v17[4])))
  {
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_42_1();
    sub_26B2128F0();
    v9 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, 0);
  }

  else
  {
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);

    OUTLINED_FUNCTION_43_2();

    return v13();
  }
}

uint64_t sub_26B1BA854()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_88();
  *(v1 + 248) = v0;
  if (!v0)
  {
    v2 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B1BA8D8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_110();

  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_9_14();

  return v0(0);
}

uint64_t sub_26B1BA944()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 240);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  v4 = *(v0 + 248);
  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B1BA9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_1_27();
  if (v11)
  {
    if (v11 == 1)
    {
      OUTLINED_FUNCTION_26_9(dword_26B21B6E8);

      v12 = swift_task_alloc();
      v13 = OUTLINED_FUNCTION_80(v12);
      *v13 = v14;
      OUTLINED_FUNCTION_8_20(v13);
      OUTLINED_FUNCTION_57_0();

      return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
    }

    else
    {
      OUTLINED_FUNCTION_9_14();
      OUTLINED_FUNCTION_57_0();

      return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_14(v10);
    OUTLINED_FUNCTION_25_6();
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_81(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_32_5(v25);
    OUTLINED_FUNCTION_57_0();

    return sub_26B1D0334();
  }
}

uint64_t sub_26B1BAB24()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  OUTLINED_FUNCTION_94(v7);
  if (!v0)
  {
    OUTLINED_FUNCTION_46_2();
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1BAC20()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v5 + 192) = v0;

  if (!v0)
  {
    *(v5 + 99) = v3;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B1BADCC()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 98) = v3;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B1BAED4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77();

  OUTLINED_FUNCTION_9_14();
  v2 = *(v0 + 98);

  return v1(v2);
}

uint64_t sub_26B1BAF38()
{
  OUTLINED_FUNCTION_25();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_9_14();
  v4 = *(v0 + 99);

  return v3(v4);
}

uint64_t sub_26B1BAFA0()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_41_2();
  sub_26B162128();
  OUTLINED_FUNCTION_9();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_44_2(), v2 = , (OUTLINED_FUNCTION_10_13(v2, v3, v4, v5, v6, v7, v8, v9, v17, *v18, v18[4], *v19, v19[4])))
  {
    OUTLINED_FUNCTION_93();
    *(v1 + 216) = *(v0 + 16);
    *(v1 + 224) = *(v0 + 24);
    v10 = *(v1 + 120);
    sub_26B2128F0();
    v11 = OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v11, v12, 0);
  }

  else
  {
    v14 = *(v1 + 120);
    v13 = *(v1 + 128);

    OUTLINED_FUNCTION_43_2();

    return v15();
  }
}