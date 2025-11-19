uint64_t SiriSocialConversationDataModels.ButtonModel.init(label:directInvocation:userData:link:separated:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, char a6@<W7>, uint64_t a7@<X8>)
{
  sub_269075FAC();
  v9 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel(0);
  v10 = v9[6];
  v11 = (a7 + v9[5]);
  sub_26907602C();
  v12 = (a7 + v9[8]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5140, &qword_269076680);
  OUTLINED_FUNCTION_3(v13);
  (*(v14 + 8))(a7);
  sub_269075FAC();

  *v11 = a1;
  v11[1] = a2;
  *(a7 + v10) = a3;
  *(a7 + v9[7]) = a6;
  *v12 = a4;
  v12[1] = a5;
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

uint64_t SiriSocialConversationDataModels.ButtonModel.label.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5140, &qword_269076680);
  sub_269075FCC();
  return v1;
}

uint64_t sub_26906F6FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SiriSocialConversationDataModels.ButtonModel.label.setter();
}

uint64_t (*SiriSocialConversationDataModels.ButtonModel.label.modify())()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5140, &qword_269076680);
  *(v0 + 32) = sub_269075FBC();
  return sub_269074E40;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SiriSocialConversationDataModels.ButtonModel.directInvocation.modify()
{
  v0 = OUTLINED_FUNCTION_13();
  v1 = *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel(v0) + 20);
  return OUTLINED_FUNCTION_16();
}

uint64_t SiriSocialConversationDataModels.ButtonModel.userData.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel(0) + 24));
}

uint64_t SiriSocialConversationDataModels.ButtonModel.userData.setter()
{
  v2 = OUTLINED_FUNCTION_13();
  v3 = *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel(v2) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.userData.modify()
{
  v0 = OUTLINED_FUNCTION_13();
  v1 = *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel(v0) + 24);
  return OUTLINED_FUNCTION_16();
}

uint64_t SiriSocialConversationDataModels.ButtonModel.separated.setter(char a1)
{
  result = type metadata accessor for SiriSocialConversationDataModels.ButtonModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.separated.modify()
{
  v0 = OUTLINED_FUNCTION_13();
  v1 = *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel(v0) + 28);
  return OUTLINED_FUNCTION_16();
}

uint64_t SiriSocialConversationDataModels.ButtonModel.link.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_32();
}

uint64_t SiriSocialConversationDataModels.ButtonModel.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.link.modify()
{
  v0 = OUTLINED_FUNCTION_13();
  v1 = *(type metadata accessor for SiriSocialConversationDataModels.ButtonModel(v0) + 32);
  return OUTLINED_FUNCTION_16();
}

uint64_t static SiriSocialConversationDataModels.ButtonModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_269075FEC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel(0);
  OUTLINED_FUNCTION_18(v4[5]);
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_26907614C() & 1) == 0 || (sub_26906FB30(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_18(v4[8]);
  if (v7 && v9 == v10)
  {
    return 1;
  }

  return sub_26907614C();
}

uint64_t sub_26906FB30(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_269072E44(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_26907614C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26906FCD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_26907614C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000269077280 == a2;
    if (v6 || (sub_26907614C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6174614472657375 && a2 == 0xE800000000000000;
      if (v7 || (sub_26907614C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574617261706573 && a2 == 0xE900000000000064;
        if (v8 || (sub_26907614C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1802398060 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_26907614C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_26906FEC8(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6174614472657375;
      break;
    case 3:
      result = 0x6574617261706573;
      break;
    case 4:
      result = 1802398060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26906FFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26906FCD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26906FFF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26906FE7C();
  *a1 = result;
  return result;
}

uint64_t sub_269070020(uint64_t a1)
{
  v2 = sub_269070304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26907005C(uint64_t a1)
{
  v2 = sub_269070304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriSocialConversationDataModels.ButtonModel.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5148, &qword_269076688);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-v11];
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  OUTLINED_FUNCTION_17();
  sub_269070304();
  OUTLINED_FUNCTION_19();
  sub_2690761AC();
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5140, &qword_269076680);
  OUTLINED_FUNCTION_2();
  sub_269073164(v15);
  OUTLINED_FUNCTION_14();
  sub_26907613C();
  if (!v2)
  {
    v16 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel(0);
    OUTLINED_FUNCTION_12(v16);
    v23 = *(v3 + v13[6]);
    v22[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5160, &qword_269076690);
    sub_2690731CC(&unk_2802F5168);
    OUTLINED_FUNCTION_14();
    sub_26907613C();
    v17 = *(v3 + v13[7]);
    v22[14] = 3;
    OUTLINED_FUNCTION_14();
    sub_26907612C();
    v18 = (v3 + v13[8]);
    v19 = *v18;
    v20 = v18[1];
    v22[13] = 4;
    OUTLINED_FUNCTION_14();
    sub_26907611C();
  }

  return (*(v7 + 8))(v12, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_269070304()
{
  result = qword_2802F5150;
  if (!qword_2802F5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5150);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.hash(into:)(const void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5140, &qword_269076680);
  sub_269070458();
  sub_26907604C();
  v3 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel(0);
  v4 = (v1 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_26907607C();
  sub_269072FB8(a1, *(v1 + v3[6]));
  v7 = *(v1 + v3[7]);
  sub_26907617C();
  v8 = (v1 + v3[8]);
  v9 = *v8;
  v10 = v8[1];

  return sub_26907607C();
}

unint64_t sub_269070458()
{
  result = qword_2802F5170;
  if (!qword_2802F5170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F5140, &qword_269076680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5170);
  }

  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonModel.hashValue.getter()
{
  OUTLINED_FUNCTION_36();
  SiriSocialConversationDataModels.ButtonModel.hash(into:)(v1);
  return sub_26907618C();
}

void SiriSocialConversationDataModels.ButtonModel.init(from:)()
{
  OUTLINED_FUNCTION_23();
  v41 = v1;
  v3 = v2;
  v38 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5140, &qword_269076680);
  OUTLINED_FUNCTION_0(v5);
  v44 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5();
  (MEMORY[0x28223BE20])();
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5178, &qword_269076698);
  v12 = OUTLINED_FUNCTION_0(v11);
  v39 = v13;
  v40 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_5();
  (MEMORY[0x28223BE20])();
  v16 = OUTLINED_FUNCTION_33();
  v17 = type metadata accessor for SiriSocialConversationDataModels.ButtonModel(v16);
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v45 = 0;
  v46 = 0xE000000000000000;
  v23 = v22 - v21;
  sub_269075FAC();
  v42 = sub_26907602C();
  v43 = v3;
  v24 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_269070304();
  v25 = v41;
  sub_26907619C();
  if (v25)
  {
    v26 = v5;
    v29 = v44;
    __swift_destroy_boxed_opaque_existential_1(v43);
    (*(v29 + 8))(v23, v26);
  }

  else
  {
    v27 = v39;
    LOBYTE(v45) = 0;
    OUTLINED_FUNCTION_1();
    sub_269073164(v28);
    sub_2690760EC();
    (*(v44 + 40))(v23, v10, v5);
    LOBYTE(v45) = 1;
    v41 = v0;
    v30 = sub_2690760CC();
    v31 = (v23 + v17[5]);
    *v31 = v30;
    v31[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5160, &qword_269076690);
    sub_2690731CC(&unk_2802F5188);
    sub_2690760EC();

    *(v23 + v17[6]) = v45;
    OUTLINED_FUNCTION_25(3);
    *(v23 + v17[7]) = sub_2690760DC() & 1;
    OUTLINED_FUNCTION_25(4);
    v33 = sub_2690760CC();
    v34 = (v23 + v17[8]);
    v36 = v35;
    (*(v27 + 8))(v41, v40);
    *v34 = v33;
    v34[1] = v36;
    sub_2690734B4(v23, v38, type metadata accessor for SiriSocialConversationDataModels.ButtonModel);
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_269073380();
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_26907097C()
{
  sub_26907615C();
  SiriSocialConversationDataModels.ButtonModel.hash(into:)(v1);
  return sub_26907618C();
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.init(buttons:text:sash:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v32 = MEMORY[0x277D84F90];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5190, &qword_2690766A0);
  OUTLINED_FUNCTION_26(v10, v11, v12, v13, v14, v15, v16, v17, v30, v32);
  sub_269075FAC();
  v18 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel(0);
  v19 = (a5 + *(v18 + 20));
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = *(v18 + 24);
  *(a5 + v20) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5198, &qword_2690766A8);
  OUTLINED_FUNCTION_26(v21, v22, v23, v24, v25, v26, v27, v28, v31, a1);
  result = sub_269075FDC();
  *v19 = a2;
  v19[1] = a3;
  *(a5 + v20) = a4;
  return result;
}

uint64_t sub_269070AB0(uint64_t *a1)
{
  v1 = *a1;

  return SiriSocialConversationDataModels.ButtonStackModel.buttons.setter(v2);
}

uint64_t (*SiriSocialConversationDataModels.ButtonStackModel.buttons.modify())()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5198, &qword_2690766A8);
  *(v0 + 32) = sub_269075FBC();
  return sub_269074E40;
}

uint64_t sub_269070B64(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_32();
}

uint64_t sub_269070BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.text.modify()
{
  v0 = OUTLINED_FUNCTION_13();
  v1 = *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel(v0) + 20);
  return OUTLINED_FUNCTION_16();
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.sash.setter(char a1)
{
  result = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.sash.modify()
{
  v0 = OUTLINED_FUNCTION_13();
  v1 = *(type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel(v0) + 24);
  return OUTLINED_FUNCTION_16();
}

uint64_t sub_269070CE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F74747562 && a2 == 0xE700000000000000;
  if (v4 || (sub_26907614C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (sub_26907614C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1752392051 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26907614C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_269070E00(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_36();
  MEMORY[0x26D630CB0](a1);
  return sub_26907618C();
}

uint64_t sub_269070E40(char a1)
{
  if (!a1)
  {
    return 0x736E6F74747562;
  }

  if (a1 == 1)
  {
    return 1954047348;
  }

  return 1752392051;
}

uint64_t sub_269070E88()
{
  v1 = *v0;
  sub_26907615C();
  MEMORY[0x26D630CB0](v1);
  return sub_26907618C();
}

uint64_t sub_269070ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269070CE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269070EFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269070DF8();
  *a1 = result;
  return result;
}

uint64_t sub_269070F24(uint64_t a1)
{
  v2 = sub_269073250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269070F60(uint64_t a1)
{
  v2 = sub_269073250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriSocialConversationDataModels.ButtonStackModel.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51A0, &qword_2690766B0);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  OUTLINED_FUNCTION_17();
  sub_269073250();
  OUTLINED_FUNCTION_19();
  sub_2690761AC();
  v19[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5198, &qword_2690766A8);
  OUTLINED_FUNCTION_2();
  sub_2690733D4(v15);
  OUTLINED_FUNCTION_14();
  sub_26907613C();
  if (!v2)
  {
    v16 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel(0);
    OUTLINED_FUNCTION_12(v16);
    v17 = *(v3 + *(v13 + 24));
    v19[13] = 2;
    OUTLINED_FUNCTION_14();
    sub_26907612C();
  }

  return (*(v7 + 8))(v12, v5);
}

void SiriSocialConversationDataModels.ButtonStackModel.init(from:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v29 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5198, &qword_2690766A8);
  v5 = OUTLINED_FUNCTION_0(v4);
  v30 = v6;
  v31 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_34();
  v32 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51D8, &qword_2690766B8);
  OUTLINED_FUNCTION_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5190, &qword_2690766A0);
  sub_269075FAC();
  v21 = (v20 + *(v16 + 28));
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = *(v16 + 32);
  *(v20 + v22) = 1;
  v23 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_269073250();
  sub_26907619C();
  if (!v0)
  {
    OUTLINED_FUNCTION_1();
    sub_2690733D4(v24);
    sub_2690760EC();
    (*(v30 + 40))(v20, v32, v31);
    *v21 = sub_2690760CC();
    v21[1] = v25;
    v26 = sub_2690760DC();
    v27 = OUTLINED_FUNCTION_29();
    v28(v27);
    *(v20 + v22) = v26 & 1;
    sub_2690734B4(v20, v29, type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_7();
  sub_269073380();
  OUTLINED_FUNCTION_22();
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.init(storyTexts:dialogIds:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51E8, &qword_2690766C0);
  sub_269075FAC();
  v0 = *(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel(0) + 20);
  return sub_269075FAC();
}

uint64_t sub_2690714E8(char a1, uint64_t *a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_26(v3, v4, v5, v6, v7, v8, v9, v10, v12, a1);
  return sub_269075FDC();
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.storyTexts.setter(char a1)
{
  v1 = *(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel(0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51F0, &qword_2690766C8);
  OUTLINED_FUNCTION_26(v2, v3, v4, v5, v6, v7, v8, v9, v11, a1);
  return sub_269075FDC();
}

uint64_t sub_269071584(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_269075FCC();
  return v3;
}

uint64_t sub_2690715B0(uint64_t *a1)
{
  v1 = *a1;

  return SiriSocialConversationDataModels.StoryDataModel.dialogIds.setter(v2);
}

uint64_t (*SiriSocialConversationDataModels.StoryDataModel.dialogIds.modify())()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51F0, &qword_2690766C8);
  *(v0 + 32) = sub_269075FBC();
  return sub_269074E40;
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.storyTexts.getter()
{
  v0 = *(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51F0, &qword_2690766C8);
  sub_269075FCC();
  return v2;
}

uint64_t sub_2690716A0(uint64_t *a1)
{
  v1 = *a1;

  return SiriSocialConversationDataModels.StoryDataModel.storyTexts.setter(v2);
}

uint64_t (*SiriSocialConversationDataModels.StoryDataModel.storyTexts.modify())()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30(v2);
  v3 = *(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51F0, &qword_2690766C8);
  *(v0 + 32) = sub_269075FBC();
  return sub_26907174C;
}

void sub_269071750(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26907179C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449676F6C616964 && a2 == 0xE900000000000073;
  if (v4 || (sub_26907614C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x78655479726F7473 && a2 == 0xEA00000000007374)
  {

    return 1;
  }

  else
  {
    v7 = sub_26907614C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2690718B4(char a1)
{
  if (a1)
  {
    return 0x78655479726F7473;
  }

  else
  {
    return 0x6449676F6C616964;
  }
}

uint64_t sub_26907192C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26907179C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269071954@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269071874();
  *a1 = result;
  return result;
}

uint64_t sub_26907197C(uint64_t a1)
{
  v2 = sub_269073530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2690719B8(uint64_t a1)
{
  v2 = sub_269073530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriSocialConversationDataModels.StoryDataModel.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51F8, &qword_2690766D0);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  OUTLINED_FUNCTION_17();
  sub_269073530();
  OUTLINED_FUNCTION_19();
  sub_2690761AC();
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51F0, &qword_2690766C8);
  OUTLINED_FUNCTION_2();
  sub_269073584(v13);
  OUTLINED_FUNCTION_19();
  sub_26907613C();
  if (!v1)
  {
    v14 = *(type metadata accessor for SiriSocialConversationDataModels.StoryDataModel(0) + 20);
    v16[14] = 1;
    OUTLINED_FUNCTION_19();
    sub_26907613C();
  }

  return (*(v5 + 8))(v10, v3);
}

void SiriSocialConversationDataModels.StoryDataModel.init(from:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v36 = v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51F0, &qword_2690766C8);
  v4 = OUTLINED_FUNCTION_0(v41);
  v38 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = v33 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5220, &qword_2690766D8);
  OUTLINED_FUNCTION_0(v39);
  v37 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v15);
  v17 = v33 - v16;
  v18 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel(0);
  v19 = OUTLINED_FUNCTION_3(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  v25 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_269073530();
  sub_26907619C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v34 = v18;
    v35 = v24;
    v27 = v37;
    v26 = v38;
    OUTLINED_FUNCTION_1();
    v29 = sub_269073584(v28);
    v30 = v39;
    sub_2690760EC();
    v33[1] = v29;
    v31 = v40;
    v40 = *(v26 + 32);
    (v40)(v35, v31, v41);
    sub_2690760EC();
    (*(v27 + 8))(v17, v30);
    v32 = v35;
    (v40)(v35 + *(v34 + 20), v10, v41);
    sub_2690734B4(v32, v36, type metadata accessor for SiriSocialConversationDataModels.StoryDataModel);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_8();
    sub_269073380();
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_269071EC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74536E6F74747562 && a2 == 0xEF776569566B6361;
  if (v4 || (sub_26907614C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65695679726F7473 && a2 == 0xE900000000000077)
  {

    return 1;
  }

  else
  {
    v7 = sub_26907614C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_269071F98(char a1)
{
  OUTLINED_FUNCTION_36();
  MEMORY[0x26D630CB0](a1 & 1);
  return sub_26907618C();
}

uint64_t sub_269071FD8(char a1)
{
  if (a1)
  {
    return 0x65695679726F7473;
  }

  else
  {
    return 0x74536E6F74747562;
  }
}

uint64_t sub_269072020(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26907614C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2690720B8()
{
  OUTLINED_FUNCTION_36();
  MEMORY[0x26D630CB0](0);
  return sub_26907618C();
}

uint64_t sub_269072148@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269071EAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_269072174(uint64_t a1)
{
  v2 = sub_269073800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2690721B0(uint64_t a1)
{
  v2 = sub_269073800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2690721F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269071EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26907221C(uint64_t a1)
{
  v2 = sub_2690736FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269072258(uint64_t a1)
{
  v2 = sub_2690736FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2690722B4()
{
  sub_26907615C();
  MEMORY[0x26D630CB0](0);
  return sub_26907618C();
}

uint64_t sub_2690722F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269072020(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_269072320(uint64_t a1)
{
  v2 = sub_269073750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26907235C(uint64_t a1)
{
  v2 = sub_269073750();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriSocialConversationDataModels.encode(to:)()
{
  OUTLINED_FUNCTION_23();
  v65 = v2;
  v63 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5230, &qword_2690766E0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v61 = v7;
  v62 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  v60 = v11;
  v58 = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel(0);
  v12 = OUTLINED_FUNCTION_3(v58);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v59 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5238, &qword_2690766E8);
  v18 = OUTLINED_FUNCTION_0(v17);
  v56 = v19;
  v57 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_33();
  v55 = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel(v23);
  v24 = OUTLINED_FUNCTION_3(v55);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  v29 = v28 - v27;
  v30 = type metadata accessor for SiriSocialConversationDataModels(0);
  v31 = OUTLINED_FUNCTION_3(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v36 = v35 - v34;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5240, &qword_2690766F0);
  OUTLINED_FUNCTION_0(v64);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v41);
  v43 = &v54 - v42;
  v45 = *(v4 + 24);
  v44 = *(v4 + 32);
  OUTLINED_FUNCTION_17();
  sub_2690736FC();
  sub_2690761AC();
  sub_2690734B4(v63, v36, type metadata accessor for SiriSocialConversationDataModels);
  v46 = (v38 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2690737A4(v36, v59, type metadata accessor for SiriSocialConversationDataModels.StoryDataModel);
    sub_269073750();
    v47 = v60;
    v48 = v64;
    sub_26907610C();
    OUTLINED_FUNCTION_6();
    sub_26907333C(v49);
    v50 = v62;
    sub_26907613C();
    (*(v61 + 8))(v47, v50);
    OUTLINED_FUNCTION_8();
    sub_269073380();
    (*v46)(v43, v48);
  }

  else
  {
    sub_2690737A4(v36, v29, type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel);
    sub_269073800();
    v51 = v64;
    sub_26907610C();
    OUTLINED_FUNCTION_9();
    sub_26907333C(v52);
    v53 = v57;
    sub_26907613C();
    (*(v56 + 8))(v0, v53);
    OUTLINED_FUNCTION_7();
    sub_269073380();
    (*v46)(v43, v51);
  }

  OUTLINED_FUNCTION_22();
}

void SiriSocialConversationDataModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23();
  a23 = v25;
  a24 = v26;
  v107 = v24;
  v28 = v27;
  v98 = v29;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5270, &qword_2690766F8);
  OUTLINED_FUNCTION_0(v106);
  v101 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_34();
  v103 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5278, &qword_269076700);
  v36 = OUTLINED_FUNCTION_0(v35);
  v99 = v37;
  v100 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_34();
  v102 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5280, &qword_269076708);
  v43 = OUTLINED_FUNCTION_0(v42);
  v104 = v44;
  v105 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v47);
  v49 = &v94 - v48;
  v50 = type metadata accessor for SiriSocialConversationDataModels(0);
  v51 = OUTLINED_FUNCTION_3(v50);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v94 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v94 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v94 - v60;
  v62 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2690736FC();
  v63 = v107;
  sub_26907619C();
  if (v63)
  {
    goto LABEL_8;
  }

  v94 = v56;
  v95 = v59;
  v64 = v105;
  v96 = v61;
  v97 = v50;
  v107 = v28;
  v65 = sub_2690760FC();
  v69 = sub_269072F70(v65, 0);
  if (v67 == v68 >> 1)
  {
LABEL_7:
    v79 = v97;
    v80 = sub_26907609C();
    swift_allocError();
    v82 = v81;
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F5288, &qword_269076710) + 48);
    *v82 = v79;
    sub_2690760BC();
    sub_26907608C();
    (*(*(v80 - 8) + 104))(v82, *MEMORY[0x277D84160], v80);
    swift_willThrow();
    swift_unknownObjectRelease();
    v84 = OUTLINED_FUNCTION_10();
    v85(v84, v64);
    v28 = v107;
LABEL_8:
    v86 = v28;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v86);
    OUTLINED_FUNCTION_22();
    return;
  }

  if (v67 < (v68 >> 1))
  {
    a10 = *(v66 + v67);
    sub_269073854(v67 + 1, v68 >> 1, v69, v66, v67, v68);
    v71 = v70;
    v73 = v72;
    swift_unknownObjectRelease();
    if (v71 == v73 >> 1)
    {
      v74 = v64;
      if (a10)
      {
        a14 = 1;
        sub_269073750();
        OUTLINED_FUNCTION_20(&type metadata for SiriSocialConversationDataModels.StoryViewCodingKeys, &a14);
        v75 = v96;
        type metadata accessor for SiriSocialConversationDataModels.StoryDataModel(0);
        OUTLINED_FUNCTION_6();
        sub_26907333C(v76);
        v77 = v94;
        OUTLINED_FUNCTION_35();
        v78 = v104;
        swift_unknownObjectRelease();
        v88 = OUTLINED_FUNCTION_11();
        v89(v88);
        (*(v78 + 8))(v49, v74);
      }

      else
      {
        a13 = 0;
        sub_269073800();
        OUTLINED_FUNCTION_20(&type metadata for SiriSocialConversationDataModels.ButtonStackViewCodingKeys, &a13);
        v75 = v96;
        type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel(0);
        OUTLINED_FUNCTION_9();
        sub_26907333C(v87);
        v77 = v95;
        OUTLINED_FUNCTION_35();
        swift_unknownObjectRelease();
        v90 = OUTLINED_FUNCTION_11();
        v91(v90);
        v92 = OUTLINED_FUNCTION_10();
        v93(v92, v74);
      }

      swift_storeEnumTagMultiPayload();
      sub_2690737A4(v77, v75, type metadata accessor for SiriSocialConversationDataModels);
      sub_2690737A4(v75, v98, type metadata accessor for SiriSocialConversationDataModels);
      v86 = v107;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_269072E44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26907615C();
  sub_26907607C();
  v6 = sub_26907618C();

  return sub_269072EBC(a1, a2, v6);
}

unint64_t sub_269072EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26907614C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_269072F70(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_269072FB8(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(a2 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a2 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];
    memcpy(__dst, a1, sizeof(__dst));

    sub_26907607C();

    sub_26907607C();

    result = sub_26907618C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x26D630CB0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_269073164(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F5140, &qword_269076680);
    OUTLINED_FUNCTION_28();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2690731CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F5160, &qword_269076690);
    OUTLINED_FUNCTION_28();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_269073250()
{
  result = qword_2802F51A8;
  if (!qword_2802F51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F51A8);
  }

  return result;
}

unint64_t sub_2690732A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F5190, &qword_2690766A0);
    sub_26907333C(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26907333C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_269073380()
{
  v1 = OUTLINED_FUNCTION_13();
  v3 = v2(v1);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_2690733D4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F5198, &qword_2690766A8);
    sub_2690732A4(&unk_2802F51B8);
    sub_2690732A4(&unk_2802F51C8);
    OUTLINED_FUNCTION_28();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2690734B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_32();
  v8(v7);
  return a2;
}

unint64_t sub_269073530()
{
  result = qword_2802F5200;
  if (!qword_2802F5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5200);
  }

  return result;
}

unint64_t sub_269073584(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F51F0, &qword_2690766C8);
    sub_26907363C(&unk_2802F5210);
    sub_26907363C(&unk_2802F5218);
    OUTLINED_FUNCTION_28();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26907363C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F51E8, &qword_2690766C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2690736C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2690736FC()
{
  result = qword_2802F5248;
  if (!qword_2802F5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5248);
  }

  return result;
}

unint64_t sub_269073750()
{
  result = qword_2802F5250;
  if (!qword_2802F5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5250);
  }

  return result;
}

uint64_t sub_2690737A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_32();
  v8(v7);
  return a2;
}

unint64_t sub_269073800()
{
  result = qword_2802F5260;
  if (!qword_2802F5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5260);
  }

  return result;
}

uint64_t sub_269073854(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269073AC8()
{
  OUTLINED_FUNCTION_31();
  result = SiriSocialConversationDataModels.ButtonModel.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_269073AF4()
{
  OUTLINED_FUNCTION_31();
  result = SiriSocialConversationDataModels.ButtonStackModel.buttons.getter();
  *v0 = result;
  return result;
}

uint64_t sub_269073B20()
{
  OUTLINED_FUNCTION_31();
  result = SiriSocialConversationDataModels.StoryDataModel.dialogIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_269073B4C()
{
  OUTLINED_FUNCTION_31();
  result = SiriSocialConversationDataModels.StoryDataModel.storyTexts.getter();
  *v0 = result;
  return result;
}

uint64_t sub_269073BD0()
{
  result = type metadata accessor for SiriSocialConversationDataModels.ButtonStackModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriSocialConversationDataModels.StoryDataModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_269073C94()
{
  sub_269073D30();
  if (v0 <= 0x3F)
  {
    sub_269073D80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269073D30()
{
  if (!qword_2802F52D8)
  {
    v0 = sub_269075FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_2802F52D8);
    }
  }
}

void sub_269073D80()
{
  if (!qword_2802F52E0)
  {
    v0 = sub_26907603C();
    if (!v1)
    {
      atomic_store(v0, &qword_2802F52E0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v8 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v8);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(result - 8) + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_24();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_269073F84()
{
  sub_26907416C(319, &qword_2802F52F8, &qword_2802F5190, &qword_2690766A0);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_269074034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51F0, &qword_2690766C8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26907409C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F51F0, &qword_2690766C8);
  v0 = OUTLINED_FUNCTION_24();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_2690740E8()
{
  sub_26907416C(319, &qword_2802F5310, &qword_2802F51E8, &qword_2690766C0);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26907416C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_269075FFC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269074200(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_21(a1);
}

_BYTE *sub_269074250(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2690742ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269074328(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2690743B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x269074480);
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

uint64_t getEnumTagSinglePayload for SiriSocialConversationDataModels.ButtonStackModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriSocialConversationDataModels.ButtonStackModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26907461CLL);
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

uint64_t getEnumTagSinglePayload for SiriSocialConversationDataModels.ButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriSocialConversationDataModels.ButtonModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2690747A8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2690747EC()
{
  result = qword_2802F5318;
  if (!qword_2802F5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5318);
  }

  return result;
}

unint64_t sub_269074844()
{
  result = qword_2802F5320;
  if (!qword_2802F5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5320);
  }

  return result;
}

unint64_t sub_26907489C()
{
  result = qword_2802F5328;
  if (!qword_2802F5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5328);
  }

  return result;
}

unint64_t sub_2690748F4()
{
  result = qword_2802F5330;
  if (!qword_2802F5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5330);
  }

  return result;
}

unint64_t sub_26907494C()
{
  result = qword_2802F5338;
  if (!qword_2802F5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5338);
  }

  return result;
}

unint64_t sub_2690749A4()
{
  result = qword_2802F5340;
  if (!qword_2802F5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5340);
  }

  return result;
}

unint64_t sub_2690749FC()
{
  result = qword_2802F5348;
  if (!qword_2802F5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5348);
  }

  return result;
}

unint64_t sub_269074A54()
{
  result = qword_2802F5350;
  if (!qword_2802F5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5350);
  }

  return result;
}

unint64_t sub_269074AAC()
{
  result = qword_2802F5358;
  if (!qword_2802F5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5358);
  }

  return result;
}

unint64_t sub_269074B04()
{
  result = qword_2802F5360;
  if (!qword_2802F5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5360);
  }

  return result;
}

unint64_t sub_269074B5C()
{
  result = qword_2802F5368;
  if (!qword_2802F5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5368);
  }

  return result;
}

unint64_t sub_269074BB4()
{
  result = qword_2802F5370;
  if (!qword_2802F5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5370);
  }

  return result;
}

unint64_t sub_269074C0C()
{
  result = qword_2802F5378;
  if (!qword_2802F5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5378);
  }

  return result;
}

unint64_t sub_269074C64()
{
  result = qword_2802F5380;
  if (!qword_2802F5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5380);
  }

  return result;
}

unint64_t sub_269074CBC()
{
  result = qword_2802F5388;
  if (!qword_2802F5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5388);
  }

  return result;
}

unint64_t sub_269074D14()
{
  result = qword_2802F5390;
  if (!qword_2802F5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5390);
  }

  return result;
}

unint64_t sub_269074D6C()
{
  result = qword_2802F5398;
  if (!qword_2802F5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F5398);
  }

  return result;
}

unint64_t sub_269074DC4()
{
  result = qword_2802F53A0;
  if (!qword_2802F53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F53A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{
  v4 = (v1 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  *(v2 - 66) = 1;

  return sub_26907611C();
}

uint64_t OUTLINED_FUNCTION_18@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_25@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 136);
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_2690760EC();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_26907615C();
}

void sub_269075148(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 intentType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26907606C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2690751B0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_26907605C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setIntentType_];
}

id SocialConversationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialConversationIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SocialConversationIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SocialConversationIntent();
  v9 = OUTLINED_FUNCTION_0_0(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SocialConversationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26907605C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SocialConversationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_26907605C();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SocialConversationIntent();
  v12 = OUTLINED_FUNCTION_0_0(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SocialConversationIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_0();

  v3 = sub_26907605C();

  if (v1)
  {
    v4 = sub_26907600C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SocialConversationIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_1_0();

  v3 = sub_26907605C();

  if (v1)
  {
    v4 = sub_26907600C();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SocialConversationIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SocialConversationIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2690756FC(uint64_t a1)
{
  sub_26907615C();
  MEMORY[0x26D630CB0](a1);
  return sub_26907618C();
}

uint64_t sub_26907577C(uint64_t a1, uint64_t a2)
{
  sub_26907615C();
  MEMORY[0x26D630CB0](a2);
  return sub_26907618C();
}

unint64_t sub_2690757C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SocialConversationIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_269075824()
{
  v1 = OBJC_IVAR___SocialConversationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269075890(uint64_t a1)
{
  v3 = OBJC_IVAR___SocialConversationIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SocialConversationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SocialConversationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SocialConversationIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SocialConversationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SocialConversationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialConversationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SocialConversationIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SocialConversationIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SocialConversationIntentResponse_code) = 0;
  v13 = type metadata accessor for SocialConversationIntentResponse();
  v9 = OUTLINED_FUNCTION_0_0(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SocialConversationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SocialConversationIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SocialConversationIntentResponse_code) = 0;
  v13 = type metadata accessor for SocialConversationIntentResponse();
  v9 = OUTLINED_FUNCTION_0_0(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SocialConversationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_26907600C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SocialConversationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SocialConversationIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_26907600C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SocialConversationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_269075E14(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269075E50()
{
  result = qword_2802F53B0;
  if (!qword_2802F53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F53B0);
  }

  return result;
}

uint64_t sub_269075EB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_269075824();
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return sub_26907605C();
}