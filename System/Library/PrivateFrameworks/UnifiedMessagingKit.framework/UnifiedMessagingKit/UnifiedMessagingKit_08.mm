_BYTE *storeEnumTagSinglePayload for InlineMessageAppearance.ColorDecoder.ColorIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
        JUMPOUT(0x270457DA8);
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_270457DE0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270457EACLL);
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

_BYTE *sub_270457EE0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270457FACLL);
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

unint64_t sub_270457FE4()
{
  result = qword_2807D2E10;
  if (!qword_2807D2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E10);
  }

  return result;
}

unint64_t sub_27045803C()
{
  result = qword_2807D2E18;
  if (!qword_2807D2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E18);
  }

  return result;
}

uint64_t sub_270458090()
{
  v0 = sub_2705D82B4();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2704580E4(char a1)
{
  result = 0x746E6954707061;
  switch(a1)
  {
    case 1:
      result = 0x6B63616C62;
      break;
    case 2:
      result = OUTLINED_FUNCTION_14_21();
      break;
    case 3:
      v3 = 2003792482;
      goto LABEL_13;
    case 4:
      result = 0x7261656C63;
      break;
    case 5:
      result = 1851881827;
      break;
    case 6:
      result = 2036429415;
      break;
    case 7:
      v3 = 1701147239;
LABEL_13:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
      break;
    case 8:
      result = 0x6F6769646E69;
      break;
    case 9:
      result = 1953393005;
      break;
    case 10:
      result = 0x65676E61726FLL;
      break;
    case 11:
      result = 1802398064;
      break;
    case 12:
      result = 0x656C70727570;
      break;
    case 13:
      result = 6579570;
      break;
    case 14:
      result = 1818322292;
      break;
    case 15:
      result = 0x6574696877;
      break;
    case 16:
      result = 0x776F6C6C6579;
      break;
    case 17:
      result = 0x547972616D697270;
      break;
    case 18:
      result = 0x7261646E6F636573;
      break;
    case 19:
      result = 0x7972616974726574;
      break;
    case 20:
      result = 0x616E726574617571;
      break;
    case 21:
      result = 0x6F74617261706573;
      break;
    case 22:
      result = 0x655365757161706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27045837C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270458090();
  *a1 = result;
  return result;
}

unint64_t sub_2704583AC()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2704580E4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2704583D8()
{
  result = qword_2807D2E20;
  if (!qword_2807D2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E20);
  }

  return result;
}

unint64_t sub_270458430()
{
  result = qword_2807D2E28;
  if (!qword_2807D2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E28);
  }

  return result;
}

unint64_t sub_270458488()
{
  result = qword_2807D2E30;
  if (!qword_2807D2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E30);
  }

  return result;
}

unint64_t sub_2704584E0()
{
  result = qword_2807D2E38;
  if (!qword_2807D2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E38);
  }

  return result;
}

unint64_t sub_270458538()
{
  result = qword_2807D2E40;
  if (!qword_2807D2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E40);
  }

  return result;
}

unint64_t sub_270458590()
{
  result = qword_2807D2E48;
  if (!qword_2807D2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E48);
  }

  return result;
}

unint64_t sub_2704585E8()
{
  result = qword_2807D2E50;
  if (!qword_2807D2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E50);
  }

  return result;
}

unint64_t sub_270458640()
{
  result = qword_2807D2E58;
  if (!qword_2807D2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E58);
  }

  return result;
}

unint64_t sub_270458698()
{
  result = qword_2807D2E60;
  if (!qword_2807D2E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E60);
  }

  return result;
}

unint64_t sub_2704586F0()
{
  result = qword_2807D2E68;
  if (!qword_2807D2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E68);
  }

  return result;
}

unint64_t sub_2704587A8()
{
  result = qword_2807D2E70;
  if (!qword_2807D2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E70);
  }

  return result;
}

unint64_t sub_270458800()
{
  result = qword_2807D2E78;
  if (!qword_2807D2E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E78);
  }

  return result;
}

unint64_t sub_270458854()
{
  result = qword_2807D2E80;
  if (!qword_2807D2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E80);
  }

  return result;
}

unint64_t sub_2704588A8()
{
  result = qword_2807D2E88;
  if (!qword_2807D2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E88);
  }

  return result;
}

unint64_t sub_2704588FC()
{
  result = qword_2807D2E90;
  if (!qword_2807D2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E90);
  }

  return result;
}

unint64_t sub_270458950()
{
  result = qword_2807D2E98;
  if (!qword_2807D2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2E98);
  }

  return result;
}

void OUTLINED_FUNCTION_0_30()
{
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[20] = 0;
  v0[21] = 0;
  v0[16] = 0;
}

void OUTLINED_FUNCTION_1_33()
{
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[20] = 0;
  v0[21] = 0;
  v0[16] = 0;
}

uint64_t OUTLINED_FUNCTION_5_30()
{

  return sub_2705D8134();
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return sub_2705D8134();
}

void OUTLINED_FUNCTION_15_16(char a1@<W8>)
{
  *(v1 - 176) = a1;
  *(v1 - 175) = *(v1 - 103);
  *(v1 - 172) = *(v1 - 100);
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_26_8()
{
}

uint64_t sub_270458BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v58 = a2;
  v2 = sub_2705D5514();
  v3 = OUTLINED_FUNCTION_1_25(v2, &v61);
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_51(&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2705D55A4();
  v7 = OUTLINED_FUNCTION_1_25(v6, &v60[96]);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2EA0) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_51(&v46 - v14);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2EA8) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_51(&v46 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2EB0) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2EB8) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2EC0) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_51(&v46 - v27);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2EC8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  v30 = &v46 - v29;
  sub_2705D55B4();
  sub_2705D60B4();
  OUTLINED_FUNCTION_1_34();
  sub_2705D5094();
  v31 = v48;
  (*(v9 + 32))(v48, v11, v53);
  v32 = v31;
  memcpy((v31 + *(v12 + 44)), __src, 0x70uLL);
  v33 = *(v54 + 64);
  KeyPath = swift_getKeyPath();
  v35 = v32;
  v36 = v49;
  sub_270459284(v35, v49, &qword_2807D2EA0);
  v37 = (v36 + *(v50 + 44));
  *v37 = KeyPath;
  v37[1] = v33;

  v38 = sub_27045916C();
  sub_270459284(v36, v20, &qword_2807D2EA8);
  *&v20[*(v17 + 44)] = v38;
  sub_270459284(v20, v24, &qword_2807D2EB0);
  v24[*(v21 + 44)] = 0;
  LOBYTE(v9) = sub_2705D5724();
  v39 = v47;
  sub_270459284(v24, v47, &qword_2807D2EB8);
  v40 = v39 + *(v25 + 44);
  *v40 = v9;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  *(v40 + 40) = 1;
  sub_2705D60B4();
  OUTLINED_FUNCTION_1_34();
  sub_2705D5094();
  sub_270459284(v39, v30, &qword_2807D2EC0);
  memcpy(&v30[*(v51 + 36)], v60, 0x70uLL);
  v41 = v55;
  sub_2705D5504();
  sub_2704592EC();
  OUTLINED_FUNCTION_0_31();
  sub_2704596E8(v42, v43);
  v44 = v56;
  sub_2705D5A84();
  (*(v57 + 8))(v41, v44);
  return sub_270459730(v30);
}

uint64_t sub_27045916C()
{
  v1 = sub_2705D4FB4();
  MEMORY[0x28223BE20](v1);
  if (*(v0 + 56))
  {
  }

  else
  {
    sub_2705D4FA4();
  }

  return sub_2705D4E74();
}

uint64_t sub_270459284(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2704592EC()
{
  result = qword_2807D2ED0;
  if (!qword_2807D2ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2EC8);
    sub_270459378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2ED0);
  }

  return result;
}

unint64_t sub_270459378()
{
  result = qword_2807D2ED8;
  if (!qword_2807D2ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2EC0);
    sub_270459404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2ED8);
  }

  return result;
}

unint64_t sub_270459404()
{
  result = qword_2807D2EE0;
  if (!qword_2807D2EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2EB8);
    sub_2704594BC();
    sub_2703AFBC8(&qword_2807D2F28, &qword_2807D2F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2EE0);
  }

  return result;
}

unint64_t sub_2704594BC()
{
  result = qword_2807D2EE8;
  if (!qword_2807D2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2EB0);
    sub_270459574();
    sub_2703AFBC8(&qword_2807D2F18, &qword_2807D2F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2EE8);
  }

  return result;
}

unint64_t sub_270459574()
{
  result = qword_2807D2EF0;
  if (!qword_2807D2EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2EA8);
    sub_27045962C();
    sub_2703AFBC8(&qword_2807D2F08, &qword_2807D2F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2EF0);
  }

  return result;
}

unint64_t sub_27045962C()
{
  result = qword_2807D2EF8;
  if (!qword_2807D2EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2EA0);
    sub_2704596E8(&qword_2807D2F00, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2EF8);
  }

  return result;
}

uint64_t sub_2704596E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_270459730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270459798()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2EC8);
  sub_2705D5514();
  sub_2704592EC();
  OUTLINED_FUNCTION_0_31();
  sub_2704596E8(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27045988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8);
  OUTLINED_FUNCTION_46_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B0);
    OUTLINED_FUNCTION_46_0();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24) + 49);
      if (v13 > 0x80000000)
      {
        return -v13;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_2704599A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8);
  OUTLINED_FUNCTION_46_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
LABEL_5:

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B0);
  OUTLINED_FUNCTION_46_0();
  if (*(v13 + 84) == a3)
  {
    v10 = v12;
    v11 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v14 = a1 + *(a4 + 24);
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *v14 = 0u;
  *(v14 + 48) = -a2 << 8;

  bzero((v14 + 56), 0x128uLL);
}

uint64_t type metadata accessor for InlineMessageIconView()
{
  result = qword_2807D2F40;
  if (!qword_2807D2F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270459B1C()
{
  sub_270459BF4(319, &qword_2807D24D8, MEMORY[0x277CDFA28]);
  if (v0 <= 0x3F)
  {
    sub_270459BF4(319, &qword_2807D24D0, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_270459BF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2705D4D94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_270459C64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_2703C2E9C(v2, &v17 - v12, &qword_2807D24F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_14();
    return (*(v14 + 32))(a1, v13);
  }

  else
  {
    sub_2705D7A84();
    v16 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_270459E40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for InlineMessageIconView();
  sub_2703C2E9C(v1 + *(v13 + 20), v12, &qword_2807D24E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4D84();
    OUTLINED_FUNCTION_14();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_2705D7A84();
    v16 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_27045A024@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for ImageComponentModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2705D4D84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_270459E40(&v18 - v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CDF3D0], v5);
  v12 = sub_2705D4D74();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  v14 = *(type metadata accessor for InlineMessageIconView() + 24);
  memcpy(v21, (v1 + v14), 0x160uLL);
  memcpy(v20, (v1 + v14), sizeof(v20));
  sub_2703BE7D0(v21, &v19);
  sub_27044DAC8(v20, v4);
  if (v12)
  {
    v15 = *(v2 + 24);
  }

  else
  {
    v15 = *(v2 + 20);
  }

  v16 = sub_2705D6734();
  (*(*(v16 - 8) + 16))(v18, &v4[v15], v16);
  return sub_27044FB10(v4);
}

double sub_27045A298@<D0>(uint64_t a1@<X8>)
{
  v47 = sub_2705D5004();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_2705D58D4();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  sub_27045A024(a1);
  (*(v14 + 104))(v18, *MEMORY[0x277CE0A90], v12);
  v19 = sub_2705D5794();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  sub_2705D5834();
  v20 = sub_2705D5854();
  sub_2703BF9F8(v11);
  (*(v14 + 8))(v18, v12);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2F50);
  OUTLINED_FUNCTION_3_33();
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2F58) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2F60) + 28);
  v25 = *MEMORY[0x277CE1058];
  sub_2705D5E14();
  OUTLINED_FUNCTION_14();
  (*(v26 + 104))(v23 + v24, v25);
  *v23 = swift_getKeyPath();
  v27 = type metadata accessor for InlineMessageIconView();
  v28 = *(v1 + *(v27 + 28) + 88);
  v29 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2F68);
  OUTLINED_FUNCTION_3_33();
  *v30 = v29;
  v30[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2F70);
  OUTLINED_FUNCTION_3_33();
  *v31 = 0;
  *(v31 + 8) = 1;

  LOBYTE(v28) = sub_2705D56B4();
  sub_2705D4D34();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2F78);
  OUTLINED_FUNCTION_3_33();
  *v40 = v28;
  *(v40 + 8) = v33;
  *(v40 + 16) = v35;
  *(v40 + 24) = v37;
  *(v40 + 32) = v39;
  *(v40 + 40) = 0;
  OUTLINED_FUNCTION_5_31(v49);
  OUTLINED_FUNCTION_5_31(v52);
  LOBYTE(v27) = *(v1 + *(v27 + 32));
  sub_2703BE7D0(v49, v51);
  sub_270459C64(v8);
  sub_27045A72C(v52, v27, v8);
  v41 = *(v4 + 8);
  v42 = v47;
  v41(v8, v47);
  memcpy(v50, v52, sizeof(v50));
  sub_27045A960(v50);
  OUTLINED_FUNCTION_5_31(v51);
  OUTLINED_FUNCTION_5_31(v48);
  sub_2703BE7D0(v51, v52);
  sub_270459C64(v8);
  v43 = sub_27045A72C(v48, v27, v8);
  (v41)(v8, v42, v43);
  memcpy(v52, v48, 0x160uLL);
  sub_27045A960(v52);
  sub_2705D60A4();
  sub_2705D4E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2F80);
  OUTLINED_FUNCTION_3_33();
  v44 = v48[1];
  *v45 = v48[0];
  v45[1] = v44;
  result = *&v48[2];
  v45[2] = v48[2];
  return result;
}

double sub_27045A72C(const void *a1, char a2, uint64_t a3)
{
  v6 = sub_2705D5004();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v14, a1, sizeof(v14));
  if ((a2 & 1) == 0)
  {
    return 40.0;
  }

  if (sub_2705D4FE4())
  {
    (*(v7 + 16))(v9, a3, v6);
    v11 = (*(v7 + 88))(v9, v6);
    if (v11 == *MEMORY[0x277CDF988])
    {
      return 58.0;
    }

    if (v11 == *MEMORY[0x277CDF998])
    {
      return 60.0;
    }

    if (v11 == *MEMORY[0x277CDF9A8])
    {
      return 67.0;
    }

    if (v11 == *MEMORY[0x277CDF9B8])
    {
      return 74.0;
    }

    if (v11 == *MEMORY[0x277CDF9D0])
    {
      return 80.0;
    }

    (*(v7 + 8))(v9, v6);
  }

  memcpy(v13, v14, sizeof(v13));
  if (sub_2703BB658(v13) == 4)
  {
    sub_2703BC05C(v13);
    return 45.0;
  }

  return 44.0;
}

unint64_t sub_27045A9B8()
{
  result = qword_2807D2F88;
  if (!qword_2807D2F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2F80);
    sub_27045AA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2F88);
  }

  return result;
}

unint64_t sub_27045AA44()
{
  result = qword_2807D2F90;
  if (!qword_2807D2F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2F78);
    sub_27045AAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2F90);
  }

  return result;
}

unint64_t sub_27045AAD0()
{
  result = qword_2807D2F98;
  if (!qword_2807D2F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2F70);
    sub_27045AB5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2F98);
  }

  return result;
}

unint64_t sub_27045AB5C()
{
  result = qword_2807D2FA0;
  if (!qword_2807D2FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2F68);
    sub_27045AC00();
    sub_27045ADA0(&qword_2807D2FC0, &qword_2807D2FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2FA0);
  }

  return result;
}

unint64_t sub_27045AC00()
{
  result = qword_2807D2FA8;
  if (!qword_2807D2FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2F58);
    sub_27045ACA4();
    sub_27045ADA0(&qword_2807D2FB8, &qword_2807D2F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2FA8);
  }

  return result;
}

unint64_t sub_27045ACA4()
{
  result = qword_2807D2FB0;
  if (!qword_2807D2FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2F50);
    sub_27045AD48();
    sub_27045ADA0(&qword_2807D2F08, &qword_2807D2F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2FB0);
  }

  return result;
}

unint64_t sub_27045AD48()
{
  result = qword_2807D0B00;
  if (!qword_2807D0B00)
  {
    sub_2705D6734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D0B00);
  }

  return result;
}

uint64_t sub_27045ADA0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_31(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x160uLL);
}

uint64_t sub_27045AE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2FD0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &__src[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2FD8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &__src[-v11];
  v14 = *(v2 + 112);
  v13 = *(v2 + 120);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2FE0);
  OUTLINED_FUNCTION_0_32();
  (*(v16 + 16))(v8, a1);
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2FE8) + 36)];
  *v17 = KeyPath;
  v17[1] = v14;
  v18 = swift_getKeyPath();
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2FF0) + 36)];
  *v19 = v18;
  v19[1] = v13;
  v20 = swift_getKeyPath();
  v21 = &v8[*(v6 + 44)];
  *v21 = v20;
  *(v21 + 1) = 0;
  v21[16] = 1;

  sub_2705D60B4();
  sub_2705D5094();
  sub_27045B0D0(v8, v12, &qword_2807D2FD0);
  memcpy(&v12[*(v10 + 44)], __src, 0x70uLL);
  sub_27045B0D0(v12, a2, &qword_2807D2FD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2FF8);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_27045B0D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_32();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_27045B130()
{
  result = qword_2807D3000;
  if (!qword_2807D3000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2FF8);
    sub_27045B1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3000);
  }

  return result;
}

unint64_t sub_27045B1BC()
{
  result = qword_2807D3008;
  if (!qword_2807D3008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2FD8);
    sub_27045B248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3008);
  }

  return result;
}

unint64_t sub_27045B248()
{
  result = qword_2807D3010;
  if (!qword_2807D3010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2FD0);
    sub_27045B300();
    sub_2703AFBC8(&qword_2807CF6A8, &qword_2807CF6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3010);
  }

  return result;
}

unint64_t sub_27045B300()
{
  result = qword_2807D3018;
  if (!qword_2807D3018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2FF0);
    sub_27045B3B8();
    sub_2703AFBC8(&qword_2807D2FC0, &qword_2807D2FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3018);
  }

  return result;
}

unint64_t sub_27045B3B8()
{
  result = qword_2807D3020;
  if (!qword_2807D3020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2FE8);
    sub_2703AFBC8(&qword_2807D3028, &qword_2807D2FE0);
    sub_2703AFBC8(&qword_2807D2F08, &qword_2807D2F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3020);
  }

  return result;
}

uint64_t sub_27045B4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_27045B59C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for InlineMessageTitleTextModifier()
{
  result = qword_2807D3030;
  if (!qword_2807D3030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27045B69C()
{
  sub_27045B710();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_27045B710()
{
  if (!qword_2807D24D8)
  {
    sub_2705D5004();
    v0 = sub_2705D4D94();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D24D8);
    }
  }
}

uint64_t sub_27045B784@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_27045BCE8(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_0_32();
    return (*(v13 + 32))(a1, v12);
  }

  else
  {
    sub_2705D7A84();
    v15 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_27045B950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v38 = a2;
  sub_2705D5004();
  OUTLINED_FUNCTION_0();
  v36 = v4;
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3040) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3048) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v34 = &v34 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3050) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = v2 + *(type metadata accessor for InlineMessageTitleTextModifier() + 20);
  v19 = *(v18 + 136);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3058);
  OUTLINED_FUNCTION_0_32();
  (*(v21 + 16))(v10, v35);
  v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3060) + 36)];
  *v22 = KeyPath;
  v22[1] = v19;
  v23 = *(v18 + 144);
  v24 = swift_getKeyPath();
  v25 = &v10[*(v7 + 44)];
  *v25 = v24;
  v25[1] = v23;

  sub_27045B784(v6);
  LOBYTE(v7) = sub_2705D4FE4();
  (*(v36 + 8))(v6, v37);
  v26 = v7 & 1;
  if (v7)
  {
    v27 = 0;
  }

  else
  {
    v27 = 2;
  }

  v28 = swift_getKeyPath();
  v29 = v10;
  v30 = v34;
  sub_27045B0D0(v29, v34, &qword_2807D3040);
  v31 = v30 + *(v11 + 44);
  *v31 = v28;
  *(v31 + 8) = v27;
  *(v31 + 16) = v26;
  sub_2705D60B4();
  sub_2705D5094();
  sub_27045B0D0(v30, v17, &qword_2807D3048);
  memcpy(&v17[*(v14 + 44)], __src, 0x70uLL);
  v32 = v38;
  sub_27045B0D0(v17, v38, &qword_2807D3050);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3068);
  *(v32 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_27045BCE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27045BD5C()
{
  result = qword_2807D3070;
  if (!qword_2807D3070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3068);
    sub_27045BDE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3070);
  }

  return result;
}

unint64_t sub_27045BDE8()
{
  result = qword_2807D3078;
  if (!qword_2807D3078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3050);
    sub_27045BE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3078);
  }

  return result;
}

unint64_t sub_27045BE74()
{
  result = qword_2807D3080;
  if (!qword_2807D3080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3048);
    sub_27045BF2C();
    sub_2703AFBC8(&qword_2807CF6A8, &qword_2807CF6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3080);
  }

  return result;
}

unint64_t sub_27045BF2C()
{
  result = qword_2807D3088;
  if (!qword_2807D3088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3040);
    sub_27045BFE4();
    sub_2703AFBC8(&qword_2807D2FC0, &qword_2807D2FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3088);
  }

  return result;
}

unint64_t sub_27045BFE4()
{
  result = qword_2807D3090;
  if (!qword_2807D3090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3060);
    sub_2703AFBC8(&qword_2807D3098, &qword_2807D3058);
    sub_2703AFBC8(&qword_2807D2F08, &qword_2807D2F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3090);
  }

  return result;
}

uint64_t sub_27045C0C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2705D6024();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_35();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30A0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  *v8 = sub_2705D53D4();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30A8);
  sub_27045C294(v2, &v8[*(v9 + 44)]);
  v10 = sub_2705D56C4();
  v11 = &v8[*(v6 + 44)];
  *v11 = v10;
  *(v11 + 8) = xmmword_2705F1AE0;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  v11[40] = 0;
  if (v2[7])
  {
    v16[1] = v2[7];
  }

  else
  {
    sub_2705D5FE4();
  }

  v12 = sub_2705D4E74();
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30B0) + 36);
  v14 = MEMORY[0x277CDF6A0];
  *(v13 + 40) = MEMORY[0x277CDF6A8];
  *(v13 + 48) = v14;
  *(v13 + 16) = v12;
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 56) = 0x4028000000000000;
  return sub_2703CF3E8(v8, a1, &qword_2807D30A0);
}

uint64_t sub_27045C294@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30B8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30C0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  *v16 = sub_2705D52B4();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30C8);
  sub_27045C56C(&v16[*(v17 + 44)]);
  v18 = sub_2705D56C4();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0x402A000000000000;
  v19[40] = 0;
  *v9 = sub_2705D53C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30D0) + 44)];
  *v20 = sub_2705D53C4();
  *(v20 + 1) = 0x4010000000000000;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30D8);
  sub_27045C7C8(a1, &v20[*(v21 + 44)]);
  LOBYTE(v11) = sub_2705D56C4();
  v22 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30E0) + 36)];
  *v22 = v11;
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  *(v22 + 24) = xmmword_2705F1AE0;
  v22[40] = 0;
  sub_2703CF590(v16, v14, &qword_2807D30C0);
  sub_2703CF590(v9, v7, &qword_2807D30B8);
  sub_2703CF590(v14, a2, &qword_2807D30C0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30E8);
  sub_2703CF590(v7, a2 + *(v23 + 48), &qword_2807D30B8);
  sub_2703C2EFC(v9, &qword_2807D30B8);
  sub_2703C2EFC(v16, &qword_2807D30C0);
  sub_2703C2EFC(v7, &qword_2807D30B8);
  return sub_2703C2EFC(v14, &qword_2807D30C0);
}

uint64_t sub_27045C56C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3108);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5;
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3110);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  sub_270464D84(&v22 - v12);
  sub_270464FB4();
  sub_2703CF590(v13, v11, &qword_2807D3110);
  v14 = *(v2 + 16);
  v14(v5, v7, v1);
  v15 = v23;
  sub_2703CF590(v11, v23, &qword_2807D3110);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3118);
  v17 = v15 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v15 + *(v16 + 64);
  v19 = v22;
  v14(v18, v22, v1);
  v20 = *(v2 + 8);
  v20(v7, v1);
  sub_2703C2EFC(v13, &qword_2807D3110);
  v20(v19, v1);
  return sub_2703C2EFC(v11, &qword_2807D3110);
}

uint64_t sub_27045C7C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  sub_27046542C(&v21[-v8]);
  if (a1[73])
  {
    v10 = a1[75];
    v24[0] = a1[74];
    v24[1] = v10;
    sub_2703C2F54();

    v11 = sub_2705D5944();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    memcpy(v22, a1 + 1, 0x98uLL);
    memcpy(&v23[4], a1 + 1, 0x98uLL);
    LOBYTE(v24[0]) = v15 & 1;
    v23[0] = v11;
    v23[1] = v13;
    LOBYTE(v23[2]) = v15 & 1;
    v23[3] = v17;
    CGSizeMake(v23, v18);
    sub_2703BFA60(v22, v24);
    memcpy(v24, v23, sizeof(v24));
  }

  else
  {
    sub_27045D4C8(v24);
  }

  sub_2703CF590(v9, v7, &qword_2807D30F0);
  memcpy(v21, v24, sizeof(v21));
  sub_2703CF590(v7, a2, &qword_2807D30F0);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30F8) + 48);
  memcpy(v22, v21, sizeof(v22));
  memcpy((a2 + v19), v21, 0xB8uLL);
  sub_2703CF590(v22, v23, &qword_2807D3100);
  sub_2703C2EFC(v9, &qword_2807D30F0);
  memcpy(v23, v21, sizeof(v23));
  sub_2703C2EFC(v23, &qword_2807D3100);
  return sub_2703C2EFC(v7, &qword_2807D30F0);
}

uint64_t sub_27045CA28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2705D6024();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_35();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3120);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  *v8 = sub_2705D52D4();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3128);
  sub_27045CC00(v2, &v8[*(v9 + 44)]);
  v10 = sub_2705D56B4();
  sub_2705D4D34();
  v11 = &v8[*(v6 + 44)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  if (v2[7])
  {
    v20[1] = v2[7];
  }

  else
  {
    sub_2705D5FE4();
  }

  v16 = sub_2705D4E74();
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3130) + 36);
  v18 = MEMORY[0x277CDF6A0];
  *(v17 + 40) = MEMORY[0x277CDF6A8];
  *(v17 + 48) = v18;
  *(v17 + 16) = v16;
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 56) = 0x4024000000000000;
  return sub_2703CF3E8(v8, a1, &qword_2807D3120);
}

uint64_t sub_27045CC00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3138);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3140);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3148);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  sub_270464D84(&v41 - v21);
  v23 = sub_2705D56F4();
  sub_2705D4D34();
  v24 = &v22[*(v17 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_2705D5F54();
  v29 = sub_2705D5724();
  sub_2705D4D34();
  v30 = &v15[*(v10 + 44)];
  v42 = v15;
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  *v8 = sub_2705D53C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v35 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3150) + 44)];
  *v35 = sub_2705D53C4();
  *(v35 + 1) = 0x4010000000000000;
  v35[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3158);
  sub_27045CFEC(a1, &v35[*(v36 + 44)]);
  LOBYTE(v10) = sub_2705D56C4();
  v37 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3160) + 36)];
  *v37 = v10;
  *(v37 + 8) = xmmword_2705F1AF0;
  *(v37 + 24) = xmmword_2705F1AF0;
  v37[40] = 0;
  v43 = v20;
  sub_2703CF590(v22, v20, &qword_2807D3148);
  sub_2703CF590(v15, v13, &qword_2807D3140);
  sub_2703CF590(v8, v6, &qword_2807D3138);
  v38 = v44;
  sub_2703CF590(v20, v44, &qword_2807D3148);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3168);
  sub_2703CF590(v13, v38 + *(v39 + 48), &qword_2807D3140);
  sub_2703CF590(v6, v38 + *(v39 + 64), &qword_2807D3138);
  sub_2703C2EFC(v8, &qword_2807D3138);
  sub_2703C2EFC(v42, &qword_2807D3140);
  sub_2703C2EFC(v22, &qword_2807D3148);
  sub_2703C2EFC(v6, &qword_2807D3138);
  sub_2703C2EFC(v13, &qword_2807D3140);
  return sub_2703C2EFC(v43, &qword_2807D3148);
}

uint64_t sub_27045CFEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3170);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  *v9 = sub_2705D52B4();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3178);
  sub_27045D278(&v9[*(v10 + 44)]);
  if (a1[73])
  {
    v11 = a1[75];
    v25[0] = a1[74];
    v25[1] = v11;
    sub_2703C2F54();

    v12 = sub_2705D5944();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    memcpy(v23, a1 + 1, 0x98uLL);
    memcpy(&v24[4], a1 + 1, 0x98uLL);
    LOBYTE(v25[0]) = v16 & 1;
    v24[0] = v12;
    v24[1] = v14;
    LOBYTE(v24[2]) = v16 & 1;
    v24[3] = v18;
    CGSizeMake(v24, v19);
    sub_2703BFA60(v23, v25);
    memcpy(v25, v24, sizeof(v25));
  }

  else
  {
    sub_27045D4C8(v25);
  }

  sub_2703CF590(v9, v7, &qword_2807D3170);
  memcpy(v22, v25, sizeof(v22));
  sub_2703CF590(v7, a2, &qword_2807D3170);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3180) + 48);
  memcpy(v23, v22, sizeof(v23));
  memcpy((a2 + v20), v22, 0xB8uLL);
  sub_2703CF590(v23, v24, &qword_2807D3100);
  sub_2703C2EFC(v9, &qword_2807D3170);
  memcpy(v24, v22, sizeof(v24));
  sub_2703C2EFC(v24, &qword_2807D3100);
  return sub_2703C2EFC(v7, &qword_2807D3170);
}

uint64_t sub_27045D278@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3108);
  v19 = *(v1 - 8);
  v2 = v19;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_27046542C(&v19 - v12);
  sub_270464FB4();
  sub_2703CF590(v13, v11, &qword_2807D30F0);
  v14 = *(v2 + 16);
  v14(v5, v7, v1);
  v15 = v20;
  sub_2703CF590(v11, v20, &qword_2807D30F0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3188);
  v14((v15 + *(v16 + 48)), v5, v1);
  v17 = *(v19 + 8);
  v17(v7, v1);
  sub_2703C2EFC(v13, &qword_2807D30F0);
  v17(v5, v1);
  return sub_2703C2EFC(v11, &qword_2807D30F0);
}

uint64_t sub_27045D4E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2705D6024();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_35();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3190);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  *v8 = sub_2705D53D4();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3198);
  sub_27045D69C(v2, &v8[*(v9 + 44)]);
  v10 = sub_2705D56C4();
  v11 = &v8[*(v6 + 44)];
  *v11 = v10;
  v12 = OUTLINED_FUNCTION_4_28(v11, xmmword_2705F1AE0);
  if (v12)
  {
    v18[1] = v12;
  }

  else
  {
    sub_2705D5FE4();
  }

  v13 = sub_2705D4E74();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31A0) + 36));
  v15 = MEMORY[0x277CDF6A0];
  v14[5] = MEMORY[0x277CDF6A8];
  v14[6] = v15;
  v14[2] = v13;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3_34(KeyPath);
  return sub_2703CF3E8(v8, a1, &qword_2807D3190);
}

uint64_t sub_27045D69C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31A8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30C0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  *v16 = sub_2705D52B4();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30C8);
  sub_27045D90C(&v16[*(v17 + 44)]);
  v18 = sub_2705D56C4();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0x402A000000000000;
  v19[40] = 0;
  *v9 = sub_2705D53C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31B0);
  sub_27045DB68(a1, &v9[*(v20 + 44)]);
  sub_2703CF590(v16, v14, &qword_2807D30C0);
  sub_2703CF590(v9, v7, &qword_2807D31A8);
  sub_2703CF590(v14, a2, &qword_2807D30C0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31B8);
  sub_2703CF590(v7, a2 + *(v21 + 48), &qword_2807D31A8);
  sub_2703C2EFC(v9, &qword_2807D31A8);
  sub_2703C2EFC(v16, &qword_2807D30C0);
  sub_2703C2EFC(v7, &qword_2807D31A8);
  return sub_2703C2EFC(v14, &qword_2807D30C0);
}

uint64_t sub_27045D90C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3108);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5;
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3110);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  sub_270464D84(&v22 - v12);
  sub_270464FB4();
  sub_2703CF590(v13, v11, &qword_2807D3110);
  v14 = *(v2 + 16);
  v14(v5, v7, v1);
  v15 = v23;
  sub_2703CF590(v11, v23, &qword_2807D3110);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3118);
  v17 = v15 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v15 + *(v16 + 64);
  v19 = v22;
  v14(v18, v22, v1);
  v20 = *(v2 + 8);
  v20(v7, v1);
  sub_2703C2EFC(v13, &qword_2807D3110);
  v20(v19, v1);
  return sub_2703C2EFC(v11, &qword_2807D3110);
}

uint64_t sub_27045DB68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30E0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  *v16 = sub_2705D53C4();
  *(v16 + 1) = 0x4010000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30D8);
  sub_27045DDD8(a1, &v16[*(v17 + 44)]);
  v18 = sub_2705D56C4();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 24) = xmmword_2705F1AE0;
  v19[40] = 0;
  *v9 = sub_2705D53C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31C8);
  sub_2704655E8(a1);
  sub_2703CF590(v16, v14, &qword_2807D30E0);
  sub_2703CF590(v9, v7, &qword_2807D31C0);
  sub_2703CF590(v14, a2, &qword_2807D30E0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31D0);
  sub_2703CF590(v7, a2 + *(v20 + 48), &qword_2807D31C0);
  sub_2703C2EFC(v9, &qword_2807D31C0);
  sub_2703C2EFC(v16, &qword_2807D30E0);
  sub_2703C2EFC(v7, &qword_2807D31C0);
  return sub_2703C2EFC(v14, &qword_2807D30E0);
}

uint64_t sub_27045DDD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  sub_27046542C(&v21[-v8]);
  if (a1[73])
  {
    v10 = a1[75];
    v24[0] = a1[74];
    v24[1] = v10;
    sub_2703C2F54();

    v11 = sub_2705D5944();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    memcpy(v22, a1 + 1, 0x98uLL);
    memcpy(&v23[4], a1 + 1, 0x98uLL);
    LOBYTE(v24[0]) = v15 & 1;
    v23[0] = v11;
    v23[1] = v13;
    LOBYTE(v23[2]) = v15 & 1;
    v23[3] = v17;
    CGSizeMake(v23, v18);
    sub_2703BFA60(v22, v24);
    memcpy(v24, v23, sizeof(v24));
  }

  else
  {
    sub_27045D4C8(v24);
  }

  sub_2703CF590(v9, v7, &qword_2807D30F0);
  memcpy(v21, v24, sizeof(v21));
  sub_2703CF590(v7, a2, &qword_2807D30F0);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30F8) + 48);
  memcpy(v22, v21, sizeof(v22));
  memcpy((a2 + v19), v21, 0xB8uLL);
  sub_2703CF590(v22, v23, &qword_2807D3100);
  sub_2703C2EFC(v9, &qword_2807D30F0);
  memcpy(v23, v21, sizeof(v23));
  sub_2703C2EFC(v23, &qword_2807D3100);
  return sub_2703C2EFC(v7, &qword_2807D30F0);
}

uint64_t sub_27045E038@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2705D6024();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_35();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31E0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  if (*(v2 + 569) == 1)
  {
    v12 = 0x4026000000000000;
    v13 = sub_2705D52B4();
  }

  else
  {
    v12 = 0x4030000000000000;
    v13 = sub_2705D52D4();
  }

  *v7 = v13;
  *(v7 + 1) = v12;
  v7[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31E8);
  sub_27045E274(v2, &v7[*(v14 + 44)]);
  v15 = sub_2705D56C4();
  sub_2703CF3E8(v7, v11, &qword_2807D31D8);
  v16 = &v11[*(v8 + 36)];
  *v16 = v15;
  v17 = OUTLINED_FUNCTION_4_28(v16, xmmword_2705F1AE0);
  if (v17)
  {
    v23[1] = v17;
  }

  else
  {
    sub_2705D5FE4();
  }

  v18 = sub_2705D4E74();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31F0) + 36));
  v20 = MEMORY[0x277CDF6A0];
  v19[5] = MEMORY[0x277CDF6A8];
  v19[6] = v20;
  v19[2] = v18;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3_34(KeyPath);
  return sub_2703CF3E8(v11, a1, &qword_2807D31E0);
}

uint64_t sub_27045E274@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31F8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3110);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_270464D84(&v19 - v14);
  *v9 = sub_2705D53C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3200);
  sub_27045E490(a1, &v9[*(v16 + 44)]);
  sub_2703CF590(v15, v13, &qword_2807D3110);
  sub_2703CF590(v9, v7, &qword_2807D31F8);
  sub_2703CF590(v13, a2, &qword_2807D3110);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3208);
  sub_2703CF590(v7, a2 + *(v17 + 48), &qword_2807D31F8);
  sub_2703C2EFC(v9, &qword_2807D31F8);
  sub_2703C2EFC(v15, &qword_2807D3110);
  sub_2703C2EFC(v7, &qword_2807D31F8);
  return sub_2703C2EFC(v13, &qword_2807D3110);
}

uint64_t sub_27045E490@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3160);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  *v16 = sub_2705D53C4();
  *(v16 + 1) = 0x4010000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3158);
  sub_27045E700(a1, &v16[*(v17 + 44)]);
  v18 = sub_2705D56C4();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 24) = xmmword_2705F1AE0;
  v19[40] = 0;
  *v9 = sub_2705D53C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31C8);
  sub_2704655E8(a1);
  sub_2703CF590(v16, v14, &qword_2807D3160);
  sub_2703CF590(v9, v7, &qword_2807D31C0);
  sub_2703CF590(v14, a2, &qword_2807D3160);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3210);
  sub_2703CF590(v7, a2 + *(v20 + 48), &qword_2807D31C0);
  sub_2703C2EFC(v9, &qword_2807D31C0);
  sub_2703C2EFC(v16, &qword_2807D3160);
  sub_2703C2EFC(v7, &qword_2807D31C0);
  return sub_2703C2EFC(v14, &qword_2807D3160);
}

uint64_t sub_27045E700@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3170);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  *v9 = sub_2705D52B4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3178);
  sub_27045E98C(&v9[*(v10 + 44)]);
  if (a1[73])
  {
    v11 = a1[75];
    v25[0] = a1[74];
    v25[1] = v11;
    sub_2703C2F54();

    v12 = sub_2705D5944();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    memcpy(v23, a1 + 1, 0x98uLL);
    memcpy(&v24[4], a1 + 1, 0x98uLL);
    LOBYTE(v25[0]) = v16 & 1;
    v24[0] = v12;
    v24[1] = v14;
    LOBYTE(v24[2]) = v16 & 1;
    v24[3] = v18;
    CGSizeMake(v24, v19);
    sub_2703BFA60(v23, v25);
    memcpy(v25, v24, sizeof(v25));
  }

  else
  {
    sub_27045D4C8(v25);
  }

  sub_2703CF590(v9, v7, &qword_2807D3170);
  memcpy(v22, v25, sizeof(v22));
  sub_2703CF590(v7, a2, &qword_2807D3170);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3180) + 48);
  memcpy(v23, v22, sizeof(v23));
  memcpy((a2 + v20), v22, 0xB8uLL);
  sub_2703CF590(v23, v24, &qword_2807D3100);
  sub_2703C2EFC(v9, &qword_2807D3170);
  memcpy(v24, v22, sizeof(v24));
  sub_2703C2EFC(v24, &qword_2807D3100);
  return sub_2703C2EFC(v7, &qword_2807D3170);
}

uint64_t sub_27045E98C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3108);
  v19 = *(v1 - 8);
  v2 = v19;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_27046542C(&v19 - v12);
  sub_270464FB4();
  sub_2703CF590(v13, v11, &qword_2807D30F0);
  v14 = *(v2 + 16);
  v14(v5, v7, v1);
  v15 = v20;
  sub_2703CF590(v11, v20, &qword_2807D30F0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3188);
  v14((v15 + *(v16 + 48)), v5, v1);
  v17 = *(v19 + 8);
  v17(v7, v1);
  sub_2703C2EFC(v13, &qword_2807D30F0);
  v17(v5, v1);
  return sub_2703C2EFC(v11, &qword_2807D30F0);
}

uint64_t OUTLINED_FUNCTION_3_34(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 56) = 0x4028000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_28@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return *(v2 + 56);
}

uint64_t sub_27045EC04()
{
  v0 = sub_2705D7564();
  v2 = v1;
  if (v0 == sub_2705D7564() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_28();
  }

  return v5 & 1;
}

uint64_t sub_27045EC7C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x8000000270612B40;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (a2)
  {
    v6 = 0x8000000270612B40;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_27045ED10()
{
  OUTLINED_FUNCTION_56_0();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2705D8134();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_27045ED8C(char a1, char a2)
{
  v2 = 1701736292;
  if (a1)
  {
    OUTLINED_FUNCTION_38_3();
    if (v3)
    {
      v5 = 0x6C65636E6163;
    }

    else
    {
      v5 = 0x65736F6C63;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1701736292;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_38_3();
    if (v7)
    {
      v2 = 0x6C65636E6163;
    }

    else
    {
      v2 = 0x65736F6C63;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_28();
  }

  return v11 & 1;
}

uint64_t sub_27045EE60()
{
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_36_5();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_53_0();
      break;
    case 2:
      OUTLINED_FUNCTION_9_23();
      break;
    case 3:
      v0 = 0xE300000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_22_9();
      break;
    case 5:
      v0 = 0xEA0000000000676ELL;
      break;
    case 6:
      v0 = 0xEB00000000676E69;
      break;
    case 7:
      OUTLINED_FUNCTION_22_9();
      OUTLINED_FUNCTION_66_0();
      break;
    case 8:
      OUTLINED_FUNCTION_22_9();
      OUTLINED_FUNCTION_62_1();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_34_6();
  switch(v5)
  {
    case 1:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_19_7();
      break;
    case 2:
      OUTLINED_FUNCTION_13_17();
      break;
    case 3:
      v1 = 0xE300000000000000;
      v4 = 7368564;
      break;
    case 4:
      OUTLINED_FUNCTION_17_12();
      break;
    case 5:
      v4 = 0x696461654C706F74;
      v1 = 0xEA0000000000676ELL;
      break;
    case 6:
      v4 = 0x6C69617254706F74;
      v1 = 0xEB00000000676E69;
      break;
    case 7:
      OUTLINED_FUNCTION_17_12();
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x654C000000000000;
      v1 = 0xED0000676E696461;
      break;
    case 8:
      OUTLINED_FUNCTION_17_12();
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0x7254000000000000;
      v1 = 0xEE00676E696C6961;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_28();
  }

  return v9 & 1;
}

uint64_t sub_27045F068()
{
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_36_5();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_53_0();
      break;
    case 2:
      OUTLINED_FUNCTION_9_23();
      break;
    case 3:
      v0 = 0x8000000270613040;
      break;
    case 4:
      v0 = 0x8000000270613060;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_34_6();
  switch(v7)
  {
    case 1:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_19_7();
      break;
    case 2:
      OUTLINED_FUNCTION_13_17();
      break;
    case 3:
      v4 = 0xD000000000000017;
      v1 = (v6 - 32) | 0x8000000000000000;
      break;
    case 4:
      v1 = (v5 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_28();
  }

  return v9 & 1;
}

uint64_t sub_27045F1B8()
{
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_36_5();
  switch(v2)
  {
    case 1:
      v0 = 0xE300000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_22_9();
      break;
    case 3:
      v0 = 0x8000000270613000;
      break;
    case 4:
      v0 = 0x8000000270613020;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_34_6();
  switch(v7)
  {
    case 1:
      v1 = 0xE300000000000000;
      v4 = 7368564;
      break;
    case 2:
      OUTLINED_FUNCTION_17_12();
      break;
    case 3:
      v1 = (v6 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000011;
      break;
    case 4:
      v4 = 0xD000000000000010;
      v1 = (v5 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_28();
  }

  return v9 & 1;
}

uint64_t sub_27045F314(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000004449;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_56_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_27045F3A4(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_56_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_27045F448()
{
  OUTLINED_FUNCTION_73();
  v2 = 0x746974656772616CLL;
  v4 = v3;
  v5 = 0x746974656772616CLL;
  v6 = 0xEA0000000000656CLL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_31_6() & 0xFFFF0000FFFFFFFFLL | 0x316500000000;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_31_6() & 0xFFFF0000FFFFFFFFLL | 0x326500000000;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_31_6() & 0xFFFF0000FFFFFFFFLL | 0x336500000000;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_70_0();
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_68();
      v6 = 0xEB00000000656E69;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v5 = 2036625250;
      break;
    case 7:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_69_0();
      break;
    case 8:
      v6 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_67_0();
      break;
    case 9:
      v6 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_10_21() & 0xFFFFFFFFFFFFLL | 0x316E000000000000;
      break;
    case 10:
      v6 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_10_21() & 0xFFFFFFFFFFFFLL | 0x326E000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE600000000000000;
      OUTLINED_FUNCTION_26_9();
      v2 = v7 & 0xFFFF0000FFFFFFFFLL | 0x316500000000;
      break;
    case 2:
      v0 = 0xE600000000000000;
      OUTLINED_FUNCTION_26_9();
      v2 = v9 & 0xFFFF0000FFFFFFFFLL | 0x326500000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      OUTLINED_FUNCTION_26_9();
      v2 = v10 & 0xFFFF0000FFFFFFFFLL | 0x336500000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_65_0();
      break;
    case 5:
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_21_11();
      break;
    case 6:
      v0 = 0xE400000000000000;
      v2 = 2036625250;
      break;
    case 7:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_64_0();
      break;
    case 8:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_59_1();
      break;
    case 9:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_7_21();
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x316E000000000000;
      break;
    case 10:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_7_21();
      v2 = v11 & 0xFFFFFFFFFFFFLL | 0x326E000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_16_12();
  }

  return v13 & 1;
}

uint64_t sub_27045F67C()
{
  OUTLINED_FUNCTION_58_1();
  v3 = v2 | 0x67696C6100000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xEA00000000007468;
  switch(v5)
  {
    case 1:
      v7 = 0xE400000000000000;
      v6 = 1852401780;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_88_0();
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_44_1();
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_60_1();
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_57_0();
      break;
    case 6:
      v7 = 0xE400000000000000;
      v6 = 1684828002;
      break;
    case 7:
      v6 = OUTLINED_FUNCTION_86_0();
      break;
    case 8:
      v6 = OUTLINED_FUNCTION_87_0();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE400000000000000;
      v3 = 1852401780;
      break;
    case 2:
      OUTLINED_FUNCTION_79_0();
      break;
    case 3:
      OUTLINED_FUNCTION_51_1();
      break;
    case 4:
      OUTLINED_FUNCTION_72();
      break;
    case 5:
      OUTLINED_FUNCTION_47_1();
      break;
    case 6:
      v0 = 0xE400000000000000;
      v3 = 1684828002;
      break;
    case 7:
      OUTLINED_FUNCTION_75();
      break;
    case 8:
      OUTLINED_FUNCTION_78_0();
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_16_12();
  }

  return v9 & 1;
}

uint64_t sub_27045F810()
{
  OUTLINED_FUNCTION_50_1();
  switch(v2)
  {
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 3:
      v0 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_2();
  switch(v5)
  {
    case 1:
      v4 = 0x6465646E756F72;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v4 = 0x6669726573;
      break;
    case 3:
      v4 = 0x636170736F6E6F6DLL;
      v1 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_28();
  }

  return v7 & 1;
}

uint64_t sub_27045F960()
{
  OUTLINED_FUNCTION_36_5();
  switch(v2)
  {
    case 1:
      v0 = 0xEC00000074657070;
      break;
    case 2:
      v0 = 0xE700000000000000;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_34_6();
  switch(v5)
  {
    case 1:
      v4 = 0x696E53726566666FLL;
      v1 = 0xEC00000074657070;
      break;
    case 2:
      v1 = 0xE700000000000000;
      v4 = 0x7265766F706F70;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v4 = 0x7465656873;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_28();
  }

  return v7 & 1;
}

uint64_t sub_27045FABC()
{
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_50_1();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_9_23();
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v3 = 7957614;
      goto LABEL_6;
    case 4:
      v3 = 6581877;
LABEL_6:
      v0 = v3 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v0 = 0xEC0000006E656577;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_2();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_13_17();
      break;
    case 2:
      v1 = 0xE600000000000000;
      OUTLINED_FUNCTION_12_18();
      break;
    case 3:
      v5 = 0x6576456563617073;
      v7 = 7957614;
      goto LABEL_13;
    case 4:
      v5 = 0x6F72416563617073;
      v7 = 6581877;
LABEL_13:
      v1 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v5 = 0x7465426563617073;
      v1 = 0xEC0000006E656577;
      break;
    default:
      break;
  }

  if (v4 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_28();
  }

  return v9 & 1;
}

uint64_t sub_27045FC70()
{
  OUTLINED_FUNCTION_12_18();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x676E696461656CLL;
    }

    else
    {
      v4 = 0x676E696C69617274;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x676E696461656CLL;
    }

    else
    {
      v2 = 0x676E696C69617274;
    }

    if (v1 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_27045FD54(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6863727550657270;
  }

  else
  {
    v3 = 0x6573616863727570;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB00000000657361;
  }

  if (a2)
  {
    v5 = 0x6863727550657270;
  }

  else
  {
    v5 = 0x6573616863727570;
  }

  if (a2)
  {
    v6 = 0xEB00000000657361;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2705D8134();
  }

  return v8 & 1;
}

uint64_t sub_27045FE14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_28();
  }

  return v10 & 1;
}

uint64_t sub_27045FE98()
{
  OUTLINED_FUNCTION_50_1();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_81();
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_2();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_85_0();
      break;
    case 2:
      v1 = 0xE600000000000000;
      v4 = 0x6C6F626D7973;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v4 = 0x6D6574737973;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v4 = 0x6B72616D64726F77;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_28();
  }

  return v7 & 1;
}

uint64_t sub_27045FFF8()
{
  OUTLINED_FUNCTION_36_5();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_81();
      break;
    case 2:
      v0 = 0xEB00000000747265;
      break;
    case 3:
      v0 = 0xEB00000000746E65;
      break;
    case 4:
      v0 = 0x8000000270612F30;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_34_6();
  switch(v7)
  {
    case 1:
      OUTLINED_FUNCTION_85_0();
      break;
    case 2:
      v4 = 0x6C416D6574737973;
      v1 = v5 + 1024;
      break;
    case 3:
      v4 = 0x726170736E617274;
      v1 = 0xEB00000000746E65;
      break;
    case 4:
      v4 = 0xD000000000000019;
      v1 = (v6 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_28();
  }

  return v9 & 1;
}

uint64_t sub_270460180(unsigned __int8 a1, char a2)
{
  v2 = 0x6369706F74;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6D796E6F6E417369;
    }

    else
    {
      v4 = 0x4F7363697274656DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEB0000000073756FLL;
    }

    else
    {
      v5 = 0xEE0079616C726576;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x6369706F74;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6D796E6F6E417369;
    }

    else
    {
      v2 = 0x4F7363697274656DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEB0000000073756FLL;
    }

    else
    {
      v6 = 0xEE0079616C726576;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_270460294(unsigned __int8 a1, char a2)
{
  v2 = 5459785;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 5459785;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x534F64615049;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x534F63614DLL;
      break;
    case 3:
      v5 = 0x4F7654656C707041;
      v3 = 0xE900000000000053;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x534F6E6F69736956;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x534F6863746157;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_20_9();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x534F64615049;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x534F63614DLL;
      break;
    case 3:
      v2 = 0x4F7654656C707041;
      v6 = 0xE900000000000053;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x534F6E6F69736956;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x534F6863746157;
      break;
    case 6:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_25_10();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_270460478()
{
  OUTLINED_FUNCTION_50_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE600000000000000;
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_5_32();
      break;
    case 5:
      v0 = 0xE500000000000000;
      break;
    case 6:
      OUTLINED_FUNCTION_20_9();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_43_2();
  switch(v5)
  {
    case 1:
      v1 = 0xE600000000000000;
      v4 = 0x656E6F687049;
      break;
    case 2:
      v1 = 0xE400000000000000;
      v4 = 1684107337;
      break;
    case 3:
      v4 = 0x7654656C707041;
      break;
    case 4:
      OUTLINED_FUNCTION_33_6();
      break;
    case 5:
      v1 = 0xE500000000000000;
      v4 = 0x6863746157;
      break;
    case 6:
      OUTLINED_FUNCTION_25_10();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_28();
  }

  return v7 & 1;
}

uint64_t sub_270460624(unsigned __int8 a1, char a2)
{
  v2 = 6513005;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6513005;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x656E6F687069;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1684107369;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x7674656C707061;
      break;
    case 4:
      OUTLINED_FUNCTION_5_32();
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_20_9();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x656E6F687069;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1684107369;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x7674656C707061;
      break;
    case 4:
      OUTLINED_FUNCTION_33_6();
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    case 6:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_25_10();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_2704607E4(char a1, char a2)
{
  v2 = 0x6C6C616D73;
  if (a1)
  {
    OUTLINED_FUNCTION_38_3();
    if (v3)
    {
      v5 = 0x6D756964656DLL;
    }

    else
    {
      v5 = 0x656772616CLL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x6C6C616D73;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_38_3();
    if (v7)
    {
      v2 = 0x6D756964656DLL;
    }

    else
    {
      v2 = 0x656772616CLL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_28();
  }

  return v11 & 1;
}

uint64_t sub_2704608B8()
{
  OUTLINED_FUNCTION_58_1();
  v3 = v2 | 0x67694C6100000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xEA00000000007468;
  switch(v5)
  {
    case 1:
      v7 = 0xE400000000000000;
      v6 = 1852401780;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_88_0();
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_44_1();
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_60_1();
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_57_0();
      break;
    case 6:
      v7 = 0xE400000000000000;
      v6 = 1684828002;
      break;
    case 7:
      v6 = OUTLINED_FUNCTION_86_0();
      break;
    case 8:
      v6 = OUTLINED_FUNCTION_87_0();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE400000000000000;
      v3 = 1852401780;
      break;
    case 2:
      OUTLINED_FUNCTION_79_0();
      break;
    case 3:
      OUTLINED_FUNCTION_51_1();
      break;
    case 4:
      OUTLINED_FUNCTION_72();
      break;
    case 5:
      OUTLINED_FUNCTION_47_1();
      break;
    case 6:
      v0 = 0xE400000000000000;
      v3 = 1684828002;
      break;
    case 7:
      OUTLINED_FUNCTION_75();
      break;
    case 8:
      OUTLINED_FUNCTION_78_0();
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_16_12();
  }

  return v9 & 1;
}

uint64_t sub_270460A4C(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000079;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_56_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_270460AE0()
{
  OUTLINED_FUNCTION_32_3();
  if (v6)
  {
    v4 = v2;
    v5 = 0xE900000000000064;
  }

  else
  {
    if (v3 == 1)
    {
      v4 = 1819044208;
    }

    else
    {
      v4 = 1954047348;
    }

    v5 = 0xE400000000000000;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1819044208;
    }

    else
    {
      v2 = 1954047348;
    }

    v0 = 0xE400000000000000;
  }

  v6 = v4 == v2 && v5 == v0;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_16_12();
  }

  return v7 & 1;
}

uint64_t sub_270460B9C()
{
  OUTLINED_FUNCTION_56_0();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2705D8134();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_270460C08(char a1, char a2)
{
  v3 = 0xE100000000000000;
  v4 = 65;
  switch(a1)
  {
    case 1:
      v4 = 66;
      break;
    case 2:
      v4 = 67;
      break;
    case 3:
      v4 = 0x72614D7465656873;
      v5 = 7235943;
      goto LABEL_6;
    case 4:
      v4 = 0x746F427465656873;
      v5 = 7171956;
LABEL_6:
      v3 = v5 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE100000000000000;
  v7 = 65;
  switch(a2)
  {
    case 1:
      v7 = 66;
      break;
    case 2:
      v7 = 67;
      break;
    case 3:
      v7 = 0x72614D7465656873;
      v8 = 7235943;
      goto LABEL_12;
    case 4:
      v7 = 0x746F427465656873;
      v8 = 7171956;
LABEL_12:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_28();
  }

  return v10 & 1;
}

uint64_t sub_270460D70(char a1, char a2)
{
  if (*&aKind_16[8 * a1] == *&aKind_16[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2705D8134();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_270460DD8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1954047348;
  }

  else
  {
    v3 = 0x646E696B5FLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1954047348;
  }

  else
  {
    v5 = 0x646E696B5FLL;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_270460E60()
{
  OUTLINED_FUNCTION_50_1();
  switch(v2)
  {
    case 1:
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xE300000000000000;
      break;
    default:
      v0 = 0x8000000270612B40;
      break;
  }

  OUTLINED_FUNCTION_43_2();
  switch(v6)
  {
    case 1:
      break;
    case 2:
      v1 = 0xE600000000000000;
      v4 = 0x746867696568;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v4 = 0x6874646977;
      break;
    case 4:
      v1 = 0xE300000000000000;
      v4 = 7107189;
      break;
    default:
      v4 = 0xD000000000000011;
      v1 = (v5 - 32) | 0x8000000000000000;
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_28();
  }

  return v8 & 1;
}

uint64_t sub_270460FD0(char a1, char a2)
{
  v2 = 0xEC00000064616F6CLL;
  v3 = 0x7961506C6562616CLL;
  if (a1)
  {
    OUTLINED_FUNCTION_15_17();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x7961506C6562616CLL;
    v10 = 0xEC00000064616F6CLL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_17();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_16_12();
  }

  return v18 & 1;
}

uint64_t sub_270461094()
{
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_36_5();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      break;
    case 2:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_31_6();
      break;
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_31_6();
      break;
    case 6:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_70_0();
      break;
    case 7:
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_21_11();
      break;
    case 8:
      v0 = 0xE400000000000000;
      break;
    case 9:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_69_0();
      break;
    case 10:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_67_0();
      break;
    case 11:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_10_21();
      break;
    case 12:
    case 13:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_10_21();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_34_6();
  switch(v5)
  {
    case 1:
      v4 = 0x746954656772616CLL;
      v1 = 0xEA0000000000656CLL;
      break;
    case 2:
      v1 = 0xE500000000000000;
      OUTLINED_FUNCTION_26_9();
      v4 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 3:
      OUTLINED_FUNCTION_26_9();
      v4 = v10 & 0xFFFF0000FFFFFFFFLL | 0x316500000000;
      break;
    case 4:
      OUTLINED_FUNCTION_26_9();
      v4 = v7 & 0xFFFF0000FFFFFFFFLL | 0x326500000000;
      break;
    case 5:
      OUTLINED_FUNCTION_26_9();
      v4 = v11 & 0xFFFF0000FFFFFFFFLL | 0x336500000000;
      break;
    case 6:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_65_0();
      break;
    case 7:
      OUTLINED_FUNCTION_61_1();
      v1 = 0xEB00000000656E69;
      break;
    case 8:
      v1 = 0xE400000000000000;
      v4 = 2036625250;
      break;
    case 9:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_64_0();
      break;
    case 10:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_59_1();
      break;
    case 11:
      v1 = 0xE700000000000000;
      OUTLINED_FUNCTION_7_21();
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
      break;
    case 12:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_7_21();
      v4 = v8 & 0xFFFFFFFFFFFFLL | 0x316E000000000000;
      break;
    case 13:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_7_21();
      v4 = v12 & 0xFFFFFFFFFFFFLL | 0x326E000000000000;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_2_28();
  }

  return v14 & 1;
}

uint64_t sub_27046132C()
{
  OUTLINED_FUNCTION_32_3();
  if (v6)
  {
    v4 = v2;
    v5 = 0xE900000000000064;
  }

  else
  {
    if (v3 == 1)
    {
      v4 = 0x7974706D65;
    }

    else
    {
      v4 = 1819044208;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x7974706D65;
    }

    else
    {
      v2 = 1819044208;
    }

    if (v1 == 1)
    {
      v0 = 0xE500000000000000;
    }

    else
    {
      v0 = 0xE400000000000000;
    }
  }

  v6 = v4 == v2 && v5 == v0;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_16_12();
  }

  return v7 & 1;
}

uint64_t sub_2704613F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_3();
  }

  else
  {
    return sub_2705D8134();
  }
}

uint64_t sub_270461408()
{
  sub_2705D7634();
}

uint64_t sub_270461474()
{
  sub_2705D7634();
}

uint64_t sub_2704614CC(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_38_3();
  }

  sub_2705D7634();
}

uint64_t sub_270461544()
{
  OUTLINED_FUNCTION_1_36();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_21();
      break;
    case 2:
      OUTLINED_FUNCTION_8_25();
      break;
    case 4:
      OUTLINED_FUNCTION_24_12();
      break;
    case 7:
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_24_12();
      break;
    case 8:
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_24_12();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_27046164C()
{
  OUTLINED_FUNCTION_1_36();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_11_21();
      break;
    case 2:
      OUTLINED_FUNCTION_8_25();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_39_3();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_270461704()
{
  OUTLINED_FUNCTION_1_36();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_24_12();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_39_3();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_2704617C4()
{
  sub_2705D7634();
}

uint64_t sub_270461830()
{
  sub_2705D7634();
}

uint64_t sub_2704618B0()
{
  OUTLINED_FUNCTION_73();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_23_10();
      break;
    case 4:
      OUTLINED_FUNCTION_45_2();
      break;
    case 5:
      OUTLINED_FUNCTION_21_11();
      OUTLINED_FUNCTION_63_0();
      break;
    case 6:
      OUTLINED_FUNCTION_74_0();
      break;
    case 7:
      OUTLINED_FUNCTION_52_0();
      break;
    case 8:
      OUTLINED_FUNCTION_46_3();
      break;
    case 9:
    case 10:
      OUTLINED_FUNCTION_4_29();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_2704619B8()
{
  OUTLINED_FUNCTION_54_1();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_82_0();
      break;
    case 3:
      OUTLINED_FUNCTION_49_2();
      break;
    case 4:
      OUTLINED_FUNCTION_71_0();
      break;
    case 5:
      OUTLINED_FUNCTION_48_0();
      break;
    case 6:
      OUTLINED_FUNCTION_74_0();
      break;
    case 7:
      OUTLINED_FUNCTION_76();
      break;
    case 8:
      OUTLINED_FUNCTION_80_0();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_270461A8C()
{
  OUTLINED_FUNCTION_55_0();
  sub_2705D7634();
}

uint64_t sub_270461B4C()
{
  sub_2705D7634();
}

uint64_t sub_270461C14()
{
  OUTLINED_FUNCTION_11_21();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_8_25();
      break;
    case 2:
      OUTLINED_FUNCTION_1_36();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_270461CFC(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_36();
  }

  sub_2705D7634();
}

uint64_t sub_270461D78()
{
  sub_2705D7634();
}

uint64_t sub_270461E04(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_2705D7634();
}

uint64_t sub_270461E5C()
{
  OUTLINED_FUNCTION_55_0();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_77_0();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_270461F24(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_77_0();
      break;
    case 4:
      OUTLINED_FUNCTION_39_3();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_270462008()
{
  sub_2705D7634();
}

uint64_t sub_2704620D4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 6:
      OUTLINED_FUNCTION_18_9();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_2704621D8()
{
  OUTLINED_FUNCTION_55_0();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_5_32();
      break;
    case 6:
      OUTLINED_FUNCTION_18_9();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_2704622CC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_5_32();
      break;
    case 6:
      OUTLINED_FUNCTION_18_9();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_2704623C4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_38_3();
  }

  sub_2705D7634();
}

uint64_t sub_270462440()
{
  OUTLINED_FUNCTION_54_1();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_82_0();
      break;
    case 3:
      OUTLINED_FUNCTION_49_2();
      break;
    case 4:
      OUTLINED_FUNCTION_71_0();
      break;
    case 5:
      OUTLINED_FUNCTION_48_0();
      break;
    case 6:
      OUTLINED_FUNCTION_74_0();
      break;
    case 7:
      OUTLINED_FUNCTION_76();
      break;
    case 8:
      OUTLINED_FUNCTION_80_0();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_270462514()
{
  sub_2705D7634();
}

uint64_t sub_270462584(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_37_3();
  }

  sub_2705D7634();
}

uint64_t sub_27046262C()
{
  sub_2705D7634();
}

uint64_t sub_2704626CC()
{
  sub_2705D7634();
}

uint64_t sub_270462794()
{
  sub_2705D7634();
}

uint64_t sub_2704627D4()
{
  sub_2705D7634();
}

uint64_t sub_270462834()
{
  OUTLINED_FUNCTION_55_0();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_39_3();
      break;
  }

  sub_2705D7634();
}

uint64_t sub_270462904()
{
  sub_2705D7634();
}

uint64_t sub_2704629A8()
{
  OUTLINED_FUNCTION_23_10();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      break;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_27_6();
      break;
    case 6:
      OUTLINED_FUNCTION_45_2();
      break;
    case 7:
      OUTLINED_FUNCTION_21_11();
      OUTLINED_FUNCTION_63_0();
      break;
    case 8:
      OUTLINED_FUNCTION_74_0();
      break;
    case 9:
      OUTLINED_FUNCTION_52_0();
      break;
    case 10:
      OUTLINED_FUNCTION_46_3();
      break;
    case 12:
    case 13:
      OUTLINED_FUNCTION_4_29();
      break;
    default:
      break;
  }

  sub_2705D7634();
}

uint64_t sub_270462AF4(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_37_3();
  }

  sub_2705D7634();
}

UnifiedMessagingKit::OfferSnippetIntent_optional __swiftcall OfferSnippetIntent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2705D7EB4();

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

uint64_t OfferSnippetIntent.rawValue.getter()
{
  if (*v0)
  {
    return 0x6863727550657270;
  }

  else
  {
    return 0x6573616863727570;
  }
}

uint64_t sub_270462C4C@<X0>(uint64_t *a1@<X8>)
{
  result = OfferSnippetIntent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OfferSnippetRequest.customerEngagementId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OfferSnippetRequest.customerEngagementId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OfferSnippetRequest.pageMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_270462DF8(v2, v3);
}

uint64_t sub_270462DF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 OfferSnippetRequest.pageMetadata.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_270462E84(v1[3], v1[4]);
  result = v4;
  *(v1 + 3) = v4;
  v1[5] = v2;
  return result;
}

uint64_t sub_270462E84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void __swiftcall OfferSnippetRequest.init(customerEngagementId:intent:pageMetadata:)(UnifiedMessagingKit::OfferSnippetRequest *__return_ptr retstr, Swift::String customerEngagementId, UnifiedMessagingKit::OfferSnippetIntent intent, UnifiedMessagingKit::PageMetadata_optional pageMetadata)
{
  v5 = *intent;
  v9 = *pageMetadata.value.page._countAndFlagsBits;
  v6 = *(pageMetadata.value.page._countAndFlagsBits + 16);
  retstr->customerEngagementId = customerEngagementId;
  retstr->intent = v5;
  v7 = OUTLINED_FUNCTION_6_26();
  sub_270462E84(v7, v8);
  *(&retstr->pageMetadata.value.page + 7) = v9;
  *(&retstr->pageMetadata.value.content._rawValue + 7) = v6;
}

BOOL static OfferSnippetRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v10 && (sub_2705D8134() & 1) == 0 || (sub_27045FD54(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v8)
    {
      v11 = v3 == v7 && v4 == v8;
      if (v11 || (OUTLINED_FUNCTION_64(), (sub_2705D8134() & 1) != 0))
      {
        v12 = sub_270463AD0(v5, v9);
        v13 = OUTLINED_FUNCTION_0_33();
        sub_270462DF8(v13, v14);
        v15 = OUTLINED_FUNCTION_3_35();
        sub_270462DF8(v15, v16);
        v17 = OUTLINED_FUNCTION_0_33();
        sub_270462DF8(v17, v18);
        v19 = OUTLINED_FUNCTION_3_35();
        sub_270462E84(v19, v20);

        v21 = OUTLINED_FUNCTION_0_33();
        sub_270462E84(v21, v22);
        return (v12 & 1) != 0;
      }

      v34 = OUTLINED_FUNCTION_0_33();
      sub_270462DF8(v34, v35);
      v36 = OUTLINED_FUNCTION_3_35();
      sub_270462DF8(v36, v37);
      v38 = OUTLINED_FUNCTION_0_33();
      sub_270462DF8(v38, v39);
      v40 = OUTLINED_FUNCTION_3_35();
      sub_270462E84(v40, v41);

      v31 = OUTLINED_FUNCTION_0_33();
LABEL_20:
      sub_270462E84(v31, v32);
      return 0;
    }

    v25 = OUTLINED_FUNCTION_0_33();
    sub_270462DF8(v25, v26);
    sub_270462DF8(v7, 0);
    v27 = OUTLINED_FUNCTION_0_33();
    sub_270462DF8(v27, v28);

LABEL_19:
    v29 = OUTLINED_FUNCTION_0_33();
    sub_270462E84(v29, v30);
    v31 = OUTLINED_FUNCTION_3_35();
    goto LABEL_20;
  }

  sub_270462DF8(v3, 0);
  if (v8)
  {
    v23 = OUTLINED_FUNCTION_3_35();
    sub_270462DF8(v23, v24);
    goto LABEL_19;
  }

  sub_270462DF8(v7, 0);
  sub_270462E84(v3, 0);
  return 1;
}

uint64_t sub_270463104(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000270612DC0 == a2;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6174654D65676170 && a2 == 0xEC00000061746164)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_27046321C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0x746E65746E69;
  }

  return 0x6174654D65676170;
}

uint64_t sub_270463284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270463104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704632AC(uint64_t a1)
{
  v2 = sub_270463C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704632E8(uint64_t a1)
{
  v2 = sub_270463C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfferSnippetRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3218);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v23 = *(v1 + 16);
  v9 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = v9;
  v16 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270463C30();
  sub_2705D84C4();
  LOBYTE(v20) = 0;
  v10 = v19;
  sub_2705D8034();
  if (!v10)
  {
    v12 = v16;
    v11 = v17;
    v13 = v18;
    LOBYTE(v20) = v23;
    v24 = 1;
    sub_270463C84();
    OUTLINED_FUNCTION_42_2();
    sub_2705D8084();
    v20 = v13;
    v21 = v11;
    v22 = v12;
    v24 = 2;
    sub_270462DF8(v13, v11);
    sub_270463CD8();
    OUTLINED_FUNCTION_42_2();
    sub_2705D8024();
    sub_270462E84(v20, v21);
  }

  return (*(v5 + 8))(v8, v3);
}

void OfferSnippetRequest.hash(into:)()
{
  v1 = *(v0 + 32);
  sub_2705D7634();
  sub_2705D7634();

  if (v1)
  {
    sub_2705D83D4();
    sub_2705D7634();

    sub_270464040();
  }

  else
  {
    sub_2705D83D4();
  }
}

uint64_t OfferSnippetRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_2705D83B4();
  sub_2705D7634();
  sub_2705D7634();

  sub_2705D83D4();
  if (v1)
  {
    sub_2705D7634();
    sub_270464040();
  }

  return sub_2705D8414();
}

uint64_t OfferSnippetRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3238);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270463C30();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14 = OUTLINED_FUNCTION_6_26();
  }

  else
  {
    LOBYTE(v16) = 0;
    v7 = sub_2705D7F54();
    v9 = v8;
    sub_270464160();
    OUTLINED_FUNCTION_35_4();
    sub_2705D7FA4();
    sub_2704641B4();
    OUTLINED_FUNCTION_35_4();
    sub_2705D7F44();
    v10 = OUTLINED_FUNCTION_89_0();
    v11(v10);
    v12 = OUTLINED_FUNCTION_6_26();
    sub_270462E84(v12, v13);
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;

    sub_270462DF8(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v14 = v16;
    v15 = v17;
  }

  return sub_270462E84(v14, v15);
}

uint64_t sub_270463950()
{
  sub_2705D83B4();
  OfferSnippetRequest.hash(into:)();
  return sub_2705D8414();
}

uint64_t sub_2704639E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v12 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = a1 + 48;
      do
      {
        v5 = *(v3 - 2);
        v6 = *(v3 - 1);
        v7 = *v3;
        v8 = OUTLINED_FUNCTION_40_4();
        sub_2703AE9FC(v8, v9, v10);
        sub_2703AE9FC(v5, v6, v7);
        v11 = OUTLINED_FUNCTION_40_4();
        v12 = sub_27046AD04(v11);
        sub_2703AE630(v5, v6, v7);
        v13 = OUTLINED_FUNCTION_40_4();
        sub_2703AE630(v13, v14, v15);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v3 += 24;
        v4 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_270463AD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 8)
    {
      v5 = *i;
      v6 = i[1];
      v7 = i[3];
      v20 = i[2];
      v21 = i[5];
      v8 = *v3;
      v9 = v3[1];
      v10 = v3[3];
      v18 = i[4];
      v19 = v3[2];
      v11 = *(i - 2) == *(v3 - 2) && *(i - 1) == *(v3 - 1);
      v12 = v3[5];
      v17 = v3[4];
      if (!v11 && (sub_2705D8134() & 1) == 0)
      {
        break;
      }

      v13 = v5 == v8 && v6 == v9;
      if (!v13 && (sub_2705D8134() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v10)
        {
          return 0;
        }

        v14 = v20 == v19 && v7 == v10;
        if (!v14 && (sub_2705D8134() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v21)
      {
        if (!v12)
        {
          return 0;
        }

        v15 = v18 == v17 && v21 == v12;
        if (!v15 && (sub_2705D8134() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v12)
      {
        return 0;
      }

      v3 += 8;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_270463C30()
{
  result = qword_2807D3220;
  if (!qword_2807D3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3220);
  }

  return result;
}

unint64_t sub_270463C84()
{
  result = qword_2807D3228;
  if (!qword_2807D3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3228);
  }

  return result;
}

unint64_t sub_270463CD8()
{
  result = qword_2807D3230;
  if (!qword_2807D3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3230);
  }

  return result;
}

uint64_t sub_270463D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_2705D8134() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_2705D8134() & 1) == 0)
      {
        break;
      }

      if (v6 != v10 || v7 != v11)
      {
        OUTLINED_FUNCTION_30_6();
        if ((sub_2705D8134() & 1) == 0)
        {
          break;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_270463E44()
{
  OUTLINED_FUNCTION_90();
  if (v0)
  {
    v2 = (v1 + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *v2;
      v2 += 24;
      switch(v4)
      {
        case 1:
          v15 = 2;
          goto LABEL_28;
        case 2:
          v12 = 3;
          goto LABEL_18;
        case 3:
          v14 = 4;
          goto LABEL_34;
        case 4:
          v10 = 5;
          goto LABEL_11;
        case 5:
          v17 = 6;
          goto LABEL_31;
        case 6:
          v15 = 7;
LABEL_28:
          MEMORY[0x2743A47E0](v15);
          v16 = v3;
          goto LABEL_29;
        case 7:
          v12 = 8;
LABEL_18:
          MEMORY[0x2743A47E0](v12);
          goto LABEL_19;
        case 8:
          v14 = 9;
LABEL_34:
          MEMORY[0x2743A47E0](v14);
          sub_2705D83E4();
          break;
        case 9:
          v10 = 10;
LABEL_11:
          MEMORY[0x2743A47E0](v10);
          goto LABEL_12;
        case 10:
          v17 = 11;
LABEL_31:
          MEMORY[0x2743A47E0](v17);
          v18 = v3;
          goto LABEL_32;
        case 11:
          MEMORY[0x2743A47E0](12);
LABEL_12:
          sub_2705D83F4();
          break;
        case 12:
          v11 = 13;
          goto LABEL_24;
        case 13:
          v11 = 14;
LABEL_24:
          MEMORY[0x2743A47E0](v11);
          if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v18 = v3;
          }

          else
          {
            v18 = 0;
          }

LABEL_32:
          MEMORY[0x2743A4820](v18);
          break;
        case 14:
          MEMORY[0x2743A47E0](15);

          OUTLINED_FUNCTION_64();
          sub_2705D7634();
          v7 = OUTLINED_FUNCTION_30_6();
          v9 = 14;
          goto LABEL_15;
        case 15:
          MEMORY[0x2743A47E0](16);

          v13 = OUTLINED_FUNCTION_64();
          sub_270463E44(v13);
          v7 = OUTLINED_FUNCTION_30_6();
          v9 = 15;
          goto LABEL_15;
        case 16:
          MEMORY[0x2743A47E0](17);

          v5 = OUTLINED_FUNCTION_64();
          sub_27046C150(v5, v6);
          v7 = OUTLINED_FUNCTION_30_6();
          v9 = 16;
LABEL_15:
          sub_2703AE630(v7, v8, v9);
          break;
        case 17:
          v16 = 0;
LABEL_29:
          MEMORY[0x2743A47E0](v16);
          break;
        default:
          MEMORY[0x2743A47E0](1);
LABEL_19:
          sub_2705D83D4();
          break;
      }

      --v0;
    }

    while (v0);
  }
}

void sub_270464040()
{
  OUTLINED_FUNCTION_90();
  if (v0)
  {
    v2 = v1 + 48;
    do
    {
      v3 = *(v2 + 24);
      v4 = *(v2 + 40);

      sub_2705D7634();
      sub_2705D7634();
      if (v3)
      {
        sub_2705D83D4();
        sub_2705D7634();
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_2705D83D4();
        if (!v4)
        {
LABEL_7:
          sub_2705D83D4();
          goto LABEL_8;
        }
      }

      sub_2705D83D4();
      sub_2705D7634();
LABEL_8:

      v2 += 64;
      --v0;
    }

    while (v0);
  }
}

unint64_t sub_270464160()
{
  result = qword_2807D3240;
  if (!qword_2807D3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3240);
  }

  return result;
}

unint64_t sub_2704641B4()
{
  result = qword_2807D3248;
  if (!qword_2807D3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3248);
  }

  return result;
}

unint64_t sub_27046420C()
{
  result = qword_2807D3250;
  if (!qword_2807D3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3250);
  }

  return result;
}

unint64_t sub_270464264()
{
  result = qword_2807D3258;
  if (!qword_2807D3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3258);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferSnippetIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270464384);
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

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit12PageMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2704643E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_270464428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferSnippetRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270464550);
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

unint64_t sub_27046458C()
{
  result = qword_2807D3260;
  if (!qword_2807D3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3260);
  }

  return result;
}

unint64_t sub_2704645E4()
{
  result = qword_2807D3268;
  if (!qword_2807D3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3268);
  }

  return result;
}

unint64_t sub_27046463C()
{
  result = qword_2807D3270;
  if (!qword_2807D3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3270);
  }

  return result;
}

unint64_t sub_270464690()
{
  result = qword_2807D3278;
  if (!qword_2807D3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3278);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_28()
{

  return sub_2705D8134();
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return sub_2705D8134();
}

void OUTLINED_FUNCTION_90()
{

  JUMPOUT(0x2743A47E0);
}

uint64_t sub_270464D84@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for InlineMessageIconView();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3110);
  v9 = OUTLINED_FUNCTION_23_0(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  memcpy(v25, v1 + 160, sizeof(v25));
  memcpy(v26, v1 + 160, sizeof(v26));
  if (get_enum_tag_for_layout_string_19UnifiedMessagingKit13BrandingModelVSg_0(v26) == 1)
  {
    OUTLINED_FUNCTION_4_30();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    memcpy(v24, v1 + 8, 0x98uLL);
    v16 = v1[569];
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
    swift_storeEnumTagMultiPayload();
    *(v7 + v3[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E0);
    swift_storeEnumTagMultiPayload();
    memcpy(v7 + v3[6], v26, 0x160uLL);
    memcpy(v7 + v3[7], v24, 0x98uLL);
    *(v7 + v3[8]) = v16;
    sub_270466FA4(v7, v11, type metadata accessor for InlineMessageIconView);
    OUTLINED_FUNCTION_4_30();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    sub_2703BFA60(v24, &v23);
  }

  sub_2703CF3E8(v11, a1, &qword_2807D3110);
  return sub_2703CF590(v25, v24, &qword_2807D2478);
}

void sub_270464FB4()
{
  v1 = v0;
  v2 = type metadata accessor for InlineMessageView();
  v3 = v2 - 8;
  v53 = *(v2 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6600);
  v6 = OUTLINED_FUNCTION_23_0(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  sub_2705D5254();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v14 = v13 - v12;
  v15 = v0[64];
  v16 = v0[65];
  v17 = v0[66];
  v18 = *(v1 + 536);
  v65 = v15;
  v66 = v16;
  v67 = v17;
  v68 = v18;
  v19 = v1 + *(v3 + 40);
  v21 = *v19;
  v20 = *(v19 + 1);
  v22 = *(v19 + 4);
  v23 = v19[40];
  v24 = v19[41] == 1;
  v56 = v20;
  v55 = v21;
  if (v24)
  {
    v61 = v21;
    v62 = v20;
    v63 = v22;
    v64 = v23;

    sub_2703AE9E8(v16, v17, v18);
    sub_27046607C(v55, *(&v55 + 1), v56, *(&v56 + 1), v22, v23, 1);
    v42 = v55;
    v41 = v56;
  }

  else
  {
    v52 = v4;
    v51 = v10;
    v50 = v11;

    sub_2703AE9E8(v16, v17, v18);
    *&v55 = *(&v55 + 1);
    v49 = v56;
    OUTLINED_FUNCTION_3_36();
    sub_27046607C(v25, v26, v27, v28, v29, v30, v31);
    sub_2705D7A84();
    v32 = v8;
    v33 = sub_2705D56A4();
    sub_2705D4C04();

    v8 = v32;
    sub_2705D5244();
    swift_getAtKeyPath();
    OUTLINED_FUNCTION_3_36();
    sub_270465F8C(v34, v35, v36, v37, v38, v39, v40);
    (*(v50 + 8))(v14, v51);
    v42 = v61;
    v41 = v62;
    v22 = v63;
    v23 = v64;
  }

  v57 = v42;
  v58 = v41;
  v59 = v22;
  v60 = v23;
  sub_2703B4FBC(&v65, &v57, v69);
  sub_270465F98(v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60);
  sub_2703AFC10(v65, v66, v67, v68);
  v43 = sub_2705D4D24();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v43);
  sub_2703CF590(v69, &v61, &unk_2807CF480);
  v44 = v1;
  v45 = v54;
  sub_270465F24(v44, v54);
  v46 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_1_37();
  sub_270466FA4(v45, v47 + v46, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D32B8);
  sub_270466B00();
  sub_2705D4724();
  sub_2703C2EFC(v69, &unk_2807CF480);
  OUTLINED_FUNCTION_25_1();
}

void sub_27046542C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D32B0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  v6 = &v27[-v5];
  if (v1[77])
  {
    v7 = v1[79];
    v28[0] = v1[78];
    v28[1] = v7;
    sub_2703C2F54();

    v8 = sub_2705D5944();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    memcpy(v28, v1 + 1, sizeof(v28));
    KeyPath = swift_getKeyPath();
    v16 = &v6[*(v3 + 36)];
    *v16 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
    swift_storeEnumTagMultiPayload();
    v17 = type metadata accessor for InlineMessageTitleTextModifier();
    memcpy(v16 + *(v17 + 20), v28, 0x98uLL);
    *v6 = v8;
    *(v6 + 1) = v10;
    v6[16] = v12 & 1;
    *(v6 + 3) = v14;
    sub_2703CF3E8(v6, a1, &qword_2807D32B0);
    OUTLINED_FUNCTION_4_30();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_2703BFA60(v28, v27);
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_4_30();
    OUTLINED_FUNCTION_25_1();

    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }
}

void sub_2704655E8(void *a1)
{
  v2 = type metadata accessor for InlineMessageView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *a1;
  swift_getKeyPath();
  sub_270465F24(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_1_37();
  sub_270466FA4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3280);
  sub_2703AFBC8(&qword_2807D3288, &qword_2807D2C90);
  sub_2703AFBC8(&qword_2807D3290, &qword_2807D3280);
  sub_2705D5F74();
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2704657D4@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6600);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1250);
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v58 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3298);
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v68 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v52 - v12;
  v13 = sub_2705D5254();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2705D5F64();
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v55 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  memcpy(__dst, a1, 0x78uLL);
  v66 = v20;
  sub_2705D5F54();
  v21 = __dst[1];
  v22 = __dst[2];
  v23 = __dst[3];
  v76 = __dst[0];
  v77 = __dst[1];
  v78 = __dst[2];
  v79 = __dst[3];
  v24 = (a2 + *(type metadata accessor for InlineMessageView() + 32));
  v26 = *v24;
  v25 = v24[1];
  v27 = *(v24 + 4);
  v28 = *(v24 + 40);
  LODWORD(v24) = *(v24 + 41);
  v64 = v26;
  v65 = v25;
  if (v24 == 1)
  {
    v72 = v26;
    v73 = v25;
    v74 = v27;
    v75 = v28;

    sub_2703AE9E8(v21, v22, v23);
    sub_27046607C(v64, *(&v64 + 1), v65, *(&v65 + 1), v27, v28, 1);
    v30 = v64;
    v29 = v65;
  }

  else
  {
    v31 = v26;

    sub_2703AE9E8(v21, v22, v23);
    *&v64 = *(&v64 + 1);
    v32 = v65;
    sub_27046607C(v31, *(&v64 + 1), v65, *(&v65 + 1), v27, v28, 0);
    sub_2705D7A84();
    v33 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();
    sub_270465F8C(v31, v64, v32, *(&v32 + 1), v27, v28, 0);
    (*(v52 + 8))(v15, v53);
    v30 = v72;
    v29 = v73;
    v27 = v74;
    v28 = v75;
  }

  v71[0] = v30;
  v71[1] = v29;
  *&v71[2] = v27;
  BYTE8(v71[2]) = v28;
  sub_2703B4FBC(&v76, v71, v80);
  sub_270465F98(*&v71[0], *(&v71[0] + 1), *&v71[1], *(&v71[1] + 1), *&v71[2], BYTE8(v71[2]));
  sub_2703AFC10(v76, v77, v78, v79);
  v34 = sub_2705D4D24();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v34);
  sub_2703CF590(v80, v70, &unk_2807CF480);
  v35 = swift_allocObject();
  memcpy((v35 + 16), __dst, 0x78uLL);
  sub_2703B1428(__dst, v71);
  v36 = v58;
  sub_2705D4724();
  memcpy(v70, (a2 + 8), sizeof(v70));
  memcpy(v69, (a2 + 8), sizeof(v69));
  sub_2703BFA60(v70, v71);
  sub_2703AFBC8(&qword_2807D1248, &qword_2807D1250);
  sub_270466184();
  v37 = v67;
  v38 = v60;
  sub_2705D5A94();
  memcpy(v71, v69, 0x98uLL);
  sub_2704661D8(v71);
  (*(v59 + 8))(v36, v38);
  v39 = v55;
  v40 = v56;
  v41 = *(v56 + 16);
  v42 = v57;
  v41(v55, v66, v57);
  v43 = v61;
  *&v65 = *(v61 + 16);
  v44 = v37;
  v45 = v62;
  (v65)(v68, v44, v62);
  v46 = v63;
  v41(v63, v39, v42);
  v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D32A8) + 48)];
  v48 = v68;
  (v65)(v47, v68, v45);
  v49 = *(v43 + 8);
  v49(v67, v45);
  sub_2703C2EFC(v80, &unk_2807CF480);
  v50 = *(v40 + 8);
  v50(v66, v42);
  v49(v48, v45);
  return (v50)(v39, v42);
}

uint64_t sub_270465F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineMessageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_270465F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, char a7)
{
  if (a7)
  {
    sub_270465F98(a1, a2, a3, a4, a5, a6);
  }

  else
  {
  }
}

void sub_270465F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2)
  {

    sub_2703AF9AC(a4, a5, a6);
  }
}

uint64_t sub_270466000@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for InlineMessageView();
  OUTLINED_FUNCTION_23_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_2704657D4(a1, v7, a2);
}

void sub_27046607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, char a7)
{
  if (a7)
  {
    sub_2703B5C40(a1, a2, a3, a4, a5, a6);
  }

  else
  {
  }
}

uint64_t sub_270466088@<X0>(uint64_t a1@<X8>)
{
  sub_2703C2F54();

  result = sub_2705D5944();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2704660F4()
{

  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_2703AE630(*(v0 + 24), *(v0 + 32), v1);
  }

  v2 = *(v0 + 96);
  if (v2 != 255)
  {
    sub_2703AE630(*(v0 + 80), *(v0 + 88), v2);
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_270466184()
{
  result = qword_2807D32A0;
  if (!qword_2807D32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D32A0);
  }

  return result;
}

uint64_t sub_27046622C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_2705D5384();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2705D5E14();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D32D0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v44 - v13);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D32B8);
  v15 = MEMORY[0x28223BE20](v50);
  v48 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v49 = &v44 - v18;
  MEMORY[0x28223BE20](v17);
  v51 = &v44 - v19;
  v47 = sub_2705D5DF4();
  v20 = *(a1 + 40);
  KeyPath = swift_getKeyPath();
  v21 = *(a1 + 8);
  v45 = swift_getKeyPath();
  v22 = MEMORY[0x277CE1058];
  if (!*(a1 + 569))
  {
    v22 = MEMORY[0x277CE1050];
  }

  (*(v6 + 104))(v9, *v22, v5);
  v23 = *(v6 + 32);
  v23(v11, v9, v5);
  v24 = swift_getKeyPath();
  v25 = (v14 + *(v12 + 36));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2F60);
  v23(v25 + *(v26 + 28), v11, v5);
  *v25 = v24;
  v27 = KeyPath;
  *v14 = v47;
  v14[1] = v27;
  v28 = v45;
  v14[2] = v20;
  v14[3] = v28;
  v14[4] = v21;
  v56 = 0x65736F6C43;
  v57 = 0xE500000000000000;
  sub_2703C2F54();

  v29 = sub_2705D5944();
  v31 = v30;
  LOBYTE(v24) = v32;
  swift_bridgeObjectRelease_n();
  sub_270466B8C();
  v33 = v48;
  sub_2705D5AF4();
  sub_2703CEDB0(v29, v31, v24 & 1);

  sub_2703C2EFC(v14, &qword_2807D32D0);
  v56 = 0xD000000000000014;
  v57 = 0x8000000270614040;

  v34 = sub_2705D5944();
  v36 = v35;
  LOBYTE(v31) = v37;
  swift_bridgeObjectRelease_n();
  v38 = v49;
  sub_2705D5024();
  sub_2703CEDB0(v34, v36, v31 & 1);

  sub_2703C2EFC(v33, &qword_2807D32B8);
  v39 = v52;
  sub_2705D5374();
  v40 = v51;
  sub_2705D5034();
  v41 = v54;
  v42 = *(v53 + 8);
  v42(v39, v54);
  sub_2703C2EFC(v38, &qword_2807D32B8);
  sub_2705D5364();
  sub_2705D5014();
  v42(v39, v41);
  return sub_2703C2EFC(v40, &qword_2807D32B8);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for InlineMessageView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(v2 + 208);
  v4 = *(v2 + 296);
  if (v3 >> 8 != 0xFFFFFFFF || v4 >= 0x100)
  {
    v16 = *(v2 + 464);
    v14 = *(v2 + 432);
    v15 = *(v2 + 448);
    v13 = *(v2 + 400);
    sub_2703F4940(*(v2 + 160), *(v2 + 168), *(v2 + 176), *(v2 + 184), *(v2 + 192), *(v2 + 200), v3, *(v2 + 216), *(v2 + 224), *(v2 + 232), *(v2 + 240), *(v2 + 248), *(v2 + 256), *(v2 + 264), *(v2 + 272), *(v2 + 280), *(v2 + 288), v4, *(v2 + 304), *(v2 + 312), *(v2 + 320), *(v2 + 328), *(v2 + 336), *(v2 + 344), *(v2 + 352), *(v2 + 360), *(v2 + 368), *(v2 + 376), *(v2 + 384), *(v2 + 392), v13, *(&v13 + 1), *(v2 + 416), *(v2 + 424), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, SBYTE8(v16));
  }

  v5 = *(v2 + 536);
  if (v5 != 255)
  {
    sub_2703AE630(*(v2 + 520), *(v2 + 528), v5);
  }

  if (*(v2 + 568) != 254)
  {

    v6 = *(v2 + 568);
    if (v6 != 255)
    {
      sub_2703AE630(*(v2 + 552), *(v2 + 560), v6);
    }
  }

  if (*(v2 + 584))
  {
  }

  if (*(v2 + 616))
  {
  }

  v7 = *(v2 + 656);
  if (v7 != 255)
  {
    sub_2703AE630(*(v2 + 640), *(v2 + 648), v7);
  }

  sub_2704109D0(*(v2 + 664), *(v2 + 672));
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_14();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  v10 = v2 + v1[7];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
  }

  v11 = v2 + v1[8];
  sub_270465F8C(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 41));

  return swift_deallocObject();
}

uint64_t sub_270466A94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for InlineMessageView();
  OUTLINED_FUNCTION_23_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_27046622C(v5, a1);
}

unint64_t sub_270466B00()
{
  result = qword_2807D32C0;
  if (!qword_2807D32C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D32B8);
    sub_270466B8C();
    sub_270466DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D32C0);
  }

  return result;
}

unint64_t sub_270466B8C()
{
  result = qword_2807D32C8;
  if (!qword_2807D32C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D32D0);
    sub_270466C44();
    sub_2703AFBC8(&qword_2807D2FB8, &qword_2807D2F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D32C8);
  }

  return result;
}

unint64_t sub_270466C44()
{
  result = qword_2807D32D8;
  if (!qword_2807D32D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D32E0);
    sub_270466CFC();
    sub_2703AFBC8(&qword_2807D2FC0, &qword_2807D2FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D32D8);
  }

  return result;
}

unint64_t sub_270466CFC()
{
  result = qword_2807D32E8;
  if (!qword_2807D32E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D32F0);
    sub_2703AFBC8(&qword_2807D2F08, &qword_2807D2F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D32E8);
  }

  return result;
}

unint64_t sub_270466DB4()
{
  result = qword_2807D32F8;
  if (!qword_2807D32F8)
  {
    sub_2705D5664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D32F8);
  }

  return result;
}

uint64_t sub_270466E38(uint64_t a1)
{
  sub_2705D5E14();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_2705D5114();
}

uint64_t sub_270466EEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2705D5174();
  *a1 = result;
  return result;
}

uint64_t sub_270466F18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2705D5174();
  *a1 = result;
  return result;
}

uint64_t sub_270466FA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_270467054(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2704670FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for InlineMessageView()
{
  result = qword_2807D3300;
  if (!qword_2807D3300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2704671D4()
{
  sub_2704672C8();
  if (v0 <= 0x3F)
  {
    sub_27045B710();
    if (v1 <= 0x3F)
    {
      sub_270467318(319, &qword_2807D3318, &qword_2807D3320);
      if (v2 <= 0x3F)
      {
        sub_270467318(319, &qword_2807D3328, &qword_2807D3330);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2704672C8()
{
  if (!qword_2807D3310)
  {
    v0 = sub_2705D4D94();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D3310);
    }
  }
}

void sub_270467318(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2705D4D94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_270467388()
{
  v1 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = v6 - v5;
  v8 = *(v0 + 664);
  if (*(v0 + 672) != 1)
  {

    sub_2705D7A84();
    v9 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();
    sub_2704109D0(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t sub_2704674BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for InlineMessageView();
  sub_2703CF590(v1 + *(v13 + 24), v12, &qword_2807D24F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_14();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_2705D7A84();
    v16 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_27046769C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for InlineMessageView();
  result = sub_2703CF590(v1 + *(v10 + 28), v14, &qword_2807D3408);
  if (v16 == 1)
  {
    v12 = v14[1];
    *a1 = v14[0];
    *(a1 + 16) = v12;
    *(a1 + 32) = v15;
  }

  else
  {
    sub_2705D7A84();
    v13 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }

  return result;
}

double sub_270467804@<D0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for InlineMessageView();
  *&v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3338);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3340);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3348);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3350);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  sub_270467BE8(v6);
  sub_270465F24(v1, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v19 = swift_allocObject();
  sub_2704687B0(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_270468874();
  sub_2705D5AE4();

  sub_2703C2EFC(v6, &qword_2807D3338);
  v20 = sub_2705D56C4();
  v21 = sub_270467388();
  v22 = 0uLL;
  v23 = 0uLL;
  if (!v21)
  {
    sub_2705D4D34();
    *(&v23 + 1) = v24;
    *(&v22 + 1) = v25;
  }

  v34 = v23;
  v35 = v22;
  (*(v8 + 32))(v14, v11, v38);
  v26 = &v14[*(v37 + 36)];
  *v26 = v20;
  v27 = v35;
  *(v26 + 24) = v34;
  *(v26 + 8) = v27;
  v26[40] = v21 != 0;
  v28 = sub_270467388() != 0;
  sub_2703CF3E8(v14, v17, &qword_2807D3348);
  v29 = &v17[*(v36 + 36)];
  *v29 = 0;
  v29[1] = v28;
  sub_270467388();
  sub_2705D60A4();
  sub_2705D4E64();
  v30 = v39;
  sub_2703CF3E8(v17, v39, &qword_2807D3350);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3400) + 36));
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;
  result = *&v42;
  v31[2] = v42;
  return result;
}

uint64_t sub_270467BE8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3130);
  MEMORY[0x28223BE20](v37);
  v29 = &v27 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3410);
  MEMORY[0x28223BE20](v33);
  v35 = &v27 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D30B0);
  MEMORY[0x28223BE20](v34);
  v28 = &v27 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D33B8);
  MEMORY[0x28223BE20](v41);
  v36 = &v27 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3418);
  MEMORY[0x28223BE20](v39);
  v40 = &v27 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31F0);
  MEMORY[0x28223BE20](v32);
  v8 = &v27 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3420);
  MEMORY[0x28223BE20](v30);
  v10 = &v27 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D31A0);
  MEMORY[0x28223BE20](v31);
  v12 = &v27 - v11;
  v13 = sub_2705D5004();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3368);
  MEMORY[0x28223BE20](v38);
  v18 = &v27 - v17;
  v19 = *(v1 + 569);
  sub_2704674BC(v16);
  v20 = sub_2705D4FE4();
  (*(v14 + 8))(v16, v13);
  if (v19 == 1)
  {
    if (v20)
    {
      sub_27045D4E8(v12);
      sub_2703CF590(v12, v10, &qword_2807D31A0);
      swift_storeEnumTagMultiPayload();
      sub_27046898C();
      sub_270468B24();
      sub_2705D5434();
      v21 = v12;
      v22 = &qword_2807D31A0;
    }

    else
    {
      sub_27045E038(v8);
      sub_2703CF590(v8, v10, &qword_2807D31F0);
      swift_storeEnumTagMultiPayload();
      sub_27046898C();
      sub_270468B24();
      sub_2705D5434();
      v21 = v8;
      v22 = &qword_2807D31F0;
    }

    sub_2703C2EFC(v21, v22);
    sub_2703CF590(v18, v40, &qword_2807D3368);
    swift_storeEnumTagMultiPayload();
    sub_270468900();
    sub_270468C68();
    sub_2705D5434();
    return sub_2703C2EFC(v18, &qword_2807D3368);
  }

  else
  {
    if (v20)
    {
      v23 = v28;
      sub_27045C0C8(v28);
      v24 = &qword_2807D30B0;
      sub_2703CF590(v23, v35, &qword_2807D30B0);
    }

    else
    {
      v23 = v29;
      sub_27045CA28(v29);
      v24 = &qword_2807D3130;
      sub_2703CF590(v23, v35, &qword_2807D3130);
    }

    swift_storeEnumTagMultiPayload();
    sub_270468CF4();
    sub_270468E38();
    v26 = v36;
    sub_2705D5434();
    sub_2703C2EFC(v23, v24);
    sub_2703CF590(v26, v40, &qword_2807D33B8);
    swift_storeEnumTagMultiPayload();
    sub_270468900();
    sub_270468C68();
    sub_2705D5434();
    return sub_2703C2EFC(v26, &qword_2807D33B8);
  }
}

uint64_t sub_270468280(uint64_t a1)
{
  v2 = sub_2705D6BD4();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 568);
  if (v7 != 254)
  {
    v8 = *(a1 + 544);
    v9 = *(a1 + 552);
    v10 = *(a1 + 560);
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v12 = v10;
    LOBYTE(v13) = v7;

    sub_2703AE9E8(v9, v10, v7);
    sub_2703B3B04(&v11, &v14);
    sub_2703B291C(&v14, v16);
    sub_27046769C(&v11);
    if (v13)
    {
      sub_2703B291C(&v11, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
      sub_2705D6BC4();
      sub_2705D4764();
      sub_2703AFC10(v8, v9, v10, v7);
      (*(v3 + 8))(v6, v2);
      __swift_destroy_boxed_opaque_existential_1(v16);
      return __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_2703AFC10(v8, v9, v10, v7);
      return sub_2703C2EFC(&v11, &qword_2807D3320);
    }
  }

  return result;
}

uint64_t sub_2704684A0()
{
  v1 = type metadata accessor for InlineMessageView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(v2 + 208);
  v4 = *(v2 + 296);
  if (v3 >> 8 != 0xFFFFFFFF || v4 >= 0x100)
  {
    v16 = *(v2 + 464);
    v14 = *(v2 + 432);
    v15 = *(v2 + 448);
    v13 = *(v2 + 400);
    sub_2703F4940(*(v2 + 160), *(v2 + 168), *(v2 + 176), *(v2 + 184), *(v2 + 192), *(v2 + 200), v3, *(v2 + 216), *(v2 + 224), *(v2 + 232), *(v2 + 240), *(v2 + 248), *(v2 + 256), *(v2 + 264), *(v2 + 272), *(v2 + 280), *(v2 + 288), v4, *(v2 + 304), *(v2 + 312), *(v2 + 320), *(v2 + 328), *(v2 + 336), *(v2 + 344), *(v2 + 352), *(v2 + 360), *(v2 + 368), *(v2 + 376), *(v2 + 384), *(v2 + 392), v13, *(&v13 + 1), *(v2 + 416), *(v2 + 424), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, SBYTE8(v16));
  }

  v5 = *(v2 + 536);
  if (v5 != 255)
  {
    sub_2703AE630(*(v2 + 520), *(v2 + 528), v5);
  }

  if (*(v2 + 568) != 254)
  {

    v6 = *(v2 + 568);
    if (v6 != 255)
    {
      sub_2703AE630(*(v2 + 552), *(v2 + 560), v6);
    }
  }

  if (*(v2 + 584))
  {
  }

  if (*(v2 + 616))
  {
  }

  v7 = *(v2 + 656);
  if (v7 != 255)
  {
    sub_2703AE630(*(v2 + 640), *(v2 + 648), v7);
  }

  sub_2704109D0(*(v2 + 664), *(v2 + 672));
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_14();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  v10 = v2 + v1[7];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
  }

  v11 = v2 + v1[8];
  sub_270465F8C(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 41));

  return swift_deallocObject();
}

uint64_t sub_2704687B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineMessageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270468814()
{
  v1 = *(type metadata accessor for InlineMessageView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_270468280(v2);
}

unint64_t sub_270468874()
{
  result = qword_2807D3358;
  if (!qword_2807D3358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3338);
    sub_270468900();
    sub_270468C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3358);
  }

  return result;
}

unint64_t sub_270468900()
{
  result = qword_2807D3360;
  if (!qword_2807D3360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3368);
    sub_27046898C();
    sub_270468B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3360);
  }

  return result;
}

unint64_t sub_27046898C()
{
  result = qword_2807D3370;
  if (!qword_2807D3370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D31A0);
    sub_270468A18();
    sub_270468AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3370);
  }

  return result;
}

unint64_t sub_270468A18()
{
  result = qword_2807D3378;
  if (!qword_2807D3378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3190);
    sub_2703AFBC8(&qword_2807D3380, &qword_2807D3388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3378);
  }

  return result;
}

unint64_t sub_270468AD0()
{
  result = qword_2807D3390;
  if (!qword_2807D3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3390);
  }

  return result;
}

unint64_t sub_270468B24()
{
  result = qword_2807D3398;
  if (!qword_2807D3398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D31F0);
    sub_270468BB0();
    sub_270468AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3398);
  }

  return result;
}

unint64_t sub_270468BB0()
{
  result = qword_2807D33A0;
  if (!qword_2807D33A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D31E0);
    sub_2703AFBC8(&qword_2807D33A8, &qword_2807D31D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D33A0);
  }

  return result;
}

unint64_t sub_270468C68()
{
  result = qword_2807D33B0;
  if (!qword_2807D33B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D33B8);
    sub_270468CF4();
    sub_270468E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D33B0);
  }

  return result;
}

unint64_t sub_270468CF4()
{
  result = qword_2807D33C0;
  if (!qword_2807D33C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D30B0);
    sub_270468D80();
    sub_270468AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D33C0);
  }

  return result;
}

unint64_t sub_270468D80()
{
  result = qword_2807D33C8;
  if (!qword_2807D33C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D30A0);
    sub_2703AFBC8(&qword_2807D33D0, &qword_2807D33D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D33C8);
  }

  return result;
}

unint64_t sub_270468E38()
{
  result = qword_2807D33E0;
  if (!qword_2807D33E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3130);
    sub_270468EC4();
    sub_270468AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D33E0);
  }

  return result;
}

unint64_t sub_270468EC4()
{
  result = qword_2807D33E8;
  if (!qword_2807D33E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3120);
    sub_2703AFBC8(&qword_2807D33F0, &qword_2807D33F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D33E8);
  }

  return result;
}

unint64_t sub_270468F80()
{
  result = qword_2807D3428;
  if (!qword_2807D3428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3400);
    sub_27046900C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3428);
  }

  return result;
}

unint64_t sub_27046900C()
{
  result = qword_2807D3430;
  if (!qword_2807D3430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3350);
    sub_270469098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3430);
  }

  return result;
}

unint64_t sub_270469098()
{
  result = qword_2807D3438;
  if (!qword_2807D3438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3338);
    sub_270468874();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3438);
  }

  return result;
}

uint64_t sub_270469160(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2704691B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_270469214(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_2704692A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3440);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704694FC();
  sub_2705D8484();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3450);
    sub_270469550();
    sub_2705D7F44();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_27046942C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270469214(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270469458(uint64_t a1)
{
  v2 = sub_2704694FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270469494(uint64_t a1)
{
  v2 = sub_2704694FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2704694D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2704692A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2704694FC()
{
  result = qword_2807D3448;
  if (!qword_2807D3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3448);
  }

  return result;
}

unint64_t sub_270469550()
{
  result = qword_2807D3458;
  if (!qword_2807D3458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3450);
    sub_2704695D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3458);
  }

  return result;
}

unint64_t sub_2704695D4()
{
  result = qword_2807D3460;
  if (!qword_2807D3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3460);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JavaScriptResponse.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2704696C4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_270469700()
{
  result = qword_2807D3468;
  if (!qword_2807D3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3468);
  }

  return result;
}

unint64_t sub_270469758()
{
  result = qword_2807D3470;
  if (!qword_2807D3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3470);
  }

  return result;
}

unint64_t sub_2704697B0()
{
  result = qword_2807D3478;
  if (!qword_2807D3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3478);
  }

  return result;
}

uint64_t type metadata accessor for SourceLookupType()
{
  result = qword_2807D3480;
  if (!qword_2807D3480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270469874()
{
  result = sub_2705D4484();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2704698DC()
{
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_34();
  if ((sub_2705D6444() & 1) != 0 || (v3 = sub_2705D6454(), !v4))
  {
    v5 = sub_2705D7184();
    sub_2703DB718();
    v8 = OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_4_31(v8, v9);
    OUTLINED_FUNCTION_2_29();
    (*(v10 + 104))();
    swift_willThrow();
    v11 = *(v1 + 8);

    v12 = OUTLINED_FUNCTION_6_28();
    v11(v12);
  }

  else
  {
    v5 = v3;
    v6 = OUTLINED_FUNCTION_6_28();
    v7(v6);
  }

  return v5;
}

uint64_t sub_270469A24()
{
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_34();
  if ((sub_2705D6444() & 1) != 0 || (v3 = sub_2705D63E4(), v3 == 2))
  {
    v4 = sub_2705D7184();
    sub_2703DB718();
    v5 = OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_4_31(v5, v6);
    OUTLINED_FUNCTION_2_29();
    (*(v7 + 104))();
    swift_willThrow();
    v8 = *(v1 + 8);

    v9 = OUTLINED_FUNCTION_6_28();
    v8(v9);
  }

  else
  {
    v4 = v3;
    v10 = OUTLINED_FUNCTION_6_28();
    v11(v10);
  }

  return v4 & 1;
}

uint64_t sub_270469B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D6494();
  if (sub_2705D6444())
  {
    goto LABEL_4;
  }

  sub_2705D63D4();
  v16 = sub_2705D4484();
  if (__swift_getEnumTagSinglePayload(v9, 1, v16) == 1)
  {
    sub_2703EE7B8(v9);
LABEL_4:
    sub_2705D7184();
    sub_2703DB718();
    OUTLINED_FUNCTION_9_4();
    *v17 = a1;
    v17[1] = a2;
    v17[2] = a3;
    OUTLINED_FUNCTION_2_29();
    (*(v18 + 104))();
    swift_willThrow();
    v19 = *(v12 + 8);

    return v19(v15, v10);
  }

  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_2_29();
  return (*(v21 + 32))(v23, v9, v16);
}

uint64_t sub_270469D8C()
{
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_34();
  if (sub_2705D6444() & 1) != 0 || (v3 = sub_2705D6404(), (v4))
  {
    v5 = sub_2705D7184();
    sub_2703DB718();
    v6 = OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_4_31(v6, v7);
    OUTLINED_FUNCTION_2_29();
    (*(v8 + 104))();
    swift_willThrow();
    v9 = *(v1 + 8);

    v10 = OUTLINED_FUNCTION_6_28();
    v9(v10);
  }

  else
  {
    v5 = v3;
    v11 = OUTLINED_FUNCTION_6_28();
    v12(v11);
  }

  return v5;
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return sub_2705D6494();
}

void *OUTLINED_FUNCTION_4_31(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_33()
{

  return sub_2705D6484();
}

uint64_t sub_270469F48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEF && *(a1 + 17))
    {
      v2 = *a1 + 238;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0x11)
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

uint64_t sub_270469F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 16) = 0;
    *result = a2 - 239;
    *(result + 8) = 0;
    if (a3 >= 0xEF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
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

uint64_t sub_270469FCC(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x11)
  {
    *result = a2 - 17;
    *(result + 8) = 0;
    LOBYTE(a2) = 17;
  }

  *(result + 16) = a2;
  return result;
}

ValueMetadata *type metadata accessor for JSONType()
{
  return &type metadata for JSONType;
}

{
  return &type metadata for JSONType;
}

uint64_t sub_270469FF4(void *a1)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  OUTLINED_FUNCTION_15_18();
  sub_2705D8454();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_2_30();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_15_18();
    if (sub_2705D8194())
    {
      v3 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_30();
      __swift_project_boxed_opaque_existential_1(v6, v7);
      OUTLINED_FUNCTION_15_18();
      v3 = sub_2705D8154() & 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_27046A2FC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D84B4();
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_4_32();
      sub_2705D81E4();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 2:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8214();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 3:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8224();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 4:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8234();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 5:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_4_32();
      sub_2705D8244();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 6:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_4_32();
      sub_2705D81F4();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 7:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8254();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 8:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8264();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 9:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      OUTLINED_FUNCTION_1_38();
      sub_2705D8274();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 10:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      OUTLINED_FUNCTION_16_13();
      OUTLINED_FUNCTION_4_32();
      sub_2705D8284();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 11:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      OUTLINED_FUNCTION_10_22();
      sub_2705D81D4();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 12:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
      OUTLINED_FUNCTION_10_22();
      sub_2705D81C4();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 13:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      sub_2703EC7A4();
      goto LABEL_18;
    case 14:
      __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
      OUTLINED_FUNCTION_16_13();
      sub_2705D81A4();
      return __swift_destroy_boxed_opaque_existential_1(v44);
    case 15:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34A8);
      OUTLINED_FUNCTION_9_24();
      sub_27046B340(v23, v24);
      goto LABEL_18;
    case 16:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3498);
      OUTLINED_FUNCTION_9_24();
      sub_27046B2BC(v9, v10);
LABEL_18:
      sub_2705D8204();
      break;
    case 17:
      OUTLINED_FUNCTION_3_37();
      __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      OUTLINED_FUNCTION_10_22();
      sub_2705D8294();
      break;
    default:
      OUTLINED_FUNCTION_2_30();
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      OUTLINED_FUNCTION_4_32();
      sub_2705D81B4();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_27046A640(uint64_t a1, uint64_t a2, char a3)
{
  result = 1819047278;
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      return sub_2705D80A4();
    case 11:
      v7 = 0;
      sub_2705D79F4();
      return v7;
    case 12:
      v7 = 0;
      sub_2705D79D4();
      return v7;
    case 13:
      return sub_2705D79C4();
    case 14:
      v7 = 34;
      MEMORY[0x2743A3A90](a1, a2);
      MEMORY[0x2743A3A90](34, 0xE100000000000000);
      return v7;
    case 15:
      return MEMORY[0x2743A3C10](a1, &type metadata for JSONType);
    case 16:
      return sub_2705D7484();
    case 17:
      return result;
    default:
      v7 = 0;
      if (a1)
      {
        v5 = 1702195828;
      }

      else
      {
        v5 = 0x65736C6166;
      }

      if (a1)
      {
        v6 = 0xE400000000000000;
      }

      else
      {
        v6 = 0xE500000000000000;
      }

      MEMORY[0x2743A3A90](v5, v6);

      return v7;
  }
}

uint64_t sub_27046A8E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = result;
  switch(a3)
  {
    case 1:
      v32 = MEMORY[0x277D83B88];
      goto LABEL_37;
    case 2:
      v33 = MEMORY[0x277D84900];
      goto LABEL_30;
    case 3:
      v46 = MEMORY[0x277D84958];
      goto LABEL_39;
    case 4:
      v31 = MEMORY[0x277D849A8];
      goto LABEL_20;
    case 5:
      v32 = MEMORY[0x277D84A28];
      goto LABEL_37;
    case 6:
      v32 = MEMORY[0x277D83E88];
      goto LABEL_37;
    case 7:
      v33 = MEMORY[0x277D84B78];
LABEL_30:
      *(a4 + 24) = v33;
      *a4 = result;
      return result;
    case 8:
      v46 = MEMORY[0x277D84C58];
LABEL_39:
      *(a4 + 24) = v46;
      *a4 = result;
      return result;
    case 9:
      v31 = MEMORY[0x277D84CC0];
      goto LABEL_20;
    case 10:
      v32 = MEMORY[0x277D84D38];
      goto LABEL_37;
    case 11:
      v31 = MEMORY[0x277D83A90];
LABEL_20:
      *(a4 + 24) = v31;
      *a4 = result;
      return result;
    case 12:
      v32 = MEMORY[0x277D839F8];
      goto LABEL_37;
    case 13:
      v32 = MEMORY[0x277D85048];
LABEL_37:
      *(a4 + 24) = v32;
      *a4 = result;
      return result;
    case 14:
      *(a4 + 24) = MEMORY[0x277D837D0];
      *a4 = result;
      *(a4 + 8) = a2;

    case 15:
      v34 = *(result + 16);
      v35 = MEMORY[0x277D84F90];
      if (v34)
      {
        v51 = MEMORY[0x277D84F90];
        sub_2704ADD54(0, v34, 0);
        v35 = v51;
        v36 = v5 + 48;
        do
        {
          v37 = OUTLINED_FUNCTION_19_8();
          sub_2703AE9FC(v37, v38, v39);
          v40 = OUTLINED_FUNCTION_19_8();
          sub_27046A8E8(v40);
          v41 = OUTLINED_FUNCTION_19_8();
          sub_2703AE630(v41, v42, v43);
          v45 = *(v51 + 16);
          v44 = *(v51 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_2704ADD54(v44 > 1, v45 + 1, 1);
          }

          v36 += 24;
          *(v51 + 16) = v45 + 1;
          sub_2703E43D4(v52, (v51 + 32 * v45 + 32));
          --v34;
        }

        while (v34);
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3500);
      *(a4 + 24) = result;
      *a4 = v35;
      return result;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F0);
      v7 = sub_2705D7E74();
      v8 = 0;
      OUTLINED_FUNCTION_0_35();
      i = v10 & v9;
      OUTLINED_FUNCTION_18_10();
      v49 = v12;
      if (i)
      {
        goto LABEL_4;
      }

      break;
    case 17:
      v47 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      result = sub_27046C2B0();
      *(a4 + 24) = result;
      *a4 = v47;
      return result;
    default:
      *(a4 + 24) = MEMORY[0x277D839B0];
      *a4 = result & 1;
      return result;
  }

LABEL_5:
  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v8 >= v4)
    {
      break;
    }

    ++v14;
    if (*(v5 + 64 + 8 * v8))
    {
      OUTLINED_FUNCTION_20_10();
      for (i = v16 & v15; ; i &= i - 1)
      {
        v17 = v13 | (v8 << 6);
        v18 = (*(v5 + 48) + 16 * v17);
        v19 = v18[1];
        v50 = *v18;
        v20 = *(*(v5 + 56) + 24 * v17 + 16);

        v21 = OUTLINED_FUNCTION_15_18();
        sub_2703AE9FC(v21, v22, v20);
        v23 = OUTLINED_FUNCTION_15_18();
        sub_27046A8E8(v23);
        v24 = OUTLINED_FUNCTION_15_18();
        sub_2703AE630(v24, v25, v20);
        OUTLINED_FUNCTION_21_12();
        v7 = v49;
        OUTLINED_FUNCTION_7_22(v26);
        v27 = (v49[6] + 16 * v17);
        *v27 = v50;
        v27[1] = v19;
        sub_2703E43D4(v52, (v49[7] + 32 * v17));
        v28 = v49[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          break;
        }

        v49[2] = v30;
        if (!i)
        {
          goto LABEL_5;
        }

LABEL_4:
        v13 = __clz(__rbit64(i));
      }

LABEL_43:
      __break(1u);
      JUMPOUT(0x27046ACBCLL);
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  *(a4 + 24) = result;
  *a4 = v7;
  return result;
}

uint64_t sub_27046AD04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_27;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    case 4:
      if (a6 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_19;
    case 5:
      if (a6 != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    case 6:
      if (a6 != 6)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    case 7:
      if (a6 != 7)
      {
        goto LABEL_49;
      }

LABEL_27:
      v10 = a1 == a4;
      goto LABEL_46;
    case 8:
      if (a6 != 8)
      {
        goto LABEL_49;
      }

LABEL_45:
      v10 = a1 == a4;
      goto LABEL_46;
    case 9:
      if (a6 != 9)
      {
        goto LABEL_49;
      }

LABEL_19:
      v10 = a1 == a4;
      goto LABEL_46;
    case 10:
      if (a6 != 10)
      {
        goto LABEL_49;
      }

LABEL_43:
      v10 = a1 == a4;
LABEL_46:
      v6 = v10;
      return v6 & 1;
    case 11:
      if (a6 != 11)
      {
        goto LABEL_49;
      }

      v9 = *&a1 == *&a4;
      goto LABEL_37;
    case 12:
      if (a6 != 12)
      {
        goto LABEL_49;
      }

      goto LABEL_36;
    case 13:
      if (a6 != 13)
      {
        goto LABEL_49;
      }

LABEL_36:
      v9 = *&a1 == *&a4;
LABEL_37:
      v6 = v9;
      return v6 & 1;
    case 14:
      if (a6 != 14)
      {
        goto LABEL_49;
      }

      if (a1 != a4 || a2 != a5)
      {
        return OUTLINED_FUNCTION_12_19();
      }

LABEL_32:
      v6 = 1;
      return v6 & 1;
    case 15:
      if (a6 != 15)
      {
        goto LABEL_49;
      }

      return sub_2704639E0(a1, a4);
    case 16:
      if (a6 != 16)
      {
        goto LABEL_49;
      }

      return sub_270498750(a1, a4);
    case 17:
      if (a6 == 17 && !(a5 | a4))
      {
        goto LABEL_32;
      }

      goto LABEL_49;
    default:
      if (a6)
      {
LABEL_49:
        v6 = 0;
      }

      else
      {
        v6 = a4 ^ a1 ^ 1;
      }

      return v6 & 1;
  }
}

void sub_27046AF08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v11 = 2;
      goto LABEL_31;
    case 2:
      v9 = 3;
      goto LABEL_21;
    case 3:
      v10 = 4;
      goto LABEL_37;
    case 4:
      v7 = 5;
      goto LABEL_13;
    case 5:
      v13 = 6;
      goto LABEL_34;
    case 6:
      v11 = 7;
LABEL_31:
      MEMORY[0x2743A47E0](v11);
      v12 = a2;
      goto LABEL_32;
    case 7:
      v9 = 8;
LABEL_21:
      MEMORY[0x2743A47E0](v9);
      goto LABEL_22;
    case 8:
      v10 = 9;
LABEL_37:
      MEMORY[0x2743A47E0](v10);
      sub_2705D83E4();
      return;
    case 9:
      v7 = 10;
LABEL_13:
      MEMORY[0x2743A47E0](v7);
      goto LABEL_14;
    case 10:
      v13 = 11;
LABEL_34:
      MEMORY[0x2743A47E0](v13);
      v14 = a2;
      goto LABEL_35;
    case 11:
      MEMORY[0x2743A47E0](12);
LABEL_14:
      sub_2705D83F4();
      return;
    case 12:
      v8 = 13;
      goto LABEL_27;
    case 13:
      v8 = 14;
LABEL_27:
      MEMORY[0x2743A47E0](v8);
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = 0;
      }

LABEL_35:
      MEMORY[0x2743A4820](v14);
      break;
    case 14:
      MEMORY[0x2743A47E0](15);
      OUTLINED_FUNCTION_25_11();

      sub_2705D7634();
      break;
    case 15:
      MEMORY[0x2743A47E0](16);
      OUTLINED_FUNCTION_25_11();

      sub_270463E44();
      break;
    case 16:
      MEMORY[0x2743A47E0](17);
      v5 = OUTLINED_FUNCTION_25_11();

      sub_27046C150(v5, v6);
      break;
    case 17:
      v12 = 0;
LABEL_32:
      MEMORY[0x2743A47E0](v12);
      break;
    default:
      MEMORY[0x2743A47E0](1);
LABEL_22:
      sub_2705D83D4();
      break;
  }
}

uint64_t sub_27046B104(uint64_t a1, uint64_t a2, char a3)
{
  sub_2705D83B4();
  sub_27046AF08(v7, a1, a2, a3);
  return sub_2705D8414();
}

uint64_t sub_27046B164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_12_19();
  }
}

uint64_t sub_27046B17C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_270469FF4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_27046B1F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2705D83B4();
  sub_27046AF08(v5, v1, v2, v3);
  return sub_2705D8414();
}

unint64_t sub_27046B268()
{
  result = qword_2807D3490;
  if (!qword_2807D3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3490);
  }

  return result;
}

uint64_t sub_27046B2BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3498);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27046B340(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D34A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_27046B3CC(uint64_t a1)
{
  sub_2703D7F04(a1, v54);
  if (OUTLINED_FUNCTION_6_29())
  {
    goto LABEL_46;
  }

  if (OUTLINED_FUNCTION_6_29())
  {
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_6_29() || OUTLINED_FUNCTION_6_29() || OUTLINED_FUNCTION_6_29())
  {
    goto LABEL_46;
  }

  if (OUTLINED_FUNCTION_6_29() || OUTLINED_FUNCTION_6_29())
  {
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_6_29() || OUTLINED_FUNCTION_6_29() || OUTLINED_FUNCTION_6_29())
  {
    goto LABEL_46;
  }

  if (OUTLINED_FUNCTION_6_29())
  {
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_6_29())
  {
LABEL_46:
    __swift_destroy_boxed_opaque_existential_1(v54);
    return;
  }

  if (OUTLINED_FUNCTION_6_29() || OUTLINED_FUNCTION_6_29())
  {
LABEL_17:
    OUTLINED_FUNCTION_17_13();
    goto LABEL_46;
  }

  if (OUTLINED_FUNCTION_6_29())
  {
    goto LABEL_46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0);
  if (OUTLINED_FUNCTION_23_11())
  {
    v3 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34C8);
    OUTLINED_FUNCTION_16_13();
    v4 = sub_2705D7E74();
    v48 = v3;
    v49 = 0;
    v47 = v3 + 64;
    OUTLINED_FUNCTION_0_35();
    v50 = v6 & v5;
    OUTLINED_FUNCTION_18_10();
    while (v50)
    {
      v7 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v8 = v49;
LABEL_28:
      v11 = v7 | (v8 << 6);
      v12 = (*(v48 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_2703D7F04(*(v48 + 56) + 32 * v11, &v52);

      v15 = sub_27046B3CC(&v52);
      if (v1)
      {

        __swift_destroy_boxed_opaque_existential_1(&v52);
        goto LABEL_46;
      }

      v18 = v15;
      v19 = v16;
      v20 = v17;
      __swift_destroy_boxed_opaque_existential_1(&v52);
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_7_22(v21);
      v22 = (v4[6] + 16 * v11);
      *v22 = v14;
      v22[1] = v13;
      v23 = v4[7] + 24 * v11;
      *v23 = v18;
      *(v23 + 8) = v19;
      *(v23 + 16) = v20;
      v24 = v4[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_50;
      }

      v4[2] = v26;
    }

    v9 = v49;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v8 >= v2)
      {
        goto LABEL_39;
      }

      v10 = *(v47 + 8 * v8);
      ++v9;
      if (v10)
      {
        v7 = __clz(__rbit64(v10));
        v49 = v8;
        v50 = (v10 - 1) & v10;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D8);
    if (!OUTLINED_FUNCTION_23_11())
    {
      sub_27046C2B0();
      if (OUTLINED_FUNCTION_6_29())
      {
      }

      else
      {
        v41 = OUTLINED_FUNCTION_25_11();
        __swift_project_boxed_opaque_existential_1(v41, v42);
        swift_getDynamicType();
        v43 = sub_2705D8504();
        v45 = v44;
        sub_27046C2F4();
        swift_allocError();
        *v46 = v43;
        v46[1] = v45;
        swift_willThrow();
      }

      goto LABEL_46;
    }

    v51 = v55;
    v27 = *(v55 + 16);
    if (!v27)
    {

      goto LABEL_46;
    }

    v53 = MEMORY[0x277D84F90];
    sub_2704ADD74(0, v27, 0);
    v28 = 0;
    v29 = v53;
    v30 = v51 + 32;
    while (v28 < *(v51 + 16))
    {
      sub_2703D7F04(v30, &v52);
      v31 = sub_27046B3CC(&v52);
      if (v1)
      {
        __swift_destroy_boxed_opaque_existential_1(&v52);

        goto LABEL_46;
      }

      v34 = v31;
      v35 = v32;
      v36 = v33;
      __swift_destroy_boxed_opaque_existential_1(&v52);
      v53 = v29;
      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_2704ADD74(v37 > 1, v38 + 1, 1);
        v39 = v38 + 1;
        v29 = v53;
      }

      ++v28;
      *(v29 + 16) = v39;
      v40 = v29 + 24 * v38;
      *(v40 + 32) = v34;
      *(v40 + 40) = v35;
      *(v40 + 48) = v36;
      v30 += 32;
      if (v27 == v28)
      {
LABEL_39:

        goto LABEL_46;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_27046B978(uint64_t a1)
{
  sub_2703D7F04(a1, v37);
  if (OUTLINED_FUNCTION_5_34() || OUTLINED_FUNCTION_5_34())
  {
    goto LABEL_20;
  }

  if (OUTLINED_FUNCTION_5_34())
  {
    goto LABEL_19;
  }

  if (OUTLINED_FUNCTION_5_34() || OUTLINED_FUNCTION_5_34() || OUTLINED_FUNCTION_5_34())
  {
    goto LABEL_20;
  }

  if (OUTLINED_FUNCTION_5_34() || OUTLINED_FUNCTION_5_34())
  {
    goto LABEL_19;
  }

  if (OUTLINED_FUNCTION_5_34() || OUTLINED_FUNCTION_5_34() || OUTLINED_FUNCTION_5_34())
  {
    goto LABEL_20;
  }

  if (OUTLINED_FUNCTION_5_34())
  {
    goto LABEL_19;
  }

  if (OUTLINED_FUNCTION_5_34())
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v37);
    return;
  }

  if (OUTLINED_FUNCTION_5_34() || OUTLINED_FUNCTION_5_34())
  {
LABEL_19:
    OUTLINED_FUNCTION_14_22();
    goto LABEL_20;
  }

  if (OUTLINED_FUNCTION_5_34())
  {
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0);
  if (!OUTLINED_FUNCTION_22_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D8);
    if (OUTLINED_FUNCTION_22_10())
    {
      v20 = *(v36 + 16);
      if (v20)
      {
        v35 = MEMORY[0x277D84F90];
        sub_2704ADD74(0, v20, 0);
        v21 = v35;
        v22 = v36 + 32;
        do
        {
          sub_2703D7F04(v22, &v34);
          v23 = sub_27046B978(&v34);
          v25 = v24;
          v27 = v26;
          __swift_destroy_boxed_opaque_existential_1(&v34);
          v35 = v21;
          v29 = *(v21 + 16);
          v28 = *(v21 + 24);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            sub_2704ADD74(v28 > 1, v29 + 1, 1);
            v30 = v29 + 1;
            v21 = v35;
          }

          *(v21 + 16) = v30;
          v31 = v21 + 24 * v29;
          *(v31 + 32) = v23;
          *(v31 + 40) = v25;
          *(v31 + 48) = v27;
          v22 += 32;
          --v20;
        }

        while (v20);
LABEL_39:
      }

      else
      {
      }
    }

    else
    {
      sub_27046C2B0();
      if (OUTLINED_FUNCTION_5_34())
      {
      }
    }

    goto LABEL_20;
  }

  v1 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34C8);
  v2 = sub_2705D7E74();
  OUTLINED_FUNCTION_0_35();
  v5 = v4 & v3;
  v32 = (v6 + 63) >> 6;
  v33 = 0;
  if ((v4 & v3) != 0)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v8 = v33;
LABEL_30:
      v11 = v7 | (v8 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_2703D7F04(*(v1 + 56) + 32 * v11, &v34);

      sub_27046B978(&v34);
      __swift_destroy_boxed_opaque_existential_1(&v34);
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_7_22(v15);
      v16 = (v2[6] + 16 * v11);
      *v16 = v14;
      v16[1] = v13;
      OUTLINED_FUNCTION_24_13(v2[7]);
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      v2[2] = v19;
      if (!v5)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v9 = v33;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v8 >= v32)
      {
        goto LABEL_39;
      }

      v10 = *(v1 + 64 + 8 * v8);
      ++v9;
      if (v10)
      {
        v7 = __clz(__rbit64(v10));
        v5 = (v10 - 1) & v10;
        v33 = v8;
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_27046BE40(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34C8);
  v3 = 0;
  v30 = a1;
  v31 = sub_2705D7E74();
  OUTLINED_FUNCTION_0_35();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v29 = a1 + 64;
  if (v6)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v33 = (v6 - 1) & v6;
LABEL_8:
      v13 = v9 | (v3 << 6);
      v14 = (*(v30 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      sub_2703D7F04(*(v30 + 56) + 32 * v13, v32);

      sub_27046B3CC(v32);
      if (v1)
      {
        break;
      }

      v20 = v17;
      v21 = v18;
      v22 = v19;
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_7_22(v23);
      v24 = (v31[6] + 16 * v13);
      *v24 = v15;
      v24[1] = v16;
      v25 = v31[7] + 24 * v13;
      *v25 = v20;
      *(v25 + 8) = v21;
      *(v25 + 16) = v22;
      v26 = v31[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_15;
      }

      v31[2] = v28;
      v6 = v33;
      if (!v33)
      {
        goto LABEL_3;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
LABEL_3:
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
        return;
      }

      ++v10;
      if (*(v29 + 8 * v3))
      {
        OUTLINED_FUNCTION_20_10();
        v33 = v12 & v11;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_27046BFF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34C8);
  v3 = 0;
  sub_2705D7E74();
  v23 = a1;
  v4 = a1 + 64;
  OUTLINED_FUNCTION_0_35();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_18_10();
  if (v7)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_8:
      v12 = v8 | (v3 << 6);
      v13 = (*(v23 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_2703D7F04(*(v23 + 56) + 32 * v12, v24);

      sub_27046B978(v24);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_7_22(v16);
      v18 = (*(v17 + 48) + 16 * v12);
      *v18 = v14;
      v18[1] = v15;
      OUTLINED_FUNCTION_24_13(*(v17 + 56));
      v20 = *(v19 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v19 + 16) = v22;
      if (!v7)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v1)
      {
        return;
      }

      ++v9;
      if (*(v4 + 8 * v3))
      {
        OUTLINED_FUNCTION_20_10();
        v7 = v11 & v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_27046C150(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  OUTLINED_FUNCTION_0_35();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  for (i = 0; v5; v9 ^= result)
  {
    v11 = i;
LABEL_7:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = *(a2 + 56) + 24 * (v12 | (v11 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    memcpy(__dst, a1, sizeof(__dst));

    sub_2703AE9FC(v14, v15, v16);
    sub_2705D7634();

    sub_27046AF08(__dst, v14, v15, v16);
    sub_2703AE630(v14, v15, v16);
    result = sub_2705D8414();
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

      return MEMORY[0x2743A47E0](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++i;
    if (v5)
    {
      i = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_27046C2B0()
{
  result = qword_2807D34E0;
  if (!qword_2807D34E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D34E0);
  }

  return result;
}

unint64_t sub_27046C2F4()
{
  result = qword_2807D34E8;
  if (!qword_2807D34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D34E8);
  }

  return result;
}

ValueMetadata *type metadata accessor for JSONType.JSONError()
{
  return &type metadata for JSONType.JSONError;
}

{
  return &type metadata for JSONType.JSONError;
}

uint64_t OUTLINED_FUNCTION_5_34()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_29()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return sub_2705D8184();
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_24_13(uint64_t a1@<X8>)
{
  v5 = a1 + 24 * v4;
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
}

void static JSONObject.initReplacingUnmappedTypesWithNull(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27046BFF4(a1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t static JSONObject.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2705D7494();
  sub_27046BFF4(v2);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  return result;
}

id static JSONObject.== infix(_:_:)()
{
  sub_27046C720();
  sub_27046CD54();
  v1 = sub_27046C7B8(v0);

  sub_27046CA08(v1);

  v2 = sub_27046CCCC();
  sub_27046CD54();
  v4 = sub_27046C7B8(v3);

  sub_27046CA08(v4);

  v5 = sub_27046CCCC();
  v6 = [v2 isEqual_];

  return v6;
}