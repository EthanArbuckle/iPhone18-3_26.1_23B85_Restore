unint64_t sub_275451850()
{
  result = qword_2809DC668;
  if (!qword_2809DC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC668);
  }

  return result;
}

unint64_t sub_2754518A8()
{
  result = qword_2809DC670;
  if (!qword_2809DC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC670);
  }

  return result;
}

unint64_t sub_275451900()
{
  result = qword_2809DC678;
  if (!qword_2809DC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC678);
  }

  return result;
}

unint64_t sub_275451958()
{
  result = qword_2809DC680;
  if (!qword_2809DC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC680);
  }

  return result;
}

unint64_t sub_2754519B0()
{
  result = qword_2809DC688;
  if (!qword_2809DC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC688);
  }

  return result;
}

unint64_t sub_275451A08()
{
  result = qword_2809DC690;
  if (!qword_2809DC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC690);
  }

  return result;
}

unint64_t sub_275451A60()
{
  result = qword_2809DC698;
  if (!qword_2809DC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC698);
  }

  return result;
}

unint64_t sub_275451AB8()
{
  result = qword_2809DC6A0;
  if (!qword_2809DC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6A0);
  }

  return result;
}

unint64_t sub_275451B10()
{
  result = qword_2809DC6A8;
  if (!qword_2809DC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6A8);
  }

  return result;
}

unint64_t sub_275451B68()
{
  result = qword_2809DC6B0;
  if (!qword_2809DC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6B0);
  }

  return result;
}

unint64_t sub_275451BC0()
{
  result = qword_2809DC6B8;
  if (!qword_2809DC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6B8);
  }

  return result;
}

unint64_t sub_275451C18()
{
  result = qword_2809DC6C0;
  if (!qword_2809DC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6C0);
  }

  return result;
}

unint64_t sub_275451C70()
{
  result = qword_2809DC6C8;
  if (!qword_2809DC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_17()
{

  return sub_27546E850();
}

uint64_t OUTLINED_FUNCTION_13_11()
{
  v2 = *(v0 - 96);

  return sub_27546E8F0();
}

uint64_t Transition.ContinuousSchedule.AutomationCurveEasingStyle.id.getter()
{
  v1 = 50;
  if (*v0 != 1)
  {
    v1 = 52;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 3485232;
  }
}

uint64_t sub_275451E2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F52657261757173 && a2 == 0xEA0000000000746FLL;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657261757173 && a2 == 0xE600000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F50687472756F66 && a2 == 0xEB00000000726577)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

uint64_t sub_275451F44(char a1)
{
  if (!a1)
  {
    return 0x6F52657261757173;
  }

  if (a1 == 1)
  {
    return 0x657261757173;
  }

  return 0x6F50687472756F66;
}

uint64_t sub_275451FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275451E2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275451FD8(uint64_t a1)
{
  v2 = sub_275452614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275452014(uint64_t a1)
{
  v2 = sub_275452614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275452050(uint64_t a1)
{
  v2 = sub_275452518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545208C(uint64_t a1)
{
  v2 = sub_275452518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754520C8(uint64_t a1)
{
  v2 = sub_27545256C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275452104(uint64_t a1)
{
  v2 = sub_27545256C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275452140(uint64_t a1)
{
  v2 = sub_2754525C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545217C(uint64_t a1)
{
  v2 = sub_2754525C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.AutomationCurveEasingStyle.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_4_22();
  v3 = MEMORY[0x277D84538];
  sub_275452C94(0, v4, v5, v6, MEMORY[0x277D84538]);
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v62 = v9;
  v63 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_9();
  v61 = v13;
  v14 = OUTLINED_FUNCTION_1_40();
  sub_275452C94(v14, v15, v16, v17, v3);
  v19 = OUTLINED_FUNCTION_8_9(v18);
  v59 = v20;
  v60 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_9();
  v58 = v24;
  v25 = OUTLINED_FUNCTION_3_29();
  sub_275452C94(v25, v26, v27, v28, v3);
  v30 = OUTLINED_FUNCTION_8_9(v29);
  v56 = v31;
  v57 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v34);
  v36 = &v56 - v35;
  v37 = OUTLINED_FUNCTION_2_35();
  sub_275452C94(v37, v38, v39, &_s26AutomationCurveEasingStyleO10CodingKeysON, v3);
  v64 = v40;
  OUTLINED_FUNCTION_8_9(v40);
  v42 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v45);
  v47 = &v56 - v46;
  v48 = *v1;
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275452614();
  sub_27546EB00();
  v50 = (v42 + 8);
  if (v48)
  {
    if (v48 == 1)
    {
      v66 = 1;
      sub_27545256C();
      v51 = v58;
      v52 = v64;
      sub_27546E8F0();
      (*(v59 + 8))(v51, v60);
      return (*v50)(v47, v52);
    }

    v67 = 2;
    sub_275452518();
    v36 = v61;
    OUTLINED_FUNCTION_8_15();
    v55 = v62;
    v54 = v63;
  }

  else
  {
    v65 = 0;
    sub_2754525C0();
    OUTLINED_FUNCTION_8_15();
    v55 = v56;
    v54 = v57;
  }

  (*(v55 + 8))(v36, v54);
  return (*v50)(v47, v42);
}

unint64_t sub_275452518()
{
  result = qword_2809DC6D8;
  if (!qword_2809DC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6D8);
  }

  return result;
}

unint64_t sub_27545256C()
{
  result = qword_2809DC6E8;
  if (!qword_2809DC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6E8);
  }

  return result;
}

unint64_t sub_2754525C0()
{
  result = qword_2809DC6F8;
  if (!qword_2809DC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6F8);
  }

  return result;
}

unint64_t sub_275452614()
{
  result = qword_2809DC708;
  if (!qword_2809DC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC708);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.AutomationCurveEasingStyle.hashValue.getter()
{
  v1 = *v0;
  sub_27546EA90();
  MEMORY[0x277C77BF0](v1);
  return sub_27546EAC0();
}

uint64_t Transition.ContinuousSchedule.AutomationCurveEasingStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v90 = a2;
  OUTLINED_FUNCTION_4_22();
  v3 = MEMORY[0x277D844C8];
  sub_275452C94(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v92 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v87 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_9();
  v89 = v12;
  v13 = OUTLINED_FUNCTION_1_40();
  sub_275452C94(v13, v14, v15, v16, v3);
  v18 = OUTLINED_FUNCTION_8_9(v17);
  v85 = v19;
  v86 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_9();
  v88 = v23;
  v24 = OUTLINED_FUNCTION_3_29();
  sub_275452C94(v24, v25, v26, v27, v3);
  v29 = v28;
  OUTLINED_FUNCTION_8_9(v28);
  v84 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v33);
  v35 = &v82 - v34;
  v36 = OUTLINED_FUNCTION_2_35();
  sub_275452C94(v36, v37, v38, &_s26AutomationCurveEasingStyleO10CodingKeysON, v3);
  v40 = v39;
  OUTLINED_FUNCTION_8_9(v39);
  v91 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v44);
  v46 = &v82 - v45;
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275452614();
  v48 = v93;
  sub_27546EAE0();
  if (v48)
  {
    goto LABEL_12;
  }

  v83 = v29;
  v49 = v92;
  v93 = a1;
  v50 = sub_27546E8E0();
  result = sub_275433874(v50, 0);
  if (v53 == v54 >> 1)
  {
    goto LABEL_10;
  }

  v82 = 0;
  if (v53 < (v54 >> 1))
  {
    v55 = *(v52 + v53);
    sub_27543386C(v53 + 1);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    if (v57 == v59 >> 1)
    {
      if (v55)
      {
        LODWORD(v84) = v55;
        v60 = v55 == 1;
        v61 = v82;
        if (!v60)
        {
          v77 = v49;
          v96 = 2;
          sub_275452518();
          v78 = v89;
          OUTLINED_FUNCTION_7_18();
          sub_27546E850();
          v63 = v90;
          v79 = v91;
          if (v61)
          {
            (*(v91 + 8))(v46, v40);
            goto LABEL_18;
          }

          swift_unknownObjectRelease();
          (*(v87 + 8))(v78, v77);
          (*(v79 + 8))(v46, v40);
          goto LABEL_21;
        }

        v95 = 1;
        sub_27545256C();
        v62 = v88;
        OUTLINED_FUNCTION_7_18();
        sub_27546E850();
        v63 = v90;
        if (!v61)
        {
          swift_unknownObjectRelease();
          (*(v85 + 8))(v62, v86);
          v64 = OUTLINED_FUNCTION_5_22();
          v65(v64);
LABEL_21:
          LOBYTE(v55) = v84;
          goto LABEL_22;
        }
      }

      else
      {
        v94 = 0;
        sub_2754525C0();
        OUTLINED_FUNCTION_7_18();
        v74 = v82;
        sub_27546E850();
        if (!v74)
        {
          swift_unknownObjectRelease();
          (*(v84 + 8))(v35, v83);
          v80 = OUTLINED_FUNCTION_5_22();
          v81(v80);
          v63 = v90;
LABEL_22:
          *v63 = v55;
          v73 = v93;
          return __swift_destroy_boxed_opaque_existential_1(v73);
        }
      }

      v75 = OUTLINED_FUNCTION_5_22();
      v76(v75);
LABEL_18:
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

LABEL_10:
    v66 = sub_27546E7D0();
    swift_allocError();
    v68 = v67;
    sub_2754333D4();
    v70 = *(v69 + 48);
    *v68 = &type metadata for Transition.ContinuousSchedule.AutomationCurveEasingStyle;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x277D84160], v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    v71 = OUTLINED_FUNCTION_5_22();
    v72(v71);
LABEL_11:
    a1 = v93;
LABEL_12:
    v73 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  __break(1u);
  return result;
}

void sub_275452C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_275452D2C@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.ContinuousSchedule.AutomationCurveEasingStyle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275452D58()
{
  result = qword_2809DC730;
  if (!qword_2809DC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC730);
  }

  return result;
}

_BYTE *sub_275452DC4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275452E90);
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

unint64_t sub_275452EFC()
{
  result = qword_2809DC738;
  if (!qword_2809DC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC738);
  }

  return result;
}

unint64_t sub_275452F54()
{
  result = qword_2809DC740;
  if (!qword_2809DC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC740);
  }

  return result;
}

unint64_t sub_275452FAC()
{
  result = qword_2809DC748;
  if (!qword_2809DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC748);
  }

  return result;
}

unint64_t sub_275453004()
{
  result = qword_2809DC750;
  if (!qword_2809DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC750);
  }

  return result;
}

unint64_t sub_27545305C()
{
  result = qword_2809DC758;
  if (!qword_2809DC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC758);
  }

  return result;
}

unint64_t sub_2754530B4()
{
  result = qword_2809DC760;
  if (!qword_2809DC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC760);
  }

  return result;
}

unint64_t sub_27545310C()
{
  result = qword_2809DC768;
  if (!qword_2809DC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC768);
  }

  return result;
}

unint64_t sub_275453164()
{
  result = qword_2809DC770;
  if (!qword_2809DC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC770);
  }

  return result;
}

unint64_t sub_2754531BC()
{
  result = qword_2809DC778;
  if (!qword_2809DC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC778);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_15()
{
  v2 = *(v0 - 96);

  return sub_27546E8F0();
}

double Transition.ContinuousSchedule.AutomationPoint.songTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t static Transition.ContinuousSchedule.AutomationPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a2 + 8) - *(a1 + 8) == 0.0)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 >> 6)
    {
      if (v4 >> 6 != 1)
      {
        if (v4 == 128)
        {
          if (v5 == 128)
          {
            return 1;
          }
        }

        else if (v5 == 129)
        {
          return 1;
        }

        return 0;
      }

      v6 = v5 & 0xC0;
      v7 = (v5 ^ v4) & 0x3F;
      if (v6 != 64 || v7 != 0)
      {
        return 0;
      }
    }

    else if (v5 > 0x3F || v4 != v5)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_275453388(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954676E6F73 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6576727563 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

uint64_t sub_275453490(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x656D6954676E6F73;
  }

  return 0x6576727563;
}

uint64_t sub_2754534E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275453388(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275453510(uint64_t a1)
{
  v2 = sub_275453754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545354C(uint64_t a1)
{
  v2 = sub_275453754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.AutomationPoint.encode(to:)(void *a1)
{
  sub_2754539E8(0, &qword_2809DC780, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v18 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = *(v1 + 16);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275453754();
  sub_27546EB00();
  v22 = 0;
  sub_27546E930();
  if (!v2)
  {
    v18[1] = v14;
    v21 = 1;
    sub_27542D5D8();
    sub_27546E950();
    v20 = v15;
    v19 = 2;
    sub_2754537A8();
    sub_27546E950();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_275453754()
{
  result = qword_2809DC788;
  if (!qword_2809DC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC788);
  }

  return result;
}

unint64_t sub_2754537A8()
{
  result = qword_2809DC790;
  if (!qword_2809DC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC790);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.AutomationPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2754539E8(0, &qword_2809DC798, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v20 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275453754();
  sub_27546EAE0();
  if (!v2)
  {
    v24 = 0;
    sub_27546E8B0();
    v16 = v15;
    v23 = 1;
    sub_27542D478();
    OUTLINED_FUNCTION_1_41();
    v17 = v20[1];
    v21 = 2;
    sub_275453A4C();
    OUTLINED_FUNCTION_1_41();
    (*(v9 + 8))(v13, v6);
    v19 = v22;
    *a2 = v16;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2754539E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275453754();
    v7 = a3(a1, &_s15AutomationPointV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275453A4C()
{
  result = qword_2809DC7A0;
  if (!qword_2809DC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7A0);
  }

  return result;
}

uint64_t _s15AutomationPointVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 17))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t _s15AutomationPointVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

_BYTE *_s15AutomationPointV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275453C48);
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

unint64_t sub_275453C84()
{
  result = qword_2809DC7A8;
  if (!qword_2809DC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7A8);
  }

  return result;
}

unint64_t sub_275453CDC()
{
  result = qword_2809DC7B0;
  if (!qword_2809DC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7B0);
  }

  return result;
}

unint64_t sub_275453D34()
{
  result = qword_2809DC7B8;
  if (!qword_2809DC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_41()
{

  return sub_27546E8D0();
}

double sub_275453DA8(double *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  result = *(v1 + 24);
  if (*a1 >= result)
  {
    return v3;
  }

  v5 = *v1;
  v6 = *(v1 + 16);
  if (v6 >= v2)
  {
    return v5;
  }

  if (result >= v6)
  {
    v7 = *(v1 + 16);
  }

  else
  {
    v7 = *(v1 + 24);
  }

  if (v6 > result)
  {
    v8 = *(v1 + 16);
  }

  else
  {
    v8 = *(v1 + 24);
  }

  if (v7 > v8)
  {
    __break(1u);
    return result;
  }

  v9 = *(v1 + 32);
  if (v7 >= v2)
  {
    v11 = v6 < result;
    v12 = 1.0;
    v13 = 0.0;
  }

  else
  {
    if (v2 < v8)
    {
      v10 = (v2 - v6) / (result - v6);
      goto LABEL_18;
    }

    v11 = v6 < result;
    v12 = 0.0;
    v13 = 1.0;
  }

  if (v11)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12;
  }

LABEL_18:
  if (!(v9 >> 6))
  {
    if (!*(v1 + 32))
    {
      v15 = 1.0;
      v16 = sqrt(1.0 - v10);
LABEL_31:
      v10 = v15 - v16;
      goto LABEL_34;
    }

    if (v9 == 1)
    {
      v10 = v10 * v10;
      goto LABEL_34;
    }

    v14 = pow(v10, 4.0);
    goto LABEL_33;
  }

  if (v9 >> 6 == 1)
  {
    if ((v9 & 0x3F) != 0)
    {
      if ((v9 & 0x3F) == 1)
      {
        v10 = 1.0 - (1.0 - v10) * (1.0 - v10);
        goto LABEL_34;
      }

      v15 = 1.0;
      v16 = pow(1.0 - v10, 4.0);
      goto LABEL_31;
    }

    v14 = sqrt(v10);
LABEL_33:
    v10 = v14;
    goto LABEL_34;
  }

  if (v9 == 129)
  {
    v5 = log2(*v1);
    v3 = log2(v3);
  }

LABEL_34:
  if (v10 > 0.0)
  {
    if (v10 >= 1.0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v5 + v10 * (v3 - v5);
    }
  }

  if (v9 != 129)
  {
    return v5;
  }

  return exp2(v5);
}

__n128 Transition.ContinuousSchedule.AutomationRamp.songTimeRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_275453F90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61567472617473 && a2 == 0xEA00000000006575;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6156646E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D6954676E6F73 && a2 == 0xED000065676E6152;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6576727563 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

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

uint64_t sub_2754540F4(char a1)
{
  result = 0x6C61567472617473;
  switch(a1)
  {
    case 1:
      result = 0x65756C6156646E65;
      break;
    case 2:
      result = 0x656D6954676E6F73;
      break;
    case 3:
      result = 0x6576727563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27545419C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275453F90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754541C4(uint64_t a1)
{
  v2 = sub_2754544A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275454200(uint64_t a1)
{
  v2 = sub_2754544A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.AutomationRamp.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_1_42();
  sub_2754547A0(0, v3, v4, &_s14AutomationRampV10CodingKeysON_0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v25 - v12;
  v15 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  v18 = *(v1 + 32);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754544A8();
  sub_27546EB00();
  LOBYTE(v26) = 0;
  v20 = v25[1];
  sub_27546E930();
  if (!v20)
  {
    LOBYTE(v26) = 1;
    sub_27546E930();
    v26 = v16;
    v27 = v17;
    v28 = 2;
    OUTLINED_FUNCTION_0_41();
    sub_2754547A0(0, v21, v22, v23, MEMORY[0x277D83638]);
    sub_275454808(&qword_2809DB6E0, sub_27542D5D8);
    sub_27546E950();
    LOBYTE(v26) = v18;
    v28 = 3;
    sub_2754537A8();
    sub_27546E950();
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t sub_2754544A8()
{
  result = qword_2809DC7C8;
  if (!qword_2809DC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7C8);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.AutomationRamp.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  OUTLINED_FUNCTION_1_42();
  sub_2754547A0(0, v4, v5, &_s14AutomationRampV10CodingKeysON_0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_8_9(v6);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v28 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754544A8();
  sub_27546EAE0();
  if (!v2)
  {
    v16 = v29;
    LOBYTE(v30) = 0;
    OUTLINED_FUNCTION_2_36();
    sub_27546E8B0();
    v18 = v17;
    LOBYTE(v30) = 1;
    OUTLINED_FUNCTION_2_36();
    sub_27546E8B0();
    v20 = v19;
    OUTLINED_FUNCTION_0_41();
    sub_2754547A0(0, v21, v22, v23, MEMORY[0x277D83638]);
    v32 = 2;
    sub_275454808(&qword_2809DB708, sub_27542D478);
    OUTLINED_FUNCTION_2_36();
    sub_27546E8D0();
    v24 = v30;
    v25 = v31;
    v32 = 3;
    sub_275453A4C();
    OUTLINED_FUNCTION_2_36();
    sub_27546E8D0();
    (*(v10 + 8))(v14, v7);
    v27 = v30;
    *v16 = v18;
    *(v16 + 8) = v20;
    *(v16 + 16) = v24;
    *(v16 + 24) = v25;
    *(v16 + 32) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2754547A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_275454808(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_41();
    sub_2754547A0(255, v5, v6, v7, MEMORY[0x277D83638]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2754548CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 33))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x3C | (*(a1 + 32) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_275454914(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

_BYTE *_s14AutomationRampV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275454A44);
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

unint64_t sub_275454A80()
{
  result = qword_2809DC7D8;
  if (!qword_2809DC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7D8);
  }

  return result;
}

unint64_t sub_275454AD8()
{
  result = qword_2809DC7E0;
  if (!qword_2809DC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7E0);
  }

  return result;
}

unint64_t sub_275454B30()
{
  result = qword_2809DC7E8;
  if (!qword_2809DC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7E8);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.outgoingSongSchedule.getter()
{
  OUTLINED_FUNCTION_2_37();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_2_37();
  memcpy(v3, v4, v5);
  return sub_275454C48(v8, &v7);
}

uint64_t Transition.ContinuousSchedule.incomingSongSchedule.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), 0x49uLL);
  memcpy(a1, (v1 + 80), 0x49uLL);
  return sub_275454C48(__dst, &v4);
}

uint64_t sub_275454CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000027546F6C0 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000027546F6E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_275454E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275454CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275454E2C(uint64_t a1)
{
  v2 = sub_2754550A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275454E68(uint64_t a1)
{
  v2 = sub_2754550A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.encode(to:)(void *a1)
{
  sub_275455400(0, &qword_2809DC7F0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20[-v11 - 8];
  OUTLINED_FUNCTION_2_37();
  memcpy(v13, v14, v15);
  memcpy(__dst, (v1 + 80), 0x49uLL);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275454C48(__src, v23);
  sub_2754550A4();
  sub_27546EB00();
  memcpy(v23, __src, 0x49uLL);
  __dst[103] = 0;
  sub_2754550F8();
  OUTLINED_FUNCTION_3_30();
  memcpy(v22, v23, 0x49uLL);
  if (v2)
  {
    v17 = v22;
  }

  else
  {
    sub_27545514C(v22);
    memcpy(v21, __dst, sizeof(v21));
    __dst[102] = 1;
    sub_275454C48(__dst, v20);
    OUTLINED_FUNCTION_3_30();
    memcpy(v20, v21, 0x49uLL);
    v17 = v20;
  }

  sub_27545514C(v17);
  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2754550A4()
{
  result = qword_2809DC7F8;
  if (!qword_2809DC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7F8);
  }

  return result;
}

unint64_t sub_2754550F8()
{
  result = qword_2809DC800;
  if (!qword_2809DC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC800);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  sub_275455400(0, &qword_2809DC808, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18[-v11 - 8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754550A4();
  sub_27546EAE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v8;
  v15 = v17;
  __dst[183] = 0;
  sub_275455464();
  OUTLINED_FUNCTION_0_42();
  memcpy(__dst, v21, 0x49uLL);
  __dst[182] = 1;
  OUTLINED_FUNCTION_0_42();
  (*(v14 + 8))(v12, v5);
  memcpy(&__dst[80], v20, 0x49uLL);
  memcpy(v18, __dst, 0x99uLL);
  memcpy(v15, __dst, 0x99uLL);
  sub_2754554B8(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v19, __dst, 0x99uLL);
  return sub_2754554F0(v19);
}

void sub_275455400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2754550A4();
    v7 = a3(a1, &_s18ContinuousScheduleV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275455464()
{
  result = qword_2809DC810;
  if (!qword_2809DC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC810);
  }

  return result;
}

void Transition.ContinuousSchedule.timeRange.getter(float64x2_t *a1@<X8>)
{
  v2 = *v1;
  v3.i64[0] = *(v1 + 80);
  v3.i64[1] = *(v1 + 8);
  v2.i64[1] = *(v1 + 88);
  v4 = vbslq_s8(vcgtq_f64(*v1, *(v1 + 80)), v3, v2);
  if (vmovn_s64(vcgtq_f64(v4, vdupq_laneq_s64(v4, 1))).u8[0])
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }
}

void Transition.ContinuousSchedule.duration.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[10] < *v0)
  {
    v1 = v0[10];
  }

  if (v0[11] >= v2)
  {
    v2 = v0[11];
  }

  if (v2 < v1)
  {
    __break(1u);
  }
}

__n128 Transition.ContinuousSchedule.playbackEndState.getter@<Q0>(__n128 *a1@<X8>)
{
  OUTLINED_FUNCTION_2_37();
  memcpy(v3, v4, v5);
  memcpy(v9, (v1 + 80), sizeof(v9));
  sub_275455954(v10);
  v6 = v10[0];
  v7 = v10[1];
  sub_275455954(v11[0].n128_f64);
  result = v11[0];
  a1->n128_f64[0] = v6;
  a1->n128_f64[1] = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_275455634(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_275455674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s18ContinuousScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2754557B8);
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

unint64_t sub_2754557F4()
{
  result = qword_2809DC818;
  if (!qword_2809DC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC818);
  }

  return result;
}

unint64_t sub_27545584C()
{
  result = qword_2809DC820;
  if (!qword_2809DC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC820);
  }

  return result;
}

unint64_t sub_2754558A4()
{
  result = qword_2809DC828;
  if (!qword_2809DC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC828);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_42()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_3_30()
{

  return sub_27546E950();
}

void sub_275455954(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v28 = *(v1 + 1);
  v29 = v5;
  v30[0] = *(v1 + 3);
  *(v30 + 9) = *(v1 + 57);
  v26 = v3;
  v27 = v4;
  sub_275457480(&v18);
  if (v4 < v20 || v25 > 0xFBu)
  {
    v13 = v19 + v4 - v20;
    v12 = v18 + v13 - v19;
  }

  else
  {
    v16[1] = v18;
    v16[2] = v19;
    v16[3] = v20;
    v16[4] = v21;
    v16[5] = v22;
    v16[6] = v23;
    v16[7] = v24;
    v17 = v25;
    v16[0] = v4;
    *v14 = v21;
    *&v14[1] = v22;
    *&v14[2] = v23;
    *&v14[3] = v24;
    v15 = v25;
    sub_27542DA30(v16, v14, v6, v7, v8, v9, v10, v11, v31);
    v12 = v31[0];
    v13 = v31[1];
  }

  *a1 = v12;
  a1[1] = v13;
}

__n128 Transition.ContinuousSchedule.SongSchedule.transitionTimeRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double Transition.ContinuousSchedule.SongSchedule.songTimeRange.getter@<D0>(double *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  v9[0] = *(v1 + 48);
  *(v9 + 9) = *(v1 + 57);
  v6[2] = v2;
  v6[3] = v3;
  v6[0] = v2;
  v6[1] = v3;
  sub_275455A94(v6, a1);
  return result;
}

void sub_275455A94(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_275457480(&v39);
  if (v4 < v41 || v46 > 0xFBu)
  {
    v11 = v39 + v40 + v4 - v41 - v40;
  }

  else
  {
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v19[0] = v4;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v45;
    LOBYTE(v26) = v46;
    sub_27542DA30(v19, &v22, v5, v6, v7, v8, v9, v10, v47);
    v11 = v47[0];
  }

  sub_275457480(&v30);
  if (v3 < v32 || v37 > 0xFBu)
  {
    v18 = v30 + v31 + v3 - v32 - v31;
  }

  else
  {
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v29 = v37;
    v21 = v3;
    v19[0] = v33;
    v19[1] = v34;
    v19[2] = v35;
    v19[3] = v36;
    v20 = v37;
    sub_27542DA30(&v21, v19, v12, v13, v14, v15, v16, v17, v38);
    v18 = v38[0];
  }

  if (v18 < v11)
  {
    __break(1u);
  }

  else
  {
    *a2 = v11;
    a2[1] = v18;
  }
}

__n128 Transition.ContinuousSchedule.SongSchedule.playbackTransitionTimeRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

double Transition.ContinuousSchedule.SongSchedule.playbackSongTimeRange.getter@<D0>(double *a1@<X8>)
{
  v7 = *v1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = v1[3];
  v10 = v1[2];
  v11[0] = v4;
  *(v11 + 9) = *(v1 + 57);
  v8 = v2;
  v9 = v3;
  v6[0] = v2;
  v6[1] = v3;
  sub_275455A94(v6, a1);
  return result;
}

double Transition.ContinuousSchedule.SongSchedule.referenceTransitionTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

double Transition.ContinuousSchedule.SongSchedule.referenceSongTime.getter@<D0>(double *a1@<X8>)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(v1 + 4);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  v8 = v3;
  v5 = v3;
  sub_275455CA8(&v5, a1);
  return result;
}

void sub_275455CA8(double *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  sub_275457480(&v15);
  if (v3 < v17 || v22 > 0xFBu)
  {
    v10 = v15 + v16 + v3 - v17 - v16;
  }

  else
  {
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[5] = v19;
    v13[6] = v20;
    v13[7] = v21;
    v14 = v22;
    v13[0] = v3;
    *v11 = v18;
    *&v11[1] = v19;
    *&v11[2] = v20;
    *&v11[3] = v21;
    v12 = v22;
    sub_27542DA30(v13, v11, v4, v5, v6, v7, v8, v9, v23);
    v10 = v23[0];
  }

  *a2 = v10;
}

uint64_t sub_275455D6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000027546F700 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x800000027546F720 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x800000027546F740 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974616D6F747561 && a2 == 0xEB00000000736E6FLL;
        if (v8 || (sub_27546E9A0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x800000027546F760 == a2;
          if (v9 || (sub_27546E9A0() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000018 && 0x800000027546F3E0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_27546E9A0();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_275455F60(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_275456060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275455D6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275456088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275455F58();
  *a1 = result;
  return result;
}

uint64_t sub_2754560B0(uint64_t a1)
{
  v2 = sub_275456434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754560EC(uint64_t a1)
{
  v2 = sub_275456434();

  return MEMORY[0x2821FE720](a1, v2);
}

void Transition.ContinuousSchedule.SongSchedule.encode(to:)()
{
  OUTLINED_FUNCTION_12_12();
  v4 = v3;
  OUTLINED_FUNCTION_3_31();
  sub_275456944(0, v5, v6, &_s12SongScheduleV10CodingKeysON, MEMORY[0x277D84538]);
  v8 = OUTLINED_FUNCTION_8_16(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v31 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v20 = v1[5];
  v21 = v1[6];
  v22 = v1[8];
  v32 = v1[7];
  v33 = v20;
  v31 = v22;
  v37 = *(v1 + 72);
  v23 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_275456434();
  sub_27546EB00();
  v34 = v15;
  v35 = v16;
  OUTLINED_FUNCTION_0_43();
  sub_275456944(0, v24, v25, v26, MEMORY[0x277D83638]);
  sub_2754569AC(&qword_2809DB4A0, sub_27542D680);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_7_19();
  sub_27546E950();
  if (!v2)
  {
    v27 = v32;
    v28 = v33;
    v34 = v17;
    v35 = v18;
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E950();
    v34 = v19;
    sub_27542D680();
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E950();
    v34 = v28;
    OUTLINED_FUNCTION_1_43();
    sub_275456F10(0, v29, v30);
    sub_275456488(&qword_2809DC848, sub_2754564F0);
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E950();
    v34 = v21;
    sub_27542D5D8();
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E950();
    v34 = v27;
    v35 = v31;
    v36 = v37;
    sub_275444A30();
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E910();
  }

  (*(v10 + 8))(v14, v0);
  OUTLINED_FUNCTION_13_12();
}

unint64_t sub_275456434()
{
  result = qword_2809DC838;
  if (!qword_2809DC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC838);
  }

  return result;
}

uint64_t sub_275456488(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_1_43();
    sub_275456F10(255, v5, v6);
    a2();
    result = OUTLINED_FUNCTION_10_14();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2754564F0()
{
  result = qword_2809DC850;
  if (!qword_2809DC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC850);
  }

  return result;
}

void Transition.ContinuousSchedule.SongSchedule.init(from:)()
{
  OUTLINED_FUNCTION_12_12();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_31();
  sub_275456944(0, v5, v6, &_s12SongScheduleV10CodingKeysON, MEMORY[0x277D844C8]);
  v8 = OUTLINED_FUNCTION_8_16(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_275456434();
  sub_27546EAE0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v29 = v4;
    OUTLINED_FUNCTION_0_43();
    sub_275456944(0, v12, v13, v14, MEMORY[0x277D83638]);
    LOBYTE(v30[0]) = 0;
    sub_2754569AC(&qword_2809DB4B0, sub_27542D520);
    OUTLINED_FUNCTION_6_22();
    v15 = v31;
    v16 = v32;
    OUTLINED_FUNCTION_9_11(1);
    OUTLINED_FUNCTION_6_22();
    v17 = v31;
    v18 = v32;
    OUTLINED_FUNCTION_9_11(2);
    sub_27542D520();
    OUTLINED_FUNCTION_5_23();
    sub_27546E8D0();
    v19 = v31;
    OUTLINED_FUNCTION_1_43();
    sub_275456F10(0, v20, v21);
    OUTLINED_FUNCTION_9_11(3);
    sub_275456488(&qword_2809DC860, sub_275456A30);
    sub_27546E8D0();
    v22 = v31;
    OUTLINED_FUNCTION_9_11(4);
    sub_27542D478();
    OUTLINED_FUNCTION_5_23();
    sub_27546E8D0();
    v23 = v31;
    sub_275444AE8();
    OUTLINED_FUNCTION_5_23();
    sub_27546E890();
    v24 = OUTLINED_FUNCTION_4_23();
    v25(v24);
    v26 = v41;
    v27 = v42;
    v28 = v43;
    v30[0] = v15;
    v30[1] = v16;
    v30[2] = v17;
    v30[3] = v18;
    v30[4] = v19;
    v30[5] = v22;
    v30[6] = v23;
    v30[7] = v41;
    v30[8] = v42;
    LOBYTE(v30[9]) = v43;
    memcpy(v29, v30, 0x49uLL);
    sub_275454C48(v30, &v31);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    v35 = v19;
    v36 = v22;
    v37 = v23;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    sub_27545514C(&v31);
  }

  OUTLINED_FUNCTION_13_12();
}

void sub_275456944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2754569AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_43();
    sub_275456944(255, v5, v6, v7, MEMORY[0x277D83638]);
    a2();
    result = OUTLINED_FUNCTION_10_14();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275456A30()
{
  result = qword_2809DC868;
  if (!qword_2809DC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC868);
  }

  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Transition.ContinuousSchedule.SongSchedule.playbackRate(at:)(_SonicKit_MusicKit_Packages::TransitionTime at)
{
  v3 = *v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  *&v14 = *v2;
  *(&v14 + 1) = v5;
  v6 = *(v2 + 32);
  v15 = *(v2 + 16);
  v16 = v6;
  v17[0] = *(v2 + 48);
  *(v17 + 9) = *(v2 + 57);
  sub_275456C20(v18);
  v7 = v18[0];
  v19 = v18[1];
  v20 = v18[2];
  v21 = v18[3];
  if (*(&v18[0] + 1))
  {
    if (v3 < v4 || v5 < v3)
    {
      sub_275456E98(v18);
      sub_275408F98();
      v9 = swift_allocError();
      OUTLINED_FUNCTION_11_14(v9, v10);
    }

    else
    {
      *&v14 = v4;
      *(&v14 + 1) = v5;
      v11 = *(v2 + 32);
      v15 = *(v2 + 16);
      v16 = v11;
      v17[0] = *(v2 + 48);
      *(v17 + 9) = *(v2 + 57);
      v22 = v3;
      sub_275455CA8(&v22, &v13);
      v14 = v7;
      v15 = v19;
      v16 = v20;
      v17[0] = v21;
      v3 = sub_27544F528(&v13);
      sub_275456E98(v18);
    }
  }

  else
  {
    if (qword_2809DAD90 != -1)
    {
      swift_once();
    }

    return *&qword_2809DC3D8;
  }

  return v3;
}

void sub_275456C20(_OWORD *a1@<X8>)
{
  v2 = 0;
  v3 = *(v1 + 40);
  v24 = *(v3 + 16);
  for (i = (v3 + 32); ; i += 4)
  {
    if (v24 == v2)
    {
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      return;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v6 = i[2];
    v5 = i[3];
    v7 = i[1];
    v26 = *i;
    v27 = v7;
    v28 = v6;
    v29 = v5;
    v8 = v26;
    v9 = v7;
    v11 = v6;
    v10 = v5;
    sub_2753EF21C(&v26, v25);
    v12 = qword_2809DAD90;

    if (v12 != -1)
    {
      swift_once();
    }

    v14 = *&qword_2809DC3C8;
    v13 = unk_2809DC3D0;
    v15 = *&qword_2809DC3D8;
    v16 = qword_2809DC3E0;
    v17 = unk_2809DC3E8;
    v18 = v8 == qword_2809DC3B8.n128_u64[0] && *(&v8 + 1) == unk_2809DC3C0;
    if (v18 || (sub_27546E9A0()) && *&v9 == v14 && *(&v9 + 1) == v13 && *&v11 == v15)
    {
      if (*(&v11 + 1) == v16 && v10 == v17)
      {

LABEL_24:
        v21 = v27;
        *a1 = v26;
        a1[1] = v21;
        v22 = v29;
        a1[2] = v28;
        a1[3] = v22;
        return;
      }

      v20 = sub_27546E9A0();

      if (v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    sub_2753EF278(&v26);
    ++v2;
  }

  __break(1u);
}

_SonicKit_MusicKit_Packages::SongTime __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Transition.ContinuousSchedule.SongSchedule.songTime(at:)(_SonicKit_MusicKit_Packages::TransitionTime at)
{
  v4 = *v1;
  v5 = *(v3 + 8);
  if (*v1 < *v3 || v5 < v4)
  {
    sub_275408F98();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_11_14(v7, v8);
  }

  else
  {
    v11[1] = *v3;
    v11[2] = v5;
    v9 = *(v3 + 32);
    v12 = *(v3 + 16);
    v13 = v9;
    v14[0] = *(v3 + 48);
    *(v14 + 9) = *(v3 + 57);
    v11[0] = v4;
    sub_275455CA8(v11, v2);
  }

  return result;
}

uint64_t sub_275456E98(uint64_t a1)
{
  sub_275456F10(0, &qword_2809DC870, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_275456F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Transition.ContinuousSchedule.Automation);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_275456F98(_SonicKit_MusicKit_Packages::TransitionTime *a1@<X0>, void *a2@<X2>, double *a3@<X8>)
{
  v6 = Transition.ContinuousSchedule.SongSchedule.playbackRate(at:)(*&a1->rawValue);
  if (v5)
  {
    *a2 = v5;
  }

  else
  {
    *a3 = v6;
  }
}

uint64_t sub_275457040(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *), char *a5)
{
  memcpy(__dst, v5, 0x49uLL);
  v12[2] = __dst;
  v10 = sub_27544F86C();
  return sub_275447280(a4, v12, a2, a5, v10, a3, MEMORY[0x277D84950], &v13);
}

void sub_2754570EC(double *a1@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>)
{
  v5 = *a1;
  if (*a1 >= *a2 && a2[1] >= v5)
  {
    memcpy(__dst, a2, sizeof(__dst));
    v9 = v5;
    sub_275455CA8(&v9, a4);
  }

  else
  {
    sub_275408F98();
    v6 = swift_allocError();
    *v7 = 11;
    swift_willThrow();
    *a3 = v6;
  }
}

uint64_t sub_2754571D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_275457210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s12SongScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275457340);
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

unint64_t sub_27545737C()
{
  result = qword_2809DC878;
  if (!qword_2809DC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC878);
  }

  return result;
}

unint64_t sub_2754573D4()
{
  result = qword_2809DC880;
  if (!qword_2809DC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC880);
  }

  return result;
}

unint64_t sub_27545742C()
{
  result = qword_2809DC888;
  if (!qword_2809DC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC888);
  }

  return result;
}

void sub_275457480(uint64_t a1@<X8>)
{
  v21 = *v1;
  v3 = *(v1 + 2);
  v22 = *(v1 + 24);
  v23 = *(v1 + 5);
  v4 = *(v1 + 6);
  v5 = *(v1 + 7);
  v6 = *(v1 + 8);
  v7 = *(v1 + 72);
  sub_275456C20(v24);
  if (*(&v24[0] + 1))
  {
    v8 = v25;
    swift_bridgeObjectRetain_n();
    v9 = sub_27544FBA0(1, v8);
    v26[0] = v8;
    v26[1] = v9;
    v26[2] = v10;
    v26[3] = v11;
    v26[4] = v12;
    sub_27544E690(v26);
    v14 = v13;
    swift_unknownObjectRelease();

    sub_275456E98(v24);
    if (*(v14 + 16))
    {
      v19 = *(v14 + 48);
      v20 = *(v14 + 32);
      v15 = *(v14 + 64);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v15 = -4;
    }

    v17 = v19;
    v16 = v20;
  }

  else
  {
    v16 = 0uLL;
    v15 = -4;
    v17 = 0uLL;
  }

  v18 = v4 + v6 - v5;
  if (v7)
  {
    v18 = v4;
  }

  *a1 = v4;
  *(a1 + 8) = v18;
  *(a1 + 16) = v3;
  *(a1 + 24) = v16;
  *(a1 + 40) = v17;
  *(a1 + 56) = v15;
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_14(uint64_t a1, _BYTE *a2)
{
  *a2 = 11;

  return swift_willThrow();
}

void *sub_275457740(void *result, void *(*a2)(__int128 *__return_ptr, __int128 *, __int128 *))
{
  v2 = result[4] >> 1;
  v38 = result[3];
  v3 = v2 - v38;
  if (__OFSUB__(v2, v38))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v4 = *result;
  v35 = result[1];
  v37 = result[2];
  v42 = *(*result + 16);
  if (v3 >= v42)
  {
    v5 = *(*result + 16);
  }

  else
  {
    v5 = v2 - v38;
  }

  v52 = MEMORY[0x277D84F90];
  result = sub_275441AD4(0, v5 & ~(v5 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v34 = v4;
    v6 = v52;
    v40 = v2;
    if (!v5)
    {

      result = swift_unknownObjectRetain();
      v8 = 0;
      v39 = v38;
LABEL_26:
      v22 = v39;
      v23 = (v37 + 32 * v39 + 16);
      for (i = (v34 + 32 * v8 + 48); v42 != v8; i += 2)
      {
        if (v8 >= v42)
        {
          goto LABEL_42;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_43;
        }

        if (v2 == v22)
        {
          break;
        }

        if (v39 < v38 || v22 >= v2)
        {
          goto LABEL_44;
        }

        v26 = *i;
        v47 = *(i - 1);
        v48 = v26;
        v27 = *v23;
        v49 = *(v23 - 1);
        v50 = v27;
        result = a2(&v43, &v47, &v49);
        v52 = v6;
        v29 = *(v6 + 16);
        v28 = *(v6 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_275441AD4((v28 > 1), v29 + 1, 1);
          v6 = v52;
        }

        *(v6 + 16) = v29 + 1;
        v30 = (v6 + (v29 << 6));
        v31 = v43;
        v32 = v44;
        v33 = v46;
        v30[4] = v45;
        v30[5] = v33;
        v30[2] = v31;
        v30[3] = v32;
        v23 += 2;
        ++v8;
        ++v22;
        v2 = v40;
      }

      swift_unknownObjectRelease();

      return v6;
    }

    v36 = v4 + 32;

    result = swift_unknownObjectRetain();
    v7 = 0;
    v8 = 0;
    v39 = v38;
    while (v7 < v5)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_41;
      }

      if (v8 == v42)
      {
LABEL_14:
        LOBYTE(v43) = 1;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 1;
        goto LABEL_50;
      }

      if (v8 >= v42)
      {
        goto LABEL_45;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_46;
      }

      if (v39 == v2)
      {
        goto LABEL_14;
      }

      if (v39 < v38 || v39 >= v2)
      {
        goto LABEL_47;
      }

      v17 = (v36 + 32 * v8);
      v18 = *v17;
      v19 = v17[1];
      v20 = (v37 + 32 * v39);
      v47 = v18;
      v48 = v19;
      v21 = v20[1];
      v49 = *v20;
      v50 = v21;
      v51 = 0;
      ++v39;
      ++v8;
      result = a2(&v43, &v47, &v49);
      v52 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_275441AD4((v10 > 1), v11 + 1, 1);
        v6 = v52;
      }

      *(v6 + 16) = v11 + 1;
      v12 = (v6 + (v11 << 6));
      v13 = v43;
      v14 = v44;
      v15 = v46;
      v12[4] = v45;
      v12[5] = v15;
      v12[2] = v13;
      v12[3] = v14;
      ++v7;
      v2 = v40;
      if (v9 == v5)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t Transition.SteppedSchedule.Automation.parameter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_275457B44()
{
  memcpy(__dst, v0, 0x89uLL);
  sub_275458E24();
  v2 = v1;
  if (*(v1 + 16))
  {
    v46 = *(v1 + 48);
    v47 = *(v1 + 32);

    result = sub_27544FBA0(1, v2);
    v4 = result;
    v6 = v5;
    v7 = 0;
    v8 = *(v2 + 16);
    v10 = v9 >> 1;
    v12 = v11 - 8;
    v13 = MEMORY[0x277D84F90];
    v14 = v5;
    v15 = MEMORY[0x277D84F90];
    v16 = v5;
LABEL_3:
    v17 = (v12 + 32 * v14);
    v18 = v2 + 16 + 32 * v7;
    while (v8 != v7)
    {
      if (v7 >= *(v2 + 16))
      {
        goto LABEL_29;
      }

      if (v10 == v16)
      {
        break;
      }

      if (v14 < v6 || v16 >= v10)
      {
        goto LABEL_30;
      }

      v20 = *(v18 + 16);
      v21 = v17[1];
      ++v16;
      v17 += 4;
      v18 += 32;
      ++v7;
      if (v21 != v20)
      {
        v44 = v12;
        v22 = *(v18 - 8);
        v23 = *v18;
        v24 = *(v18 + 8);
        v26 = *(v17 - 2);
        v25 = *(v17 - 1);
        v27 = *v17;
        result = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v15;
        v42 = v4;
        if ((result & 1) == 0)
        {
          result = sub_275441AB4(0, *(v15 + 16) + 1, 1);
          v15 = __dst[0];
        }

        v29 = *(v15 + 16);
        v28 = *(v15 + 24);
        v30 = v29 + 1;
        v12 = v44;
        if (v29 >= v28 >> 1)
        {
          result = sub_275441AB4((v28 > 1), v29 + 1, 1);
          v12 = v44;
          v13 = MEMORY[0x277D84F90];
          v30 = v29 + 1;
          v15 = __dst[0];
        }

        *(v15 + 16) = v30;
        v31 = v15 + (v29 << 6);
        *(v31 + 32) = v20;
        *(v31 + 40) = v22;
        *(v31 + 48) = v23;
        *(v31 + 56) = v24;
        *(v31 + 64) = v21;
        *(v31 + 72) = v26;
        v14 = v16;
        *(v31 + 80) = v25;
        *(v31 + 88) = v27;
        v4 = v42;
        goto LABEL_3;
      }
    }

    swift_unknownObjectRelease();

    v32 = *(v15 + 16);
    if (v32)
    {
      __dst[0] = v13;
      result = sub_275441A94(0, v32, 0);
      v33 = 0;
      v34 = __dst[0];
      v35 = (v15 + 80);
      while (v33 < *(v15 + 16))
      {
        v36 = *(v35 - 1);
        v37 = *v35;
        __dst[0] = v34;
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        if (v39 >= v38 >> 1)
        {
          v43 = v37;
          v45 = v36;
          result = sub_275441A94((v38 > 1), v39 + 1, 1);
          v37 = v43;
          v36 = v45;
          v34 = __dst[0];
        }

        ++v33;
        *(v34 + 16) = v39 + 1;
        v40 = v34 + 32 * v39;
        *(v40 + 32) = v36;
        *(v40 + 48) = v37;
        v35 += 4;
        if (v32 == v33)
        {

          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v34 = MEMORY[0x277D84F90];
LABEL_27:
    sub_275459120();
    v41 = swift_allocObject();
    v41[1] = xmmword_275474500;
    v41[2] = v47;
    v41[3] = v46;
    __dst[0] = v41;
    sub_275459364(v34);
    return __dst[0];
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void *sub_275457E80()
{
  memcpy(v66, v0, sizeof(v66));
  memcpy(v65, v0, 0x89uLL);
  sub_275458E24();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32 * v3);
    v60 = *v4;
    v61 = v4[1];
    sub_275459120();
    v5 = swift_allocObject();
    v62 = *(v2 + 48);
    *(v5 + 32) = *(v2 + 32);
    *(v5 + 48) = v62;
    *(v5 + 16) = xmmword_275474500;

    v6 = 1;
    v8 = sub_27544FBA0(1, v2);
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *(v2 + 16);
    v15 = v14 >> 1;
    v16 = *(&v62 + 1);
    v17 = v9;
    v18 = v9;
LABEL_3:
    v19 = 0;
    v20 = v7 + 32 * v17;
    v21 = v2 + 32 * v11;
    while (v13 != v11)
    {
      if (v11 >= *(v2 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_275431D78(v17 > 1, v2, 1, v5);
        v45 = v61;
        v5 = v54;
LABEL_26:
        *(v5 + 16) = v2;
        v47 = v5 + 32 * v15;
        *(v47 + 32) = v60;
        *(v47 + 48) = v45;
        goto LABEL_27;
      }

      if (v15 == v18)
      {
        break;
      }

      if (v17 < v10 || v18 >= v15)
      {
        goto LABEL_31;
      }

      v23 = *(v21 + v19 + 32);
      v24 = *(v20 + v19);
      ++v18;
      v19 += 32;
      ++v11;
      if (v24 != v23)
      {
        v25 = v21 + v19;
        v26 = *(v21 + v19 + 24);
        v27 = v20 + v19;
        v28 = *(v27 - 24);
        v29 = *(v27 - 8);
        if (v16 < v26)
        {
          v30 = *(v25 + 8);
          v31 = *(v5 + 24);
          v32 = v6 + 1;
          if (v6 >= v31 >> 1)
          {
            v64 = v12;
            v40 = v7;
            v41 = v5;
            v42 = v23;
            v56 = v26;
            v43 = v8;
            v59 = v28;
            v55 = v30;
            sub_275431D78(v31 > 1, v6 + 1, 1, v41);
            v30 = v55;
            v28 = v59;
            v7 = v40;
            v8 = v43;
            v26 = v56;
            v23 = v42;
            v32 = v6 + 1;
            v5 = v44;
            v12 = v64;
          }

          *(v5 + 16) = v32;
          v33 = v5 + 32 * v6;
          *(v33 + 32) = v23;
          *(v33 + 40) = v30;
          *(v33 + 56) = v26;
        }

        v35 = *(v5 + 16);
        v34 = *(v5 + 24);
        v6 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v63 = v12;
          v57 = v7;
          v37 = v5;
          v38 = v8;
          v58 = v28;
          sub_275431D78(v34 > 1, v35 + 1, 1, v37);
          v28 = v58;
          v7 = v57;
          v8 = v38;
          v5 = v39;
          v12 = v63;
        }

        *(v5 + 16) = v6;
        v36 = v5 + 32 * v35;
        *(v36 + 32) = v24;
        *(v36 + 40) = v28;
        *(v36 + 56) = v29;
        v16 = v29;
        v17 = v18;
        goto LABEL_3;
      }
    }

    swift_unknownObjectRelease();

    v45 = v61;
    if (*(&v62 + 1) - v16 == 0.0 && *(&v62 + 1) < *(&v61 + 1))
    {
      v15 = *(v5 + 16);
      v17 = *(v5 + 24);
      v2 = v15 + 1;
      if (v15 >= v17 >> 1)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

LABEL_27:

    v48 = sub_27544FBA0(1, v5);
    v65[0] = v5;
    v65[1] = v48;
    v65[2] = v49;
    v65[3] = v50;
    v65[4] = v51;
    MEMORY[0x28223BE20](v48);

    v52 = sub_275457740(v65, sub_2754591EC);
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v52;
}

uint64_t sub_275458218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000027546F780 == a2;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000027546F7A0 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000027546F7C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

unint64_t sub_275458330(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000016;
}

uint64_t sub_27545838C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275458218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754583B4(uint64_t a1)
{
  v2 = sub_275458660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754583F0(uint64_t a1)
{
  v2 = sub_275458660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.Automation.encode(to:)(void *a1)
{
  sub_275458A0C(0, &qword_2809DC890, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = v1[1];
  v27 = *v1;
  v28 = v13;
  v14 = v1[3];
  v29 = v1[2];
  v30 = v14;
  v20 = *(v1 + 8);
  v15 = *(v1 + 9);
  v16 = v1[6];
  v31 = v1[5];
  v32 = v16;
  v33[0] = v1[7];
  *(v33 + 9) = *(v1 + 121);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2753EF21C(&v27, v26);
  sub_275458660();
  sub_27546EB00();
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  v26[3] = v30;
  v25 = 0;
  sub_2754564F0();
  OUTLINED_FUNCTION_4_24();
  if (v2)
  {
    OUTLINED_FUNCTION_3_32();
  }

  else
  {
    OUTLINED_FUNCTION_3_32();
    *&v21 = v20;
    *(&v21 + 1) = v15;
    v24 = 1;
    sub_2754586B4();
    OUTLINED_FUNCTION_4_24();
    v21 = v31;
    v22 = v32;
    *v23 = v33[0];
    *&v23[9] = *(v33 + 9);
    v24 = 2;
    sub_2754303A4();
    OUTLINED_FUNCTION_4_24();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_275458660()
{
  result = qword_2809DC898;
  if (!qword_2809DC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC898);
  }

  return result;
}

unint64_t sub_2754586B4()
{
  result = qword_2809DC8A0;
  if (!qword_2809DC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8A0);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.Automation.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_275458A0C(0, &qword_2809DC8A8, MEMORY[0x277D844C8]);
  v6 = OUTLINED_FUNCTION_8_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275458660();
  sub_27546EAE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  sub_275456A30();
  OUTLINED_FUNCTION_1_44();
  sub_27546E8D0();
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v28;
  LOBYTE(v15[0]) = 1;
  sub_275458A70();
  OUTLINED_FUNCTION_1_44();
  sub_27546E8D0();
  v14 = v16[0];
  v10 = v16[1];
  v20 = 2;
  sub_27543045C();
  OUTLINED_FUNCTION_1_44();
  sub_27546E8D0();
  v11 = OUTLINED_FUNCTION_0_44();
  v12(v11);
  v29 = v21;
  v30 = v22;
  v31[0] = *v23;
  *(v31 + 9) = *&v23[9];
  v15[0] = v32;
  v15[1] = v33;
  v15[2] = v34;
  v15[3] = v35;
  *(&v15[7] + 9) = *&v23[9];
  v15[6] = v22;
  v15[7] = *v23;
  *&v15[4] = v14;
  *(&v15[4] + 1) = v10;
  v15[5] = v21;
  memcpy(a2, v15, 0x89uLL);
  sub_275458AC4(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_6_23();
  v16[8] = v14;
  v16[9] = v10;
  v17 = v29;
  v18 = v30;
  *v19 = v31[0];
  *&v19[9] = *(v31 + 9);
  return sub_275458AFC(v16);
}

void sub_275458A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275458660();
    v7 = a3(a1, &_s10AutomationV10CodingKeysON_0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275458A70()
{
  result = qword_2809DC8B0;
  if (!qword_2809DC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8B0);
  }

  return result;
}

uint64_t sub_275458B64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_275458BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s10AutomationV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275458CE4);
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

unint64_t sub_275458D20()
{
  result = qword_2809DC8B8;
  if (!qword_2809DC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8B8);
  }

  return result;
}

unint64_t sub_275458D78()
{
  result = qword_2809DC8C0;
  if (!qword_2809DC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8C0);
  }

  return result;
}

unint64_t sub_275458DD0()
{
  result = qword_2809DC8C8;
  if (!qword_2809DC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8C8);
  }

  return result;
}

void sub_275458E24()
{
  v43 = *(v0 + 32);
  v1 = *(v0 + 56);
  v48 = *(v0 + 48);
  v49 = *(v0 + 8);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v46 = *(v0 + 112);
  v47 = *(v0 + 104);
  v44 = *(v0 + 128);
  v45 = *(v0 + 120);
  v5 = *(v0 + 136);
  v6 = sub_275430794(*(v0 + 64), *(v0 + 72));
  v7 = *(v6 + 16);
  if (!v7)
  {

    return;
  }

  v8 = v6;
  v63 = MEMORY[0x277D84F90];
  sub_275441A94(0, v7, 0);
  v15 = 0;
  v16 = v63;
  v17 = *(v1 + 16);
  v50 = v8 + 32;
  v41 = v3;
  v42 = v2;
  while (1)
  {
    v18 = *(v50 + 8 * v15);
    if (v18 < v4 || v5 > 0xFB)
    {
      v19 = v3 + v18 - v4;
      v20 = v2 + v19 - v3;
      if (!v17)
      {
LABEL_6:
        v21 = v43;
        goto LABEL_19;
      }
    }

    else
    {
      v54 = v2;
      v55 = v3;
      v56 = v4;
      v57 = v47;
      v58 = v46;
      v59 = v45;
      v60 = v44;
      v61 = v5;
      v53 = v18;
      v51[0] = v47;
      v51[1] = v46;
      v51[2] = v45;
      v51[3] = v44;
      v52 = v5;
      sub_27542DA30(&v53, v51, v9, v10, v11, v12, v13, v14, v62);
      v20 = v62[0];
      v19 = v62[1];
      v18 = v62[2];
      if (!v17)
      {
        goto LABEL_6;
      }
    }

    v22 = *(v1 + 16);
    if (!v22)
    {
      break;
    }

    if (v17 > v22)
    {
      goto LABEL_25;
    }

    if (v20 >= *(v1 + 40))
    {
      v21 = *(v1 + 24 * v17 + 8);
      swift_bridgeObjectRetain_n();

      v23 = sub_27544FBA0(1, v1);
      v64[0] = v1;
      v64[1] = v23;
      v64[2] = v24;
      v64[3] = v25;
      v64[4] = v26;
      sub_27544E690(v64);
      v28 = v27;
      swift_unknownObjectRelease();

      v29 = *(v28 + 16);
      v30 = v28 + 40 * v29 + 32;
      v31 = v29 + 1;
      while (--v31)
      {
        v32 = v30;
        v30 -= 40;
        v33 = *(v32 - 24);
        if (v20 >= v33)
        {
          v34 = *(v32 - 16);
          if (v34 >= v20)
          {
            v35 = *v30;
            v36 = *(v30 + 8);
            v37 = *(v30 + 32);

            v54 = v35;
            v55 = v36;
            v56 = v33;
            v57 = v34;
            LOBYTE(v58) = v37;
            v51[0] = v20;
            v21 = sub_275453DA8(v51);
            goto LABEL_18;
          }
        }
      }

LABEL_18:

      v3 = v41;
      v2 = v42;
    }

    else
    {
      v21 = *(v1 + 32);
    }

LABEL_19:
    v63 = v16;
    v39 = *(v16 + 16);
    v38 = *(v16 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_275441A94((v38 > 1), v39 + 1, 1);
      v16 = v63;
    }

    ++v15;
    *(v16 + 16) = v39 + 1;
    v40 = (v16 + 32 * v39);
    v40[4] = v21;
    v40[5] = v20;
    v40[6] = v19;
    v40[7] = v18;
    if (v15 == v7)
    {

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_275459120()
{
  if (!qword_2809DB588)
  {
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB588);
    }
  }
}

__n128 sub_275459170@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[3];
  v13 = *(a1 + 1);
  v14 = v5;
  v11 = *(a2 + 1);
  v12 = v7;
  sub_27545C6AC(&v13, &v11, v15);
  result = v15[0];
  v9 = v15[1];
  v10 = v15[2];
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = result;
  *(a3 + 32) = v9;
  *(a3 + 48) = v10;
  return result;
}

double sub_2754591EC@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  *&result = sub_275459170(a1, a2, a3).n128_u64[0];
  return result;
}

void sub_2754591F4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_39(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_275459448(v4, 1, sub_275431038);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_24();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2754592AC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_39(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_275459448(v4, 1, sub_2754311BC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_24();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_275459364(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_275459448(result, 1, sub_275431D78);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 32 * v7 + 32), (a1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_275459448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_32()
{
  v2 = v0[11];
  v0[5] = v0[10];
  v0[6] = v2;
  v3 = v0[13];
  v0[7] = v0[12];
  v0[8] = v3;

  return sub_2753EF278((v0 + 5));
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return sub_27546E950();
}

__n128 OUTLINED_FUNCTION_6_23()
{
  v2 = *(v1 - 144);
  *(v0 + 160) = *(v1 - 160);
  *(v0 + 176) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 192) = result;
  *(v0 + 208) = v4;
  return result;
}

double Transition.SteppedSchedule.AutomationPoint.time.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_27545957C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_275459640(char a1)
{
  if (a1)
  {
    return 1701669236;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_275459674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545957C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545969C(uint64_t a1)
{
  v2 = sub_2754598A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754596D8(uint64_t a1)
{
  v2 = sub_2754598A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.AutomationPoint.encode(to:)(void *a1)
{
  sub_275459B24(0, &qword_2809DC8D0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754598A8();
  sub_27546EB00();
  LOBYTE(v20) = 0;
  sub_27546E930();
  if (!v2)
  {
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v19[7] = 1;
    sub_2754598FC();
    sub_27546E950();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2754598A8()
{
  result = qword_2809DC8D8;
  if (!qword_2809DC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8D8);
  }

  return result;
}

unint64_t sub_2754598FC()
{
  result = qword_2809DC8E0;
  if (!qword_2809DC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8E0);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.AutomationPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275459B24(0, &qword_2809DC8E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v20[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754598A8();
  sub_27546EAE0();
  if (!v2)
  {
    LOBYTE(v21) = 0;
    sub_27546E8B0();
    v16 = v15;
    v20[15] = 1;
    sub_275459B88();
    sub_27546E8D0();
    (*(v9 + 8))(v13, v6);
    v18 = v22;
    v19 = v21;
    *a2 = v16;
    *(a2 + 8) = v19;
    *(a2 + 24) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_275459B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2754598A8();
    v7 = a3(a1, &_s15AutomationPointV10CodingKeysON_0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275459B88()
{
  result = qword_2809DC8F0;
  if (!qword_2809DC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8F0);
  }

  return result;
}

_BYTE *_s15AutomationPointV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275459CE8);
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

unint64_t sub_275459D24()
{
  result = qword_2809DC8F8;
  if (!qword_2809DC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8F8);
  }

  return result;
}

unint64_t sub_275459D7C()
{
  result = qword_2809DC900;
  if (!qword_2809DC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC900);
  }

  return result;
}

unint64_t sub_275459DD4()
{
  result = qword_2809DC908;
  if (!qword_2809DC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC908);
  }

  return result;
}

__n128 Transition.SteppedSchedule.AutomationRamp.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_275459E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61567472617473 && a2 == 0xEA00000000006575;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6156646E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

uint64_t sub_275459F6C(char a1)
{
  if (!a1)
  {
    return 0x6C61567472617473;
  }

  if (a1 == 1)
  {
    return 0x65756C6156646E65;
  }

  return 0x676E6152656D6974;
}

uint64_t sub_275459FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275459E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275459FFC(uint64_t a1)
{
  v2 = sub_27545A23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545A038(uint64_t a1)
{
  v2 = sub_27545A23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.AutomationRamp.encode(to:)(void *a1)
{
  sub_27545A4C0(0, &qword_2809DC910, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v14 = *v1;
  v13 = v1[1];
  v15 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = v15;
  v16 = v1[6];
  v17 = v1[7];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545A23C();
  sub_27546EB00();
  LOBYTE(v23) = 0;
  sub_27546E930();
  if (!v2)
  {
    LOBYTE(v23) = 1;
    sub_27546E930();
    v23 = v21;
    v24 = v20;
    v25 = v16;
    v26 = v17;
    v22 = 2;
    sub_27545A290();
    sub_27546E950();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_27545A23C()
{
  result = qword_2809DC918;
  if (!qword_2809DC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC918);
  }

  return result;
}

unint64_t sub_27545A290()
{
  result = qword_2809DC920;
  if (!qword_2809DC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC920);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.AutomationRamp.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_27545A4C0(0, &qword_2809DC928, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545A23C();
  sub_27546EAE0();
  if (!v2)
  {
    LOBYTE(v21[0]) = 0;
    OUTLINED_FUNCTION_1_45();
    v16 = v15;
    LOBYTE(v21[0]) = 1;
    OUTLINED_FUNCTION_1_45();
    v18 = v17;
    v22 = 2;
    sub_27545A524();
    sub_27546E8D0();
    (*(v9 + 8))(v13, v6);
    *a2 = v16;
    *(a2 + 8) = v18;
    v20 = v21[1];
    *(a2 + 16) = v21[0];
    *(a2 + 32) = v20;
    *(a2 + 48) = v21[2];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545A4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545A23C();
    v7 = a3(a1, &_s14AutomationRampV10CodingKeysON_1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27545A524()
{
  result = qword_2809DC930;
  if (!qword_2809DC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC930);
  }

  return result;
}

uint64_t sub_27545A5A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27545A5C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

_BYTE *_s14AutomationRampV10CodingKeysOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545A6E0);
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

unint64_t sub_27545A71C()
{
  result = qword_2809DC938;
  if (!qword_2809DC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC938);
  }

  return result;
}

unint64_t sub_27545A774()
{
  result = qword_2809DC940;
  if (!qword_2809DC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC940);
  }

  return result;
}

unint64_t sub_27545A7CC()
{
  result = qword_2809DC948;
  if (!qword_2809DC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC948);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_45()
{

  return sub_27546E8B0();
}

uint64_t sub_27545A850(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000027546F7E0 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000027546F800 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_27545A95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545A850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545A984(uint64_t a1)
{
  v2 = sub_27545ABB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545A9C0(uint64_t a1)
{
  v2 = sub_27545ABB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.AutomationSchedule.encode(to:)(void *a1)
{
  sub_27545AEB4(0, &qword_2809DC950, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_8_9(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_27545ABB4();

  sub_27546EB00();
  v18 = v12;
  v17 = 0;
  sub_27545AC08();
  sub_27545AF18(&qword_2809DC968, sub_27545AC58);
  OUTLINED_FUNCTION_1_46();

  if (!v14)
  {
    v18 = v16;
    v17 = 1;
    OUTLINED_FUNCTION_1_46();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_27545ABB4()
{
  result = qword_2809DC958;
  if (!qword_2809DC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC958);
  }

  return result;
}

void sub_27545AC08()
{
  if (!qword_2809DC960)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DC960);
    }
  }
}

unint64_t sub_27545AC58()
{
  result = qword_2809DC970;
  if (!qword_2809DC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC970);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.AutomationSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_27545AEB4(0, &qword_2809DC978, MEMORY[0x277D844C8]);
  v6 = OUTLINED_FUNCTION_8_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545ABB4();
  sub_27546EAE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_27545AC08();
  sub_27545AF18(&qword_2809DC980, sub_27545AF84);
  OUTLINED_FUNCTION_0_45();
  OUTLINED_FUNCTION_0_45();
  v10 = OUTLINED_FUNCTION_2_40();
  v11(v10);
  *a2 = v13;
  a2[1] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545AEB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545ABB4();
    v7 = a3(a1, &_s18AutomationScheduleV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_27545AF18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_27545AC08();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27545AF84()
{
  result = qword_2809DC988;
  if (!qword_2809DC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC988);
  }

  return result;
}

_BYTE *_s18AutomationScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545B0E4);
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

unint64_t sub_27545B120()
{
  result = qword_2809DC990;
  if (!qword_2809DC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC990);
  }

  return result;
}

unint64_t sub_27545B178()
{
  result = qword_2809DC998;
  if (!qword_2809DC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC998);
  }

  return result;
}

unint64_t sub_27545B1D0()
{
  result = qword_2809DC9A0;
  if (!qword_2809DC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_1_46()
{

  return sub_27546E950();
}

void Transition.SteppedSchedule.PlaybackAlignmentSchedule.transitionStartTime.getter()
{
  v1 = *v0;
  v2 = memcpy(__dst, v0 + 5, sizeof(__dst));
  OUTLINED_FUNCTION_0_46(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void Transition.SteppedSchedule.PlaybackAlignmentSchedule.incomingSongStartTime.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_1_47(a1, a2, a3, a4, a5, a6, a7, a8, v18, v20, v22);
  OUTLINED_FUNCTION_0_46(v10, v11, v12, v13, v14, v15, v16, v17, v19, v21);
}

void Transition.SteppedSchedule.PlaybackAlignmentSchedule.transitionMidpointTime.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *(v8 + 32);
  v10 = OUTLINED_FUNCTION_1_47(a1, a2, a3, a4, a5, a6, a7, a8, v18, v20, v22);
  OUTLINED_FUNCTION_0_46(v10, v11, v12, v13, v14, v15, v16, v17, v19, v21);
}

void Transition.SteppedSchedule.PlaybackAlignmentSchedule.outgoingSongEndTime.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_1_47(a1, a2, a3, a4, a5, a6, a7, a8, v18, v20, v22);
  OUTLINED_FUNCTION_0_46(v10, v11, v12, v13, v14, v15, v16, v17, v19, v21);
}

void Transition.SteppedSchedule.PlaybackAlignmentSchedule.transitionEndTime.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *(v8 + 24);
  v10 = OUTLINED_FUNCTION_1_47(a1, a2, a3, a4, a5, a6, a7, a8, v18, v20, v22);
  OUTLINED_FUNCTION_0_46(v10, v11, v12, v13, v14, v15, v16, v17, v19, v21);
}

uint64_t sub_27545B3C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70614D656D6974 && a2 == 0xE700000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636C6143656D6974 && a2 == 0xEE00726F74616C75)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_27545B498(char a1)
{
  if (a1)
  {
    return 0x636C6143656D6974;
  }

  else
  {
    return 0x70614D656D6974;
  }
}

uint64_t sub_27545B4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545B3C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545B50C(uint64_t a1)
{
  v2 = sub_27545B72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545B548(uint64_t a1)
{
  v2 = sub_27545B72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.PlaybackAlignmentSchedule.encode(to:)(void *a1)
{
  v3 = v1;
  sub_27545B9F4(0, &qword_2809DC9A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19[-v12 - 8];
  v14 = *(v3 + 4);
  memcpy(v21, v3 + 40, sizeof(v21));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545B72C();
  sub_27546EB00();
  v16 = *v3;
  *&v19[16] = v3[1];
  *v19 = v16;
  *&v19[32] = v14;
  v20 = 0;
  sub_27545B780();
  OUTLINED_FUNCTION_3_33();
  if (!v2)
  {
    memcpy(v19, v21, sizeof(v19));
    v20 = 1;
    sub_27545B7D4();
    OUTLINED_FUNCTION_3_33();
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t sub_27545B72C()
{
  result = qword_2809DC9B0;
  if (!qword_2809DC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9B0);
  }

  return result;
}

unint64_t sub_27545B780()
{
  result = qword_2809DC9B8;
  if (!qword_2809DC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9B8);
  }

  return result;
}

unint64_t sub_27545B7D4()
{
  result = qword_2809DC9C0;
  if (!qword_2809DC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9C0);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.PlaybackAlignmentSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_27545B9F4(0, &qword_2809DC9C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545B72C();
  sub_27546EAE0();
  if (!v2)
  {
    v21 = 0;
    sub_27545BA58();
    OUTLINED_FUNCTION_2_41();
    v18 = *&__src[16];
    v19 = *__src;
    v15 = *&__src[32];
    v21 = 1;
    sub_27545BAAC();
    OUTLINED_FUNCTION_2_41();
    (*(v9 + 8))(v13, v6);
    v17 = v18;
    *a2 = v19;
    *(a2 + 16) = v17;
    *(a2 + 32) = v15;
    memcpy((a2 + 40), __src, 0x79uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545B9F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545B72C();
    v7 = a3(a1, &_s25PlaybackAlignmentScheduleV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27545BA58()
{
  result = qword_2809DC9D0;
  if (!qword_2809DC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9D0);
  }

  return result;
}

unint64_t sub_27545BAAC()
{
  result = qword_2809DC9D8;
  if (!qword_2809DC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9D8);
  }

  return result;
}

uint64_t sub_27545BB38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3D && *(a1 + 161))
    {
      v2 = *a1 + 60;
    }

    else
    {
      v3 = *(a1 + 96) & 0x3C | (*(a1 + 96) >> 6);
      v4 = v3 ^ 0x3F;
      v2 = 62 - v3;
      if (v4 >= 0x3D)
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

uint64_t sub_27545BB88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 96) = (a2 ^ 0x3F) & 0xFC | ((a2 ^ 0x3F) << 6);
    }
  }

  return result;
}

_BYTE *_s25PlaybackAlignmentScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545BCDCLL);
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

unint64_t sub_27545BD18()
{
  result = qword_2809DC9E0;
  if (!qword_2809DC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9E0);
  }

  return result;
}

unint64_t sub_27545BD70()
{
  result = qword_2809DC9E8;
  if (!qword_2809DC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9E8);
  }

  return result;
}

unint64_t sub_27545BDC8()
{
  result = qword_2809DC9F0;
  if (!qword_2809DC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9F0);
  }

  return result;
}

double OUTLINED_FUNCTION_0_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v12;

  *&result = sub_27542FD18(&a10, a3, a4, a5, a6, a7, a8, v10).n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_1_47(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __dst)
{

  return memcpy(&__dst, (v11 + 40), 0x79uLL);
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return sub_27546E950();
}

uint64_t sub_27545BEE8(uint64_t a1)
{
  v2 = sub_27545C104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545BF24(uint64_t a1)
{
  v2 = sub_27545C104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.PlaybackTime.encode(to:)(void *a1)
{
  sub_27545C334(0, &qword_2809DC9F8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v14 = *v1;
  v13 = v1[1];
  v15 = v1[2];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545C104();
  sub_27546EB00();
  v20 = v14;
  v19 = 0;
  sub_27542D5D8();
  OUTLINED_FUNCTION_1_21();
  if (!v2)
  {
    v20 = v13;
    v19 = 1;
    sub_27542D62C();
    OUTLINED_FUNCTION_1_21();
    v20 = v15;
    v19 = 2;
    sub_27542D680();
    OUTLINED_FUNCTION_1_21();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_27545C104()
{
  result = qword_2809DCA00;
  if (!qword_2809DCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA00);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.PlaybackTime.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_27545C334(0, &qword_2809DCA08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545C104();
  sub_27546EAE0();
  if (!v2)
  {
    v20 = 0;
    sub_27542D478();
    OUTLINED_FUNCTION_0_25();
    v15 = v21;
    v20 = 1;
    sub_27542D4CC();
    OUTLINED_FUNCTION_0_25();
    v16 = v21;
    v20 = 2;
    sub_27542D520();
    OUTLINED_FUNCTION_0_25();
    (*(v9 + 8))(v13, v6);
    v18 = v21;
    *a2 = v15;
    a2[1] = v16;
    a2[2] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545C334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545C104();
    v7 = a3(a1, &_s12PlaybackTimeV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27545C3A0()
{
  result = qword_2809DCA10;
  if (!qword_2809DCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA10);
  }

  return result;
}

_BYTE *_s12PlaybackTimeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545C564);
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

unint64_t sub_27545C5A0()
{
  result = qword_2809DCA18;
  if (!qword_2809DCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA18);
  }

  return result;
}

unint64_t sub_27545C5F8()
{
  result = qword_2809DCA20;
  if (!qword_2809DCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA20);
  }

  return result;
}

unint64_t sub_27545C650()
{
  result = qword_2809DCA28;
  if (!qword_2809DCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA28);
  }

  return result;
}

float64x2_t *sub_27545C6AC@<X0>(float64x2_t *result@<X0>, float64x2_t *a2@<X1>, double *a3@<X8>)
{
  v3 = vmovn_s64(vcgtq_f64(*result, *a2));
  if (v3.i8[0])
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3.i8[4])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result[1].f64[0];
  v5 = a2[1].f64[0];
  if (v5 >= v4)
  {
    v6 = a3;
    v7.val[1] = *a2;
    v7.val[0] = *result;
    vst2q_f64(v6, v7);
    v6 += 4;
    *v6 = v4;
    a3[5] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_27545C714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6954676E6F73 && a2 == 0xED000065676E6152;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000027546F820 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x800000027546F700 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

uint64_t sub_27545C838(char a1)
{
  if (!a1)
  {
    return 0x656D6954676E6F73;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000013;
}

uint64_t sub_27545C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545C714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545C8D8(uint64_t a1)
{
  v2 = sub_27545CB8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545C914(uint64_t a1)
{
  v2 = sub_27545CB8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.PlaybackTimeRange.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_3_34();
  sub_27545D074(0, v4, v5, &_s17PlaybackTimeRangeV10CodingKeysON, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_8_9(v6);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v32 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v20 = v1[5];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545CB8C();
  sub_27546EB00();
  v32 = v15;
  v33 = v16;
  v34 = 0;
  OUTLINED_FUNCTION_1_48();
  sub_27545D074(0, v22, v23, v24, MEMORY[0x277D83638]);
  sub_27545CBE0();
  OUTLINED_FUNCTION_0_47();
  if (!v2)
  {
    v32 = v17;
    v33 = v18;
    v34 = 1;
    OUTLINED_FUNCTION_2_43();
    sub_27545D074(0, v25, v26, v27, MEMORY[0x277D83638]);
    sub_27545CC90();
    OUTLINED_FUNCTION_0_47();
    v32 = v19;
    v33 = v20;
    v34 = 2;
    OUTLINED_FUNCTION_4_25();
    sub_27545D074(0, v28, v29, v30, MEMORY[0x277D83638]);
    sub_27545CD40();
    OUTLINED_FUNCTION_0_47();
  }

  return (*(v10 + 8))(v14, v7);
}

unint64_t sub_27545CB8C()
{
  result = qword_2809DCA38;
  if (!qword_2809DCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA38);
  }

  return result;
}

unint64_t sub_27545CBE0()
{
  result = qword_2809DB6E0;
  if (!qword_2809DB6E0)
  {
    sub_27545D074(255, &qword_2809DB6D0, sub_275434B84, &type metadata for SongTime, MEMORY[0x277D83638]);
    sub_27542D5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6E0);
  }

  return result;
}

unint64_t sub_27545CC90()
{
  result = qword_2809DCA48;
  if (!qword_2809DCA48)
  {
    sub_27545D074(255, &qword_2809DCA40, sub_2754481A4, &type metadata for StretchedSongTime, MEMORY[0x277D83638]);
    sub_27542D62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA48);
  }

  return result;
}

unint64_t sub_27545CD40()
{
  result = qword_2809DB4A0;
  if (!qword_2809DB4A0)
  {
    sub_27545D074(255, &qword_2809DB490, sub_27542EFB4, &type metadata for TransitionTime, MEMORY[0x277D83638]);
    sub_27542D680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4A0);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.PlaybackTimeRange.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  OUTLINED_FUNCTION_3_34();
  sub_27545D074(0, v5, v6, &_s17PlaybackTimeRangeV10CodingKeysON, MEMORY[0x277D844C8]);
  v32 = v7;
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v31 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545CB8C();
  sub_27546EAE0();
  if (!v2)
  {
    v16 = v10;
    OUTLINED_FUNCTION_1_48();
    sub_27545D074(0, v17, v18, v19, MEMORY[0x277D83638]);
    v34 = 0;
    sub_27545D0DC();
    OUTLINED_FUNCTION_5_25();
    v20 = v32;
    OUTLINED_FUNCTION_6_24();
    v21 = v33;
    OUTLINED_FUNCTION_2_43();
    sub_27545D074(0, v22, v23, v24, MEMORY[0x277D83638]);
    v34 = 1;
    sub_27545D18C();
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_6_24();
    v25 = v33;
    OUTLINED_FUNCTION_4_25();
    sub_27545D074(0, v26, v27, v28, MEMORY[0x277D83638]);
    v34 = 2;
    sub_27545D23C();
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_6_24();
    (*(v16 + 8))(v14, v20);
    v30 = v33;
    *a2 = v21;
    a2[1] = v25;
    a2[2] = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545D074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_27545D0DC()
{
  result = qword_2809DB708;
  if (!qword_2809DB708)
  {
    sub_27545D074(255, &qword_2809DB6D0, sub_275434B84, &type metadata for SongTime, MEMORY[0x277D83638]);
    sub_27542D478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB708);
  }

  return result;
}

unint64_t sub_27545D18C()
{
  result = qword_2809DCA58;
  if (!qword_2809DCA58)
  {
    sub_27545D074(255, &qword_2809DCA40, sub_2754481A4, &type metadata for StretchedSongTime, MEMORY[0x277D83638]);
    sub_27542D4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA58);
  }

  return result;
}

unint64_t sub_27545D23C()
{
  result = qword_2809DB4B0;
  if (!qword_2809DB4B0)
  {
    sub_27545D074(255, &qword_2809DB490, sub_27542EFB4, &type metadata for TransitionTime, MEMORY[0x277D83638]);
    sub_27542D520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4B0);
  }

  return result;
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

uint64_t sub_27545D35C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27545D37C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

_BYTE *_s17PlaybackTimeRangeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545D490);
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

unint64_t sub_27545D4CC()
{
  result = qword_2809DCA60;
  if (!qword_2809DCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA60);
  }

  return result;
}

unint64_t sub_27545D524()
{
  result = qword_2809DCA68;
  if (!qword_2809DCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA68);
  }

  return result;
}

unint64_t sub_27545D57C()
{
  result = qword_2809DCA70;
  if (!qword_2809DCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_47()
{

  return sub_27546E950();
}

uint64_t OUTLINED_FUNCTION_6_24()
{

  return sub_27546E8D0();
}

uint64_t sub_27545D6C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000027546F840 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x800000027546F860 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000027546F880 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x800000027546F8A0 == a2;
        if (v8 || (sub_27546E9A0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x697469736E617274 && a2 == 0xEE00656D69546E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_27546E9A0();

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

unint64_t sub_27545D874(char a1)
{
  result = 0x697469736E617274;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      return result;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_27545D938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545D6C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545D960(uint64_t a1)
{
  v2 = sub_27545DBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545D99C(uint64_t a1)
{
  v2 = sub_27545DBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.SynchronizedPlaybackTime.encode(to:)(void *a1)
{
  sub_27545DE8C(0, &qword_2809DCA78, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - v11;
  v14 = *v1;
  v13 = v1[1];
  v16 = v1[2];
  v15 = v1[3];
  v17 = v1[4];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545DBEC();
  sub_27546EB00();
  v22 = v14;
  v21 = 0;
  sub_27542D5D8();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_4_26();
  if (!v2)
  {
    v22 = v13;
    v21 = 1;
    sub_27542D62C();
    OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_4_26();
    v22 = v16;
    v21 = 2;
    OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_4_26();
    v22 = v15;
    v21 = 3;
    OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_4_26();
    v22 = v17;
    v21 = 4;
    sub_27542D680();
    OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_4_26();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_27545DBEC()
{
  result = qword_2809DCA80;
  if (!qword_2809DCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA80);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.SynchronizedPlaybackTime.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_27545DE8C(0, &qword_2809DCA88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545DBEC();
  sub_27546EAE0();
  if (!v2)
  {
    v22 = 0;
    sub_27542D478();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35();
    v15 = v23;
    v22 = 1;
    sub_27542D4CC();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35();
    v16 = v23;
    v22 = 2;
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35();
    v17 = v23;
    v22 = 3;
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35();
    v18 = v23;
    v22 = 4;
    sub_27542D520();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35();
    (*(v9 + 8))(v13, v6);
    v20 = v23;
    *a2 = v15;
    a2[1] = v16;
    a2[2] = v17;
    a2[3] = v18;
    a2[4] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545DE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545DBEC();
    v7 = a3(a1, &_s24SynchronizedPlaybackTimeV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27545DF28()
{
  result = qword_2809DCA90;
  if (!qword_2809DCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA90);
  }

  return result;
}

BOOL sub_27545DF7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_275447A28(v5, v7);
}

BOOL sub_27545DFC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_275454BDC(v5, v7);
}

BOOL sub_27545E014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_2753F4D6C(v5, v7);
}

_BYTE *_s24SynchronizedPlaybackTimeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545E16CLL);
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

unint64_t sub_27545E1A8()
{
  result = qword_2809DCA98;
  if (!qword_2809DCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA98);
  }

  return result;
}

unint64_t sub_27545E200()
{
  result = qword_2809DCAA0;
  if (!qword_2809DCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAA0);
  }

  return result;
}

unint64_t sub_27545E258()
{
  result = qword_2809DCAA8;
  if (!qword_2809DCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_35()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return sub_27546E950();
}

uint64_t sub_27545E328(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000027546F8C0 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x800000027546F8E0 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x800000027546F900 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ELL && 0x800000027546F920 == a2;
        if (v8 || (sub_27546E9A0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x800000027546F700 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_27546E9A0();

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

unint64_t sub_27545E4D0(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27545E570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545E328(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545E598(uint64_t a1)
{
  v2 = sub_27545E89C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545E5D4(uint64_t a1)
{
  v2 = sub_27545E89C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Transition.SteppedSchedule.SynchronizedPlaybackTimeRange.encode(to:)()
{
  OUTLINED_FUNCTION_12_13();
  v3 = v2;
  OUTLINED_FUNCTION_1_50();
  sub_27545EBF4(0, v4, v5, &_s29SynchronizedPlaybackTimeRangeV10CodingKeysON, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_8_9(v6);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v34 - v13;
  v15 = *v0;
  v16 = v0[1];
  v17 = v0[2];
  v34 = v0[3];
  v35 = v17;
  v18 = v0[4];
  v19 = v0[5];
  v20 = v0[6];
  v21 = v0[7];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_27545E89C();
  OUTLINED_FUNCTION_7_21();
  sub_27546EB00();
  v36 = v15;
  v37 = v16;
  OUTLINED_FUNCTION_3_36();
  sub_27545EBF4(0, v25, v26, v27, MEMORY[0x277D83638]);
  sub_27545CBE0();
  OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_4_26();
  if (!v1)
  {
    v36 = v35;
    v37 = v34;
    OUTLINED_FUNCTION_2_44();
    sub_27545EBF4(0, v28, v29, v30, MEMORY[0x277D83638]);
    sub_27545CC90();
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_4_26();
    v36 = v18;
    v37 = v19;
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_4_26();
    v36 = v20;
    v37 = v21;
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_4_26();
    v36 = v22;
    v37 = v23;
    OUTLINED_FUNCTION_4_27();
    sub_27545EBF4(0, v31, v32, v33, MEMORY[0x277D83638]);
    sub_27545CD40();
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_4_26();
  }

  (*(v10 + 8))(v14, v7);
  OUTLINED_FUNCTION_11_15();
}

unint64_t sub_27545E89C()
{
  result = qword_2809DCAB8;
  if (!qword_2809DCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAB8);
  }

  return result;
}

void Transition.SteppedSchedule.SynchronizedPlaybackTimeRange.init(from:)()
{
  OUTLINED_FUNCTION_12_13();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_1_50();
  sub_27545EBF4(0, v5, v6, &_s29SynchronizedPlaybackTimeRangeV10CodingKeysON, MEMORY[0x277D844C8]);
  v35 = v7;
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v32 - v13;
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_27545E89C();
  sub_27546EAE0();
  if (!v0)
  {
    v33 = v4;
    v34 = v10;
    OUTLINED_FUNCTION_3_36();
    sub_27545EBF4(0, v16, v17, v18, MEMORY[0x277D83638]);
    sub_27545D0DC();
    OUTLINED_FUNCTION_6_25();
    v19 = v35;
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_9_12();
    v20 = v36;
    OUTLINED_FUNCTION_2_44();
    sub_27545EBF4(0, v21, v22, v23, MEMORY[0x277D83638]);
    v24 = sub_27545D18C();
    OUTLINED_FUNCTION_6_25();
    OUTLINED_FUNCTION_9_12();
    v32 = v24;
    v25 = v36;
    OUTLINED_FUNCTION_6_25();
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_9_12();
    v26 = v36;
    OUTLINED_FUNCTION_6_25();
    OUTLINED_FUNCTION_9_12();
    v27 = v36;
    OUTLINED_FUNCTION_4_27();
    sub_27545EBF4(0, v28, v29, v30, MEMORY[0x277D83638]);
    sub_27545D23C();
    OUTLINED_FUNCTION_6_25();
    OUTLINED_FUNCTION_9_12();
    (*(v34 + 8))(v14, v19);
    v31 = v33;
    *v33 = v20;
    v31[1] = v25;
    v31[2] = v26;
    v31[3] = v27;
    v31[4] = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_11_15();
}

void sub_27545EBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_27545ECB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27545ECD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
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

  *(result + 80) = v3;
  return result;
}

_BYTE *_s29SynchronizedPlaybackTimeRangeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545EDF4);
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

unint64_t sub_27545EE30()
{
  result = qword_2809DCAC8;
  if (!qword_2809DCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAC8);
  }

  return result;
}

unint64_t sub_27545EE88()
{
  result = qword_2809DCAD0;
  if (!qword_2809DCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAD0);
  }

  return result;
}

unint64_t sub_27545EEE0()
{
  result = qword_2809DCAD8;
  if (!qword_2809DCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_27546E8D0();
}

void *sub_27545F024(void *result)
{
  v1 = result[3];
  v2 = result[4] >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v48 = result[4] >> 1;
  v49 = result[3];
  v5 = *result;
  v4 = result[1];
  v6 = result[2];
  v7 = *(*result + 16);
  if (v3 >= v7)
  {
    v8 = *(*result + 16);
  }

  else
  {
    v8 = v2 - v1;
  }

  v57 = MEMORY[0x277D84F90];
  result = sub_275441AF4(0, v8 & ~(v8 >> 63), 0);
  if (v3 < 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return result;
  }

  v9 = v57;
  v45 = v5;
  if (v8)
  {
    v10 = v8;

    result = swift_unknownObjectRetain();
    v11 = 0;
    v12 = (v5 + 48);
    v14 = v48;
    v13 = v49;
    v15 = v6 + 24 * v49 + 8;
    v16 = v49 - v48;
    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 == v11)
      {
        goto LABEL_52;
      }

      if (v11 >= v7)
      {
        goto LABEL_41;
      }

      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_42;
      }

      if (!(v16 + v11))
      {
        goto LABEL_52;
      }

      if ((v13 + v11) < v13 || (v13 + v11) >= v14)
      {
        goto LABEL_43;
      }

      v20 = *(v12 - 2);
      v21 = *(v15 - 8);
      if (v21 < v20)
      {
        goto LABEL_44;
      }

      v22 = *(v12 - 1);
      v23 = *v15;
      if (*v15 < v22)
      {
        goto LABEL_45;
      }

      v24 = *v12;
      v25 = *(v15 + 8);
      if (v25 < *v12)
      {
        goto LABEL_46;
      }

      v57 = v9;
      v27 = *(v9 + 16);
      v26 = *(v9 + 24);
      if (v27 >= v26 >> 1)
      {
        v42 = v16;
        result = sub_275441AF4((v26 > 1), v27 + 1, 1);
        v16 = v42;
        v14 = v48;
        v13 = v49;
        v9 = v57;
      }

      *(v9 + 16) = v27 + 1;
      v28 = (v9 + 48 * v27);
      v28[4] = v20;
      v28[5] = v21;
      v28[6] = v22;
      v28[7] = v23;
      v28[8] = v24;
      v28[9] = v25;
      ++v11;
      v12 += 3;
      v15 += 24;
      if (v17 == v10)
      {
        v29 = v13 + v11;
        v5 = v45;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  result = swift_unknownObjectRetain();
  v18 = 0;
  v14 = v48;
  v13 = v49;
  v29 = v49;
LABEL_26:
  v30 = 0;
  v46 = v5 + 24 * v18;
  v47 = v6 + 24 * v29;
  for (i = v29; v7 != v18; ++i)
  {
    if (v18 >= v7)
    {
      goto LABEL_47;
    }

    if (__OFADD__(v18, 1))
    {
      goto LABEL_48;
    }

    if (v14 == i)
    {
      break;
    }

    if (v29 < v13 || i >= v14)
    {
      goto LABEL_49;
    }

    v33 = *(v46 + v30 + 48);
    v34 = *(v47 + v30 + 16);
    v52 = *(v46 + v30 + 32);
    v53 = v33;
    v50 = *(v47 + v30);
    v51 = v34;
    result = sub_27545C6AC(&v52, &v50, &v54);
    v35 = v54;
    v36 = v55;
    v37 = v56;
    v57 = v9;
    v39 = *(v9 + 16);
    v38 = *(v9 + 24);
    if (v39 >= v38 >> 1)
    {
      v43 = v55;
      v44 = v54;
      v41 = v56;
      result = sub_275441AF4((v38 > 1), v39 + 1, 1);
      v37 = v41;
      v36 = v43;
      v35 = v44;
      v9 = v57;
    }

    *(v9 + 16) = v39 + 1;
    v40 = (v9 + 48 * v39);
    v40[2] = v35;
    v40[3] = v36;
    v40[4] = v37;
    v30 += 24;
    ++v18;
    v14 = v48;
    v13 = v49;
  }

  swift_unknownObjectRelease();

  return v9;
}

void *Transition.SteppedSchedule.TimeStretchingSchedule.outgoingSongSteps.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v4 = *(v0 + 16);
  v3 = *(v0 + 32);
  v8[0] = *(v0 + 48);
  *(v8 + 9) = *(v0 + 57);
  v5 = *(v0 + 8);
  v9 = v1;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  *v13 = *(v0 + 48);
  *&v13[9] = *(v0 + 57);
  memcpy(v14, (v0 + 73), sizeof(v14));
  return sub_27545F404(v1, v7, v5);
}

void *sub_27545F404(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 56);
  v4 = MEMORY[0x277D84F90];
  if (v3 <= 0xFB)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v31 = *(a2 + 32);
    v32 = *(a2 + 24);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = sub_275430794(a1, a3);
    v11 = *(v10 + 16);
    if (v11)
    {
      v45 = v4;
      sub_275441B14(0, v11, 0);
      v18 = 32;
      v19 = v4;
      do
      {
        v20 = *(v10 + v18);
        if (v20 >= v7)
        {
          v36 = v5;
          v37 = v6;
          v38 = v7;
          v39 = v32;
          v40 = v31;
          v41 = v8;
          v42 = v9;
          v43 = v3;
          v35 = v20;
          v33[0] = v32;
          v33[1] = v31;
          v33[2] = v8;
          v33[3] = v9;
          v34 = v3;
          sub_27542DA30(&v35, v33, v12, v13, v14, v15, v16, v17, v44);
          v22 = v44[0];
          v21 = v44[1];
          v20 = v44[2];
        }

        else
        {
          v21 = v6 + v20 - v7;
          v22 = v5 + v21 - v6;
        }

        v45 = v19;
        v24 = *(*&v19 + 16);
        v23 = *(*&v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_275441B14((v23 > 1), v24 + 1, 1);
          v19 = v45;
        }

        *(*&v19 + 16) = v24 + 1;
        v25 = (*&v19 + 24 * v24);
        v25[4] = v22;
        v25[5] = v21;
        v25[6] = v20;
        v18 += 8;
        --v11;
      }

      while (v11);
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    *&v26 = COERCE_DOUBLE(sub_27544FBA0(1, *&v19));
    v36 = v19;
    v37 = *&v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v4 = COERCE_DOUBLE(sub_27545F024(&v36));
    swift_unknownObjectRelease();
  }

  return *&v4;
}

void *Transition.SteppedSchedule.TimeStretchingSchedule.incomingSongSteps.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 112);
  v6[0] = *(v0 + 96);
  v6[1] = v3;
  v7[0] = *(v0 + 128);
  v4 = v7[0];
  *(v7 + 9) = *(v0 + 137);
  v9 = v1;
  v10 = v2;
  v11 = v6[0];
  v12 = v3;
  v13[0] = v4;
  *(v13 + 9) = *(v7 + 9);
  return sub_27545F404(v1, v6, v2);
}

uint64_t sub_27545F654(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x800000027546F940 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x800000027546F290 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x800000027546F960 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001ELL && 0x800000027546F2B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

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

unint64_t sub_27545F7B8(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27545F840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545F654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545F868(uint64_t a1)
{
  v2 = sub_27545FB74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545F8A4(uint64_t a1)
{
  v2 = sub_27545FB74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.TimeStretchingSchedule.encode(to:)(void *a1)
{
  sub_27545FF18(0, &qword_2809DCAE0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_8_9(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v21 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 2);
  v25 = *(v1 + 1);
  v26 = v14;
  v27[0] = *(v1 + 3);
  *(v27 + 9) = *(v1 + 57);
  v31 = v1[10];
  v15 = v1[11];
  *(v30 + 9) = *(v1 + 137);
  v16 = *(v1 + 8);
  v29 = *(v1 + 7);
  v30[0] = v16;
  v28 = *(v1 + 6);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_27545FB74();

  sub_27546EB00();
  v21 = v12;
  v22 = v13;
  v24 = 0;
  sub_2754586B4();
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_4_26();
  if (v18)
  {
  }

  else
  {
    v19 = v31;

    OUTLINED_FUNCTION_5_26(v25, v26);
    *v23 = v27[0];
    *&v23[9] = *(v27 + 9);
    v24 = 1;
    sub_2754303A4();
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_4_26();
    v21 = v19;
    v22 = v15;
    v24 = 2;
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_4_26();
    OUTLINED_FUNCTION_5_26(v28, v29);
    *v23 = v30[0];
    *&v23[9] = *(v30 + 9);
    v24 = 3;
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_4_26();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_27545FB74()
{
  result = qword_2809DCAE8;
  if (!qword_2809DCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAE8);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.TimeStretchingSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_27545FF18(0, &qword_2809DCAF0, MEMORY[0x277D844C8]);
  v38 = v5;
  v6 = OUTLINED_FUNCTION_8_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545FB74();
  sub_27546EAE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_275458A70();
  OUTLINED_FUNCTION_2_45();
  v10 = v16[0];
  v27 = 1;
  sub_27543045C();
  OUTLINED_FUNCTION_3_37();
  v35 = v28;
  v36 = v29;
  v37[0] = v30[0];
  *(v37 + 9) = *(v30 + 9);
  OUTLINED_FUNCTION_2_45();
  v11 = v16[0];
  v23 = 3;
  OUTLINED_FUNCTION_3_37();
  v12 = OUTLINED_FUNCTION_0_50();
  v13(v12);
  v31 = v24;
  v32 = v25;
  *v33 = *v26;
  *&v33[9] = *&v26[9];
  v15[1] = v28;
  v15[2] = v29;
  v15[3] = v37[0];
  *(&v15[3] + 9) = *(v30 + 9);
  *(&v15[8] + 9) = *&v26[9];
  v15[7] = v25;
  v15[8] = *v26;
  v15[0] = v16[0];
  HIDWORD(v15[4]) = *&v34[3];
  *(&v15[4] + 9) = *v34;
  v15[5] = v16[0];
  v15[6] = v24;
  memcpy(a2, v15, 0x99uLL);
  sub_27545FF7C(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v16[0] = v10;
  v16[1] = v35;
  v16[2] = v36;
  *v17 = v37[0];
  *&v17[9] = *(v37 + 9);
  *v18 = *v34;
  *&v18[3] = *&v34[3];
  v19 = v11;
  *&v22[9] = *&v33[9];
  v21 = v32;
  *v22 = *v33;
  v20 = v31;
  return sub_27545FFB4(v16);
}

void sub_27545FF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545FB74();
    v7 = a3(a1, &_s22TimeStretchingScheduleV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_275460014(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_275460054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s22TimeStretchingScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275460198);
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

unint64_t sub_2754601D4()
{
  result = qword_2809DCAF8;
  if (!qword_2809DCAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAF8);
  }

  return result;
}

unint64_t sub_27546022C()
{
  result = qword_2809DCB00;
  if (!qword_2809DCB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB00);
  }

  return result;
}

unint64_t sub_275460284()
{
  result = qword_2809DCB08;
  if (!qword_2809DCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_50()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_45()
{
  v2 = *(v0 - 72);

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_3_37()
{
  v2 = *(v0 - 72);

  return sub_27546E8D0();
}

double Transition.SteppedSchedule.TimeStretchingStep.playbackRate.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  result = (v0[1] - *v0) / (v2 - v1);
  if (v2 - v1 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

__n128 Transition.SteppedSchedule.TimeStretchingStep.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_275460394(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_275460434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275460394(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275460460(uint64_t a1)
{
  v2 = sub_275460638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27546049C(uint64_t a1)
{
  v2 = sub_275460638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.TimeStretchingStep.encode(to:)(void *a1)
{
  v2 = v1;
  sub_275460824(0, &qword_2809DCB10, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v18 - v11;
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275460638();
  sub_27546EB00();
  v16 = *(v2 + 16);
  v18[0] = *v2;
  v18[1] = v16;
  v19 = v13;
  v20 = v14;
  sub_27545A290();
  sub_27546E950();
  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_275460638()
{
  result = qword_2809DCB18;
  if (!qword_2809DCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB18);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.TimeStretchingStep.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_275460824(0, &qword_2809DCB20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275460638();
  sub_27546EAE0();
  if (!v2)
  {
    sub_27545A524();
    sub_27546E8D0();
    (*(v9 + 8))(v13, v6);
    v15 = v18[1];
    v16 = v18[2];
    *a2 = v18[0];
    a2[1] = v15;
    a2[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_275460824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275460638();
    v7 = a3(a1, &_s18TimeStretchingStepV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *_s18TimeStretchingStepV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275460964);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2754609A0()
{
  result = qword_2809DCB28;
  if (!qword_2809DCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB28);
  }

  return result;
}

unint64_t sub_2754609F8()
{
  result = qword_2809DCB30;
  if (!qword_2809DCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB30);
  }

  return result;
}

unint64_t sub_275460A50()
{
  result = qword_2809DCB38;
  if (!qword_2809DCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB38);
  }

  return result;
}

__n128 sub_275460AA4@<Q0>(void *__src@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  memcpy(__dst, __src, 0x99uLL);
  v23 = __dst[2];
  v6 = __dst[4];
  v25 = __dst[3];
  v26 = __dst[12];
  v24 = __dst[13];
  memcpy(v29, __src, 0x49uLL);
  sub_275457480(__srca);
  memcpy(v29, &__dst[10], 0x49uLL);
  sub_275457480(&__srca[4]);
  sub_275462084();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_275474510;
  *(v7 + 32) = v23;
  *(v7 + 40) = v26;
  *(v7 + 48) = v6;
  *(v7 + 56) = v25;
  v8 = sub_275460D54(v7);
  v9 = sub_275460F48(v8);

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_275474510;
  *(v10 + 32) = v26;
  *(v10 + 40) = v6;
  *(v10 + 48) = v25;
  *(v10 + 56) = v24;
  v11 = sub_275460D54(v10);
  v12 = sub_275460F48(v11);

  v13 = __dst[5];
  v29[0] = __srca[0];
  v29[1] = __srca[1];
  v29[2] = __srca[2];
  *(&v29[2] + 9) = *(&__srca[2] + 9);

  v14 = sub_2754620D4(v13, v9, v29, a3);

  v29[0] = __srca[4];
  v29[1] = __srca[5];
  v29[2] = __srca[6];
  *(&v29[2] + 9) = *(&__srca[6] + 9);
  v15 = sub_2754620D4(__dst[15], v12, v29, a3);

  memcpy(v29, __dst, 0x49uLL);
  sub_275455954(v28.n128_f64);
  v16 = v28;
  memcpy(v29, &__dst[10], 0x49uLL);
  sub_275455954(v28.n128_f64);
  sub_2754554F0(__dst);
  *&v17 = v23;
  *&v18 = v26;
  *(&v17 + 1) = v25;
  *(&v18 + 1) = v24;
  v27 = v28;
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v6;
  memcpy((a2 + 40), __srca, 0x79uLL);
  *(a2 + 168) = v9;
  *(a2 + 176) = a3;
  v19 = __srca[1];
  *(a2 + 184) = __srca[0];
  *(a2 + 200) = v19;
  *(a2 + 216) = __srca[2];
  *(a2 + 225) = *(&__srca[2] + 9);
  *(a2 + 248) = v12;
  *(a2 + 256) = a3;
  v20 = __srca[5];
  v21 = __srca[6];
  *(a2 + 264) = __srca[4];
  *(a2 + 280) = v20;
  *(a2 + 296) = v21;
  *(a2 + 305) = *(&__srca[6] + 9);
  *(a2 + 328) = v14;
  *(a2 + 336) = v15;
  *(a2 + 344) = v16;
  result = v27;
  *(a2 + 360) = v27;
  return result;
}

uint64_t sub_275460D54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_275464BF0();
  v4 = MEMORY[0x277C777B0](v2, &type metadata for TransitionTime, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_275462494(&v9, *(a1 + v6));
      v6 += 8;
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t sub_275460DEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2753F2EC4();
  result = MEMORY[0x277C777B0](v2, &_s14descr2884101A1C2IDVN, v3);
  v5 = 0;
  v11 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 == v5)
    {

      return v11;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;

    sub_27546258C(&v10, v9, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_275460EB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_275406708();
  v4 = MEMORY[0x277C777B0](v2, &type metadata for Transition.Complexity, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_2754626D8(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t sub_275460F48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_275431E9C(*(a1 + 16), 0);
  v4 = sub_2754648EC(&v6, v3 + 4, v1, a1);

  sub_2754066A4();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_275463ED8(&v6);
  return v6;
}

uint64_t Transition.SteppedSchedule.timeStretchingSchedule.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 168), 0x99uLL);
  memcpy(a1, (v1 + 168), 0x99uLL);
  return sub_27545FF7C(__dst, v4);
}

uint64_t Transition.SteppedSchedule.automationSchedule.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 336);
  *a1 = *(v1 + 328);
  a1[1] = v2;
}

__n128 Transition.SteppedSchedule.playbackEndState.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 344);
  v3 = *(v1 + 360);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2754610DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x800000027546F980 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000027546F9A0 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000027546F9C0 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000027546F9E0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

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

unint64_t sub_275461240(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2754612E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754610DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275461308(uint64_t a1)
{
  v2 = sub_275461678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275461344(uint64_t a1)
{
  v2 = sub_275461678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_0_51();
  sub_275464C58(0, v3, v4, &_s15SteppedScheduleV10CodingKeysON, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v21 - v12;
  memcpy(__dst, (v1 + 168), 0x99uLL);
  v14 = *(v1 + 328);
  v23 = *(v1 + 336);
  v24 = v14;
  v15 = *(v1 + 344);
  v21 = *(v1 + 360);
  v22 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275461678();
  sub_27546EB00();
  memcpy(v29, v1, sizeof(v29));
  v28[0] = 0;
  sub_2754616CC();
  v17 = v25;
  sub_27546E950();
  if (!v17)
  {
    v18 = v23;
    v19 = v24;
    memcpy(v29, __dst, 0x99uLL);
    v32 = 1;
    sub_27545FF7C(__dst, v28);
    sub_275461720();
    sub_27546E950();
    memcpy(v28, v29, 0x99uLL);
    sub_27545FFB4(v28);
    *&v26 = v19;
    *(&v26 + 1) = v18;
    v31 = 2;
    sub_275461774();

    sub_27546E950();

    v26 = v22;
    v27 = v21;
    v31 = 3;
    sub_2754617C8();
    sub_27546E950();
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t sub_275461678()
{
  result = qword_2809DCB48;
  if (!qword_2809DCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB48);
  }

  return result;
}

unint64_t sub_2754616CC()
{
  result = qword_2809DCB50;
  if (!qword_2809DCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB50);
  }

  return result;
}

unint64_t sub_275461720()
{
  result = qword_2809DCB58;
  if (!qword_2809DCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB58);
  }

  return result;
}

unint64_t sub_275461774()
{
  result = qword_2809DCB60;
  if (!qword_2809DCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB60);
  }

  return result;
}

unint64_t sub_2754617C8()
{
  result = qword_2809DCB68;
  if (!qword_2809DCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB68);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_0_51();
  sub_275464C58(0, v5, v6, &_s15SteppedScheduleV10CodingKeysON, MEMORY[0x277D844C8]);
  v22 = v7;
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275461678();
  sub_27546EAE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = a2;
  v31[383] = 0;
  sub_275461B7C();
  OUTLINED_FUNCTION_1_52();
  memcpy(v31, v30, 0xA1uLL);
  v31[382] = 1;
  sub_275461BD0();
  OUTLINED_FUNCTION_1_52();
  memcpy(&v31[168], v29, 0x99uLL);
  LOBYTE(v23[0]) = 2;
  sub_275461C24();
  OUTLINED_FUNCTION_1_52();
  v14 = v24[0];
  v13 = v24[1];
  v31[381] = 3;
  sub_275461C78();
  sub_27546E8D0();
  v15 = OUTLINED_FUNCTION_4_28();
  v16(v15, v22);
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  memcpy(v23, v31, 0x148uLL);
  v23[41] = v14;
  v23[42] = v13;
  v23[43] = v25;
  v23[44] = v26;
  v23[45] = v27;
  v23[46] = v28;
  memcpy(v12, v23, 0x178uLL);
  sub_275461CCC(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v24, v31, 0x148uLL);
  v24[41] = v14;
  v24[42] = v13;
  v24[43] = v17;
  v24[44] = v18;
  v24[45] = v19;
  v24[46] = v20;
  return sub_275461D04(v24);
}

unint64_t sub_275461B7C()
{
  result = qword_2809DCB78;
  if (!qword_2809DCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB78);
  }

  return result;
}

unint64_t sub_275461BD0()
{
  result = qword_2809DCB80;
  if (!qword_2809DCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB80);
  }

  return result;
}

unint64_t sub_275461C24()
{
  result = qword_2809DCB88;
  if (!qword_2809DCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB88);
  }

  return result;
}

unint64_t sub_275461C78()
{
  result = qword_2809DCB90;
  if (!qword_2809DCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB90);
  }

  return result;
}

uint64_t sub_275461D88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 376))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 168);
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

uint64_t sub_275461DC8(uint64_t result, int a2, int a3)
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
      *(result + 376) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s15SteppedScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275461F44);
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

unint64_t sub_275461F80()
{
  result = qword_2809DCB98;
  if (!qword_2809DCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB98);
  }

  return result;
}

unint64_t sub_275461FD8()
{
  result = qword_2809DCBA0;
  if (!qword_2809DCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCBA0);
  }

  return result;
}