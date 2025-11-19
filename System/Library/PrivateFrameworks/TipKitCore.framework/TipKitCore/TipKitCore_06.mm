uint64_t sub_1975D7914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D773C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D793C(uint64_t a1)
{
  v2 = sub_1975D7CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D7978(uint64_t a1)
{
  v2 = sub_1975D7CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CoreTip.ConstellationContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CoreTip.ConstellationContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351D8, &unk_19761F7A0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D7CEC();
  sub_197617260();
  *&v16 = *(v3 + OBJC_IVAR___ConstellationContent_title);
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34898, &qword_19761A880);
  sub_1975D823C(&qword_1ED816198, sub_1975D7D40);
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_10_13();
  if (!v2)
  {
    *&v16 = *(v3 + OBJC_IVAR___ConstellationContent_message);
    v18 = 1;
    OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_10_13();
    *&v16 = *(v3 + OBJC_IVAR___ConstellationContent_actions);
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351E0, &qword_19761F7B0);
    sub_1975D7D94(&qword_1ED816190, &qword_1ED8161B8);
    OUTLINED_FUNCTION_6_11();
    sub_197616E20();
    v14 = *(v3 + OBJC_IVAR___ConstellationContent_asset + 16);
    v16 = *(v3 + OBJC_IVAR___ConstellationContent_asset);
    v17 = v14;
    v18 = 3;
    sub_1975D7E1C();

    OUTLINED_FUNCTION_6_11();
    sub_197616E20();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1975D7CEC()
{
  result = qword_1ED816420;
  if (!qword_1ED816420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816420);
  }

  return result;
}

unint64_t sub_1975D7D40()
{
  result = qword_1ED8161C8;
  if (!qword_1ED8161C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161C8);
  }

  return result;
}

uint64_t sub_1975D7D94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF351E0, &qword_19761F7B0);
    sub_1975D82B4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975D7E1C()
{
  result = qword_1ED8161C0;
  if (!qword_1ED8161C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161C0);
  }

  return result;
}

id CoreTip.ConstellationContent.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351E8, &qword_19761F7B8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D7CEC();
  sub_197617240();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34898, &qword_19761A880);
    sub_1975D823C(&qword_1ED8162B8, sub_1975B2E08);
    OUTLINED_FUNCTION_7_13();
    *&v1[OBJC_IVAR___ConstellationContent_title] = v17;
    OUTLINED_FUNCTION_7_13();
    *&v1[OBJC_IVAR___ConstellationContent_message] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351E0, &qword_19761F7B0);
    sub_1975D7D94(&qword_1ED8162B0, &qword_1ED816440);
    sub_197616D80();
    *&v1[OBJC_IVAR___ConstellationContent_actions] = v17;
    v19 = 3;
    sub_1975D82F8();
    sub_197616D80();
    v11 = v18;
    v12 = &v1[OBJC_IVAR___ConstellationContent_asset];
    *v12 = v17;
    *(v12 + 2) = v11;
    v16.receiver = v1;
    v16.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    v13 = OUTLINED_FUNCTION_4_25();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_1975D823C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34898, &qword_19761A880);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1975D82B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoreTip.ConstellationAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975D82F8()
{
  result = qword_1ED816448;
  if (!qword_1ED816448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816448);
  }

  return result;
}

id sub_1975D834C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CoreTip.ConstellationContent.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CoreTip.ConstellationContent.Attributes.glyph.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_21();
}

uint64_t CoreTip.ConstellationContent.Attributes.alt.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_21();
}

uint64_t CoreTip.ConstellationContent.Attributes.stringId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_21();
}

uint64_t CoreTip.ConstellationContent.Attributes.providerId.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t CoreTip.ConstellationContent.Attributes.personalizationId.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t CoreTip.ConstellationContent.Attributes.href.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_21();
}

uint64_t CoreTip.ConstellationContent.Attributes.color.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_21();
}

uint64_t sub_1975D8490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6870796C67 && a2 == 0xE500000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7629921 && a2 == 0xE300000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449676E69727473 && a2 == 0xE800000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000197624D30 == a2;
          if (v9 || (sub_197616EF0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1717924456 && a2 == 0xE400000000000000;
            if (v10 || (sub_197616EF0() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_197616EF0();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1975D86C8(char a1)
{
  result = 0x6870796C67;
  switch(a1)
  {
    case 1:
      result = 7629921;
      break;
    case 2:
      result = 0x6449676E69727473;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1717924456;
      break;
    case 6:
      result = 0x726F6C6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975D8788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D8490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D87B0(uint64_t a1)
{
  v2 = sub_1975D8A78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D87EC(uint64_t a1)
{
  v2 = sub_1975D8A78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTip.ConstellationContent.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351F0, &qword_19761F7C0);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v27 = v1[3];
  v28 = v13;
  v14 = v1[4];
  v25 = v1[5];
  v26 = v14;
  v24 = v1[6];
  LODWORD(v14) = *(v1 + 56);
  v15 = v1[8];
  v22 = *(v1 + 72);
  v23 = v14;
  v16 = v1[10];
  v21[3] = v1[11];
  v21[4] = v15;
  v17 = v1[13];
  v21[0] = v1[12];
  v21[1] = v17;
  v21[2] = v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D8A78();
  sub_197617260();
  v36 = 0;
  v19 = v29;
  sub_197616DF0();
  if (!v19)
  {
    v35 = 1;
    OUTLINED_FUNCTION_2_21();
    sub_197616DF0();
    v34 = 2;
    OUTLINED_FUNCTION_2_21();
    sub_197616DF0();
    v33 = 3;
    OUTLINED_FUNCTION_2_21();
    sub_197616E10();
    v32 = 4;
    OUTLINED_FUNCTION_2_21();
    sub_197616E10();
    v31 = 5;
    OUTLINED_FUNCTION_2_21();
    sub_197616DF0();
    v30 = 6;
    OUTLINED_FUNCTION_2_21();
    sub_197616DF0();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1975D8A78()
{
  result = qword_1ED815FF0;
  if (!qword_1ED815FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815FF0);
  }

  return result;
}

uint64_t CoreTip.ConstellationContent.Attributes.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF351F8, &qword_19761F7C8);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975D8A78();
  sub_197617240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v41[0]) = 0;
  v14 = sub_197616D50();
  v16 = v15;
  OUTLINED_FUNCTION_0_31(1);
  v36 = sub_197616D50();
  v39 = v17;
  OUTLINED_FUNCTION_0_31(2);
  v35 = sub_197616D50();
  v38 = v18;
  OUTLINED_FUNCTION_0_31(3);
  v34 = sub_197616D70();
  v50 = v19 & 1;
  OUTLINED_FUNCTION_0_31(4);
  v33 = sub_197616D70();
  v49 = v20 & 1;
  OUTLINED_FUNCTION_0_31(5);
  v32 = sub_197616D50();
  v37 = v21;
  v51 = 6;
  v22 = sub_197616D50();
  v23 = v12;
  v25 = v24;
  (*(v7 + 8))(v23, v5);
  __src[0] = v14;
  __src[1] = v16;
  __src[2] = v36;
  __src[3] = v39;
  __src[4] = v35;
  __src[5] = v38;
  __src[6] = v34;
  v31 = v50;
  LOBYTE(__src[7]) = v50;
  __src[8] = v33;
  v30 = v49;
  LOBYTE(__src[9]) = v49;
  v26 = v32;
  v27 = v37;
  __src[10] = v32;
  __src[11] = v37;
  __src[12] = v22;
  __src[13] = v25;
  memcpy(a2, __src, 0x70uLL);
  sub_1975D8F34(__src, v41);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v41[0] = v14;
  v41[1] = v16;
  v41[2] = v36;
  v41[3] = v39;
  v41[4] = v35;
  v41[5] = v38;
  v41[6] = v34;
  v42 = v31;
  v43 = v33;
  v44 = v30;
  v45 = v26;
  v46 = v27;
  v47 = v22;
  v48 = v25;
  return sub_1975D8F6C(v41);
}

uint64_t CoreTip.ConstellationContent.Color.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_197616D20();

  v4 = 15;
  if (v2 < 0xF)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t CoreTip.ConstellationContent.Color.rawValue.getter()
{
  result = 0x6F43746E65636361;
  switch(*v0)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0x6C426D6574737973;
      break;
    case 3:
    case 6:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x79436D6574737973;
      break;
    case 5:
      result = 0x72476D6574737973;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x694D6D6574737973;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x69506D6574737973;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x65526D6574737973;
      break;
    case 0xD:
      result = 0x65546D6574737973;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1975D9230()
{
  result = qword_1EAF35200;
  if (!qword_1EAF35200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35200);
  }

  return result;
}

uint64_t sub_1975D929C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CoreTip.ConstellationContent.Color.init(rawValue:)(a1);
}

unint64_t sub_1975D92A8@<X0>(unint64_t *a1@<X8>)
{
  result = CoreTip.ConstellationContent.Color.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975D9318(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1975D936C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s20ConstellationContentC5ColorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20ConstellationContentC5ColorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20ConstellationContentC10AttributesV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20ConstellationContentC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975D970C()
{
  result = qword_1EAF35208;
  if (!qword_1EAF35208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35208);
  }

  return result;
}

unint64_t sub_1975D9764()
{
  result = qword_1EAF35210;
  if (!qword_1EAF35210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35210);
  }

  return result;
}

unint64_t sub_1975D97BC()
{
  result = qword_1ED815FE0;
  if (!qword_1ED815FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815FE0);
  }

  return result;
}

unint64_t sub_1975D9814()
{
  result = qword_1ED815FE8;
  if (!qword_1ED815FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815FE8);
  }

  return result;
}

unint64_t sub_1975D986C()
{
  result = qword_1ED816410;
  if (!qword_1ED816410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816410);
  }

  return result;
}

unint64_t sub_1975D98C4()
{
  result = qword_1ED816418;
  if (!qword_1ED816418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816418);
  }

  return result;
}

uint64_t CoreTip.ConstellationText.text.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CoreTip.ConstellationText.attrs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x70uLL);
  memcpy(a1, (v1 + 24), 0x70uLL);
  return sub_1975D99A0(__dst, v4);
}

uint64_t sub_1975D99A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35148, &unk_19761F320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975D9A18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7372747461 && a2 == 0xE500000000000000;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736B72616DLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_197616EF0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1975D9B70(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x7372747461;
      break;
    case 3:
      result = 0x736B72616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975D9BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975D9A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975D9C08(uint64_t a1)
{
  v2 = sub_1975D9EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975D9C44(uint64_t a1)
{
  v2 = sub_1975D9EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CoreTip.ConstellationText.encode(to:)()
{
  OUTLINED_FUNCTION_20();
  v18 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35218, &qword_19761FC08);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = *v0;
  v13 = *(v0 + 1);
  v17[1] = *(v0 + 2);
  v17[2] = v13;
  memcpy(v22, v0 + 24, 0x70uLL);
  v17[0] = *(v0 + 17);
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1975D9EF0();
  sub_197617260();
  v21[0] = v12;
  v20[0] = 0;
  sub_1975D9F44();
  v15 = v18;
  sub_197616E60();
  if (!v15)
  {
    v16 = v17[0];
    v21[0] = 1;
    OUTLINED_FUNCTION_1_28();
    sub_197616DF0();
    OUTLINED_FUNCTION_6_12(v21);
    sub_1975D99A0(v22, v20);
    sub_1975D61A0();
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
    memcpy(v20, v21, sizeof(v20));
    sub_1975D61F4(v20);
    v19 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35220, &qword_19761FC10);
    sub_1975DA328(&qword_1ED8161A0, sub_1975D9F98);
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_19_0();
}

unint64_t sub_1975D9EF0()
{
  result = qword_1ED816480;
  if (!qword_1ED816480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816480);
  }

  return result;
}

unint64_t sub_1975D9F44()
{
  result = qword_1ED8161D8;
  if (!qword_1ED8161D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161D8);
  }

  return result;
}

unint64_t sub_1975D9F98()
{
  result = qword_1ED8161D0;
  if (!qword_1ED8161D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8161D0);
  }

  return result;
}

void CoreTip.ConstellationText.init(from:)()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35228, &qword_19761FC18);
  OUTLINED_FUNCTION_0(v16);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_1975D9EF0();
  sub_197617240();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    sub_1975B39D0();
    OUTLINED_FUNCTION_8_15();
    sub_197616DC0();
    v9 = v18[0];
    v18[0] = 1;
    OUTLINED_FUNCTION_8_15();
    v15 = sub_197616D50();
    v11 = v10;
    sub_1975B1390();
    OUTLINED_FUNCTION_8_15();
    sub_197616D80();
    memcpy(v23, v22, sizeof(v23));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35220, &qword_19761FC10);
    sub_1975DA328(&qword_1ED8162C0, sub_1975DA3A0);
    OUTLINED_FUNCTION_8_15();
    sub_197616D80();
    v12 = OUTLINED_FUNCTION_1_30();
    v13(v12);
    v14 = v21[15];
    LOBYTE(v17[0]) = v9;
    v17[1] = v15;
    v17[2] = v11;
    OUTLINED_FUNCTION_6_12(&v17[3]);
    v17[17] = v14;
    memcpy(v4, v17, 0x90uLL);
    sub_1975B929C(v17, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    v18[0] = v9;
    v19 = v15;
    v20 = v11;
    OUTLINED_FUNCTION_6_12(v21);
    v21[14] = v14;
    sub_1975B92F8(v18);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975DA328(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35220, &qword_19761FC10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1975DA3A0()
{
  result = qword_1ED816458;
  if (!qword_1ED816458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816458);
  }

  return result;
}

uint64_t CoreTip.ConstellationText.ContentType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_197616D20();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t CoreTip.ConstellationText.ContentType.rawValue.getter()
{
  result = 112;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6C6F626D7973;
      break;
    case 3:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975DA510@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CoreTip.ConstellationText.ContentType.init(rawValue:)(a1);
}

unint64_t sub_1975DA51C@<X0>(unint64_t *a1@<X8>)
{
  result = CoreTip.ConstellationText.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CoreTip.ConstellationText.Mark.attrs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x70uLL);
  memcpy(a1, (v1 + 8), 0x70uLL);
  return sub_1975D99A0(__dst, v4);
}

uint64_t CoreTip.ConstellationText.Mark.MarkType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_197616D20();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t CoreTip.ConstellationText.Mark.MarkType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6F43746E65636361;
  }

  else
  {
    result = 97;
  }

  *v0;
  return result;
}

uint64_t sub_1975DA70C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CoreTip.ConstellationText.Mark.MarkType.init(rawValue:)(a1);
}

uint64_t sub_1975DA718@<X0>(uint64_t *a1@<X8>)
{
  result = CoreTip.ConstellationText.Mark.MarkType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1975DA7F0(uint64_t a1)
{
  v2 = sub_1975DAA34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975DA82C(uint64_t a1)
{
  v2 = sub_1975DAA34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CoreTip.ConstellationText.Mark.encode(to:)()
{
  OUTLINED_FUNCTION_20();
  v15 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35230, &qword_19761FC20);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10 - 8];
  v12 = *v0;
  memcpy(v18, v0 + 8, 0x70uLL);
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1975DAA34();
  sub_197617260();
  v17[0] = v12;
  v16[0] = 0;
  sub_1975DAA88();
  v14 = v15;
  sub_197616E20();
  if (!v14)
  {
    OUTLINED_FUNCTION_6_12(v17);
    sub_1975D99A0(v18, v16);
    sub_1975D61A0();
    OUTLINED_FUNCTION_1_28();
    sub_197616E20();
    memcpy(v16, v17, sizeof(v16));
    sub_1975D61F4(v16);
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_19_0();
}

unint64_t sub_1975DAA34()
{
  result = qword_1ED8159A8;
  if (!qword_1ED8159A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8159A8);
  }

  return result;
}

unint64_t sub_1975DAA88()
{
  result = qword_1ED8156B0;
  if (!qword_1ED8156B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8156B0);
  }

  return result;
}

void CoreTip.ConstellationText.Mark.init(from:)()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35238, &qword_19761FC28);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_1975DAA34();
  sub_197617240();
  if (!v0)
  {
    sub_1975DAC84();
    OUTLINED_FUNCTION_3_25();
    v14 = v15[0];
    sub_1975B1390();
    OUTLINED_FUNCTION_3_25();
    (*(v7 + 8))(v12, v5);
    memcpy(&v16[7], v15, 0x70uLL);
    *v4 = v14;
    memcpy(v4 + 1, v16, 0x77uLL);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_19_0();
}

unint64_t sub_1975DAC84()
{
  result = qword_1ED8159B0;
  if (!qword_1ED8159B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8159B0);
  }

  return result;
}

unint64_t sub_1975DACDC()
{
  result = qword_1EAF35240;
  if (!qword_1EAF35240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35240);
  }

  return result;
}

unint64_t sub_1975DAD34()
{
  result = qword_1EAF35248;
  if (!qword_1EAF35248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35248);
  }

  return result;
}

uint64_t sub_1975DADB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 144))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1975DAE0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1975DAEA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 120))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1975DAF04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1975DAF88(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_32(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1975DB060(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_32(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975DB13C()
{
  result = qword_1EAF35250;
  if (!qword_1EAF35250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35250);
  }

  return result;
}

unint64_t sub_1975DB194()
{
  result = qword_1EAF35258;
  if (!qword_1EAF35258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35258);
  }

  return result;
}

unint64_t sub_1975DB1EC()
{
  result = qword_1ED815998;
  if (!qword_1ED815998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815998);
  }

  return result;
}

unint64_t sub_1975DB244()
{
  result = qword_1ED8159A0;
  if (!qword_1ED8159A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8159A0);
  }

  return result;
}

unint64_t sub_1975DB29C()
{
  result = qword_1ED816470;
  if (!qword_1ED816470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816470);
  }

  return result;
}

unint64_t sub_1975DB2F4()
{
  result = qword_1ED816478;
  if (!qword_1ED816478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816478);
  }

  return result;
}

unint64_t sub_1975DB348()
{
  result = qword_1ED8159B8[0];
  if (!qword_1ED8159B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8159B8);
  }

  return result;
}

unint64_t sub_1975DB39C()
{
  result = qword_1ED816468;
  if (!qword_1ED816468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816468);
  }

  return result;
}

uint64_t sub_1975DB3F8()
{
  OUTLINED_FUNCTION_24_6();
  v0 = type metadata accessor for DeviceProfile.ProfileContent();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_26();
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_22_7();
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_0_32();
  sub_19758CA08();
  return v5;
}

uint64_t sub_1975DB484()
{
  OUTLINED_FUNCTION_24_6();
  v0 = type metadata accessor for DeviceProfile.ProfileContent();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_26();
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_22_7();
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_0_32();
  sub_19758CA08();
  return v5;
}

uint64_t sub_1975DB510()
{
  v1 = type metadata accessor for DeviceProfile.ProfileContent();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  swift_beginAccess();
  sub_19758C664(v0 + v5, v4);
  swift_getAtKeyPath();
  sub_19758CA08();
  return v7[4];
}

uint64_t sub_1975DB5E4()
{
  v1 = type metadata accessor for DeviceProfile.ProfileContent();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  swift_beginAccess();
  sub_19758C664(v0 + v7, v6);
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_0_32();
  return sub_19758CA08();
}

uint64_t sub_1975DB6A8(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    v13 = 1;
    return v13 & 1;
  }

  v6 = *(v2 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);

  if (pthread_main_np() != 1 || !_CFRunLoopCurrentIsMain())
  {
    sub_197615CF0();
    v16 = *(v2 + 48);
    v15 = *(v2 + 56);

    sub_19755D67C();
    v13 = sub_19757FEE4(a1);

    if (v3)
    {
      return result;
    }

    return v13 & 1;
  }

  v7 = sub_197616590();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32_4();
  *(v8 - 16) = a2;
  OUTLINED_FUNCTION_21_7();
  v13 = sub_1975DE8C4(v9, v10, v11, v12);

  if (!v3)
  {
    return v13 & 1;
  }

  return result;
}

uint64_t sub_1975DB7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v10 = OUTLINED_FUNCTION_5_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v28 - v13;
  sub_1975DEE5C(a3, v28 - v13);
  v15 = sub_1976165B0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_19755C820(v14, &qword_1EAF35140, &qword_197621F80);
  }

  else
  {
    sub_1976165A0();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_197616560();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_197616230() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_19755C820(a3, &qword_1EAF35140, &qword_197621F80);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19755C820(a3, &qword_1EAF35140, &qword_197621F80);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1975DBACC()
{
  v1 = v0;
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  memcpy(__dst, &qword_1ED817518, 0x6AuLL);
  if ((__dst[13] & 1) == 0)
  {
    sub_19757FBA0(__dst, v9);
    sub_1976172D0();
    v2 = sub_1976172C0();
    sub_19757FB70(__dst);
    if (v2)
    {
      return 2;
    }
  }

  if (byte_1ED817568)
  {
    return 2;
  }

  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v3);
  (*(v4 + 72))(v9, v3, v4);
  sub_19756D1E8(v9);
  if (v10 == 1)
  {
    return 2;
  }

  v6 = sub_19757F670();
  if ((v7 & 1) != 0 || v6)
  {
    return 2;
  }

  if (byte_1ED817580 != 1)
  {
    goto LABEL_14;
  }

  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  if (byte_1ED8172A5)
  {
LABEL_14:
    v8 = sub_1975DBF4C();
    if (v8 == 2 || (v8 & 1) != 0)
    {
      return 1;
    }

    return 2;
  }

  return sub_1975DBC84(v1[2], v1[3]);
}

uint64_t sub_1975DBC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = _s12DisplayEventVMa();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (!qword_1ED81D1D0)
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_1975DB5E4();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
LABEL_12:
    sub_19755C820(v7, &qword_1EAF35260, &qword_1976202C8);
    return 2;
  }

  sub_1975DEC68(v7, v11);
  v12 = *v11 == a1 && v11[1] == a2;
  if (v12 || (sub_197616EF0() & 1) != 0)
  {
    sub_19758CA08();
    return 2;
  }

  v14 = v11 + *(v8 + 20);
  sub_197615A00();
  *&v16 = -v15;
  v19 = v16;
  v17 = Double.seconds.getter(*&v16);
  sub_1975877EC(v17);
  sub_197617290();
  sub_1976172B0();
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = sub_1976172A0();
  sub_19758CA08();
  if (v18)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1975DBF4C()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = _s12DisplayEventVMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1975E1230(v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_19755C820(v6, &qword_1EAF35260, &qword_1976202C8);
  }

  else
  {
    sub_1975DEC68(v6, v10);
    v11 = *v10 == v0[2] && v10[1] == v0[3];
    if (v11 || (sub_197616EF0() & 1) != 0)
    {
      sub_19758CA08();
    }

    else
    {
      v15 = v10 + *(v7 + 20);
      sub_197615A00();
      *&v17 = -v16;
      v20 = v17;
      v18 = Double.seconds.getter(*&v17);
      sub_1975877EC(v18);
      sub_197617290();
      sub_1976172B0();
      if (qword_1ED817510 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v19 = sub_1976172A0();
      sub_19758CA08();
      if (v19)
      {
        return 1;
      }
    }
  }

  v12 = *(v1 + 88);
  swift_unownedRetainStrong();
  v13 = sub_1975811E0(sub_19757FEC8, v1);

  return v13;
}

uint64_t sub_1975DC1F8()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 4, v2);
  (*(v3 + 72))(v9, v2, v3);
  result = sub_19756D1E8(v9);
  if (v10 == 1)
  {
    v5 = v0[11];
    swift_unownedRetainStrong();
    v6 = *(v5 + 64);

    sub_19755A560((v1 + 4), v8);
    v7 = swift_allocObject();
    sub_19756EED8(v8, v7 + 16);
    sub_19756E7B0(&unk_197620258, v7);
  }

  return result;
}

uint64_t sub_1975DC2F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975DC310, 0, 0);
}

uint64_t sub_1975DC310()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  type metadata accessor for CoreTipRecord();
  v3 = v1[3];
  v4 = v1[4];
  v16 = v1;
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = *(v4 + 32);
  v5(v3, v4);
  sub_1975E74B8();
  v7 = v6;

  if (v7)
  {
    v10 = *(v17 + 48);
    v11 = v16[4];
    __swift_project_boxed_opaque_existential_1Tm(*(v17 + 56), v16[3]);
    sub_1975782A0();
    v14 = *(v17 + 48);
    v15 = v16[4];
    __swift_project_boxed_opaque_existential_1Tm(*(v17 + 56), v16[3]);
    sub_1975EB128();
  }

  else
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    v12 = type metadata accessor for logger();
    __swift_project_value_buffer(v12, qword_1ED816CA0);
    OUTLINED_FUNCTION_5_17();
    sub_197616A20();
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_2_22();
    OUTLINED_FUNCTION_29_4();
    v13 = (v5)(v3, v4);
    MEMORY[0x19A8E2A50](v13);

    MEMORY[0x19A8E2A50](0xD000000000000044, 0x8000000197624D70);
    OUTLINED_FUNCTION_25_5();
  }

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t CoreTip.invalidate(reason:)(char a1)
{
  v2 = v1;
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v4);
  (*(v5 + 72))(v18, v4, v5);
  result = sub_19756D1E8(v18);
  if (v19 == 1)
  {
    v8 = v1[2];
    v7 = v1[3];
    v9 = v1[9];
    v10 = v1[10];
    if (qword_1ED817510 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    memcpy(__dst, &qword_1ED817518, 0x6AuLL);
    memcpy(v16, &qword_1ED817518, 0x6AuLL);
    sub_19757FBA0(__dst, v15);
    v11 = sub_19757F3C4(v8, v7, v9, v10);
    sub_19757FB70(__dst);
    if (v11 == 4)
    {
      CoreTip.status.getter(v16);
      if (LOBYTE(v16[0]) != 2)
      {
        LOBYTE(v16[0]) = 2;
        HIBYTE(v16[0]) = a1;
        sub_197582FAC(v16);
      }

      v12 = v2[11];
      swift_unownedRetainStrong();
      v13 = *(v12 + 64);

      v14 = swift_allocObject();
      *(v14 + 16) = v8;
      *(v14 + 24) = v7;
      *(v14 + 32) = a1;

      sub_19756E7B0(&unk_197620218, v14);
    }

    else
    {
      return sub_1975DC7B4(a1);
    }
  }

  return result;
}

uint64_t sub_1975DC7B4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v10 - v6;
  if ((a1 & 0xFE) == 2)
  {
    v8 = sub_1976165B0();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;

    sub_1975DB7FC(0, 0, v7, &unk_197620468, v9);
  }

  return result;
}

uint64_t sub_1975DC8A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1975DC8D0, 0, 0);
}

uint64_t sub_1975DC8D0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  type metadata accessor for CoreTipRecord();
  sub_1975E9024(v1, v2, v4);
  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_1975DCA50()
{
  OUTLINED_FUNCTION_8_0();
  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v1 = v0[2];
  v2 = type metadata accessor for logger();
  v0[3] = __swift_project_value_buffer(v2, qword_1ED816CA0);
  OUTLINED_FUNCTION_16_1();
  sub_197616A20();
  v3 = OUTLINED_FUNCTION_2_22();
  MEMORY[0x19A8E2A50](v3, 0xE800000000000000);
  v0[4] = *(v1 + 16);
  v0[5] = *(v1 + 24);
  MEMORY[0x19A8E2A50]();
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD000000000000042);
  sub_197558864();

  v0[6] = sub_197616590();
  v0[7] = sub_197616580();
  OUTLINED_FUNCTION_42();
  v5 = sub_197616560();

  return MEMORY[0x1EEE6DFA0](sub_1975DCB98, v5, v4);
}

uint64_t sub_1975DCB98()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[7];
  v2 = v0[2];

  CoreTip.hide()();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1975DCC38;

  return static Task.sleep<>(for:)();
}

uint64_t sub_1975DCC38()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1975DEFA8;
  }

  else
  {
    v6 = sub_1975DCD40;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1975DCD40()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_16_1();
  sub_197616A20();
  v5 = OUTLINED_FUNCTION_2_22();
  MEMORY[0x19A8E2A50](v5, 0xE800000000000000);
  MEMORY[0x19A8E2A50](v3, v2);
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD00000000000002DLL);
  sub_197558864();

  v0[9] = sub_197616580();
  OUTLINED_FUNCTION_42();
  v7 = sub_197616560();

  return MEMORY[0x1EEE6DFA0](sub_1975DCE44, v7, v6);
}

uint64_t sub_1975DCE44()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  CoreTip.show()();
  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t static CoreTip.invalidateTip(id:reason:datastore:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t sub_1975DCEC0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = *(*(v0 + 32) + 64);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v5 + 32) = v2;

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1975DCFC4;

  return sub_1975C4064();
}

uint64_t sub_1975DCFC4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = sub_1975DD0D0;
  }

  else
  {
    v8 = *(v3 + 40);

    v7 = sub_1975A9254;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1975DD0D0()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1975DD12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 26) = a5;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 56) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  *(v5 + 88) = v7;
  v8 = *(v7 - 8);
  *(v5 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  *(v5 + 112) = v10;
  v11 = *(v10 - 8);
  *(v5 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  *(v5 + 136) = v13;
  v14 = *(v13 - 8);
  *(v5 + 144) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975DD308, 0, 0);
}

uint64_t sub_1975DD308()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v44 = *(v0 + 128);
  v45 = *(v0 + 136);
  v3 = *(v0 + 120);
  v46 = *(v0 + 112);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v48 = *(v0 + 56);
  swift_getKeyPath();
  sub_197568038(&qword_1ED816CD8, MEMORY[0x1E6969530]);
  sub_197615640();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v9 = type metadata accessor for CoreTipRecord();
  *(v0 + 32) = v9;
  sub_197615AE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
  v10 = *(v1 + 72);
  v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_197618C10;
  (*(v1 + 16))(v47 + v11, v2, v45);
  (*(v3 + 16))(v6, v44, v46);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v46);
  v12 = sub_197568038(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  v13 = MEMORY[0x1E69E7CC0];
  sub_197615D90();
  v14 = swift_task_alloc();
  *v14 = v9;
  v14[1] = v12;
  swift_getKeyPath();

  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  swift_setAtWritableKeyPath();

  v15 = swift_task_alloc();
  *v15 = v9;
  v15[1] = v12;
  swift_getKeyPath();

  *(v0 + 25) = 0;
  swift_setAtWritableKeyPath();

  v16 = swift_task_alloc();
  *v16 = v9;
  v16[1] = v12;
  swift_getKeyPath();

  *(v0 + 40) = v13;
  swift_setAtWritableKeyPath();

  v17 = swift_task_alloc();
  *v17 = v9;
  v17[1] = v12;
  swift_getKeyPath();

  *(v0 + 48) = v47;
  swift_setAtWritableKeyPath();

  v18 = sub_197615C80();
  if (sub_197567E4C(v18))
  {
    sub_1975692BC(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A8E31E0](0, v18);
    }

    else
    {
      v19 = *(v18 + 32);
    }
  }

  else
  {
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);

    v23 = *(v9 + 48);
    v24 = *(v9 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_42();

    v25 = OUTLINED_FUNCTION_22_7();
    CoreTipRecord.init(id:)(v25, v26);
    sub_197615CD0();
  }

  v28 = *(v0 + 144);
  v27 = *(v0 + 152);
  v30 = *(v0 + 128);
  v29 = *(v0 + 136);
  v31 = *(v0 + 112);
  v32 = *(v0 + 120);
  v33 = *(v0 + 56);
  v34 = *(v0 + 26);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v35 = *(v32 + 8);
  v36 = OUTLINED_FUNCTION_19_2();
  v37(v36);
  (*(v28 + 8))(v27, v29);
  sub_1975E92FC(v34);
  v39 = *(v0 + 152);
  v40 = *(v0 + 128);
  v41 = *(v0 + 104);
  v42 = *(v0 + 80);

  OUTLINED_FUNCTION_3();

  return v43();
}

uint64_t sub_1975DD860@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34710, &unk_197622260);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E8, &qword_1976192E0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  sub_197559AAC(&qword_1ED816CE0, &qword_1EAF34710, &unk_197622260);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35268, &unk_1976224A0);
  a4[4] = sub_1975710A4();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED816BF8, &qword_1EAF346E8, &qword_1976192E0);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848);
  v22 = v26;
  sub_1976156F0();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1975DDBE0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 104);
  v2 = v1[8];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v1[7]);
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_42();
  v5(v4, v2);
  sub_19756D1E8(v0 + 16);
  if (*(v0 + 62) == 1)
  {
    v6 = *(*(v0 + 104) + 88);
    swift_unownedRetainStrong();
    *(v0 + 112) = *(v6 + 64);

    sub_19755A560((v1 + 4), v0 + 64);
    v7 = swift_allocObject();
    *(v0 + 120) = v7;
    sub_19756EED8((v0 + 64), v7 + 16);
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_1975DDD78;

    return sub_197572890();
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v10();
  }
}

uint64_t sub_1975DDD78()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = v1[16];
  v3 = v1[15];
  v4 = v1[14];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  return MEMORY[0x1EEE6DFA0](sub_197598ED0, 0, 0);
}

uint64_t sub_1975DDE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1975DDEBC, 0, 0);
}

uint64_t sub_1975DDEBC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  type metadata accessor for CoreTipRecord();
  sub_1975E9648(v5, v2, v3, v4);
  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_1975DE05C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_19755CCE8;

  return sub_1975DC8A8(v3, v4, v5, v6);
}

uint64_t sub_1975DE108(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_1975DE36C(a2);

  return v3;
}

uint64_t sub_1975DE1D4@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1975DE414(a1, a2);
}

uint64_t sub_1975DE2A0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_1975DE4D4(a2);

  return v3 & 1;
}

uint64_t sub_1975DE36C(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    return 2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);

  sub_197615D20();

  if (sub_197615C40())
  {
    sub_197615C50();
  }

  v4 = sub_19757FEE4(a1);

  return v4;
}

uint64_t sub_1975DE414@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    v3 = result;

    v4 = sub_197615D20();

    if (sub_197615C40())
    {
      sub_197615C50();
    }

    v3(v4);
    sub_197615C90();
  }

  else
  {
    *a2 = xmmword_19761D220;
  }

  return result;
}

uint64_t sub_1975DE4D4(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    v5 = 1;
    return v5 & 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);

  sub_197615D20();

  if (sub_197615C40())
  {
    sub_197615C50();
  }

  v5 = sub_19757FEE4(a1);

  if (!v2)
  {
    return v5 & 1;
  }

  return result;
}

uint64_t sub_1975DE580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_197616580();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1975DED18(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v13[0]);
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000003FLL, 0x8000000197624F40);
  v12 = sub_197617320();
  MEMORY[0x19A8E2A50](v12);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  result = sub_197616C20();
  __break(1u);
  return result;
}

uint64_t sub_1975DE738(uint64_t a1, uint64_t a2)
{
  sub_197616580();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1975DEF80();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000003FLL, 0x8000000197624F40);
    v8 = sub_197617320();
    MEMORY[0x19A8E2A50](v8);

    MEMORY[0x19A8E2A50](46, 0xE100000000000000);
    result = sub_197616C20();
    __break(1u);
  }

  return result;
}

uint64_t sub_1975DE8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_197616580();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1975DED18(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v13[0]);
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000003FLL, 0x8000000197624F40);
  v12 = sub_197617320();
  MEMORY[0x19A8E2A50](v12);

  MEMORY[0x19A8E2A50](46, 0xE100000000000000);
  result = sub_197616C20();
  __break(1u);
  return result;
}

uint64_t sub_1975DEA7C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_5_1(v8);
  *v9 = v10;
  v9[1] = sub_19755CCE8;

  return sub_1975DD12C(v4, v2, v5, v6, v7);
}

uint64_t sub_1975DEB34()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_1(v5);
  *v6 = v7;
  v6[1] = sub_19755CDC8;

  return sub_1975DDE9C(v4, v2, v0 + 16);
}

uint64_t sub_1975DEBD4()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19755CDC8;

  return sub_1975DC2F0(v3, v0 + 16);
}

uint64_t sub_1975DEC68(uint64_t a1, uint64_t a2)
{
  v4 = _s12DisplayEventVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975DECCC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975DE108(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1975DED18@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1975DED64@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975DE2A0(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_1975DEDB4()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_1(v6);
  *v7 = v8;
  v7[1] = sub_19755CDC8;

  return sub_1975DCA30(v2, v3, v4, v5);
}

uint64_t sub_1975DEE5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975DEECC()
{
  OUTLINED_FUNCTION_25();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12(v4);

  return v7(v6);
}

uint64_t sub_1975DEF60@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return sub_1975DE1D4(v1[3], a1);
}

uint64_t sub_1975DEF80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1975DEFAC(uint64_t a1)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_197615A60();
  v7 = OUTLINED_FUNCTION_1_31(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_25_6();
  if (qword_1ED817578)
  {
    v13 = qword_1ED817570;
    v14 = qword_1ED817578;
  }

  else
  {
    v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v13 = qword_1ED81D210;
      v14 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v15 = sub_1975A5740();
      if (v16)
      {
        v13 = v15;
      }

      else
      {
        v13 = 0;
      }

      if (v16)
      {
        v14 = v16;
      }

      else
      {
        v14 = 0xE000000000000000;
      }
    }

    v12 = v34;
  }

  if (v13 == 0x6C7070612E6D6F63 && v14 == 0xEF64737069742E65)
  {
  }

  else
  {
    v18 = sub_197616EF0();

    if ((v18 & 1) == 0)
    {
      result = sub_1975A64CC();
      if (result)
      {
        v20 = v3[7];
        v21 = v3[8];
        __swift_project_boxed_opaque_existential_1Tm(v3 + 4, v20);
        (*(v21 + 72))(v35, v20, v21);
        sub_19756D1E8(v35);
        if ((v36 & 1) == 0)
        {
          static CoreTip.setLastTipDisplayed(id:date:)(v3[2], v3[3], a1);
        }

        v22 = v3[11];
        swift_unownedRetainStrong();
        v34 = *(v22 + 64);

        v23 = v3[2];
        v24 = v3[3];
        v32 = a1;
        v33 = v23;
        v25 = OUTLINED_FUNCTION_16_9();
        v26 = *(a1 + 72);

        v27 = OUTLINED_FUNCTION_29_5();
        v26(v27);
        (*(v9 + 16))(v12, v32, v1);
        v28 = *(v9 + 80);
        OUTLINED_FUNCTION_24_7();
        v29 = swift_allocObject();
        *(v29 + 16) = v33;
        *(v29 + 24) = v24;
        (*(v9 + 32))(&v25[v29], v12, v1);
        v30 = (v29 + v11);
        v31 = v38[0];
        *v30 = v37;
        v30[1] = v31;
        *(v30 + 31) = *(v38 + 15);
        sub_19756E7B0(&unk_1976204C0, v29);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall CoreTip.hide()()
{
  if ((CoreTip.isHidden.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_5_18();
    v0 = OUTLINED_FUNCTION_7_14();
    v1(v0);
    sub_19756D1E8(v3);
    if (v3[46] == 1)
    {
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v2 = type metadata accessor for logger();
      __swift_project_value_buffer(v2, qword_1ED816CA0);
      OUTLINED_FUNCTION_6_13();
      sub_197616A20();

      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_11_12();
      MEMORY[0x19A8E2A50](0x1000000000000015);
      sub_197558864();

      sub_1975D52E4(1);
      sub_1975E0AE4();
    }
  }
}

Swift::Void __swiftcall CoreTip.show()()
{
  if (CoreTip.isHidden.getter())
  {
    OUTLINED_FUNCTION_5_18();
    v0 = OUTLINED_FUNCTION_7_14();
    v1(v0);
    sub_19756D1E8(v3);
    if (v3[46] == 1)
    {
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v2 = type metadata accessor for logger();
      __swift_project_value_buffer(v2, qword_1ED816CA0);
      OUTLINED_FUNCTION_6_13();
      sub_197616A20();

      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_11_12();
      MEMORY[0x19A8E2A50](0x1000000000000016);
      sub_197558864();

      sub_1975D52E4(0);
      sub_1975E0AE4();
    }
  }
}

uint64_t CoreTip.viewDidAppear(viewDisplayDate:viewPresentation:)(uint64_t a1, int a2)
{
  v4 = v3;
  v39 = a2;
  v38 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_197615A60();
  v11 = OUTLINED_FUNCTION_1_31(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  sub_19755FA5C(a1, v9, &qword_1EAF34988, &qword_197620CA0);
  if (OUTLINED_FUNCTION_31_4(v9) == 1)
  {
    return sub_19755C404(v9, &qword_1EAF34988, &qword_197620CA0);
  }

  v37 = *(v13 + 32);
  v37(v19, v9, v2);
  v21 = v4[7];
  v22 = v4[8];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 4, v21);
  (*(v22 + 72))(v45, v21, v22);
  sub_19756D1E8(v45);
  if (v46 == 1)
  {
    v36 = v13 + 32;
    v23 = v4[7];
    v24 = v4[8];
    __swift_project_boxed_opaque_existential_1Tm(v4 + 4, v23);
    (*(v24 + 72))(v43, v23, v24);
    sub_19756D1E8(v43);
    if ((v44 & 1) == 0)
    {
      static CoreTip.setLastTipDisplayed(id:date:)(v4[2], v4[3], v19);
    }

    CoreTip.status.getter(v42);
    v25 = v39;
    if (LOBYTE(v42[0]) != 1)
    {
      if (qword_1ED815ED8 != -1)
      {
        OUTLINED_FUNCTION_0_33();
      }

      v26 = type metadata accessor for logger();
      __swift_project_value_buffer(v26, qword_1ED815EE0);
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      sub_197616A20();
      v27 = OUTLINED_FUNCTION_2_22();
      MEMORY[0x19A8E2A50](v27, 0xE800000000000000);
      MEMORY[0x19A8E2A50](v4[2], v4[3]);
      OUTLINED_FUNCTION_13_12();
      MEMORY[0x19A8E2A50](0xD000000000000030);
      CoreTip.status.getter(&v41);
      v40 = v41;
      v28 = CoreTip.Status.description.getter();
      MEMORY[0x19A8E2A50](v28);

      sub_197558864();
    }

    if (!CoreTip.presentationStyle.getter() || (CoreTip.presentationStyle.getter() == 1 ? (v29 = v25 == 2) : (v29 = 0), v29))
    {
      sub_19758427C(v25);
    }

    v30 = v4[11];
    swift_unownedRetainStrong();
    v31 = *(v30 + 64);

    v33 = v4[2];
    v32 = v4[3];
    (*(v13 + 16))(v17, v19, v2);
    v34 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v32;
    v37(v35 + v34, v17, v2);

    sub_19756E7B0(&unk_197620480, v35);
  }

  return (*(v13 + 8))(v19, v2);
}

uint64_t sub_1975DF960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975DF984, 0, 0);
}

uint64_t sub_1975DF984()
{
  OUTLINED_FUNCTION_17_9();
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  type metadata accessor for CoreTipRecord();
  v5 = OUTLINED_FUNCTION_22_7();
  sub_1975E79B8(v5, v6, v2, v4);
  v7 = v0[6];
  if (sub_197615C20())
  {
    v8 = v0[6];
    sub_197615C70();
  }

  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t CoreTip.viewDidDisappear(viewDisplayDate:viewDisplayDuration:)(uint64_t a1, double a2)
{
  v4 = v2;
  v7 = sub_197615A60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v2[7];
  v11 = v2[8];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 4, v10);
  (*(v11 + 72))(v33, v10, v11);
  result = sub_19756D1E8(v33);
  if (v34 == 1)
  {
    if (CoreTip.presentationStyle.getter())
    {
      sub_19758427C(0);
    }

    v29 = a1;
    v30 = v7;
    v13 = _ss8DurationV10TipKitCoreE7secondsSivg_0();
    _ss8DurationV10TipKitCoreE7secondsSivg_0();
    if (v14 / 1.0e18 + v13 <= a2)
    {
      v15 = CoreTip.displayDuration.getter();
      sub_1975D53DC(v15 + a2);
    }

    v16 = v2[11];
    swift_unownedRetainStrong();
    v17 = *(v16 + 64);

    v18 = v4[3];
    v28 = v4[2];
    v19 = OUTLINED_FUNCTION_16_9();
    v20 = *(v3 + 72);

    v21 = OUTLINED_FUNCTION_29_5();
    v20(v21);
    v22 = v30;
    (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v30);
    v23 = *(v8 + 80);
    OUTLINED_FUNCTION_24_7();
    v24 = swift_allocObject();
    *(v24 + 16) = v28;
    *(v24 + 24) = v18;
    (*(v8 + 32))(&v19[v24], &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
    *(v24 + v9) = a2;
    v25 = (v24 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
    *(v25 + 31) = *&v32[15];
    v26 = *v32;
    *v25 = v31;
    v25[1] = v26;
    sub_19756E7B0(&unk_197620490, v24);
  }

  return result;
}

uint64_t sub_1975DFD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 88) = a5;
  *(v6 + 80) = a6;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1975DFDA4, 0, 0);
}

uint64_t sub_1975DFDA4()
{
  v1 = *(v0 + 11);
  v2 = v0[10];
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v6 = *(v0 + 6);
  v5 = *(v0 + 7);
  type metadata accessor for CoreTipRecord();
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = OUTLINED_FUNCTION_22_7();
  sub_1975E8298(v9, v10, v4, v11, v12, v6, v2);
  v13 = *(v0 + 6);
  if (sub_197615C20())
  {
    v14 = *(v0 + 6);
    sub_197615C70();
  }

  OUTLINED_FUNCTION_3();

  return v15();
}

uint64_t sub_1975DFF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1975DFF50, 0, 0);
}

uint64_t sub_1975DFF50()
{
  OUTLINED_FUNCTION_17_9();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  type metadata accessor for CoreTipRecord();
  sub_1975E79B8(v3, v2, v1, v4);
  sub_1975E8298(v0[7], v0[8], v0[9], *(v0[10] + 32), *(v0[10] + 40), v0[6], 30.0);
  v7 = v0[6];
  v8 = sub_197615C20();
  if (v8)
  {
    v9 = v0[6];
    sub_197615C70();
  }

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t CoreTip.actionButtonTapped(actionID:linkURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  v10 = OUTLINED_FUNCTION_20_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v31[-v15 - 8];
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  result = OUTLINED_FUNCTION_25_6();
  if (byte_1ED817581 == 1)
  {
    OUTLINED_FUNCTION_16_9();
    v18 = *(v4 + 72);
    v19 = OUTLINED_FUNCTION_29_5();
    v20(v19);
    result = sub_19756D1E8(v32);
    if (v32[45] == 1)
    {
      OUTLINED_FUNCTION_16_9();
      v21 = *(v4 + 72);
      v22 = OUTLINED_FUNCTION_29_5();
      v23(v22);
      result = sub_19756D1E8(v31);
      if (v31[46] == 1)
      {
        v24 = *(v3 + 88);
        swift_unownedRetainStrong();
        v25 = *(v24 + 64);

        v27 = *(v5 + 16);
        v26 = *(v5 + 24);
        sub_19755FA5C(a3, v16, &qword_1EAF34610, &qword_197621E30);
        v28 = (*(v12 + 80) + 48) & ~*(v12 + 80);
        v29 = swift_allocObject();
        v29[2] = v27;
        v29[3] = v26;
        v29[4] = a1;
        v29[5] = a2;
        sub_1975D66B0(v16, v29 + v28);

        sub_19756E7B0(&unk_1976204A0, v29);
      }
    }
  }

  return result;
}

uint64_t sub_1975E02F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = sub_197615F50();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975E0404, 0, 0);
}

uint64_t sub_1975E0404()
{
  OUTLINED_FUNCTION_17_9();
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[3];
  v3 = v0[4];
  type metadata accessor for CoreTip();
  v5 = static CoreTip.modelIdentifiers.getter();
  v6 = OUTLINED_FUNCTION_25_0();
  sub_19756E674(v6, v7, v5);

  if (OUTLINED_FUNCTION_31_4(v2) == 1)
  {
    sub_19755C404(v0[9], &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[8];
    v13 = OUTLINED_FUNCTION_21_8();
    v14(v13);
    v15 = OUTLINED_FUNCTION_27_5();
    v16(v15);
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_20_7();
    v18 = v17;
    v19 = sub_19755C404(v12, &qword_1EAF34AB8, &qword_197622080);
    if (v18)
    {
      if (sub_19757E800(v19))
      {
        v21 = v0[11];
        v20 = v0[12];
        v22 = v0[10];
        sub_1975A4444(v18, v0[5], v0[6], v0[7]);

        v23 = *(v21 + 8);
        v24 = OUTLINED_FUNCTION_18_0();
        v25(v24);
      }

      else
      {
        (*(v0[11] + 8))(v0[12], v0[10]);
      }

      goto LABEL_10;
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  if (qword_1ED815ED8 != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  v27 = v0[3];
  v26 = v0[4];
  v28 = type metadata accessor for logger();
  __swift_project_value_buffer(v28, qword_1ED815EE0);
  OUTLINED_FUNCTION_16_1();
  sub_197616A20();
  v29 = OUTLINED_FUNCTION_2_22();
  MEMORY[0x19A8E2A50](v29, 0xE800000000000000);
  v30 = OUTLINED_FUNCTION_22_7();
  MEMORY[0x19A8E2A50](v30);
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD00000000000003FLL);
  sub_197558864();

LABEL_10:
  v31 = v0[12];
  v32 = v0[8];
  v33 = v0[9];

  OUTLINED_FUNCTION_3();

  return v34();
}

Swift::Void __swiftcall CoreTip.tipViewTapped()()
{
  v1 = v0;
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_25_6();
  if (byte_1ED817581 == 1)
  {
    OUTLINED_FUNCTION_5_18();
    v2 = OUTLINED_FUNCTION_7_14();
    v3(v2);
    sub_19756D1E8(v12);
    if (v12[45] == 1)
    {
      OUTLINED_FUNCTION_5_18();
      v4 = OUTLINED_FUNCTION_7_14();
      v5(v4);
      sub_19756D1E8(v11);
      if (v11[46] == 1)
      {
        v6 = *(v0 + 88);
        swift_unownedRetainStrong();
        v7 = *(v6 + 64);

        v9 = *(v1 + 16);
        v8 = *(v1 + 24);
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = v8;

        sub_19756E7B0(&unk_1976204B0, v10);
      }
    }
  }
}

uint64_t sub_1975E0794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_197615F50();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1975E089C, 0, 0);
}

uint64_t sub_1975E089C()
{
  OUTLINED_FUNCTION_17_9();
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  type metadata accessor for CoreTip();
  v5 = static CoreTip.modelIdentifiers.getter();
  v6 = OUTLINED_FUNCTION_25_0();
  sub_19756E674(v6, v7, v5);

  if (OUTLINED_FUNCTION_31_4(v2) == 1)
  {
    sub_19755C404(v0[6], &qword_1EAF34AB8, &qword_197622080);
  }

  else
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[5];
    v13 = OUTLINED_FUNCTION_21_8();
    v14(v13);
    v15 = OUTLINED_FUNCTION_27_5();
    v16(v15);
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_20_7();
    v18 = v17;
    v19 = sub_19755C404(v12, &qword_1EAF34AB8, &qword_197622080);
    if (v18)
    {
      v20 = sub_19757E800(v19);
      v22 = v0[8];
      v21 = v0[9];
      v23 = v0[7];
      if (v20)
      {
        sub_1975A4634(v18);

        v24 = *(v22 + 8);
        v25 = OUTLINED_FUNCTION_18_0();
        v26(v25);
      }

      else
      {
        v37 = *(v22 + 8);
        v38 = OUTLINED_FUNCTION_18_0();
        v39(v38);
      }

      goto LABEL_10;
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  if (qword_1ED815ED8 != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  v28 = v0[3];
  v27 = v0[4];
  v29 = type metadata accessor for logger();
  __swift_project_value_buffer(v29, qword_1ED815EE0);
  OUTLINED_FUNCTION_16_1();
  sub_197616A20();
  v30 = OUTLINED_FUNCTION_2_22();
  MEMORY[0x19A8E2A50](v30, 0xE800000000000000);
  v31 = OUTLINED_FUNCTION_22_7();
  MEMORY[0x19A8E2A50](v31);
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x19A8E2A50](0xD000000000000041);
  sub_197558864();

LABEL_10:
  v32 = v0[9];
  v33 = v0[5];
  v34 = v0[6];

  OUTLINED_FUNCTION_3();

  return v35();
}

uint64_t sub_1975E0AE4()
{
  v1 = v0;
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v2 = qword_1ED817570;
    v3 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v2 = qword_1ED81D210;
      v3 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v4 = sub_1975A5740();
      if (v5)
      {
        v2 = v4;
      }

      else
      {
        v2 = 0;
      }

      if (v5)
      {
        v3 = v5;
      }

      else
      {
        v3 = 0xE000000000000000;
      }
    }
  }

  if (v2 == 0x6C7070612E6D6F63 && v3 == 0xEF64737069742E65)
  {
  }

  else
  {
    v7 = sub_197616EF0();

    if ((v7 & 1) == 0)
    {
      v9 = v1[7];
      v10 = v1[8];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v9);
      (*(v10 + 72))(v13, v9, v10);
      result = sub_19756D1E8(v13);
      if (v14 == 1)
      {
        v11 = v1[11];
        swift_unownedRetainStrong();
        v12 = swift_allocObject();
        swift_weakInit();
        sub_1975DB6A8(sub_1975E1210, v12);
      }
    }
  }

  return result;
}

uint64_t sub_1975E0D04@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_197580628(a1);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_1975E0D88()
{
  v1 = *(sub_197615A60() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23_6(v5);
  *v6 = v7;
  v6[1] = sub_1975E122C;
  v8 = OUTLINED_FUNCTION_4_27();

  return sub_1975DF960(v8, v9, v10, v11);
}

uint64_t sub_1975E0E64()
{
  OUTLINED_FUNCTION_17_9();
  v1 = sub_197615A60();
  OUTLINED_FUNCTION_20_0(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_23_6(v7);
  *v8 = v9;
  v8[1] = sub_1975E122C;
  v10 = OUTLINED_FUNCTION_4_27();

  return sub_1975DFD78(v10, v11, v12, v13, v14, v6);
}

uint64_t sub_1975E0F78()
{
  OUTLINED_FUNCTION_17_9();
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_23_6(v7);
  *v8 = v9;
  v8[1] = sub_1975E122C;
  v10 = OUTLINED_FUNCTION_4_27();

  return sub_1975E02F8(v10, v11, v12, v5, v6, v13);
}

uint64_t sub_1975E1070()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23_6(v3);
  *v4 = v5;
  v4[1] = sub_1975D5948;
  v6 = OUTLINED_FUNCTION_18_0();

  return sub_1975E0794(v6, v7, v1);
}

uint64_t sub_1975E1110()
{
  v1 = sub_197615A60();
  OUTLINED_FUNCTION_20_0(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_23_6(v7);
  *v8 = v9;
  v8[1] = sub_1975E122C;
  v10 = OUTLINED_FUNCTION_4_27();

  return sub_1975DFF28(v10, v11, v12, v13, v14);
}

void sub_1975E1230(uint64_t a1@<X8>)
{
  if (qword_1ED8160E8 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35270, &qword_1976204C8);
  v3 = __swift_project_value_buffer(v2, qword_1ED8160F0);
  os_unfair_lock_lock(v3);
  sub_197584170(v3 + *(v2 + 28), a1);

  os_unfair_lock_unlock(v3);
}

void sub_1975E12C8(uint64_t *a1)
{
  v1 = *a1;

  static CoreTip.tips.setter(v2);
}

void sub_1975E12E8(uint64_t *a1)
{
  v1 = *a1;

  static CoreTip.modelIdentifiers.setter(v2);
}

uint64_t (*static CoreTip.modelIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = static CoreTip.modelIdentifiers.getter();
  return sub_1975E1350;
}

void sub_1975E1368()
{
  v18 = static CoreTip.tips.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35288, &qword_1976204E0);
  OUTLINED_FUNCTION_3_26();
  static CoreTip.tips.setter(v18);
  v19 = static CoreTip.modelIdentifiers.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C90, &qword_19761BF48);
  OUTLINED_FUNCTION_3_26();
  static CoreTip.modelIdentifiers.setter(v19);
  v20 = sub_197559B4C(&qword_1ED816D40, &dword_1ED816B38, &qword_1ED816B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35290, &qword_1976204E8);
  v0 = OUTLINED_FUNCTION_3_26();
  OUTLINED_FUNCTION_4_28(v0, v1, v2, v3, v4, v5, v6, v7, v16, v20);
  v21 = sub_197559B4C(&qword_1ED816D38, &dword_1ED816CC0, &qword_1ED816CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35298, &qword_1976204F0);
  v8 = OUTLINED_FUNCTION_3_26();
  OUTLINED_FUNCTION_4_28(v8, v9, v10, v11, v12, v13, v14, v15, v17, v21);
}

uint64_t static CoreTipProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_197616EF0();
  }

  return v12 & 1;
}

uint64_t CoreTipProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  MEMORY[0x19A8E2A50](v2);

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0x203A646928706954;
}

uint64_t CoreTip.Options.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CoreTip.Options.maxDisplayDuration.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t CoreTip.Options.init(cloudSyncEnabled:hasRandomIdentifier:ignoresDisplayFrequency:maxDisplayCount:maxDisplayDuration:statusOverride:unmanagedTip:usesConstellation:usesCoreAnalytics:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12)
{
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v18 = qword_1ED817570;
    v19 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      swift_once();
    }

    if (qword_1ED81D218)
    {
      v18 = qword_1ED81D210;
      v19 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v20 = sub_1975A5740();
      if (v21)
      {
        v18 = v20;
      }

      else
      {
        v18 = 0;
      }

      if (v21)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0xE000000000000000;
      }
    }
  }

  v22 = a12;
  v23 = a10 ^ 1;
  if (a10 == 2)
  {
    v23 = 1;
  }

  if (a8 == 4)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a12 == 2)
  {
    v22 = byte_1ED817581;
  }

  v25 = 0x7FFFFFFFFFFFFFFFLL;
  *a9 = v18;
  *(a9 + 8) = v19;
  if ((a5 & 1) == 0)
  {
    v25 = a4;
  }

  *(a9 + 16) = (a1 == 2) | a1 & 1;
  *(a9 + 17) = a2 & 1;
  *(a9 + 18) = a3 & 1;
  *(a9 + 24) = v25;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7 & 1;
  *(a9 + 41) = a8;
  *(a9 + 42) = 0;
  *(a9 + 43) = a10 & 1;
  *(a9 + 44) = a11 & 1;
  *(a9 + 45) = v22 & 1;
  *(a9 + 46) = v24 & 1;
}

uint64_t sub_1975E1864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000197625210 == a2;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000197625230 == a2;
      if (v7 || (sub_197616EF0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x8000000197625250 == a2;
        if (v8 || (sub_197616EF0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C7073694478616DLL && a2 == 0xEF746E756F437961;
          if (v9 || (sub_197616EF0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x8000000197625270 == a2;
            if (v10 || (sub_197616EF0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x764F737574617473 && a2 == 0xEE00656469727265;
              if (v11 || (sub_197616EF0() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000197624770 == a2;
                if (v12 || (sub_197616EF0() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6567616E616D6E75 && a2 == 0xEC00000070695464;
                  if (v13 || (sub_197616EF0() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x8000000197625290 == a2;
                    if (v14 || (sub_197616EF0() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x80000001976252B0 == a2;
                      if (v15 || (sub_197616EF0() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x5270695473657375 && a2 == 0xED000064726F6365)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_197616EF0();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1975E1C30(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6C7073694478616DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x764F737574617473;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6567616E616D6E75;
      break;
    case 9:
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x5270695473657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1975E1DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1975E1864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1975E1DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1975E1C28();
  *a1 = result;
  return result;
}

uint64_t sub_1975E1E0C(uint64_t a1)
{
  v2 = sub_1975E21D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975E1E48(uint64_t a1)
{
  v2 = sub_1975E21D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTip.Options.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF352A0, &qword_1976204F8);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v23 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  v29 = *(v1 + 17);
  v30 = v13;
  v28 = *(v1 + 18);
  v14 = v1[3];
  v26 = v1[4];
  v27 = v14;
  LODWORD(v14) = *(v1 + 40);
  v24 = *(v1 + 41);
  v25 = v14;
  LODWORD(v14) = *(v1 + 42);
  v23[4] = *(v1 + 43);
  v23[5] = v14;
  LODWORD(v14) = *(v1 + 44);
  v23[2] = *(v1 + 45);
  v23[3] = v14;
  v15 = *(v1 + 46);
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1Tm(v18, v17);
  sub_1975E21D8();
  sub_197617260();
  v44 = 0;
  v21 = v31;
  sub_197616E30();
  if (!v21)
  {
    LODWORD(v31) = v15;
    v43 = 1;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v42 = 2;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v41 = 3;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v40 = 4;
    OUTLINED_FUNCTION_2_24();
    sub_197616E50();
    v39 = 5;
    sub_197616E00();
    v38 = v24;
    v37 = 6;
    sub_1975E222C();
    OUTLINED_FUNCTION_2_24();
    sub_197616E20();
    v36 = 7;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v35 = 8;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v34 = 9;
    OUTLINED_FUNCTION_2_24();
    sub_197616E40();
    v33 = 10;
    sub_197616E40();
    v32 = 11;
    sub_197616E40();
  }

  return (*(v6 + 8))(v10, v20);
}

unint64_t sub_1975E21D8()
{
  result = qword_1EAF352A8;
  if (!qword_1EAF352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352A8);
  }

  return result;
}

unint64_t sub_1975E222C()
{
  result = qword_1EAF352B0;
  if (!qword_1EAF352B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352B0);
  }

  return result;
}

uint64_t CoreTip.Options.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF352B8, &qword_197620500);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975E21D8();
  sub_197617240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v31[0]) = 0;
  v10 = sub_197616D90();
  v12 = v11;
  OUTLINED_FUNCTION_0_34(1);
  v28 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(2);
  v27 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(3);
  v26 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(4);
  v25 = sub_197616DB0();
  OUTLINED_FUNCTION_0_34(5);
  v24 = sub_197616D60();
  v44 = v13 & 1;
  LOBYTE(v29) = 6;
  sub_1975E2684();
  sub_197616D80();
  OUTLINED_FUNCTION_0_34(7);
  v23 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(8);
  v22 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(9);
  v21 = sub_197616DA0();
  OUTLINED_FUNCTION_0_34(10);
  v20 = sub_197616DA0();
  v45 = 11;
  v14 = sub_197616DA0();
  v27 &= 1u;
  v28 &= 1u;
  v15 = OUTLINED_FUNCTION_1_32();
  v16(v15);
  *&v29 = v10;
  *(&v29 + 1) = v12;
  v30[0] = v28;
  v30[1] = v27;
  v30[2] = v26 & 1;
  *&v30[8] = v25;
  *&v30[16] = v24;
  v17 = v44;
  v30[24] = v44;
  v30[25] = 0;
  v30[26] = v23 & 1;
  v30[27] = v22 & 1;
  v30[28] = v21 & 1;
  v30[29] = v20 & 1;
  v30[30] = v14 & 1;
  v18 = *v30;
  *a2 = v29;
  a2[1] = v18;
  *(a2 + 31) = *&v30[15];
  sub_1975B959C(&v29, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v31[0] = v10;
  v31[1] = v12;
  v32 = v28;
  v33 = v27;
  v34 = v26 & 1;
  v35 = v25;
  v36 = v24;
  v37 = v17;
  v38 = 0;
  v39 = v23 & 1;
  v40 = v22 & 1;
  v41 = v21 & 1;
  v42 = v20 & 1;
  v43 = v14 & 1;
  return sub_19756D1E8(v31);
}

unint64_t sub_1975E2684()
{
  result = qword_1EAF352C0;
  if (!qword_1EAF352C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352C0);
  }

  return result;
}

uint64_t sub_1975E2780(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 47))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1975E27C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 47) = 1;
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

    *(result + 47) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7OptionsV10CodingKeysOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7OptionsV10CodingKeysOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975E298C()
{
  result = qword_1EAF352C8;
  if (!qword_1EAF352C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352C8);
  }

  return result;
}

unint64_t sub_1975E29E4()
{
  result = qword_1EAF352D0;
  if (!qword_1EAF352D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352D0);
  }

  return result;
}

unint64_t sub_1975E2A3C()
{
  result = qword_1EAF352D8;
  if (!qword_1EAF352D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352D8);
  }

  return result;
}

uint64_t CoreTip.Status.description.getter()
{
  if (*v0 == 2)
  {
    v1 = v0[1];
    sub_197616A20();
    OUTLINED_FUNCTION_16_10();
    MEMORY[0x19A8E2A50](0xD000000000000015, 0x80000001976252D0);
    OUTLINED_FUNCTION_16_10();
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  }

  else
  {
    sub_197616BC0();
  }

  return 0;
}

uint64_t static CoreTip.Status.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 10)
  {
    if (v3 != 10)
    {
      return 0;
    }
  }

  else if (v3 == 10 || v2 != v3)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1975E2C30@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CoreTip.RecordStatus.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1975E2D0C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CoreTip.InvalidationReason.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t CoreTip.PresentationStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_197617190();
  MEMORY[0x19A8E3940](a1);
  return sub_1976171F0();
}

unint64_t sub_1975E2E7C()
{
  result = qword_1EAF352E0;
  if (!qword_1EAF352E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352E0);
  }

  return result;
}

unint64_t sub_1975E2ED4()
{
  result = qword_1EAF352E8;
  if (!qword_1EAF352E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352E8);
  }

  return result;
}

unint64_t sub_1975E2F2C()
{
  result = qword_1EAF352F0;
  if (!qword_1EAF352F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF352F0);
  }

  return result;
}

_BYTE *_s12RecordStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t _s18InvalidationReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18InvalidationReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17PresentationStyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1975E32A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v8 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v30 - v17;
  if (a1)
  {
    if (*(a1 + 16) && (v19 = sub_19755C610(), (v20 & 1) != 0) && (sub_1975586C0(*(a1 + 56) + 32 * v19, v31), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050), (swift_dynamicCast() & 1) != 0))
    {
      v22 = v30[0];
      v21 = v30[1];
      sub_197579604(0x6579616C70736964, 0xED00006574614464);

      if (v32)
      {
        v23 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v7, v23 ^ 1u, 1, v8);
        if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
        {
          v28 = *(v10 + 32);
          v28(v18, v7, v8);
          v28(v16, v18, v8);
          *a2 = v22;
          *(a2 + 1) = v21;
          v29 = _s12DisplayEventVMa();
          v28(&a2[*(v29 + 20)], v16, v8);
          v25 = a2;
          v26 = 0;
          v24 = v29;
          return __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
        }
      }

      else
      {

        sub_19755C7C8(v31, &qword_1EAF34698, &qword_197619048);
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
      }

      sub_19755C7C8(v7, &qword_1EAF34988, &qword_197620CA0);
    }

    else
    {
    }
  }

  v24 = _s12DisplayEventVMa();
  v25 = a2;
  v26 = 1;
  return __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
}

uint64_t sub_1975E35B0()
{
  v0 = sub_197616D20();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1975E3604(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_197616EF0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(_s12DisplayEventVMa() + 20);

  return sub_197615A30();
}

uint64_t sub_1975E3680(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF352F8, &qword_197620A78);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975E3C50();
  sub_197617260();
  v14 = *v3;
  v15 = v3[1];
  v18[15] = 0;
  sub_197616E30();
  if (!v2)
  {
    v16 = *(_s12DisplayEventVMa() + 20);
    v18[14] = 1;
    sub_197615A60();
    sub_197567E98(&qword_1ED816D90);
    sub_197616E60();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1975E3818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v27 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35300, &unk_197620A80);
  OUTLINED_FUNCTION_14();
  v29 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v14 = _s12DisplayEventVMa();
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1975E3C50();
  sub_197617240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = v14;
  v21 = v30;
  v33 = 0;
  *v19 = sub_197616D90();
  v19[1] = v22;
  v32 = 1;
  sub_197567E98(&qword_1ED816BA0);
  sub_197616DC0();
  v23 = OUTLINED_FUNCTION_10_15();
  v24(v23);
  (*(v27 + 32))(v19 + *(v26 + 20), v9, v21);
  sub_1975E3CA4(v19, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1975E3D08(v19);
}

uint64_t sub_1975E3B18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1975E35B0();
  *a2 = result;
  return result;
}

uint64_t sub_1975E3B48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19759B614(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1975E3B7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1975E35B0();
  *a1 = result;
  return result;
}

uint64_t sub_1975E3BA4(uint64_t a1)
{
  v2 = sub_1975E3C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975E3BE0(uint64_t a1)
{
  v2 = sub_1975E3C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1975E3C50()
{
  result = qword_1ED816258;
  if (!qword_1ED816258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816258);
  }

  return result;
}

uint64_t sub_1975E3CA4(uint64_t a1, uint64_t a2)
{
  v4 = _s12DisplayEventVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975E3D08(uint64_t a1)
{
  v2 = _s12DisplayEventVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1975E3D64()
{
  result = qword_1EAF35308;
  if (!qword_1EAF35308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35308);
  }

  return result;
}

unint64_t sub_1975E3DB8()
{
  result = qword_1EAF35310;
  if (!qword_1EAF35310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35310);
  }

  return result;
}

_BYTE *_s12DisplayEventV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1975E3EEC()
{
  result = qword_1EAF35318;
  if (!qword_1EAF35318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF35318);
  }

  return result;
}

unint64_t sub_1975E3F44()
{
  result = qword_1ED816248;
  if (!qword_1ED816248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816248);
  }

  return result;
}

unint64_t sub_1975E3F9C()
{
  result = qword_1ED816250;
  if (!qword_1ED816250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816250);
  }

  return result;
}

uint64_t sub_1975E3FF8(uint64_t a1)
{
  v1 = sub_197568F10(a1);
  sub_197579604(0x4449656C646E7562, 0xE800000000000000, v1);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1975E62E4(v4, &qword_1EAF34698);
  }

  return 0;
}

void sub_1975E40B0(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  CoreTipRecord.id.getter();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t sub_1975E40D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  OUTLINED_FUNCTION_18_0();
  return CoreTipRecord.id.setter();
}

uint64_t CoreTipRecord.id.setter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v0, v1);
  OUTLINED_FUNCTION_43_2();
  sub_197615B10();
}

uint64_t sub_1975E42E0(uint64_t a1, uint64_t *a2)
{
  sub_197615A60();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7, a1);
  v11 = *a2;
  return CoreTipRecord.dateCreated.setter(v9);
}

uint64_t CoreTipRecord.dateCreated.setter(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v2, v3);
  OUTLINED_FUNCTION_15_5();

  v4 = sub_197615A60();
  OUTLINED_FUNCTION_13(v4);
  return (*(v5 + 8))(a1);
}

uint64_t sub_1975E452C(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_0(a1);
  result = CoreTipRecord.content.getter(v2);
  *v1 = result;
  return result;
}

void sub_1975E4554(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  CoreTipRecord.content.setter(v2);
}

void CoreTipRecord.content.setter(void *a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v2, v3);
  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_1975E4620(uint64_t a1)
{
  sub_197568F10(a1);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_59(23, v1);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    result = OUTLINED_FUNCTION_31_5();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_1975E62E4(v4, &qword_1EAF34698);
    return 0;
  }

  return result;
}

uint64_t CoreTipRecord.__allocating_init(id:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_22_7();
  CoreTipRecord.init(id:)(v4, v5);
  return v3;
}

uint64_t sub_1975E4710()
{
  swift_getKeyPath();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197615E70();
}

uint64_t sub_1975E47C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1975E4710();
}

uint64_t (*CoreTipRecord.id.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  CoreTipRecord.id.getter();
  *a1 = v3;
  a1[1] = v4;
  return sub_1975E482C;
}

uint64_t sub_1975E482C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    OUTLINED_FUNCTION_22_7();
    CoreTipRecord.id.setter();
  }

  else
  {
    OUTLINED_FUNCTION_22_7();
    return CoreTipRecord.id.setter();
  }
}

uint64_t sub_1975E4898()
{
  swift_getKeyPath();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197560338(&qword_1ED816D90, MEMORY[0x1E6969530]);
  sub_197615E70();
}

uint64_t sub_1975E4970()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975E4898();
}

void (*CoreTipRecord.dateCreated.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_197615A60();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  CoreTipRecord.dateCreated.getter();
  return sub_1975E4A60;
}

void sub_1975E4A60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CoreTipRecord.dateCreated.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CoreTipRecord.dateCreated.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*CoreTipRecord.lastDisplayed.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  CoreTipRecord.lastDisplayed.getter(v6);
  return sub_1975E4BAC;
}

void sub_1975E4BAC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_19758110C(v3, v2);
    CoreTipRecord.lastDisplayed.setter(v2);
    sub_1975E62E4(v3, &qword_1EAF34988);
  }

  else
  {
    CoreTipRecord.lastDisplayed.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1975E4C2C()
{
  swift_getKeyPath();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197615DF0();
}

uint64_t sub_1975E4CCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975E4C2C();
}

void (*CoreTipRecord.content.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreTipRecord.content.getter(a1);
  return sub_1975E4D30;
}

void sub_1975E4D30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    CoreTipRecord.content.setter(v2);
  }

  else
  {
    CoreTipRecord.content.setter(*a1);
  }
}

uint64_t sub_1975E4D98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_19757A368();
}

uint64_t sub_1975E4DC4(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_16_0(a1);
  result = CoreTipRecord.rules.getter(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1975E4DEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CoreTipRecord.rules.setter();
}

uint64_t CoreTipRecord.rules.setter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v0, v1);
  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_1975E4EB8()
{
  swift_getKeyPath();
  type metadata accessor for CoreRuleRecord();
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197567D64();
  sub_197615E60();
}

uint64_t (*CoreTipRecord.rules.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CoreTipRecord.rules.getter(a1);
  return sub_1975E4FBC;
}

uint64_t sub_1975E4FBC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    CoreTipRecord.rules.setter();
  }

  else
  {
    v6 = *a1;
    return CoreTipRecord.rules.setter();
  }
}

uint64_t sub_1975E5014(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_0(a1);
  result = CoreTipRecord.status.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1975E503C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return CoreTipRecord.status.setter();
}

uint64_t (*CoreTipRecord.status.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = CoreTipRecord.status.getter();
  return sub_1975E50D4;
}

uint64_t sub_1975E50D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return CoreTipRecord.status.setter();
}

uint64_t (*CoreTipRecord.invalidationReason.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = CoreTipRecord.invalidationReason.getter();
  return sub_1975E5144;
}

uint64_t sub_1975E5144(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return CoreTipRecord.invalidationReason.setter();
}

unint64_t CoreTipRecord.description.getter()
{
  sub_197616A20();

  CoreTipRecord.id.getter();
  MEMORY[0x19A8E2A50]();

  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t *CoreTipRecord.init(id:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v3 = *v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_13(v31);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v30 - v7;
  v8 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v15 - v14;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35320, &qword_197620CD0);
  OUTLINED_FUNCTION_0_35();
  v19 = sub_197560338(v17, v18);
  v2[7] = OUTLINED_FUNCTION_15_3(v19);
  __swift_allocate_boxed_opaque_existential_0(v2 + 3);
  sub_197615DC0();
  sub_19756985C();
  sub_197615A50();
  v20 = v2[6];
  v21 = v2[7];
  OUTLINED_FUNCTION_71(v2 + 3);
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();
  sub_197560338(&qword_1ED816D90, v22);
  sub_197615BE0();

  (*(v10 + 8))(v16, v8);
  v23 = v30;
  OUTLINED_FUNCTION_36();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v8);
  v27 = v2[6];
  v28 = v2[7];
  OUTLINED_FUNCTION_71(v2 + 3);
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_9();
  sub_197569718();
  sub_197615BE0();

  sub_1975E62E4(v23, &qword_1EAF34988);
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_11_13();
  swift_getKeyPath();
  v34 = 0;
  OUTLINED_FUNCTION_17_11();

  OUTLINED_FUNCTION_11_13();
  swift_getKeyPath();
  v34 = 1;
  OUTLINED_FUNCTION_17_11();

  sub_197569928();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  sub_1976160B0();
  sub_1975699E4();
  sub_19756979C(v2 + 3, v2 + 18);
  sub_197615B30();
  CoreTipRecord.id.setter();
  return v2;
}

uint64_t sub_1975E558C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1975E4EB8();
}

uint64_t sub_1975E55A8(uint64_t a1, uint64_t *a2)
{
  sub_19755A560(a1, v5);
  v3 = *a2;
  return CoreTipRecord.persistentBackingData.setter(v5);
}

uint64_t (*CoreTipRecord.persistentBackingData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BADF8;
}

uint64_t sub_1975E5660(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_23_5(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CoreTipRecord.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC10TipKitCore13CoreTipRecord___observationRegistrar;
  v2 = sub_197615B40();
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

void sub_1975E5700(void *a1@<X8>)
{
  v3 = *v1;
  CoreTipRecord.id.getter();
  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_1975E5750(uint64_t a1, double a2)
{
  v18[7] = MEMORY[0x1E69E63B0];
  *&v18[4] = a2;
  sub_197568F10(a1);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_2_25(v7, v16);
  v9(v8);
  v10 = *v3;
  v11 = OUTLINED_FUNCTION_28_5();
  v12 = OUTLINED_FUNCTION_45(v11);
  sub_1975E6338(v12, v13, v14, v2, &v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return sub_19757A368();
}

uint64_t sub_1975E5838(uint64_t a1)
{
  sub_197568F10(a1);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_59(20, v1);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    if (OUTLINED_FUNCTION_38_2())
    {
      return v3;
    }
  }

  else
  {
    sub_1975E62E4(v4, &qword_1EAF34698);
  }

  return 0;
}

uint64_t sub_1975E58DC(uint64_t a1)
{
  v11[7] = MEMORY[0x1E69E6530];
  v11[4] = a1;
  sub_197568F10(a1);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_5_20();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_2_25(v5, v10);
  v7(v6);
  v8 = *v1;
  OUTLINED_FUNCTION_48();
  sub_19757B50C();
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return OUTLINED_FUNCTION_57();
}

void sub_1975E59BC()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_52(v8, v21);
  sub_197615A60();
  v9 = OUTLINED_FUNCTION_63();
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    v10 = sub_1975E62E4(v0, &qword_1EAF34988);
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v24 + 1) = v1;
    __swift_allocate_boxed_opaque_existential_0(&v23);
    OUTLINED_FUNCTION_18(v1);
    v10 = (*(v11 + 32))();
  }

  v12 = sub_197568F10(v10);
  if (*(&v24 + 1))
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_14();
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_6_0();
    v17 = OUTLINED_FUNCTION_62(v16);
    v18(v17);
    sub_197590034();
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    sub_1975E62E4(&v23, &qword_1EAF34698);
    sub_19755C610();
    if (v19)
    {
      OUTLINED_FUNCTION_63();
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v12 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68();
      sub_19756A94C((*(v12 + 56) - 0x5FFFF35273B2D320), v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      sub_197616C10();
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
    }

    sub_1975E62E4(v22, &qword_1EAF34698);
  }

  sub_19757A368();
  sub_1975E62E4(v3, &qword_1EAF34988);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_1975E5C70@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41_2();
  v8 = sub_197568F10(v7);
  sub_197579604(0xD000000000000012, 0x80000001976253E0, v8);

  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    sub_197615A60();
    v9 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_12_13(v1, v9 ^ 1u);
    if (!v10)
    {
      OUTLINED_FUNCTION_18(v8);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_18_0();
      v14(v13);
      return OUTLINED_FUNCTION_70();
    }
  }

  else
  {
    sub_1975E62E4(v20, &qword_1EAF34698);
    v16 = sub_197615A60();
    OUTLINED_FUNCTION_36();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  }

  sub_197615A60();
  result = OUTLINED_FUNCTION_12_13(a1, 1);
  if (!v10)
  {
    return sub_1975E62E4(v1, &qword_1EAF34988);
  }

  return result;
}

void sub_1975E5DE4()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_52(v8, v21);
  sub_197615A60();
  v9 = OUTLINED_FUNCTION_63();
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    v10 = sub_1975E62E4(v0, &qword_1EAF34988);
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v24 + 1) = v1;
    __swift_allocate_boxed_opaque_existential_0(&v23);
    OUTLINED_FUNCTION_18(v1);
    v10 = (*(v11 + 32))();
  }

  v12 = sub_197568F10(v10);
  if (*(&v24 + 1))
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_14();
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_6_0();
    (*(v18 + 16))(v17 - v16);
    sub_197590034();
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    sub_1975E62E4(&v23, &qword_1EAF34698);
    sub_19755C610();
    if (v19)
    {
      OUTLINED_FUNCTION_63();
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v12 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68();
      sub_19756A94C((*(v12 + 56) + 32 * v1), v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
      sub_197616C10();
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
    }

    sub_1975E62E4(v22, &qword_1EAF34698);
  }

  sub_19757A368();
  sub_1975E62E4(v3, &qword_1EAF34988);
  OUTLINED_FUNCTION_75();
}

uint64_t CoreTipRecord.hashValue.getter()
{
  v1 = *v0;
  sub_197617190();
  OUTLINED_FUNCTION_0_35();
  sub_197560338(v2, v3);
  sub_197616150();
  return sub_1976171F0();
}

uint64_t (*sub_1975E6130(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_19755A560(v1 + 24, v3);
  return sub_1975BC4D8;
}

uint64_t sub_1975E61D0()
{
  v1 = *v0;
  sub_197560338(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  return sub_197615E20();
}

uint64_t sub_1975E62E4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_23_5(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13(v5);
  (*(v6 + 8))(a1);
  return a1;
}

_OWORD *sub_1975E6338(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  *&v25 = a3;
  v8 = MEMORY[0x1E69E63B0];
  v26 = MEMORY[0x1E69E63B0];
  v9 = *a5;
  v10 = sub_19755C610();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D00, &unk_19761C4E0);
  if ((sub_197616BF0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *a5;
  v15 = sub_19755C610();
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *a5;
  if (v13)
  {
    v18 = (v17[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return sub_19756A94C(&v25, v18);
  }

  else
  {
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v8);
    v21 = *(*(v8 - 8) + 64);
    MEMORY[0x1EEE9AC00](v20);
    v23 = (&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    sub_1975E6694(v12, a1, a2, v17, *v23);
    __swift_destroy_boxed_opaque_existential_0Tm(&v25);
  }
}

_OWORD *sub_1975E6508(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x1E69E6370];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19756A94C(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1975E658C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x1E69E6530];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19756A94C(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1975E6610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_19756A94C(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_1975E6694(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x1E69E63B0];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19756A94C(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1975E6718(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35348, &qword_197620FD8);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_19756A94C(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_1975E67C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_19756A94C(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1975E689C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_19757A7D8();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return sub_197616BF0();
}

uint64_t sub_1975E6930(uint64_t a1, char a2)
{
  result = sub_19757E800(a1);
  if (result)
  {
    sub_1975A4200(a1, a2);
    v5 = sub_1975F0838(a2);
    return sub_1975A3D48(a1, v5);
  }

  return result;
}

uint64_t sub_1975E698C(uint64_t a1, char a2, char a3)
{
  result = sub_19757E800(a1);
  if (result)
  {
    if (a2)
    {
      if (a2 == 1 && !a3)
      {
        result = sub_1975A3D48(a1, 15);
      }
    }

    else if (a3 == 1)
    {
      result = sub_1975A4770(a1);
    }

    if (a2 != a3)
    {

      return sub_1975A4430(a1);
    }
  }

  return result;
}

void sub_1975E6A30()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_14(v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B08, &qword_19761B888);
  OUTLINED_FUNCTION_5_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B40, &unk_197622360);
  v15 = OUTLINED_FUNCTION_0(v14);
  v34 = v16;
  v35 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35350, &qword_197621208);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B10, &qword_19761B8B8);
  OUTLINED_FUNCTION_0(v20);
  v22 = *(v21 + 72);
  v23 = OUTLINED_FUNCTION_8_17();
  v24 = OUTLINED_FUNCTION_9_14(v23, xmmword_197618C10);
  v25(v24);
  sub_19755F9FC(v0, v13, &qword_1EAF34B08, &qword_19761B888);
  v26 = sub_197568080(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord);
  OUTLINED_FUNCTION_15_10();
  v46 = v1;
  v47 = v26;
  swift_getKeyPath();
  v48 = 1;
  v49 = 0;
  OUTLINED_FUNCTION_2_26();

  v44 = v1;
  v45 = v26;
  swift_getKeyPath();
  v48 = v29[1];
  v49 = v30 & 1;
  OUTLINED_FUNCTION_2_26();

  v42 = v1;
  v43 = v26;
  swift_getKeyPath();
  LOBYTE(v48) = v31;
  OUTLINED_FUNCTION_2_26();

  v40 = v1;
  v41 = v26;
  swift_getKeyPath();
  v48 = v32;

  OUTLINED_FUNCTION_2_26();

  v38 = v1;
  v39 = v26;
  swift_getKeyPath();
  v48 = v33;

  OUTLINED_FUNCTION_2_26();

  v36 = v1;
  v37 = v26;
  swift_getKeyPath();
  v48 = v23;
  OUTLINED_FUNCTION_2_26();

  OUTLINED_FUNCTION_13_14();
  v27 = OUTLINED_FUNCTION_10_17();
  v28(v27);
  if (!v26)
  {
    sub_1976087D4(v1);
  }

  OUTLINED_FUNCTION_19_0();
}

void sub_1975E6D50()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_14(v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC8, &unk_197622310);
  v15 = OUTLINED_FUNCTION_0(v14);
  v34 = v16;
  v35 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0(v20);
  v22 = *(v21 + 72);
  v23 = OUTLINED_FUNCTION_8_17();
  v24 = OUTLINED_FUNCTION_9_14(v23, xmmword_197618C10);
  v25(v24);
  sub_19755F9FC(v0, v13, &qword_1EAF34AC0, &qword_19761B6F0);
  v26 = sub_197568080(&qword_1ED817218, type metadata accessor for CoreEventRecord);
  OUTLINED_FUNCTION_15_10();
  v46 = v1;
  v47 = v26;
  swift_getKeyPath();
  v48 = 1;
  v49 = 0;
  OUTLINED_FUNCTION_2_26();

  v44 = v1;
  v45 = v26;
  swift_getKeyPath();
  v48 = v29[1];
  v49 = v30 & 1;
  OUTLINED_FUNCTION_2_26();

  v42 = v1;
  v43 = v26;
  swift_getKeyPath();
  LOBYTE(v48) = v31;
  OUTLINED_FUNCTION_2_26();

  v40 = v1;
  v41 = v26;
  swift_getKeyPath();
  v48 = v32;

  OUTLINED_FUNCTION_2_26();

  v38 = v1;
  v39 = v26;
  swift_getKeyPath();
  v48 = v33;

  OUTLINED_FUNCTION_2_26();

  v36 = v1;
  v37 = v26;
  swift_getKeyPath();
  v48 = v23;
  OUTLINED_FUNCTION_2_26();

  OUTLINED_FUNCTION_13_14();
  v27 = OUTLINED_FUNCTION_10_17();
  v28(v27);
  if (!v26)
  {
    sub_197595B38(v1);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975E7070(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v37 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_197618C10;
  (*(v20 + 16))(v23 + v22, a7, v19);
  sub_19755F9FC(a8, v14, &qword_1EAF346D8, &unk_197619120);
  v24 = sub_197568080(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  sub_197615D90();
  v48 = v8;
  v49 = v24;
  swift_getKeyPath();
  v50 = 1;
  v51 = 0;
  swift_setAtWritableKeyPath();

  v46 = v8;
  v47 = v24;
  swift_getKeyPath();
  v50 = v30;
  v51 = v31 & 1;
  swift_setAtWritableKeyPath();

  v44 = v8;
  v45 = v24;
  swift_getKeyPath();
  LOBYTE(v50) = v32;
  swift_setAtWritableKeyPath();

  v42 = v8;
  v43 = v24;
  swift_getKeyPath();
  v50 = v33;

  swift_setAtWritableKeyPath();

  v40 = v8;
  v41 = v24;
  swift_getKeyPath();
  v50 = v34;

  swift_setAtWritableKeyPath();

  v38 = v8;
  v39 = v24;
  KeyPath = swift_getKeyPath();
  v50 = v23;
  swift_setAtWritableKeyPath();

  v26 = v52;
  v27 = sub_197615C80();
  (*(v35 + 8))(v18, v36);
  if (!v26)
  {
    KeyPath = sub_19758761C(v27);
  }

  return KeyPath;
}

void sub_1975E74B8()
{
  OUTLINED_FUNCTION_20();
  v23[0] = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  OUTLINED_FUNCTION_5_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  OUTLINED_FUNCTION_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_197619030;
  *(v19 + 32) = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_30();
  sub_197568080(v20, v21);
  sub_197615640();
  v23[4] = v4;
  v23[5] = v2;
  sub_197615AE0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v22);
  sub_1975E7070(v23[0], 0, 1, 0, v19, MEMORY[0x1E69E7CC0], v18, v10);

  sub_19755C7C8(v10, &qword_1EAF346D8, &unk_197619120);
  (*(v13 + 8))(v18, v11);
  OUTLINED_FUNCTION_19_0();
}

void sub_1975E76FC()
{
  OUTLINED_FUNCTION_20();
  v24[2] = v2;
  v24[0] = v0;
  v24[1] = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_5();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  OUTLINED_FUNCTION_0(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v24 - v20;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_30();
  sub_197568080(v22, v23);
  sub_197615640();
  v24[6] = v7;
  v24[7] = v5;
  sub_197615AE0();
  sub_1975C71A8();
  (*(v10 + 8))(v1, v8);
  (*(v16 + 8))(v21, v14);
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1975E78E4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    if (!v6)
    {
      break;
    }

    --v6;
    v7 = *(sub_197615A60() - 8);
    v8 = a1(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v3)
    {
      break;
    }
  }

  while ((v8 & 1) == 0);
  return v6;
}

uint64_t sub_1975E79B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a4;
  v84 = a3;
  v88 = sub_197615A60();
  v6 = OUTLINED_FUNCTION_0(v88);
  v87 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v85 = v10 - v11;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v15 = OUTLINED_FUNCTION_5_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v83 = v18 - v19;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v24 = OUTLINED_FUNCTION_5_2(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  v33 = sub_197615F50();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v40 = &v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreTip();
  v41 = static CoreTip.modelIdentifiers.getter();
  v91 = a1;
  v92 = a2;
  sub_19756E674(a1, a2, v41);

  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_19755C404(v32, &qword_1EAF34AB8, &qword_197622080);
LABEL_7:
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_197616A20();

    v95 = 0xD000000000000012;
    v96 = 0x80000001976252F0;
    MEMORY[0x19A8E2A50](v91, v92);
    MEMORY[0x19A8E2A50](0xD000000000000016, 0x8000000197625500);
    v52 = v95;
    v53 = v96;
    sub_19759228C();
    swift_allocError();
    *v54 = v52;
    v54[1] = v53;
    return swift_willThrow();
  }

  (*(v36 + 32))(v40, v32, v33);
  (*(v36 + 16))(v29, v40, v33);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v33);
  OUTLINED_FUNCTION_9_15();
  sub_197584468();
  v46 = v45;
  v47 = v29;
  v48 = v46;
  v49 = sub_19755C404(v47, &qword_1EAF34AB8, &qword_197622080);
  v50 = v40;
  if (!v48)
  {
    (*(v36 + 8))(v40, v33);
    goto LABEL_7;
  }

  CoreTipRecord.lastDisplayed.getter(v49);
  v51 = v88;
  if (__swift_getEnumTagSinglePayload(v22, 1, v88))
  {
    sub_19755C404(v22, &qword_1EAF34988, &qword_197620CA0);
    goto LABEL_12;
  }

  v57 = v86;
  v56 = v87;
  (*(v87 + 16))(v86, v22, v51);
  sub_19755C404(v22, &qword_1EAF34988, &qword_197620CA0);
  sub_197615A00();
  *&v59 = -v58;
  v90 = v59;
  v60 = Double.seconds.getter(*&v59);
  sub_1975877EC(v60);
  sub_197617290();
  v51 = v88;
  sub_1976172B0();
  (*(v56 + 8))(v57, v51);
  if ((sub_1976172A0() & 1) == 0)
  {
LABEL_12:
    if (qword_1ED817510 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    swift_beginAccess();
    if (byte_1ED817549 == 1 || *(off_1ED817550 + 2) || (byte_1ED817558 & 1) != 0 || *(off_1ED817560 + 2) || byte_1ED817568)
    {
      (*(v36 + 8))(v50, v33);
    }

    v63 = *(v87 + 16);
    v64 = (v63)(v85, v84, v51);
    v65 = sub_197587914(v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v78 = *(v65 + 16);
      sub_1975BBEA4();
      v65 = v79;
    }

    v67 = *(v65 + 16);
    if (v67 >= *(v65 + 24) >> 1)
    {
      sub_1975BBEA4();
      v65 = v80;
    }

    *(v65 + 16) = v67 + 1;
    v68 = v88;
    (*(v87 + 32))(v65 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v67, v85, v88);
    sub_1975859D8();
    if (__OFADD__(sub_1975785C8(v69), 1))
    {
      __break(1u);
    }

    else
    {
      sub_197585DDC();
      KeyPath = swift_getKeyPath();
      v71 = v83;
      (v63)(v83, v84, v68);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v68);
      sub_19758781C(KeyPath, v71);

      sub_19755C404(v71, &qword_1EAF34988, &qword_197620CA0);
      v63 = v82;
      if (qword_1ED816C98 == -1)
      {
LABEL_26:
        v75 = type metadata accessor for logger();
        __swift_project_value_buffer(v75, qword_1ED816CA0);
        v93 = 0;
        v94 = 0xE000000000000000;
        sub_197616A20();

        v93 = 0x203A646928706954;
        v94 = 0xE800000000000000;
        MEMORY[0x19A8E2A50](v91, v92);
        v76 = MEMORY[0x19A8E2A50](0xD000000000000024, 0x8000000197625520);
        v97 = sub_1975785C8(v76);
        v77 = sub_197616E80();
        MEMORY[0x19A8E2A50](v77);

        sub_197558864();

        return (*(v36 + 8))(v63, v33);
      }
    }

    OUTLINED_FUNCTION_5_0();
    goto LABEL_26;
  }

  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v61 = type metadata accessor for logger();
  __swift_project_value_buffer(v61, qword_1ED816CA0);
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_197616A20();
  OUTLINED_FUNCTION_2_27();
  MEMORY[0x19A8E2A50](v91, v92);
  MEMORY[0x19A8E2A50](0xD000000000000011, 0x8000000197625550);
  v93 = _ss8DurationV10TipKitCoreE7secondsSivg_0();
  v62 = sub_197616E80();
  MEMORY[0x19A8E2A50](v62);

  MEMORY[0x19A8E2A50](0xD000000000000025, 0x8000000197625570);
  sub_197558864();

  return (*(v36 + 8))(v50, v33);
}

void sub_1975E8298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, double a7)
{
  LODWORD(v123) = a5;
  v120 = *&a4;
  v124 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v12 = OUTLINED_FUNCTION_5_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v121 = v15 - v16;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v17);
  v118 = v116 - v18;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v19);
  v119 = v116 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v22 = OUTLINED_FUNCTION_5_2(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v116 - v29;
  v31 = sub_197615F50();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v38 = v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for CoreTip();
  v39 = static CoreTip.modelIdentifiers.getter();
  v127 = a1;
  v40 = a1;
  v41 = a2;
  sub_19756E674(v40, a2, v39);

  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_19755C404(v30, &qword_1EAF34AB8, &qword_197622080);
LABEL_14:
    v131 = 0;
    v132 = 0xE000000000000000;
    sub_197616A20();

    v131 = 0xD000000000000012;
    v132 = 0x80000001976252F0;
    MEMORY[0x19A8E2A50](v127, a2);
    MEMORY[0x19A8E2A50](0xD000000000000019, 0x8000000197625460);
    v50 = v131;
    v51 = v132;
    sub_19759228C();
    swift_allocError();
    *v52 = v50;
    v52[1] = v51;
    swift_willThrow();
    return;
  }

  (*(v34 + 32))(v38, v30, v31);
  (*(v34 + 16))(v27, v38, v31);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v31);
  OUTLINED_FUNCTION_9_15();
  sub_197584468();
  v46 = v45;
  sub_19755C404(v27, &qword_1EAF34AB8, &qword_197622080);
  if (!v46)
  {
    (*(v34 + 8))(v38, v31);
    goto LABEL_14;
  }

  v47 = a6;
  v48 = v46;
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  swift_beginAccess();
  v49 = v125;
  if (byte_1ED817549 == 1 || *(off_1ED817550 + 2) || (byte_1ED817558 & 1) != 0 || *(off_1ED817560 + 2) || byte_1ED817568)
  {
    (*(v34 + 8))(v38, v31);
LABEL_12:

    return;
  }

  v53 = OUTLINED_FUNCTION_12_14();
  v54 = OUTLINED_FUNCTION_12_14();
  v116[1] = v34;
  v117 = v47;
  v116[0] = v38;
  if (v55 / 1.0e18 + v53 <= a7)
  {
    goto LABEL_20;
  }

  v56 = sub_197587914(v54);
  MEMORY[0x1EEE9AC00](v56);
  v57 = v124;
  v116[-2] = v124;
  v58 = sub_1975F73D8(sub_1975E8E60, &v116[-4], v56);
  v125 = v49;

  if (!v58)
  {
    v49 = v125;
    v48 = v46;
LABEL_20:
    v67 = OUTLINED_FUNCTION_12_14();
    v68 = OUTLINED_FUNCTION_12_14();
    v70 = v41;
    v71 = v127;
    if (v69 / 1.0e18 + v67 <= a7)
    {
      v72 = sub_19757F490(v68);
      sub_1975E5750(v73, v72 + a7);
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v74 = type metadata accessor for logger();
      __swift_project_value_buffer(v74, qword_1ED816CA0);
      OUTLINED_FUNCTION_4_31();
      sub_197616A20();
      OUTLINED_FUNCTION_2_27();
      MEMORY[0x19A8E2A50](v71, v41);
      v75 = MEMORY[0x19A8E2A50](0xD00000000000001CLL, 0x80000001976254A0);
      sub_19757F490(v75);
      sub_1976166C0();
      sub_197558864();
    }

    if ((v123 & 1) == 0)
    {
      v76 = v120;
      if (sub_19757F490(v68) >= v76)
      {
        v68 = sub_1975E92FC(9);
        if (v49)
        {
          goto LABEL_41;
        }
      }
    }

    v77 = sub_1975785C8(v68);
    v78 = sub_19757F6B4(v77);
    if (v77 >= v78)
    {
      v78 = sub_1975E92FC(4);
      v79 = v124;
      if (v49)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v79 = v124;
    }

    v80 = sub_1975879D8(v78);
    if (v80)
    {
      if (qword_1ED816B18 != -1)
      {
        v80 = swift_once();
      }

      if (qword_1ED81D1C0)
      {
        v80 = sub_197613860(v71, v41);
      }
    }

    v81 = sub_19757E800(v80);
    if (v81 & 1) != 0 && (sub_19757E800(v81))
    {
      sub_1975A3CEC(v48);
    }

    v82 = v121;
    sub_19757E684(v121);
    v83 = sub_197615A60();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, 1, v83);
    sub_19755C404(v82, &qword_1EAF34988, &qword_197620CA0);
    if (EnumTagSinglePayload == 1)
    {
      sub_1975EA4C4(v71, v70, v79, v117);
      if (v49)
      {
        goto LABEL_41;
      }

      v126 = v48;
    }

    else
    {
      v126 = v48;
    }

    v98 = v70;
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    v108 = type metadata accessor for logger();
    __swift_project_value_buffer(v108, qword_1ED816CA0);
    OUTLINED_FUNCTION_4_31();
    sub_197616A20();

    v129 = 0x203A646928706954;
    v130 = 0xE800000000000000;
    MEMORY[0x19A8E2A50](v71, v70);
    MEMORY[0x19A8E2A50](0xD000000000000012, 0x8000000197625480);
LABEL_54:
    sub_197558864();

    v109 = static CoreTip.tips.getter();
    v110 = sub_197580F6C(v71, v98, v109);

    if (v110)
    {
      v112 = sub_19757F490(v111);
      sub_1975D53DC(v112);

      v113 = OUTLINED_FUNCTION_3_28();
      v114(v113);
      return;
    }

LABEL_41:
    v85 = OUTLINED_FUNCTION_3_28();
    v86(v85);
    goto LABEL_12;
  }

  v123 = v116;
  v60 = MEMORY[0x1EEE9AC00](v59);
  v116[-2] = v57;
  v126 = v46;
  v61 = sub_197587914(v60);
  v62 = v125;
  v63 = sub_1975E78E4(sub_1975E8E80, &v116[-4], v61);
  if (v64)
  {
    v65 = sub_197615A60();
    v66 = v119;
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v65);
    goto LABEL_47;
  }

  v87 = v63;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1975E8DEC(v61);
    v61 = v115;
  }

  v125 = v62;
  v88 = *(v61 + 16);
  if (v87 < v88)
  {
    v89 = v88 - 1;
    v90 = sub_197615A60();
    v91 = *(v90 - 8);
    v92 = *(v91 + 72);
    v93 = v61 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + v92 * v87;
    v94 = v87;
    v66 = v119;
    (*(v91 + 32))(v119, v93, v90);
    sub_1975BC360(v93 + v92, v89 - v94, v93);
    *(v61 + 16) = v89;
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v90);
LABEL_47:
    v98 = v41;
    sub_19755C404(v66, &qword_1EAF34988, &qword_197620CA0);
    sub_1975859D8();
    v100 = sub_1975785C8(v99);
    v71 = v127;
    if (__OFSUB__(v100, 1))
    {
      __break(1u);
    }

    else
    {
      sub_197585DDC();
      KeyPath = swift_getKeyPath();
      v102 = sub_197587914(KeyPath);
      v103 = v118;
      sub_1975A0E9C(v102, v118);

      sub_19758781C(KeyPath, v103);

      sub_19755C404(v103, &qword_1EAF34988, &qword_197620CA0);
      if (qword_1ED816C98 == -1)
      {
LABEL_49:
        v104 = type metadata accessor for logger();
        __swift_project_value_buffer(v104, qword_1ED816CA0);
        OUTLINED_FUNCTION_4_31();
        sub_197616A20();
        OUTLINED_FUNCTION_2_27();
        MEMORY[0x19A8E2A50](v71, v41);
        MEMORY[0x19A8E2A50](0xD00000000000001ALL, 0x80000001976254C0);
        v105 = sub_197617280();
        MEMORY[0x19A8E2A50](v105);

        v106 = MEMORY[0x19A8E2A50](0xD00000000000001ELL, 0x80000001976254E0);
        v128 = sub_1975785C8(v106);
        v107 = sub_197616E80();
        MEMORY[0x19A8E2A50](v107);

        goto LABEL_54;
      }
    }

    OUTLINED_FUNCTION_5_0();
    goto LABEL_49;
  }

  __break(1u);
}

uint64_t sub_1975E8E00()
{
  sub_197615A60();
  sub_1975E8EB0();
  return sub_1976161A0() & 1;
}

unint64_t sub_1975E8EB0()
{
  result = qword_1ED8167B8;
  if (!qword_1ED8167B8)
  {
    sub_197615A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8167B8);
  }

  return result;
}

unint64_t sub_1975E8F08()
{
  result = qword_1ED8157A0;
  if (!qword_1ED8157A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35360, &qword_1976213F0);
    sub_1975826D0();
    sub_19758275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8157A0);
  }

  return result;
}

void *sub_1975E8F94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1975BC0A4(*(a1 + 16), 0);
  sub_1975EA294();
  v4 = v3;
  sub_1975A4D3C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1975E9024(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27[-v10];
  v12 = sub_197615F50();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v27[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CoreTip();
  v20 = static CoreTip.modelIdentifiers.getter();
  sub_19756E674(a1, a2, v20);

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_19756E748(v11);
  }

  else
  {
    (*(v15 + 32))(v19, v11, v12);
    (*(v15 + 16))(v9, v19, v12);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
    OUTLINED_FUNCTION_9_15();
    sub_197584468();
    v22 = v21;
    sub_19756E748(v9);
    if (v22)
    {
      sub_1975E92FC(v28);
      (*(v15 + 8))(v19, v12);
    }

    (*(v15 + 8))(v19, v12);
  }

  OUTLINED_FUNCTION_1_10();
  sub_197616A20();

  v29 = 0xD000000000000025;
  v30 = 0x8000000197625670;
  MEMORY[0x19A8E2A50](a1, a2);
  MEMORY[0x19A8E2A50](41, 0xE100000000000000);
  v24 = v29;
  v25 = v30;
  sub_19759228C();
  swift_allocError();
  *v26 = v24;
  v26[1] = v25;
  return swift_willThrow();
}

uint64_t sub_1975E92FC(uint64_t a1)
{
  v3 = a1;
  v4 = *v1;
  if (a1 == 3)
  {
    v5 = sub_1975E5838(a1);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_5_0();
LABEL_12:
      v14 = type metadata accessor for logger();
      __swift_project_value_buffer(v14, qword_1ED816CA0);
      sub_197616A20();
      MEMORY[0x19A8E2A50](0x203A646928706954, 0xE800000000000000);
      CoreTipRecord.id.getter();
      MEMORY[0x19A8E2A50]();

      MEMORY[0x19A8E2A50](0xD00000000000001BLL, 0x80000001976255E0);
      sub_197616BC0();
      sub_197558864();

      goto LABEL_13;
    }

    sub_1975E58DC(v7);
    result = sub_197615C20();
    if (result)
    {
      result = sub_197615C70();
      if (v2)
      {
        return result;
      }
    }

    if (sub_19757E800(result))
    {
      sub_1975A410C(v1);
    }
  }

  if (CoreTipRecord.status.getter() != 2)
  {
    CoreTipRecord.status.setter();
    CoreTipRecord.invalidationReason.setter();
    type metadata accessor for CoreTip();
    CoreTipRecord.id.getter();
    v10 = v9;
    v12 = v11;
    v13 = CoreTipRecord.status.getter();
    sub_19757EBE4(v10, v12, v13, v3);

    if (sub_197615C20())
    {
      result = sub_197615C70();
      if (v2)
      {
        return result;
      }
    }

    result = sub_1975E6930(v1, v3);
    if (v2)
    {
      return result;
    }

    if (qword_1ED816C98 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (sub_197592490())
  {
    v15 = [objc_opt_self() standardUserDefaults];
    CoreTipRecord.id.getter();
    sub_1975E9D50(0xD000000000000016, 0x8000000197625600, v16, v17, sub_1975EA398);
  }

  type metadata accessor for CoreTip();
  CoreTipRecord.id.getter();
  v19 = v18;
  v21 = v20;
  v22 = static CoreTip.tips.getter();
  v23 = sub_197580F6C(v19, v21, v22);

  if (v23)
  {
    sub_19757FF94();
  }

  return result;
}

uint64_t sub_1975E9648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v46 - v12;
  v14 = sub_197615F50();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreTip();
  v22 = *(a4 + 32);
  v49 = a3;
  v50 = a1;
  v53 = a4;
  v47 = v22;
  v48 = a4 + 32;
  v23 = v22(a3, a4);
  v25 = v24;
  v26 = static CoreTip.modelIdentifiers.getter();
  sub_19756E674(v23, v25, v26);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_19756E748(v13);
LABEL_8:
    v33 = v53;
    OUTLINED_FUNCTION_1_10();
    sub_197616A20();

    v51 = 0xD000000000000020;
    v52 = 0x8000000197625620;
    v34 = v47(v49, v33);
    MEMORY[0x19A8E2A50](v34);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v35 = v51;
    v36 = v52;
    sub_19759228C();
    swift_allocError();
    *v37 = v35;
    v37[1] = v36;
    return swift_willThrow();
  }

  (*(v17 + 32))(v21, v13, v14);
  (*(v17 + 16))(v11, v21, v14);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  OUTLINED_FUNCTION_9_15();
  sub_197584468();
  v28 = v27;
  sub_19756E748(v11);
  if (!v28)
  {
    v31 = OUTLINED_FUNCTION_7_16();
    v32(v31);
    goto LABEL_8;
  }

  if (CoreTipRecord.status.getter() == 2)
  {
    v29 = v46[1];
    sub_1975E9ADC();
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_7_16();
      v42(v30, v41);
    }

    else
    {
      v40 = v49;
      sub_1975782A0();
      if (qword_1ED816C98 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v44 = type metadata accessor for logger();
      __swift_project_value_buffer(v44, qword_1ED816CA0);
      OUTLINED_FUNCTION_1_10();
      sub_197616A20();

      v51 = 0x203A646928706954;
      v52 = 0xE800000000000000;
      v45 = v47(v40, v53);
      MEMORY[0x19A8E2A50](v45);

      MEMORY[0x19A8E2A50](0xD000000000000012, 0x8000000197625650);
      sub_197558864();

      return (*(v17 + 8))(v21, v14);
    }
  }

  else
  {
    v38 = OUTLINED_FUNCTION_7_16();
    v39(v38);
  }
}

void sub_1975E9ADC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - v2;
  CoreTipRecord.status.setter();
  CoreTipRecord.invalidationReason.setter();
  sub_197585DDC();
  sub_1975E5750(v4, 0.0);
  sub_1975E58DC(0);
  v5 = sub_197615A60();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  sub_1975E59BC();
  if (qword_1ED816850 != -1)
  {
    swift_once();
  }

  if (qword_1ED81D1D0)
  {

    CoreTipRecord.id.getter();
    OUTLINED_FUNCTION_11_15();
    v6 = sub_19758D0A4();

    if (v6)
    {
      CoreTipRecord.id.getter();
      OUTLINED_FUNCTION_11_15();
      sub_1975EC474();
    }

    else
    {
    }
  }

  if (qword_1ED816B18 != -1)
  {
    swift_once();
  }

  if (qword_1ED81D1C0)
  {

    CoreTipRecord.id.getter();
    OUTLINED_FUNCTION_11_15();
    v9 = sub_19758BA90(v7, v8);

    if (v9)
    {
      CoreTipRecord.id.getter();
      OUTLINED_FUNCTION_11_15();
      sub_1976139C4();
    }

    else
    {
    }
  }

  if (sub_197592490())
  {
    v10 = [objc_opt_self() standardUserDefaults];
    CoreTipRecord.id.getter();
    sub_1975E9D50(0xD000000000000016, 0x8000000197625600, v11, v12, sub_1975EA3A0);
  }
}

void sub_1975E9D84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  sub_1975578B4();
  if (!v5)
  {
    v5 = sub_197589344(MEMORY[0x1E69E7CC0]);
  }

  v8 = v5;
  a3(&v8);
  sub_1975E8F94(v8);
  v6 = sub_197616450();

  v7 = sub_1976161B0();
  [v3 setObject:v6 forKey:v7];
}

uint64_t sub_1975E9E58(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_197575220(&v6, a2, a3);
}

uint64_t sub_1975E9EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19761479C(a2, a3);
}

void *sub_1975E9F00(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
    OUTLINED_FUNCTION_9_16();
LABEL_21:
    *result = a4;
    result[1] = v5;
    result[2] = ~v6;
    result[3] = v11;
    result[4] = v8;
    return v4;
  }

  v4 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v6) >> 6;
    while (1)
    {
      if (v10 >= v4)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v8)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v8 = 0;
            v4 = v10;
            goto LABEL_19;
          }

          v8 = *(v5 + 8 * v14);
          ++v11;
          if (v8)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v14 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1975586C0(*(a4 + 56) + 32 * v16, &v26);
      *&v25 = v19;
      *(&v25 + 1) = v20;
      v22 = v26;
      v21 = v27;
      v29 = v26;
      v30 = v27;
      v28 = v25;
      *v9 = v25;
      v9[1] = v22;
      v9[2] = v21;
      if (v13 == v4)
      {
        break;
      }

      v9 += 3;

      v10 = v13;
      v11 = v14;
      a4 = v17;
    }

    v11 = v14;
    a4 = v17;
LABEL_19:
    v6 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1975EA098()
{
  OUTLINED_FUNCTION_6_15();
  v5 = *(v1 + 64);
  v4 = v1 + 64;
  v6 = *(v4 - 32);
  OUTLINED_FUNCTION_0_36();
  if (!v8)
  {
    OUTLINED_FUNCTION_9_16();
LABEL_17:
    OUTLINED_FUNCTION_2_28(v10);
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_35();
    while (v11 < v9)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v13 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v13);
          ++v10;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v10;
LABEL_12:
      OUTLINED_FUNCTION_3_29();
      if (v14)
      {

        v10 = v13;
        goto LABEL_17;
      }

      v0 += 16;

      v11 = v12;
      v10 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1975EA184()
{
  OUTLINED_FUNCTION_6_15();
  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = *(v5 - 32);
  OUTLINED_FUNCTION_0_36();
  if (!v9)
  {
    OUTLINED_FUNCTION_9_16();
LABEL_17:
    OUTLINED_FUNCTION_2_28(v11);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_35();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v14);
          ++v11;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      v15 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      *v1 = *(*(v0 + 56) + ((v14 << 9) | (8 * v15)));
      if (v13 == v10)
      {

        v11 = v14;
        goto LABEL_17;
      }

      ++v1;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1975EA294()
{
  OUTLINED_FUNCTION_6_15();
  v5 = *(v1 + 56);
  v4 = v1 + 56;
  v6 = *(v4 - 24);
  OUTLINED_FUNCTION_0_36();
  if (!v8)
  {
    OUTLINED_FUNCTION_9_16();
LABEL_17:
    OUTLINED_FUNCTION_2_28(v10);
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_35();
    while (v11 < v9)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v13 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v13);
          ++v10;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v10;
LABEL_12:
      OUTLINED_FUNCTION_3_29();
      if (v14)
      {

        v10 = v13;
        goto LABEL_17;
      }

      v0 += 16;

      v11 = v12;
      v10 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1975EA3A8(uint64_t a1)
{
  result = sub_19757F9B4(a1);
  if ((result & 1) == 0)
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v2 = type metadata accessor for logger();
    __swift_project_value_buffer(v2, qword_1ED816CA0);
    sub_197616A20();

    OUTLINED_FUNCTION_9_12();
    CoreTipRecord.id.getter();
    MEMORY[0x19A8E2A50](v3, v4);

    MEMORY[0x19A8E2A50](0x7261207361772029, 0xEE00646576696863);
    sub_197558864();

    return sub_19757A548(1);
  }

  return result;
}

uint64_t sub_1975EA4C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v57 = a4;
  v53 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v20 = sub_197615F50();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreTip();
  v25 = static CoreTip.modelIdentifiers.getter();
  v63 = a1;
  sub_19756E674(a1, a2, v25);

  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_19755C404(v19, &qword_1EAF34AB8, &qword_197622080);
LABEL_8:
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_197616A20();

    v61 = 0xD000000000000023;
    v62 = 0x80000001976256A0;
    v34 = OUTLINED_FUNCTION_8_19();
    MEMORY[0x19A8E2A50](v34);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v35 = v61;
    v36 = v62;
    sub_19759228C();
    swift_allocError();
    *v37 = v35;
    v37[1] = v36;
    return swift_willThrow();
  }

  (*(v21 + 32))(v24, v19, v20);
  (*(v21 + 16))(v17, v24, v20);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v20);
  sub_197584468();
  v27 = v26;
  sub_19755C404(v17, &qword_1EAF34AB8, &qword_197622080);
  if (!v27)
  {
    (*(v21 + 8))(v24, v20);
    goto LABEL_8;
  }

  v52 = v20;
  v57 = v24;
  v58 = v21;
  v28 = static CoreTip.tips.getter();
  v29 = OUTLINED_FUNCTION_8_19();
  v31 = sub_197580F6C(v29, v30, v28);

  if (!v31)
  {
    v33 = sub_197615A60();
    v32 = v56;
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v33);
LABEL_10:
    sub_19755C404(v32, &qword_1EAF34988, &qword_197620CA0);
    v39 = v55;
    sub_19757E684(v55);
    sub_197615A60();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v33);
    sub_19755C404(v39, &qword_1EAF34988, &qword_197620CA0);
    if (EnumTagSinglePayload == 1)
    {
      if (qword_1ED817510 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      swift_beginAccess();
      if ((byte_1ED817549 & 1) == 0 && !*(off_1ED817550 + 2) && (byte_1ED817558 & 1) == 0 && !((*(off_1ED817560 + 2) != 0) | byte_1ED817568 & 1))
      {
        v46 = v54;
        (*(*(v33 - 8) + 16))(v54, v53, v33);
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v33);
        sub_1975E59BC();
        if (qword_1ED816C98 != -1)
        {
          OUTLINED_FUNCTION_3_2();
          swift_once();
        }

        v47 = type metadata accessor for logger();
        __swift_project_value_buffer(v47, qword_1ED816CA0);
        v59 = 0;
        v60 = 0xE000000000000000;
        sub_197616A20();

        OUTLINED_FUNCTION_9_12();
        v59 = v48;
        v60 = v49;
        v50 = OUTLINED_FUNCTION_8_19();
        MEMORY[0x19A8E2A50](v50);
        MEMORY[0x19A8E2A50](0xD000000000000018, 0x80000001976256D0);
        sub_197558864();
      }
    }

    goto LABEL_14;
  }

  v32 = v56;
  sub_19758117C(v56);

  v33 = sub_197615A60();
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    goto LABEL_10;
  }

  sub_19755C404(v32, &qword_1EAF34988, &qword_197620CA0);
LABEL_14:
  v41 = static CoreTip.tips.getter();
  v42 = OUTLINED_FUNCTION_8_19();
  v44 = sub_197580F6C(v42, v43, v41);

  if (v44)
  {
    v45 = v54;
    sub_19757E684(v54);
    sub_197587A7C(v45);

    return (*(v58 + 8))(v57, v52);
  }

  else
  {
    (*(v58 + 8))(v57, v52);
  }
}

void sub_1975EAB60()
{
  v2 = v1;
  v3 = *v0;
  sub_19755FF40(&qword_1ED8170E0, type metadata accessor for CoreTipRecord);
  if ((sub_197615E90() & 1) == 0)
  {
    if (sub_19757649C())
    {

      sub_1975D3A98();
    }

    type metadata accessor for CoreRule();
    v4 = sub_19757536C();
    CoreRuleRecord.id.getter();
    v7 = sub_19757F524(v5, v6, v4);

    if (v7)
    {
      CoreRuleRecord.id.getter();
      v10 = v9;
      v12 = v11;
      v33 = sub_19757536C();
      sub_19761479C(v10, v12);

      sub_19757AAD8(v33);
    }

    v13 = sub_1975D3C58(v8);
    if (v13)
    {
      v14 = v13;
      v15 = sub_197567E4C(v13);
      if (v15)
      {
        v16 = v15;
        v34 = MEMORY[0x1E69E7CC0];
        sub_197553D0C();
        if (v16 < 0)
        {
LABEL_38:
          __break(1u);
          return;
        }

        v17 = 0;
        v18 = v34;
        v32 = v14 & 0xC000000000000001;
        v19 = v14;
        do
        {
          if (v32)
          {
            MEMORY[0x19A8E31E0](v17, v14);
          }

          else
          {
            v20 = *(v14 + 8 * v17 + 32);
          }

          CoreRuleRecord.id.getter();
          v22 = v21;
          v24 = v23;

          v25 = *(v34 + 16);
          if (v25 >= *(v34 + 24) >> 1)
          {
            sub_197553D0C();
          }

          ++v17;
          *(v34 + 16) = v25 + 1;
          v26 = v34 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v24;
          v14 = v19;
        }

        while (v16 != v17);

        v2 = v1;
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
      }

      if (*(v18 + 16))
      {
        v35 = sub_19757536C();
        sub_1975EAF40(v18);

        sub_19757AAD8(v35);
      }

      else
      {
      }
    }

    v27 = sub_1975D3C58(v13);
    if (!v27)
    {
LABEL_33:
      sub_1975FF5C0();
      return;
    }

    v28 = v27;
    v29 = sub_197567E4C(v27);
    for (i = 0; ; ++i)
    {
      if (v29 == i)
      {

        goto LABEL_33;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8E31E0](i, v28);
      }

      else
      {
        if (i >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v31 = *(v28 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      type metadata accessor for CoreRuleRecord();
      sub_19755FF40(&qword_1ED817280, type metadata accessor for CoreRuleRecord);
      if ((sub_197615E90() & 1) == 0)
      {
        sub_1975FF5C0();
        if (v2)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }
}

uint64_t sub_1975EAF40(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_19761479C(v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1975EAFB0(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v4 = *(v1 + 16);
  sub_1975EAB60();
}

uint64_t *sub_1975EB024(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = *v4;
  sub_19755FF40(a3, a4);
  if (sub_197615DD0())
  {

    swift_setAtReferenceWritableKeyPath();
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v6 = 0xD000000000000036;
    v6[1] = 0x8000000197625740;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1975EB128()
{
  OUTLINED_FUNCTION_5_22();
  type metadata accessor for CoreTip();
  v0 = sub_197580E74();
  CoreTipRecord.id.getter();
  if (!*(v0 + 16))
  {

    goto LABEL_5;
  }

  OUTLINED_FUNCTION_6_17();
  v1 = sub_19755C610();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
LABEL_5:

    v4 = 4;
    goto LABEL_6;
  }

  v4 = *(*(v0 + 56) + 2 * v1);

LABEL_6:
  result = CoreTipRecord.status.getter();
  if (v4 == 4 || v4 != result)
  {
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    v6 = type metadata accessor for logger();
    __swift_project_value_buffer(v6, qword_1ED816CA0);
    sub_197616A20();
    OUTLINED_FUNCTION_4_32();
    CoreTipRecord.id.getter();
    MEMORY[0x19A8E2A50]();

    OUTLINED_FUNCTION_13_12();
    MEMORY[0x19A8E2A50](0xD000000000000028);
    v7 = sub_197580E74();
    CoreTipRecord.id.getter();
    if (*(v7 + 16))
    {
      v8 = sub_19755C610();
      v10 = v9;

      if (v10)
      {
        v11 = *(*(v7 + 56) + 2 * v8);

        goto LABEL_15;
      }
    }

    else
    {
    }

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35388, &qword_197621440);
    v12 = sub_197616200();
    MEMORY[0x19A8E2A50](v12);

    OUTLINED_FUNCTION_8_20();
    CoreTipRecord.status.getter();
    sub_197616BC0();
    OUTLINED_FUNCTION_6_17();
    sub_197558864();

    CoreTipRecord.id.getter();
    v14 = v13;
    v16 = v15;
    v17 = CoreTipRecord.status.getter();
    v18 = CoreTipRecord.invalidationReason.getter();
    sub_19757EBE4(v14, v16, v17, v18);

    CoreTipRecord.id.getter();
    v20 = v19;
    v22 = v21;
    v23 = static CoreTip.tips.getter();
    v24 = sub_197580F6C(v20, v22, v23);

    if (v24)
    {
      sub_19757FF94();
    }
  }

  return result;
}

uint64_t sub_1975EB408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (!*(a2 + 16))
  {
    return sub_197577DBC(2);
  }

  result = sub_1975D3C58(a1);
  if (result)
  {
    v14 = result;
    MEMORY[0x1EEE9AC00](result);
    v15[2] = a5;
    v15[3] = a6;
    v15[4] = a2;
    v15[5] = v7;
    v15[6] = a3;
    v15[7] = a4;
    sub_197576710(sub_1975EB6B4, v15, v14);
  }

  return result;
}

uint64_t sub_1975EB4F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v9 = *a1;
  v10 = *(a2 + 16);
  v11 = a2 + 32;
  if (v10)
  {
    while (1)
    {
      sub_19755A560(v11, &v25);
      v12 = v26;
      v13 = v27;
      __swift_project_boxed_opaque_existential_1Tm(&v25, v26);
      v14 = (*(v13 + 24))(v12, v13);
      v16 = v15;
      CoreRuleRecord.id.getter();
      if (v14 == v18 && v16 == v17)
      {
        break;
      }

      v20 = sub_197616EF0();

      if (v20)
      {
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v25);
      v11 += 40;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    sub_1975558C4(&v25, v28);
    v21 = v29;
    v22 = v30;
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    (*(v22 + 40))(&v31, v21, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    if (*(&v32 + 1))
    {
      sub_1975558C4(&v31, v34);
      sub_197576F6C(v9, v34, a4, a5, a6, v35);
      return __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }
  }

  else
  {
LABEL_8:
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  return sub_197577AD0(&v31);
}

uint64_t Date.subtracting(_:)()
{
  return _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
}

{
  OUTLINED_FUNCTION_4_33();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();

  return _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
}

uint64_t Date.adding(_:)()
{
  OUTLINED_FUNCTION_4_33();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();
  _ss8DurationV10TipKitCoreE7secondsSivg_0();

  return _s10Foundation4DateV10TipKitCoreE6addingyACSdF_0();
}

uint64_t Date.durationUntilNow.getter()
{
  sub_197615A00();
  v1 = Double.seconds.getter(-v0);
  v2 = sub_1975877EC(v1);
  OUTLINED_FUNCTION_0_38(v10, v2, v3, v4, v5, v6, v7, v8, v9, v11);
  sub_197617290();
  OUTLINED_FUNCTION_2_31();

  return sub_1976172B0();
}

uint64_t Date.durationSinceNow.getter()
{
  sub_197615A00();
  v1 = Double.seconds.getter(v0);
  v2 = sub_1975877EC(v1);
  OUTLINED_FUNCTION_0_38(v10, v2, v3, v4, v5, v6, v7, v8, v9, v11);
  sub_197617290();
  OUTLINED_FUNCTION_2_31();

  return sub_1976172B0();
}

uint64_t static Date.epoch.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED816488 != -1)
  {
    swift_once();
  }

  v2 = sub_197615A60();
  v3 = __swift_project_value_buffer(v2, qword_1ED816490);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static Date.byAdding(calendarComponent:count:to:)()
{
  OUTLINED_FUNCTION_4_33();
  v1 = sub_197615AA0();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_37();
  sub_197615A80();
  return (*(v4 + 8))(v0, v1);
}

uint64_t static Date.bySubtracting(calendarComponent:count:to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_33();
  v4 = sub_197615AA0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  result = OUTLINED_FUNCTION_1_37();
  if (a2 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    sub_197615A80();
    return (*(v7 + 8))(v2, v4);
  }

  return result;
}

uint64_t sub_1975EBB28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, char *, void, void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a2;
  v27 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v26 - v11);
  v13 = *(v10 + 48);
  v14 = (&v26 + *(v10 + 64) - v11);
  *v12 = sub_197615F80();
  v12[1] = v15;
  v16 = sub_197615D10();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v12 + v13, a1, v16);
  *v14 = sub_197615F60();
  v14[1] = v18;
  sub_1975EBD48(v12, v9);
  v19 = *(v5 + 48);
  v20 = v30;
  v21 = v29(*v9, *(v9 + 1), &v9[v19], *&v9[*(v5 + 64)], *&v9[*(v5 + 64) + 8]);
  v30 = v20;
  if (v20)
  {
    sub_1975EBDB8(v12);

    return (*(v17 + 8))(&v9[v19], v16);
  }

  else
  {
    v23 = v21;

    (*(v17 + 8))(&v9[v19], v16);
    if (v23)
    {
      v24 = v27;
      sub_1975EBE20(v12, v27);
      v25 = 0;
    }

    else
    {
      sub_1975EBDB8(v12);
      v25 = 1;
      v24 = v27;
    }

    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v5);
  }
}

uint64_t sub_1975EBD48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1975EBDB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1975EBE20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DeviceProfile.subscript.getter(void *a1)
{
  v2 = *(*(*(*a1 + *MEMORY[0x1E69E77B0]) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  sub_19758C664(v1 + v6, v5);
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_0_32();
  return sub_19758CA58(v5, v7);
}

uint64_t sub_1975EBF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35260, &qword_1976202C8);
  OUTLINED_FUNCTION_5_2(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_9();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_5_2(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = sub_197615A60();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v24 = v23 - v22;
  v25 = v4 + OBJC_IVAR____TtC10TipKitCore13DeviceProfile_content;
  OUTLINED_FUNCTION_35();
  swift_beginAccess();
  v26 = type metadata accessor for DeviceProfile.ProfileContent();
  v27 = v25 + *(v26 + 36);
  v28 = _s12DisplayEventVMa();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);
  v41 = a2;
  if (EnumTagSinglePayload)
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    if (qword_1ED816488 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v16, qword_1ED816490);
    v31 = *(v19 + 16);
    v31(v24, v30, v16);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_19755C7C8(v15, &qword_1EAF34988, &qword_197620CA0);
    }
  }

  else
  {
    v31 = *(v19 + 16);
    v31(v15, v27 + *(v28 + 20), v16);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    (*(v19 + 32))(v24, v15, v16);
  }

  v32 = v42;
  v33 = sub_1976159F0();
  result = (*(v19 + 8))(v24, v16);
  if (v33)
  {
    v31(v3 + *(v28 + 20), v32, v16);
    v36 = v40;
    v35 = v41;
    *v3 = v40;
    v3[1] = v35;
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v28);
    OUTLINED_FUNCTION_43_0();
    v37 = *(v26 + 36);

    sub_1975ED0DC(v3, v25 + v37);
    swift_endAccess();
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v38 = type metadata accessor for logger();
    __swift_project_value_buffer(v38, qword_1ED816CA0);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_197616A20();
    OUTLINED_FUNCTION_13_12();
    MEMORY[0x19A8E2A50](0xD000000000000035);
    MEMORY[0x19A8E2A50](v36, v35);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_197558864();
  }

  return result;
}