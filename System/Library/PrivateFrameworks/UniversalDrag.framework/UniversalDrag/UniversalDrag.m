uint64_t sub_270681768(uint64_t a1, int a2)
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

uint64_t sub_270681788(uint64_t result, int a2, int a3)
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

uint64_t sub_2706817D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2706817F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_270681838(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270681858(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2706818AC(uint64_t a1, id *a2)
{
  result = sub_2706E5A1C();
  *a2 = 0;
  return result;
}

uint64_t sub_270681924(uint64_t a1, id *a2)
{
  v3 = sub_2706E5A2C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2706819A4()
{
  sub_2706E5A3C();
  v0 = sub_2706E5A0C();

  return v0;
}

uint64_t sub_2706819DC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2706E57FC();
}

uint64_t sub_270681A28()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2706E57EC();
}

uint64_t sub_270681A80()
{
  sub_2706E65EC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2706E57EC();
  return sub_2706E660C();
}

uint64_t sub_270681B24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2706819A4();
  *a1 = result;
  return result;
}

uint64_t sub_270681B4C()
{
  v0 = sub_2706E5A3C();
  v1 = MEMORY[0x2743A5F30](v0);

  return v1;
}

uint64_t sub_270681B84()
{
  sub_2706E5A3C();
  sub_2706E5A6C();
}

uint64_t sub_270681C18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_270681C90()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_270691304(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_270681CB8(uint64_t a1)
{
  v2 = sub_2706821F4(&qword_28081C848, type metadata accessor for DocumentReadingOptionKey);
  v3 = sub_2706821F4(&qword_28081C850, type metadata accessor for DocumentReadingOptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270681D78()
{
  OUTLINED_FUNCTION_0();
  result = sub_270681DA0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_270681DA4(uint64_t a1)
{
  v2 = sub_2706821F4(&qword_28081C838, type metadata accessor for DocumentType);
  v3 = sub_2706821F4(&qword_28081C840, type metadata accessor for DocumentType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270681E60(uint64_t a1)
{
  v2 = sub_2706821F4(&qword_28081C828, type metadata accessor for DocumentAttributeKey);
  v3 = sub_2706821F4(&qword_28081C830, type metadata accessor for DocumentAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270681F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2706E5A0C();

  *a2 = v5;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_270681FFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27068201C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_27068205C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2706820F0(uint64_t a1)
{
  v2 = sub_2706821F4(&qword_28081C858, type metadata accessor for FileAttributeKey);
  v3 = sub_2706821F4(&unk_28081C860, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2706821F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27068261C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706825DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_270682648(uint64_t a1)
{
  v2 = sub_270688FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270682684(uint64_t a1)
{
  v2 = sub_270688FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706826C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766968637261 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2706E631C();

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

uint64_t sub_270682790(char a1)
{
  if (a1)
  {
    return 0x65766968637261;
  }

  else
  {
    return 1635017060;
  }
}

void sub_270682808()
{
  OUTLINED_FUNCTION_60();
  v27 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC28, &qword_2706E8D30);
  v5 = OUTLINED_FUNCTION_4(v4);
  v25 = v6;
  v26 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_38();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC30, &qword_2706E8D38);
  OUTLINED_FUNCTION_4(v24);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20]();
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC38, &qword_2706E8D40);
  OUTLINED_FUNCTION_4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20]();
  v21 = &v24 - v20;
  v22 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_270688F88();
  sub_2706E66AC();
  v23 = (v17 + 8);
  if (v27)
  {
    OUTLINED_FUNCTION_20();
    sub_270688FDC();
    OUTLINED_FUNCTION_35();
    sub_2706E608C();
    (*(v25 + 8))(v0, v26);
  }

  else
  {
    sub_270689030();
    OUTLINED_FUNCTION_35();
    sub_2706E608C();
    (*(v10 + 8))(v14, v24);
  }

  (*v23)(v21, v15);
  OUTLINED_FUNCTION_55();
}

void sub_270682A98()
{
  OUTLINED_FUNCTION_60();
  v49 = v0;
  v2 = v1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBF8, &qword_2706E8D18);
  OUTLINED_FUNCTION_4(v48);
  v46 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20]();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC00, &qword_2706E8D20);
  OUTLINED_FUNCTION_4(v6);
  v45 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20]();
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC08, &qword_2706E8D28);
  OUTLINED_FUNCTION_4(v12);
  v47 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_38();
  v16 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_270688F88();
  v17 = v49;
  sub_2706E668C();
  if (v17)
  {
    goto LABEL_8;
  }

  v43 = v6;
  v44 = v11;
  v49 = v2;
  v18 = sub_2706E606C();
  sub_2706974F8(v18, 0);
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v27 = sub_2706E5E8C();
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v29 = &type metadata for PasteboardRepresentationFormat;
    sub_2706E600C();
    OUTLINED_FUNCTION_59();
    v31 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_16(v27);
    (*(v32 + 104))(v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    v33 = *(v47 + 8);
    v34 = OUTLINED_FUNCTION_29();
    v35(v34);
    v2 = v49;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_9:
    OUTLINED_FUNCTION_55();
    return;
  }

  v42 = 0;
  if (v20 < (v21 >> 1))
  {
    v22 = *(v19 + v20);
    sub_270698610(v20 + 1);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (v22)
      {
        LODWORD(v45) = v22;
        OUTLINED_FUNCTION_20();
        sub_270688FDC();
        OUTLINED_FUNCTION_49();
        swift_unknownObjectRelease();
        v37 = *(v46 + 8);
        v38 = OUTLINED_FUNCTION_43();
        v39(v38);
      }

      else
      {
        sub_270689030();
        v36 = v44;
        OUTLINED_FUNCTION_49();
        swift_unknownObjectRelease();
        (*(v45 + 8))(v36, v43);
      }

      v40 = OUTLINED_FUNCTION_25();
      v41(v40);
      __swift_destroy_boxed_opaque_existential_1(v49);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_270682EE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000002706EF4F0 == a2;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000002706EF510 == a2;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000002706EF530 == a2;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000002706EF550 == a2;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001DLL && 0x80000002706EF570 == a2;
          if (v9 || (sub_2706E631C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x80000002706EF590 == a2;
            if (v10 || (sub_2706E631C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000020 && 0x80000002706EF5B0 == a2;
              if (v11 || (sub_2706E631C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000002706EF5E0 == a2;
                if (v12 || (sub_2706E631C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000017 && 0x80000002706EF600 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_2706E631C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_2706831A4(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
    case 8:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706832B4()
{
  OUTLINED_FUNCTION_37();
  v1 = v1 && v0 == 0xE200000000000000;
  if (v1)
  {

    v3 = 0;
  }

  else
  {
    v2 = sub_2706E631C();

    v3 = v2 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_270683344()
{
  sub_2706E65EC();
  MEMORY[0x2743A6A60](0);
  return sub_2706E660C();
}

uint64_t sub_270683388(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2706833F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 12639 && a2 == 0xE200000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 12895 && a2 == 0xE200000000000000;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 13151 && a2 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2706E631C();

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

uint64_t sub_270683534()
{
  OUTLINED_FUNCTION_37();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_15() & 1) != 0))
  {

    return 0;
  }

  else if (v4 == 12639 && v0 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15();

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

uint64_t sub_2706835CC(char a1)
{
  sub_2706E65EC();
  MEMORY[0x2743A6A60](a1 & 1);
  return sub_2706E660C();
}

uint64_t sub_270683614()
{
  OUTLINED_FUNCTION_37();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_15() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 12639 && v0 == 0xE200000000000000;
    if (v6 || (OUTLINED_FUNCTION_15() & 1) != 0)
    {

      return 1;
    }

    else if (v4 == 12895 && v0 == 0xE200000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_15();

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

uint64_t sub_2706836D8(unsigned __int8 a1)
{
  sub_2706E65EC();
  MEMORY[0x2743A6A60](a1);
  return sub_2706E660C();
}

void sub_270683720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v24;
  a20 = v25;
  v303 = v20;
  v304 = v21;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CB80, &qword_2706E8CC8);
  OUTLINED_FUNCTION_2(v28, &a16);
  v287[9] = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CB88, &qword_2706E8CD0);
  OUTLINED_FUNCTION_2(v34, &a14);
  v287[8] = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CB90, &qword_2706E8CD8);
  OUTLINED_FUNCTION_2(v40, &a10);
  v287[5] = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CB98, &qword_2706E8CE0);
  OUTLINED_FUNCTION_2(v46, &a12);
  v287[7] = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBA0, &qword_2706E8CE8);
  OUTLINED_FUNCTION_2(v52, &a11);
  v287[6] = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBA8, &qword_2706E8CF0);
  OUTLINED_FUNCTION_2(v58, v309);
  v287[4] = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v63);
  v297 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_16(v297);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_24();
  v301 = v67;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_17();
  v299 = v69;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_17();
  v295 = v71;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_17();
  v298 = v73;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_17();
  v300 = v75;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v76);
  v296 = v287 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBB0, &qword_2706E8CF8);
  OUTLINED_FUNCTION_2(v78, &v307);
  v287[3] = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBB8, &qword_2706E8D00);
  OUTLINED_FUNCTION_2(v84, &v305);
  v287[2] = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBC0, &qword_2706E8D08);
  OUTLINED_FUNCTION_2(v90, &v303);
  v287[1] = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v95);
  v96 = sub_2706E576C();
  v305 = OUTLINED_FUNCTION_4(v96);
  v306 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v305);
  OUTLINED_FUNCTION_24();
  v291 = v100;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_17();
  v290 = v102;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_17();
  v288 = v104;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_17();
  v289 = v106;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_17();
  v292 = v108;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_17();
  v293 = v110;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_17();
  v294 = v112;
  OUTLINED_FUNCTION_14();
  v114 = MEMORY[0x28223BE20](v113);
  v116 = v287 - v115;
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_53();
  MEMORY[0x28223BE20](v117);
  v119 = v287 - v118;
  v120 = type metadata accessor for PasteboardMessage();
  OUTLINED_FUNCTION_16(v120);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v123);
  v125 = v287 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBC8, &qword_2706E8D10);
  OUTLINED_FUNCTION_4(v308);
  v302 = v126;
  v128 = *(v127 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_38();
  v130 = v27[4];
  v131 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_270686948();
  v307 = v22;
  sub_2706E66AC();
  sub_270688CD4(v303, v125);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v196 = v305;
      v195 = v306;
      (*(v306 + 32))(v23, v125, v305);
      OUTLINED_FUNCTION_31_0();
      sub_270687690();
      v198 = v307;
      v197 = v308;
      sub_2706E608C();
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v199, v200);
      sub_2706E60DC();
      OUTLINED_FUNCTION_11(&v294);
      v201 = OUTLINED_FUNCTION_43();
      v202(v201);
      (*(v195 + 8))(v23, v196);
      OUTLINED_FUNCTION_18();
      v168 = v198;
      v169 = v197;
      goto LABEL_27;
    case 2u:
      v303 = *&v125[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40) + 48)];
      v161 = v305;
      v160 = v306;
      (*(v306 + 32))(v116, v125, v305);
      LOBYTE(v309[0]) = 2;
      sub_27068763C();
      v162 = v287[14];
      OUTLINED_FUNCTION_56();
      LOBYTE(v309[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v163, v164);
      OUTLINED_FUNCTION_19();
      v165 = v287[15];
      v166 = v304;
      sub_2706E60DC();
      if (!v166)
      {
        v309[0] = v303;
        OUTLINED_FUNCTION_20();
        sub_270688E34();
        sub_2706E60DC();
        OUTLINED_FUNCTION_11(&v295);
        v242(v162, v165);
        v243 = *(v160 + 8);
        v244 = OUTLINED_FUNCTION_43();
        v245(v244);
        OUTLINED_FUNCTION_18();
        v246 = OUTLINED_FUNCTION_51();
        v247(v246);
        v248 = v303;
        goto LABEL_30;
      }

      sub_270688D9C(v303);
      OUTLINED_FUNCTION_11(&v295);
      v167(v162, v165);
      (*(v160 + 8))(v116, v161);
LABEL_7:
      OUTLINED_FUNCTION_18();
      v168 = OUTLINED_FUNCTION_51();
      goto LABEL_27;
    case 3u:
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA08, &qword_2706E7F38);
      v172 = *(v171 + 48);
      v173 = *(v171 + 64);
      v175 = v305;
      v174 = v306;
      v176 = *(v306 + 32);
      v176(v294, v125, v305);
      v176(v293, &v125[v172], v175);
      OUTLINED_FUNCTION_3();
      sub_270688D38(&v125[v173], v296, v177);
      LOBYTE(v309[0]) = 3;
      sub_2706875E8();
      v179 = v307;
      v178 = v308;
      sub_2706E608C();
      LOBYTE(v309[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v180, v181);
      OUTLINED_FUNCTION_54();
      v182 = v304;
      sub_2706E60DC();
      if (v182)
      {
        OUTLINED_FUNCTION_11(&v296);
        v183 = OUTLINED_FUNCTION_29();
        v184(v183);
        sub_270687394(v296);
        v185 = *(v174 + 8);
        v185(v293, v175);
        v185(v294, v175);
        OUTLINED_FUNCTION_18();
        v168 = v179;
        v169 = v178;
      }

      else
      {
        v249 = v174;
        OUTLINED_FUNCTION_31_0();
        v250 = v293;
        OUTLINED_FUNCTION_54();
        sub_2706E60DC();
        LOBYTE(v309[0]) = 2;
        OUTLINED_FUNCTION_1();
        sub_270688DEC(v266, v267);
        OUTLINED_FUNCTION_19();
        v268 = v296;
        sub_2706E60DC();
        v269 = v294;
        OUTLINED_FUNCTION_11(&v296);
        v270 = OUTLINED_FUNCTION_29();
        v271(v270);
        sub_270687394(v268);
        v272 = *(v249 + 8);
        v272(v250, v175);
        v272(v269, v175);
        OUTLINED_FUNCTION_18();
        v168 = v307;
        v169 = v308;
      }

      goto LABEL_27;
    case 4u:
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9F0, &qword_2706E7F30);
      v143 = v142[12];
      LODWORD(v303) = v125[v142[16]];
      v144 = &v125[v142[20]];
      v301 = *v144;
      LODWORD(v299) = v144[8];
      v146 = v305;
      v145 = v306;
      v147 = *(v306 + 32);
      v148 = v292;
      v149 = OUTLINED_FUNCTION_41();
      v150(v149);
      OUTLINED_FUNCTION_3();
      sub_270688D38(&v125[v143], v300, v151);
      LOBYTE(v309[0]) = 4;
      sub_270687540();
      v153 = v307;
      v152 = v308;
      sub_2706E608C();
      LOBYTE(v309[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v154, v155);
      OUTLINED_FUNCTION_19();
      v156 = v287[22];
      v157 = v304;
      sub_2706E60DC();
      if (v157)
      {
        OUTLINED_FUNCTION_11(&v298);
        v158 = OUTLINED_FUNCTION_51();
        v159(v158);
        sub_270687394(v300);
        (*(v145 + 8))(v148, v146);
      }

      else
      {
        v239 = v303;
        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_1();
        sub_270688DEC(v240, v241);
        OUTLINED_FUNCTION_19();
        sub_2706E60DC();
        LOBYTE(v309[0]) = v239;
        OUTLINED_FUNCTION_21();
        sub_270688F34();
        OUTLINED_FUNCTION_27();
        sub_2706E60DC();
        v264 = v156;
        v265 = v145;
        LOBYTE(v309[0]) = 3;
        sub_2706E60AC();
        v283 = v300;
        v284 = v292;
        v285 = OUTLINED_FUNCTION_7(&v298);
        v286(v285, v264);
        sub_270687394(v283);
        (*(v265 + 8))(v284, v146);
      }

      OUTLINED_FUNCTION_18();
      v168 = v153;
      v169 = v152;
      goto LABEL_27;
    case 5u:
      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9D8, &qword_2706E7F28);
      v204 = *(v203 + 48);
      v205 = &v125[*(v203 + 64)];
      v207 = *v205;
      v206 = v205[1];
      v303 = v207;
      v301 = v206;
      v209 = v305;
      v208 = v306;
      v210 = v289;
      (*(v306 + 32))(v289, v125, v305);
      OUTLINED_FUNCTION_3();
      sub_270688D38(&v125[v204], v298, v211);
      LOBYTE(v309[0]) = 5;
      sub_270687498();
      v213 = v307;
      v212 = v308;
      sub_2706E608C();
      LOBYTE(v309[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v214, v215);
      OUTLINED_FUNCTION_19();
      v216 = v304;
      sub_2706E60DC();
      if (v216)
      {
        sub_270688E88(v303, v301);
        OUTLINED_FUNCTION_11(&v299);
        v217 = OUTLINED_FUNCTION_41();
        v218(v217);
        sub_270687394(v298);
        (*(v208 + 8))(v210, v209);
        OUTLINED_FUNCTION_18();
        v168 = v213;
        v169 = v212;
        goto LABEL_27;
      }

      v254 = v303;
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_1();
      sub_270688DEC(v255, v256);
      OUTLINED_FUNCTION_19();
      sub_2706E60DC();
      v309[0] = v254;
      v275 = v301;
      v309[1] = v301;
      OUTLINED_FUNCTION_21();
      sub_270688EE0();
      OUTLINED_FUNCTION_27();
      sub_2706E60DC();
      OUTLINED_FUNCTION_11(&v299);
      v276 = OUTLINED_FUNCTION_41();
      v277(v276);
      sub_270687394(v298);
      (*(v208 + 8))(v289, v209);
      OUTLINED_FUNCTION_18();
      v278(v213, v212);
      sub_270688E88(v303, v275);
      goto LABEL_31;
    case 6u:
      v219 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9C8, &qword_2706E7F20) + 48);
      v220 = v305;
      v221 = v306;
      v222 = v288;
      (*(v306 + 32))(v288, v125, v305);
      OUTLINED_FUNCTION_3();
      sub_270688D38(&v125[v219], v295, v223);
      LOBYTE(v309[0]) = 6;
      sub_270687444();
      v224 = v307;
      v225 = v308;
      sub_2706E608C();
      LOBYTE(v309[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v226, v227);
      OUTLINED_FUNCTION_19();
      v228 = v304;
      sub_2706E60DC();
      if (v228)
      {
        OUTLINED_FUNCTION_11(&v297);
        v229 = OUTLINED_FUNCTION_43();
        v230(v229);
        sub_270687394(v295);
        (*(v221 + 8))(v222, v220);
        OUTLINED_FUNCTION_18();
        v231(v224, v225);
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_1();
      sub_270688DEC(v257, v258);
      OUTLINED_FUNCTION_19();
      v259 = v295;
      sub_2706E60DC();
      OUTLINED_FUNCTION_11(&v297);
      v260 = OUTLINED_FUNCTION_43();
      v261(v260);
      sub_270687394(v259);
      (*(v221 + 8))(v288, v220);
      OUTLINED_FUNCTION_18();
      v168 = v224;
      v169 = v225;
      goto LABEL_27;
    case 7u:
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
      OUTLINED_FUNCTION_30(v186);
      v187 = v290;
      v188(v290, v125, v22);
      OUTLINED_FUNCTION_3();
      sub_270688D38(v131 + v125, v299, v189);
      LOBYTE(v309[0]) = 7;
      sub_2706873F0();
      OUTLINED_FUNCTION_40(&a13);
      OUTLINED_FUNCTION_35();
      sub_2706E608C();
      LOBYTE(v309[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v190, v191);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_50(&a14);
      if (v21)
      {
        sub_270688D9C(v303);
        v192 = OUTLINED_FUNCTION_5(&v300);
        v193(v192);
        v194 = v299;
        goto LABEL_19;
      }

      v251 = v303;
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_1();
      sub_270688DEC(v252, v253);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_58();
      v309[0] = v251;
      OUTLINED_FUNCTION_21();
      sub_270688E34();
      OUTLINED_FUNCTION_27();
      sub_2706E60DC();
      v273 = OUTLINED_FUNCTION_5(&v300);
      v274(v273);
      sub_270687394(v299);
      (*(v119 + 1))(v290, v22);
      goto LABEL_29;
    case 8u:
      v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
      OUTLINED_FUNCTION_30(v232);
      v187 = v291;
      v233(v291, v125, v22);
      OUTLINED_FUNCTION_3();
      sub_270688D38(v131 + v125, v301, v234);
      LOBYTE(v309[0]) = 8;
      sub_2706872EC();
      OUTLINED_FUNCTION_40(&a15);
      OUTLINED_FUNCTION_35();
      sub_2706E608C();
      LOBYTE(v309[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v235, v236);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_50(&a16);
      if (v21)
      {
        sub_270688D9C(v303);
        v237 = OUTLINED_FUNCTION_5(&v301);
        v238(v237);
        v194 = v301;
LABEL_19:
        sub_270687394(v194);
        (*(v119 + 1))(v187, v22);
        OUTLINED_FUNCTION_18();
        v168 = OUTLINED_FUNCTION_44();
LABEL_27:
        v170(v168, v169);
      }

      else
      {
        v251 = v303;
        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_1();
        sub_270688DEC(v262, v263);
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_58();
        v309[0] = v251;
        OUTLINED_FUNCTION_21();
        sub_270688E34();
        OUTLINED_FUNCTION_27();
        sub_2706E60DC();
        v279 = OUTLINED_FUNCTION_5(&v301);
        v280(v279);
        sub_270687394(v301);
        (*(v119 + 1))(v291, v22);
LABEL_29:
        OUTLINED_FUNCTION_18();
        v281 = OUTLINED_FUNCTION_44();
        v282(v281);
        v248 = v251;
LABEL_30:
        sub_270688D9C(v248);
      }

LABEL_31:
      OUTLINED_FUNCTION_55();
      return;
    default:
      v133 = v305;
      v132 = v306;
      v134 = *(v306 + 32);
      v135 = OUTLINED_FUNCTION_41();
      v136(v135);
      LOBYTE(v309[0]) = 0;
      sub_2706876E4();
      OUTLINED_FUNCTION_40(&v302);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v137, v138);
      v139 = v287[11];
      sub_2706E60DC();
      v140 = OUTLINED_FUNCTION_6(&v293);
      v141(v140, v139);
      (*(v132 + 8))(v119, v133);
      goto LABEL_7;
  }
}

void sub_270684F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v262 = v20;
  v25 = v24;
  v254 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C930, &qword_2706E7EC0);
  OUTLINED_FUNCTION_2(v27, &a16);
  v239 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v253 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C938, &qword_2706E7EC8);
  OUTLINED_FUNCTION_2(v32, &a14);
  v238 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v252 = v36;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C940, &qword_2706E7ED0);
  OUTLINED_FUNCTION_4(v245);
  v255 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v250 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C948, &qword_2706E7ED8);
  OUTLINED_FUNCTION_2(v41, &a11);
  v236 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v251 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C950, &qword_2706E7EE0);
  OUTLINED_FUNCTION_2(v46, &a9);
  v237 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v257 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C958, &qword_2706E7EE8);
  OUTLINED_FUNCTION_2(v51, &v263);
  v235 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v249 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C960, &qword_2706E7EF0);
  OUTLINED_FUNCTION_2(v56, &v261);
  v233 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v248 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C968, &qword_2706E7EF8);
  OUTLINED_FUNCTION_2(v61, &v259);
  v232 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v247 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C970, &qword_2706E7F00);
  OUTLINED_FUNCTION_2(v66, &v257);
  v231 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v246 = v70;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C978, &qword_2706E7F08);
  OUTLINED_FUNCTION_4(v260);
  v256 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_12();
  (MEMORY[0x28223BE20])();
  v75 = &v225 - v74;
  v258 = type metadata accessor for PasteboardMessage();
  OUTLINED_FUNCTION_16(v258);
  v77 = *(v76 + 64);
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_24();
  v244 = v78;
  OUTLINED_FUNCTION_14();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_17();
  v243 = v79;
  OUTLINED_FUNCTION_14();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_17();
  v241 = v80;
  OUTLINED_FUNCTION_14();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_17();
  v242 = v81;
  OUTLINED_FUNCTION_14();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_17();
  v240 = v82;
  OUTLINED_FUNCTION_14();
  v83 = (MEMORY[0x28223BE20])();
  v85 = &v225 - v84;
  v86 = MEMORY[0x28223BE20](v83);
  v88 = &v225 - v87;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_53();
  v90 = MEMORY[0x28223BE20](v89);
  v92 = &v225 - v91;
  MEMORY[0x28223BE20](v90);
  v94 = &v225 - v93;
  v95 = v25[3];
  v96 = v25[4];
  v261 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v95);
  sub_270686948();
  v259 = v75;
  v97 = v262;
  sub_2706E668C();
  if (v97)
  {
    goto LABEL_10;
  }

  v227 = v21;
  v228 = v92;
  v262 = v88;
  v229 = v85;
  v230 = v94;
  v99 = v259;
  v98 = v260;
  v100 = sub_2706E606C();
  v101 = sub_270698614(v100, 0);
  v105 = v101;
  if (v103 != v104 >> 1)
  {
    v109 = v102;
    v226 = 0;
    v110 = v104 >> 1;
    v108 = v258;
    if (v103 >= (v104 >> 1))
    {
      __break(1u);
LABEL_26:
      v217 = v101;
      v218 = v110;
      swift_unknownObjectRelease();
      v219 = v240;
      v220 = v240 + v105[20];
      v221 = OUTLINED_FUNCTION_9();
      v222(v221, v95);
      v223 = OUTLINED_FUNCTION_34();
      v224(v223);
      *v220 = v217;
      *(v220 + 8) = v218 & 1;
      swift_storeEnumTagMultiPayload();
      v167 = v219;
LABEL_22:
      v165 = v261;
      v166 = v254;
    }

    else
    {
      v225 = *(v109 + v103);
      v111 = sub_270698610(v103 + 1);
      v113 = v112;
      v115 = v114;
      swift_unknownObjectRelease();
      v116 = v111;
      v117 = v255;
      if (v113 != v115 >> 1)
      {
        v106 = v99;
        v107 = v98;
        goto LABEL_9;
      }

      v95 = v226;
      switch(v225)
      {
        case 1:
          OUTLINED_FUNCTION_20();
          sub_270687690();
          OUTLINED_FUNCTION_10();
          sub_2706E576C();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v139, v140);
          v154 = v227;
          sub_2706E605C();
          v141 = v256;
          swift_unknownObjectRelease();
          v168 = OUTLINED_FUNCTION_5(&v258);
          v169(v168);
          v170 = *(v141 + 8);
          v171 = OUTLINED_FUNCTION_28();
          v172(v171);
          goto LABEL_20;
        case 2:
          OUTLINED_FUNCTION_21();
          sub_27068763C();
          OUTLINED_FUNCTION_10();
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v130, v131);
          OUTLINED_FUNCTION_36();
          v132 = v234;
          OUTLINED_FUNCTION_42();
          sub_2706E605C();
          v133 = v256;
          v153 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40) + 48);
          OUTLINED_FUNCTION_20();
          sub_270687340();
          v154 = v262;
          sub_2706E605C();
          swift_unknownObjectRelease();
          v183 = OUTLINED_FUNCTION_7(&v260);
          v184(v183, v132);
          v185 = *(v133 + 8);
          v186 = OUTLINED_FUNCTION_28();
          v187(v186);
LABEL_20:
          swift_storeEnumTagMultiPayload();
          v167 = v154;
          goto LABEL_22;
        case 3:
          HIBYTE(a10) = 3;
          sub_2706875E8();
          OUTLINED_FUNCTION_10();
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v134, v135);
          OUTLINED_FUNCTION_40(&v254);
          OUTLINED_FUNCTION_23();
          sub_2706E605C();
          v262 = v116;
          v155 = v95;
          v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA08, &qword_2706E7F38);
          v157 = *(v156 + 48);
          OUTLINED_FUNCTION_20();
          sub_2706E605C();
          v188 = *(v156 + 64);
          type metadata accessor for PasteboardDataTransferID(0);
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v189, v190);
          sub_2706E605C();
          swift_unknownObjectRelease();
          v200 = OUTLINED_FUNCTION_7(&v262);
          v201(v200, v155);
          v202 = OUTLINED_FUNCTION_34();
          v203(v202);
          goto LABEL_21;
        case 4:
          HIBYTE(a10) = 4;
          sub_270687540();
          OUTLINED_FUNCTION_10();
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v128, v129);
          OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_40(&a17);
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_42();
          sub_2706E605C();
          v262 = v116;
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9F0, &qword_2706E7F30);
          v150 = v105[12];
          type metadata accessor for PasteboardDataTransferID(0);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v151, v152);
          OUTLINED_FUNCTION_42();
          sub_2706E605C();
          v182 = v105[16];
          OUTLINED_FUNCTION_21();
          sub_270687594();
          OUTLINED_FUNCTION_35();
          OUTLINED_FUNCTION_42();
          sub_2706E605C();
          HIBYTE(a10) = 3;
          OUTLINED_FUNCTION_42();
          v101 = sub_2706E602C();
          goto LABEL_26;
        case 5:
          HIBYTE(a10) = 5;
          sub_270687498();
          OUTLINED_FUNCTION_10();
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v142, v143);
          OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_23();
          sub_2706E605C();
          v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9D8, &qword_2706E7F28);
          v173 = *(v262 + 48);
          type metadata accessor for PasteboardDataTransferID(0);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v174, v175);
          sub_2706E605C();
          v257 = v173;
          v194 = *(v262 + 64);
          OUTLINED_FUNCTION_21();
          sub_2706874EC();
          v117 = v242;
          OUTLINED_FUNCTION_35();
          sub_2706E605C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_11(&a10);
          v208 = OUTLINED_FUNCTION_44();
          v209(v208);
          v210 = OUTLINED_FUNCTION_22();
          v211(v210);
LABEL_21:
          swift_storeEnumTagMultiPayload();
          v167 = v117;
          goto LABEL_22;
        case 6:
          HIBYTE(a10) = 6;
          sub_270687444();
          OUTLINED_FUNCTION_10();
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v144, v145);
          OUTLINED_FUNCTION_36();
          sub_2706E605C();
          v146 = v256;
          v176 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9C8, &qword_2706E7F20) + 48);
          type metadata accessor for PasteboardDataTransferID(0);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v177, v178);
          sub_2706E605C();
          swift_unknownObjectRelease();
          v195 = OUTLINED_FUNCTION_39();
          v196(v195);
          (*(v146 + 8))(v259, v260);
          v197 = v241;
          swift_storeEnumTagMultiPayload();
          v167 = v197;
          goto LABEL_22;
        case 7:
          HIBYTE(a10) = 7;
          sub_2706873F0();
          OUTLINED_FUNCTION_10();
          v262 = v116;
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v136, v137);
          OUTLINED_FUNCTION_36();
          v138 = v243;
          OUTLINED_FUNCTION_45();
          v166 = v254;
          v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
          OUTLINED_FUNCTION_57(v158);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v159, v160);
          OUTLINED_FUNCTION_33();
          v255 = v138;
          v191 = *(v257 + 64);
          OUTLINED_FUNCTION_21();
          sub_270687340();
          v192 = v243;
          OUTLINED_FUNCTION_47();
          v193 = v192;
          swift_unknownObjectRelease();
          v204 = OUTLINED_FUNCTION_6(&a13);
          v205(v204, v108);
          v206 = OUTLINED_FUNCTION_22();
          v207(v206);
          goto LABEL_24;
        case 8:
          HIBYTE(a10) = 8;
          sub_2706872EC();
          OUTLINED_FUNCTION_10();
          v262 = v116;
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v147, v148);
          OUTLINED_FUNCTION_36();
          v149 = v244;
          OUTLINED_FUNCTION_45();
          v166 = v254;
          v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
          OUTLINED_FUNCTION_57(v179);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v180, v181);
          OUTLINED_FUNCTION_33();
          v255 = v149;
          v198 = *(v257 + 64);
          OUTLINED_FUNCTION_21();
          sub_270687340();
          v199 = v244;
          OUTLINED_FUNCTION_47();
          v193 = v199;
          swift_unknownObjectRelease();
          v213 = OUTLINED_FUNCTION_6(&a15);
          v214(v213, v108);
          v215 = OUTLINED_FUNCTION_22();
          v216(v215);
LABEL_24:
          swift_storeEnumTagMultiPayload();
          v167 = v193;
          v165 = v261;
          break;
        default:
          HIBYTE(a10) = 0;
          sub_2706876E4();
          OUTLINED_FUNCTION_10();
          sub_2706E576C();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v118, v119);
          v120 = v228;
          OUTLINED_FUNCTION_23();
          sub_2706E605C();
          swift_unknownObjectRelease();
          v161 = OUTLINED_FUNCTION_6(&v256);
          v162(v161, v95);
          OUTLINED_FUNCTION_52();
          v163 = OUTLINED_FUNCTION_28();
          v164(v163);
          swift_storeEnumTagMultiPayload();
          v165 = v261;
          v166 = v254;
          v167 = v120;
          break;
      }
    }

    v212 = v230;
    sub_270688D38(v167, v230, type metadata accessor for PasteboardMessage);
    sub_270688D38(v212, v166, type metadata accessor for PasteboardMessage);
    v127 = v165;
    goto LABEL_11;
  }

  v106 = v99;
  v107 = v98;
  v108 = v258;
LABEL_9:
  sub_2706E5E8C();
  swift_allocError();
  v122 = v121;
  v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
  *v122 = v108;
  sub_2706E600C();
  OUTLINED_FUNCTION_59();
  v124 = *MEMORY[0x277D84160];
  OUTLINED_FUNCTION_8();
  (*(v125 + 104))(v122);
  swift_willThrow();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_52();
  v126(v106, v107);
LABEL_10:
  v127 = v261;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v127);
  OUTLINED_FUNCTION_55();
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

uint64_t type metadata accessor for PasteboardMessage()
{
  result = qword_28081CA30;
  if (!qword_28081CA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_270686948()
{
  result = qword_28081C980;
  if (!qword_28081C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C980);
  }

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

uint64_t sub_2706869F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706826C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270686A38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270682788();
  *a1 = result;
  return result;
}

uint64_t sub_270686A60(uint64_t a1)
{
  v2 = sub_270688F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686A9C(uint64_t a1)
{
  v2 = sub_270688F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686AD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706827E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_270686B04(uint64_t a1)
{
  v2 = sub_270689030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686B40(uint64_t a1)
{
  v2 = sub_270689030();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_270686B88(_BYTE *a1@<X8>)
{
  sub_270682A98();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_270686BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270682EE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270686C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27068319C();
  *a1 = result;
  return result;
}

uint64_t sub_270686C2C(uint64_t a1)
{
  v2 = sub_270686948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686C68(uint64_t a1)
{
  v2 = sub_270686948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686CAC(uint64_t a1)
{
  v2 = sub_2706876E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686CE8(uint64_t a1)
{
  v2 = sub_2706876E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686D44()
{
  sub_2706E65EC();
  MEMORY[0x2743A6A60](0);
  return sub_2706E660C();
}

uint64_t sub_270686D84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706832B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_270686DB0(uint64_t a1)
{
  v2 = sub_270687690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686DEC(uint64_t a1)
{
  v2 = sub_270687690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686E30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270683534();
  *a1 = result;
  return result;
}

uint64_t sub_270686E58(uint64_t a1)
{
  v2 = sub_27068763C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686E94(uint64_t a1)
{
  v2 = sub_27068763C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686F08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270683614();
  *a1 = result;
  return result;
}

uint64_t sub_270686F30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706833A0();
  *a1 = result;
  return result;
}

uint64_t sub_270686F58(uint64_t a1)
{
  v2 = sub_2706872EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686F94(uint64_t a1)
{
  v2 = sub_2706872EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686FD0(uint64_t a1)
{
  v2 = sub_2706873F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27068700C(uint64_t a1)
{
  v2 = sub_2706873F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270687048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706833F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270687070@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27068352C();
  *a1 = result;
  return result;
}

uint64_t sub_270687098(uint64_t a1)
{
  v2 = sub_270687540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706870D4(uint64_t a1)
{
  v2 = sub_270687540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270687110(uint64_t a1)
{
  v2 = sub_270687498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27068714C(uint64_t a1)
{
  v2 = sub_270687498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270687188()
{
  v1 = *v0;
  sub_2706E65EC();
  MEMORY[0x2743A6A60](v1);
  return sub_2706E660C();
}

uint64_t sub_2706871CC(uint64_t a1)
{
  v2 = sub_270687444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270687208(uint64_t a1)
{
  v2 = sub_270687444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270687244(uint64_t a1)
{
  v2 = sub_2706875E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270687280(uint64_t a1)
{
  v2 = sub_2706875E8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2706872EC()
{
  result = qword_28081C990;
  if (!qword_28081C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C990);
  }

  return result;
}

unint64_t sub_270687340()
{
  result = qword_28081C9B0;
  if (!qword_28081C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9B0);
  }

  return result;
}

uint64_t sub_270687394(uint64_t a1)
{
  v2 = type metadata accessor for PasteboardDataTransferID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2706873F0()
{
  result = qword_28081C9B8;
  if (!qword_28081C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9B8);
  }

  return result;
}

unint64_t sub_270687444()
{
  result = qword_28081C9C0;
  if (!qword_28081C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9C0);
  }

  return result;
}

unint64_t sub_270687498()
{
  result = qword_28081C9D0;
  if (!qword_28081C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9D0);
  }

  return result;
}

unint64_t sub_2706874EC()
{
  result = qword_28081C9E0;
  if (!qword_28081C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9E0);
  }

  return result;
}

unint64_t sub_270687540()
{
  result = qword_28081C9E8;
  if (!qword_28081C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9E8);
  }

  return result;
}

unint64_t sub_270687594()
{
  result = qword_28081C9F8;
  if (!qword_28081C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9F8);
  }

  return result;
}

unint64_t sub_2706875E8()
{
  result = qword_28081CA00;
  if (!qword_28081CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA00);
  }

  return result;
}

unint64_t sub_27068763C()
{
  result = qword_28081CA10;
  if (!qword_28081CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA10);
  }

  return result;
}

unint64_t sub_270687690()
{
  result = qword_28081CA20;
  if (!qword_28081CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA20);
  }

  return result;
}

unint64_t sub_2706876E4()
{
  result = qword_28081CA28;
  if (!qword_28081CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasteboardMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PasteboardMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x270687898);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2706878F4(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_48(a1);
}

_BYTE *sub_270687944(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2706879E0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasteboardMessage.PasteboardRepresentationBeginCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PasteboardMessage.PasteboardRepresentationBeginCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270687BA8);
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

uint64_t getEnumTagSinglePayload for ArchiveTransferDestination.State(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_270687CA0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270687D68);
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
          result = OUTLINED_FUNCTION_46(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void sub_270687E08()
{
  sub_2706E576C();
  if (v0 <= 0x3F)
  {
    sub_270687F00();
    if (v1 <= 0x3F)
    {
      sub_270687F68();
      if (v2 <= 0x3F)
      {
        sub_270687FDC();
        if (v3 <= 0x3F)
        {
          sub_270688130(319, &qword_28081CA60);
          if (v4 <= 0x3F)
          {
            sub_2706880C0();
            if (v5 <= 0x3F)
            {
              sub_270688130(319, &qword_28081CA70);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_270687F00()
{
  if (!qword_28081CA40)
  {
    sub_2706E576C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28081CA40);
    }
  }
}

void sub_270687F68()
{
  if (!qword_28081CA48)
  {
    sub_2706E576C();
    type metadata accessor for PasteboardDataTransferID(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28081CA48);
    }
  }
}

void sub_270687FDC()
{
  if (!qword_28081CA50)
  {
    sub_2706E576C();
    type metadata accessor for PasteboardDataTransferID(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081CA58, &qword_2706E8148);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28081CA50);
    }
  }
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

void sub_2706880C0()
{
  if (!qword_28081CA68)
  {
    sub_2706E576C();
    type metadata accessor for PasteboardDataTransferID(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28081CA68);
    }
  }
}

void sub_270688130(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_2706E576C();
    type metadata accessor for PasteboardDataTransferID(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_2706881A8(uint64_t a1)
{
  *(a1 + 8) = sub_270688DEC(&qword_28081CA78, type metadata accessor for PasteboardMessage);
  result = sub_270688DEC(&qword_28081CA80, type metadata accessor for PasteboardMessage);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_270688230()
{
  result = qword_28081CA88;
  if (!qword_28081CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA88);
  }

  return result;
}

unint64_t sub_270688288()
{
  result = qword_28081CA90;
  if (!qword_28081CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA90);
  }

  return result;
}

unint64_t sub_2706882E0()
{
  result = qword_28081CA98;
  if (!qword_28081CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA98);
  }

  return result;
}

unint64_t sub_270688338()
{
  result = qword_28081CAA0;
  if (!qword_28081CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAA0);
  }

  return result;
}

unint64_t sub_270688390()
{
  result = qword_28081CAA8;
  if (!qword_28081CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAA8);
  }

  return result;
}

unint64_t sub_2706883E8()
{
  result = qword_28081CAB0;
  if (!qword_28081CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAB0);
  }

  return result;
}

unint64_t sub_270688440()
{
  result = qword_28081CAB8;
  if (!qword_28081CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAB8);
  }

  return result;
}

unint64_t sub_270688498()
{
  result = qword_28081CAC0;
  if (!qword_28081CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAC0);
  }

  return result;
}

unint64_t sub_2706884F0()
{
  result = qword_28081CAC8;
  if (!qword_28081CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAC8);
  }

  return result;
}

unint64_t sub_270688548()
{
  result = qword_28081CAD0;
  if (!qword_28081CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAD0);
  }

  return result;
}

unint64_t sub_2706885A0()
{
  result = qword_28081CAD8;
  if (!qword_28081CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAD8);
  }

  return result;
}

unint64_t sub_2706885F8()
{
  result = qword_28081CAE0;
  if (!qword_28081CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAE0);
  }

  return result;
}

unint64_t sub_270688650()
{
  result = qword_28081CAE8;
  if (!qword_28081CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAE8);
  }

  return result;
}

unint64_t sub_2706886A8()
{
  result = qword_28081CAF0;
  if (!qword_28081CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAF0);
  }

  return result;
}

unint64_t sub_270688700()
{
  result = qword_28081CAF8;
  if (!qword_28081CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAF8);
  }

  return result;
}

unint64_t sub_270688758()
{
  result = qword_28081CB00;
  if (!qword_28081CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB00);
  }

  return result;
}

unint64_t sub_2706887B0()
{
  result = qword_28081CB08;
  if (!qword_28081CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB08);
  }

  return result;
}

unint64_t sub_270688808()
{
  result = qword_28081CB10;
  if (!qword_28081CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB10);
  }

  return result;
}

unint64_t sub_270688860()
{
  result = qword_28081CB18;
  if (!qword_28081CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB18);
  }

  return result;
}

unint64_t sub_2706888B8()
{
  result = qword_28081CB20;
  if (!qword_28081CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB20);
  }

  return result;
}

unint64_t sub_270688910()
{
  result = qword_28081CB28;
  if (!qword_28081CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB28);
  }

  return result;
}

unint64_t sub_270688968()
{
  result = qword_28081CB30;
  if (!qword_28081CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB30);
  }

  return result;
}

unint64_t sub_2706889C0()
{
  result = qword_28081CB38;
  if (!qword_28081CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB38);
  }

  return result;
}

unint64_t sub_270688A18()
{
  result = qword_28081CB40;
  if (!qword_28081CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB40);
  }

  return result;
}

unint64_t sub_270688A70()
{
  result = qword_28081CB48;
  if (!qword_28081CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB48);
  }

  return result;
}

unint64_t sub_270688AC8()
{
  result = qword_28081CB50;
  if (!qword_28081CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB50);
  }

  return result;
}

unint64_t sub_270688B20()
{
  result = qword_28081CB58;
  if (!qword_28081CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB58);
  }

  return result;
}

unint64_t sub_270688B78()
{
  result = qword_28081CB60;
  if (!qword_28081CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB60);
  }

  return result;
}

unint64_t sub_270688BD0()
{
  result = qword_28081CB68;
  if (!qword_28081CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB68);
  }

  return result;
}

unint64_t sub_270688C28()
{
  result = qword_28081CB70;
  if (!qword_28081CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB70);
  }

  return result;
}

unint64_t sub_270688C80()
{
  result = qword_28081CB78;
  if (!qword_28081CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB78);
  }

  return result;
}

uint64_t sub_270688CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270688D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_16(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_270688D9C(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270688DEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_270688E34()
{
  result = qword_28081CBE0;
  if (!qword_28081CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CBE0);
  }

  return result;
}

uint64_t sub_270688E88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_270688EE0()
{
  result = qword_28081CBE8;
  if (!qword_28081CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CBE8);
  }

  return result;
}

unint64_t sub_270688F34()
{
  result = qword_28081CBF0;
  if (!qword_28081CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CBF0);
  }

  return result;
}

unint64_t sub_270688F88()
{
  result = qword_28081CC10;
  if (!qword_28081CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC10);
  }

  return result;
}

unint64_t sub_270688FDC()
{
  result = qword_28081CC18;
  if (!qword_28081CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC18);
  }

  return result;
}

unint64_t sub_270689030()
{
  result = qword_28081CC20;
  if (!qword_28081CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DragPresentationUpdate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_27068910C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706891D4);
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
          result = OUTLINED_FUNCTION_46(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270689230()
{
  result = qword_28081CC40;
  if (!qword_28081CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC40);
  }

  return result;
}

unint64_t sub_270689288()
{
  result = qword_28081CC48;
  if (!qword_28081CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC48);
  }

  return result;
}

unint64_t sub_2706892E0()
{
  result = qword_28081CC50;
  if (!qword_28081CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC50);
  }

  return result;
}

unint64_t sub_270689338()
{
  result = qword_28081CC58;
  if (!qword_28081CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC58);
  }

  return result;
}

unint64_t sub_270689390()
{
  result = qword_28081CC60;
  if (!qword_28081CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC60);
  }

  return result;
}

unint64_t sub_2706893E8()
{
  result = qword_28081CC68;
  if (!qword_28081CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC68);
  }

  return result;
}

unint64_t sub_270689440()
{
  result = qword_28081CC70;
  if (!qword_28081CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_2706E5FFC();
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_2706E631C();
}

uint64_t OUTLINED_FUNCTION_22()
{
  v2 = *(v0 + 8);
  result = *(v1 - 120);
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_28()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_30(uint64_t result)
{
  v3 = *(result + 48);
  *(v2 - 152) = *(v1 + *(result + 64));
  v4 = *(v2 - 136);
  v5 = *(*(v2 - 128) + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_2706E605C();
}

uint64_t OUTLINED_FUNCTION_34()
{
  v2 = *(v0 + 8);
  result = *(v1 - 120);
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_45()
{
  v2 = *(v0 - 256);

  return sub_2706E605C();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return sub_2706E605C();
}

uint64_t OUTLINED_FUNCTION_49()
{
  v2 = *(v0 - 144);

  return sub_2706E5FFC();
}

uint64_t OUTLINED_FUNCTION_50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 144);

  return sub_2706E60DC();
}

uint64_t OUTLINED_FUNCTION_56()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{
  *(v1 - 136) = a1;
  v3 = *(a1 + 48);

  return type metadata accessor for PasteboardDataTransferID(0);
}

uint64_t OUTLINED_FUNCTION_58()
{
  v2 = *(v0 - 200);

  return sub_2706E60DC();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return sub_2706E5E6C();
}

uint64_t sub_270689978()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_privateDragPresentation;
  v3 = *&v0[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_privateDragPresentation];
  if (!v3)
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectUnownedLoadStrong();
    v11[3] = ObjectType;
    v11[4] = &off_28806B728;
    v11[0] = v1;
    v5 = v1;
    sub_2706E2540(&v12);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v11);
    v6 = v12;
    v7 = *&v5[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy];
    if (v7)
    {
      v11[0] = v12;
      v8 = v7;
      v3 = sub_270689A8C(v11);

      sub_27068F6CC(v6);
    }

    else
    {
      sub_27068F6CC(v12);
      v3 = 0;
    }

    v9 = *&v1[v2];
    *&v1[v2] = v3;
  }

  return v3;
}

uint64_t sub_270689A8C(void **a1)
{
  v5 = sub_2706E576C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  v10 = *a1;
  v62 = MEMORY[0x277D84F90];
  v11 = sub_270690978(v1);
  if (!sub_270690A3C(v1))
  {

    v17 = 0;
    v50 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v12 = sub_2706C2200();

  if ((v12 & 0x8000000000000000) == 0)
  {
    if (!v12)
    {

      v50 = MEMORY[0x277D84F90];
      goto LABEL_44;
    }

    v57 = v10;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v58 = v14;
      v17 = v13;
      v13 = v15;
      while (1)
      {
        if (v13 >= v12)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v50 = v62;

          v17 = v13;
          goto LABEL_45;
        }

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_47;
        }

        if (v11)
        {
          v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);

          v19 = [v18 initWithInteger_];
          v20 = v19;
          if ((v11 & 0xC000000000000001) != 0)
          {
            if (!sub_2706E5F7C())
            {
              goto LABEL_17;
            }

            sub_270690D44(0, &qword_28081CEB0, 0x277D75EF0);
            swift_dynamicCast();
            v21 = v61;
          }

          else
          {
            if (!*(v11 + 16) || (v22 = sub_27068F720(v19), (v23 & 1) == 0))
            {
LABEL_17:

              goto LABEL_18;
            }

            v21 = *(*(v11 + 56) + 8 * v22);
          }

          if (v21)
          {
            break;
          }
        }

LABEL_18:
        type metadata accessor for DragPresentationItem();
        swift_allocObject();
        sub_2706A7994(v16, 0, 0.0, 0.0, 0.0, 0.0);

        MEMORY[0x2743A5F60](v24);
        OUTLINED_FUNCTION_30_0();
        if (v26)
        {
          OUTLINED_FUNCTION_28_0(v25);
          sub_2706E5B2C();
        }

        sub_2706E5B4C();

        ++v13;
        if (v15 == v12)
        {
          v50 = v62;

          if (v58)
          {
LABEL_45:
            sub_2706E575C();
            LOBYTE(v61) = 0;
            v51 = type metadata accessor for DragPresentation();
            v52 = *(v51 + 48);
            v53 = *(v51 + 52);
            swift_allocObject();
            return sub_270694FE0(v9, v50, v17, &v61);
          }

LABEL_44:
          v17 = v12 - 1;
          goto LABEL_45;
        }
      }

      [v21 previewScaledSize];
      OUTLINED_FUNCTION_26_0();
      type metadata accessor for CGImage(0);
      v59 = sub_2706E59AC();
      v27 = 0;
      if (v57 != 1)
      {
        v28 = objc_allocWithZone(MEMORY[0x277D75F00]);
        v29 = v57;
        v27 = [v28 init];
        [v27 setWindowSceneForSnapshotting_];
        sub_27068F6CC(v57);
      }

      v56 = v27;
      v30 = [v21 previewImageWithSnapshotSettings_];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 CGImage];

        if (v32)
        {
          v55 = v32;
          swift_isUniquelyReferenced_nonNull_native();
          v61 = v59;
          v33 = sub_27068F6DC(0);
          v60 = v34;
          if (__OFADD__(v61[2], (v34 & 1) == 0))
          {
            goto LABEL_50;
          }

          v35 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA8, &qword_2706E9138);
          if (sub_2706E5F5C())
          {
            v36 = sub_27068F6DC(0);
            v38 = v60;
            if ((v60 & 1) != (v37 & 1))
            {
              goto LABEL_52;
            }

            v35 = v36;
            v39 = v55;
          }

          else
          {
            v39 = v55;
            v38 = v60;
          }

          v59 = v61;
          if (v38)
          {
            v40 = v61[7];
            v41 = *(v40 + 8 * v35);
            *(v40 + 8 * v35) = v39;

            v39 = v41;
          }

          else
          {
            v61[(v35 >> 6) + 8] |= 1 << v35;
            *(v59[6] + 8 * v35) = 0;
            *(v59[7] + 8 * v35) = v39;
            v42 = v59[2];
            v43 = __OFADD__(v42, 1);
            v44 = v42 + 1;
            if (v43)
            {
              goto LABEL_51;
            }

            v59[2] = v44;
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA0, &qword_2706E9130);
      v45 = swift_allocObject();
      v46 = OUTLINED_FUNCTION_23_0(v45, xmmword_2706E8FC0);
      v46[2].n128_u64[0] = v47;
      v46[2].n128_u64[1] = 0xEB00000000776569;
      v46[3].n128_u64[0] = 0;
      v46[3].n128_u64[1] = 0;
      v46[4].n128_f64[0] = v2;
      v46[4].n128_f64[1] = v3;
      [v21 previewScaledSize];
      OUTLINED_FUNCTION_26_0();
      type metadata accessor for DragPresentationItem();
      swift_allocObject();
      sub_2706A7994(v45, v59, v2, v3, 0.0, 0.0);

      MEMORY[0x2743A5F60](v48);
      OUTLINED_FUNCTION_30_0();
      if (v26)
      {
        OUTLINED_FUNCTION_28_0(v49);
        sub_2706E5B2C();
      }

      sub_2706E5B4C();

      v14 = 1;
      if (v15 == v12)
      {
        goto LABEL_48;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_2706E652C();
  __break(1u);
  return result;
}

void sub_27068A0A4()
{
  v1 = v0;
  v2 = sub_2706E58BC();
  v3 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v3))
  {
    v4 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  v10 = OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy;
  v11 = *(v1 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy);
  if (v11)
  {
    [v11 requestDrop];
    v12 = *(v1 + v10);
    if (v12)
    {
      [v12 sawDragEndEvent];
    }
  }

  sub_2706DD768();
}

uint64_t sub_27068A294()
{
  result = sub_2706E58DC();
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

void sub_27068A354(uint64_t a1, void (*a2)(unint64_t, void *), uint64_t a3)
{
  v4 = v3;
  v7 = sub_2706E58BC();
  v8 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v8))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_29_0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  v14 = (v4 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion);
  if (*(v4 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion))
  {
    sub_2706E5F8C();
    __break(1u);
  }

  else
  {
    v15 = *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy);
    if (v15)
    {
      v35 = v15;
      v16 = sub_2706E58BC();
      v17 = sub_2706E5C1C();
      if (OUTLINED_FUNCTION_7_0(v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        v18[1] = [v35 sessionIdentifier];
        OUTLINED_FUNCTION_5_0();
        _os_log_impl(v19, v20, v21, v22, v23, 8u);
        OUTLINED_FUNCTION_8_0();
      }

      v24 = *v14;
      v25 = v14[1];
      *v14 = a2;
      v14[1] = a3;
      sub_27068F6BC(v24);

      [v35 requestDrop];
      [v35 sawDragEndEvent];
      [v35 performOffscreenDrop];
    }

    else
    {
      v26 = sub_2706E58BC();
      v27 = sub_2706E5C1C();
      if (OUTLINED_FUNCTION_7_0(v27))
      {
        v28 = OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_20_0(v28);
        OUTLINED_FUNCTION_5_0();
        _os_log_impl(v29, v30, v31, v32, v33, 2u);
        OUTLINED_FUNCTION_8_0();
      }

      type metadata accessor for Completion();
      swift_allocObject();
      v34 = sub_2706DD84C();
      a2(0xC000000000000000, v34);
    }
  }
}

void sub_27068A654()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DragForwardingCoordinator.Event(0);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  swift_unknownObjectUnownedLoadStrong();
  v42[3] = ObjectType;
  v42[4] = &off_28806B728;
  v42[0] = v1;
  v38 = v1;
  sub_2706E2540(&v40);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v42);
  v12 = v40;
  v13 = sub_2706CAFB4(v3);
  if (!v13)
  {
    v18 = 0;
    goto LABEL_15;
  }

  v14 = v13;
  v37 = v11;
  v15 = sub_2706C2200(v13);
  if (!v15)
  {

    v18 = MEMORY[0x277D84F90];
LABEL_14:
    v11 = v37;
LABEL_15:
    v24 = [v3 badgeUpdate];
    if (v24)
    {
      v25 = v24;
      v26 = sub_2706E58BC();
      v27 = sub_2706E5BEC();
      if (OUTLINED_FUNCTION_13_0(v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = [v25 badgeStyle];

        OUTLINED_FUNCTION_29_0();
        _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
        OUTLINED_FUNCTION_12_0();
      }

      else
      {

        v26 = v25;
      }

      sub_27068AA48(&v40);
      v34 = v40;
      if (v18)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v34 = 5;
      if (v18)
      {
        goto LABEL_24;
      }
    }

    if (v34 == 5)
    {
      sub_27068F6CC(v12);
LABEL_27:
      OUTLINED_FUNCTION_16_0();
      return;
    }

LABEL_24:
    if (*&v38[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_privateDragPresentation])
    {
      v40 = v18;
      v41 = v34;

      sub_270695100(&v40);
    }

    swift_unknownObjectUnownedLoadStrong();
    *v11 = v18;
    *(v11 + 8) = v34;
    swift_storeEnumTagMultiPayload();

    sub_2706E05C8(v11);
    sub_27068F6CC(v12);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_9_0();
    sub_27069126C(v11, v35);
    goto LABEL_27;
  }

  v16 = v15;
  v40 = MEMORY[0x277D84F90];
  sub_2706BF8A4(0, v15 & ~(v15 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v36 = v3;
    v17 = 0;
    v18 = v40;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2743A62C0](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = v19;
      v39 = v12;
      sub_27068A9C0(&v39, v42);

      v40 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        v23 = OUTLINED_FUNCTION_28_0(v21);
        sub_2706BF8A4(v23, v22 + 1, 1);
        v18 = v40;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      memcpy((v18 + 72 * v22 + 32), v42, 0x48uLL);
    }

    while (v16 != v17);

    goto LABEL_14;
  }

  __break(1u);
}

void *sub_27068A9C0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [v2 preview];
  v7 = v4;
  sub_27068ED74([v2 index], &v7, __src);

  return memcpy(a2, __src, 0x48uLL);
}

id sub_27068AA48@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 badgeStyle];
  if (result >= 3)
  {
    sub_2706E5E3C();
    MEMORY[0x2743A5EF0](0xD000000000000015, 0x80000002706EFAC0);
    [v2 badgeStyle];
    type metadata accessor for _UIDragMonitorSessionBadgeStyle(0);
    sub_2706E5F2C();
    result = OUTLINED_FUNCTION_33_0();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

void sub_27068ABA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion);
  if (v3)
  {
    v5 = *(v2 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion + 8);
    v6 = *(v2 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardController);

    sub_270698A58(a2);
    type metadata accessor for Completion();
    swift_allocObject();
    v7 = sub_2706DD8C4(0xD000000000000060, 0x80000002706EF8B0, 152, nullsub_1, 0);
    v3(0xF000000000000007, v7);

    sub_27068F6BC(v3);
  }

  else
  {
    oslog = sub_2706E58BC();
    v8 = sub_2706E5C1C();
    if (os_log_type_enabled(oslog, v8))
    {
      *OUTLINED_FUNCTION_15_0() = 0;
      OUTLINED_FUNCTION_31_1(&dword_270680000, v9, v10, "druid: drop completing with no outstanding pasteboard collection completion", v11, v12, v13, v14, v15, oslog);
      OUTLINED_FUNCTION_12_0();
    }
  }
}

void sub_27068AD9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for DragForwardingCoordinator.Event(0);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = sub_2706E58BC();
  v13 = sub_2706E5BEC();
  if (OUTLINED_FUNCTION_13_0(v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a2 & 1;
    _os_log_impl(&dword_270680000, v12, v13, "dragMonitorSession didConcludeDragNormally %{BOOL}d", v14, 8u);
    OUTLINED_FUNCTION_12_0();
  }

  v15 = *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy);
  *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy) = 0;

  swift_unknownObjectUnownedLoadStrong();
  if (a2)
  {
    OUTLINED_FUNCTION_34_0();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_2706E05C8(v11);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_9_0();
    sub_27069126C(v11, v17);
    OUTLINED_FUNCTION_34_0();
  }
}

id sub_27068AF78(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window] = 0;
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession] = 0;
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_dragItems] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_didBeginCompletion] = 0;
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession] = 0;
  v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_hasSeenPreviewsFromOtherSources] = 0;
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v4 = sub_2706E58DC();
  v5 = __swift_project_value_buffer(v4, qword_2808292D8);
  (*(*(v4 - 8) + 16))(&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_logger], v5, v4);
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator] = a1;
  swift_unownedRetainStrong();
  v6 = *(a1 + 32);
  swift_unownedRetain();

  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardController] = v6;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

void sub_27068B0D4()
{
  OUTLINED_FUNCTION_21_0();
  if (v3 != 1.0)
  {
    LODWORD(v51) = 0;
    v50 = 187;
    goto LABEL_22;
  }

  v4 = v0;
  v5 = v2;
  v6 = v1;
  v55 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_logger;
  v7 = sub_2706E58BC();
  v8 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v8))
  {
    v9 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_0(v9);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  v15 = MEMORY[0x277D84F90];
  sub_2706E577C();
  v16 = *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardController);
  v17 = *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator);
  swift_unownedRetainStrong();
  v18 = type metadata accessor for PasteboardDataSession(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  sub_2706CD600();
  v21 = *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession);
  *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession) = v22;

  sub_2706923C4();
  v23 = *(v6 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items);
  v24 = sub_2706C2200(v23);
  if (v24)
  {
    v25 = v24;
    v56 = v15;
    sub_2706E5EFC();
    if (v25 < 0)
    {
      __break(1u);
LABEL_20:
      LODWORD(v51) = 0;
      v50 = 211;
LABEL_22:
      OUTLINED_FUNCTION_33_0();
      __break(1u);
      return;
    }

    v52 = v17;
    v53 = v4;
    v54 = v5;
    v26 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x2743A62C0](v26, v23);
      }

      else
      {
        v27 = *(v23 + 8 * v26 + 32);
      }

      ++v26;
      v28 = objc_allocWithZone(type metadata accessor for PasteboardItemProvider_iOS());

      v29 = sub_2706A12A0();
      v30 = sub_2706A1318(v27);
      [objc_allocWithZone(MEMORY[0x277D75470]) initWithItemProvider_];

      sub_2706E5EDC();
      v31 = *(v56 + 16);
      sub_2706E5F0C();
      sub_2706E5F1C();
      sub_2706E5EEC();
    }

    while (v25 != v26);
    v15 = v56;
    v4 = v53;
    v5 = v54;
  }

  sub_270690D44(0, &qword_28081CEE8, 0x277D75F08);

  v32 = sub_27068B668();
  v33 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession;
  v34 = *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession);
  *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession) = v32;

  v35 = *(v4 + v33);
  if (v35)
  {
    [v35 setDelegate_];
  }

  v36 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_dragItems;
  swift_beginAccess();
  v37 = *(v4 + v36);
  *(v4 + v36) = v15;

  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_20;
  }

  swift_unownedRetainStrong();
  v39 = sub_2706C7E5C();
  swift_unknownObjectRelease();

  if (!v39)
  {
    goto LABEL_20;
  }

  v40 = sub_2706E58BC();
  v41 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v41))
  {
    v42 = OUTLINED_FUNCTION_15_0();
    *v42 = 0;
    _os_log_impl(&dword_270680000, v40, v41, "surrogate: create shield window", v42, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  v43 = [objc_allocWithZone(MEMORY[0x277D75DA0]) initWithWindowScene_];
  v44 = *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window);
  *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window) = v43;
  v45 = v43;

  [v45 setWindowLevel_];
  OUTLINED_FUNCTION_19_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_19_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = objc_allocWithZone(type metadata accessor for ShieldViewController());

  sub_27068D614();
  v48 = v47;
  v50 = v45;
  v51 = MEMORY[0x28223BE20](v47);

  sub_27068BC58(sub_270690B04, &v49, sub_270690B0C, v5);

  OUTLINED_FUNCTION_16_0();
}

id sub_27068B668()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_270690D44(0, &qword_28081CF30, 0x277D75470);
  v1 = sub_2706E5B0C();

  v2 = [v0 initWithDragItems_];

  return v2;
}

void sub_27068B6F0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_2706E58DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (a4 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      (*(v9 + 16))(v12, Strong + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_logger, v8);
      v15 = a1;

      v16 = sub_2706E58BC();
      v17 = sub_2706E5C1C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_270680000, v16, v17, "surrogate: requesting drag relay session start", v18, 2u);
        MEMORY[0x2743A75B0](v18, -1, -1);
      }

      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v19 = a1;
    }

    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = *(v20 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession);
      if (v22)
      {
        v23 = *&a3;
        v24 = v22;

        [v24 beginDragFromView:a1 point:{*&a2, v23}];
        v21 = v24;
      }
    }

    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      v27 = *(v25 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator);
      swift_unownedRetainStrong();

      v28 = xmmword_2706E8FD0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      sub_2706AFBAC(&v28);
    }
  }
}

void sub_27068B984()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_2706E58BC();
    v3 = sub_2706E5C1C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_270680000, v2, v3, "DragSurrogate_iOS: readyToResumeEventsHandler", v4, 2u);
      MEMORY[0x2743A75B0](v4, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window];
    if (v6)
    {
      MEMORY[0x28223BE20](v5);
      v10[2] = v1;
      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      v8 = v6;
      v9 = v1;
      sub_27068BC58(sub_270690C8C, v10, sub_270690CC8, v7);
    }

    else
    {
    }
  }
}

void sub_27068BB10(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window);
  if (v1)
  {
    v2 = [v1 layer];
    [v2 setAllowsHitTesting_];
  }
}

uint64_t sub_27068BB7C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window;
  v3 = *(a1 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window);
  if (v3 && ([v3 removeFromSuperview], (v4 = *(a1 + v2)) != 0))
  {
    [v4 setWindowScene_];
    v5 = *(a1 + v2);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + v2) = 0;

  return sub_27068BBE8();
}

uint64_t sub_27068BBE8()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_didBeginCompletion;
  if (*(v0 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_didBeginCompletion))
  {

    sub_2706DD768();

    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

void sub_27068BC58(void (*a1)(id), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  a1([v8 begin]);
  v9 = [v4 _boundContext];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    v19 = sub_270690B54;
    v20 = v11;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    OUTLINED_FUNCTION_1_0();
    v17 = v12;
    v18 = &block_descriptor;
    v13 = _Block_copy(&v15);
    v14 = v10;

    [v8 addCommitHandler:v13 forPhase:{5, v15, v16}];
    _Block_release(v13);
    [v8 commit];
  }

  else
  {
    __break(1u);
  }
}

id sub_27068BDAC(void *a1, uint64_t a2)
{
  [a1 setRootViewController_];

  return [a1 setHidden_];
}

uint64_t sub_27068BE24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2706E58BC();
  v5 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v5))
  {
    v6 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_0(v6);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  v12 = *(v2 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_didBeginCompletion);
  *(v2 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_didBeginCompletion) = a1;
}

void sub_27068BECC()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2706E57CC();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  v15 = *v5;
  v16 = sub_2706E58BC();
  v17 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v17))
  {
    v18 = OUTLINED_FUNCTION_15_0();
    *v18 = 0;
    _os_log_impl(&dword_270680000, v16, v17, "surrogate: updatePresentation", v18, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  sub_2706E57BC();
  if (v15)
  {

    sub_27068C254(v15, v3, v1);
  }

  v19 = *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2706E579C();
    [v20 updateDragPreviewForItemsAtIndexes_];
  }

  (*(v9 + 8))(v14, v6);
  OUTLINED_FUNCTION_16_0();
}

void sub_27068C05C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);

  v5 = 0;
  v6 = v3 + 72;
  x = 0.0;
  width = 1.0;
  height = 1.0;
  y = 0.0;
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    ++v5;
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v14 = CGRectUnion(v13, *(v6 - 24));
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    v6 += 48;
  }

  type metadata accessor for CGImage(0);
  v12 = v11;

  if (sub_270693430(width + width, height + height, v12, v1, a1))
  {
    return;
  }

LABEL_8:
  __break(1u);
}

id sub_27068C178(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v3 = [objc_allocWithZone(MEMORY[0x277D75478]) initWithView_];
  return v3;
}

id sub_27068C204(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

uint64_t sub_27068C254(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 16);
  v25 = OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation;
  v27 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_dragItems;
  v4 = (a1 + 96);
  if (!v3)
  {
LABEL_20:
  }

  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      goto LABEL_16;
    }

    v6 = *(v4 - 8);
    v7 = *(v4 - 1);
    v8 = *(v5 + 16);
    if (v8 < 2)
    {
      if (!v8)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v9 = *(a2 + v25);
    if (v9)
    {
      break;
    }

LABEL_9:
    v14 = *v4;
    v15 = sub_27068F6DC(0);
    if (v16)
    {
      v17 = *(*(v5 + 56) + 8 * v15);

      v13 = v17;
      goto LABEL_11;
    }

LABEL_16:
    v4 += 9;
    if (!--v3)
    {
      goto LABEL_20;
    }
  }

  v10 = *(v9 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items);
  sub_2706C2208(*(v4 - 8), (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {

    MEMORY[0x2743A62C0](v6, v10);
  }

  else
  {
    v11 = *(v10 + 8 * v6 + 32);
  }

  sub_27068C05C(v5);
  v13 = v12;

LABEL_11:
  result = swift_beginAccess();
  v19 = *&a3[v27];
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x2743A62C0](v6);
LABEL_15:
    v21 = v20;
    swift_endAccess();
    v22 = swift_allocObject();
    *(v22 + 16) = v13;
    aBlock[4] = sub_270690CD0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27068C204;
    aBlock[3] = &block_descriptor_54;
    v23 = _Block_copy(aBlock);
    v24 = v13;

    [v21 setPreviewProvider_];
    _Block_release(v23);

    sub_2706E57AC();

    goto LABEL_16;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v20 = *(v19 + 8 * v6 + 32);
    goto LABEL_15;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_27068C52C()
{
  v1 = v0;
  v2 = sub_2706E58BC();
  v3 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v3))
  {
    v4 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  v10 = *(v1 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession);
  if (v10)
  {
    [v10 cancelDrag];
  }

  sub_2706DD768();
}

id sub_27068C614()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27068C748(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27068C780()
{
  result = sub_2706E58DC();
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

void sub_27068C850()
{
  oslog = sub_2706E58BC();
  v0 = sub_2706E5C1C();
  if (os_log_type_enabled(oslog, v0))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_31_1(&dword_270680000, v1, v2, "UIDragRelaySessionDelegate: dragRelaySessionDidBegin", v3, v4, v5, v6, v7, oslog);
    OUTLINED_FUNCTION_12_0();
  }
}

void sub_27068C93C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_2706E58BC();
  v6 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    v7[1] = a2 & 1;
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v8, v9, v10, v11, v12, 8u);
    OUTLINED_FUNCTION_8_0();
  }

  sub_27068BBE8();
  if (a2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator);
    swift_unownedRetainStrong();
    v27 = xmmword_2706E8FE0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    sub_2706AFBAC(&v27);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF68, &qword_2706E9178);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2706E8FC0;
    v15 = *MEMORY[0x277CCA068];
    *(inited + 32) = sub_2706E5A3C();
    *(inited + 40) = v16;
    *(inited + 48) = 0xD000000000000011;
    *(inited + 56) = 0x80000002706EFB00;
    v17 = sub_2706E59AC();
    v18 = *MEMORY[0x277CCA590];
    sub_2706E5A3C();
    v19 = sub_27068CB8C(v17);

    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v21 = OUTLINED_FUNCTION_22_0();
    v23 = sub_2706C82B8(v21, v22, 301031, v19);
    v24 = *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator);
    swift_unownedRetainStrong();
    *&v27 = v23;
    *(&v27 + 1) = 0x6000000000000000;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v25 = v23;
    sub_2706AFBAC(&v27);

    sub_2706911CC(v27, *(&v27 + 1));
    if (*(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession))
    {
      v26 = v25;

      sub_2706CB498();
    }

    else
    {
    }
  }
}

unint64_t sub_27068CB8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF70, &qword_2706E9180);
    v2 = sub_2706E5FCC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];

    swift_dynamicCast();
    sub_270690AAC(&v27, v29);
    sub_270690AAC(v29, v30);
    sub_270690AAC(v30, &v28);
    result = sub_27068F7E8(v14, v13);
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = sub_270690AAC(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_270690AAC(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_27068CE40()
{
  v1 = v0;
  v2 = sub_2706E58BC();
  v3 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v3))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_18_0(&dword_270680000, v4, v5, "UIDragRelaySessionDelegate: dragRelaySessionDidFail");
    OUTLINED_FUNCTION_12_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF68, &qword_2706E9178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  v7 = *MEMORY[0x277CCA068];
  *(inited + 32) = sub_2706E5A3C();
  *(inited + 40) = v8;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x80000002706EFAE0;
  v9 = sub_2706E59AC();
  v10 = *MEMORY[0x277CCA590];
  sub_2706E5A3C();
  v11 = sub_27068CB8C(v9);

  v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v13 = OUTLINED_FUNCTION_22_0();
  v15 = sub_2706C82B8(v13, v14, 301031, v11);
  v16 = *(v1 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator);
  swift_unownedRetainStrong();
  v18 = v15;
  v19 = 0x6000000000000000;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v17 = v15;
  sub_2706AFBAC(&v18);

  sub_2706911CC(v18, v19);
}

void sub_27068D04C()
{
  v1 = v0;
  v2 = sub_2706E58BC();
  v3 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v3))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_18_0(&dword_270680000, v4, v5, "UIDragRelaySessionDelegate: dragRelaySessionDidEndDataTransfer");
    OUTLINED_FUNCTION_12_0();
  }

  if (*(v1 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession))
  {
    v6 = *(v1 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession);

    sub_2706CB72C();
  }
}

void sub_27068D164(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2706CAFB4(a2);
  v6 = &unk_280829000;
  if (!v5)
  {
    v14 = 0;
LABEL_33:
    v42 = [v4 badgeUpdate];
    if (v42)
    {
      v43 = v6[85];
      v44 = v42;
      v45 = sub_2706E58BC();
      v46 = sub_2706E5BEC();
      if (OUTLINED_FUNCTION_7_0(v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = [v44 badgeStyle];

        OUTLINED_FUNCTION_29_0();
        _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
        OUTLINED_FUNCTION_12_0();
      }

      else
      {

        v45 = v44;
      }

      sub_27068AA48(&v58);
      v53 = v58;
      if (!v14)
      {
LABEL_40:
        if (v53 == 5)
        {
          return;
        }
      }
    }

    else
    {
      v53 = 5;
      if (!v14)
      {
        goto LABEL_40;
      }
    }

    v54 = *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator);
    swift_unownedRetainStrong();
    v58 = v14;
    v59 = v53;
    sub_2706AFB40(&v58);

    return;
  }

  v7 = v5;
  v55 = v4;
  v56 = v3;
  v8 = sub_2706C2200(v5);
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  do
  {
    if (v8 == v9)
    {
      goto LABEL_12;
    }

    if (v10)
    {
      v11 = MEMORY[0x2743A62C0](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v13 = [v11 isFromCurrentSession];

    ++v9;
  }

  while ((v13 & 1) != 0);
  *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_hasSeenPreviewsFromOtherSources) = 1;
LABEL_12:
  if (*(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_hasSeenPreviewsFromOtherSources) != 1)
  {

    v6 = &unk_280829000;
    v26 = sub_2706E58BC();
    v27 = sub_2706E5BEC();
    if (OUTLINED_FUNCTION_7_0(v27))
    {
      v28 = OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_20_0(v28);
      OUTLINED_FUNCTION_5_0();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_8_0();
    }

    v14 = 0;
    goto LABEL_32;
  }

  v6 = &unk_280829000;
  v15 = sub_2706E58BC();
  v16 = sub_2706E5BEC();
  if (OUTLINED_FUNCTION_13_0(v16))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_29_0();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  v22 = *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator);
  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v24 = swift_unownedRetainStrong();
    sub_2706C7DD0(__src, v24);

    swift_unknownObjectRelease();
    v25 = __src[0];
  }

  else
  {
    v25 = 1;
  }

  v34 = sub_2706C2200(v7);
  if (!v34)
  {

    sub_27068F6CC(v25);
    v14 = MEMORY[0x277D84F90];
LABEL_32:
    v4 = v55;
    goto LABEL_33;
  }

  v35 = v34;
  v58 = MEMORY[0x277D84F90];
  sub_2706BF8A4(0, v34 & ~(v34 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v14 = v58;
    do
    {
      if (v10)
      {
        v37 = MEMORY[0x2743A62C0](v36, v7);
      }

      else
      {
        v37 = *(v7 + 8 * v36 + 32);
      }

      v38 = v37;
      v57 = v25;
      sub_27068A9C0(&v57, __src);

      v58 = v14;
      v40 = *(v14 + 16);
      v39 = *(v14 + 24);
      if (v40 >= v39 >> 1)
      {
        v41 = OUTLINED_FUNCTION_28_0(v39);
        sub_2706BF8A4(v41, v40 + 1, 1);
        v14 = v58;
      }

      ++v36;
      *(v14 + 16) = v40 + 1;
      memcpy((v14 + 72 * v40 + 32), __src, 0x48uLL);
    }

    while (v35 != v36);
    sub_27068F6CC(v25);

    v3 = v56;
    v6 = &unk_280829000;
    goto LABEL_32;
  }

LABEL_45:
  __break(1u);
}

void sub_27068D614()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v24 = v2;
  v25 = v3;
  v22 = v4;
  v23 = v5;
  v6 = sub_2706E5C8C();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  v0[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler] = 0;
  v21 = OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_watchdogTimer;
  sub_270690D44(0, &qword_28081CF10, 0x277D85CA0);
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v15 = sub_2706E5C4C();
  v27 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_14_0();
  sub_270690BB8(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF20, &unk_2706E9160);
  sub_270690C38(&qword_28081CF28, &qword_28081CF20, &unk_2706E9160);
  sub_2706E5D7C();
  v18 = sub_2706E5C9C();

  (*(v9 + 8))(v14, v6);
  *&v1[v21] = v18;
  v19 = &v1[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_touchesBeganHandler];
  *v19 = v22;
  *(v19 + 1) = v23;
  v20 = &v1[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_readyToResumeEventsHandler];
  *v20 = v24;
  *(v20 + 1) = v25;
  v26.receiver = v1;
  v26.super_class = type metadata accessor for ShieldViewController();
  objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  OUTLINED_FUNCTION_16_0();
}

void sub_27068D81C(uint64_t a1)
{
  v4 = sub_2706E591C();
  v5 = OUTLINED_FUNCTION_4(v4);
  v74 = v6;
  v75 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24();
  v73 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = (&v63 - v11);
  v13 = sub_2706E596C();
  v14 = OUTLINED_FUNCTION_4(v13);
  v71 = v15;
  v72 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24();
  v67 = v18;
  MEMORY[0x28223BE20](v19);
  v69 = &v63 - v20;
  v21 = sub_2706E592C();
  v22 = OUTLINED_FUNCTION_4(v21);
  v64 = v23;
  v65 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_0();
  v28 = v27 - v26;
  v63 = sub_2706E594C();
  v29 = OUTLINED_FUNCTION_4(v63);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_0();
  v36 = v35 - v34;
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v37 = sub_2706E58DC();
  __swift_project_value_buffer(v37, qword_2808292D8);
  v38 = sub_2706E58BC();
  v39 = sub_2706E5C1C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_15_0();
    *v40 = 0;
    _os_log_impl(&dword_270680000, v38, v39, "shieldWindow: touchesBegan", v40, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  v41 = sub_27068DDB8(a1);
  v42 = v70;
  v43 = *&v70[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_watchdogTimer];
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_19_0();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_270690DD4;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_1_0();
  aBlock[2] = v46;
  aBlock[3] = &block_descriptor_66;
  v47 = _Block_copy(aBlock);

  sub_2706E593C();
  sub_27068E090();
  v66 = ObjectType;
  v68 = v43;
  sub_2706E5CAC();
  _Block_release(v47);
  (*(v64 + 8))(v28, v65);
  (*(v31 + 8))(v36, v63);

  v49 = *&v42[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_touchesBeganHandler];
  v48 = *&v42[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_touchesBeganHandler + 8];

  v50 = [v42 view];
  if (v41)
  {
    v51 = v41;
    v52 = [v42 view];
    [v51 locationInView_];
    OUTLINED_FUNCTION_26_0();

    v53 = v1;
    v54 = v2;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v49(v50, v53, v54, v41 == 0);

  v55 = v67;
  sub_2706E595C();
  *v12 = 3;
  v57 = v74;
  v56 = v75;
  (v74)[13](v12, *MEMORY[0x277D85188], v75);
  v58 = v69;
  MEMORY[0x2743A5DE0](v55, v12);
  v59 = v57[1];
  v59(v12, v56);
  v60 = v72;
  v71 = *(v71 + 8);
  (v71)(v55, v72);
  v61 = v66;
  sub_27068E168(v12);
  v74 = v41;
  v62 = v73;
  sub_27068E1DC(v73);
  MEMORY[0x2743A6160](v58, v12, v62, v61);
  v59(v62, v56);
  v59(v12, v56);
  (v71)(v58, v60);
  sub_2706E5CCC();
}

uint64_t sub_27068DDB8(uint64_t a1)
{
  v2 = sub_270690DDC(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_270690E7C(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_2706910DC(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_270691110(v7, v9, v11 & 1);
  if (v12)
  {
    sub_270691110(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_270690ED0(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_270691110(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t sub_27068DE8C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = OUTLINED_FUNCTION_22_0();
  LOBYTE(v6) = MEMORY[0x2743A6B20](v7);
  swift_unknownObjectRelease();
  if (v6)
  {
    result = swift_unknownObjectRelease();
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
    sub_2706E5F4C();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_27068DF40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler;
    if ((*(Strong + OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler) & 1) == 0)
    {
      if (qword_28081C730 != -1)
      {
        swift_once();
      }

      v3 = sub_2706E58DC();
      __swift_project_value_buffer(v3, qword_2808292D8);
      v4 = sub_2706E5BFC();
      v5 = sub_2706E58BC();
      if (os_log_type_enabled(v5, v4))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_270680000, v5, v4, "ShieldViewController: failed to receieve dropInteraction proposal in a timely fashion. Resuming HID event delivery, but the drag operation will fail.", v6, 2u);
        MEMORY[0x2743A75B0](v6, -1, -1);
      }

      v8 = *&v1[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_readyToResumeEventsHandler];
      v7 = *&v1[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_readyToResumeEventsHandler + 8];

      v8(v9);

      v1[v2] = 1;
    }
  }
}

uint64_t sub_27068E090()
{
  sub_2706E592C();
  sub_270690BB8(&qword_28081CEF8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  return sub_2706E5D7C();
}

uint64_t sub_27068E168@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_2706E591C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_27068E1DC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_2706E591C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_27068E30C()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v2 = sub_2706E5C8C();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler) = 0;
  v15 = OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_watchdogTimer;
  sub_270690D44(0, &qword_28081CF10, 0x277D85CA0);
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v11 = sub_2706E5C4C();
  OUTLINED_FUNCTION_14_0();
  sub_270690BB8(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF20, &unk_2706E9160);
  sub_270690C38(&qword_28081CF28, &qword_28081CF20, &unk_2706E9160);
  sub_2706E5D7C();
  v14 = sub_2706E5C9C();

  (*(v5 + 8))(v10, v2);
  *(v1 + v15) = v14;
  sub_2706E5F8C();
  __break(1u);
}

void sub_27068E530()
{
  v1 = v0;
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v2 = sub_2706E58DC();
  __swift_project_value_buffer(v2, qword_2808292D8);
  v3 = sub_2706E58BC();
  v4 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v4))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_18_0(&dword_270680000, v5, v6, "shieldWindow: viewDidLoad");
    OUTLINED_FUNCTION_12_0();
  }

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 layer];

  [v9 setHitTestsAsOpaque_];
  v10 = [objc_allocWithZone(MEMORY[0x277D754A0]) initWithDelegate_];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 addInteraction_];
}

void sub_27068E6E4()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v2 = sub_2706E592C();
  v3 = OUTLINED_FUNCTION_4(v2);
  v25 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  v24 = sub_2706E594C();
  v10 = OUTLINED_FUNCTION_4(v24);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v17 = v16 - v15;
  v18 = *&v0[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_watchdogTimer];
  swift_getObjectType();
  sub_2706E5CBC();
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v19 = sub_2706E5C4C();
  OUTLINED_FUNCTION_19_0();
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  v26[4] = sub_270690D3C;
  v26[5] = v20;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_1_0();
  v26[2] = v21;
  v26[3] = &block_descriptor_60;
  v22 = _Block_copy(v26);
  v23 = v1;

  sub_2706E593C();
  v26[0] = MEMORY[0x277D84F90];
  sub_270690BB8(&qword_28081CEF8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  sub_2706E5D7C();
  MEMORY[0x2743A60D0](0, v17, v9, v22);
  _Block_release(v22);

  (*(v25 + 8))(v9, v2);
  (*(v12 + 8))(v17, v24);
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_27068E998(uint64_t result)
{
  v1 = OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler;
  if ((*(result + OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler) & 1) == 0)
  {
    v2 = result;
    if (qword_28081C730 != -1)
    {
      swift_once();
    }

    v3 = sub_2706E58DC();
    __swift_project_value_buffer(v3, qword_2808292D8);
    v4 = sub_2706E58BC();
    v5 = sub_2706E5C1C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_270680000, v4, v5, "ShieldViewController: received drop interaction proposal. Calling completion handler to resume HID event delivery.", v6, 2u);
      MEMORY[0x2743A75B0](v6, -1, -1);
    }

    v8 = *(v2 + OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_readyToResumeEventsHandler);
    v7 = *(v2 + OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_readyToResumeEventsHandler + 8);

    v8(v9);

    *(v2 + v1) = 1;
  }

  return result;
}

id sub_27068EB70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShieldViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_27068EC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericGray = CGColorCreateGenericGray(1.0, 0.668);
  v6 = OUTLINED_FUNCTION_22_0();
  CGContextSetFillColorWithColor(v6, v7);

  v8 = *(a2 + 48);
  v9 = *(v8 + 16);

  v10 = 0;
  v11 = v8 + 72;
  while (v9 != v10)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    CGRectGetWidth(*(v11 - 24));
    if (a3 && *(a3 + 16) && (v12 = sub_27068F6DC(v10), (v13 & 1) != 0))
    {
      v14 = *(*(a3 + 56) + 8 * v12);
      OUTLINED_FUNCTION_25_0();
      sub_2706E5BBC();
    }

    else
    {
      v17.origin.x = OUTLINED_FUNCTION_25_0();
      CGContextFillRect(v15, v17);
    }

    v11 += 48;
    ++v10;
  }
}

void *sub_27068ED74@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v6 = v3;
  v9 = *a2;
  [v6 previewScaledSize];
  OUTLINED_FUNCTION_26_0();
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x277D75F00]);
    v12 = v9;
    v10 = [v11 init];
    [v10 setWindowSceneForSnapshotting_];
    sub_27068F6CC(v9);
  }

  type metadata accessor for CGImage(0);
  v13 = sub_2706E59AC();
  v14 = [v6 previewImageWithSnapshotSettings_];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 CGImage];

    if (v16)
    {
      v17 = v16;
      swift_isUniquelyReferenced_nonNull_native();
      v36[0] = v13;
      sub_27068F9E0(v17, 0);

LABEL_9:
      v13 = v36[0];
      goto LABEL_13;
    }
  }

  v43.width = 1.0;
  v43.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v43, 0, 0.0);
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v19 = [(UIImage *)v18 CGImage];
  if (v19)
  {
    v20 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    v36[0] = v13;
    sub_27068F9E0(v20, 0);

    goto LABEL_9;
  }

  v21 = sub_27068F6DC(0);
  if (v22)
  {
    v23 = v21;
    swift_isUniquelyReferenced_nonNull_native();
    v36[0] = v13;
    v24 = *(v13 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA8, &qword_2706E9138);
    sub_2706E5F5C();
    v25 = *(*(v13 + 56) + 8 * v23);
    sub_2706E5F6C();
  }

LABEL_13:
  [v6 previewScaledSize];
  v27 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA0, &qword_2706E9130);
  v30 = swift_allocObject();
  v31 = OUTLINED_FUNCTION_23_0(v30, xmmword_2706E8FC0);
  v31[2].n128_u64[0] = v32;
  v31[2].n128_u64[1] = 0xEB00000000776569;
  v31[3].n128_u64[0] = 0;
  v31[3].n128_u64[1] = 0;
  v31[4].n128_u64[0] = v4;
  v31[4].n128_u64[1] = v5;

  v34[80] = 0;
  v34[72] = 0;
  __src[0] = a1;
  __src[1] = v27;
  __src[2] = v29;
  LOBYTE(__src[3]) = 0;
  memset(&__src[4], 0, 17);
  __src[7] = v30;
  __src[8] = v13;
  v36[0] = a1;
  v36[1] = v27;
  v36[2] = v29;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = v30;
  v42 = v13;
  sub_27069111C(__src, v34);
  sub_270691178(v36);
  return memcpy(a3, __src, 0x48uLL);
}

uint64_t sub_27068F094(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2706E592C();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2706E594C();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2706E571C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  sub_2706E570C();
  [a1 waitForRenderingWithTimeout_];
  sub_2706E570C();
  sub_2706E56EC();
  v23 = v22;
  v33 = *(v15 + 8);
  v34 = v14;
  v33(v19, v14);
  if (v23 >= 0.1)
  {
    if (qword_28081C730 != -1)
    {
      swift_once();
    }

    v24 = sub_2706E58DC();
    __swift_project_value_buffer(v24, qword_2808292D8);
    v25 = sub_2706E58BC();
    v26 = sub_2706E5C1C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v23;
      _os_log_impl(&dword_270680000, v25, v26, "shieldWindow: waited too long (> %f seconds) for shield to render", v27, 0xCu);
      MEMORY[0x2743A75B0](v27, -1, -1);
    }
  }

  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v28 = sub_2706E5C4C();
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;
  aBlock[4] = sub_270690BB0;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2706DA6A0;
  aBlock[3] = &block_descriptor_45;
  v30 = _Block_copy(aBlock);

  sub_2706E593C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_270690BB8(&qword_28081CEF8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  v31 = v38;
  sub_2706E5D7C();
  MEMORY[0x2743A60D0](0, v13, v9, v30);
  _Block_release(v30);

  (*(v37 + 8))(v9, v31);
  (*(v35 + 8))(v13, v36);
  return (v33)(v21, v34);
}

uint64_t sub_27068F550(uint64_t (*a1)(void))
{
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v2 = sub_2706E58DC();
  __swift_project_value_buffer(v2, qword_2808292D8);
  v3 = sub_2706E58BC();
  v4 = sub_2706E5C1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_270680000, v3, v4, "shieldWindow: commit handler dispatched to MAIN QUEUE", v5, 2u);
    MEMORY[0x2743A75B0](v5, -1, -1);
  }

  return a1();
}

uint64_t sub_27068F648()
{
  sub_2706E5A3C();
  sub_2706E65EC();
  sub_2706E5A6C();
  v0 = sub_2706E660C();

  return v0;
}

uint64_t sub_27068F6BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_27068F6CC(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_27068F6DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2706E65DC();

  return sub_270690330(a1, v4);
}

unint64_t sub_27068F720(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2706E5D1C();

  return sub_270690390(a1, v5);
}

unint64_t sub_27068F764(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2706E576C();
  OUTLINED_FUNCTION_10_0();
  sub_270690BB8(v5, v6);
  OUTLINED_FUNCTION_22_0();
  v7 = sub_2706E59CC();

  return sub_270690468(a1, v7);
}

unint64_t sub_27068F7E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2706E65EC();
  sub_2706E5A6C();
  v6 = sub_2706E660C();

  return sub_270690624(a1, a2, v6);
}

unint64_t sub_27068F860(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2706E65EC();
  sub_2706E576C();
  OUTLINED_FUNCTION_10_0();
  sub_270690BB8(v4, v5);
  sub_2706E59DC();
  v6 = sub_2706E660C();

  return sub_2706906D8(a1, v6);
}

unint64_t sub_27068F904(unsigned int a1)
{
  v3 = MEMORY[0x2743A6A30](*(v1 + 40), a1, 4);

  return sub_270690820(a1, v3);
}

unint64_t sub_27068F94C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2706E5A3C();
  sub_2706E65EC();
  sub_2706E5A6C();
  v4 = sub_2706E660C();

  return sub_270690880(a1, v4);
}

void sub_27068F9E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_27068F6DC(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA8, &qword_2706E9138);
  if ((sub_2706E5F5C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_27068F6DC(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = a1;
  }

  else
  {

    sub_270690164(v9, a2, a1, v14);
  }
}

void sub_27068FB2C()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v30 = v9;
  v29 = sub_2706E576C();
  v10 = OUTLINED_FUNCTION_4(v29);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v15 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_4_0(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  if ((OUTLINED_FUNCTION_17_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = *v0;
  v23 = sub_27068F764(v8);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_11:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v20 = v23;
LABEL_5:
  v25 = *v6;
  if (v21)
  {
    v26 = *(v25 + 56);
    v27 = *(v26 + 8 * v20);
    *(v26 + 8 * v20) = v30;
    OUTLINED_FUNCTION_16_0();
  }

  else
  {
    (*(v12 + 16))(v1, v8, v29);
    sub_2706901A8(v20, v1, v30, v25);
    OUTLINED_FUNCTION_16_0();
  }
}

void sub_27068FC9C()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_2706E576C();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v13 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_4_0(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB90, &qword_2706E9188);
  if ((OUTLINED_FUNCTION_17_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v0;
  v21 = sub_27068F764(v4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v18 = v21;
LABEL_5:
  v23 = *v2;
  if (v19)
  {
    v24 = *(v23 + 56);
    v25 = *(v24 + 8 * v18);
    *(v24 + 8 * v18) = v6;
    OUTLINED_FUNCTION_16_0();
  }

  else
  {
    (*(v10 + 16))(v1, v4, v7);
    sub_2706901A8(v18, v1, v6, v23);
    OUTLINED_FUNCTION_16_0();
  }
}

_OWORD *sub_27068FE04(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_27068F7E8(a2, a3);
  OUTLINED_FUNCTION_4_0(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CED8, &qword_2706E9148);
  if ((OUTLINED_FUNCTION_17_0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_27068F7E8(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_2706E652C();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1((v19[7] + 32 * v14));
    OUTLINED_FUNCTION_34_0();

    return sub_270690AAC(v20, v21);
  }

  else
  {
    sub_270690218(v14, a2, a3, a1, v19);
    OUTLINED_FUNCTION_34_0();
  }
}

void sub_27068FF28(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_27068F904(a2);
  OUTLINED_FUNCTION_4_0(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEE0, &unk_2706E9150);
  if ((sub_2706E5F5C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = sub_27068F904(a2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  if (v13)
  {
    v17 = *(*v3 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
    OUTLINED_FUNCTION_34_0();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();

    sub_270690284(v21, v22, v23, v24);
  }
}

_OWORD *sub_270690038(_OWORD *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_27068F94C(a2);
  OUTLINED_FUNCTION_4_0(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CED0, &qword_2706E9140);
  if ((sub_2706E5F5C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_27068F94C(a2);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    type metadata accessor for FileAttributeKey(0);
    result = sub_2706E652C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v3;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_270690AAC(a1, v17);
  }

  else
  {
    sub_2706902C8(v11, a2, a1, v16);

    return a2;
  }
}

unint64_t sub_270690164(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_2706901A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6_0(v8);
  (*(v9 + 32))(v7 + *(v9 + 72) * v6, v5);
  OUTLINED_FUNCTION_27_0();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v10;
  }
}

_OWORD *sub_270690218(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_270690AAC(a4, (a5[7] + 32 * a1));
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

unint64_t sub_270690284(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_2706902C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_270690AAC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_270690330(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_270690390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2706E5D2C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_270690468(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_2706E576C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_270690BB8(&qword_28081CF40, MEMORY[0x277CC95F0]);
    v10 = sub_2706E59FC();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_270690624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2706E631C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2706906D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardDataTransferID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_270690CD8(*(v2 + 48) + *(v5 + 72) * i, v8);
    v11 = sub_2706E573C();
    sub_27069126C(v8, type metadata accessor for PasteboardDataTransferID);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_270690820(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_270690880(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_2706E5A3C();
    v8 = v7;
    if (v6 == sub_2706E5A3C() && v8 == v9)
    {

      return i;
    }

    v11 = sub_2706E631C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_270690978(void *a1)
{
  v1 = [a1 previewsByItemProviderIndex];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
  sub_270690D44(0, &qword_28081CEB0, 0x277D75EF0);
  sub_270690D84(&qword_28081CEC8, &qword_28081CEB8, 0x277CCABB0);
  v3 = sub_2706E599C();

  return v3;
}

uint64_t sub_270690A3C(void *a1)
{
  v1 = [a1 itemProviders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  v3 = sub_2706E5B1C();

  return v3;
}

_OWORD *sub_270690AAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_270690ABC()
{
  MEMORY[0x2743A7670](v0 + 16);
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_270690B14()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_270690B78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270690BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_270690C38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_270690C94()
{
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_270690CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardDataTransferID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270690D44(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_270690D84(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_270690D44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_270690DDC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2706E5D9C();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_2706E5D8C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_270690E3C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2706E5D8C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_270690E7C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2706E5DEC();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_270690ED0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2743A6240](a1, a2, v7);
      sub_270690D44(0, &qword_28081CF58, 0x277D75C68);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_270690D44(0, &qword_28081CF58, 0x277D75C68);
    if (sub_2706E5DBC() == *(a4 + 36))
    {
      sub_2706E5DCC();
      swift_dynamicCast();
      v4 = v15;
      v8 = *(a4 + 40);
      v9 = sub_2706E5D1C();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2706E5D2C();

        if (v12)
        {
          goto LABEL_18;
        }

        v9 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

BOOL sub_2706910DC(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x2743A6210);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_270691110(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_2706911CC(void *a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 0uLL:

      break;
    case 1uLL:
    case 2uLL:

      break;
    case 3uLL:
    case 4uLL:
    case 5uLL:

      break;
    default:
      return;
  }
}

uint64_t sub_27069126C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_7_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_8_0()
{

  JUMPOUT(0x2743A75B0);
}

uint64_t OUTLINED_FUNCTION_11_0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v5 = *(a4 + 48);

  return sub_2706E576C();
}

void OUTLINED_FUNCTION_12_0()
{

  JUMPOUT(0x2743A75B0);
}

BOOL OUTLINED_FUNCTION_13_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return sub_2706E5F5C();
}

void OUTLINED_FUNCTION_18_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_31_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

unint64_t OUTLINED_FUNCTION_32_0()
{
  v3 = *v0;

  return sub_27068F764(v1);
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_2706E5F8C();
}

uint64_t sub_270691628(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_27068F764(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_270691678(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_27068F860(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_2706916C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_270691700(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1();
  v3 = *(v1 + 24);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_27068F764(a1);
  if (v5)
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_270691780()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2706A377C(*(v1 + 16), 0);
  sub_270692E68(&v6, (v3 + 32), v2, v1);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_19_1();
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_27069181C()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v2 = sub_2706E576C();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_1();
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v8 = sub_2706E58DC();
  __swift_project_value_buffer(v8, qword_2808292F0);
  v9 = OUTLINED_FUNCTION_6_1(v5);
  v10(v9);
  v11 = sub_2706E58BC();
  v12 = sub_2706E5C1C();
  if (os_log_type_enabled(v11, v12))
  {
    v30 = v0;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136446210;
    sub_2706E572C();
    v15 = OUTLINED_FUNCTION_1_1();
    v16 = MEMORY[0x2743A5EC0](v15);
    v18 = v17;

    v19 = *(v5 + 8);
    v20 = OUTLINED_FUNCTION_51();
    v21(v20);
    v22 = sub_2706C83E8(v16, v18, &v32);

    *(v13 + 4) = v22;
    OUTLINED_FUNCTION_16_1(&dword_270680000, v23, v24, "%{public}s: Provider session added");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_12_0();
    v1 = v30;
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    v25 = *(v5 + 8);
    v26 = OUTLINED_FUNCTION_51();
    v27(v26);
  }

  type metadata accessor for _BasePasteboardController.DataSessionProvider();
  v28 = swift_allocObject();
  type metadata accessor for PasteboardDataTransferID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28081DB80, &qword_2706E92A8);
  sub_270693260(&qword_28081CF88, type metadata accessor for PasteboardDataTransferID);
  *(v28 + 16) = sub_2706E59AC();
  OUTLINED_FUNCTION_11_1();
  v29 = *(v1 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v1 + 32);
  sub_27068FB18();
  *(v1 + 32) = v31;
  swift_endAccess();
  OUTLINED_FUNCTION_16_0();
}

void sub_270691AD0()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v2 = sub_2706E576C();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_1();
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v8 = sub_2706E58DC();
  __swift_project_value_buffer(v8, qword_2808292F0);
  v9 = OUTLINED_FUNCTION_6_1(v5);
  v10(v9);
  v11 = sub_2706E58BC();
  v12 = sub_2706E5C1C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_2706E572C();
    v14 = OUTLINED_FUNCTION_1_1();
    v15 = MEMORY[0x2743A5EC0](v14);
    v17 = v16;

    v18 = *(v5 + 8);
    v19 = OUTLINED_FUNCTION_51();
    v20(v19);
    v21 = sub_2706C83E8(v15, v17, &v28);

    *(v13 + 4) = v21;
    OUTLINED_FUNCTION_16_1(&dword_270680000, v22, v23, "%{public}s: Provider session removed");
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    v24 = *(v5 + 8);
    v25 = OUTLINED_FUNCTION_51();
    v26(v25);
  }

  OUTLINED_FUNCTION_11_1();
  sub_2706CABB4(v1);
  swift_endAccess();
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_270691CE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  v5 = *(v2 + 32);
  if (*(v5 + 16))
  {

    v6 = sub_27068F764(a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      OUTLINED_FUNCTION_9_1();
      v9 = *(v8 + 16);

      sub_270691678(a1, v9);
    }
  }

  return OUTLINED_FUNCTION_15_1();
}

size_t sub_270691DAC()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2706A3800(*(v1 + 16), 0);
  v4 = *(sub_2706E576C() - 8);
  sub_270692FC0(v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, v1);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_19_1();
  if (!v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_270691E80()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_2706E576C();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  v17 = type metadata accessor for PasteboardDataTransferID(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_5_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  OUTLINED_FUNCTION_9_1();
  v25 = *(v0 + 32);

  v26 = sub_270691628(v2, v25);

  if (v26)
  {
    if (qword_28081C738 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v27 = sub_2706E58DC();
    __swift_project_value_buffer(v27, qword_2808292F0);
    v28 = OUTLINED_FUNCTION_3_1();
    sub_270692E04(v28, v24, v29);
    (*(v8 + 16))(v16, v2, v5);
    v30 = sub_2706E58BC();
    v31 = sub_2706E5C1C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67[0] = v64;
      *v32 = 136446466;
      sub_2706E572C();
      v33 = OUTLINED_FUNCTION_1_1();
      v34 = MEMORY[0x2743A5EC0](v33);
      v65 = v4;
      v66 = v5;
      v35 = v34;
      v37 = v36;

      sub_270687394(v24);
      v38 = sub_2706C83E8(v35, v37, v67);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2082;
      sub_2706E572C();
      v39 = OUTLINED_FUNCTION_1_1();
      v40 = MEMORY[0x2743A5EC0](v39);
      v42 = v41;

      (*(v8 + 8))(v16, v66);
      v43 = v40;
      v4 = v65;
      v44 = sub_2706C83E8(v43, v42, v67);

      *(v32 + 14) = v44;
      _os_log_impl(&dword_270680000, v30, v31, "%{public}s: Provider removed, session=%{public}s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v8 + 8))(v16, v5);
      sub_270687394(v24);
    }

    OUTLINED_FUNCTION_11_1();
    sub_2706CADB0(v4);
    swift_endAccess();
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v45 = sub_2706E58DC();
    __swift_project_value_buffer(v45, qword_2808292F0);
    v46 = OUTLINED_FUNCTION_3_1();
    sub_270692E04(v46, v21, v47);
    v48 = OUTLINED_FUNCTION_6_1(v8);
    v49(v48);
    v50 = sub_2706E58BC();
    v51 = sub_2706E5BFC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v52 = 136446466;
      sub_2706E572C();
      v53 = OUTLINED_FUNCTION_1_1();
      v54 = MEMORY[0x2743A5EC0](v53);
      v66 = v5;
      v56 = v55;

      sub_270687394(v21);
      v57 = sub_2706C83E8(v54, v56, v67);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2082;
      sub_2706E572C();
      v58 = OUTLINED_FUNCTION_1_1();
      v59 = MEMORY[0x2743A5EC0](v58);
      v61 = v60;

      (*(v8 + 8))(v13, v66);
      v62 = sub_2706C83E8(v59, v61, v67);

      *(v52 + 14) = v62;
      _os_log_impl(&dword_270680000, v50, v51, "%{public}s: Provider remove for session that is not active, session=%{public}s", v52, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v8 + 8))(v13, v5);
      sub_270687394(v21);
    }
  }

  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706923C4()
{
  OUTLINED_FUNCTION_11_1();

  v1 = *(v0 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  sub_27068FB04();
  *(v0 + 24) = v3;
  return swift_endAccess();
}

void sub_27069244C()
{
  OUTLINED_FUNCTION_21_0();
  v66 = v1;
  v2 = sub_2706E576C();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v61 = v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF78, &qword_2706E9290);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_5_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v69 = v56 - v19;
  OUTLINED_FUNCTION_9_1();
  v20 = *(v0 + 24);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  v58 = v0;
  v59 = v5 + 16;
  v70 = (v5 + 32);
  v67 = v5;
  v68 = v5 + 8;
  v64 = v20;

  v26 = 0;
  v62 = v10;
  v63 = v2;
  v60 = v17;
  v65 = v21;
  while (v24)
  {
    v27 = v26;
LABEL_11:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = v29 | (v27 << 6);
    v32 = v63;
    v31 = v64;
    v33 = v67;
    (*(v67 + 16))(v61, *(v64 + 48) + *(v67 + 72) * v30, v63);
    v34 = *(*(v31 + 56) + 8 * v30);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF80, &qword_2706E9298);
    v36 = *(v35 + 48);
    v37 = *(v33 + 32);
    v2 = v32;
    v17 = v60;
    v37();
    *(v17 + v36) = v34;
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v35);

    v10 = v62;
    v28 = v69;
LABEL_12:
    sub_270692D94(v17, v28);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF80, &qword_2706E9298);
    if (__swift_getEnumTagSinglePayload(v28, 1, v38) == 1)
    {

      OUTLINED_FUNCTION_16_0();
      return;
    }

    v39 = *(v28 + *(v38 + 48));
    (*v70)(v10, v28, v2);
    if (v39 == v66)
    {
      v42 = v58;
      OUTLINED_FUNCTION_11_1();
      v43 = *(v42 + 24);
      v44 = sub_27068F764(v10);
      v21 = v65;
      if (v45)
      {
        v46 = v44;
        v47 = v58;
        v48 = *(v58 + 24);
        LODWORD(v57) = swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v47 + 24);
        v49 = v71;
        *(v47 + 24) = 0x8000000000000000;
        v56[1] = *(v49 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF48, &qword_2706E92A0);
        sub_2706E5F5C();
        v50 = v71;
        (*(v67 + 8))(*(v71 + 48) + *(v67 + 72) * v46, v2);
        v51 = *(*(v50 + 56) + 8 * v46);

        v57 = type metadata accessor for PasteboardDataSession(0);
        OUTLINED_FUNCTION_4_1();
        sub_270693260(&qword_28081CF38, v52);
        OUTLINED_FUNCTION_15_1();
        sub_2706E5F6C();
        *(v58 + 24) = v50;
      }

      swift_endAccess();

      v53 = OUTLINED_FUNCTION_14_1();
      v54(v53);
    }

    else
    {
      v40 = OUTLINED_FUNCTION_14_1();
      v41(v40);

      v21 = v65;
    }
  }

  v28 = v69;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v25)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF80, &qword_2706E9298);
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v55);
      v24 = 0;
      goto LABEL_12;
    }

    v24 = *(v21 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2706928E0(uint64_t a1, uint64_t a2)
{
  v14[3] = type metadata accessor for PasteboardMessage();
  v14[4] = sub_270693260(&qword_28081CA80, type metadata accessor for PasteboardMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_270692E04(a1, boxed_opaque_existential_1, type metadata accessor for PasteboardMessage);
  sub_2706DA8BC(v14);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v5 = OUTLINED_FUNCTION_13_1();
  sub_270692D3C(v5, v6);
  v7 = OUTLINED_FUNCTION_13_1();
  sub_2706929FC(v7, v8, a2);
  v9 = OUTLINED_FUNCTION_13_1();
  sub_270688E88(v9, v10);
  v11 = OUTLINED_FUNCTION_13_1();
  return sub_270688E88(v11, v12);
}

void sub_2706929FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_weakLoadStrong())
  {
    v6[0] = a1;
    v6[1] = a2 | 0x2000000000000000;
    v6[2] = 0;
    v6[3] = 0;

    sub_2706C73B8(v6, sub_270690B0C, a3);
  }

  else
  {
    sub_2706DD768();
  }
}

uint64_t sub_270692AB0()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_270692AE0()
{
  sub_270692AB0();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_270692BBC()
{
  swift_weakInit();
  sub_2706E576C();
  type metadata accessor for PasteboardDataSession(0);
  OUTLINED_FUNCTION_4_1();
  sub_270693260(v1, v2);
  *(v0 + 24) = sub_2706E59AC();
  type metadata accessor for _BasePasteboardController.DataSessionProvider();
  *(v0 + 32) = sub_2706E59AC();
  return v0;
}

unint64_t sub_270692CBC(uint64_t a1, uint64_t a2)
{
  sub_2706E5E3C();

  MEMORY[0x2743A5EF0](a1, a2);
  return 0xD000000000000014;
}

uint64_t sub_270692D3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_270692D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF78, &qword_2706E9290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270692E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(*(a3(0) - 8) + 16);
  v5 = OUTLINED_FUNCTION_15_1();
  v6(v5);
  return a2;
}

uint64_t sub_270692E68(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_270692FC0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_2706E576C();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 64;
  v14 = *(a4 + 64);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 64;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_270693260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return sub_2706B8734(8);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_1()
{
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_16_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_270693430(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = ceil(a2);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = ceil(a1);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = v6;
  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 4 * v7 + 63;
  if (__OFADD__(4 * v7, 63))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = *MEMORY[0x277CBF4B8];

  v12 = CGColorSpaceCreateWithName(v11);
  if (v12)
  {
    v13 = v8 & 0xFFFFFFFFFFFFFFC0;
    v14 = (v8 & 0xFFFFFFFFFFFFFFC0) * v5;
    if (((v8 & 0xFFFFFFFFFFFFFFC0) * v5) >> 64 == v14 >> 63)
    {
      v15 = v12;

      v16 = sub_2706936E4((v8 & 0xFFFFFFFFFFFFFFC0) * v5);
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        v20 = __CGBitmapContextCreate(v16, v7, v5, v13, v15);
        if (v20)
        {
          v21 = v20;
          sub_27068EC2C(v20, a4, a5);
          if ((v14 & 0x8000000000000000) == 0)
          {
            MEMORY[0x2743A7730](*MEMORY[0x277D85F48], v18, v14, 1, 1);

            v22 = CGImageCreate(v7, v5, 8uLL, 0x20uLL, v13, v15, 0x2002u, v19, 0, 0, kCGRenderingIntentDefault);

LABEL_18:

            return v22;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v22 = 0;
      goto LABEL_18;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2706936E4(size_t a1)
{
  result = mmap(0, a1, 3, 4098, 0, 0);
  if (result)
  {
    v3 = result;
    if (!CGDataProviderCreateWithData(0, result, a1, sub_27069377C))
    {
      munmap(v3, a1);
      return 0;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CGImageRef sub_270693780()
{
  v0 = sub_2706E56AC();
  sub_2706E59AC();
  v1 = sub_2706E598C();

  v2 = CGImageSourceCreateWithData(v0, v1);

  if (!v2)
  {
    return 0;
  }

  sub_2706E59AC();
  v3 = sub_2706E598C();

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, v3);

  return ImageAtIndex;
}

uint64_t sub_270693890()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  v2 = sub_2706E5A0C();
  sub_2706E59AC();
  v3 = sub_2706E598C();

  v4 = CGImageDestinationCreateWithData(v1, v2, 1uLL, v3);

  if (v4)
  {
    if (CGImageGetBitsPerComponent(v0) < 9)
    {
      v8 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF90, &qword_2706E92B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2706E8FC0;
      v6 = *MEMORY[0x277CD2F38];
      *(inited + 32) = *MEMORY[0x277CD2F38];
      *(inited + 40) = 8;
      type metadata accessor for CFString(0);
      sub_270693A88();
      v7 = v6;
      sub_2706E59AC();
      v8 = sub_2706E598C();
    }

    CGImageDestinationAddImage(v4, v0, v8);
    CGImageDestinationFinalize(v4);
    v10 = v1;
    v9 = sub_2706E56BC();
  }

  else
  {

    return 0;
  }

  return v9;
}

unint64_t sub_270693A88()
{
  result = qword_28081C7B8;
  if (!qword_28081C7B8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C7B8);
  }

  return result;
}

void sub_270693AF8(uint64_t (*a1)(void))
{
  v3 = a1();
  v4 = sub_2706E557C();

  v5 = [v4 localizedDescription];
  sub_2706E5A3C();
  OUTLINED_FUNCTION_13_2();

  sub_2706E5E3C();
  sub_27069AC24();
  v7 = v6;

  MEMORY[0x2743A5EF0](0xD00000000000002DLL, 0x80000002706EFC90);
  v22 = v4;

  v8 = sub_2706E58BC();
  LOBYTE(v4) = sub_2706E5BFC();

  if (os_log_type_enabled(v8, v4))
  {
    v9 = OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_2();
    *v9 = 136446979;
    v10 = OUTLINED_FUNCTION_11_2();
    v12 = sub_2706C83E8(v10, v7, v11);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = [v22 domain];
    sub_2706E5A3C();
    OUTLINED_FUNCTION_9_2();

    v14 = OUTLINED_FUNCTION_11_2();
    v16 = sub_2706C83E8(v14, v2, v15);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2048;
    v17 = [v22 code];

    *(v9 + 24) = v17;
    OUTLINED_FUNCTION_4_2(v18, v19);
    OUTLINED_FUNCTION_5_2();
    *(v9 + 34) = v1;
    OUTLINED_FUNCTION_16_2(&dword_270680000, v20, v21, "%{public}s: %{public}s (%ld) %{private}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }
}

void sub_270693D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_2();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  sub_270694B50();
  v30 = swift_allocError();
  *v31 = v27;
  sub_270694BA4(v27);
  v32 = sub_2706E557C();

  v33 = [v32 localizedDescription];
  sub_2706E5A3C();
  OUTLINED_FUNCTION_13_2();

  v29();
  if (v34)
  {
    v35 = v34;
    v36 = v32;
    OUTLINED_FUNCTION_19_2();
    v37 = sub_2706E58BC();
    sub_2706E5BFC();
    OUTLINED_FUNCTION_18_1();
    if (OUTLINED_FUNCTION_17_1())
    {
      v38 = OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_8_2();
      *v38 = 136446979;
      v39 = OUTLINED_FUNCTION_14_2();
      v41 = sub_2706C83E8(v39, v35, v40);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2082;
      v42 = [v29 domain];
      sub_2706E5A3C();
      OUTLINED_FUNCTION_12_1();
      v44 = v43;

      v45 = OUTLINED_FUNCTION_14_2();
      v47 = sub_2706C83E8(v45, v44, v46);

      *(v38 + 14) = v47;
      *(v38 + 22) = 2048;
      v48 = [v29 code];

      *(v38 + 24) = v48;
      *(v38 + 32) = 2081;
      OUTLINED_FUNCTION_2_1(v49);
      OUTLINED_FUNCTION_5_2();
      *(v38 + 34) = v48;
      OUTLINED_FUNCTION_0_2();
      _os_log_impl(v50, v51, v52, v53, v54, 0x2Au);
      OUTLINED_FUNCTION_10_2();
LABEL_6:
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();

      sub_270688D9C(a9);
      OUTLINED_FUNCTION_1_2();
      return;
    }
  }

  else
  {
    v55 = v32;
    OUTLINED_FUNCTION_19_2();
    v37 = sub_2706E58BC();
    sub_2706E5BFC();
    OUTLINED_FUNCTION_18_1();
    if (OUTLINED_FUNCTION_17_1())
    {
      v56 = swift_slowAlloc();
      swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      *v56 = 136446723;
      v57 = [v29 domain];
      OUTLINED_FUNCTION_12_1();
      v59 = v58;
      sub_2706E5A3C();
      OUTLINED_FUNCTION_9_2();

      v60 = sub_2706C83E8(v22, v23, &a10);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2048;
      v61 = [v29 code];

      *(v56 + 14) = v61;
      *(v56 + 22) = 2081;
      OUTLINED_FUNCTION_2_1(v62);
      OUTLINED_FUNCTION_5_2();
      *(v56 + 24) = v61;
      OUTLINED_FUNCTION_0_2();
      _os_log_impl(v63, v64, v65, v66, v67, 0x20u);
      OUTLINED_FUNCTION_10_2();
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_1_2();

  sub_270688D9C(v68);
}

void sub_2706940CC(uint64_t (*a1)(void))
{
  v3 = a1();
  v4 = sub_2706E557C();

  v5 = [v4 localizedDescription];
  sub_2706E5A3C();
  OUTLINED_FUNCTION_13_2();

  sub_2706E5E3C();
  sub_2706CD480();
  v7 = v6;

  MEMORY[0x2743A5EF0](0xD00000000000001FLL, 0x80000002706EFC70);
  v22 = v4;

  v8 = sub_2706E58BC();
  LOBYTE(v4) = sub_2706E5BFC();

  if (os_log_type_enabled(v8, v4))
  {
    v9 = OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_2();
    *v9 = 136446979;
    v10 = OUTLINED_FUNCTION_11_2();
    v12 = sub_2706C83E8(v10, v7, v11);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = [v22 domain];
    sub_2706E5A3C();
    OUTLINED_FUNCTION_9_2();

    v14 = OUTLINED_FUNCTION_11_2();
    v16 = sub_2706C83E8(v14, v2, v15);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2048;
    v17 = [v22 code];

    *(v9 + 24) = v17;
    OUTLINED_FUNCTION_4_2(v18, v19);
    OUTLINED_FUNCTION_5_2();
    *(v9 + 34) = v1;
    OUTLINED_FUNCTION_16_2(&dword_270680000, v20, v21, "%{public}s: %{public}s (%ld) %{private}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }
}

void sub_270694348(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_2();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v28 = sub_2706E557C();
  v29 = [v28 localizedDescription];
  sub_2706E5A3C();
  OUTLINED_FUNCTION_13_2();

  v27();
  if (v30)
  {
    v31 = v30;
    v32 = v28;
    OUTLINED_FUNCTION_19_2();
    v33 = sub_2706E58BC();
    sub_2706E5BFC();
    OUTLINED_FUNCTION_18_1();
    if (OUTLINED_FUNCTION_17_1())
    {
      v34 = OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_8_2();
      *v34 = 136446979;
      v35 = OUTLINED_FUNCTION_14_2();
      v37 = sub_2706C83E8(v35, v31, v36);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v38 = [v28 domain];
      sub_2706E5A3C();
      OUTLINED_FUNCTION_12_1();
      v40 = v39;

      v41 = OUTLINED_FUNCTION_14_2();
      v43 = sub_2706C83E8(v41, v40, v42);

      *(v34 + 14) = v43;
      *(v34 + 22) = 2048;
      v44 = [v28 code];

      *(v34 + 24) = v44;
      *(v34 + 32) = 2081;
      OUTLINED_FUNCTION_2_1(v45);
      OUTLINED_FUNCTION_5_2();
      *(v34 + 34) = v44;
      OUTLINED_FUNCTION_0_2();
      _os_log_impl(v46, v47, v48, v49, v50, 0x2Au);
      OUTLINED_FUNCTION_10_2();
LABEL_6:
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();

      OUTLINED_FUNCTION_1_2();
      return;
    }
  }

  else
  {
    v51 = v28;
    OUTLINED_FUNCTION_19_2();
    v33 = sub_2706E58BC();
    sub_2706E5BFC();
    OUTLINED_FUNCTION_18_1();
    if (OUTLINED_FUNCTION_17_1())
    {
      v52 = swift_slowAlloc();
      swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      *v52 = 136446723;
      v53 = [v28 domain];
      OUTLINED_FUNCTION_12_1();
      v55 = v54;
      sub_2706E5A3C();
      OUTLINED_FUNCTION_9_2();

      v56 = sub_2706C83E8(v22, v23, &a10);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2048;
      v57 = [v28 code];

      *(v52 + 14) = v57;
      *(v52 + 22) = 2081;
      OUTLINED_FUNCTION_2_1(v58);
      OUTLINED_FUNCTION_5_2();
      *(v52 + 24) = v57;
      OUTLINED_FUNCTION_0_2();
      _os_log_impl(v59, v60, v61, v62, v63, 0x20u);
      OUTLINED_FUNCTION_10_2();
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_1_2();
}

void sub_270694664(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_2();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26();
  v28 = sub_2706E557C();

  v29 = [v28 localizedDescription];
  v30 = sub_2706E5A3C();
  v32 = v31;

  v33 = v25();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    v59 = v28;

    v37 = sub_2706E58BC();
    v38 = sub_2706E5BFC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_7_1();
      a10 = OUTLINED_FUNCTION_6_2();
      *v39 = 136446979;
      v40 = sub_2706C83E8(v35, v36, &a10);

      *(v39 + 4) = v40;
      *(v39 + 12) = 2082;
      v41 = [v59 domain];
      v42 = sub_2706E5A3C();
      v44 = v43;

      v45 = sub_2706C83E8(v42, v44, &a10);

      *(v39 + 14) = v45;
      *(v39 + 22) = 2048;
      v46 = [v59 code];

      *(v39 + 24) = v46;
      *(v39 + 32) = 2081;
      v47 = sub_2706C83E8(v30, v32, &a10);

      *(v39 + 34) = v47;
      _os_log_impl(&dword_270680000, v37, v38, "%{public}s: %{public}s (%ld) %{private}s", v39, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();

      OUTLINED_FUNCTION_1_2();
      return;
    }
  }

  else
  {
    v59 = v28;

    v37 = sub_2706E58BC();
    v48 = sub_2706E5BFC();

    if (os_log_type_enabled(v37, v48))
    {
      v49 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v49 = 136446723;
      v50 = [v59 domain];
      v51 = sub_2706E5A3C();
      v53 = v52;

      v54 = sub_2706C83E8(v51, v53, &a10);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2048;
      v55 = [v59 code];

      *(v49 + 14) = v55;
      *(v49 + 22) = 2081;
      v56 = sub_2706C83E8(v30, v32, &a10);

      *(v49 + 24) = v56;
      _os_log_impl(&dword_270680000, v37, v48, "%{public}s (%ld) %{private}s", v49, 0x20u);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_1_2();
}

uint64_t sub_270694A74(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2706E58DC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2706E58CC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_270694B50()
{
  result = qword_28081CF98;
  if (!qword_28081CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CF98);
  }

  return result;
}

unint64_t sub_270694BA4(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_2706C83E8(v1, v2, va);
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 32) = 2081;

  return sub_2706C83E8(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_5_2()
{
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_16_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x2Au);
}

BOOL OUTLINED_FUNCTION_17_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
}

uint64_t OUTLINED_FUNCTION_19_2()
{
}

uint64_t sub_270694D88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_8_3() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_8_3() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == OUTLINED_FUNCTION_12_2() && a2 == v7;
      if (v8 || (OUTLINED_FUNCTION_8_3() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7974536567646162 && a2 == 0xEA0000000000656CLL)
      {

        return 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_8_3();

        if (v10)
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

uint64_t sub_270694EA0(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x736D657469;
      break;
    case 2:
      result = OUTLINED_FUNCTION_12_2();
      break;
    case 3:
      result = 0x7974536567646162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270694F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270694D88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270694F68(uint64_t a1)
{
  v2 = sub_2706980B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270694FA4(uint64_t a1)
{
  v2 = sub_2706980B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270694FE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  v9 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle;
  *(v4 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle) = 5;
  v10 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid;
  v11 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v11);
  (*(v12 + 32))(v4 + v10, a1);
  *(v4 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items) = a2;
  *(v4 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_leaderIndex) = a3;
  *(v4 + v9) = v8;
  return v4;
}

uint64_t sub_270695090@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid;
  v4 = sub_2706E576C();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void sub_270695100(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v26 = *(a1 + 8);
  if (*a1 && (v4 = *(v3 + 16)) != 0)
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items;
    v7 = (v3 + 32);
    v8 = 0x28081C000uLL;
    v9 = qword_2808292D8;
    v27 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items;
    while (v5 < *(v3 + 16))
    {
      memcpy(__dst, v7, 0x48uLL);
      v10 = *(v2 + v6);
      if (v10 >> 62)
      {
        if (v10 < 0)
        {
          v25 = *(v2 + v6);
        }

        v11 = sub_2706E5F9C();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = __dst[0];
      if (__dst[0] >= v11)
      {
        if (*(v8 + 1840) != -1)
        {
          swift_once();
        }

        v15 = sub_2706E58DC();
        __swift_project_value_buffer(v15, v9);
        v16 = sub_2706E58BC();
        v17 = sub_2706E5C1C();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = v2;
          v19 = v3;
          v20 = v4;
          v21 = v9;
          v22 = v8;
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_270680000, v16, v17, "Received an update for an item outside our known range -- ignoring it.", v23, 2u);
          v24 = v23;
          v8 = v22;
          v9 = v21;
          v4 = v20;
          v3 = v19;
          v2 = v18;
          v6 = v27;
          MEMORY[0x2743A75B0](v24, -1, -1);
        }
      }

      else
      {
        v13 = *(v2 + v6);
        if ((v13 & 0xC000000000000001) != 0)
        {
          sub_27069111C(__dst, v28);

          MEMORY[0x2743A62C0](v12, v13);
        }

        else
        {
          if ((__dst[0] & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          if (__dst[0] >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v14 = *(v13 + 8 * __dst[0] + 32);
          sub_27069111C(__dst, v28);
        }

        sub_2706A7BB0(__dst);
        sub_270691178(__dst);
      }

      ++v5;
      v7 += 72;
      if (v4 == v5)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_24:
    if (v26 != 5)
    {
      *(v2 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle) = v26;
    }
  }
}

uint64_t sub_27069536C()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid;
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

void sub_270695410()
{
  OUTLINED_FUNCTION_60();
  v27 = v0;
  v28 = v1;
  v3 = v2;
  v4 = sub_2706E576C();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D128, &qword_2706E9A50);
  OUTLINED_FUNCTION_4(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2706980B0();
  v21 = v27;
  sub_2706E66AC();
  (*(v7 + 16))(v11, v21 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid, v4);
  OUTLINED_FUNCTION_4_3();
  sub_2706981A0(v22, v23);
  v24 = v28;
  sub_2706E60DC();
  if (v24)
  {
    (*(v7 + 8))(v11, v4);
  }

  else
  {
    (*(v7 + 8))(v11, v4);
    v29 = *(v21 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D110, &qword_2706E9A48);
    sub_270698104(&qword_28081D130, &qword_28081D138);
    sub_2706E60DC();
    v25 = *(v21 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_leaderIndex);
    OUTLINED_FUNCTION_13_3();
    sub_2706E60CC();
    v30 = *(v21 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle);
    sub_270697FE0();
    sub_2706E609C();
  }

  (*(v14 + 8))(v19, v12);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_270695734(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_270695784(a1, v6, v7, v8, v9, v10, v11, v12, v14, *v15, v15[4]);
  return v5;
}

void sub_270695784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_60();
  v14 = v13;
  v15 = sub_2706E576C();
  v16 = OUTLINED_FUNCTION_4(v15);
  v43 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D100, &qword_2706E9A40);
  OUTLINED_FUNCTION_4(v44);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  v27 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle;
  v45 = v11;
  v46 = v14;
  *(v11 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle) = 5;
  v28 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2706980B0();
  sub_2706E668C();
  if (v12)
  {
    v32 = v45;
    type metadata accessor for DragPresentation();
    v33 = *(*v32 + 48);
    v34 = *(*v32 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v27;
    v42 = v23;
    v29 = v43;
    OUTLINED_FUNCTION_4_3();
    sub_2706981A0(v30, v31);
    sub_2706E605C();
    v35 = *(v29 + 32);
    v36 = v45;
    v40 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid;
    v35(v45 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid, v21, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D110, &qword_2706E9A48);
    sub_270698104(&qword_28081D118, &qword_28081D120);
    sub_2706E605C();
    *(v36 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items) = v47;
    OUTLINED_FUNCTION_13_3();
    *(v36 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_leaderIndex) = sub_2706E604C();
    sub_270697EC0();
    v37 = v44;
    sub_2706E601C();
    v38 = OUTLINED_FUNCTION_3_2();
    v39(v38, v37);
    *(v36 + v41) = a11;
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_270695B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_270695734(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_270695C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2037411683 && a2 == 0xE400000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x776F6C6C41746F6ELL && a2 == 0xEA00000000006465;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1802398060 && a2 == 0xE400000000000000;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2706E631C();

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

uint64_t sub_270695DD0(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = 2037411683;
      break;
    case 2:
      result = 0x776F6C6C41746F6ELL;
      break;
    case 3:
      result = 1802398060;
      break;
    case 4:
      result = 0x6574656C6564;
      break;
    default:
      return result;
  }

  return result;
}