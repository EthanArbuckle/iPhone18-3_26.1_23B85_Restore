uint64_t sub_1BF8F300C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF8F30F0()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B60, &unk_1BF9B8680);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BF9B6370;
  sub_1BF8C2C9C((v0 + 16), v3 + 32);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t ChannelCandidateSuggestionFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t ChannelCandidateSuggestionFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t ChannelCandidateSuggestionFactory.create(intent:channelOverride:objective:confidenceScore:deliveryVehicle:)()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  *(v1 + 64) = v0;
  *(v1 + 56) = v10;
  v11 = type metadata accessor for SiriSuggestions.Intent(0);
  *(v1 + 72) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = *v9;
  *(v1 + 104) = *(v9 + 16);
  *(v1 + 51) = *(v9 + 24);
  *(v1 + 52) = *v7;
  *(v1 + 53) = *v5;
  v13 = *(v3 + 16);
  *(v1 + 112) = *v3;
  *(v1 + 128) = v13;
  *(v1 + 54) = *(v3 + 32);
  v14 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BF8F32F0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 88);
  if (*(v0 + 51))
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    *v4 = v1;
    v4[1] = v2;
    v4[2] = v3;
    type metadata accessor for SiriSuggestions.AppIntent(0);
    v6 = v1;

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v7 = *(v0 + 72);
    **(v0 + 80) = v1;
    swift_storeEnumTagMultiPayload();
    v8 = v1;
  }

  v9 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  v10 = *(v0 + 53);
  *(v0 + 49) = *(v0 + 52);
  *(v0 + 50) = v10;
  v11 = *(v0 + 54);
  *(v0 + 32) = v9;
  *(v0 + 48) = v11;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_1BF8F343C;
  v13 = *(v0 + 64);
  v14 = *(v0 + 56);
  v15 = OUTLINED_FUNCTION_26_3(*(v0 + 80));

  return sub_1BF8F2398(v15, (v0 + 49), (v0 + 50), v0 + 16, v16);
}

uint64_t sub_1BF8F343C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 144);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  sub_1BF8F7774(v3, type metadata accessor for SiriSuggestions.Intent);

  v6 = OUTLINED_FUNCTION_5();

  return v7(v6);
}

unint64_t HabitualClientModel.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      OUTLINED_FUNCTION_30_2();
      result = v2 - 1;
      break;
    case 3:
      OUTLINED_FUNCTION_30_2();
      result = v3 - 2;
      break;
    case 4:
      OUTLINED_FUNCTION_30_2();
      result = v4 - 10;
      break;
    case 5:
      return result;
    default:
      result = 0xD00000000000001FLL;
      break;
  }

  return result;
}

uint64_t SignalChannel.rawValue.getter()
{
  if (*v0)
  {
    result = 0x66654472656E776FLL;
  }

  else
  {
    result = 0x6E65746E49707061;
  }

  *v0;
  return result;
}

void *static Channel.allCases.getter()
{
  v0 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1BF8D05E8();
  v1 = v13;
  v3 = *(v13 + 16);
  v2 = *(v13 + 24);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    OUTLINED_FUNCTION_20_4(v2);
    sub_1BF8D05E8();
    v1 = v13;
    v2 = *(v13 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v5;
  *(v1 + v3 + 32) = 64;
  v6 = v3 + 2;
  if (v4 < v6)
  {
    OUTLINED_FUNCTION_20_4(v2);
    sub_1BF8D05E8();
    v1 = v13;
  }

  *(v1 + 16) = v6;
  *(v1 + v5 + 32) = 65;
  sub_1BF8D235C(v1);
  v14 = v0;
  sub_1BF8D05E8();
  v7 = 0;
  v8 = v14;
  v9 = *(v14 + 16);
  do
  {
    v10 = byte_1F3EF5560[v7 + 32];
    v15 = v8;
    v11 = *(v8 + 24);
    if (v9 >= v11 >> 1)
    {
      OUTLINED_FUNCTION_20_4(v11);
      sub_1BF8D05E8();
      v8 = v15;
    }

    ++v7;
    *(v8 + 16) = v9 + 1;
    *(v8 + v9++ + 32) = v10;
  }

  while (v7 != 6);
  sub_1BF8D235C(v8);
  return &unk_1F3EF5588;
}

uint64_t static Channel.findChannel(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = static Channel.allCases.getter();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  while (1)
  {
    if (v9 == v8)
    {

      v10 = -8;
      goto LABEL_13;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = *(v7 + v8 + 32);
    if (Channel.description.getter() == a1 && v11 == a2)
    {

LABEL_12:

LABEL_13:
      *a3 = v10;
      return result;
    }

    ++v8;
    v13 = sub_1BF9B56D8();

    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Channel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      switch(v2)
      {
        case 0x81u:
          return v3 == 129;
        case 0x82u:
          return v3 == 130;
        case 0x83u:
          return v3 == 131;
        case 0x84u:
          return v3 == 132;
        case 0x85u:
          return v3 == 133;
        default:
          return v3 == 128;
      }
    }

    if ((v3 & 0xC0) == 0x40)
    {
      v4 = (v2 & 1) == 0;
      if (v2)
      {
        v5 = 0x66654472656E776FLL;
      }

      else
      {
        v5 = 0x6E65746E49707061;
      }

      if (v4)
      {
        v6 = 0xEC00000069704174;
      }

      else
      {
        v6 = 0xEF6E6F6974696E69;
      }

      if (v3)
      {
        v7 = 0x66654472656E776FLL;
      }

      else
      {
        v7 = 0x6E65746E49707061;
      }

      if (v3)
      {
        v8 = 0xEF6E6F6974696E69;
      }

      else
      {
        v8 = 0xEC00000069704174;
      }

      if (v5 == v7 && v6 == v8)
      {

        return 1;
      }

      else
      {
        v10 = sub_1BF9B56D8();

        return v10 & 1;
      }
    }

    return 0;
  }

  if (v3 > 0x3F)
  {
    return 0;
  }

  return sub_1BF8CA4F0();
}

uint64_t sub_1BF8F3A80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001BF9CB100 == a2;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74616E7265746C61 && a2 == 0xEC00000073657669;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E7275547478656ELL && a2 == 0xE800000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001BF9CB180 == a2;
        if (v8 || (sub_1BF9B56D8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x75747865746E6F63 && a2 == 0xEA00000000006C61;
          if (v9 || (sub_1BF9B56D8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x41746E6572727563 && a2 == 0xEE00776569567070;
            if (v10 || (sub_1BF9B56D8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C616E676973 && a2 == 0xE600000000000000;
              if (v11 || (sub_1BF9B56D8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6F69746163756465 && a2 == 0xEB000000006C616ELL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1BF9B56D8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BF8F3D24(char a1)
{
  result = 0x74616E7265746C61;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E7275547478656ELL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x75747865746E6F63;
      break;
    case 5:
      result = 0x41746E6572727563;
      break;
    case 6:
      result = 0x6C616E676973;
      break;
    case 7:
      result = 0x6F69746163756465;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1BF8F3E30(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8F3EA0(uint64_t a1)
{
  v2 = sub_1BF8F6040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F3EDC(uint64_t a1)
{
  v2 = sub_1BF8F6040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8F3F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8F3A80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8F3F48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF8F3D1C();
  *a1 = result;
  return result;
}

uint64_t sub_1BF8F3F70(uint64_t a1)
{
  v2 = sub_1BF8F5D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F3FAC(uint64_t a1)
{
  v2 = sub_1BF8F5D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8F3FE8(uint64_t a1)
{
  v2 = sub_1BF8F5EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F4024(uint64_t a1)
{
  v2 = sub_1BF8F5EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8F4060(uint64_t a1)
{
  v2 = sub_1BF8F5E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F409C(uint64_t a1)
{
  v2 = sub_1BF8F5E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8F40D8(uint64_t a1)
{
  v2 = sub_1BF8F5DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F4114(uint64_t a1)
{
  v2 = sub_1BF8F5DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8F4154(uint64_t a1)
{
  v2 = sub_1BF8F5F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F4190(uint64_t a1)
{
  v2 = sub_1BF8F5F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8F41CC(uint64_t a1)
{
  v2 = sub_1BF8F5FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F4208(uint64_t a1)
{
  v2 = sub_1BF8F5FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8F4244(uint64_t a1)
{
  v2 = sub_1BF8F6094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F4280(uint64_t a1)
{
  v2 = sub_1BF8F6094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8F42BC(uint64_t a1)
{
  v2 = sub_1BF8F5DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F42F8(uint64_t a1)
{
  v2 = sub_1BF8F5DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Channel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E80, &qword_1BF9B9E30);
  v4 = OUTLINED_FUNCTION_1(v3);
  v93 = v5;
  v94 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v92 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E88, &qword_1BF9B9E38);
  v11 = OUTLINED_FUNCTION_1(v10);
  v98 = v12;
  v99 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v97 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E90, &qword_1BF9B9E40);
  v18 = OUTLINED_FUNCTION_1(v17);
  v90 = v19;
  v91 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v89 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E98, &qword_1BF9B9E48);
  v25 = OUTLINED_FUNCTION_1(v24);
  v87 = v26;
  v88 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12();
  v86 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8EA0, &qword_1BF9B9E50);
  v32 = OUTLINED_FUNCTION_1(v31);
  v95 = v33;
  v96 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v81 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8EA8, &qword_1BF9B9E58);
  v40 = OUTLINED_FUNCTION_1(v39);
  v84 = v41;
  v85 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_12();
  v83 = v45;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8EB0, &qword_1BF9B9E60);
  OUTLINED_FUNCTION_1(v82);
  v81[2] = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v81 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8EB8, &qword_1BF9B9E68);
  OUTLINED_FUNCTION_1(v52);
  v81[1] = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v56);
  v58 = v81 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8EC0, &qword_1BF9B9E70);
  v100 = OUTLINED_FUNCTION_1(v59);
  v101 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_12();
  v64 = *v1;
  v65 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8F5D4C();
  sub_1BF9B5898();
  if (!(v64 >> 6))
  {
    v106 = 3;
    sub_1BF8F5F44();
    v71 = v100;
    sub_1BF9B5598();
    v105 = v64;
    sub_1BF8F5F98();
    v72 = v96;
    sub_1BF9B5638();
    (*(v95 + 8))(v38, v72);
    v68 = OUTLINED_FUNCTION_19_5();
    v70 = v71;
    return v69(v68, v70);
  }

  if (v64 >> 6 == 1)
  {
    v110 = 6;
    sub_1BF8F5DF4();
    v66 = v97;
    OUTLINED_FUNCTION_4_8();
    v109 = v64 & 1;
    sub_1BF8F5E48();
    v67 = v99;
    sub_1BF9B5638();
    (*(v98 + 8))(v66, v67);
    v68 = OUTLINED_FUNCTION_19_5();
    v70 = v38;
    return v69(v68, v70);
  }

  switch(v64)
  {
    case 0x81u:
      v103 = 1;
      sub_1BF8F6040();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_17_5(&v113);
      v75 = v51;
      v76 = v82;
      break;
    case 0x82u:
      v104 = 2;
      sub_1BF8F5FEC();
      v77 = v83;
      OUTLINED_FUNCTION_3_5();
      v78 = v84;
      v76 = v85;
      goto LABEL_13;
    case 0x83u:
      v107 = 4;
      sub_1BF8F5EF0();
      v77 = v86;
      OUTLINED_FUNCTION_3_5();
      v78 = v87;
      v76 = v88;
      goto LABEL_13;
    case 0x84u:
      v108 = 5;
      sub_1BF8F5E9C();
      v77 = v89;
      OUTLINED_FUNCTION_3_5();
      v78 = v90;
      v76 = v91;
      goto LABEL_13;
    case 0x85u:
      v111 = 7;
      sub_1BF8F5DA0();
      v77 = v92;
      OUTLINED_FUNCTION_3_5();
      v78 = v93;
      v76 = v94;
LABEL_13:
      v74 = *(v78 + 8);
      v75 = v77;
      break;
    default:
      v102 = 0;
      sub_1BF8F6094();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_17_5(&v112);
      v75 = v58;
      v76 = v52;
      break;
  }

  v74(v75, v76);
  v79 = OUTLINED_FUNCTION_19_5();
  return v80(v79, v38);
}

uint64_t Channel.hash(into:)()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      MEMORY[0x1BFB5EAC0](6);
      sub_1BF9B4B48();
    }

    else
    {
      switch(*v0)
      {
        case 0x81:
          v3 = 1;
          break;
        case 0x82:
          v3 = 2;
          break;
        case 0x83:
          v3 = 4;
          break;
        case 0x84:
          v3 = 5;
          break;
        case 0x85:
          v3 = 7;
          break;
        default:
          v3 = 0;
          break;
      }

      return MEMORY[0x1BFB5EAC0](v3);
    }
  }

  else
  {
    MEMORY[0x1BFB5EAC0](3);

    return sub_1BF8CCD40();
  }
}

uint64_t Channel.hashValue.getter()
{
  v2 = *v0;
  sub_1BF9B57A8();
  Channel.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t Channel.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v134 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8F18, &qword_1BF9B9E78);
  OUTLINED_FUNCTION_1(v133);
  v129 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v132 = v7;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8F20, &qword_1BF9B9E80);
  OUTLINED_FUNCTION_1(v128);
  v117 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v137 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8F28, &qword_1BF9B9E88);
  v126 = OUTLINED_FUNCTION_1(v13);
  v127 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12();
  v136 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8F30, &qword_1BF9B9E90);
  v20 = OUTLINED_FUNCTION_1(v19);
  v124 = v21;
  v125 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  v130 = v25;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8F38, &qword_1BF9B9E98);
  OUTLINED_FUNCTION_1(v121);
  v116 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12();
  v131 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8F40, &qword_1BF9B9EA0);
  v32 = OUTLINED_FUNCTION_1(v31);
  v122 = v33;
  v123 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12();
  v135 = v37;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8F48, &qword_1BF9B9EA8);
  OUTLINED_FUNCTION_1(v120);
  v119 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v110 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8F50, &qword_1BF9B9EB0);
  OUTLINED_FUNCTION_1(v44);
  v118 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v110 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8F58, &unk_1BF9B9EB8);
  OUTLINED_FUNCTION_1(v51);
  v53 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v110 - v57;
  v59 = a1[3];
  v60 = a1[4];
  v138 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v59);
  sub_1BF8F5D4C();
  v61 = v139;
  sub_1BF9B5868();
  if (v61)
  {
    goto LABEL_8;
  }

  v114 = v50;
  v113 = v44;
  v115 = v43;
  v62 = v135;
  v63 = v136;
  v64 = v137;
  v139 = v53;
  v65 = sub_1BF9B5568();
  result = sub_1BF8D21BC(v65, 0);
  if (v68 == v69 >> 1)
  {
LABEL_7:
    v81 = sub_1BF9B5308();
    swift_allocError();
    v83 = v82;
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v83 = &type metadata for Channel;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    (*(*(v81 - 8) + 104))(v83, *MEMORY[0x1E69E6AF8], v81);
    swift_willThrow();
    swift_unknownObjectRelease();
    v85 = OUTLINED_FUNCTION_1_7();
    v86(v85);
LABEL_8:
    v87 = v138;
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v112 = 0;
  if (v68 < (v69 >> 1))
  {
    v111 = *(v67 + v68);
    sub_1BF8D21AC(v68 + 1);
    v71 = v70;
    v73 = v72;
    swift_unknownObjectRelease();
    if (v71 == v73 >> 1)
    {
      v74 = v133;
      v75 = v134;
      switch(v111)
      {
        case 1:
          v141 = 1;
          sub_1BF8F6040();
          v100 = v115;
          OUTLINED_FUNCTION_10_7();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_17_5(&v153);
          v101(v100, v120);
          v102 = OUTLINED_FUNCTION_1_7();
          v103(v102);
          v80 = -127;
          break;
        case 2:
          v142 = 2;
          sub_1BF8F5FEC();
          OUTLINED_FUNCTION_10_7();
          swift_unknownObjectRelease();
          (*(v122 + 8))(v62, v123);
          v91 = OUTLINED_FUNCTION_1_7();
          v92(v91);
          v80 = -126;
          break;
        case 3:
          v144 = 3;
          sub_1BF8F5F44();
          v93 = v131;
          OUTLINED_FUNCTION_10_7();
          sub_1BF8F613C();
          v94 = v121;
          sub_1BF9B5558();
          v95 = v139;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_17_5(&v150);
          v108(v93, v94);
          (*(v95 + 8))(v58, v51);
          v80 = v143;
          break;
        case 4:
          v145 = 4;
          sub_1BF8F5EF0();
          v88 = v130;
          OUTLINED_FUNCTION_10_7();
          swift_unknownObjectRelease();
          (*(v124 + 8))(v88, v125);
          v89 = OUTLINED_FUNCTION_1_7();
          v90(v89);
          v80 = -125;
          break;
        case 5:
          v146 = 5;
          sub_1BF8F5E9C();
          OUTLINED_FUNCTION_10_7();
          swift_unknownObjectRelease();
          (*(v127 + 8))(v63, v126);
          v104 = OUTLINED_FUNCTION_1_7();
          v105(v104);
          v80 = -124;
          break;
        case 6:
          v148 = 6;
          sub_1BF8F5DF4();
          OUTLINED_FUNCTION_10_7();
          sub_1BF8F60E8();
          v106 = v128;
          sub_1BF9B5558();
          v107 = v139;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_17_5(&v151);
          v109(v64, v106);
          (*(v107 + 8))(v58, v51);
          v80 = v147 | 0x40;
          break;
        case 7:
          v149 = 7;
          sub_1BF8F5DA0();
          OUTLINED_FUNCTION_10_7();
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_19_5();
          v97(v96, v74);
          v98 = OUTLINED_FUNCTION_1_7();
          v99(v98);
          v80 = -123;
          break;
        default:
          v140 = 0;
          sub_1BF8F6094();
          v76 = v114;
          OUTLINED_FUNCTION_10_7();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_17_5(&v152);
          v77(v76, v113);
          v78 = OUTLINED_FUNCTION_1_7();
          v79(v78);
          v80 = 0x80;
          break;
      }

      v87 = v138;
      *v75 = v80;
      return __swift_destroy_boxed_opaque_existential_1(v87);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF8F56C8()
{
  v2 = *v0;
  sub_1BF9B57A8();
  Channel.hash(into:)();
  return sub_1BF9B57E8();
}

void *sub_1BF8F5714@<X0>(void *a1@<X8>)
{
  result = static Channel.allCases.getter();
  *a1 = result;
  return result;
}

SiriSuggestionsKit::HabitualClientModel_optional __swiftcall HabitualClientModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF8F579C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1BF8CA4F0();
}

unint64_t sub_1BF8F57B4@<X0>(unint64_t *a1@<X8>)
{
  result = HabitualClientModel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriSuggestionsKit::SignalChannel_optional __swiftcall SignalChannel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF8F5930@<X0>(uint64_t *a1@<X8>)
{
  result = SignalChannel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF8F5A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF8F5A94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_1BF8F5AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 4:
      goto LABEL_3;
    case 1:

      break;
    case 2:
    case 3:

LABEL_3:

      break;
    default:
      return;
  }
}

uint64_t sub_1BF8F5B54()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = *(type metadata accessor for ActionIdentifier() - 8);
  OUTLINED_FUNCTION_84();
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_15_2(v10);
  *v11 = v12;
  v11[1] = sub_1BF8F5C60;

  return sub_1BF8F2BD0(v2, v0 + v5, v8, v9);
}

uint64_t sub_1BF8F5C60()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

unint64_t sub_1BF8F5D4C()
{
  result = qword_1EDBF4118;
  if (!qword_1EDBF4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4118);
  }

  return result;
}

unint64_t sub_1BF8F5DA0()
{
  result = qword_1EBDE8EC8;
  if (!qword_1EBDE8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8EC8);
  }

  return result;
}

unint64_t sub_1BF8F5DF4()
{
  result = qword_1EBDE8ED0;
  if (!qword_1EBDE8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8ED0);
  }

  return result;
}

unint64_t sub_1BF8F5E48()
{
  result = qword_1EBDE8ED8;
  if (!qword_1EBDE8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8ED8);
  }

  return result;
}

unint64_t sub_1BF8F5E9C()
{
  result = qword_1EBDE8EE0;
  if (!qword_1EBDE8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8EE0);
  }

  return result;
}

unint64_t sub_1BF8F5EF0()
{
  result = qword_1EBDE8EE8;
  if (!qword_1EBDE8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8EE8);
  }

  return result;
}

unint64_t sub_1BF8F5F44()
{
  result = qword_1EBDE8EF0;
  if (!qword_1EBDE8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8EF0);
  }

  return result;
}

unint64_t sub_1BF8F5F98()
{
  result = qword_1EBDE8EF8;
  if (!qword_1EBDE8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8EF8);
  }

  return result;
}

unint64_t sub_1BF8F5FEC()
{
  result = qword_1EBDE8F00;
  if (!qword_1EBDE8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8F00);
  }

  return result;
}

unint64_t sub_1BF8F6040()
{
  result = qword_1EBDE8F08;
  if (!qword_1EBDE8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8F08);
  }

  return result;
}

unint64_t sub_1BF8F6094()
{
  result = qword_1EBDE8F10;
  if (!qword_1EBDE8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8F10);
  }

  return result;
}

unint64_t sub_1BF8F60E8()
{
  result = qword_1EBDE8F60;
  if (!qword_1EBDE8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8F60);
  }

  return result;
}

unint64_t sub_1BF8F613C()
{
  result = qword_1EBDE8F68;
  if (!qword_1EBDE8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8F68);
  }

  return result;
}

unint64_t sub_1BF8F6194()
{
  result = qword_1EDBF0708[0];
  if (!qword_1EDBF0708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF0708);
  }

  return result;
}

unint64_t sub_1BF8F621C()
{
  result = qword_1EBDE8F80;
  if (!qword_1EBDE8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8F80);
  }

  return result;
}

unint64_t sub_1BF8F62A4()
{
  result = qword_1EBDE8F98;
  if (!qword_1EBDE8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8F98);
  }

  return result;
}

uint64_t dispatch thunk of ChannelGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  OUTLINED_FUNCTION_45();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 24);
  OUTLINED_FUNCTION_84();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_15_2(v14);
  *v15 = v16;
  v15[1] = sub_1BF8F6470;

  return v18(v9, v7, v5, v3, v1);
}

uint64_t sub_1BF8F6470()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

uint64_t dispatch thunk of ChannelCandidateSuggestionFactory.createAsync(identifier:params:objective:confidenceScore:deliveryVehicle:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_18_4();
  v1 = *(v0 + 120);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v7.n128_f64[0] = OUTLINED_FUNCTION_16_4(v4);

  return v6(v7);
}

uint64_t dispatch thunk of ChannelCandidateSuggestionFactory.create(intent:channelOverride:objective:confidenceScore:deliveryVehicle:)()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_18_4();
  v1 = *(v0 + 128);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v7.n128_f64[0] = OUTLINED_FUNCTION_16_4(v4);

  return v6(v7);
}

uint64_t dispatch thunk of ChannelCandidateSuggestionFactory.create(identifier:params:channelOverride:objective:confidenceScore:deliveryVehicle:addAdditionalContextProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = *(*v8 + 136);
  v24 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_15_2(v19);
  *v20 = v21;
  v20[1] = sub_1BF8F77D4;
  v22.n128_f64[0] = a8;

  return v24(a1, a2, a3, a4, a5, a6, a7, v22);
}

uint64_t getEnumTagSinglePayload for Channel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1E)
  {
    if (a2 + 226 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 226) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 227;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v5 >= 0x1D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for Channel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1D)
  {
    v6 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
          *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF8F6A98(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_1BF8F6AC4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 7 | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 6) & 7 | 0x80;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for HabitualClientModel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignalChannel(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Channel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Channel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF8F6E70(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BF8F6F30()
{
  result = qword_1EBDE8FB0;
  if (!qword_1EBDE8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FB0);
  }

  return result;
}

unint64_t sub_1BF8F6F88()
{
  result = qword_1EBDE8FB8;
  if (!qword_1EBDE8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FB8);
  }

  return result;
}

unint64_t sub_1BF8F6FE0()
{
  result = qword_1EBDE8FC0;
  if (!qword_1EBDE8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FC0);
  }

  return result;
}

unint64_t sub_1BF8F7038()
{
  result = qword_1EDBF4088;
  if (!qword_1EDBF4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4088);
  }

  return result;
}

unint64_t sub_1BF8F7090()
{
  result = qword_1EDBF4090;
  if (!qword_1EDBF4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4090);
  }

  return result;
}

unint64_t sub_1BF8F70E8()
{
  result = qword_1EDBF40B8;
  if (!qword_1EDBF40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40B8);
  }

  return result;
}

unint64_t sub_1BF8F7140()
{
  result = qword_1EDBF40C0;
  if (!qword_1EDBF40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40C0);
  }

  return result;
}

unint64_t sub_1BF8F7198()
{
  result = qword_1EDBF40E8;
  if (!qword_1EDBF40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40E8);
  }

  return result;
}

unint64_t sub_1BF8F71F0()
{
  result = qword_1EDBF40F0;
  if (!qword_1EDBF40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40F0);
  }

  return result;
}

unint64_t sub_1BF8F7248()
{
  result = qword_1EDBF4098;
  if (!qword_1EDBF4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4098);
  }

  return result;
}

unint64_t sub_1BF8F72A0()
{
  result = qword_1EDBF40A0;
  if (!qword_1EDBF40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40A0);
  }

  return result;
}

unint64_t sub_1BF8F72F8()
{
  result = qword_1EDBF40D8;
  if (!qword_1EDBF40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40D8);
  }

  return result;
}

unint64_t sub_1BF8F7350()
{
  result = qword_1EDBF40E0;
  if (!qword_1EDBF40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40E0);
  }

  return result;
}

unint64_t sub_1BF8F73A8()
{
  result = qword_1EDBF40A8;
  if (!qword_1EDBF40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40A8);
  }

  return result;
}

unint64_t sub_1BF8F7400()
{
  result = qword_1EDBF40B0;
  if (!qword_1EDBF40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40B0);
  }

  return result;
}

unint64_t sub_1BF8F7458()
{
  result = qword_1EDBF40F8;
  if (!qword_1EDBF40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40F8);
  }

  return result;
}

unint64_t sub_1BF8F74B0()
{
  result = qword_1EDBF4100;
  if (!qword_1EDBF4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4100);
  }

  return result;
}

unint64_t sub_1BF8F7508()
{
  result = qword_1EDBF40C8;
  if (!qword_1EDBF40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40C8);
  }

  return result;
}

unint64_t sub_1BF8F7560()
{
  result = qword_1EDBF40D0;
  if (!qword_1EDBF40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF40D0);
  }

  return result;
}

unint64_t sub_1BF8F75B8()
{
  result = qword_1EDBF4108;
  if (!qword_1EDBF4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4108);
  }

  return result;
}

unint64_t sub_1BF8F7610()
{
  result = qword_1EDBF4110;
  if (!qword_1EDBF4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4110);
  }

  return result;
}

unint64_t sub_1BF8F7664()
{
  result = qword_1EBDE8FC8;
  if (!qword_1EBDE8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FC8);
  }

  return result;
}

unint64_t sub_1BF8F76B8()
{
  result = qword_1EBDE8FD0;
  if (!qword_1EBDE8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FD0);
  }

  return result;
}

uint64_t sub_1BF8F770C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF8F7774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return sub_1BF9B54A8();
}

Swift::String __swiftcall DialogIdProvider.getId()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t DialogProvider.description.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1BF9B4B08();
}

void *DefaultDialogProperties.globals.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t DefaultDialogProperties.__allocating_init(params:globals:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DefaultDialogProperties.init(params:globals:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DefaultDialogProperties.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DefaultDialogProperties.__deallocating_deinit()
{
  DefaultDialogProperties.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t dispatch thunk of DialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1BF8F7AF0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BF8F7AF0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t ExperimentId.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1BF8F7D14(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8F7DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8F7D14(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8F7DCC(uint64_t a1)
{
  v2 = sub_1BF8F7F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8F7E08(uint64_t a1)
{
  v2 = sub_1BF8F7F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExperimentId.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8FD8, &qword_1BF9BAC90);
  v5 = OUTLINED_FUNCTION_0_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8F7F70();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_1BF8F7F70()
{
  result = qword_1EBDE8FE0;
  if (!qword_1EBDE8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FE0);
  }

  return result;
}

uint64_t ExperimentId.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8FE8, &qword_1BF9BAC98);
  v7 = OUTLINED_FUNCTION_0_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8F7F70();
  sub_1BF9B5868();
  if (!v2)
  {
    v15 = sub_1BF9B5518();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for ExperimentId.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BF8F8218()
{
  result = qword_1EBDE8FF0;
  if (!qword_1EBDE8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FF0);
  }

  return result;
}

unint64_t sub_1BF8F8270()
{
  result = qword_1EBDE8FF8;
  if (!qword_1EBDE8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8FF8);
  }

  return result;
}

unint64_t sub_1BF8F82C8()
{
  result = qword_1EBDE9000;
  if (!qword_1EBDE9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9000);
  }

  return result;
}

uint64_t static Clocks.getSystemClock()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SystemClock();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F3EF85D8;
  *a1 = result;
  return result;
}

void *static Clocks.getStaticClock(_:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9008, &qword_1BF9BAE60);
  OUTLINED_FUNCTION_1_8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF9B6370;
  *(v4 + 32) = a2;
  v5 = type metadata accessor for StaticClock();
  OUTLINED_FUNCTION_1_8();
  v6 = swift_allocObject();
  result = sub_1BF8F8C58(v4);
  a1[3] = v5;
  a1[4] = &off_1F3EF85C8;
  *a1 = v6;
  return result;
}

void *static Clocks.getStaticClock(timeIntervals:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StaticClock();
  OUTLINED_FUNCTION_1_8();
  v3 = swift_allocObject();

  result = sub_1BF8F8C58(v4);
  a1[3] = v2;
  a1[4] = &off_1F3EF85C8;
  *a1 = v3;
  return result;
}

uint64_t static Clocks.getOffsetClock(clock:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = &type metadata for OffsetClock;
  a4[4] = &off_1F3EF85B8;
  v8 = swift_allocObject();
  *a4 = v8;
  sub_1BF8D2004(a1, v8 + 16);
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
}

uint64_t static Clocks.getMutableClock(bootstrapWith:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 8))(v1, v2);
  type metadata accessor for MutableClock();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

uint64_t MutableClock.time.setter(double a1)
{
  result = OUTLINED_FUNCTION_2_7();
  *(v1 + 16) = a1;
  return result;
}

uint64_t MovingForwardClock.step.setter(double a1)
{
  result = OUTLINED_FUNCTION_2_7();
  *(v1 + 24) = a1;
  return result;
}

uint64_t MovingForwardClock.__allocating_init(time:step:)(double a1, double a2)
{
  OUTLINED_FUNCTION_1_8();
  v4 = swift_allocObject();
  MovingForwardClock.init(time:step:)(a1, a2);
  return v4;
}

uint64_t MovingForwardClock.init(time:step:)(double a1, double a2)
{
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

Swift::Double __swiftcall MovingForwardClock.getCurrentTime()()
{
  v1 = *(v0 + 32);

  [v1 lock];
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_beginAccess();
  *(v0 + 16) = v2 + *(v0 + 24);
  [v1 unlock];

  return v2;
}

double sub_1BF8F8898(void *a1, uint64_t a2)
{
  [a1 lock];
  sub_1BF8F8E24(a2, &v6);
  [a1 unlock];

  if (!v2)
  {
    return v6;
  }

  return result;
}

Swift::Void __swiftcall MovingForwardClock.setTime(newTime:)(Swift::Double newTime)
{
  v3 = *(v1 + 32);

  [v3 lock];
  OUTLINED_FUNCTION_2_7();
  *(v1 + 16) = newTime;
  [v3 unlock];
}

uint64_t MovingForwardClock.__deallocating_deinit()
{
  OUTLINED_FUNCTION_1_8();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

double sub_1BF8F8A0C()
{
  v0 = sub_1BF9B44C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF9B44B8();
  sub_1BF9B4478();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

double sub_1BF8F8B04()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v2();
  v5 = v4;
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  return (*(v7 + 8))(v6, v7) - v5;
}

void *sub_1BF8F8C58(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = 0;
  v1[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  return v1;
}

_BYTE *storeEnumTagSinglePayload for Clocks(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

double sub_1BF8F8DDC()
{
  v1 = *(v0 + 32);

  return sub_1BF8F8898(v1, v0);
}

uint64_t sub_1BF8F8E24@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(result + 24);
  v5 = v4 % v3;
  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = __OFADD__(v4, 1);
  v7 = v4 + 1;
  if (!v6)
  {
    v8 = *(v2 + 8 * v5 + 32);
    *(result + 24) = v7;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BF8F8E68()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1BF8F8E90()
{
  sub_1BF8F8E68();
  OUTLINED_FUNCTION_1_8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BF8F8EDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1BF8F8F1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF8F8FAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF904C9C;

  return DialogCallback.getText(dialog:dialogProperties:environment:)();
}

uint64_t sub_1BF8F903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  *v15 = v9;
  v15[1] = sub_1BF8F9100;

  return DialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, v16, a5, a6, v17, v18, a9);
}

uint64_t sub_1BF8F9100()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_5_3();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_121();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_88();
  }

  return v7(v6);
}

uint64_t DialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_111(v10);
  v24 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  *(v9 + 16) = v14;
  *v14 = v9;
  v14[1] = sub_1BF904C9C;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_100();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

double DialogCallbacksProvider.getPreambleOverrideCallback(context:deliveryVehicle:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t DialogCallbacksProvider.getPreambleOverrideCallback(context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle;
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v18 = *v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v11 = *(a3 + 32);
  sub_1BF8C0D00(v18, v7, v8, v9, v10);
  v11(a1, &v18, a2, a3);
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;

  return sub_1BF8C0CB8(v12, v13, v14, v15, v16);
}

uint64_t ViewContext.suggestionId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_43();
}

uint64_t ViewContext.deliveryVehicle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle;
  v3 = *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle);
  v4 = *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 8);
  v5 = *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 16);
  v6 = *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;
  return sub_1BF8C0D00(v3, v4, v5, v6, v7);
}

uint64_t sub_1BF8F946C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1BF8F94E0(v4);
}

uint64_t sub_1BF8F9498()
{
  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_contextMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1BF8F94E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_contextMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ViewContext.__allocating_init(suggestionId:)()
{
  v0 = sub_1BF9B4558();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_17();
  sub_1BF9B4548();
  v2 = type metadata accessor for ViewContext(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_33();
  ViewContext.init(suggestionId:locale:deliveryVehicle:)();
  return v5;
}

uint64_t ViewContext.__allocating_init(locale:deliveryVehicle:)(uint64_t a1, __int128 *a2)
{
  v5 = sub_1BF9B4558();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  v11 = *(a2 + 32);
  v17 = a2[1];
  v18 = *a2;
  (*(v8 + 16))(v2, a1, v5);
  v12 = type metadata accessor for ViewContext(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  ViewContext.init(suggestionId:locale:deliveryVehicle:)();
  (*(v8 + 8))(a1, v5);
  return v15;
}

uint64_t ViewContext.__allocating_init(suggestionId:locale:deliveryVehicle:)()
{
  OUTLINED_FUNCTION_104();
  v0 = OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_26();
  ViewContext.init(suggestionId:locale:deliveryVehicle:)();
  return v0;
}

uint64_t ViewContext.init(suggestionId:locale:deliveryVehicle:)()
{
  OUTLINED_FUNCTION_104();
  v6 = *(v5 + 32);
  *(v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_contextMap) = sub_1BF9B4988();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  v7 = OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_locale;
  v8 = sub_1BF9B4558();
  OUTLINED_FUNCTION_13(v8);
  v12 = v0[1];
  v13 = *v0;
  (*(v9 + 32))(v1 + v7, v2);
  v10 = v1 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle;
  *v10 = v13;
  *(v10 + 16) = v12;
  *(v10 + 32) = v6;
  return v1;
}

uint64_t ViewContext.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_locale;
  v3 = sub_1BF9B4558();
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(v0 + v2);
  sub_1BF8C0CB8(*(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle), *(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 8), *(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 16), *(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 24), *(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_deliveryVehicle + 32));
  v5 = *(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit11ViewContext_contextMap);

  return v0;
}

uint64_t Assets.icon.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return OUTLINED_FUNCTION_66_1(v2, v3, v4, v5, *(v1 + 32), a1);
}

uint64_t sub_1BF8F9990(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_1BF8F99A4(result, a2, a3, a4, a5, SHIBYTE(a5));
  }

  return result;
}

uint64_t sub_1BF8F99A4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  switch(a6)
  {
    case 0:

      result = sub_1BF8F9A50(result, a2);
      break;
    case 1:

      result = sub_1BF8F9AA8(a3, a4, a5);
      break;
    case 2:
    case 3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF8F9A50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BF8F9AA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return OUTLINED_FUNCTION_17_6();
  }

  return result;
}

uint64_t Assets.inAppIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return OUTLINED_FUNCTION_66_1(v2, v3, v4, v5, *(v1 + 72), a1);
}

uint64_t Assets.init(icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  return sub_1BF8F9990(v3, v2, v4, v5, v6);
}

__n128 Assets.init(icon:inAppIcon:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 40) = *a2;
  v6 = *(a2 + 32);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 56) = v5;
  *(a3 + 72) = v6;
  return result;
}

BOOL static Assets.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v136 = *(a1 + 40);
  v137 = *(a1 + 48);
  v138 = *(a1 + 56);
  v139 = *(a1 + 64);
  v140 = *(a1 + 72);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v141 = *(a2 + 48);
  v134 = *(a2 + 56);
  v142 = *(a2 + 64);
  v135 = *(a2 + 72);
  if (v6 >> 8 <= 0xFE)
  {
    v148 = *a1;
    v149 = v3;
    v150 = v5;
    v151 = v4;
    v152 = v6;
    if (v11 >> 8 <= 0xFE)
    {
      v133 = v12;
      v143 = v7;
      v144 = v8;
      v145 = v9;
      v146 = v10;
      v147 = v11;
      v49 = OUTLINED_FUNCTION_1_9();
      sub_1BF8F9990(v49, v50, v51, v52, v53);
      OUTLINED_FUNCTION_25_3();
      sub_1BF8F9990(v54, v55, v56, v57, v58);
      v59 = OUTLINED_FUNCTION_1_9();
      sub_1BF8F9990(v59, v60, v61, v62, v63);
      v132 = static Image.== infix(_:_:)(&v148, &v143);
      OUTLINED_FUNCTION_25_3();
      sub_1BF8F9E90(v64, v65, v66, v67, v68, SBYTE1(v11));
      v69 = OUTLINED_FUNCTION_1_9();
      sub_1BF8F9E90(v69, v70, v71, v72, v73, SBYTE1(v6));
      v74 = OUTLINED_FUNCTION_1_9();
      sub_1BF8F9E7C(v74, v75, v76, v77, v78);
      if ((v132 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    v13 = v7;
    v29 = OUTLINED_FUNCTION_1_9();
    sub_1BF8F9990(v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_25_3();
    sub_1BF8F9990(v34, v35, v36, v37, v38);
    v39 = OUTLINED_FUNCTION_1_9();
    sub_1BF8F9990(v39, v40, v41, v42, v43);
    v44 = OUTLINED_FUNCTION_1_9();
    sub_1BF8F9E90(v44, v45, v46, v47, v48, SBYTE1(v6));
LABEL_6:
    v148 = v2;
    v149 = v3;
    v150 = v5;
    v151 = v4;
    v152 = v6;
    v153 = v13;
    v154 = v8;
    v155 = v9;
    v156 = v10;
    v157 = v11;
LABEL_14:
    sub_1BF8DFBF0(&v148, &qword_1EBDE9010, &qword_1BF9BAFE0);
    return 0;
  }

  v133 = *(a2 + 40);
  v13 = *a2;
  v14 = OUTLINED_FUNCTION_1_9();
  sub_1BF8F9990(v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_25_3();
  sub_1BF8F9990(v19, v20, v21, v22, v23);
  if (v11 >> 8 <= 0xFE)
  {
    goto LABEL_6;
  }

  v24 = OUTLINED_FUNCTION_1_9();
  sub_1BF8F9E7C(v24, v25, v26, v27, v28);
LABEL_8:
  if (v140 >> 8 > 0xFE)
  {
    v79 = v135;
    v81 = v136;
    v80 = v137;
    v82 = OUTLINED_FUNCTION_27_0();
    v84 = v138;
    v83 = v139;
    sub_1BF8F9990(v82, v85, v138, v139, v140);
    v86 = v133;
    v87 = v134;
    v89 = v141;
    v88 = v142;
    sub_1BF8F9990(v133, v141, v134, v142, v135);
    if (v135 >> 8 > 0xFE)
    {
      v90 = OUTLINED_FUNCTION_3_7();
      sub_1BF8F9E7C(v90, v91, v92, v93, v94);
      return 1;
    }

    goto LABEL_13;
  }

  v81 = v136;
  v80 = v137;
  v148 = v136;
  v149 = v137;
  v84 = v138;
  v83 = v139;
  v150 = v138;
  v151 = v139;
  v79 = v135;
  v152 = v140;
  v87 = v134;
  v89 = v141;
  if (v135 >> 8 > 0xFE)
  {
    v95 = OUTLINED_FUNCTION_3_7();
    sub_1BF8F9990(v95, v96, v97, v98, v99);
    v86 = v133;
    v88 = v142;
    sub_1BF8F9990(v133, v141, v134, v142, v135);
    v100 = OUTLINED_FUNCTION_3_7();
    sub_1BF8F9990(v100, v101, v102, v103, v104);
    v105 = OUTLINED_FUNCTION_3_7();
    sub_1BF8F9E90(v105, v106, v107, v108, v109, SBYTE1(v140));
LABEL_13:
    v148 = v81;
    v149 = v80;
    v150 = v84;
    v151 = v83;
    v152 = v140;
    v153 = v86;
    v154 = v89;
    v155 = v87;
    v156 = v88;
    v157 = v79;
    goto LABEL_14;
  }

  v143 = v133;
  v144 = v141;
  v145 = v134;
  v146 = v142;
  v147 = v135;
  v111 = OUTLINED_FUNCTION_3_7();
  sub_1BF8F9990(v111, v112, v113, v114, v115);
  sub_1BF8F9990(v133, v141, v134, v142, v135);
  v116 = OUTLINED_FUNCTION_3_7();
  sub_1BF8F9990(v116, v117, v118, v119, v120);
  v121 = static Image.== infix(_:_:)(&v148, &v143);
  sub_1BF8F9E90(v133, v141, v134, v142, v135, SBYTE1(v135));
  v122 = OUTLINED_FUNCTION_3_7();
  sub_1BF8F9E90(v122, v123, v124, v125, v126, SBYTE1(v140));
  v127 = OUTLINED_FUNCTION_3_7();
  sub_1BF8F9E7C(v127, v128, v129, v130, v131);
  return (v121 & 1) != 0;
}

uint64_t sub_1BF8F9E7C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_1BF8F9E90(result, a2, a3, a4, a5, SHIBYTE(a5));
  }

  return result;
}

uint64_t sub_1BF8F9E90(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  switch(a6)
  {
    case 0:

      result = sub_1BF8F9F3C(result, a2);
      break;
    case 1:

      result = sub_1BF8F9F94(a3, a4, a5);
      break;
    case 2:
    case 3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF8F9F3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BF8F9F94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF8F9FAC();
  }

  return result;
}

uint64_t sub_1BF8F9FB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852793705 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F63497070416E69 && a2 == 0xE90000000000006ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF8FA084(char a1)
{
  if (a1)
  {
    return 0x6F63497070416E69;
  }

  else
  {
    return 1852793705;
  }
}

uint64_t sub_1BF8FA0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8F9FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8FA100(uint64_t a1)
{
  v2 = sub_1BF8FAA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FA13C(uint64_t a1)
{
  v2 = sub_1BF8FAA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Assets.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9018, &qword_1BF9BAFE8);
  OUTLINED_FUNCTION_1(v26);
  v27 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78_1();
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  v23 = v0[6];
  v24 = v0[5];
  v21 = v0[8];
  v22 = v0[7];
  v28 = *(v0 + 36);
  v25 = v2[4];
  v11 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v12 = OUTLINED_FUNCTION_106();
  sub_1BF8F9990(v12, v8, v9, v10, v11);
  sub_1BF8FAA2C();
  sub_1BF9B5898();
  sub_1BF8FAA80();
  sub_1BF9B55E8();
  OUTLINED_FUNCTION_116();
  if (!v26)
  {
    OUTLINED_FUNCTION_81_0();
    sub_1BF8F9990(v13, v14, v15, v16, v17);
    sub_1BF9B55E8();
    OUTLINED_FUNCTION_116();
  }

  v18 = *(v27 + 8);
  v19 = OUTLINED_FUNCTION_33();
  v20(v19);
  OUTLINED_FUNCTION_37();
}

void Assets.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9020, &qword_1BF9BAFF0);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_77_0();
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF8FAA2C();
  sub_1BF9B5868();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v12 = v4;
    LOBYTE(v25[0]) = 0;
    sub_1BF8FAAD4();
    OUTLINED_FUNCTION_96();
    v13 = v26;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v41 = v30;
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_96();
    v14 = *(v7 + 8);
    v15 = OUTLINED_FUNCTION_22();
    v16(v15);
    v21 = v36;
    v20 = v37;
    v19 = v38;
    v18 = v39;
    v17 = v40;
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v25[3] = v29;
    LOWORD(v25[4]) = v30;
    v25[5] = v36;
    v25[6] = v37;
    v25[7] = v38;
    v25[8] = v39;
    LOWORD(v25[9]) = v40;
    memcpy(v12, v25, 0x4AuLL);
    sub_1BF8FAB28(v25, &v26);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v26 = v13;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v30 = v41;
    v31 = v21;
    v32 = v20;
    v33 = v19;
    v34 = v18;
    v35 = v17;
    sub_1BF8FAB60(&v26);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t static Image.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 32);
  v13 = *(a2 + 33);
  v137[0] = *a1;
  v137[1] = v2;
  v137[2] = v5;
  v137[3] = v4;
  v132 = v6;
  v138 = v6;
  v139 = v7;
  v140 = v9;
  v141 = v8;
  v142 = v11;
  v143 = v10;
  v144 = v12;
  v145 = v13;
  v14 = v5;
  v15 = v4;
  switch(v7)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_28;
      }

      if (v3 != v9 || v2 != v8)
      {
        OUTLINED_FUNCTION_27_0();
        if ((OUTLINED_FUNCTION_95_0() & 1) == 0)
        {
          v109 = OUTLINED_FUNCTION_7_7();
          sub_1BF8F99A4(v109, v110, v111, v112, v113, 1);
          v74 = OUTLINED_FUNCTION_6_7();
          v79 = 1;
          goto LABEL_29;
        }
      }

      if (v132 == 255)
      {
        v94 = OUTLINED_FUNCTION_7_7();
        sub_1BF8F99A4(v94, v95, v96, v97, v98, 1);
        v99 = OUTLINED_FUNCTION_8_4();
        sub_1BF8F99A4(v99, v100, v101, v102, 255, 1);
        v103 = OUTLINED_FUNCTION_42_2();
        sub_1BF8F9AA8(v103, v104, 255);
        v105 = OUTLINED_FUNCTION_26();
        sub_1BF8F9AA8(v105, v106, v12);
        sub_1BF8DFBF0(v137, &qword_1EBDE9028, &qword_1BF9BAFF8);
        if (v12 == 255)
        {
          v107 = OUTLINED_FUNCTION_42_2();
          sub_1BF8F9F94(v107, v108, 255);
          return 1;
        }

        goto LABEL_41;
      }

      v135[0] = v14;
      v135[1] = v15;
      v136 = v132;
      if (v12 == 255)
      {
        OUTLINED_FUNCTION_43_2();
        sub_1BF8F99A4(v114, v115, v116, v117, 255, 1);
        v118 = OUTLINED_FUNCTION_8_4();
        sub_1BF8F99A4(v118, v119, v120, v121, v132, 1);
        v122 = OUTLINED_FUNCTION_42_2();
        sub_1BF8F9AA8(v122, v123, v132);
        v124 = OUTLINED_FUNCTION_26();
        sub_1BF8F9AA8(v124, v125, 255);
        v126 = OUTLINED_FUNCTION_42_2();
        sub_1BF8F9AA8(v126, v127, v132);
        sub_1BF8DFBF0(v137, &qword_1EBDE9028, &qword_1BF9BAFF8);
        OUTLINED_FUNCTION_42_2();
        sub_1BF8F9FAC();
LABEL_41:
        v128 = OUTLINED_FUNCTION_42_2();
        sub_1BF8F9F94(v128, v129, v132);
        v130 = OUTLINED_FUNCTION_26();
        sub_1BF8F9F94(v130, v131, v12);
        return 0;
      }

      v133[0] = v11;
      v133[1] = v10;
      v134 = v12 & 1;
      v49 = 1;
      v50 = OUTLINED_FUNCTION_7_7();
      sub_1BF8F99A4(v50, v51, v52, v53, v54, 1);
      v55 = OUTLINED_FUNCTION_8_4();
      sub_1BF8F99A4(v55, v56, v57, v58, v132, 1);
      v59 = OUTLINED_FUNCTION_42_2();
      sub_1BF8F9AA8(v59, v60, v132);
      v61 = OUTLINED_FUNCTION_26();
      sub_1BF8F9AA8(v61, v62, v12);
      v63 = OUTLINED_FUNCTION_42_2();
      sub_1BF8F9AA8(v63, v64, v132);
      v65 = static Color.== infix(_:_:)(v135, v133);
      sub_1BF8DFBF0(v137, &qword_1EBDE9028, &qword_1BF9BAFF8);
      OUTLINED_FUNCTION_26();
      sub_1BF8F9FAC();
      OUTLINED_FUNCTION_42_2();
      sub_1BF8F9FAC();
      v66 = OUTLINED_FUNCTION_42_2();
      sub_1BF8F9F94(v66, v67, v132);
      if ((v65 & 1) == 0)
      {
        return 0;
      }

      return v49;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_28;
      }

      if (v3 != v9 || v2 != v8)
      {
        v28 = OUTLINED_FUNCTION_95_0();
        v30 = OUTLINED_FUNCTION_7_7();
        sub_1BF8F99A4(v30, v31, v32, v33, v34, 2);
        v35 = OUTLINED_FUNCTION_6_7();
        v40 = 2;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_43_2();
      sub_1BF8F99A4(v80, v81, v82, v83, v12, 2);
      v84 = OUTLINED_FUNCTION_6_7();
      v89 = 2;
      goto LABEL_35;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_28;
      }

      if (v3 != v9 || v2 != v8)
      {
        v28 = OUTLINED_FUNCTION_95_0();
        v42 = OUTLINED_FUNCTION_7_7();
        sub_1BF8F99A4(v42, v43, v44, v45, v46, 3);
        v35 = OUTLINED_FUNCTION_6_7();
        v40 = 3;
LABEL_16:
        sub_1BF8F99A4(v35, v36, v37, v38, v39, v40);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_43_2();
      sub_1BF8F99A4(v90, v91, v92, v93, v12, 3);
      v84 = OUTLINED_FUNCTION_6_7();
      v89 = 3;
LABEL_35:
      sub_1BF8F99A4(v84, v85, v86, v87, v88, v89);
      sub_1BF8DFBF0(v137, &qword_1EBDE9028, &qword_1BF9BAFF8);
      return 1;
    default:
      if (v13)
      {
LABEL_28:
        v68 = OUTLINED_FUNCTION_7_7();
        sub_1BF8F99A4(v68, v69, v70, v71, v72, v73);
        v74 = OUTLINED_FUNCTION_6_7();
        v79 = v7;
LABEL_29:
        sub_1BF8F99A4(v74, v75, v76, v77, v78, v79);
        sub_1BF8DFBF0(v137, &qword_1EBDE9028, &qword_1BF9BAFF8);
        return 0;
      }

      v16 = OUTLINED_FUNCTION_7_7();
      sub_1BF8F99A4(v16, v17, v18, v19, v20, v21);
      v22 = OUTLINED_FUNCTION_6_7();
      sub_1BF8F99A4(v22, v23, v24, v25, v26, 0);
      v27 = OUTLINED_FUNCTION_27_0();
      v28 = MEMORY[0x1BFB5D740](v27);
LABEL_17:
      sub_1BF8DFBF0(v137, &qword_1EBDE9028, &qword_1BF9BAFF8);
      return v28 & 1;
  }
}

unint64_t sub_1BF8FAA2C()
{
  result = qword_1EDBF47D0;
  if (!qword_1EDBF47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47D0);
  }

  return result;
}

unint64_t sub_1BF8FAA80()
{
  result = qword_1EDBF0968;
  if (!qword_1EDBF0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0968);
  }

  return result;
}

unint64_t sub_1BF8FAAD4()
{
  result = qword_1EDBF4140;
  if (!qword_1EDBF4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4140);
  }

  return result;
}

uint64_t sub_1BF8FAB90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001BF9CB670 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8FAC2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4963696870617267 && a2 == 0xEB000000006E6F63)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

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

uint64_t sub_1BF8FAD84(char a1)
{
  result = 1635017060;
  switch(a1)
  {
    case 1:
      result = 0x6C6F626D7973;
      break;
    case 2:
      result = 0x6E6F6349707061;
      break;
    case 3:
      result = 0x4963696870617267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF8FAE04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8FAE8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8FAF30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F43746E6974 && a2 == 0xE900000000000072)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF8FB000(char a1)
{
  if (a1)
  {
    return 0x6F6C6F43746E6974;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1BF8FB038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAB90(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8FB064(uint64_t a1)
{
  v2 = sub_1BF8FC27C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB0A0(uint64_t a1)
{
  v2 = sub_1BF8FC27C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FB0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8FB10C(uint64_t a1)
{
  v2 = sub_1BF8FC1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB148(uint64_t a1)
{
  v2 = sub_1BF8FC1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FB188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAE04(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8FB1B4(uint64_t a1)
{
  v2 = sub_1BF8FC378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB1F0(uint64_t a1)
{
  v2 = sub_1BF8FC378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FB230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAE8C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8FB25C(uint64_t a1)
{
  v2 = sub_1BF8FC228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB298(uint64_t a1)
{
  v2 = sub_1BF8FC228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FB2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FAF30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8FB304(uint64_t a1)
{
  v2 = sub_1BF8FC2D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FB340(uint64_t a1)
{
  v2 = sub_1BF8FC2D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Image.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v68 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9030, &qword_1BF9BB000);
  v7 = OUTLINED_FUNCTION_1(v6);
  v62 = v8;
  v63 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v61 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9038, &qword_1BF9BB008);
  v14 = OUTLINED_FUNCTION_1(v13);
  v57 = v15;
  v58 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9040, &qword_1BF9BB010);
  v20 = OUTLINED_FUNCTION_1(v19);
  v59 = v21;
  v60 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  v56 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9048, &qword_1BF9BB018);
  OUTLINED_FUNCTION_1(v26);
  v55 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_105();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9050, &qword_1BF9BB020);
  v32 = OUTLINED_FUNCTION_1(v31);
  v66 = v33;
  v67 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v53 - v37;
  v39 = v1[1];
  v64 = *v1;
  v65 = v39;
  v40 = v1[2];
  v53 = v1[3];
  v54 = v40;
  v72 = *(v1 + 32);
  v41 = *(v1 + 33);
  v42 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1BF8FC1D4();
  sub_1BF9B5898();
  switch(v41)
  {
    case 1:
      LOBYTE(v69) = 1;
      sub_1BF8FC2D0();
      v46 = v56;
      OUTLINED_FUNCTION_57_2();
      sub_1BF9B5598();
      LOBYTE(v69) = 0;
      v47 = v60;
      v48 = v68;
      sub_1BF9B55F8();
      if (!v48)
      {
        v69 = v54;
        v70 = v53;
        v71 = v72;
        sub_1BF8FC324();
        sub_1BF9B55E8();
      }

      (*(v59 + 8))(v46, v47);
      goto LABEL_9;
    case 2:
      LOBYTE(v69) = 2;
      sub_1BF8FC27C();
      OUTLINED_FUNCTION_57_2();
      sub_1BF9B5598();
      v43 = v58;
      sub_1BF9B55F8();
      (*(v57 + 8))(v0, v43);
LABEL_9:
      v49 = *(v66 + 8);
      v50 = OUTLINED_FUNCTION_26();
      v52(v50, v51);
      goto LABEL_10;
    case 3:
      LOBYTE(v69) = 3;
      sub_1BF8FC228();
      v44 = v61;
      OUTLINED_FUNCTION_115();
      v45 = v63;
      sub_1BF9B55F8();
      (*(v62 + 8))(v44, v45);
      goto LABEL_5;
    default:
      LOBYTE(v69) = 0;
      sub_1BF8FC378();
      OUTLINED_FUNCTION_115();
      v69 = v64;
      v70 = v65;
      sub_1BF8FC3CC();
      sub_1BF9B5638();
      (*(v55 + 8))(v3, v26);
LABEL_5:
      (*(v66 + 8))(v38, v0);
LABEL_10:
      OUTLINED_FUNCTION_37();
      return;
  }
}

void Image.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v101 = v1;
  v4 = v3;
  v96 = v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9060, &qword_1BF9BB028);
  OUTLINED_FUNCTION_1(v99);
  v94 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v98 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9068, &qword_1BF9BB030);
  v12 = OUTLINED_FUNCTION_1(v11);
  v91 = v13;
  v92 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v95 = v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9070, &qword_1BF9BB038);
  OUTLINED_FUNCTION_1(v97);
  v93 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_105();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9078, &qword_1BF9BB040);
  OUTLINED_FUNCTION_1(v22);
  v90 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9080, &unk_1BF9BB048);
  OUTLINED_FUNCTION_1(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_78_1();
  v35 = v4[3];
  v36 = v4[4];
  v100 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v35);
  sub_1BF8FC1D4();
  v37 = v101;
  sub_1BF9B5868();
  if (v37)
  {
    goto LABEL_9;
  }

  v87 = v22;
  v88 = v28;
  v89 = v2;
  v38 = v99;
  v101 = v31;
  v39 = v0;
  v40 = sub_1BF9B5568();
  sub_1BF8D21BC(v40, 0);
  if (v42 == v43 >> 1)
  {
LABEL_8:
    v51 = sub_1BF9B5308();
    swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v53 = &type metadata for Image;
    sub_1BF9B54B8();
    OUTLINED_FUNCTION_36_0();
    v55 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11(v51);
    (*(v56 + 104))(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v101 + 8))(v39, v29);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v100);
LABEL_10:
    OUTLINED_FUNCTION_37();
    return;
  }

  if (v42 < (v43 >> 1))
  {
    v85 = *(v41 + v42);
    v44 = sub_1BF8D21AC(v42 + 1);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    v86 = v44;
    if (v46 == v48 >> 1)
    {
      v49 = v96;
      switch(v85)
      {
        case 1:
          LOBYTE(v102) = 1;
          sub_1BF8FC2D0();
          OUTLINED_FUNCTION_46_1();
          LOBYTE(v102) = 0;
          v78 = sub_1BF9B5518();
          v77 = v79;
          OUTLINED_FUNCTION_81_0();
          sub_1BF902398();
          sub_1BF9B5508();
          swift_unknownObjectRelease();
          v80 = OUTLINED_FUNCTION_108();
          v81(v80);
          v82 = OUTLINED_FUNCTION_54_4();
          v83(v82);
          v65 = v102;
          v76 = v103;
          goto LABEL_15;
        case 2:
          LOBYTE(v102) = 2;
          sub_1BF8FC27C();
          OUTLINED_FUNCTION_46_1();
          v57 = v92;
          v59 = sub_1BF9B5518();
          v77 = v60;
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_58_1();
          v62(v61, v57);
          v63 = OUTLINED_FUNCTION_24_3();
          v64(v63);
          v76 = 0;
          v65 = 0uLL;
          v66 = v100;
          v78 = v59;
          goto LABEL_16;
        case 3:
          v58 = v38;
          LOBYTE(v102) = 3;
          sub_1BF8FC228();
          OUTLINED_FUNCTION_46_1();
          v78 = sub_1BF9B5518();
          v77 = v67;
          swift_unknownObjectRelease();
          v68 = OUTLINED_FUNCTION_58_1();
          v69(v68, v58);
          v70 = OUTLINED_FUNCTION_54_4();
          v71(v70);
          v76 = 0;
          goto LABEL_14;
        default:
          LOBYTE(v102) = 0;
          sub_1BF8FC378();
          OUTLINED_FUNCTION_46_1();
          sub_1BF9023EC();
          v50 = v87;
          sub_1BF9B5558();
          swift_unknownObjectRelease();
          v72 = OUTLINED_FUNCTION_58_1();
          v73(v72, v50);
          v74 = OUTLINED_FUNCTION_54_4();
          v75(v74);
          v76 = 0;
          v77 = *(&v102 + 1);
          v78 = v102;
LABEL_14:
          v65 = 0uLL;
LABEL_15:
          v66 = v100;
LABEL_16:
          *v49 = v78;
          *(v49 + 8) = v77;
          *(v49 + 16) = v65;
          *(v49 + 32) = v76;
          *(v49 + 33) = v85;
          __swift_destroy_boxed_opaque_existential_1(v66);
          break;
      }

      goto LABEL_10;
    }

    v39 = v0;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static Color.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v11 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v8 = sub_1BF9B56D8();
        OUTLINED_FUNCTION_69_1();
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_26_4();
        sub_1BF8F9FAC();
        OUTLINED_FUNCTION_69_1();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_26_4();
      sub_1BF8F9FAC();
      OUTLINED_FUNCTION_33();
      sub_1BF8F9FAC();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_26_4();
    sub_1BF8F9FAC();
    OUTLINED_FUNCTION_69_1();
    sub_1BF8F9FAC();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v9 = 1;
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_20_5();
    sub_1BF8F9FAC();
    OUTLINED_FUNCTION_20_5();
    sub_1BF8F9FAC();
    return v9;
  }

  OUTLINED_FUNCTION_33();
  v8 = sub_1BF9B56D8();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_20_5();
  sub_1BF8F9FAC();
  OUTLINED_FUNCTION_69_1();
LABEL_16:
  sub_1BF8F9FAC();
  return v8 & 1;
}

unint64_t sub_1BF8FC1D4()
{
  result = qword_1EDBF4ED8;
  if (!qword_1EDBF4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4ED8);
  }

  return result;
}

unint64_t sub_1BF8FC228()
{
  result = qword_1EDBF4148;
  if (!qword_1EDBF4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4148);
  }

  return result;
}

unint64_t sub_1BF8FC27C()
{
  result = qword_1EDBF4EA0;
  if (!qword_1EDBF4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EA0);
  }

  return result;
}

unint64_t sub_1BF8FC2D0()
{
  result = qword_1EDBF4150;
  if (!qword_1EDBF4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4150);
  }

  return result;
}

unint64_t sub_1BF8FC324()
{
  result = qword_1EDBF4158[0];
  if (!qword_1EDBF4158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4158);
  }

  return result;
}

unint64_t sub_1BF8FC378()
{
  result = qword_1EBDE9058;
  if (!qword_1EBDE9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9058);
  }

  return result;
}

unint64_t sub_1BF8FC3CC()
{
  result = qword_1EDBF4B10;
  if (!qword_1EDBF4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B10);
  }

  return result;
}

uint64_t sub_1BF8FC420(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1633838962 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF8FC4F0(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 1633838962;
  }
}

uint64_t sub_1BF8FC510(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8FC564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8FC420(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8FC58C(uint64_t a1)
{
  v2 = sub_1BF902440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FC5C8(uint64_t a1)
{
  v2 = sub_1BF902440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FC608(uint64_t a1)
{
  v2 = sub_1BF902494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FC644(uint64_t a1)
{
  v2 = sub_1BF902494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8FC680(uint64_t a1)
{
  v2 = sub_1BF9024E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8FC6BC(uint64_t a1)
{
  v2 = sub_1BF9024E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Color.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v39 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9088, &qword_1BF9BB058);
  v6 = OUTLINED_FUNCTION_1(v5);
  v35 = v7;
  v36 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v34 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9090, &qword_1BF9BB060);
  v13 = OUTLINED_FUNCTION_1(v12);
  v32 = v14;
  v33 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9098, &qword_1BF9BB068);
  OUTLINED_FUNCTION_1(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_77_0();
  v26 = *v0;
  v37 = v0[1];
  v38 = v26;
  v27 = *(v0 + 16);
  v28 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF902440();
  sub_1BF9B5898();
  if (v27)
  {
    OUTLINED_FUNCTION_81_0();
    sub_1BF902494();
    v29 = v34;
    sub_1BF9B5598();
    v30 = v36;
    sub_1BF9B55F8();
    (*(v35 + 8))(v29, v30);
  }

  else
  {
    sub_1BF9024E8();
    sub_1BF9B5598();
    v31 = v33;
    sub_1BF9B55F8();
    (*(v32 + 8))(v19, v31);
  }

  (*(v22 + 8))(v2, v20);
  OUTLINED_FUNCTION_37();
}

void Color.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v74 = v2;
  v75 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE90B8, &qword_1BF9BB070);
  v71 = OUTLINED_FUNCTION_1(v5);
  v72 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE90C0, &qword_1BF9BB078);
  OUTLINED_FUNCTION_1(v10);
  v70 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_77_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE90C8, &qword_1BF9BB080);
  OUTLINED_FUNCTION_1(v15);
  v73 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v22 = v4[3];
  v23 = v4[4];
  v24 = OUTLINED_FUNCTION_68();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1BF902440();
  v26 = v75;
  sub_1BF9B5868();
  if (v26)
  {
    goto LABEL_11;
  }

  v68 = v10;
  v69 = v1;
  v75 = v4;
  v27 = v74;
  v28 = sub_1BF9B5568();
  sub_1BF8D0848(v28, 0);
  if (v30 == v31 >> 1)
  {
    goto LABEL_8;
  }

  v67 = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + v30);
    v33 = sub_1BF8D21AC(v30 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      v38 = v32;
      if (v32)
      {
        LODWORD(v70) = v32;
        OUTLINED_FUNCTION_81_0();
        sub_1BF902494();
        OUTLINED_FUNCTION_57_2();
        v39 = v67;
        sub_1BF9B54A8();
        if (!v39)
        {
          v40 = v27;
          v69 = v33;
          v41 = v71;
          v42 = sub_1BF9B5518();
          v43 = v73;
          v55 = v42;
          v57 = v56;
          swift_unknownObjectRelease();
          v58 = OUTLINED_FUNCTION_58_1();
          v59(v58, v41);
          v38 = v70;
LABEL_14:
          v63 = *(v43 + 8);
          v64 = OUTLINED_FUNCTION_26();
          v65(v64);
          *v40 = v55;
          *(v40 + 8) = v57;
          *(v40 + 16) = v38;
          __swift_destroy_boxed_opaque_existential_1(v75);
          goto LABEL_12;
        }
      }

      else
      {
        sub_1BF9024E8();
        OUTLINED_FUNCTION_57_2();
        v50 = v67;
        sub_1BF9B54A8();
        if (!v50)
        {
          v40 = v27;
          v54 = sub_1BF9B5518();
          v57 = v60;
          v72 = v54;
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_103();
          v62(v61);
          v55 = v72;
          v43 = v73;
          goto LABEL_14;
        }
      }

      v51 = *(v73 + 8);
      v52 = OUTLINED_FUNCTION_26();
      v53(v52);
      swift_unknownObjectRelease();
      v4 = v75;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_12:
      OUTLINED_FUNCTION_37();
      return;
    }

LABEL_8:
    v44 = sub_1BF9B5308();
    swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v46 = &type metadata for Color;
    sub_1BF9B54B8();
    OUTLINED_FUNCTION_36_0();
    v48 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11(v44);
    (*(v49 + 104))(v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v73 + 8))(v21, v15);
    v4 = v75;
    goto LABEL_11;
  }

  __break(1u);
}

void ViewCallbacksWrapper.__allocating_init(delegateSpokenDialogCallback:delegateDisplayedDialogCallback:delegateDescriptionDialogCallback:delegateInvocationActionProvider:assetsProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v37 = v2;
  v38 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v7 + 24);
  v35 = *(v7 + 32);
  v36 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
  OUTLINED_FUNCTION_2_0();
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  v18 = v6[3];
  v34 = v6[4];
  __swift_mutable_project_boxed_opaque_existential_1(v6, v18);
  OUTLINED_FUNCTION_2_0();
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22);
  v26 = v4[3];
  v27 = v4[4];
  __swift_mutable_project_boxed_opaque_existential_1(v4, v26);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_2_0();
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  v32 = OUTLINED_FUNCTION_82_0(v31);
  v33(v32);
  sub_1BF90253C(v16, v24, v36, v37, v1, v38, v9, v26, v18, v35, v27, v34);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  OUTLINED_FUNCTION_64();
}

void ViewCallbacksWrapper.__allocating_init(delegateSpokenDialogCallback:delegateDisplayedDialogCallback:delegateDescriptionDialogCallback:delegatedPreambleOverrideCallback:delegateInvocationActionProvider:assetsProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v30 = v2;
  v31 = v0;
  v29 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *(v10 + 24);
  v12 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v13);
  OUTLINED_FUNCTION_2_0();
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  v18 = OUTLINED_FUNCTION_22_4(v17);
  v19(v18);
  v21 = v9[3];
  v20 = v9[4];
  __swift_mutable_project_boxed_opaque_existential_1(v9, v21);
  OUTLINED_FUNCTION_2_0();
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  v27 = v26 - v25;
  (*(v28 + 16))(v26 - v25);
  sub_1BF902AA4(v1, v27, v7, v5, v29, v30, v31, v13, v21, v12, v20);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_64();
}

void ViewCallbacksWrapper.__allocating_init(delegateSpokenDialogCallback:delegateDisplayedDialogCallback:delegateDescriptionDialogCallbackProvider:delegatedPreambleOverrideCallbackProvider:delegateInvocationActionProvider:assetsProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v32 = v0;
  v33 = v3;
  v35 = v4;
  v36 = v5;
  v34 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = *(v13 + 24);
  v15 = *(v13 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v16);
  OUTLINED_FUNCTION_2_0();
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = OUTLINED_FUNCTION_5_7(v20, v31);
  v22(v21);
  v23 = v12[3];
  v24 = v12[4];
  __swift_mutable_project_boxed_opaque_existential_1(v12, v23);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_2_0();
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17();
  v29 = OUTLINED_FUNCTION_82_0(v28);
  v30(v29);
  sub_1BF902E80(v2, v1, v10, v8, v33, v34, v35, v36, v32, v16, v23, v15, v24);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void ViewCallbacksWrapper.init(delegateSpokenDialogCallback:delegateDisplayedDialogCallback:delegateDescriptionDialogCallbackProvider:delegatedPreambleOverrideCallbackProvider:delegateInvocationActionProvider:assetsProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v40 = v0;
  v41 = v2;
  v4 = v3;
  v42 = v5;
  v43 = v6;
  v38 = v7;
  v39 = v8;
  v10 = v9;
  v12 = v11;
  v13 = *(v11 + 24);
  v37 = *(v11 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v13);
  OUTLINED_FUNCTION_2_0();
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  (*(v17 + 16))(v1);
  v18 = v10[3];
  v36 = v10[4];
  __swift_mutable_project_boxed_opaque_existential_1(v10, v18);
  OUTLINED_FUNCTION_2_0();
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22);
  v26 = *(v4 + 24);
  v27 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v26);
  OUTLINED_FUNCTION_2_0();
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  v33 = v32 - v31;
  (*(v34 + 16))(v32 - v31);
  sub_1BF902974(v1, v24, v38, v39, v41, v42, v43, v33, v40, v13, v18, v26, v37, v36, v27);
  v35 = OUTLINED_FUNCTION_106();
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t ViewCallbacksWrapper.getInvocationAction(dialogProperties:)()
{
  v1 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_68();
  return v4(v3);
}

uint64_t ViewCallbacksWrapper.getAssets(context:suggestion:)()
{
  OUTLINED_FUNCTION_113();
  v1 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v0[24]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_88();
  return v4(v3);
}

uint64_t ViewCallbacksWrapper.getDescriptionCallback(context:)()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  return v1();
}

double ViewCallbacksWrapper.getPreambleOverrideCallback(context:deliveryVehicle:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v3();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t *ViewCallbacksWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[13];

  v2 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  return v0;
}

uint64_t ViewCallbacksWrapper.__deallocating_deinit()
{
  ViewCallbacksWrapper.deinit();
  OUTLINED_FUNCTION_62_2();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

__n128 StaticIconUrlProvider.__allocating_init(icon:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  return result;
}

uint64_t StaticIconUrlProvider.init(icon:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = v2;
  return OUTLINED_FUNCTION_67();
}

uint64_t StaticIconUrlProvider.getAssets(context:suggestion:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  v7 = OUTLINED_FUNCTION_14_3();
  sub_1BF8F9990(v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_14_3();

  return sub_1BF8F9990(v12, v13, v14, v15, v16);
}

uint64_t StaticIconUrlProvider.__deallocating_deinit()
{
  sub_1BF8F9E7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDC0](v0, 50, 7);
}

void *ViewCallbacksWrapper.__allocating_init(dialogId:icon:invocationActionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v18 = *(a3 + 32);
  v7 = type metadata accessor for DialogIdCallback();
  OUTLINED_FUNCTION_55_1();
  v8 = swift_allocObject();
  *(v8 + 56) = 0xD000000000000010;
  *(v8 + 64) = 0x80000001BF9BB080;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = 0x6974736567677573;
  *(v8 + 40) = 0xEA00000000006E6FLL;
  *(v8 + 48) = 1;
  OUTLINED_FUNCTION_55_1();
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000010;
  *(v9 + 64) = 0x80000001BF9BB080;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = 0x6974736567677573;
  *(v9 + 40) = 0xEA00000000006E6FLL;
  *(v9 + 48) = 0;
  OUTLINED_FUNCTION_55_1();
  v10 = swift_allocObject();
  v10[7] = 0xD000000000000010;
  v10[8] = 0x80000001BF9BB080;
  v10[2] = a1;
  v10[3] = a2;
  *(OUTLINED_FUNCTION_59_2(v10) + 48) = 0;
  v11 = type metadata accessor for StaticIconUrlProvider();
  v12 = swift_allocObject();
  v13 = *(a3 + 16);
  *(v12 + 16) = *a3;
  *(v12 + 32) = v13;
  *(v12 + 48) = v18;
  OUTLINED_FUNCTION_28_2();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[5] = v7;
  v14[6] = &protocol witness table for DialogIdCallback;
  OUTLINED_FUNCTION_28_2();
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  OUTLINED_FUNCTION_62_2();
  v16 = swift_allocObject();
  v16[5] = v7;
  v16[6] = &protocol witness table for DialogIdCallback;
  v16[2] = v8;
  v16[10] = v7;
  v16[11] = &protocol witness table for DialogIdCallback;
  v16[7] = v9;
  v16[24] = v11;
  v16[25] = &protocol witness table for StaticIconUrlProvider;
  v16[21] = v12;
  v16[12] = sub_1BF904C98;
  v16[13] = v14;
  v16[14] = sub_1BF9031BC;
  v16[15] = v15;
  sub_1BF8C2C9C(a4, (v16 + 16));
  swift_bridgeObjectRetain_n();
  return v16;
}

uint64_t DialogIdCallback.__allocating_init(templateId:sectionId:isSpeakable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_55_1();
  result = swift_allocObject();
  *(result + 56) = 0xD000000000000010;
  *(result + 64) = 0x80000001BF9BB080;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  return result;
}

void ViewCallbacksWrapper.__allocating_init(dialogId:assetsProvider:invocationActionProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v21 = v1;
  v22 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DialogIdCallback();
  OUTLINED_FUNCTION_55_1();
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000010;
  *(v9 + 64) = 0x80000001BF9BB080;
  *(v9 + 16) = v7;
  *(v9 + 24) = v5;
  *(v9 + 32) = 0x6974736567677573;
  *(v9 + 40) = 0xEA00000000006E6FLL;
  *(v9 + 48) = 1;
  OUTLINED_FUNCTION_55_1();
  v10 = swift_allocObject();
  *(v10 + 56) = 0xD000000000000010;
  *(v10 + 64) = 0x80000001BF9BB080;
  *(v10 + 16) = v7;
  *(v10 + 24) = v5;
  *(v10 + 32) = 0x6974736567677573;
  *(v10 + 40) = 0xEA00000000006E6FLL;
  *(v10 + 48) = 0;
  OUTLINED_FUNCTION_55_1();
  v11 = swift_allocObject();
  v11[7] = 0xD000000000000010;
  v11[8] = 0x80000001BF9BB080;
  v11[2] = v7;
  v11[3] = v5;
  v12 = OUTLINED_FUNCTION_59_2(v11);
  *(v12 + 48) = 0;
  v25[3] = v8;
  v25[4] = &protocol witness table for DialogIdCallback;
  v25[0] = v12;
  v14 = v3[3];
  v13 = v3[4];
  __swift_mutable_project_boxed_opaque_existential_1(v3, v14);
  OUTLINED_FUNCTION_2_0();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v19 = OUTLINED_FUNCTION_22_4(v18);
  v20(v19);
  v23 = v10;
  v24 = v9;
  swift_bridgeObjectRetain_n();
  sub_1BF90253C(&v24, &v23, v25, v21, 0x80000001BF9BB080, v22, v8, v14, v8, &protocol witness table for DialogIdCallback, v13, &protocol witness table for DialogIdCallback);
  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createCatViewCallback(dialogId:assetsProvider:invocationActionProvider:)(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = type metadata accessor for ViewCallbacksWrapper();
  sub_1BF8E69C4(a1, v9);
  sub_1BF8E69C4(a2, &v8);

  OUTLINED_FUNCTION_69_1();
  ViewCallbacksWrapper.__allocating_init(dialogId:assetsProvider:invocationActionProvider:)();
  a3[3] = v6;
  a3[4] = &protocol witness table for ViewCallbacksWrapper;
  *a3 = v7;
}

uint64_t static ViewCallbacks.createCatViewCallback(dialogId:icon:invocationActionProvider:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = type metadata accessor for ViewCallbacksWrapper();
  v17[5] = v5;
  v17[6] = v6;
  v17[7] = v7;
  v17[8] = v8;
  v18 = v9;
  sub_1BF8E69C4(a2, v17);
  v11 = OUTLINED_FUNCTION_42_2();
  v15 = ViewCallbacksWrapper.__allocating_init(dialogId:icon:invocationActionProvider:)(v11, v12, v13, v14);
  a3[3] = v10;
  a3[4] = &protocol witness table for ViewCallbacksWrapper;
  *a3 = v15;

  return sub_1BF8F9990(v5, v6, v7, v8, v9);
}

void static ViewCallbacks.createCatViewCallback(dialogId:templateDirectory:assetsProvider:invocationActionProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v39 = v1;
  v41 = v2;
  v4 = v3;
  v43 = v5;
  v6 = sub_1BF9B4378();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v12 = *(v9 + 16);
  v13 = OUTLINED_FUNCTION_49_1();
  v12(v13);
  v14 = type metadata accessor for TemplateOverrideDialogIdCallback(0);
  v42 = OUTLINED_FUNCTION_67_1(v14);
  v15 = OUTLINED_FUNCTION_50_2();
  sub_1BF900AA8(v15, v16, v17, 0x6974736567677573, 0xEA00000000006E6FLL, 1);
  v18 = OUTLINED_FUNCTION_49_1();
  v12(v18);
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_50_2();
  sub_1BF8FF2BC();
  v40 = v19;
  v20 = OUTLINED_FUNCTION_49_1();
  v12(v20);

  OUTLINED_FUNCTION_50_2();
  sub_1BF8FF2BC();
  v22 = v21;
  v23 = OUTLINED_FUNCTION_49_1();
  v12(v23);

  OUTLINED_FUNCTION_50_2();
  sub_1BF8FF2BC();
  v25 = v24;
  sub_1BF8E69C4(v39, v49);
  sub_1BF8E69C4(v41, v46);
  OUTLINED_FUNCTION_28_2();
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = *(&v49[3] + 8);
  *(v26 + 40) = v0;
  *(v26 + 48) = &off_1F3EF9308;
  OUTLINED_FUNCTION_28_2();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = *(&v49[2] + 8);
  *(v27 + 40) = v0;
  *(v27 + 48) = &off_1F3EF9308;
  v28 = type metadata accessor for ViewCallbacksWrapper();
  OUTLINED_FUNCTION_62_2();
  v29 = swift_allocObject();
  v31 = v47;
  v30 = v48;
  __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  OUTLINED_FUNCTION_2_0();
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_17();
  v36 = OUTLINED_FUNCTION_22_4(v35);
  v37(v36);
  v44 = v40;
  v45 = v42;
  v38 = sub_1BF902974(&v45, &v44, sub_1BF904C98, v26, sub_1BF904C98, v27, v49, v4, v29, v0, v0, v31, &off_1F3EF9308, &off_1F3EF9308, v30);
  __swift_destroy_boxed_opaque_existential_1(v46);
  v43[3] = v28;
  v43[4] = &protocol witness table for ViewCallbacksWrapper;
  *v43 = v38;
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createCatViewCallback(dialogId:templateDirectory:assetsProvider:invocationActionProvider:spokenDialogId:displayedDialogId:descriptionDialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v30;
  a20 = v31;
  OUTLINED_FUNCTION_13_5(v32, v33, v34, v35, v36);
  v74 = a23;
  v37 = OUTLINED_FUNCTION_48_0(a22);
  v38 = OUTLINED_FUNCTION_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_12_5();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v50 = OUTLINED_FUNCTION_53_2(v42, v43, v44, v45, v46, v47, v48, v49, v70);
  v29(v50);
  v51 = v28;
  if (!v28)
  {
    v51 = v79;

    v24 = v80;
  }

  v52 = OUTLINED_FUNCTION_107("preambleOverride");
  v53 = type metadata accessor for TemplateOverrideDialogIdCallback(v52);
  v54 = OUTLINED_FUNCTION_67_1(v53);
  OUTLINED_FUNCTION_56_2(v54);
  sub_1BF900AA8(v26, v76, v27, v24, v51, 1);
  (v29)(v23, v75, v37);
  OUTLINED_FUNCTION_110();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_68();
  sub_1BF8FF2BC();
  (v29)(v23, v75, v37);

  OUTLINED_FUNCTION_94(&a15);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_98(&a14);
  (v29)(v23, v75, v37);

  OUTLINED_FUNCTION_68();
  sub_1BF8FF2BC();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_2();
  v55 = swift_allocObject();
  OUTLINED_FUNCTION_52_1(v55);
  *(v56 + 40) = v25;
  *(v56 + 48) = &off_1F3EF9308;
  OUTLINED_FUNCTION_28_2();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_32_3(v57);
  OUTLINED_FUNCTION_62_2();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_2_0();
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v62 = OUTLINED_FUNCTION_5_7(v61, v71);
  v63(v62);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_18_5(v64, v65, sub_1BF904C98, v66, sub_1BF904C98, v67, v68, v69, v72, v73, v74, v75, v76, v77, v78);
  __swift_destroy_boxed_opaque_existential_1(v81);
  OUTLINED_FUNCTION_23_5(&protocol witness table for ViewCallbacksWrapper);
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createCatViewCallback(dialogCallback:templateDirectory:assetsProvider:invocationActionProvider:spokenDialogId:displayedDialogId:descriptionDialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v30;
  a20 = v31;
  OUTLINED_FUNCTION_13_5(v32, v33, v34, v35, v36);
  v76 = a23;
  v37 = OUTLINED_FUNCTION_48_0(a22);
  v38 = OUTLINED_FUNCTION_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_12_5();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v50 = OUTLINED_FUNCTION_53_2(v42, v43, v44, v45, v46, v47, v48, v49, v72);
  v29(v50);
  v51 = v28;
  if (!v28)
  {
    v51 = v81;

    v24 = v82;
  }

  v52 = OUTLINED_FUNCTION_107("preambleOverride");
  v53 = type metadata accessor for TemplateOverrideCATTemplatingCallback(v52);
  v54 = OUTLINED_FUNCTION_67_1(v53);
  OUTLINED_FUNCTION_56_2(v54);
  sub_1BF900358(v26, v24, v51, 1, v78, v27);
  (v29)(v23, v77, v37);
  OUTLINED_FUNCTION_110();
  swift_retain_n();

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_117();
  v55 = OUTLINED_FUNCTION_68();
  v29(v55);

  OUTLINED_FUNCTION_94(&a15);
  OUTLINED_FUNCTION_117();
  v56 = OUTLINED_FUNCTION_68();
  v29(v56);

  sub_1BF8FEB88();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_2();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_52_1(v57);
  *(v58 + 40) = v25;
  *(v58 + 48) = &off_1F3EF92F0;
  OUTLINED_FUNCTION_28_2();
  v59 = swift_allocObject();
  OUTLINED_FUNCTION_32_3(v59);
  OUTLINED_FUNCTION_62_2();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_2_0();
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v64 = OUTLINED_FUNCTION_5_7(v63, v73);
  v65(v64);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_18_5(v66, v67, sub_1BF904C98, v68, sub_1BF904C98, v69, v70, v71, v74, v75, v76, v77, v78, v79, v80);
  __swift_destroy_boxed_opaque_existential_1(v83);
  OUTLINED_FUNCTION_23_5(&protocol witness table for ViewCallbacksWrapper);
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createCatViewCallback(dialogCallback:templateDirectory:assetsProvider:invocationActionProvider:spokenDialogId:displayedDialogId:descriptionDialogId:preambleOverrideDialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v29;
  a20 = v30;
  OUTLINED_FUNCTION_13_5(v31, v32, v33, v34, v35);
  v36 = OUTLINED_FUNCTION_44_2(a25);
  v37 = OUTLINED_FUNCTION_1(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_12_5();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v66 - v43;
  v45 = *(v39 + 16);
  v46 = OUTLINED_FUNCTION_85_0();
  (v45)(v46);
  v47 = v28;
  if (!v28)
  {
    v47 = v68;

    v25 = v69;
  }

  v48 = type metadata accessor for TemplateOverrideCATTemplatingCallback(0);
  v49 = OUTLINED_FUNCTION_67_1(v48);
  OUTLINED_FUNCTION_56_2(v49);
  sub_1BF900358(v44, v25, v47, 1, v67, v27);
  OUTLINED_FUNCTION_47_2();
  v45();
  OUTLINED_FUNCTION_110();
  swift_retain_n();

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_71_1();
  v69 = v50;
  OUTLINED_FUNCTION_47_2();
  v45();

  OUTLINED_FUNCTION_94(&a13);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_47_2();
  v45();

  OUTLINED_FUNCTION_94(&a16);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_2();
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_52_1(v51);
  *(v52 + 40) = v26;
  *(v52 + 48) = &off_1F3EF92F0;
  OUTLINED_FUNCTION_28_2();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_32_3(v53);
  OUTLINED_FUNCTION_62_2();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_2_0();
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v58 = OUTLINED_FUNCTION_5_7(v57, v66[0]);
  v59(v58);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_18_5(v60, v61, sub_1BF904C98, v62, sub_1BF904C98, v63, v64, v65, v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v67);
  __swift_destroy_boxed_opaque_existential_1(&v70);
  OUTLINED_FUNCTION_23_5(&protocol witness table for ViewCallbacksWrapper);
  OUTLINED_FUNCTION_64();
}

void sub_1BF8FEB88()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1;
  OUTLINED_FUNCTION_76_1();
  v4 = v3;
  v5 = sub_1BF9B4378();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v12 = OUTLINED_FUNCTION_70_1(v11);
  v13(v12);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_47_2();
  sub_1BF900358(v14, v15, v16, 0, v0, v2);
  (*(v8 + 8))(v4, v5);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void static ViewCallbacks.createBespokeViewCallback(dialogProvider:assetsProvider:invocationActionProvider:)()
{
  OUTLINED_FUNCTION_65_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1BF8E69C4(v5, v31);
  OUTLINED_FUNCTION_28_2();
  v9 = swift_allocObject();
  sub_1BF8C2C9C(v31, v9 + 16);
  sub_1BF8E69C4(v6, v31);
  OUTLINED_FUNCTION_28_2();
  v10 = swift_allocObject();
  sub_1BF8C2C9C(v31, v10 + 16);
  sub_1BF8E69C4(v6, v31);
  OUTLINED_FUNCTION_28_2();
  v11 = swift_allocObject();
  sub_1BF8C2C9C(v31, v11 + 16);
  sub_1BF8E69C4(v6, v30);
  OUTLINED_FUNCTION_28_2();
  v12 = swift_allocObject();
  sub_1BF8C2C9C(v30, v12 + 16);
  sub_1BF8E69C4(v2, v29);
  sub_1BF8E69C4(v4, v26);
  v13 = type metadata accessor for ViewCallbacksWrapper();
  OUTLINED_FUNCTION_62_2();
  v14 = swift_allocObject();
  v15 = v27;
  v16 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  OUTLINED_FUNCTION_2_0();
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v21 = OUTLINED_FUNCTION_22_4(v20);
  v22(v21);
  v25[0] = sub_1BF90322C;
  v25[1] = v9;
  v24[0] = sub_1BF903234;
  v24[1] = v10;
  v23 = sub_1BF902974(v25, v24, sub_1BF90323C, v11, sub_1BF903244, v12, v29, v0, v14, &type metadata for DelegateDialogCallback, &type metadata for DelegateDialogCallback, v15, &off_1F3EF92D8, &off_1F3EF92D8, v16);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v8[3] = v13;
  v8[4] = &protocol witness table for ViewCallbacksWrapper;
  *v8 = v23;
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF8FEEC4(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_31_3(a1, a2);
  OUTLINED_FUNCTION_89();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_35_2();
  return v5(v4);
}

uint64_t sub_1BF8FEF04(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_31_3(a1, a2);
  OUTLINED_FUNCTION_89();
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_35_2();
  return v5(v4);
}

uint64_t sub_1BF8FEF44(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_31_3(a1, a2);
  OUTLINED_FUNCTION_89();
  v3 = *(v2 + 24);
  v4 = OUTLINED_FUNCTION_35_2();
  return v5(v4);
}

void static ViewCallbacks.createCatViewCallback(dialogId:templateDirectory:assetsProvider:invocationActionProvider:spokenDialogId:displayedDialogId:descriptionDialogId:preambleOverrideDialogId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v25;
  a20 = v26;
  v78 = v27;
  v29 = v28;
  v31 = v30;
  v74 = v33;
  v75 = v32;
  v35 = v34;
  v37 = v36;
  v72 = v38;
  v76 = v39;
  v40 = OUTLINED_FUNCTION_44_2(a25);
  v41 = OUTLINED_FUNCTION_1(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_12_5();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v71 - v47;
  v49 = *(v43 + 16);
  v50 = OUTLINED_FUNCTION_85_0();
  (v49)(v50);
  v51 = v29;
  if (!v29)
  {
    v51 = v77;

    v31 = v78;
  }

  v52 = type metadata accessor for TemplateOverrideDialogIdCallback(0);
  v53 = OUTLINED_FUNCTION_67_1(v52);
  OUTLINED_FUNCTION_56_2(v53);
  sub_1BF900AA8(v48, v72, v37, v31, v51, 1);
  OUTLINED_FUNCTION_47_2();
  v49();
  OUTLINED_FUNCTION_110();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_79_0();
  sub_1BF8FF2BC();
  v78 = v54;
  OUTLINED_FUNCTION_47_2();
  v49();

  OUTLINED_FUNCTION_94(&a13);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_98(&a12);
  v56 = v55;
  OUTLINED_FUNCTION_47_2();
  v49();

  OUTLINED_FUNCTION_94(&a17);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_98(&a15);
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_28_2();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v80;
  *(v57 + 40) = v35;
  *(v57 + 48) = &off_1F3EF9308;
  OUTLINED_FUNCTION_28_2();
  v58 = swift_allocObject();
  OUTLINED_FUNCTION_32_3(v58);
  OUTLINED_FUNCTION_62_2();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_2_0();
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v63 = OUTLINED_FUNCTION_5_7(v62, v71[0]);
  v64(v63);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_18_5(v65, v66, sub_1BF904C98, v67, sub_1BF904C98, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v72, v73);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  OUTLINED_FUNCTION_23_5(&protocol witness table for ViewCallbacksWrapper);
  OUTLINED_FUNCTION_64();
}

void sub_1BF8FF2BC()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  OUTLINED_FUNCTION_76_1();
  v3 = v2;
  v4 = sub_1BF9B4378();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v11 = OUTLINED_FUNCTION_70_1(v10);
  v12(v11);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_43_2();
  sub_1BF900AA8(v13, v14, v15, v16, v1, 0);
  (*(v7 + 8))(v3, v4);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t CascadingDialogCallback.__allocating_init(sourceDialogCallback:targetDialogCallback:)()
{
  OUTLINED_FUNCTION_113();
  v2 = swift_allocObject();
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_1BF8C2C9C(v0, v2 + 56);
  return v2;
}

uint64_t CascadingDialogCallback.init(sourceDialogCallback:targetDialogCallback:)(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  sub_1BF8C2C9C(a2, v2 + 56);
  return v2;
}

uint64_t sub_1BF8FF430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1BF9B4288();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8FF4F4, 0, 0);
}

uint64_t sub_1BF8FF4F4()
{
  v47 = v0;
  v0[2] = v0[4];
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[3] = v0[5];
  sub_1BF9B4278();
  sub_1BF904C28();
  v4 = sub_1BF9B5178();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = OUTLINED_FUNCTION_33();
    result = sub_1BF8FF974(v8, v9);
    if (!v11)
    {
      __break(1u);
      return result;
    }

    v12 = sub_1BF9B4A68();

    v14 = v0[6];
    v13 = v0[7];
    if (v12)
    {
      v45 = v4;
      v46 = v6;

      MEMORY[0x1BFB5DE90](32, 0xE100000000000000);

      MEMORY[0x1BFB5DE90](v14, v13);

      if (qword_1EDBF0910 != -1)
      {
        OUTLINED_FUNCTION_11_7();
      }

      v15 = v0[7];
      v16 = v0[5];
      v17 = sub_1BF9B47C8();
      __swift_project_value_buffer(v17, qword_1EDBF0918);
    }

    else
    {
      v45 = v4;
      v46 = v6;

      MEMORY[0x1BFB5DE90](8238, 0xE200000000000000);

      MEMORY[0x1BFB5DE90](v14, v13);

      if (qword_1EDBF0910 != -1)
      {
        OUTLINED_FUNCTION_11_7();
      }

      v28 = v0[7];
      v29 = v0[5];
      v30 = sub_1BF9B47C8();
      __swift_project_value_buffer(v30, qword_1EDBF0918);
      OUTLINED_FUNCTION_106();
    }

    v31 = sub_1BF9B47A8();
    v32 = sub_1BF9B5038();

    if (os_log_type_enabled(v31, v32))
    {
      v43 = v0[6];
      v44 = v0[7];
      v33 = v0[4];
      v34 = v0[5];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136315650;
      v37 = OUTLINED_FUNCTION_88();
      *(v35 + 4) = sub_1BF8DE810(v37, v38, v39);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_1BF8DE810(v33, v34, &v45);
      *(v35 + 22) = 2080;
      *(v35 + 24) = sub_1BF8DE810(v43, v44, &v45);
      _os_log_impl(&dword_1BF8B8000, v31, v32, "CascadingDialogCallback#combined dialog calculated as: %s from source: %s and target: %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5F320](v36, -1, -1);
      OUTLINED_FUNCTION_93();
    }
  }

  else
  {

    if (qword_1EDBF0910 != -1)
    {
      OUTLINED_FUNCTION_11_7();
    }

    v18 = v0[7];
    v19 = sub_1BF9B47C8();
    __swift_project_value_buffer(v19, qword_1EDBF0918);

    v20 = sub_1BF9B47A8();
    v21 = sub_1BF9B5038();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = v0[6];
      v22 = v0[7];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1BF8DE810(v23, v22, &v45);
      _os_log_impl(&dword_1BF8B8000, v20, v21, "CascadingDialogCallback#combined no source dialog determined. Using just target %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFB5F320](v25, -1, -1);
      OUTLINED_FUNCTION_93();
    }

    v27 = v0[6];
    v26 = v0[7];
  }

  v40 = v0[10];

  OUTLINED_FUNCTION_121();
  v41 = OUTLINED_FUNCTION_88();

  return v42(v41);
}

uint64_t sub_1BF8FF974(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1BF9B4B68();
  return sub_1BF9B4C38();
}

uint64_t CascadingDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_2_8(sub_1BF8FFA14);
}

uint64_t sub_1BF8FFA14()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[16];
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  OUTLINED_FUNCTION_19();
  v13 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1BF8FFB20;
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];
  v10 = OUTLINED_FUNCTION_38_3(v0[12]);

  return v11(v10);
}

uint64_t sub_1BF8FFB20()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  v4 = *(v2 + 136);
  v9 = *v1;
  *(v3 + 144) = v5;
  *(v3 + 152) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_77();

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF8FFC48, 0, 0);
  }
}

uint64_t sub_1BF8FFC48()
{
  OUTLINED_FUNCTION_6();
  sub_1BF90324C(*(v0 + 128) + 16, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1BF8C2C9C((v0 + 56), v0 + 16);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_19();
    v15 = v2 + *v2;
    v4 = *(v3 + 4);
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = sub_1BF8FFDC4;
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);
    v9 = OUTLINED_FUNCTION_38_3(*(v0 + 96));

    return v10(v9);
  }

  else
  {
    sub_1BF8DFBF0(v0 + 56, &qword_1EBDE90D0, &qword_1BF9BB090);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    OUTLINED_FUNCTION_121();

    return v14();
  }
}

uint64_t sub_1BF8FFDC4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 160);
  v8 = *v1;
  OUTLINED_FUNCTION_3();
  *v9 = v8;
  v4[21] = v0;

  if (v0)
  {
    v10 = v4[19];

    OUTLINED_FUNCTION_39_4();
    OUTLINED_FUNCTION_114();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v4[22] = v2;
    v15 = swift_task_alloc();
    v4[23] = v15;
    *v15 = v8;
    v15[1] = sub_1BF8FFF3C;
    v16 = v4[18];
    v17 = v4[19];
    v18 = v4[16];
    OUTLINED_FUNCTION_114();

    return sub_1BF8FF430(v19, v20, v21, v22);
  }
}

uint64_t sub_1BF8FFF3C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1[23];
  v3 = v1[22];
  v4 = v1[19];
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v9 + 192) = v7;
  *(v9 + 200) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BF900068, 0, 0);
}

uint64_t sub_1BF900068()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[24];
  v2 = v0[25];
  OUTLINED_FUNCTION_121();

  return v3();
}

uint64_t sub_1BF9000C8()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_77();

  return v2();
}

uint64_t CascadingDialogCallback.deinit()
{
  sub_1BF8DFBF0(v0 + 16, &qword_1EBDE90D0, &qword_1BF9BB090);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t CascadingDialogCallback.__deallocating_deinit()
{
  sub_1BF8DFBF0(v0 + 16, &qword_1EBDE90D0, &qword_1BF9BB090);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1BF9001AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2(a1, a2, a3);
}

uint64_t sub_1BF90026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF904C9C;

  return CascadingDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, a4);
}

uint64_t sub_1BF900358(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_description);
  *v9 = 0xD000000000000025;
  v9[1] = 0x80000001BF9BBAD0;
  v10 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templatingResultCallback);
  *v10 = a5;
  v10[1] = a6;
  v11 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_sectionId);
  *v11 = a2;
  v11[1] = a3;
  v12 = OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templateDirectory;
  v13 = sub_1BF9B4378();
  OUTLINED_FUNCTION_13(v13);
  (*(v14 + 32))(v6 + v12, a1);
  *(v6 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_isSpeakable) = a4;
  return v6;
}

uint64_t sub_1BF900418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return OUTLINED_FUNCTION_2_8(sub_1BF900460);
}

uint64_t sub_1BF900460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_51_1();
  v11 = sub_1BF9032BC(&qword_1EBDE9148, 255, type metadata accessor for TemplateOverrideCATTemplatingCallback);
  OUTLINED_FUNCTION_30_3(v11);
  v26 = v10 + *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_112(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_15_9(v14);
  OUTLINED_FUNCTION_100();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, v26, a10);
}

uint64_t sub_1BF900590()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_114();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF9006DC()
{
  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templateDirectory;
  v2 = sub_1BF9B4378();
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(v0 + v1);
  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_sectionId);

  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templatingResultCallback);

  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_description);

  return v0;
}

uint64_t sub_1BF90077C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1BF9007D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2(a1, a2, a3);
}

uint64_t sub_1BF900898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF904C9C;

  return sub_1BF900418(a1, a2, a3, a4);
}

uint64_t sub_1BF900990()
{
  v1 = (*v0 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_templatingResultCallback);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1BF900A10()
{
  v1 = (*v0 + OBJC_IVAR____TtC18SiriSuggestionsKit37TemplateOverrideCATTemplatingCallback_description);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1BF900AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_description);
  *v9 = 0xD000000000000020;
  v9[1] = 0x80000001BF9BBB10;
  v10 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_templateId);
  *v10 = a2;
  v10[1] = a3;
  v11 = (v6 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_sectionId);
  *v11 = a4;
  v11[1] = a5;
  v12 = OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_templateDirectory;
  v13 = sub_1BF9B4378();
  OUTLINED_FUNCTION_13(v13);
  (*(v14 + 32))(v6 + v12, a1);
  *(v6 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_isSpeakable) = a6;
  return v6;
}

uint64_t sub_1BF900B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return OUTLINED_FUNCTION_2_8(sub_1BF900BB0);
}

uint64_t sub_1BF900BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_51_1();
  v11 = sub_1BF9032BC(&qword_1EDBF0FE0, 255, type metadata accessor for TemplateOverrideDialogIdCallback);
  OUTLINED_FUNCTION_30_3(v11);
  v26 = v10 + *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_112(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_15_9(v14);
  OUTLINED_FUNCTION_100();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, v26, a10);
}

uint64_t sub_1BF900D00@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 16);

  return v9(a3, v3 + v5, v7);
}

uint64_t sub_1BF900D70()
{
  v1 = OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_templateDirectory;
  v2 = sub_1BF9B4378();
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(v0 + v1);
  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_templateId);

  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_sectionId);

  OUTLINED_FUNCTION_75_1(OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_description);

  return v0;
}

uint64_t sub_1BF900E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2(a1, a2, a3);
}

uint64_t sub_1BF900ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF904C9C;

  return sub_1BF900B68(a1, a2, a3, a4);
}

uint64_t sub_1BF90102C()
{
  v1 = (*v0 + OBJC_IVAR____TtC18SiriSuggestionsKit32TemplateOverrideDialogIdCallback_description);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DialogIdCallback.init(templateId:sectionId:isSpeakable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = 0xD000000000000010;
  *(v5 + 64) = 0x80000001BF9BB080;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return OUTLINED_FUNCTION_67();
}

uint64_t DialogIdCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return OUTLINED_FUNCTION_2_8(sub_1BF9010E8);
}

uint64_t sub_1BF9010E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_51_1();
  v12 = sub_1BF9032BC(&qword_1EBDE90D8, v11, type metadata accessor for DialogIdCallback);
  OUTLINED_FUNCTION_30_3(v12);
  v27 = v10 + *v10;
  v13 = v10[1];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_112(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_15_9(v15);
  OUTLINED_FUNCTION_100();

  return v23(v17, v18, v19, v20, v21, v22, v23, v24, v27, a10);
}

uint64_t sub_1BF901214()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_114();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF901340()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_77();
  v2 = *(v0 + 112);

  return v1();
}

uint64_t DialogIdCallback.sectionIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_43();
}

uint64_t DialogIdCallback.description.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_43();
}

void *DialogIdCallback.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return v0;
}

uint64_t DialogIdCallback.__deallocating_deinit()
{
  DialogIdCallback.deinit();
  OUTLINED_FUNCTION_55_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF901454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2(a1, a2, a3);
}

uint64_t sub_1BF901514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF904C9C;

  return DialogIdCallback.getText(dialog:dialogProperties:environment:viewContext:)(a1, a2, a3, a4);
}

uint64_t StaticViewProvider.__allocating_init(text:icon:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v5;
  return StaticViewProvider.__allocating_init(text:muText:icon:description:)(a1, a2, 0, 0, v8, a4, a5);
}

uint64_t StaticViewProvider.__allocating_init(text:muText:icon:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_76_1();
  v19 = *v9;
  v20 = v9[1];
  v21 = *(v9 + 16);
  OUTLINED_FUNCTION_80_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_102();
  StaticViewProvider.init(displayedText:spokenText:muText:icon:description:preambleOverride:)(v11, v12, v13, v14, v15, v16, v17, a6, a7, 0, 0);

  return v10;
}

uint64_t StaticViewProvider.__allocating_init(displayedText:spokenText:muText:icon:description:preambleOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_80_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_102();
  StaticViewProvider.init(displayedText:spokenText:muText:icon:description:preambleOverride:)(v14, v15, v16, v17, v18, v19, a7, a8, a9, a10, a11);
  return v13;
}

uint64_t StaticViewProvider.init(displayedText:spokenText:muText:icon:description:preambleOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a7;
  v13 = a7[1];
  v14 = *(a7 + 16);
  v15 = &type metadata for StaticDialogCallback;
  v16 = &protocol witness table for StaticDialogCallback;
  *(v11 + 40) = &type metadata for StaticDialogCallback;
  *(v11 + 48) = &protocol witness table for StaticDialogCallback;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 80) = &type metadata for StaticDialogCallback;
  *(v11 + 88) = &protocol witness table for StaticDialogCallback;
  *(v11 + 56) = a3;
  *(v11 + 64) = a4;
  if (a11)
  {
    v18 = &protocol witness table for StaticDialogCallback;
    v19 = &type metadata for StaticDialogCallback;
  }

  else
  {
    a10 = 0;
    v19 = 0;
    v18 = 0;
    *(v11 + 152) = 0;
  }

  *(v11 + 136) = a10;
  *(v11 + 144) = a11;
  *(v11 + 160) = v19;
  *(v11 + 168) = v18;
  if (a9)
  {
    v20 = a8;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v20 = 0;
  }

  *(v11 + 96) = v20;
  *(v11 + 104) = a9;
  *(v11 + 112) = 0;
  *(v11 + 120) = v15;
  *(v11 + 128) = v16;
  *(v11 + 176) = a5;
  *(v11 + 184) = a6;
  *(v11 + 192) = v12;
  *(v11 + 208) = v13;
  *(v11 + 224) = v14;
  return OUTLINED_FUNCTION_67();
}

uint64_t StaticViewProvider.getInvocationAction(dialogProperties:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);
  v5 = type metadata accessor for UtteranceAction();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = sub_1BF9032BC(&qword_1EDBF32A8, 255, type metadata accessor for UtteranceAction);
  a1[3] = v5;
  a1[4] = v7;
  *a1 = v6;
}

uint64_t sub_1BF901984@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = *v2;
  a2[4] = a1;
  *a2 = v2;
}

uint64_t StaticViewProvider.getAssets(context:suggestion:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 224);
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  v7 = OUTLINED_FUNCTION_14_3();
  sub_1BF8F9990(v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_14_3();

  return sub_1BF8F9990(v12, v13, v14, v15, v16);
}

uint64_t StaticViewProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_1BF8DFBF0(v0 + 96, &qword_1EBDE90D0, &qword_1BF9BB090);
  sub_1BF8DFBF0(v0 + 136, &qword_1EBDE90D0, &qword_1BF9BB090);
  v1 = *(v0 + 184);

  sub_1BF8F9E7C(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));
  return v0;
}

uint64_t StaticViewProvider.__deallocating_deinit()
{
  StaticViewProvider.deinit();
  v0 = OUTLINED_FUNCTION_80_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t StaticDialogCallback.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43();
}

uint64_t StaticDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v3[7] = a2;
  v3[8] = v4;
  v3[9] = v5;
  return OUTLINED_FUNCTION_2_8(sub_1BF901BD0);
}

uint64_t sub_1BF901BD0()
{
  v24 = v0;
  if (qword_1EDBF0910 != -1)
  {
    OUTLINED_FUNCTION_11_7();
  }

  v1 = v0[9];
  v2 = v0[7];
  v3 = sub_1BF9B47C8();
  __swift_project_value_buffer(v3, qword_1EDBF0918);
  sub_1BF8E69C4(v2, (v0 + 2));

  v4 = sub_1BF9B47A8();
  v5 = sub_1BF9B5038();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1BF8DE810(v7, v6, &v23);
    *(v8 + 12) = 2080;
    v9 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v10 = *(v9 + 16);
    v11 = OUTLINED_FUNCTION_106();
    v12(v11, v9);
    v13 = sub_1BF9B4978();
    v15 = v14;

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v16 = sub_1BF8DE810(v13, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1BF8B8000, v4, v5, "Getting text: %s with properties %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_93();
    MEMORY[0x1BFB5F320](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  OUTLINED_FUNCTION_77();
  v22 = v17;
  v18 = v0[8];
  v19 = v0[9];

  v20 = OUTLINED_FUNCTION_43();

  return v22(v20);
}

uint64_t sub_1BF901E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2(a1, a2, a3);
}

uint64_t sub_1BF901ED4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BF904C9C;

  return StaticDialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(v4, a2);
}

uint64_t sub_1BF901F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return OUTLINED_FUNCTION_2_8(sub_1BF901F88);
}

uint64_t sub_1BF901F88()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 96);
  (*(v0 + 88))(*(v0 + 80));
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_19();
  v15 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_112(v6);
  *v7 = v8;
  v7[1] = sub_1BF9020A0;
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  v12 = OUTLINED_FUNCTION_38_3(*(v0 + 56));

  return v13(v12);
}

uint64_t sub_1BF9020A0()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_5_3();
  v7 = v6;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v10 = *(v9 + 104);
  v11 = *v1;
  OUTLINED_FUNCTION_3();
  *v12 = v11;
  v7[14] = v0;

  if (!v0)
  {
    v7[15] = v3;
    v7[16] = v5;
  }

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BF9021B0()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_121();
  v3 = v0[15];
  v2 = v0[16];

  return v1(v2, v3);
}

uint64_t sub_1BF902210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF904C9C;

  return j_j__OUTLINED_FUNCTION_34_2(a1, a2, a3);
}

uint64_t sub_1BF9022D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v10 = v4[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1BF904C9C;

  return sub_1BF901F68(a1, a2, a3, a4, v11, v10);
}

unint64_t sub_1BF902398()
{
  result = qword_1EDBF0970;
  if (!qword_1EDBF0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0970);
  }

  return result;
}

unint64_t sub_1BF9023EC()
{
  result = qword_1EDBF3F80;
  if (!qword_1EDBF3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3F80);
  }

  return result;
}

unint64_t sub_1BF902440()
{
  result = qword_1EBDE90A0;
  if (!qword_1EBDE90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90A0);
  }

  return result;
}

unint64_t sub_1BF902494()
{
  result = qword_1EBDE90A8;
  if (!qword_1EBDE90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90A8);
  }

  return result;
}

unint64_t sub_1BF9024E8()
{
  result = qword_1EBDE90B0;
  if (!qword_1EBDE90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90B0);
  }

  return result;
}

uint64_t *sub_1BF90253C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = a6;
  v61 = a2;
  v67 = a12;
  v68 = a4;
  v66 = a11;
  v59 = a8;
  v56 = *(a8 - 8);
  v15 = v56;
  v16 = *(v56 + 64);
  v65 = a10;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v64 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - v20;
  v57 = a9;
  v22 = *(a9 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v62 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v52 - v27;
  v58 = v29;
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v26);
  v60 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v52 - v33;
  v36 = v35;
  v54 = &v52 - v33;
  v55 = v35;
  (*(v35 + 32))(&v52 - v33);
  v52 = v28;
  v53 = v22;
  (*(v22 + 32))(v28, v61, a9);
  v37 = v21;
  (*(v15 + 32))(v21, a5, a8);
  v38 = swift_allocObject();
  v39 = *(a3 + 16);
  *(v38 + 16) = *a3;
  *(v38 + 32) = v39;
  *(v38 + 48) = *(a3 + 32);
  v40 = swift_allocObject();
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0;
  v63 = swift_allocObject();
  v41 = v60;
  v42 = v34;
  v43 = v58;
  (*(v36 + 16))(v60, v42, v58);
  v44 = *(v22 + 16);
  v45 = v62;
  v46 = v57;
  v44(v62, v28, v57);
  v47 = v56;
  v48 = v64;
  v49 = v59;
  (*(v56 + 16))(v64, v37, v59);
  v50 = sub_1BF902974(v41, v45, sub_1BF904C98, v38, sub_1BF904C98, v40, v68, v48, v63, v43, v46, v49, v65, v67, v66);
  (*(v47 + 8))(v37, v49);
  (*(v53 + 8))(v52, v46);
  (*(v55 + 8))(v54, v43);
  return v50;
}

uint64_t *sub_1BF902974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a9[5] = a10;
  a9[6] = a13;
  __swift_allocate_boxed_opaque_existential_1Tm(a9 + 2);
  OUTLINED_FUNCTION_11(a10);
  (*(v16 + 32))();
  a9[10] = a11;
  a9[11] = a14;
  __swift_allocate_boxed_opaque_existential_1Tm(a9 + 7);
  OUTLINED_FUNCTION_11(a11);
  (*(v17 + 32))();
  a9[24] = a12;
  a9[25] = a15;
  __swift_allocate_boxed_opaque_existential_1Tm(a9 + 21);
  OUTLINED_FUNCTION_11(a12);
  (*(v18 + 32))();
  a9[12] = a3;
  a9[13] = a4;
  a9[14] = a5;
  a9[15] = a6;
  sub_1BF8C2C9C(a7, (a9 + 16));
  return a9;
}

uint64_t *sub_1BF902AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59 = a10;
  v60 = a5;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  v58 = a11;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v57 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  v54 = v22;
  v55 = &v49 - v20;
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x1EEE9AC00](v19);
  v56 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v49 - v27;
  v51 = v23;
  v29 = v23[4];
  v49 = &v49 - v27;
  v29(&v49 - v27);
  (*(v15 + 32))(v21, a2, a9);
  v30 = swift_allocObject();
  v31 = *(a3 + 16);
  *(v30 + 16) = *a3;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(a3 + 32);
  v32 = swift_allocObject();
  v33 = *(a4 + 16);
  *(v32 + 16) = *a4;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(a4 + 32);
  v52 = swift_allocObject();
  v53 = a6;
  v34 = a6[3];
  v50 = a6[4];
  v35 = __swift_mutable_project_boxed_opaque_existential_1(a6, v34);
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v49 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v38);
  v40 = v23[2];
  v41 = v56;
  v42 = v54;
  v40(v56, v28, v54);
  v43 = v15;
  v44 = *(v15 + 16);
  v45 = v57;
  v46 = v55;
  v44(v57, v55, a9);
  v47 = sub_1BF902974(v41, v45, sub_1BF904C98, v30, sub_1BF904C98, v32, v60, v38, v52, v42, a9, v34, v59, v58, v50);
  __swift_destroy_boxed_opaque_existential_1(v53);
  (*(v43 + 8))(v46, a9);
  (v51[1])(v49, v42);
  return v47;
}

uint64_t *sub_1BF902E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v43 = a6;
  v44 = a7;
  v41 = a4;
  v42 = a5;
  v37 = a2;
  v38 = a13;
  v39 = a12;
  v40 = a3;
  v15 = *(a11 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](a9);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a10 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  v36 = a8;
  v24 = a8[3];
  v34 = a8[4];
  v25 = __swift_mutable_project_boxed_opaque_existential_1(a8, v24);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  (*(v20 + 16))(v23, a1, a10);
  v30 = v37;
  (*(v15 + 16))(v19, v37, a11);
  v31 = sub_1BF902974(v23, v19, v40, v41, v42, v43, v44, v28, v35, a10, a11, v24, v39, v38, v34);
  __swift_destroy_boxed_opaque_existential_1(v36);
  (*(v15 + 8))(v30, a11);
  (*(v20 + 8))(a1, a10);
  return v31;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  OUTLINED_FUNCTION_28_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF90324C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE90D0, &qword_1BF9BB090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF9032BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF903304(uint64_t a1, uint64_t a2)
{
  result = sub_1BF9032BC(&qword_1EBDE90E0, a2, type metadata accessor for DialogIdCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF90335C(uint64_t a1, uint64_t a2)
{
  result = sub_1BF9032BC(&qword_1EBDE90D8, a2, type metadata accessor for DialogIdCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF9033B4(uint64_t a1, uint64_t a2)
{
  result = sub_1BF9032BC(&qword_1EBDE90E8, a2, type metadata accessor for DialogIdCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of DialogCallback.getText(dialog:dialogProperties:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_111(v10);
  v24 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  *(v9 + 16) = v14;
  *v14 = v9;
  v14[1] = sub_1BF904CA8;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_100();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of DialogCallback.getText(dialog:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1BF90366C;
  v10 = OUTLINED_FUNCTION_27_0();

  return v12(v10);
}

uint64_t sub_1BF90366C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_121();
  v5 = OUTLINED_FUNCTION_88();

  return v6(v5);
}

uint64_t sub_1BF9037CC()
{
  result = sub_1BF9B4558();
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit5ColorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit5ImageOSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF903990(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 74))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 33);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF9039D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 33) = ~a2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF903A50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 34))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 33);
      if (v3 <= 3)
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

uint64_t sub_1BF903A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF903AF0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BF903B30(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF903C98()
{
  result = sub_1BF9B4378();
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

_BYTE *storeEnumTagSinglePayload for Image.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF903F30(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1BF903FDC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9040BC()
{
  result = qword_1EBDE90F0;
  if (!qword_1EBDE90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90F0);
  }

  return result;
}

unint64_t sub_1BF904114()
{
  result = qword_1EBDE90F8;
  if (!qword_1EBDE90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE90F8);
  }

  return result;
}

unint64_t sub_1BF90416C()
{
  result = qword_1EBDE9100;
  if (!qword_1EBDE9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9100);
  }

  return result;
}

unint64_t sub_1BF9041C4()
{
  result = qword_1EBDE9108;
  if (!qword_1EBDE9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9108);
  }

  return result;
}

unint64_t sub_1BF90421C()
{
  result = qword_1EBDE9110;
  if (!qword_1EBDE9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9110);
  }

  return result;
}

unint64_t sub_1BF904274()
{
  result = qword_1EBDE9118;
  if (!qword_1EBDE9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9118);
  }

  return result;
}

unint64_t sub_1BF9042CC()
{
  result = qword_1EBDE9120;
  if (!qword_1EBDE9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9120);
  }

  return result;
}

unint64_t sub_1BF904324()
{
  result = qword_1EBDE9128;
  if (!qword_1EBDE9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9128);
  }

  return result;
}

unint64_t sub_1BF90437C()
{
  result = qword_1EBDE9130;
  if (!qword_1EBDE9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9130);
  }

  return result;
}

uint64_t sub_1BF9043D0(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EDBF0FE8, 255, type metadata accessor for TemplateOverrideDialogIdCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF90442C(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EDBF0FE0, 255, type metadata accessor for TemplateOverrideDialogIdCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF904488(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EDBF0FD8, 255, type metadata accessor for TemplateOverrideDialogIdCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF9044E4(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EBDE9138, 255, type metadata accessor for TemplateOverrideCATTemplatingCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF904540(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EBDE9140, 255, type metadata accessor for TemplateOverrideCATTemplatingCallback);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF90459C(uint64_t a1)
{
  result = sub_1BF9032BC(&qword_1EBDE9148, 255, type metadata accessor for TemplateOverrideCATTemplatingCallback);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF9045FC()
{
  result = qword_1EBDE9150;
  if (!qword_1EBDE9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9150);
  }

  return result;
}

unint64_t sub_1BF904654()
{
  result = qword_1EBDE9158;
  if (!qword_1EBDE9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9158);
  }

  return result;
}

unint64_t sub_1BF9046AC()
{
  result = qword_1EBDE9160;
  if (!qword_1EBDE9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9160);
  }

  return result;
}

unint64_t sub_1BF904704()
{
  result = qword_1EBDE9168;
  if (!qword_1EBDE9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9168);
  }

  return result;
}

unint64_t sub_1BF90475C()
{
  result = qword_1EBDE9170;
  if (!qword_1EBDE9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9170);
  }

  return result;
}

unint64_t sub_1BF9047B4()
{
  result = qword_1EBDE9178;
  if (!qword_1EBDE9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9178);
  }

  return result;
}

unint64_t sub_1BF90480C()
{
  result = qword_1EDBF4EB8;
  if (!qword_1EDBF4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EB8);
  }

  return result;
}

unint64_t sub_1BF904864()
{
  result = qword_1EDBF4EC0;
  if (!qword_1EDBF4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EC0);
  }

  return result;
}

unint64_t sub_1BF9048BC()
{
  result = qword_1EDBF4EA8;
  if (!qword_1EDBF4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EA8);
  }

  return result;
}

unint64_t sub_1BF904914()
{
  result = qword_1EDBF4EB0;
  if (!qword_1EDBF4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EB0);
  }

  return result;
}

unint64_t sub_1BF90496C()
{
  result = qword_1EDBF4E90;
  if (!qword_1EDBF4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E90);
  }

  return result;
}

unint64_t sub_1BF9049C4()
{
  result = qword_1EDBF4E98;
  if (!qword_1EDBF4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E98);
  }

  return result;
}

unint64_t sub_1BF904A1C()
{
  result = qword_1EDBF5590;
  if (!qword_1EDBF5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5590);
  }

  return result;
}

unint64_t sub_1BF904A74()
{
  result = qword_1EDBF4E88;
  if (!qword_1EDBF4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E88);
  }

  return result;
}

unint64_t sub_1BF904ACC()
{
  result = qword_1EDBF4EC8;
  if (!qword_1EDBF4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4EC8);
  }

  return result;
}

unint64_t sub_1BF904B24()
{
  result = qword_1EDBF4ED0;
  if (!qword_1EDBF4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4ED0);
  }

  return result;
}

unint64_t sub_1BF904B7C()
{
  result = qword_1EDBF47C0;
  if (!qword_1EDBF47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47C0);
  }

  return result;
}

unint64_t sub_1BF904BD4()
{
  result = qword_1EDBF47C8;
  if (!qword_1EDBF47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47C8);
  }

  return result;
}

unint64_t sub_1BF904C28()
{
  result = qword_1EDBF4E58;
  if (!qword_1EDBF4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_31_3(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v5 = a2[3];

  return __swift_project_boxed_opaque_existential_1(a2, v5);
}

uint64_t OUTLINED_FUNCTION_44_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 36) = v2[5];
  *(v2 - 38) = v2[4];
  *(v2 - 39) = v2[3];
  *(v2 - 29) = v2[2];

  return sub_1BF9B4378();
}

void *OUTLINED_FUNCTION_51_1()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v3[4];
  result = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v0[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_71_1()
{

  sub_1BF8FEB88();
}

uint64_t OUTLINED_FUNCTION_72_1()
{
  v2 = *(v0 - 256);

  return sub_1BF8E69C4(v2, v0 - 160);
}

uint64_t OUTLINED_FUNCTION_85_0()
{
  result = v1;
  *(v2 - 296) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
}

uint64_t OUTLINED_FUNCTION_95_0()
{

  return sub_1BF9B56D8();
}

uint64_t OUTLINED_FUNCTION_96()
{

  return sub_1BF9B5508();
}

void OUTLINED_FUNCTION_98(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  sub_1BF8FF2BC();
}

uint64_t OUTLINED_FUNCTION_99@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_115()
{
  v2 = *(v0 - 128);

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_116()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  v5 = *(v0 - 96);
  v6 = *(v0 - 88);

  return sub_1BF8F9E7C(v2, v3, v4, v5, v6);
}

void OUTLINED_FUNCTION_117()
{

  sub_1BF8FEB88();
}

uint64_t OUTLINED_FUNCTION_119()
{
  v2 = *(v0 - 232);
}

uint64_t OUTLINED_FUNCTION_120()
{
  v2 = *(v0 - 248);

  return sub_1BF8E69C4(v2, v0 - 200);
}

uint64_t sub_1BF9050B8@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for DelegatingResolver();
  *a1 = v1;
}

uint64_t sub_1BF9050FC@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t Wrappable.getRoot()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  v5 = *(*(a1 - 8) + 16);

  return v5(boxed_opaque_existential_1Tm, v2, a1);
}

void *OSFeatureFlagProvider.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = sub_1BF905224;
  result[3] = 0;
  result[4] = sub_1BF905228;
  result[5] = 0;
  return result;
}

uint64_t OSFeatureFlagProvider.isSiriHelpEnabled(device:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = v1;

  if ((sub_1BF9B4608() & 1) == 0)
  {
    if (sub_1BF9B4618())
    {
      v8 = &type metadata for SiriSuggestionsFeatureFlags;
      v9 = sub_1BF9053B4();
      v3 = 9;
      goto LABEL_6;
    }

    if (sub_1BF9B45F8() & 1) != 0 || (sub_1BF9B45E8())
    {

      v5 = 1;
      return v5 & 1;
    }

    if (sub_1BF9B45D8())
    {
      v8 = &type metadata for SiriSuggestionsFeatureFlags;
      v9 = sub_1BF9053B4();
      v3 = 10;
      goto LABEL_6;
    }

LABEL_13:
    v5 = 0;
    return v5 & 1;
  }

  v8 = &type metadata for SiriSuggestionsFeatureFlags;
  v9 = sub_1BF9053B4();
  v3 = 8;
LABEL_6:
  LOBYTE(v7[0]) = v3;
  v4 = *(v1 + 24);
  v5 = (*(v2 + 16))(v7);

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5 & 1;
}

uint64_t OSFeatureFlagProvider.isEnabled(flag:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BF9065EC(v4, v1, v2, v3);
}

unint64_t sub_1BF9053B4()
{
  result = qword_1EDBF52D8[0];
  if (!qword_1EDBF52D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF52D8);
  }

  return result;
}

uint64_t OSFeatureFlagProvider.isContinuersEnabled(device:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v2 = v1;

  if ((sub_1BF9B4618() & 1) == 0)
  {
    if (sub_1BF9B4608())
    {
      v8 = &type metadata for SiriSuggestionsFeatureFlags;
      v9 = sub_1BF9053B4();
      v3 = 2;
      goto LABEL_10;
    }

    if (sub_1BF9B45E8())
    {
      v8 = &type metadata for SiriSuggestionsFeatureFlags;
      v9 = sub_1BF9053B4();
      v3 = 4;
      goto LABEL_10;
    }

    if (sub_1BF9B45F8())
    {
      v8 = &type metadata for SiriSuggestionsFeatureFlags;
      v9 = sub_1BF9053B4();
      v3 = 1;
      goto LABEL_10;
    }

    if (sub_1BF9B45D8())
    {
      v5 = OSFeatureFlagProvider.isSAESuggestionsEnabled()();

      return v5 & 1;
    }

LABEL_14:
    v5 = 0;
    return v5 & 1;
  }

  v8 = &type metadata for SiriSuggestionsFeatureFlags;
  v9 = sub_1BF9053B4();
  v3 = 3;
LABEL_10:
  LOBYTE(v7[0]) = v3;
  v4 = *(v1 + 24);
  v5 = (*(v2 + 16))(v7);

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5 & 1;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isSAESuggestionsEnabled()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_1BF90657C(v0);
  v3 = v2;
  if ([objc_opt_self() isSAEEnabled])
  {
    v4.value._countAndFlagsBits = v1;
    v4.value._object = v3;
    v5 = OSFeatureFlagProvider.isSAESuggestionsFeatureFlagEnabled(locale:)(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isSAESuggestionsFeatureFlagEnabled(locale:)(Swift::String_optional locale)
{
  if (!locale.value._object)
  {
    goto LABEL_6;
  }

  v2 = v1;
  object = locale.value._object;
  countAndFlagsBits = locale.value._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF9BC820;
  *(inited + 32) = 0x52462D7266;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x41432D7266;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x45422D7266;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x48432D7266;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0x53452D7365;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = 0x53552D7365;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = 0x584D2D7365;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0x4C432D7365;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 160) = 0x45442D6564;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x48432D6564;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = 0x54412D6564;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = 0x54492D7469;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = 0x48432D7469;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = 0x52422D7470;
  *(inited + 248) = 0xE500000000000000;
  *(inited + 256) = 0x4E432D687ALL;
  *(inited + 264) = 0xE500000000000000;
  *(inited + 272) = 0x504A2D616ALL;
  *(inited + 280) = 0xE500000000000000;
  *(inited + 288) = 0x524B2D6F6BLL;
  *(inited + 296) = 0xE500000000000000;
  v6 = sub_1BF9B4C08();
  if ((v6 & 1) == 0)
  {
    v12[0] = countAndFlagsBits;
    v12[1] = object;
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = v12;
    v7 = sub_1BF90626C(sub_1BF9066AC, v11, inited);
    swift_setDeallocating();
    sub_1BF906454();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = 0;
    return v9 & 1;
  }

  swift_setDeallocating();
  sub_1BF906454();
LABEL_5:
  v12[3] = &type metadata for SiriSuggestionsFeatureFlags;
  v12[4] = sub_1BF9053B4();
  LOBYTE(v12[0]) = 21;
  v8 = *(v2 + 24);
  v9 = (*(v2 + 16))(v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9 & 1;
}

BOOL OSFeatureFlagProvider.isSAESuggestionsEnabled(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2)
  {

    return OSFeatureFlagProvider.isSAESuggestionsEnabled()();
  }

  else
  {
    if (v2 == 3 || (v2 & 1) != 0 || !OSFeatureFlagProvider.isSAESuggestionsEnabled()())
    {
      v1 = 0;
    }

    else
    {
      sub_1BF9053B4();
      OUTLINED_FUNCTION_0_9();
      v4 = v3();
      OUTLINED_FUNCTION_2_9(v4);
    }

    return v1 & 1;
  }
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isFeatureAnnouncementEnabled()()
{
  v4[3] = &type metadata for SiriSuggestionsFeatureFlags;
  v4[4] = sub_1BF9053B4();
  OUTLINED_FUNCTION_0_9();
  v1 = v0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return (v1 & 1) != 0 && !OSFeatureFlagProvider.isSAEUIEnabled()();
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isSAEUIEnabled()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v2())
  {
    v8 = &type metadata for SiriSuggestionsFeatureFlags;
    v9 = sub_1BF9053B4();
    v7[0] = 29;
    v4 = *(v1 + 24);
    v5 = (*(v1 + 16))(v7);
    OUTLINED_FUNCTION_2_9(v5);
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isPanIndiaFeatureAnnouncementEnabled()()
{
  if (OSFeatureFlagProvider.isFeatureAnnouncementEnabled()())
  {
    sub_1BF9053B4();
    OUTLINED_FUNCTION_0_9();
    v2 = v1();
    OUTLINED_FUNCTION_2_9(v2);
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isSMARTEnabled()()
{
  v8 = &type metadata for SiriSuggestionsFeatureFlags;
  v1 = sub_1BF9053B4();
  v9 = v1;
  LOBYTE(v7[0]) = 19;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = v3(v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v4)
  {
    v8 = &type metadata for SiriSuggestionsFeatureFlags;
    v9 = v1;
    LOBYTE(v7[0]) = 18;
    v5 = v3(v7);
    OUTLINED_FUNCTION_2_9(v5);
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isHandCraftedAppIntentSuggestionsEnabled()()
{
  sub_1BF9053B4();
  OUTLINED_FUNCTION_0_9();
  v2 = v1();
  OUTLINED_FUNCTION_2_9(v2);
  v3 = OSFeatureFlagProvider.isSAEFullPlannerEnabled()();
  v4 = OSFeatureFlagProvider.isDisableAllActionsOn()();
  v5 = (v0 & 1) != 0 && v3 && !v4;
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF9B47C8();
  __swift_project_value_buffer(v6, qword_1EDBF5570);
  v7 = sub_1BF9B47A8();
  v8 = sub_1BF9B5038();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109888;
    *(v9 + 4) = v5;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v0 & 1;
    *(v9 + 14) = 1024;
    *(v9 + 16) = v3;
    *(v9 + 20) = 1024;
    *(v9 + 22) = v4;
    _os_log_impl(&dword_1BF8B8000, v7, v8, "isHandCraftedAISuggestionsEnabled: %{BOOL}d\nReasons:\nhandCraftedAISuggestionsFF: %{BOOL}d\nsaeFullPlannerEnabled: %{BOOL}d\ndisableAllActionsOn: %{BOOL}d --> must be 'false' for AppIntent suggestions to be enabled ", v9, 0x1Au);
    MEMORY[0x1BFB5F320](v9, -1, -1);
  }

  return v5;
}

Swift::Bool __swiftcall OSFeatureFlagProvider.isAppIntentSuggestionsEnabled()()
{
  v4[3] = &type metadata for SiriSuggestionsFeatureFlags;
  v4[4] = sub_1BF9053B4();
  OUTLINED_FUNCTION_0_9();
  v1 = v0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return (v1 & 1) != 0 && OSFeatureFlagProvider.isSAEUIEnabled()() && OSFeatureFlagProvider.isSAEFullPlannerEnabled()();
}

uint64_t sub_1BF905CFC(char a1)
{
  v8 = &type metadata for SiriSuggestionsFeatureFlags;
  v9 = sub_1BF9053B4();
  v7[0] = a1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3(v7);
  OUTLINED_FUNCTION_2_9(v5);
  return a1 & 1;
}

uint64_t sub_1BF905D54(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return sub_1BF9065EC(v5, v2, v3, v4);
}

uint64_t StaticFeatureFlagProvider.isSAESuggestionsEnabled(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  result = *(v1 + 11);
  if (v2 != 2)
  {
    if (v2 == 3 || (v2 & 1) != 0)
    {
      return 0;
    }

    else
    {
      return result & *(v1 + 22);
    }
  }

  return result;
}

double static StaticFeatureFlagProvider.create(enabled:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 1) = 0x101010101010101;
  *(a2 + 9) = 16843008;
  *&result = 16842753;
  *(a2 + 17) = 16842753;
  *(a2 + 21) = 256;
  *(a2 + 23) = 1;
  return result;
}

BOOL sub_1BF90626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_8(a1, a2, a3);
  v6 = (v5 + 40);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *v6;
    v13[0] = *(v6 - 1);
    v13[1] = v9;

    v10 = v4(v13);
    if (v3)
    {

      return v8 != 0;
    }

    v11 = v10;
    v6 += 2;
  }

  while ((v11 & 1) == 0);
  return v8 != 0;
}

BOOL sub_1BF906310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_8(a1, a2, a3);
  v6 = (v5 + 64);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *(v6 - 2);
    v10 = *(v6 - 1);
    v11 = *(v6 - 3);
    v12 = *v6;
    v15 = *(v6 - 4);
    v16 = v11;
    v17 = v9;
    v18 = v10;
    v19 = v12;
    sub_1BF8C0D00(v15, v11, v9, v10, v12);
    v13 = v4(&v15);
    sub_1BF8C0CB8(v15, v16, v17, v18, v19);
    if (v3)
    {
      break;
    }

    v6 += 40;
  }

  while ((v13 & 1) == 0);
  return v8 != 0;
}

BOOL sub_1BF9063B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_10(a1, a2, a3);
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = v3(v5);
    if (v4)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1BF906404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_10(a1, a2, a3);
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = v3(v5);
    if (v4)
    {
      break;
    }

    v5 += 120;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1BF906454()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF906498()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF90654C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1BF90657C(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BF9B4AA8();

  return v3;
}

uint64_t sub_1BF9065EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v4);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  LOBYTE(v4) = v8(v11);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v4 & 1;
}

__n128 __swift_memcpy24_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StaticFeatureFlagProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for StaticFeatureFlagProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t AppEntityDetails.signalValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t AppEntityDetails.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43();
}

uint64_t AppEntityDetails.appEntityType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_43();
}

SiriSuggestionsKit::AppEntityDetails::AppEntityCount_optional __swiftcall AppEntityDetails.AppEntityCount.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AppEntityDetails.AppEntityCount.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656C7069746C756DLL;
  }

  else
  {
    result = 0x656C676E6973;
  }

  *v0;
  return result;
}

uint64_t sub_1BF906AE8@<X0>(uint64_t *a1@<X8>)
{
  result = AppEntityDetails.AppEntityCount.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriSuggestionsKit::AppEntitySignalValue __swiftcall AppEntitySignalValue.init(bundleId:appEntityType:)(Swift::String bundleId, Swift::String appEntityType)
{
  *v2 = bundleId;
  v2[1] = appEntityType;
  result.appEntityType = appEntityType;
  result.bundleId = bundleId;
  return result;
}

uint64_t AppEntityDetails.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD00000000000001BLL, 0x80000001BF9CB700);
  v6 = OUTLINED_FUNCTION_36();
  MEMORY[0x1BFB5DE90](v6);
  MEMORY[0x1BFB5DE90](0xD000000000000011, 0x80000001BF9CB720);
  MEMORY[0x1BFB5DE90](v3, v4);
  MEMORY[0x1BFB5DE90](0xD000000000000012, 0x80000001BF9CB740);
  sub_1BF9B5378();
  MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
  return 0;
}

uint64_t AppEntityDetails.getLookupValue()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  a1[3] = &type metadata for AppEntitySignalValue;
  a1[4] = sub_1BF8E630C();
  a1[5] = sub_1BF8E6360();
  a1[6] = sub_1BF8E63B4();
  a1[7] = sub_1BF8E6408();
  v7 = swift_allocObject();
  *a1 = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
}

uint64_t static AppEntityDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_1BF9B56D8() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v3 == v6;
  if (!v9 && (sub_1BF9B56D8() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF8CA8AC(v4);
}

uint64_t static AppEntitySignalValue.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BF9B56D8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_43();

      return sub_1BF9B56D8();
    }
  }

  return result;
}

uint64_t sub_1BF906F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61566C616E676973 && a2 == 0xEB0000000065756CLL;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469746E45707061 && a2 == 0xEE00746E756F4379)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF906FD4(char a1)
{
  if (a1)
  {
    return 0x7469746E45707061;
  }

  else
  {
    return 0x61566C616E676973;
  }
}

uint64_t sub_1BF907040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF906F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF907068(uint64_t a1)
{
  v2 = sub_1BF907284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9070A4(uint64_t a1)
{
  v2 = sub_1BF907284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppEntityDetails.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v18 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9180, &qword_1BF9BC930);
  OUTLINED_FUNCTION_1(v4);
  v19 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[3];
  v17 = v0[2];
  v24 = *(v0 + 32);
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF907284();

  sub_1BF9B5898();
  v20 = v11;
  v21 = v12;
  v22 = v17;
  v23 = v13;
  sub_1BF8E63B4();
  OUTLINED_FUNCTION_7_8();
  v15 = v18;
  sub_1BF9B5638();

  if (!v15)
  {
    LOBYTE(v20) = v24;
    sub_1BF9072D8();
    OUTLINED_FUNCTION_7_8();
    sub_1BF9B5638();
  }

  (*(v19 + 8))(v10, v4);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF907284()
{
  result = qword_1EBDE9188;
  if (!qword_1EBDE9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9188);
  }

  return result;
}

unint64_t sub_1BF9072D8()
{
  result = qword_1EBDE9190;
  if (!qword_1EBDE9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9190);
  }

  return result;
}

uint64_t AppEntityDetails.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1BF9B4B48();
  OUTLINED_FUNCTION_36();
  sub_1BF9B4B48();
  sub_1BF9B4B48();
}

uint64_t AppEntityDetails.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  sub_1BF9B4B48();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

void AppEntityDetails.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9198, &qword_1BF9BC938);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF907284();
  OUTLINED_FUNCTION_53();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1BF8E6360();
    OUTLINED_FUNCTION_2_10();
    sub_1BF907DB0();
    OUTLINED_FUNCTION_2_10();
    v10 = OUTLINED_FUNCTION_60();
    v11(v10);
    *v4 = v12;
    *(v4 + 8) = v13;
    *(v4 + 16) = v14;
    *(v4 + 24) = v15;
    *(v4 + 32) = v12;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF90761C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_1BF9B57A8();
  AppEntityDetails.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t AppEntitySignalValue.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43();
}

uint64_t AppEntitySignalValue.appEntityType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_43();
}

uint64_t AppEntitySignalValue.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD00000000000001FLL, 0x80000001BF9CB760);
  v5 = OUTLINED_FUNCTION_36();
  MEMORY[0x1BFB5DE90](v5);
  MEMORY[0x1BFB5DE90](0xD000000000000011, 0x80000001BF9CB720);
  MEMORY[0x1BFB5DE90](v3, v4);
  MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BF9077D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469746E45707061 && a2 == 0xED00006570795479)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF9078A4(char a1)
{
  if (a1)
  {
    return 0x7469746E45707061;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_1BF9078E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF90793C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9077D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF907964(uint64_t a1)
{
  v2 = sub_1BF907E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9079A0(uint64_t a1)
{
  v2 = sub_1BF907E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppEntitySignalValue.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE91A8, &qword_1BF9BC940);
  OUTLINED_FUNCTION_1(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF907E04();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v1)
  {
    sub_1BF9B55F8();
  }

  (*(v16 + 8))(v10, v4);
  OUTLINED_FUNCTION_37();
}

uint64_t AppEntitySignalValue.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1BF9B4B48();
  OUTLINED_FUNCTION_36();

  return sub_1BF9B4B48();
}

uint64_t AppEntitySignalValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

void AppEntitySignalValue.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE91B8, &qword_1BF9BC948);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF907E04();
  OUTLINED_FUNCTION_53();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v14 = sub_1BF9B5518();
    v16 = v15;
    v17 = sub_1BF9B5518();
    v19 = v18;
    v20 = *(v7 + 8);
    v22 = v17;
    v20(v12, v5);
    *v4 = v14;
    v4[1] = v16;
    v4[2] = v22;
    v4[3] = v19;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_37();
}