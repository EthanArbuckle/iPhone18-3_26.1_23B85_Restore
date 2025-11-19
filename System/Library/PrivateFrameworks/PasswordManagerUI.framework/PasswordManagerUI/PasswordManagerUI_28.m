void sub_21CA06A0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = sub_21CB81424();
  v11 = *(v77 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v19);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || a1 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = a4 + v27;
      v83 = a4 + v27;
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = v58 + v80;
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = a4 + v80;
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = v65 + v64;
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      sub_21C86457C(&v85, &v84, &v83);
      return;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || v29 + v30 <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = a4 + v30;
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = a4 + v30;
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = v36 + v74;
              v43 = *v70;
              (*v70)(v38, v36 + v74, v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_21CA07104(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CA07144(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_21CA0729C()
{
  v1 = *(type metadata accessor for PMCredentialExchangeOnboardingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_21CA01AEC();
}

uint64_t block_copy_helper_29_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_21CA07310(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = sub_21CA04624(a1, v4, v5);
  return sub_21CA04624(a2, v4, v5) < v6;
}

uint64_t sub_21CA07384(uint64_t a1)
{
  v4 = *(type metadata accessor for PMCredentialExchangeOnboardingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C9FF11C(a1, v6, v7, v1 + v5);
}

unint64_t sub_21CA07498()
{
  result = qword_27CDF4B80;
  if (!qword_27CDF4B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B78, &qword_21CBBC238);
    sub_21CA07550();
    sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4B80);
  }

  return result;
}

unint64_t sub_21CA07550()
{
  result = qword_27CDF4B88;
  if (!qword_27CDF4B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B90, &qword_21CBBC240);
    sub_21CA075E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4B88);
  }

  return result;
}

unint64_t sub_21CA075E8()
{
  result = qword_27CDF4B98;
  if (!qword_27CDF4B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4BA0, &qword_21CBBC248);
    sub_21CA0766C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4B98);
  }

  return result;
}

unint64_t sub_21CA0766C()
{
  result = qword_27CDF4BA8;
  if (!qword_27CDF4BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4BB0, &unk_21CBBC250);
    sub_21CA076F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4BA8);
  }

  return result;
}

unint64_t sub_21CA076F0()
{
  result = qword_27CDF4BB8;
  if (!qword_27CDF4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4BB8);
  }

  return result;
}

uint64_t sub_21CA0774C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMCredentialExchangeOnboardingView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CA02E5C(a1, v6, a2);
}

unint64_t sub_21CA077CC()
{
  result = qword_27CDF4BD0;
  if (!qword_27CDF4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4BD0);
  }

  return result;
}

id sub_21CA07844()
{
  v1 = *(type metadata accessor for PMCredentialExchangeOnboardingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9FF09C(v2);
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  else
  {
    v11 = *(v6 + v8);
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB823B4();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
    v14 = *(v6 + v12);
  }

  v15 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB82054();
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
  }

  else
  {
    v17 = *(v6 + v15);
  }

  v18 = v6 + v1[10];
  v19 = sub_21CB818C4();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  v21 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058) + 28));

  v22 = *(v6 + v1[11] + 8);

  v23 = v6 + v1[12];
  v24 = *(v23 + 8);

  v25 = *(v23 + 16);

  v26 = (v6 + v1[13]);
  if (*v26)
  {

    v27 = v26[1];
  }

  v28 = v26[2];

  v29 = *(v6 + v1[14] + 8);

  v30 = *(v6 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CA07C38(uint64_t a1)
{
  v4 = *(type metadata accessor for PMCredentialExchangeOnboardingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21C9FFB6C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21CA07D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA07DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CA07E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA07EAC()
{
}

uint64_t sub_21CA07F08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CA07F48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CA07F88()
{
}

unint64_t sub_21CA07FE0()
{
  result = qword_27CDF4BE8;
  if (!qword_27CDF4BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4BD8, &qword_21CBBC4D0);
    sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4BE8);
  }

  return result;
}

uint64_t sub_21CA080A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA080EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CA08180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v109 = a2;
  v86 = sub_21CB82F84();
  v85 = *(v86 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4C80, &unk_21CBCC8C0);
  v8 = *(v7 - 8);
  v99 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4C88, &unk_21CBBC640);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = &v84 - v13;
  v14 = *(a1 + 16);
  v15 = a1;
  v87 = a1;
  v89 = v14;
  v92 = *(v14 - 8);
  v16 = *(v92 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21CB828F4();
  v91 = *(v20 - 8);
  v21 = *(v91 + 64);
  MEMORY[0x28223BE20](v20);
  v88 = &v84 - v22;
  v23 = sub_21CB828F4();
  v106 = *(v23 - 8);
  v24 = *(v106 + 64);
  MEMORY[0x28223BE20](v23);
  v110 = &v84 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1180, &qword_21CBB0A70);
  v26 = sub_21CB828F4();
  v104 = *(v26 - 8);
  v27 = *(v104 + 64);
  MEMORY[0x28223BE20](v26);
  v102 = &v84 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4C90, &unk_21CBBC650);
  v29 = sub_21CB828F4();
  v101 = *(v29 - 8);
  v30 = *(v101 + 64);
  MEMORY[0x28223BE20](v29);
  v100 = &v84 - v31;
  v32 = MEMORY[0x277CDF918];
  v119 = *(v15 + 24);
  v120 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v118 = v32;
  v107 = v23;
  v33 = swift_getWitnessTable();
  v34 = sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70);
  v96 = v33;
  v115 = v33;
  v116 = v34;
  v105 = v26;
  v35 = swift_getWitnessTable();
  v36 = sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650);
  v95 = v35;
  v113 = v35;
  v114 = v36;
  v37 = swift_getWitnessTable();
  v103 = v29;
  v111 = v29;
  v112 = v37;
  v98 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = *(OpaqueTypeMetadata2 - 8);
  v39 = *(v90 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v94 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v41);
  v97 = &v84 - v43;
  v44 = v3[5];
  (v3[4])(v42);
  v45 = v88;
  v46 = v89;
  sub_21CB84874();
  v47 = v93;
  (*(v92 + 8))(v19, v46);
  sub_21CB83CD4();
  if (!*(v3 + 8))
  {
    v48 = *v3;
  }

  sub_21CB84884();
  (*(v91 + 8))(v45, v20);
  v49 = *(sub_21CB82A84() + 20);
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_21CB831A4();
  (*(*(v51 - 8) + 104))(&v47[v49], v50, v51);
  __asm { FMOV            V0.2D, #8.0 }

  *v47 = _Q0;
  *&v47[*(v99 + 44)] = sub_21CA08BE8();
  v57 = sub_21CB83CD4();
  if (v3[3])
  {
    v122 = *(v3 + 56);
    v121 = v3[6];
    if (v122 != 1)
    {

      sub_21CB85B04();
      v58 = sub_21CB83C94();
      sub_21CB81C14();

      v59 = v84;
      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C6EA794(&v121, &qword_27CDF4CA0, &qword_21CBBEB00);
      (*(v85 + 8))(v59, v86);
    }
  }

  else
  {
    v60 = v3[2];
  }

  sub_21CB81F24();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v108;
  sub_21CA08F48(v47, v108);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4CA8, &unk_21CBBC660);
  v71 = v69 + *(v70 + 36);
  *v71 = v57;
  *(v71 + 8) = v62;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68;
  *(v71 + 40) = 0;
  (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
  sub_21CA08FB8();
  v72 = v102;
  v73 = v107;
  v74 = v110;
  sub_21CB843C4();
  sub_21C6EA794(v69, &qword_27CDF4C88, &unk_21CBBC640);
  (*(v106 + 8))(v74, v73);
  v75 = v100;
  v76 = v105;
  sub_21CA08E58();
  (*(v104 + 8))(v72, v76);
  sub_21CB82324();
  v77 = v94;
  v78 = v103;
  v79 = v98;
  sub_21CB84344();
  (*(v101 + 8))(v75, v78);
  v111 = v78;
  v112 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = v97;
  sub_21C72BE10(v77, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v82 = *(v90 + 8);
  v82(v77, OpaqueTypeMetadata2);
  sub_21C72BE10(v81, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v82)(v81, OpaqueTypeMetadata2);
}

uint64_t sub_21CA08BE8()
{
  v1 = sub_21CB82F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 25) != 1)
  {
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4CC8, &qword_21CBBC670);
    sub_21C6EADEC(&qword_27CDF4CD0, &qword_27CDF4CC8, &qword_21CBBC670);
    return sub_21CB82384();
  }

  v15 = *(v0 + 56);
  v7 = *(v0 + 48);
  v14 = v7;
  if (v15 != 1)
  {
    v9 = v4;

    sub_21CB85B04();
    v10 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v14, &qword_27CDF4CA0, &qword_21CBBEB00);
    (*(v2 + 8))(v6, v9);
    if (v13 != 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4CD8, &qword_21CBBC678);
    sub_21C6EADEC(&qword_27CDF4CE0, &qword_27CDF4CD8, &qword_21CBBC678);
    return sub_21CB82384();
  }

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v13 = sub_21CB84A24();
  return sub_21CB82384();
}

uint64_t sub_21CA08E58()
{
  sub_21CB83A44();
  sub_21C74AB8C(&qword_27CDF4CC0, MEMORY[0x277CDE390]);
  return sub_21CB847D4();
}

uint64_t sub_21CA08F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_21CA08180(a1, a2);
}

uint64_t sub_21CA08F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4C80, &unk_21CBCC8C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA08FB8()
{
  result = qword_27CDF4CB0;
  if (!qword_27CDF4CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4CA8, &unk_21CBBC660);
    sub_21C74AAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4CB0);
  }

  return result;
}

unint64_t sub_21CA09048()
{
  result = qword_27CDF4CE8;
  if (!qword_27CDF4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4CE8);
  }

  return result;
}

double sub_21CA0909C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  v16 = v18;
  v5 = v19;
  v6 = v20;
  v21[0] = *(a1 + 32);
  v18 = *(a1 + 64);
  v8 = *(a1 + 80);
  v7 = *(a1 + 88);
  KeyPath = swift_getKeyPath();
  v10 = *MEMORY[0x277D49BF0];
  sub_21CB855C4();
  v11 = objc_opt_self();
  sub_21C805950(v21, v17);
  sub_21CA0B2DC(&v18, v17);

  v12 = [v11 pm_defaults];
  v13 = sub_21CB81E74();
  *a2 = v16;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v13;
  result = *v21;
  v15 = v18;
  *(a2 + 48) = v21[0];
  *(a2 + 64) = v15;
  *(a2 + 80) = v8;
  *(a2 + 88) = v7;
  *(a2 + 96) = 256;
  return result;
}

uint64_t sub_21CA091DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  if (*(a1 + 96))
  {
    sub_21CB837E4();
  }

  else
  {
    sub_21CB837B4();
  }

  v9 = sub_21CB83FC4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21C74A72C(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_21CA092DC()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 96);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4DA0, &qword_21CBBC970);
  sub_21CA0B250();
  return sub_21CB825D4();
}

void sub_21CA09400()
{
  sub_21CB807C4();
  if (v13[3])
  {
    sub_21C6E8F4C(0, &qword_27CDF4D98, 0x277D75BB8);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField);
      v2 = *(v0 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 8);
      v3 = *(v0 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 24);
      v4 = *(v0 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 32);
      v5 = *(v0 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 40);
      v6 = *(v0 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 56);
      v7 = *(v0 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 88);
      v10 = *(v0 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 16);
      v11 = *(v0 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 72);

      v8 = [v12 text];
      if (v8)
      {
        v9 = v8;
        sub_21CB855C4();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
      sub_21CB84F34();

      swift_bridgeObjectRelease_n();

      sub_21CA096E8(v12);
    }
  }

  else
  {
    sub_21CA0B028(v13);
  }
}

void sub_21CA096E8(void *a1)
{
  v3 = sub_21CB853D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB85404();
  v70 = *(v8 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB81024();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v1 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField);
  if (*(v1 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 72))
  {
    v65 = v15;
    v66 = v14;
    v67 = v8;
    v68 = v4;
    v69 = v3;
    v19 = a1;
    v20 = *(v18 + 8);
    v21 = v18[3];
    v80 = v18[2];
    v81 = v21;
    v22 = v18[5];
    v82 = v18[4];
    v83 = v22;
    v23 = v18[1];
    aBlock = *v18;
    v79 = v23;
    v24 = v80;

    sub_21CA0AF44(&aBlock, &v73);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v25 = sub_21C81C2D0(v24, v73);

    sub_21CA0AF7C(&aBlock);
    v71 = v25;
    v26 = [v25 passwordGenerationManager];
    v27 = sub_21CB85584();

    v28 = [v26 defaultRequirementsForDomain_];

    if (v28)
    {
      v29 = sub_21CB85474();
    }

    else
    {
      v29 = 0;
    }

    v35 = [v71 passwordGenerationManager];
    if (v29)
    {
      v36 = sub_21CB85464();
    }

    else
    {
      v36 = 0;
    }

    v37 = v19;
    v38 = [v35 generatedPasswordMatchingRequirements_];

    if (v38)
    {
      sub_21CB855C4();
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v18 + 2);
    v42 = *(v18 + 3);
    v73 = *v18;
    v74 = v41;
    v75 = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
    MEMORY[0x21CF14A20](v72, v43);
    v44 = v72[0];
    v45 = v72[1];

    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = v44 & 0xFFFFFFFFFFFFLL;
    }

    v47 = MEMORY[0x277D84F90];
    v72[0] = MEMORY[0x277D84F90];
    if (v46)
    {

      v48 = MEMORY[0x277D84F90];
    }

    else
    {
      if (v40)
      {
        v49 = sub_21CB85584();
      }

      else
      {
        v49 = 0;
      }

      v55 = [objc_opt_self() textSuggestionWithInputText:v49 searchText:0];

      sub_21CB81014();
      sub_21CB81004();
      (*(v65 + 8))(v17, v66);
      v56 = sub_21CB85584();

      [v55 setHeaderText_];

      v57 = v55;
      MEMORY[0x21CF15300]();
      if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63 = *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21CB85834();
      }

      sub_21CB85854();

      v48 = v72[0];
    }

    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v58 = sub_21CB85CF4();
    v59 = swift_allocObject();
    *(v59 + 16) = v37;
    *(v59 + 24) = v48;
    v76 = sub_21CA0B3B0;
    v77 = v59;
    *&v73 = MEMORY[0x277D85DD0];
    *(&v73 + 1) = 1107296256;
    v74 = sub_21C6ECBD4;
    v75 = &block_descriptor_26;
    v60 = _Block_copy(&v73);
    v61 = v37;

    sub_21CB853E4();
    *&v73 = v47;
    sub_21C91A4E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C91A53C();
    v62 = v69;
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v11, v7, v60);
    _Block_release(v60);

    (*(v68 + 8))(v7, v62);
    (*(v70 + 8))(v11, v67);
  }

  else
  {
    v30 = [a1 text];
    if (v30)
    {
      v31 = v30;
      v32 = sub_21CB855C4();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v50 = [objc_opt_self() sharedProvider];
    v51 = sub_21CB85584();
    v52 = swift_allocObject();
    v52[2] = v32;
    v52[3] = v34;
    v52[4] = a1;
    *&v80 = sub_21CA0B000;
    *(&v80 + 1) = v52;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v79 = sub_21CA0A424;
    *(&v79 + 1) = &block_descriptor_15;
    v53 = _Block_copy(&aBlock);
    v54 = a1;

    [v50 suggestedUsersOfType:0 matchingText:v51 completionHandler:v53];
    _Block_release(v53);
  }
}

uint64_t sub_21CA09F44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = a4;
  v5 = sub_21CB853D4();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21CB85404();
  v35 = *(v37 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_26:
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = sub_21CB85FA4();
  }

  else
  {
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
    v40 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v11 = 0;
  v41 = a1 & 0xC000000000000001;
  v40 = MEMORY[0x277D84F90];
  do
  {
    v12 = v11;
    while (1)
    {
      if (v41)
      {
        v13 = MEMORY[0x21CF15BD0](v12, a1);
      }

      else
      {
        if (v12 >= *(v42 + 16))
        {
          goto LABEL_25;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 = [v13 value];
      if (!v15)
      {
        sub_21CB855C4();
        v15 = sub_21CB85584();
      }

      v16 = sub_21CB85584();
      v17 = [v15 safari:v16 isCaseInsensitiveEqualToString:?];

      if (!v17)
      {
        break;
      }

LABEL_7:
      ++v12;
      if (v11 == v10)
      {
        goto LABEL_23;
      }
    }

    v18 = [v14 value];
    sub_21CB855C4();

    v19 = sub_21CB85584();

    v20 = sub_21CB85584();
    v21 = [objc_opt_self() textSuggestionWithInputText:v19 searchText:v20];

    if (!v21)
    {
      goto LABEL_7;
    }

    MEMORY[0x21CF15300]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21CB85834();
    }

    sub_21CB85854();
    v40 = aBlock[0];
  }

  while (v11 != v10);
LABEL_23:
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v23 = sub_21CB85CF4();
  v24 = swift_allocObject();
  v25 = v33;
  v26 = v40;
  *(v24 + 16) = v33;
  *(v24 + 24) = v26;
  aBlock[4] = sub_21CA0B00C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_21_0;
  v27 = _Block_copy(aBlock);
  v28 = v25;

  v29 = v34;
  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C91A4E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C91A53C();
  v30 = v36;
  v31 = v39;
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v29, v30, v27);
  _Block_release(v27);

  (*(v38 + 8))(v30, v31);
  return (*(v35 + 8))(v29, v37);
}

uint64_t sub_21CA0A424(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_21C6E8F4C(0, &qword_27CDF4D80, 0x277D49E00);
  v3 = sub_21CB85824();

  v2(v3);
}

id sub_21CA0A4A8(void *a1)
{
  result = [a1 textInputSuggestionDelegate];
  if (result)
  {
    v2 = result;
    sub_21C6E8F4C(0, &qword_27CDF4D88, 0x277D75C38);
    v3 = sub_21CB85814();
    [v2 setSuggestions_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21CA0A574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMTextFieldWithSuggestions.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21CA0A670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA0A6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21CA0A720()
{
  v28 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 9);
  v7 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D68, &unk_21CBBC870);
  sub_21CB83A54();
  [v7 setDelegate_];

  v30 = v28;
  v31 = v1;
  v32 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](&v29, v8);
  v9 = sub_21CB85584();

  [v7 setText_];

  v10 = sub_21CB85584();
  [v7 setPlaceholder_];

  [v7 setAutocorrectionType_];
  [v7 setAutocapitalizationType_];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontForTextStyle_];
  [v7 setFont_];

  v13 = v7;
  LODWORD(v14) = 1132068864;
  [v13 setContentCompressionResistancePriority:0 forAxis:v14];
  if (v6)
  {
    [v13 setSpellCheckingType_];
    sub_21CB81E94();
    [v13 setSecureTextEntry_];
    sub_21CB81E94();
    [v13 setDisplaySecureTextUsingPlainText_];
    v15 = [v13 font];
    if (v15)
    {
      v16 = v15;
      [v15 pointSize];
      v17 = *MEMORY[0x277D74418];
      v18 = [v11 monospacedSystemFontOfSize_weight_];
      [v13 setFont_];

      result = [v13 _placeholderLabel];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v20 = result;
      [result setFont_];
    }
  }

  v21 = [v13 effectiveUserInterfaceLayoutDirection];

  v22 = v21 == 0;
  v23 = [objc_opt_self() sharedApplication];
  v24 = [v23 preferredContentSizeCategory];

  LOBYTE(v23) = sub_21CB85D64();
  if ((v23 ^ v22))
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  [v13 setTextAlignment_];
  sub_21CB83A54();
  v26 = v30;
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v26 selector:sel_textFieldDidChange_ name:*MEMORY[0x277D770B0] object:v13];

  return v13;
}

void sub_21CA0AB04(void *a1)
{
  v3 = v1[3];
  v31 = v1[2];
  v32 = v3;
  v4 = v1[5];
  v33 = v1[4];
  v34 = v4;
  v5 = v1[1];
  v29 = *v1;
  v30 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D68, &unk_21CBBC870);
  sub_21CB83A54();
  v6 = v26[0];
  v7 = (v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField);
  v8 = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 16);
  v35[0] = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField);
  v35[1] = v8;
  v9 = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 32);
  v10 = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 48);
  v11 = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 80);
  v35[4] = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 64);
  v35[5] = v11;
  v35[2] = v9;
  v35[3] = v10;
  v12 = v34;
  v14 = v31;
  v13 = v32;
  v7[4] = v33;
  v7[5] = v12;
  v7[2] = v14;
  v7[3] = v13;
  v15 = v30;
  *v7 = v29;
  v7[1] = v15;
  sub_21CA0AF44(&v29, &v27);
  sub_21CA0AF7C(v35);

  v16 = [a1 text];
  if (v16)
  {
    v17 = v16;
    v18 = sub_21CB855C4();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = v29;
  v22 = v30;
  v27 = v29;
  v28 = v30;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](v26);
  if (!v20)
  {

LABEL_10:
    v27 = v21;
    v28 = v22;
    MEMORY[0x21CF14A20](v26, v23);
    v25 = sub_21CB85584();

    [a1 setText_];

    return;
  }

  if (v18 == v26[0] && v20 == v26[1])
  {

    return;
  }

  v24 = sub_21CB86344();

  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }
}

id sub_21CA0AD10@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v18 = v1[2];
  v19 = v3;
  v4 = v1[5];
  v20 = v1[4];
  v21 = v4;
  v5 = v1[1];
  v16 = *v1;
  v17 = v5;
  v6 = type metadata accessor for _PMTextFieldWithSuggestions.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField];
  v9 = v17;
  *v8 = v16;
  *(v8 + 1) = v9;
  v10 = v21;
  v12 = v18;
  v11 = v19;
  *(v8 + 4) = v20;
  *(v8 + 5) = v10;
  *(v8 + 2) = v12;
  *(v8 + 3) = v11;
  sub_21CA0AF44(&v16, v15);
  v14.receiver = v7;
  v14.super_class = v6;
  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_21CA0ADFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CA0AFAC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21CA0AE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CA0AFAC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21CA0AEC4()
{
  sub_21CA0AFAC();
  sub_21CB83454();
  __break(1u);
}

unint64_t sub_21CA0AEF0()
{
  result = qword_27CDF4D60;
  if (!qword_27CDF4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4D60);
  }

  return result;
}

unint64_t sub_21CA0AFAC()
{
  result = qword_27CDF4D78;
  if (!qword_27CDF4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4D78);
  }

  return result;
}

uint64_t sub_21CA0B028(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D90, &qword_21CBA9F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21CA0B0BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA0B104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CA0B170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CA0B1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21CA0B250()
{
  result = qword_27CDF4DA8;
  if (!qword_27CDF4DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4DA0, &qword_21CBBC970);
    sub_21CA0AEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4DA8);
  }

  return result;
}

unint64_t sub_21CA0B314()
{
  result = qword_27CDF4DB8;
  if (!qword_27CDF4DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDF4DC0, &unk_21CBBC9A0);
    sub_21CA0B250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4DB8);
  }

  return result;
}

uint64_t sub_21CA0B3BC()
{
  sub_21C815960();
  sub_21CB82F94();
  return v1;
}

uint64_t sub_21CA0B408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8(v7);
  return sub_21CB85064();
}

uint64_t sub_21CA0B4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4E50, &qword_21CBBCA98);
  v7 = *(a1 + 16);
  v31 = sub_21CB85074();
  v33 = *(v31 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v28 = &v28 - v9;
  v10 = sub_21CB828F4();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v30 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = &v28 - v14;
  v15 = *(a1 + 24);
  v41 = v7;
  v42 = v15;
  v43 = v2;
  v37 = v7;
  v38 = v15;
  v39 = v2;
  v16 = sub_21C6EADEC(&qword_27CDF4E58, &qword_27CDF4E50, &qword_21CBBCA98);
  sub_21CA0B408(sub_21CA0E01C, v40, sub_21CA0E028, v36, v6, v7);
  v17 = v29;
  (*(v4 + 16))(v29, v2, a1);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v15;
  (*(v4 + 32))(v19 + v18, v17, a1);
  v46 = MEMORY[0x277CE1410];
  v47 = v16;
  v48 = v15;
  v20 = v31;
  WitnessTable = swift_getWitnessTable();
  v22 = v30;
  v23 = v28;
  sub_21CB84914();

  (*(v33 + 8))(v23, v20);
  v44 = WitnessTable;
  v45 = MEMORY[0x277CE0790];
  v24 = swift_getWitnessTable();
  v25 = v32;
  sub_21C72BE10(v22, v10, v24);
  v26 = *(v34 + 8);
  v26(v22, v10);
  sub_21C72BE10(v25, v10, v24);
  return (v26)(v25, v10);
}

uint64_t sub_21CA0B914@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v97 = a4;
  v98 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v81 = *(v84 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v84);
  v89 = v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E60, &qword_21CBBCAA0);
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E68, &qword_21CBBCAA8);
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  MEMORY[0x28223BE20](v11);
  v82 = v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E70, &qword_21CBBCAB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v96 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = v73 - v18;
  v19 = type metadata accessor for PMGroupMembersList();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E78, &unk_21CBBCAB8);
  v92 = *(v24 - 8);
  v93 = v24;
  v25 = *(v92 + 64);
  MEMORY[0x28223BE20](v24);
  v91 = v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v73 - v29;
  v87 = a1;
  v99 = *a1;
  v76 = *(v20 + 16);
  v76(v23, a1, v19, v28);
  v31 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v77 = v21;
  v32 = swift_allocObject();
  *(v32 + 16) = v98;
  *(v32 + 24) = a3;
  v80 = a3;
  v33 = *(v20 + 32);
  v78 = v23;
  v79 = v19;
  v75 = v33;
  v33(v32 + v31, v23, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB8, &qword_21CBB5E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E80, &qword_21CBBCAC8);
  sub_21C6EADEC(&qword_27CDF4E88, &qword_27CDF1EB8, &qword_21CBB5E80);
  sub_21CA0E130();
  sub_21C9FA524();
  v88 = v30;
  v34 = v87;
  sub_21CB84FF4();
  if (*(v34 + 9) == 1)
  {
    v35 = v79;
    sub_21CA0D410(v79);
    v36 = v34 + v35[20];
    v37 = *v36;
    v38 = *(v36 + 1);
    LOBYTE(v103) = v37;
    v104 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D74();
    v73[1] = v100;
    v74 = v101;
    v39 = v78;
    (v76)(v78, v34, v35);
    v40 = swift_allocObject();
    v41 = v80;
    *(v40 + 16) = v98;
    *(v40 + 24) = v41;
    v75(v40 + v31, v39, v35);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EB8, &qword_21CBBCAE0);
    v98 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v43 = type metadata accessor for PMAddGroupMembersView();
    v44 = sub_21CB83994();
    v45 = sub_21CA0E614(&qword_27CDEE470, type metadata accessor for PMAddGroupMembersView);
    v99 = v43;
    v100 = v44;
    v101 = v45;
    v102 = MEMORY[0x277CDE2B8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v42;
    v47 = v83;
    v48 = v84;
    v49 = v89;
    sub_21CB847B4();

    (*(v81 + 8))(v49, v48);
    v50 = v35[23];
    v51 = (v34 + v35[24]);
    v52 = v51[1];
    v103 = *v51;
    v104 = v52;
    v53 = *(v34 + v50);

    sub_21CB852C4();
    v99 = v48;
    v100 = v46;
    v101 = v98;
    v102 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v54 = v82;
    v55 = v86;
    sub_21CB845E4();

    (*(v85 + 8))(v47, v55);
    v57 = v94;
    v56 = v95;
    v58 = v90;
    (*(v94 + 32))(v90, v54, v95);
    v59 = 0;
    v60 = v56;
    v61 = v57;
  }

  else
  {
    v59 = 1;
    v61 = v94;
    v60 = v95;
    v58 = v90;
  }

  (*(v61 + 56))(v58, v59, 1, v60);
  v63 = v91;
  v62 = v92;
  v64 = *(v92 + 16);
  v65 = v88;
  v66 = v93;
  v64(v91, v88, v93);
  v67 = v96;
  sub_21C775844(v58, v96);
  v68 = v97;
  v64(v97, v63, v66);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EB0, &qword_21CBBCAD8);
  sub_21C775844(v67, &v68[*(v69 + 48)]);
  sub_21C7758B4(v58);
  v70 = *(v62 + 8);
  v70(v65, v66);
  sub_21C7758B4(v67);
  return (v70)(v63, v66);
}

uint64_t sub_21CA0C220@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a3;
  v35 = a4;
  v37 = a5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EC0, &qword_21CBBCB20);
  v7 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EC8, &qword_21CBBCB28);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EA0, &qword_21CBBCAD0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  v20 = a1[5];
  v40[4] = a1[4];
  v40[5] = v20;
  v40[6] = a1[6];
  v21 = a1[1];
  v40[0] = *a1;
  v40[1] = v21;
  v22 = a1[3];
  v40[2] = a1[2];
  v40[3] = v22;
  if (*(a2 + 11) == 1)
  {
    v33 = &v33;
    MEMORY[0x28223BE20](v17);
    v23 = v34;
    v24 = v35;
    *(&v33 - 4) = v34;
    *(&v33 - 3) = v24;
    *(&v33 - 2) = a2;
    *(&v33 - 1) = v40;
    sub_21CA0C5D8(a2, v40, v23, v24, v13);
    sub_21CA0E1E8();
    sub_21CA0E468();
    sub_21CB825F4();
    (*(v15 + 16))(v9, v19, v14);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF4E98, &qword_27CDF4EA0, &qword_21CBBCAD0);
    sub_21CB83494();
    return (*(v15 + 8))(v19, v14);
  }

  else
  {
    v26 = type metadata accessor for PMGroupMembersList();
    sub_21CA0CEC8(v40, v26, v38);
    v27 = v38[11];
    *(v9 + 10) = v38[10];
    *(v9 + 11) = v27;
    *(v9 + 12) = v38[12];
    *(v9 + 26) = v39;
    v28 = v38[7];
    *(v9 + 6) = v38[6];
    *(v9 + 7) = v28;
    v29 = v38[9];
    *(v9 + 8) = v38[8];
    *(v9 + 9) = v29;
    v30 = v38[3];
    *(v9 + 2) = v38[2];
    *(v9 + 3) = v30;
    v31 = v38[5];
    *(v9 + 4) = v38[4];
    *(v9 + 5) = v31;
    v32 = v38[1];
    *v9 = v38[0];
    *(v9 + 1) = v32;
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF4E98, &qword_27CDF4EA0, &qword_21CBBCAD0);
    sub_21CA0E1E8();
    return sub_21CB83494();
  }
}

uint64_t sub_21CA0C5D8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EE0, &unk_21CBBCB30);
  v76 = *(v84 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v84);
  v77 = &v76 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EE8, &qword_21CBBCB40);
  v87 = *(v85 - 8);
  v11 = *(v87 + 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v76 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EF0, &qword_21CBBCB48);
  v13 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v83 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v76 - v17;
  v79 = a3;
  v80 = a4;
  v19 = type metadata accessor for PMGroupMembersList();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v76 - v22;
  v82 = type metadata accessor for PMGroupMemberDetailView();
  v24 = *(*(v82 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v82);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  if ((*(a1 + 9) & 1) != 0 || *(a2 + 80) == 1)
  {
    LODWORD(v78) = *(a1 + 9);
    (*(v20 + 16))(v23, a1, v19, v25);
    v29 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v87 = v18;
    v30 = (v21 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v32 = v80;
    *(v31 + 16) = v79;
    *(v31 + 24) = v32;
    (*(v20 + 32))(v31 + v29, v23, v19);
    v76 = v31;
    v33 = (v31 + v30);
    v34 = a2[5];
    v33[4] = a2[4];
    v33[5] = v34;
    v33[6] = a2[6];
    v35 = a2[1];
    *v33 = *a2;
    v33[1] = v35;
    v36 = a2[3];
    v33[2] = a2[2];
    v33[3] = v36;
    LODWORD(v77) = *(v28 + 64);
    sub_21CA0E5A4(v28 + *(v19 + 76), v87);
    v37 = v82;
    v38 = *(v82 + 32);
    v39 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
    v40 = *(*(v39 - 8) + 56);
    v79 = v38;
    v40(&v27[v38], 1, 1, v39);
    *&v27[v37[9]] = 0x4044000000000000;
    v41 = v37[10];
    *&v27[v41] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
    swift_storeEnumTagMultiPayload();
    v42 = v37[12];
    v80 = v37[11];
    v43 = &v27[v42];
    KeyPath = swift_getKeyPath();
    sub_21C7A33F0(a2, v95);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C81C328(KeyPath, *&v95[0]);

    type metadata accessor for PMGroupMemberImageCache();
    sub_21CA0E614(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache);
    v45 = sub_21CB82674();
    v47 = v46;

    *v43 = v45;
    v43[1] = v47;
    v48 = a2[5];
    *(v27 + 4) = a2[4];
    *(v27 + 5) = v48;
    *(v27 + 6) = a2[6];
    v49 = a2[1];
    *v27 = *a2;
    *(v27 + 1) = v49;
    v50 = a2[3];
    *(v27 + 2) = a2[2];
    *(v27 + 3) = v50;
    v27[112] = v78;
    v51 = v76;
    *(v27 + 15) = sub_21CA0EBC4;
    *(v27 + 16) = v51;
    v27[136] = v77;
    sub_21C7A33F0(a2, v95);

    v52 = v87;
    sub_21CA0E65C(v87, &v27[v79]);
    v53 = type metadata accessor for PMGroupMemberImageModel();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    sub_21C7A33F0(a2, v95);
    v56 = sub_21CA42988(v47, a2, 40.0);
    sub_21C7A344C(a2);

    sub_21C6EA794(v52, &qword_27CDF3178, &qword_21CBB7260);
    *&v27[v80] = v56;
    sub_21C9F4F54(v27, v83);
    swift_storeEnumTagMultiPayload();
    sub_21CA0E614(&qword_27CDF4ED8, type metadata accessor for PMGroupMemberDetailView);
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4860, &qword_21CBBB958);
    v58 = sub_21C9F5084();
    *&v95[0] = v57;
    *(&v95[0] + 1) = v58;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v95[0] = v84;
    *(&v95[0] + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return sub_21CA0E6CC(v27, type metadata accessor for PMGroupMemberDetailView);
  }

  else
  {
    v61 = a2[5];
    v92 = a2[4];
    v93 = v61;
    v94[0] = a2[6];
    v62 = a2[1];
    v88 = *a2;
    v89 = v62;
    v63 = a2[3];
    v90 = a2[2];
    v91 = v63;
    v64 = sub_21CB82934();
    v65 = v76;
    v66 = v64;
    v67 = sub_21CB83CE4();
    *&v94[1] = v66;
    BYTE8(v94[1]) = v67;
    sub_21C7A33F0(a2, v95);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4860, &qword_21CBBB958);
    v69 = sub_21C9F5084();
    v70 = v77;
    sub_21CB84674();
    v95[4] = v92;
    v95[5] = v93;
    v96[0] = v94[0];
    *(v96 + 9) = *(v94 + 9);
    v95[0] = v88;
    v95[1] = v89;
    v95[2] = v90;
    v95[3] = v91;
    sub_21C6EA794(v95, &qword_27CDF4860, &qword_21CBBB958);
    *&v88 = v68;
    *(&v88 + 1) = v69;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = v78;
    v73 = v84;
    MEMORY[0x21CF143C0](1, MEMORY[0x277D84F90], v84, v71);
    (*(v65 + 8))(v70, v73);
    v74 = v87;
    v75 = v85;
    (*(v87 + 2))(v83, v72, v85);
    swift_storeEnumTagMultiPayload();
    sub_21CA0E614(&qword_27CDF4ED8, type metadata accessor for PMGroupMemberDetailView);
    *&v88 = v73;
    *(&v88 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v74 + 8))(v72, v75);
  }
}

double sub_21CA0CEC8@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v12 = v3[8];
  v66 = v3[9];
  v67 = v12;
  v65 = v3[12];
  v13 = *(v6 + 16);
  v61 = v3;
  v62 = v13;
  (v13)(&v56 - v10, v3, a2, v9);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v57 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = *(a2 + 16);
  v59 = *(a2 + 24);
  v17 = v59;
  v60 = v16;
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  v18 = *(v6 + 32);
  v58 = v6 + 32;
  v18(v15 + v14, v11, a2);
  v19 = v18;
  v64 = v15;
  v20 = v57;
  v21 = (v15 + v57);
  v22 = a1[5];
  v21[4] = a1[4];
  v21[5] = v22;
  v21[6] = a1[6];
  v23 = a1[1];
  *v21 = *a1;
  v21[1] = v23;
  v24 = a1[3];
  v21[2] = a1[2];
  v21[3] = v24;
  v25 = v63;
  v26 = v61;
  v62(v63, v61, a2);
  v27 = swift_allocObject();
  v28 = v59;
  *(v27 + 16) = v60;
  *(v27 + 24) = v28;
  v29 = v25;
  v30 = v27;
  v19(v27 + v14, v29, a2);
  v31 = (v30 + v20);
  v32 = a1[5];
  v31[4] = a1[4];
  v31[5] = v32;
  v31[6] = a1[6];
  v33 = a1[1];
  *v31 = *a1;
  v31[1] = v33;
  v34 = a1[3];
  v31[2] = a1[2];
  v31[3] = v34;
  v35 = v26[10];
  v71 = 0;
  KeyPath = swift_getKeyPath();
  sub_21C7A33F0(a1, v96);
  sub_21C7A33F0(a1, v96);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, *&v96[0]);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21CA0E614(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache);
  v37 = sub_21CB82674();
  v39 = v38;

  v40 = a1[5];
  v79 = a1[4];
  v80 = v40;
  v81 = a1[6];
  v41 = a1[1];
  v75 = *a1;
  v76 = v41;
  v42 = a1[3];
  v77 = a1[2];
  v78 = v42;
  v43 = type metadata accessor for PMGroupMemberImageModel();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_21C7A33F0(a1, v96);

  v47 = sub_21CA42988(v46, a1, 32.0);

  v86 = v79;
  v87 = v80;
  v88 = v81;
  v82 = v75;
  v83 = v76;
  v84 = v77;
  v85 = v78;
  LOBYTE(v89) = v67;
  BYTE1(v89) = v66;
  BYTE2(v89) = v65;
  BYTE7(v89) = v74;
  *(&v89 + 3) = v73;
  *(&v89 + 1) = sub_21CA0E72C;
  *&v90 = v64;
  *(&v90 + 1) = sub_21CA0EA74;
  *&v91 = v30;
  BYTE8(v91) = v35;
  *(&v91 + 9) = *v72;
  HIDWORD(v91) = *&v72[3];
  *&v92 = v47;
  *(&v92 + 1) = 0x4040000000000000;
  *&v93 = sub_21C9FA598;
  *(&v93 + 1) = 0;
  LOBYTE(v94) = v71;
  DWORD1(v94) = *&v70[3];
  *(&v94 + 1) = *v70;
  *(&v94 + 1) = v37;
  v95 = v39;
  v96[0] = v75;
  v96[1] = v76;
  v96[5] = v80;
  v96[6] = v81;
  v96[3] = v78;
  v96[4] = v79;
  v96[2] = v77;
  v97 = v67;
  v98 = v66;
  v99 = v65;
  v101 = v74;
  v100 = v73;
  v102 = sub_21CA0E72C;
  v103 = v64;
  v104 = sub_21CA0EA74;
  v105 = v30;
  v106 = v35;
  *&v107[3] = *&v72[3];
  *v107 = *v72;
  v108 = v47;
  v109 = 0x4040000000000000;
  v110 = sub_21C9FA598;
  v111 = 0;
  v112 = v71;
  *&v113[3] = *&v70[3];
  *v113 = *v70;
  v114 = v37;
  v115 = v39;
  sub_21CA0EB14(&v82, &v69);
  sub_21CA0EB70(v96);
  v48 = v93;
  v49 = v68;
  *(v68 + 160) = v92;
  *(v49 + 176) = v48;
  *(v49 + 192) = v94;
  *(v49 + 208) = v95;
  v50 = v89;
  *(v49 + 96) = v88;
  *(v49 + 112) = v50;
  v51 = v91;
  *(v49 + 128) = v90;
  *(v49 + 144) = v51;
  v52 = v85;
  *(v49 + 32) = v84;
  *(v49 + 48) = v52;
  v53 = v87;
  *(v49 + 64) = v86;
  *(v49 + 80) = v53;
  result = *&v82;
  v55 = v83;
  *v49 = v82;
  *(v49 + 16) = v55;
  return result;
}

uint64_t sub_21CA0D410(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CB84DA4();
}

uint64_t sub_21CA0D564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v37 = a4;
  v6 = sub_21CB83994();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMGroupMembersList();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = type metadata accessor for PMAddGroupMembersView();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  (*(v11 + 16))(v14, a1, v10, v17);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v33;
  *(v22 + 16) = a2;
  *(v22 + 24) = v23;
  (*(v11 + 32))(v22 + v21, v14, v10);
  *v19 = v20;
  v19[1] = sub_21CA0E2C8;
  v19[2] = v22;
  v24 = *(v15 + 24);
  *(v19 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v25 = *(v10 + 92);
  v26 = (a1 + *(v10 + 96));
  v27 = v26[1];
  v38 = *v26;
  v39 = v27;
  v28 = *(a1 + v25);

  sub_21CB852C4();
  v29 = v34;
  sub_21CB834F4();

  sub_21CA0E614(&qword_27CDEE470, type metadata accessor for PMAddGroupMembersView);
  v30 = v35;
  sub_21CB84524();
  (*(v36 + 8))(v29, v30);
  return sub_21CA0E6CC(v19, type metadata accessor for PMAddGroupMembersView);
}

uint64_t sub_21CA0D8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  v13 = *(v10 + 24);
  (*(v10 + 16))();
  sub_21C72BE10(v9, a2, a3);
  v14 = *(v5 + 8);
  v14(v9, a2);
  sub_21C72BE10(v12, a2, a3);
  return (v14)(v12, a2);
}

void sub_21CA0D9DC(int *a1)
{
  v2 = v1;
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + a1[22];
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    sub_21CB85B04();
    v11 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v10, 0);
    (*(v5 + 8))(v8, v4);
    if (v20 != 1)
    {
      return;
    }
  }

  v12 = (v2 + a1[21]);
  v13 = *v12;
  v14 = *(v12 + 1);
  v20 = *v12;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if ((v19 & 1) == 0)
  {
    v15 = (v2 + a1[20]);
    v16 = *v15;
    v17 = *(v15 + 1);
    v20 = v16;
    v21 = v17;
    v19 = 1;
    sub_21CB84D64();
    v20 = v13;
    v21 = v14;
    v19 = 1;
    sub_21CB84D64();
  }
}

uint64_t sub_21CA0DBD0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMGroupMembersList() + 80));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CA0DC44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

void sub_21CA0DD7C()
{
  sub_21CA0DF88(319, &qword_27CDEE458, &type metadata for PMGroupMember, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21CA0DF30();
      if (v2 <= 0x3F)
      {
        sub_21CA0DF88(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21CA0DF88(319, &qword_27CDEB890, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CA0DF30()
{
  if (!qword_27CDF3198)
  {
    type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(255);
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3198);
    }
  }
}

void sub_21CA0DF88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21CA0E034()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PMGroupMembersList();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80));
  sub_21CA0D9DC(v3);
}

uint64_t sub_21CA0E094@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PMGroupMembersList() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_21CA0C220(a1, v8, v5, v6, a2);
}

unint64_t sub_21CA0E130()
{
  result = qword_27CDF4E90;
  if (!qword_27CDF4E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4E80, &qword_21CBBCAC8);
    sub_21C6EADEC(&qword_27CDF4E98, &qword_27CDF4EA0, &qword_21CBBCAD0);
    sub_21CA0E1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4E90);
  }

  return result;
}

unint64_t sub_21CA0E1E8()
{
  result = qword_27CDF4EA8;
  if (!qword_27CDF4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4EA8);
  }

  return result;
}

uint64_t sub_21CA0E23C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for PMGroupMembersList() - 8);
  v6 = (v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  return sub_21CA0D564(v6, v3, v4, a1);
}

uint64_t sub_21CA0E2C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for PMGroupMembersList() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v6 + 40);
  return (*(v6 + 32))(a1);
}

uint64_t sub_21CA0E338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for PMGroupMembersList() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21CA0DBD0(v4);
}

double sub_21CA0E3BC@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = type metadata accessor for PMGroupMembersList();
  sub_21CA0CEC8(v5, v7, v15);
  v8 = v15[11];
  *(a1 + 160) = v15[10];
  *(a1 + 176) = v8;
  *(a1 + 192) = v15[12];
  *(a1 + 208) = v16;
  v9 = v15[7];
  *(a1 + 96) = v15[6];
  *(a1 + 112) = v9;
  v10 = v15[9];
  *(a1 + 128) = v15[8];
  *(a1 + 144) = v10;
  v11 = v15[3];
  *(a1 + 32) = v15[2];
  *(a1 + 48) = v11;
  v12 = v15[5];
  *(a1 + 64) = v15[4];
  *(a1 + 80) = v12;
  result = *v15;
  v14 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v14;
  return result;
}

unint64_t sub_21CA0E468()
{
  result = qword_27CDF4ED0;
  if (!qword_27CDF4ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4EC8, &qword_21CBBCB28);
    sub_21CA0E614(&qword_27CDF4ED8, type metadata accessor for PMGroupMemberDetailView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4EE0, &unk_21CBBCB30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4860, &qword_21CBBB958);
    sub_21C9F5084();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4ED0);
  }

  return result;
}

uint64_t sub_21CA0E5A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA0E614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CA0E65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA0E6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CA0E730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for PMGroupMembersList() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = v0 + v5;
  v8 = *(v6 + 56);
  return (*(v6 + 48))(*(v7 + 32), *(v7 + 40));
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PMGroupMembersList();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  v9 = *(v0 + v5 + 24);

  v10 = *(v0 + v5 + 40);

  v11 = *(v0 + v5 + 56);

  v12 = *(v0 + v5 + 80);

  v13 = (v0 + v5 + v3[19]);
  v14 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v15 = *v13;

    v16 = v13[1];

    v17 = v13[3];

    v18 = v13[4];

    v19 = v13 + v14[6];
    v20 = sub_21CB85C44();
    (*(*(v20 - 8) + 8))(v19, v20);
    v21 = type metadata accessor for PMSharingGroup();
    v22 = *&v19[v21[5] + 8];

    v23 = *&v19[v21[6]];

    v24 = *&v19[v21[7] + 8];

    v25 = v13 + v14[7];
    if (*(v25 + 5))
    {
      v26 = *(v25 + 1);

      v27 = *(v25 + 3);

      v28 = *(v25 + 5);

      v29 = *(v25 + 7);

      v30 = *(v25 + 9);

      v31 = *(v25 + 12);
    }

    v32 = *(v13 + v14[8] + 8);
  }

  v33 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v7 + v3[20] + 8);

  v35 = *(v7 + v3[21] + 8);

  sub_21C7025C4(*(v7 + v3[22]), *(v7 + v3[22] + 8));
  v36 = *(v7 + v3[24] + 8);

  v37 = *(v0 + v33 + 8);

  v38 = *(v0 + v33 + 24);

  v39 = *(v0 + v33 + 40);

  v40 = *(v0 + v33 + 56);

  v41 = *(v0 + v33 + 72);

  v42 = *(v0 + v33 + 96);

  return MEMORY[0x2821FE8E8](v0, v33 + 112, v4 | 7);
}

uint64_t sub_21CA0EA74(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for PMGroupMembersList() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v6;
  v9 = v1 + v7;
  v10 = *(v8 + 80);
  return (*(v8 + 72))(*(v9 + 32), *(v9 + 40), a1);
}

char *sub_21CA0EBC8(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    *&v32[0] = MEMORY[0x277D84F90];
    sub_21CB86154();
    v8 = (a1 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = objc_allocWithZone(MEMORY[0x277CDBD40]);

      v12 = sub_21CB85584();

      [v11 initWithHandle:v12 permissionLevel:a2];

      sub_21CB86134();
      v13 = *(*&v32[0] + 16);
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  v14 = *(v3 + 16);
  sub_21C6E8F4C(0, &qword_27CDF4460, 0x277CDBD40);
  v15 = sub_21CB85814();

  v16 = [v14 groupMemberDataForGroupParticipants_];

  sub_21C6E8F4C(0, &qword_27CDEE440, 0x277CBAA00);
  v17 = sub_21CB85824();

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v18 = sub_21CB85FA4();
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_6:
  result = sub_21C7B10A0(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v5;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x21CF15BD0](v20, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v20 + 32);
      }

      v23 = v22;
      sub_21C9DCC64(v22, v32);

      v25 = *(v5 + 16);
      v24 = *(v5 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21C7B10A0((v24 > 1), v25 + 1, 1);
      }

      ++v20;
      *(v5 + 16) = v25 + 1;
      v26 = (v5 + 112 * v25);
      v27 = v32[0];
      v28 = v32[2];
      v26[3] = v32[1];
      v26[4] = v28;
      v26[2] = v27;
      v29 = v32[3];
      v30 = v32[4];
      v31 = v32[6];
      v26[7] = v32[5];
      v26[8] = v31;
      v26[5] = v29;
      v26[6] = v30;
    }

    while (v18 != v20);

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA0EE78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CA0EF18@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAppAccountsCollectionView();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F10, &qword_21CBBCC38);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F18, &qword_21CBBCC40);
  v9 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v28 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F20, &qword_21CBBCC48);
  v12 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F28, &qword_21CBBCC50);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  if (sub_21CA0F4E8())
  {
    v20 = v1[3];
    v34 = v1[2];
    v35 = v20;
    sub_21C71F3FC();

    v34 = sub_21CB84054();
    v35 = v21;
    v36 = v22 & 1;
    v37 = v23;
    MEMORY[0x28223BE20](v34);
    sub_21CA10860();
    sub_21CB85034();
    (*(v16 + 16))(v14, v19, v15);
    swift_storeEnumTagMultiPayload();
    sub_21CA107C8();
    sub_21CB83494();
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v34 = *v1;
    sub_21CA10AA0(v1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsCollectionView);
    v25 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v26 = swift_allocObject();
    sub_21CA10BCC(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PMAppAccountsCollectionView);

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F30, &qword_21CBBCC58);
    sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
    sub_21C6EADEC(&qword_27CDF4F38, &qword_27CDF4F30, &qword_21CBBCC58);
    sub_21CA10D00(&qword_27CDEB2C8, type metadata accessor for PMAccount);
    sub_21CB84FF4();
    swift_getKeyPath();
    v27 = v31;
    sub_21CB84FC4();

    (*(v30 + 8))(v8, v27);
    v11[*(v33 + 36)] = 0;
    sub_21C6EDBAC(v11, v14, &qword_27CDF4F18, &qword_21CBBCC40);
    swift_storeEnumTagMultiPayload();
    sub_21CA107C8();
    sub_21CA10860();
    sub_21CB83494();
    return sub_21C6EA794(v11, &qword_27CDF4F18, &qword_21CBBCC40);
  }
}

BOOL sub_21CA0F4E8()
{
  v1 = sub_21CB83834();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  v20 = *(type metadata accessor for PMAppAccountsCollectionView() + 36);
  v30 = v0;
  sub_21C728D50(v19);
  (*(v2 + 104))(v16, *MEMORY[0x277CE0558], v1);
  (*(v2 + 56))(v16, 0, 1, v1);
  v21 = *(v6 + 56);
  sub_21C70CA1C(v19, v9);
  sub_21C70CA1C(v16, &v9[v21]);
  v22 = *(v2 + 48);
  if (v22(v9, 1, v1) != 1)
  {
    sub_21C70CA1C(v9, v13);
    if (v22(&v9[v21], 1, v1) != 1)
    {
      v23 = v29;
      (*(v2 + 32))(v29, &v9[v21], v1);
      sub_21CA10D00(&qword_27CDEE538, MEMORY[0x277CE0570]);
      v24 = sub_21CB85574();
      v25 = *(v2 + 8);
      v25(v23, v1);
      sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
      v25(v13, v1);
      sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v2 + 8))(v13, v1);
LABEL_6:
    sub_21C6EA794(v9, &qword_27CDEE530, &unk_21CBA9D80);
    return 0;
  }

  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
  if (v22(&v9[v21], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_8:
  v26 = v30[5];
  v27 = v30[4] & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v26) & 0xF;
  }

  if (!v27)
  {
    return *(v30[1] + 16) != 0;
  }

  return 0;
}

uint64_t sub_21CA0F948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v3 = type metadata accessor for PMAppAccountsCollectionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F10, &qword_21CBBCC38);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v15[1] = *(a1 + 8);
  sub_21CA10AA0(a1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsCollectionView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_21CA10BCC(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PMAppAccountsCollectionView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F30, &qword_21CBBCC58);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21C6EADEC(&qword_27CDF4F38, &qword_27CDF4F30, &qword_21CBBCC58);
  sub_21CA10D00(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21CB84FF4();
  swift_getKeyPath();
  v13 = v15[0];
  sub_21CB84FC4();

  (*(v7 + 8))(v10, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F18, &qword_21CBBCC40);
  *(v13 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21CA0FC6C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F60, &qword_21CBBCC88);
  sub_21C6EADEC(&qword_27CDF4F68, &qword_27CDF4F60, &qword_21CBBCC88);
  return sub_21CB82614();
}

uint64_t sub_21CA0FD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F70, &qword_21CBBCC90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  sub_21CA0FF28(a1, v3, &v20 - v8);
  v10 = (a1 + *(type metadata accessor for PMAccount(0) + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  if (v11)
  {
    if (v13)
    {
      v15 = 2;
    }

    else
    {
      v16 = [v14 severity];
      if (v16 <= 3)
      {
        v15 = 0x2010002u >> (8 * v16);
      }

      else
      {
        v15 = 2;
      }
    }
  }

  else
  {
    v15 = 3;
  }

  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 33) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F60, &qword_21CBBCC88);
  sub_21C6EDBAC(v9, a2 + *(v17 + 48), &qword_27CDF4F70, &qword_21CBBCC90);
  v18 = *(v17 + 52);
  *(a2 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  sub_21C7D33AC(v12, v11, v13, v14);
  return sub_21C6EA794(v9, &qword_27CDF4F70, &qword_21CBBCC90);
}

uint64_t sub_21CA0FEFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C7C9AD8();
  *a1 = result;
  return result;
}

uint64_t sub_21CA0FF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = type metadata accessor for PMAccountRow();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v39 = a1;
  sub_21CA10AA0(a1, v8, type metadata accessor for PMAccount);
  v13 = *(a2 + 40);
  v38 = *(a2 + 32);

  v14 = sub_21CB837E4();
  v15 = &v8[v5[7]];
  v16 = MEMORY[0x277CE04E8];
  *(v15 + 3) = MEMORY[0x277CE04F8];
  *(v15 + 4) = v16;
  *v15 = v14;
  v17 = v5[9];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v19 = &v8[v17];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v41);

  type metadata accessor for PMGroupsStore();
  sub_21CA10D00(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v20 = sub_21CB82674();
  v22 = v21;

  *v19 = v20;
  v19[1] = v22;
  v23 = &v8[v5[10]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &v8[v5[11]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v5[12];
  *&v8[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v26 = v5[13];
  *&v8[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v27 = v5[14];
  *&v8[v27] = swift_getKeyPath();
  v28 = &v8[v5[5]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v8[v5[6]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v8[v5[8]];
  *v30 = v38;
  *(v30 + 1) = v13;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  v31 = sub_21CA10BCC(v8, v12, type metadata accessor for PMAccountRow);
  v32 = &v12[*(v9 + 36)];
  v33 = v46;
  *(v32 + 4) = v45;
  *(v32 + 5) = v33;
  *(v32 + 6) = v47;
  v34 = v42;
  *v32 = v41;
  *(v32 + 1) = v34;
  v35 = v44;
  *(v32 + 2) = v43;
  *(v32 + 3) = v35;
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F78, &qword_21CBBCDD0);
  sub_21C7EC1C8();
  sub_21CA10B10();
  sub_21CB84204();
  return sub_21C6EA794(v12, &qword_27CDEBC70, &qword_21CBAD0C0);
}

uint64_t sub_21CA10390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v27 = a1;
  v31 = a3;
  v3 = type metadata accessor for PMAccount(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for PMAppAccountsCollectionView();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v13 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v15 = &v26 - v14;
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  (*(v9 + 8))(v12, v8);
  sub_21CA10AA0(v27, v7, type metadata accessor for PMAppAccountsCollectionView);
  sub_21CA10AA0(v29, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccount);
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = (v6 + *(v28 + 80) + v19) & ~*(v28 + 80);
  v21 = swift_allocObject();
  sub_21CA10BCC(v7, v21 + v19, type metadata accessor for PMAppAccountsCollectionView);
  sub_21CA10BCC(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PMAccount);
  v35[0] = v16;
  v35[1] = v18;
  v32 = v35;
  v33 = 0x69662E6873617274;
  v34 = 0xEA00000000006C6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();

  v22 = sub_21CB84A64();
  KeyPath = swift_getKeyPath();
  v24 = &v15[*(v30 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  sub_21C7FC8A0();
  sub_21CB845C4();
  return sub_21C6EA794(v15, &qword_27CDEC198, &qword_21CBAF100);
}

unint64_t sub_21CA107C8()
{
  result = qword_27CDF4F40;
  if (!qword_27CDF4F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F28, &qword_21CBBCC50);
    sub_21CA10860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F40);
  }

  return result;
}

unint64_t sub_21CA10860()
{
  result = qword_27CDF4F48;
  if (!qword_27CDF4F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F18, &qword_21CBBCC40);
    sub_21CA108EC();
    sub_21CA1099C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F48);
  }

  return result;
}

unint64_t sub_21CA108EC()
{
  result = qword_27CDF4F50;
  if (!qword_27CDF4F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F10, &qword_21CBBCC38);
    sub_21C6EADEC(&qword_27CDF4F38, &qword_27CDF4F30, &qword_21CBBCC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F50);
  }

  return result;
}

unint64_t sub_21CA1099C()
{
  result = qword_27CDF4F58;
  if (!qword_27CDF4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F58);
  }

  return result;
}

uint64_t sub_21CA109F8(uint64_t *a1)
{
  v2 = *(*(type metadata accessor for PMAppAccountsCollectionView() - 8) + 80);

  return sub_21CA0FC6C(a1);
}

uint64_t sub_21CA10A78@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_21CA0FD48(v2, a1);
}

uint64_t sub_21CA10AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CA10B10()
{
  result = qword_27CDF4F80;
  if (!qword_27CDF4F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F78, &qword_21CBBCDD0);
    sub_21C7FC8A0();
    sub_21CA10D00(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F80);
  }

  return result;
}

uint64_t sub_21CA10BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA10C34()
{
  v1 = *(type metadata accessor for PMAppAccountsCollectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = *(v0 + v2 + 56);
  return (*(v0 + v2 + 48))(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_21CA10D00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CA10D48()
{
  result = qword_27CDF4F88;
  if (!qword_27CDF4F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F90, &unk_21CBBCE10);
    sub_21CA107C8();
    sub_21CA10860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F88);
  }

  return result;
}

uint64_t sub_21CA10E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &qword_27CDEE678, &unk_21CBBA210);
}

uint64_t sub_21CA10EF4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_21C6EDBAC(a1, &v10 - v6, &qword_27CDEE678, &unk_21CBBA210);
  v8 = *a2;
  return sub_21C861308(v7);
}

uint64_t sub_21CA10FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21CA11068(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C8619D8(v4);
}

uint64_t sub_21CA11094()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CB86484();
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21CA110E0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21CB854C4();
}

uint64_t sub_21CA110E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CB86484();
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21CA11130(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344();
  }
}

uint64_t sub_21CA11160@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v62 = *(v3 - 8);
  *&v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v51 - v5;
  v54 = sub_21CB81024();
  v53 = *(v54 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FB8, &qword_21CBBCE98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FC0, &qword_21CBBCEA0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FC8, &qword_21CBBCEA8);
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  MEMORY[0x28223BE20](v17);
  v51 = &v51 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FD0, &qword_21CBBCEB0);
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  MEMORY[0x28223BE20](v20);
  v57 = &v51 - v22;
  sub_21CA118EC(v2, v12);
  v61 = v2;
  v65 = v2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FD8, &qword_21CBBCEB8);
  v24 = sub_21CA1A428();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5090, &qword_21CBBCF20);
  v26 = sub_21C6EADEC(&qword_27CDF5098, &qword_27CDF5090, &qword_21CBBCF20);
  *&v66 = v25;
  *(&v66 + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21CB84894();
  sub_21C6EA794(v12, &qword_27CDF4FB8, &qword_21CBBCE98);
  MGGetBoolAnswer();
  sub_21CB81014();
  v28 = sub_21CB81004();
  v30 = v29;
  (*(v53 + 8))(v8, v54);
  v69 = v28;
  v70 = v30;
  *&v66 = v9;
  *(&v66 + 1) = v23;
  v67 = v24;
  v68 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_21C71F3FC();
  v33 = MEMORY[0x277D837D0];
  v34 = v51;
  sub_21CB842F4();

  (*(v52 + 8))(v16, v13);
  v35 = sub_21CB85184();
  MEMORY[0x28223BE20](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50A0, &qword_21CBBCF28);
  *&v66 = v13;
  *(&v66 + 1) = v33;
  v67 = v31;
  v68 = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v56;
  *&v66 = v56;
  *(&v66 + 1) = v33;
  v67 = v36;
  v68 = v32;
  swift_getOpaqueTypeConformance2();
  v38 = v57;
  sub_21CB84974();
  (*(v55 + 8))(v34, v37);
  v39 = v60;
  v40 = v63;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v62 + 8))(v39, v40);
  v63 = v66;
  v41 = v67;
  v42 = v68;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50A8, &qword_21CBBCF58);
  v44 = v64;
  v45 = (v64 + *(v43 + 36));
  *v45 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v46 = type metadata accessor for PMContentListSearchable();
  v47 = v46[5];
  *(v45 + v47) = swift_getKeyPath();
  v48 = v46[6];
  type metadata accessor for PMAppRootNavigationModel();
  sub_21CA1BBDC(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB821F4();
  v49 = v45 + v46[7];
  *v49 = v63;
  *(v49 + 2) = v41;
  *(v49 + 3) = v42;
  return (*(v58 + 32))(v44, v38, v59);
}

uint64_t sub_21CA118EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5088, &unk_21CBBCF10);
  v3 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v100 = v90 - v4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5100, &qword_21CBBD1A0);
  v5 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v103 = v90 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5108, &qword_21CBBD1A8);
  v94 = *(v104 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v104);
  v93 = v90 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5000, &qword_21CBBCEC8);
  v9 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v105 = v90 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5110, &qword_21CBBD1B0);
  v11 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v108 = v90 - v12;
  v13 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PMEmptyStateDetailView(0);
  v16 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v92 = (v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_21CB83834();
  v98 = *(v18 - 8);
  v99 = v18;
  v19 = *(v98 + 64);
  MEMORY[0x28223BE20](v18);
  v95 = v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v21 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v97 = v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v90 - v28;
  MEMORY[0x28223BE20](v30);
  v101 = v90 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v33 = v112;
  swift_getKeyPath();
  v34 = &qword_27CDEE000;
  v112 = v33;
  v35 = sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v36 = &qword_27CDEE000;
  v37 = *(v33 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);

  v38 = *(v37 + 16);

  if (!v38)
  {
    v39 = v26;
    v40 = v95;
    v90[1] = v35;
    v90[2] = v32;
    v41 = *(type metadata accessor for PMWiFiList() + 28);
    v90[3] = a1;
    v42 = v101;
    sub_21C728D50(v101);
    v44 = v98;
    v43 = v99;
    (*(v98 + 104))(v29, *MEMORY[0x277CE0558], v99);
    (*(v44 + 56))(v29, 0, 1, v43);
    v45 = *(v96 + 48);
    v46 = v42;
    v47 = v97;
    sub_21C6EDBAC(v46, v97, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EDBAC(v29, v47 + v45, &qword_27CDEC390, &qword_21CBA40E0);
    v48 = *(v44 + 48);
    if (v48(v47, 1, v43) == 1)
    {
      sub_21C6EA794(v29, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v101, &qword_27CDEC390, &qword_21CBA40E0);
      if (v48(v47 + v45, 1, v43) == 1)
      {
        sub_21C6EA794(v47, &qword_27CDEC390, &qword_21CBA40E0);
        v49 = v92;
        v50 = v91;
LABEL_14:
        v89 = sub_21CB85C44();
        (*(*(v89 - 8) + 56))(v50, 4, 6, v89);
        sub_21C9E14F8(v50, 1, v49);
        sub_21CA1AEE4(v49, v108, type metadata accessor for PMEmptyStateDetailView);
        swift_storeEnumTagMultiPayload();
        sub_21CA1BBDC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
        sub_21CA1A568();
        sub_21CB83494();
        return sub_21CA1B3F8(v49, type metadata accessor for PMEmptyStateDetailView);
      }

      goto LABEL_7;
    }

    sub_21C6EDBAC(v47, v39, &qword_27CDEC390, &qword_21CBA40E0);
    if (v48(v47 + v45, 1, v43) == 1)
    {
      sub_21C6EA794(v29, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v101, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v44 + 8))(v39, v43);
LABEL_7:
      sub_21C6EA794(v47, &qword_27CDEE530, &unk_21CBA9D80);
      v34 = &qword_27CDEE000;
      v36 = &qword_27CDEE000;
      goto LABEL_8;
    }

    (*(v44 + 32))(v40, v47 + v45, v43);
    sub_21CA1BBDC(&qword_27CDEE538, MEMORY[0x277CE0570]);
    v87 = sub_21CB85574();
    v88 = *(v44 + 8);
    v88(v40, v43);
    sub_21C6EA794(v29, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v101, &qword_27CDEC390, &qword_21CBA40E0);
    v88(v39, v43);
    sub_21C6EA794(v47, &qword_27CDEC390, &qword_21CBA40E0);
    v49 = v92;
    v50 = v91;
    v34 = &qword_27CDEE000;
    v36 = &qword_27CDEE000;
    if (v87)
    {
      goto LABEL_14;
    }
  }

LABEL_8:
  sub_21CB85084();
  v51 = v112;
  swift_getKeyPath();
  v52 = v34[198];
  v112 = v51;
  sub_21CB810D4();

  v53 = *(v51 + v36[190]);

  v54 = *(v53 + 16);

  if (v54)
  {
    v55 = v100;
    sub_21CA1274C(v100);
    v56 = sub_21CB85214();
    v58 = v57;
    v59 = v55 + *(v111 + 36);
    sub_21CA13588(v59);
    v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
    *v60 = v56;
    v60[1] = v58;
    sub_21C6EDBAC(v55, v103, &qword_27CDF5088, &unk_21CBBCF10);
    swift_storeEnumTagMultiPayload();
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5008, &qword_21CBBCED0);
    v62 = type metadata accessor for PMWiFiNetwork();
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
    v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    v65 = sub_21CA1A768();
    v112 = v64;
    v113 = v65;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67 = sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork);
    v68 = type metadata accessor for PMWiFiQRCodeView();
    v69 = sub_21CB83994();
    v70 = sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView);
    v112 = v68;
    v113 = v69;
    v114 = v70;
    v115 = MEMORY[0x277CDE2B8];
    v71 = swift_getOpaqueTypeConformance2();
    v112 = v61;
    v113 = v62;
    v114 = v63;
    v115 = OpaqueTypeConformance2;
    v116 = v67;
    v117 = v71;
    swift_getOpaqueTypeConformance2();
    sub_21CA1AA74();
    v72 = v105;
    sub_21CB83494();
    sub_21C6EA794(v55, &qword_27CDF5088, &unk_21CBBCF10);
  }

  else
  {
    v73 = v93;
    sub_21CA1274C(v93);
    v74 = v94;
    v75 = v104;
    (*(v94 + 16))(v103, v73, v104);
    swift_storeEnumTagMultiPayload();
    v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5008, &qword_21CBBCED0);
    v76 = type metadata accessor for PMWiFiNetwork();
    v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
    v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    v79 = sub_21CA1A768();
    v112 = v78;
    v113 = v79;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork);
    v82 = type metadata accessor for PMWiFiQRCodeView();
    v83 = sub_21CB83994();
    v84 = sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView);
    v112 = v82;
    v113 = v83;
    v114 = v84;
    v115 = MEMORY[0x277CDE2B8];
    v85 = swift_getOpaqueTypeConformance2();
    v112 = v102;
    v113 = v76;
    v114 = v77;
    v115 = v80;
    v116 = v81;
    v117 = v85;
    swift_getOpaqueTypeConformance2();
    sub_21CA1AA74();
    v72 = v105;
    sub_21CB83494();
    (*(v74 + 8))(v73, v75);
  }

  sub_21C6EDBAC(v72, v108, &qword_27CDF5000, &qword_21CBBCEC8);
  swift_storeEnumTagMultiPayload();
  sub_21CA1BBDC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
  sub_21CA1A568();
  sub_21CB83494();
  return sub_21C6EA794(v72, &qword_27CDF5000, &qword_21CBBCEC8);
}

uint64_t sub_21CA1274C@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5118, &qword_21CBBD1B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v104 = &v83 - v4;
  v97 = sub_21CB85114();
  v96 = *(v97 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v94 = &v83 - v8;
  v9 = type metadata accessor for PMWiFiList();
  v101 = *(v9 - 8);
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v90 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v83 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5040, &qword_21CBBCEF8);
  v87 = *(v86 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v83 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5038, &qword_21CBBCEF0);
  v89 = *(v88 - 8);
  v20 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = &v83 - v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5018, &qword_21CBBCEE0);
  v22 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v83 - v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5008, &qword_21CBBCED0);
  v100 = *(v102 - 8);
  v24 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v98 = &v83 - v25;
  sub_21CB85094();
  swift_getKeyPath();
  v105 = v11;
  sub_21CB850B4();

  v26 = *(v12 + 8);
  v110 = v12 + 8;
  v109 = v26;
  v93 = v17;
  v26(v17, v11);
  v112 = v1;
  v108 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5120, &qword_21CBBD1C0);
  v27 = sub_21CA1A9CC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5128, &qword_21CBBD1C8);
  v29 = sub_21CA1AF54();
  v113 = v28;
  v114 = v29;
  swift_getOpaqueTypeConformance2();
  sub_21CB83F14();
  sub_21CA1AEE4(v1, &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiList);
  v30 = *(v101 + 80);
  v31 = (v30 + 16) & ~v30;
  v99 = v10;
  v91 = v30;
  v32 = swift_allocObject();
  v92 = v31;
  v101 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA1B0EC(v101, v32 + v31, type metadata accessor for PMWiFiList);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5048, &unk_21CBBCF00);
  v34 = sub_21C6EADEC(&qword_27CDF5050, &qword_27CDF5040, &qword_21CBBCEF8);
  v82 = sub_21C6EADEC(&qword_27CDF5060, &qword_27CDF5048, &unk_21CBBCF00);
  v35 = v85;
  v36 = v86;
  v37 = v84;
  sub_21CB84144();

  (*(v87 + 8))(v37, v36);
  v119 = v36;
  v120 = &type metadata for PMWiFiNetworkIdentifier;
  v121 = v33;
  v122 = v34;
  v123 = v27;
  v124 = v82;
  swift_getOpaqueTypeConformance2();
  v38 = v88;
  sub_21CB845F4();
  (*(v89 + 8))(v35, v38);
  v39 = v90;
  v40 = v105;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v109(v39, v40);
  v42 = v118[6];
  v41 = v118[7];
  v43 = v118[8];
  v111 = 0;
  swift_getKeyPath();
  v118[3] = v42;
  v118[4] = v41;
  v118[5] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50F0, &qword_21CBBD138);
  sub_21CB84F44();

  v44 = v119;
  v45 = v120;
  v46 = v121;
  v47 = v122;
  v48 = v123;

  KeyPath = swift_getKeyPath();
  v113 = v44;
  v114 = v45;
  v115 = v46;
  v116 = v47;
  v117 = v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46D0, &qword_21CBBB1B0);
  MEMORY[0x21CF14A20](v118, v50);
  v51 = v118[0];
  if (v118[0])
  {

    sub_21C968AF4(v52);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5030, &qword_21CBBCEE8);
  v54 = v106;
  v55 = &v106[*(v53 + 36)];
  *v55 = KeyPath;
  v55[1] = v44;
  v55[2] = v45;
  v55[3] = v46;
  v55[4] = v47;
  v55[5] = v48;
  v55[6] = v51;
  v56 = swift_getKeyPath();
  v57 = (v54 + *(v107 + 36));
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v59 = v93;
  v60 = v105;
  v61 = v108;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v109(v59, v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v62 - 8) + 56))(v57 + v58, 0, 1, v62);
  *v57 = v56;
  sub_21CB85084();
  v63 = v119;
  swift_getKeyPath();
  v119 = v63;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v64 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  v65 = v96;
  v66 = v94;
  v67 = v97;
  (*(v96 + 16))(v94, v63 + v64, v97);

  v68 = v95;
  (*(v65 + 104))(v95, *MEMORY[0x277CDF0D0], v67);
  sub_21CB850F4();
  v69 = *(v65 + 8);
  v69(v68, v67);
  v69(v66, v67);
  v70 = sub_21CA1A768();
  v71 = v98;
  v72 = v107;
  sub_21CB84674();
  sub_21C6EA794(v54, &qword_27CDF5018, &qword_21CBBCEE0);
  sub_21CB85094();
  swift_getKeyPath();
  v73 = v104;
  sub_21CB850B4();

  v109(v59, v60);
  v74 = v101;
  sub_21CA1AEE4(v61, v101, type metadata accessor for PMWiFiList);
  v75 = v92;
  v76 = swift_allocObject();
  sub_21CA1B0EC(v74, v76 + v75, type metadata accessor for PMWiFiList);
  type metadata accessor for PMWiFiNetwork();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5010, &qword_21CBBCED8);
  v119 = v72;
  v120 = v70;
  swift_getOpaqueTypeConformance2();
  sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork);
  v77 = type metadata accessor for PMWiFiQRCodeView();
  v78 = sub_21CB83994();
  v79 = sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView);
  v119 = v77;
  v120 = v78;
  v121 = v79;
  v122 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v80 = v102;
  sub_21CB847C4();

  sub_21C6EA794(v73, &qword_27CDF5118, &qword_21CBBD1B8);
  return (*(v100 + 8))(v71, v80);
}

uint64_t sub_21CA13588@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v6 = v17;
  swift_getKeyPath();
  v17 = v6;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 1;
    v10 = v16;
  }

  else
  {
    sub_21CB85084();
    v11 = v17;
    swift_getKeyPath();
    v17 = v11;
    sub_21CB810D4();

    v12 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
    v13 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8);

    sub_21CB83784();

    v14 = v16;
    (*(v2 + 32))(v16, v5, v1);
    v9 = 0;
    v10 = v14;
  }

  return (*(v2 + 56))(v10, v9, 1, v1);
}

uint64_t sub_21CA137E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5090, &qword_21CBBCF20);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_21CA1390C(&v7 - v3);
  v5 = sub_21C6EADEC(&qword_27CDF5098, &qword_27CDF5090, &qword_21CBBCF20);
  MEMORY[0x21CF131E0](v4, v0, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21CA1390C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50B0, &unk_21CBBD030);
  v3 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v58 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB58, &qword_21CBACD28);
  v69 = *(v71 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v61 = &v58 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB60, &qword_21CBACD30);
  v60 = *(v70 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v70);
  v59 = &v58 - v8;
  v9 = sub_21CB85114();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB68, &qword_21CBACD38);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v62 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v58 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50B8, &unk_21CBBD040);
  v67 = *(v68 - 8);
  v22 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v24 = &v58 - v23;
  v25 = sub_21CB83604();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB50, &qword_21CBACD20);
  v64 = *(v65 - 8);
  v27 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v29 = &v58 - v28;
  sub_21CB835A4();
  v77 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB78, &unk_21CBACD40);
  sub_21C8C3F64();
  v63 = v29;
  sub_21CB82194();
  sub_21CB835F4();
  v76 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50C0, &qword_21CBBD050);
  sub_21C6EADEC(&qword_27CDF50C8, &qword_27CDF50C0, &qword_21CBBD050);
  v66 = v24;
  sub_21CB82AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v30 = v80;
  swift_getKeyPath();
  v80 = v30;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v31 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v10 + 16))(v16, v30 + v31, v9);

  (*(v10 + 104))(v13, *MEMORY[0x277CDF0D0], v9);
  LOBYTE(v31) = sub_21CB850F4();
  v32 = *(v10 + 8);
  v32(v13, v9);
  v32(v16, v9);
  if (v31)
  {
    v33 = sub_21CB83594();
    MEMORY[0x28223BE20](v33);
    *(&v58 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C87C0A0();
    v34 = v59;
    sub_21CB82194();
    v35 = sub_21C6EADEC(&qword_27CDEFB70, &qword_27CDEFB60, &qword_21CBACD30);
    v36 = v61;
    v37 = v70;
    MEMORY[0x21CF131E0](v34, v70, v35);
    v38 = v69;
    v39 = v62;
    v40 = v71;
    (*(v69 + 16))(v62, v36, v71);
    (*(v38 + 56))(v39, 0, 1, v40);
    v78 = v37;
    v79 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v39, v40, OpaqueTypeConformance2);
    sub_21C6EA794(v39, &qword_27CDEFB68, &qword_21CBACD38);
    (*(v38 + 8))(v36, v40);
    (*(v60 + 8))(v34, v37);
  }

  else
  {
    v42 = v62;
    v43 = v71;
    (*(v69 + 56))(v62, 1, 1, v71);
    v44 = sub_21C6EADEC(&qword_27CDEFB70, &qword_27CDEFB60, &qword_21CBACD30);
    v78 = v70;
    v79 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v42, v43, v45);
    sub_21C6EA794(v42, &qword_27CDEFB68, &qword_21CBACD38);
  }

  v46 = v72;
  v47 = *(v73 + 48);
  v48 = *(v73 + 64);
  v49 = v64;
  v50 = v63;
  v51 = v65;
  (*(v64 + 16))(v72, v63, v65);
  v52 = v67;
  v53 = v66;
  v54 = v68;
  (*(v67 + 16))(&v46[v47], v66, v68);
  v55 = &v46[v48];
  v56 = v75;
  sub_21C6EDBAC(v75, v55, &qword_27CDEFB68, &qword_21CBACD38);
  sub_21CB83394();
  sub_21C6EA794(v56, &qword_27CDEFB68, &qword_21CBACD38);
  (*(v52 + 8))(v53, v54);
  return (*(v49 + 8))(v50, v51);
}

uint64_t sub_21CA142A4()
{
  sub_21CA14460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FC8, &qword_21CBBCEA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FC0, &qword_21CBBCEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FB8, &qword_21CBBCE98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FD8, &qword_21CBBCEB8);
  sub_21CA1A428();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5090, &qword_21CBBCF20);
  sub_21C6EADEC(&qword_27CDF5098, &qword_27CDF5090, &qword_21CBBCF20);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21CA14460()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v55 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v59 = &v51 - v13;
  MEMORY[0x28223BE20](v14);
  v60 = &v51 - v15;
  v16 = sub_21CB85114();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v58 = v0;
  sub_21CB85084();
  v24 = v62;
  swift_getKeyPath();
  v62 = v24;
  v57 = sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v25 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v17 + 16))(v23, v24 + v25, v16);

  (*(v17 + 104))(v20, *MEMORY[0x277CDF0D0], v16);
  LOBYTE(v25) = sub_21CB850F4();
  v26 = *(v17 + 8);
  v26(v20, v16);
  v26(v23, v16);
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v52 = sub_21CB81034();
  v27 = *(v52 - 8);
  v28 = *(v27 + 72);
  if (v25)
  {
    v51 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    v30 = v55;
    sub_21CB81014();
    v31 = v54;
    sub_21CB81014();
    sub_21CB81014();
    v32 = v53;
    sub_21CB81014();
    v33 = v51;
    sub_21CB80FE4();
    v34 = *(v2 + 8);
    v34(v32, v1);
    v34(v7, v1);
    v34(v31, v1);
    v34(v30, v1);
    swift_setDeallocating();
    (*(v27 + 8))(v29 + v33, v52);
    swift_deallocClassInstance();
    v35 = v60;
    sub_21CB81004();
    v34(v59, v1);
    v34(v35, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v37 = v61;
    swift_getKeyPath();
    v61 = v37;
    sub_21CB810D4();

    v38 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs;
  }

  else
  {
    v39 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v40 = swift_allocObject();
    v41 = v55;
    sub_21CB81014();
    v42 = v54;
    sub_21CB81014();
    sub_21CB81014();
    v43 = v53;
    sub_21CB81014();
    sub_21CB80FE4();
    v44 = *(v2 + 8);
    v44(v43, v1);
    v44(v7, v1);
    v44(v42, v1);
    v44(v41, v1);
    swift_setDeallocating();
    (*(v27 + 8))(v40 + v39, v52);
    swift_deallocClassInstance();
    v45 = v60;
    sub_21CB81004();
    v44(v59, v1);
    v44(v45, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v37 = v61;
    swift_getKeyPath();
    v61 = v37;
    sub_21CB810D4();

    v38 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks;
  }

  v46 = *(v37 + v38);

  v47 = *(v46 + 16);

  v48 = MEMORY[0x277D83C10];
  *(v36 + 56) = MEMORY[0x277D83B88];
  *(v36 + 64) = v48;
  *(v36 + 32) = v47;
  v49 = sub_21CB85594();

  return v49;
}

uint64_t sub_21CA14D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for PMWiFiList();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5128, &qword_21CBBD1C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v11 = v17;
  swift_getKeyPath();
  v17 = v11;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v12 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

  v17 = v12;
  sub_21CA1AEE4(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiList);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_21CA1B0EC(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PMWiFiList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE680, &qword_21CBAA1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5140, &qword_21CBBD1D0);
  sub_21C6EADEC(&qword_27CDF51B0, &qword_27CDEE680, &qword_21CBAA1C0);
  sub_21C6EADEC(&qword_27CDF5138, &qword_27CDF5140, &qword_21CBBD1D0);
  sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork);
  sub_21CB84FF4();
  sub_21CB82334();
  sub_21CA1AF54();
  sub_21CB84514();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21CA15100(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51B8, &qword_21CBBD2F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF51C0, &qword_21CBBD300);
  type metadata accessor for PMWiFiNetworkRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC198, &qword_21CBAF100);
  sub_21CA1BBDC(&qword_27CDF51C8, type metadata accessor for PMWiFiNetworkRow);
  sub_21C7FC8A0();
  swift_getOpaqueTypeConformance2();
  sub_21CA1B090();
  swift_getOpaqueTypeConformance2();
  sub_21CA1B274();
  sub_21CA1B2C8();
  sub_21CA1A9CC();
  return sub_21CB82614();
}

uint64_t sub_21CA15294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = type metadata accessor for PMWiFiNetworkRow();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51C0, &qword_21CBBD300);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  sub_21CA1AEE4(a1, v8, type metadata accessor for PMWiFiNetwork);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v14 = v33;
  swift_getKeyPath();
  v33 = v14;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v16 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  v15 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8);

  sub_21CB85084();
  v17 = sub_21C861558(a1);

  v18 = &v8[v5[5]];
  *v18 = v16;
  *(v18 + 1) = v15;
  v8[v5[6]] = v17 & 1;
  v19 = v5[7];
  *&v8[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v31 = v2;
  v32 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v21 = sub_21CA1BBDC(&qword_27CDF51C8, type metadata accessor for PMWiFiNetworkRow);
  v22 = sub_21C7FC8A0();
  sub_21CB84204();
  sub_21CA1B3F8(v8, type metadata accessor for PMWiFiNetworkRow);
  v23 = a1[1];
  v37 = *a1;
  v38 = v23;
  v24 = *(v3 + *(type metadata accessor for PMWiFiList() + 32));

  sub_21CB852C4();
  v33 = v5;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  sub_21CA1B090();
  v25 = v28;
  sub_21CB845E4();

  return (*(v29 + 8))(v13, v25);
}

uint64_t sub_21CA15654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v91 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5150, &qword_21CBBD270);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v88 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5158, &qword_21CBBD278);
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v85 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5160, &qword_21CBBD280);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v83 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v90 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v78 - v24;
  v26 = type metadata accessor for PMWiFiNetwork();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v89 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5168, &qword_21CBBD288);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v96 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v78 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v95 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v94 = &v78 - v40;
  MEMORY[0x28223BE20](v41);
  v92 = &v78 - v42;
  MEMORY[0x28223BE20](v43);
  v93 = &v78 - v44;
  sub_21CA18D54(a1, &v78 - v44);
  if (*(a1 + 16) == 1)
  {
    v81 = v35;
    v82 = a1;
    sub_21C7C6E94(a1, &v98);
    v45 = v99;
    if (v99)
    {
      v79 = v8;
      v80 = v4;
      v78 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
      sub_21CB85084();
      v46 = v98;
      swift_getKeyPath();
      v47 = v2;
      v98 = v46;
      sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
      sub_21CB810D4();

      v48 = *(v46 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

      v98 = v78;
      v99 = v45;
      MEMORY[0x28223BE20](v49);
      *(&v78 - 2) = &v98;
      sub_21C9693F8(sub_21C7AE738, v48, v25);

      if ((*(v27 + 48))(v25, 1, v26) != 1)
      {
        v58 = v89;
        sub_21CA1B0EC(v25, v89, type metadata accessor for PMWiFiNetwork);
        v59 = v90;
        v60 = sub_21CA1AEE4(v58, v90, type metadata accessor for PMWiFiNetwork);
        MEMORY[0x28223BE20](v60);
        v78 = v9;
        v51 = v47;
        *(&v78 - 2) = v47;
        *(&v78 - 1) = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5178, &qword_21CBBD298);
        sub_21C6EADEC(&qword_27CDF5180, &qword_27CDF5178, &qword_21CBBD298);
        v61 = v84;
        sub_21CB85054();
        v62 = v83;
        sub_21C6EDBAC(v59, v83, &qword_27CDF5160, &qword_21CBBD280);
        v64 = v85;
        v63 = v86;
        v65 = *(v86 + 16);
        v66 = v87;
        v65(v85, v61, v87);
        v67 = v88;
        sub_21C6EDBAC(v62, v88, &qword_27CDF5160, &qword_21CBBD280);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5188, &qword_21CBBD2A0);
        v65((v67 + *(v68 + 48)), v64, v66);
        v69 = *(v63 + 8);
        v69(v61, v66);
        sub_21C6EA794(v90, &qword_27CDF5160, &qword_21CBBD280);
        v69(v64, v66);
        sub_21C6EA794(v62, &qword_27CDF5160, &qword_21CBBD280);
        v53 = v81;
        sub_21C716934(v67, v81, &qword_27CDF5150, &qword_21CBBD270);
        (*(v78 + 56))(v53, 0, 1, v79);
        v52 = sub_21CA1B3F8(v89, type metadata accessor for PMWiFiNetwork);
        v4 = v80;
        if (*(v82 + 16))
        {
          goto LABEL_7;
        }

LABEL_9:
        v57 = 1;
        v56 = v92;
        goto LABEL_10;
      }

      sub_21C6EA794(v25, &qword_27CDEE678, &unk_21CBBA210);
      a1 = v82;
      v2 = v47;
      v4 = v80;
      v35 = v81;
      v8 = v79;
    }

    else
    {
      v35 = v81;
      a1 = v82;
    }
  }

  v50 = v9;
  v51 = v2;
  v52 = (*(v50 + 56))(v35, 1, 1, v8);
  v53 = v35;
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  MEMORY[0x28223BE20](v52);
  *(&v78 - 2) = v54;
  *(&v78 - 1) = v51;
  v55 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB85054();
  v56 = v92;
  (*(v5 + 32))(v92, v55, v4);
  v57 = 0;
LABEL_10:
  (*(v5 + 56))(v56, v57, 1, v4);
  v71 = v93;
  v70 = v94;
  sub_21C6EDBAC(v93, v94, &qword_27CDEC8A8, &unk_21CBACF50);
  v72 = v53;
  v73 = v96;
  sub_21C6EDBAC(v53, v96, &qword_27CDF5168, &qword_21CBBD288);
  v74 = v95;
  sub_21C6EDBAC(v56, v95, &qword_27CDEC8A8, &unk_21CBACF50);
  v75 = v97;
  sub_21C6EDBAC(v70, v97, &qword_27CDEC8A8, &unk_21CBACF50);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5170, &qword_21CBBD290);
  sub_21C6EDBAC(v73, v75 + *(v76 + 48), &qword_27CDF5168, &qword_21CBBD288);
  sub_21C6EDBAC(v74, v75 + *(v76 + 64), &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v56, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v72, &qword_27CDF5168, &qword_21CBBD288);
  sub_21C6EA794(v71, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v74, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v73, &qword_27CDF5168, &qword_21CBBD288);
  return sub_21C6EA794(v70, &qword_27CDEC8A8, &unk_21CBACF50);
}

unint64_t sub_21CA16140@<X0>(unint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = 0uLL;
  if (*(*result + 16))
  {
    result = sub_21CB109D0(*a2);
    if (v6)
    {
      v7 = *(v4 + 56) + 24 * result;
      v9 = *v7;
      v8 = *(v7 + 16);

      v5 = v9;
    }

    else
    {
      v8 = 0;
      v5 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
  }

  *a3 = v5;
  *(a3 + 16) = v8;
  return result;
}

uint64_t sub_21CA161CC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_21CB83994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMWiFiQRCodeView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA1AEE4(a1, v12, type metadata accessor for PMWiFiNetwork);
  *&v12[*(v9 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v13 = *a1;
  v14 = a1[1];
  v17[0] = v13;
  v17[1] = v14;
  v15 = *(a2 + *(type metadata accessor for PMWiFiList() + 32));

  sub_21CB852C4();
  sub_21CA1B090();
  sub_21CB834F4();

  sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView);
  sub_21CB84524();
  (*(v5 + 8))(v8, v4);
  return sub_21CA1B3F8(v12, type metadata accessor for PMWiFiQRCodeView);
}

uint64_t sub_21CA16418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v25 = a1;
  v3 = type metadata accessor for PMWiFiNetwork();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMWiFiList();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  sub_21CA1AEE4(v25, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiList);
  sub_21CA1AEE4(v27, v5, type metadata accessor for PMWiFiNetwork);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = (v8 + *(v26 + 80) + v17) & ~*(v26 + 80);
  v19 = swift_allocObject();
  sub_21CA1B0EC(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for PMWiFiList);
  sub_21CA1B0EC(v5, v19 + v18, type metadata accessor for PMWiFiNetwork);
  v32[0] = v14;
  v32[1] = v16;
  v29 = v32;
  v30 = 0x69662E6873617274;
  v31 = 0xEA00000000006C6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v20 = v28;
  sub_21CB84DA4();

  v21 = sub_21CB84A64();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v24 = (v20 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = v21;
  return result;
}

uint64_t sub_21CA167B4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7730, &unk_21CBA0E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  v4 = a2[1];
  *(inited + 32) = *a2;
  *(inited + 40) = v4;

  v5 = sub_21C8D898C(inited);
  swift_setDeallocating();
  sub_21CA1B8E8(inited + 32);
  sub_21C861B98(v5, 0);
}

uint64_t sub_21CA16880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_21CB81024();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for PMPlatformRoleButton();
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v58 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_21CB81F14();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v61);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBD8, &qword_21CBACE68);
  v10 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v65 = &v51 - v11;
  v12 = type metadata accessor for PMWiFiList();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v60 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v14 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v55 = &v51 - v15;
  v16 = sub_21CB85114();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v62 = a1;
  sub_21CB85084();
  v24 = v69;
  swift_getKeyPath();
  v69 = v24;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v25 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v17 + 16))(v23, v24 + v25, v16);

  (*(v17 + 104))(v20, *MEMORY[0x277CDF0D8], v16);
  LOBYTE(v24) = sub_21CB850F4();
  v26 = *(v17 + 8);
  v26(v20, v16);
  v26(v23, v16);
  if (v24)
  {
    v27 = v60;
    sub_21CA1AEE4(v62, v60, type metadata accessor for PMWiFiList);
    v28 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v29 = swift_allocObject();
    sub_21CA1B0EC(v27, v29 + v28, type metadata accessor for PMWiFiList);
    v30 = v55;
    sub_21CB84DA4();
    sub_21CB85084();
    v31 = v68;
    swift_getKeyPath();
    v68 = v31;
    sub_21CB810D4();

    v32 = *(v31 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);

    v33 = *(v32 + 16);

    LOBYTE(v32) = v33 == 0;
    KeyPath = swift_getKeyPath();
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    v36 = v65;
    v37 = (v30 + *(v64 + 36));
    *v37 = KeyPath;
    v37[1] = sub_21C87E800;
    v37[2] = v35;
    sub_21C6EDBAC(v30, v36, &qword_27CDEDA98, &unk_21CBABCB0);
    swift_storeEnumTagMultiPayload();
    sub_21C844588();
    sub_21CA1BBDC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    sub_21CB83494();
    return sub_21C6EA794(v30, &qword_27CDEDA98, &unk_21CBABCB0);
  }

  else
  {
    v39 = v56;
    sub_21CB81F04();
    v40 = v52;
    sub_21CB81014();
    v41 = sub_21CB81004();
    v43 = v42;
    (*(v53 + 8))(v40, v54);
    v44 = v66;
    v46 = v57;
    v45 = v58;
    (*(v57 + 16))(v58 + *(v66 + 20), v39, v61);
    v47 = v60;
    sub_21CA1AEE4(v62, v60, type metadata accessor for PMWiFiList);
    v48 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v49 = swift_allocObject();
    sub_21CA1B0EC(v47, v49 + v48, type metadata accessor for PMWiFiList);
    *v45 = v41;
    v45[1] = v43;
    v50 = (v45 + *(v44 + 24));
    *v50 = sub_21CA1AE08;
    v50[1] = v49;
    sub_21CA1AEE4(v45, v65, type metadata accessor for PMPlatformRoleButton);
    swift_storeEnumTagMultiPayload();
    sub_21C844588();
    sub_21CA1BBDC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    sub_21CB83494();
    sub_21CA1B3F8(v45, type metadata accessor for PMPlatformRoleButton);
    return (*(v46 + 8))(v39, v61);
  }
}

uint64_t sub_21CA170FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CA17220(uint64_t a1, unsigned int *a2)
{
  v3 = sub_21CB85114();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  (*(v4 + 104))(v7, *a2, v3);
  sub_21C85FFDC(v7);
}

uint64_t sub_21CA17328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBA8, &qword_21CBACD70);
  v99 = *(v100 - 8);
  v3 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v96 = v82 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50D0, &unk_21CBBD058);
  v94 = *(v95 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v92 = v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v88 = *(v9 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v9);
  v87 = v82 - v11;
  v12 = type metadata accessor for PMWiFiList();
  v84 = *(v12 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = v82 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50D8, &qword_21CBBD068);
  v17 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v91 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = v82 - v20;
  v21 = sub_21CB85114();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50E0, &unk_21CBBD070);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v93 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = v82 - v33;
  v89 = v9;
  sub_21CB85084();
  v35 = v108;
  swift_getKeyPath();
  v108 = v35;
  v82[1] = sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v36 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v22 + 16))(v28, v35 + v36, v21);

  (*(v22 + 104))(v25, *MEMORY[0x277CDF0D0], v21);
  LOBYTE(v36) = sub_21CB850F4();
  v37 = *(v22 + 8);
  v37(v25, v21);
  v37(v28, v21);
  v38 = 1;
  v101 = v34;
  if (v36)
  {
    v39 = v83;
    sub_21CB81ED4();
    v40 = sub_21CB81F14();
    (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    v41 = v85;
    sub_21CA1AEE4(a1, v85, type metadata accessor for PMWiFiList);
    v42 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v43 = swift_allocObject();
    sub_21CA1B0EC(v41, v43 + v42, type metadata accessor for PMWiFiList);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    v44 = v86;
    sub_21CB84D94();
    v45 = v89;
    sub_21CB85084();
    v46 = v108;
    swift_getKeyPath();
    v108 = v46;
    sub_21CB810D4();

    v47 = *(v46 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

    v48 = *(v47 + 16);

    LOBYTE(v39) = v48 == 0;
    KeyPath = swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = v39;
    v51 = v44;
    v52 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80) + 36)];
    *v52 = KeyPath;
    v52[1] = sub_21C735744;
    v52[2] = v50;
    v53 = v87;
    v85 = a1;
    sub_21CB85094();
    swift_getKeyPath();
    sub_21CB850B4();

    v54 = (*(v88 + 8))(v53, v45);
    v55 = v116;
    v56 = v117;
    v57 = v118;
    MEMORY[0x28223BE20](v54);
    swift_getKeyPath();
    v113 = v55;
    v114 = v56;
    v115 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50F0, &qword_21CBBD138);
    sub_21CB84F44();

    v58 = v108;
    v59 = v109;
    v60 = v110;
    v61 = v111;
    v62 = v112;

    v63 = swift_getKeyPath();
    v102 = v58;
    v103 = v59;
    v104 = v60;
    v105 = v61;
    v106 = v62;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46D0, &qword_21CBBB1B0);
    MEMORY[0x21CF14A20](&v107, v64);
    v65 = v107;
    if (v107)
    {

      sub_21C968AF4(v66);
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }

    v34 = v101;
    v67 = (v51 + *(v90 + 36));
    *v67 = v63;
    v67[1] = v58;
    v67[2] = v59;
    v67[3] = v60;
    v67[4] = v61;
    v67[5] = v62;
    v67[6] = v65;
    v68 = v91;
    sub_21C6EDBAC(v51, v91, &qword_27CDF50D8, &qword_21CBBD068);
    v69 = v92;
    sub_21C6EDBAC(v68, v92, &qword_27CDF50D8, &qword_21CBBD068);
    v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50F8, &qword_21CBBD168) + 48);
    *v70 = 0;
    *(v70 + 8) = 1;
    sub_21C6EA794(v51, &qword_27CDF50D8, &qword_21CBBD068);
    sub_21C6EA794(v68, &qword_27CDF50D8, &qword_21CBBD068);
    sub_21C716934(v69, v34, &qword_27CDF50D0, &unk_21CBBD058);
    v38 = 0;
  }

  (*(v94 + 56))(v34, v38, 1, v95);
  v71 = sub_21CB85184();
  MEMORY[0x28223BE20](v71);
  sub_21CB831C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBB0, &qword_21CBACD78);
  sub_21CA1BBDC(&qword_27CDEC048, MEMORY[0x277CDDEB0]);
  sub_21CA1AD6C();
  v72 = v96;
  sub_21CB85194();
  v73 = v93;
  sub_21C6EDBAC(v34, v93, &qword_27CDF50E0, &unk_21CBBD070);
  v74 = v99;
  v75 = *(v99 + 16);
  v76 = v97;
  v77 = v100;
  v75(v97, v72, v100);
  v78 = v98;
  sub_21C6EDBAC(v73, v98, &qword_27CDF50E0, &unk_21CBBD070);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50E8, &unk_21CBBD080);
  v75((v78 + *(v79 + 48)), v76, v77);
  v80 = *(v74 + 8);
  v80(v72, v77);
  sub_21C6EA794(v101, &qword_27CDF50E0, &unk_21CBBD070);
  v80(v76, v77);
  return sub_21C6EA794(v73, &qword_27CDF50E0, &unk_21CBBD070);
}

uint64_t sub_21CA17FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  sub_21CB85084();
  swift_getKeyPath();
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v0 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  sub_21C861B98(v0, 1);
}

uint64_t sub_21CA180D4()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21CA1825C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v2 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);

  v3 = *(v2 + 16);

  if (v3)
  {
    result = sub_21CA14460();
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21CA1836C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v31 - v4;
  v5 = type metadata accessor for PMWiFiList();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = v7;
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v35 = &v31 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v15 = v41;
  swift_getKeyPath();
  v41 = v15;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v16 = *(v15 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

  v17 = *(v16 + 16);

  sub_21CB85084();
  v18 = v41;
  swift_getKeyPath();
  v41 = v18;
  sub_21CB810D4();

  v19 = *(v18 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

  v20 = *(v19 + 16);

  v21 = (v31 + 8);
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  (*v21)(v11, v32);
  v41 = v22;
  v42 = v24;
  v25 = v36;
  sub_21CA1AEE4(a1, v36, type metadata accessor for PMWiFiList);
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = swift_allocObject();
  sub_21CA1B0EC(v25, v27 + v26, type metadata accessor for PMWiFiList);
  sub_21C71F3FC();
  v28 = v35;
  sub_21CB84DE4();
  v29 = v37;
  (*(v37 + 16))(v39, v28, v12);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB83494();
  return (*(v29 + 8))(v28, v12);
}

uint64_t sub_21CA18964()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  v0 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs) = MEMORY[0x277D84FA0];
  sub_21C862188(v0);

  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21CA18ABC()
{
  v0 = type metadata accessor for PMWiFiNetwork();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v5 = v20;
  sub_21CB85084();
  v6 = v20;
  swift_getKeyPath();
  v20 = v6;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

  v8 = *(v7 + 16);
  if (v8)
  {
    v19 = v5;
    v20 = MEMORY[0x277D84F90];
    sub_21C7B1328(0, v8, 0);
    v9 = v20;
    v10 = v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v11 = *(v1 + 72);
    do
    {
      sub_21CA1AEE4(v10, v4, type metadata accessor for PMWiFiNetwork);
      v13 = *v4;
      v12 = v4[1];

      sub_21CA1B3F8(v4, type metadata accessor for PMWiFiNetwork);
      v20 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21C7B1328((v14 > 1), v15 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v17 = sub_21CB00FD8(v9);

  sub_21C86234C(v17);
}

uint64_t sub_21CA18D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB82F84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PMWiFiList();
  v11 = v2 + *(v10 + 24);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v12, 0);
    v10 = (*(v6 + 8))(v9, v5);
    if (v17[15] != 1)
    {
LABEL_7:
      v14 = 1;
      goto LABEL_8;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  MEMORY[0x28223BE20](v10);
  *&v17[-16] = a1;
  *&v17[-8] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB85054();
  v14 = 0;
LABEL_8:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_21CA18FCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5190, &qword_21CBBD2A8);
  v5 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v48 - v8;
  v9 = type metadata accessor for PMWiFiNetwork();
  v10 = v9 - 8;
  v48 = *(v9 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = type metadata accessor for PMWiFiList();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v20 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v54 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  MEMORY[0x28223BE20](v25);
  v53 = &v48 - v26;
  v55 = a1;
  sub_21CA1AEE4(a1, v15, type metadata accessor for PMWiFiList);
  sub_21CA1AEE4(a2, &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiNetwork);
  v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v28 = (v14 + *(v48 + 80) + v27) & ~*(v48 + 80);
  v29 = swift_allocObject();
  sub_21CA1B0EC(v15, v29 + v27, type metadata accessor for PMWiFiList);
  sub_21CA1B0EC(&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for PMWiFiNetwork);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();
  v30 = *(a2 + *(v10 + 44));
  if ((v30 & 1) != 0 || (sub_21C807A74(a2), !v31))
  {
    v32 = 1;
  }

  else
  {

    v32 = 0;
  }

  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  (*(v51 + 32))(v24, v19, v52);
  v35 = &v24[*(v49 + 36)];
  *v35 = KeyPath;
  v35[1] = sub_21C87E800;
  v35[2] = v34;
  v36 = v53;
  sub_21C716934(v24, v53, &qword_27CDEEBA0, &qword_21CBABC80);
  v37 = v50;
  sub_21CA1AEE4(a2, v50, type metadata accessor for PMWiFiNetwork);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  LOBYTE(v34) = sub_21C861558(a2);

  v38 = type metadata accessor for PMShareWiFiNetworkButton();
  *(v37 + *(v38 + 20)) = v34 & 1;
  v39 = *(v38 + 24);
  *(v37 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  v42 = (v37 + *(v56 + 36));
  *v42 = v40;
  v42[1] = sub_21C87E800;
  v42[2] = v41;
  v43 = v54;
  sub_21C6EDBAC(v36, v54, &qword_27CDEEBA0, &qword_21CBABC80);
  v44 = v57;
  sub_21C6EDBAC(v37, v57, &qword_27CDF5190, &qword_21CBBD2A8);
  v45 = v58;
  sub_21C6EDBAC(v43, v58, &qword_27CDEEBA0, &qword_21CBABC80);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5198, &unk_21CBBD2E8);
  sub_21C6EDBAC(v44, v45 + *(v46 + 48), &qword_27CDF5190, &qword_21CBBD2A8);
  sub_21C6EA794(v37, &qword_27CDF5190, &qword_21CBBD2A8);
  sub_21C6EA794(v36, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21C6EA794(v44, &qword_27CDF5190, &qword_21CBBD2A8);
  return sub_21C6EA794(v43, &qword_27CDEEBA0, &qword_21CBABC80);
}

uint64_t sub_21CA19660(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  sub_21CA1AEE4(a2, v6, type metadata accessor for PMWiFiNetwork);
  v7 = type metadata accessor for PMWiFiNetwork();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_21C861308(v6);
}

uint64_t sub_21CA19770()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21CA198A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v35 = a3;
  v31 = a1;
  v4 = type metadata accessor for PMWiFiList();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = sub_21CB81024();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v20 = *(a1 + 16);
  sub_21CB81014();
  sub_21CB81014();
  v21 = sub_21CB80FF4();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v16, v12);
  v24(v19, v12);
  sub_21CB81ED4();
  v25 = sub_21CB81F14();
  (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
  sub_21CA1AEE4(v34, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiList);
  v26 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v27 = swift_allocObject();
  sub_21CA1B0EC(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for PMWiFiList);
  v28 = v32;
  *(v27 + ((v5 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v39[0] = v21;
  v39[1] = v23;
  sub_21C6EDBAC(v11, v28, &qword_27CDEBE38, &unk_21CBA3770);
  v36 = v39;
  v37 = 0x6873617274;
  v38 = 0xE500000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84D94();
  sub_21C6EA794(v11, &qword_27CDEBE38, &unk_21CBA3770);
}

uint64_t sub_21CA19CF0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  sub_21C861B98(a2, 0);
}

uint64_t sub_21CA19D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CA1AEE4(a2, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMWiFiList);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_21CA1B0EC(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for PMWiFiList);
  v11 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  return sub_21CB84DA4();
}

uint64_t sub_21CA19EFC(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v34 = sub_21CB82F84();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  v6 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v8 = (&v30 - v7);
  v9 = sub_21CB82A34();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v19 = (v3 + 8);
  v20 = a1;
  v30 = (v11 + 32);
  v31 = v19;
  v35 = (v11 + 8);

  v22 = 0;
  v36 = v8;
  v32 = a1;
  while (v17)
  {
LABEL_11:
    v27 = (*(v20 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v17)))));
    v28 = v27[1];
    v39 = *v27;
    v29 = type metadata accessor for PMWiFiList();
    sub_21C6EDBAC(v38 + *(v29 + 20), v8, &qword_27CDEC0D0, &qword_21CBA3BF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v30)(v13, v8, v9);
    }

    else
    {
      v23 = *v8;

      sub_21CB85B04();
      v24 = sub_21CB83C94();
      sub_21CB81C14();

      v25 = v33;
      sub_21CB82F74();
      swift_getAtKeyPath();
      v20 = v32;

      (*v31)(v25, v34);
    }

    v17 &= v17 - 1;
    v40 = v39;
    v41 = v28;
    sub_21CA1B274();
    sub_21CA1B2C8();
    sub_21CA1A9CC();
    sub_21CB82A14();
    (*v35)(v13, v9);

    v8 = v36;
  }

  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v18)
    {
    }

    v17 = *(v14 + 8 * v26);
    ++v22;
    if (v17)
    {
      v22 = v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA1A2C0(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16) == 1;
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v12[0] = v8;
  v12[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

unint64_t sub_21CA1A428()
{
  result = qword_27CDF4FE0;
  if (!qword_27CDF4FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FB8, &qword_21CBBCE98);
    sub_21CA1A4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4FE0);
  }

  return result;
}

unint64_t sub_21CA1A4AC()
{
  result = qword_27CDF4FE8;
  if (!qword_27CDF4FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FF0, &qword_21CBBCEC0);
    sub_21CA1BBDC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    sub_21CA1A568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4FE8);
  }

  return result;
}

unint64_t sub_21CA1A568()
{
  result = qword_27CDF4FF8;
  if (!qword_27CDF4FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5000, &qword_21CBBCEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5008, &qword_21CBBCED0);
    type metadata accessor for PMWiFiNetwork();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    sub_21CA1A768();
    swift_getOpaqueTypeConformance2();
    sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork);
    type metadata accessor for PMWiFiQRCodeView();
    sub_21CB83994();
    sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CA1AA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4FF8);
  }

  return result;
}

unint64_t sub_21CA1A768()
{
  result = qword_27CDF5020;
  if (!qword_27CDF5020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    sub_21CA1A820();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5020);
  }

  return result;
}

unint64_t sub_21CA1A820()
{
  result = qword_27CDF5028;
  if (!qword_27CDF5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5030, &qword_21CBBCEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5038, &qword_21CBBCEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5040, &qword_21CBBCEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5048, &unk_21CBBCF00);
    sub_21C6EADEC(&qword_27CDF5050, &qword_27CDF5040, &qword_21CBBCEF8);
    sub_21CA1A9CC();
    sub_21C6EADEC(&qword_27CDF5060, &qword_27CDF5048, &unk_21CBBCF00);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CA1AA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5028);
  }

  return result;
}

unint64_t sub_21CA1A9CC()
{
  result = qword_27CDF5058;
  if (!qword_27CDF5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5058);
  }

  return result;
}

unint64_t sub_21CA1AA20()
{
  result = qword_27CDF5068;
  if (!qword_27CDF5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5068);
  }

  return result;
}

unint64_t sub_21CA1AA74()
{
  result = qword_27CDF5080;
  if (!qword_27CDF5080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5088, &unk_21CBBCF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5008, &qword_21CBBCED0);
    type metadata accessor for PMWiFiNetwork();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    sub_21CA1A768();
    swift_getOpaqueTypeConformance2();
    sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork);
    type metadata accessor for PMWiFiQRCodeView();
    sub_21CB83994();
    sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5080);
  }

  return result;
}

uint64_t sub_21CA1ACF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMWiFiList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21CA1AD6C()
{
  result = qword_27CDEFBB8;
  if (!qword_27CDEFBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFBB0, &qword_21CBACD78);
    sub_21C8C52D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFBB8);
  }

  return result;
}

uint64_t sub_21CA1AEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CA1AF54()
{
  result = qword_27CDF5130;
  if (!qword_27CDF5130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5128, &qword_21CBBD1C8);
    sub_21C6EADEC(&qword_27CDF5138, &qword_27CDF5140, &qword_21CBBD1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5130);
  }

  return result;
}

uint64_t sub_21CA1B004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMWiFiList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_21CA15654(a1, a2);
}

unint64_t sub_21CA1B090()
{
  result = qword_27CDF5148;
  if (!qword_27CDF5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5148);
  }

  return result;
}

uint64_t sub_21CA1B0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA1B174()
{
  v1 = *(type metadata accessor for PMWiFiList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21CA19CF0(v0 + v2, v3);
}

uint64_t sub_21CA1B208()
{
  v1 = *(type metadata accessor for PMWiFiList() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21CA19EFC(v2, v3);
}

unint64_t sub_21CA1B274()
{
  result = qword_27CDF51A0;
  if (!qword_27CDF51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51A0);
  }

  return result;
}

unint64_t sub_21CA1B2C8()
{
  result = qword_27CDF51A8;
  if (!qword_27CDF51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51A8);
  }

  return result;
}

uint64_t sub_21CA1B334(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PMWiFiList() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21CA1B3C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_21CA15294(v2, a1);
}

uint64_t sub_21CA1B3F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_87Tm()
{
  v1 = type metadata accessor for PMWiFiList();
  v29 = *(*(v1 - 1) + 80);
  v2 = (v29 + 16) & ~v29;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for PMWiFiNetwork();
  v5 = *(*(v4 - 1) + 80);
  v6 = v2 + v3 + v5;
  v28 = *(*(v4 - 1) + 64);
  v7 = v0 + v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  (*(*(v8 - 8) + 8))(v0 + v2, v8);
  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB82A34();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
    v11 = *(v7 + v9);
  }

  v12 = v6 & ~v5;
  sub_21C7025C4(*(v7 + v1[6]), *(v7 + v1[6] + 8));
  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB83834();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v7 + v13, 1, v14))
    {
      (*(v15 + 8))(v7 + v13, v14);
    }
  }

  else
  {
    v16 = *(v7 + v13);
  }

  v17 = v0;
  v18 = v0 + v12;
  v19 = *(v0 + v12 + 8);

  v20 = *(v0 + v12 + 24);

  v21 = *(v0 + v12 + 40);

  v22 = v4[7];
  v23 = sub_21CB80DD4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (!v25(v18 + v22, 1, v23))
  {
    (*(v24 + 8))(v18 + v22, v23);
  }

  v26 = v4[8];
  if (!v25(v18 + v26, 1, v23))
  {
    (*(v24 + 8))(v18 + v26, v23);
  }

  return MEMORY[0x2821FE8E8](v17, v12 + v28, v29 | v5 | 7);
}

uint64_t sub_21CA1B808(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMWiFiList() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PMWiFiNetwork() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

unint64_t sub_21CA1B94C()
{
  result = qword_27CDF51D0;
  if (!qword_27CDF51D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF50A8, &qword_21CBBCF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FC8, &qword_21CBBCEA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF50A0, &qword_21CBBCF28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FC0, &qword_21CBBCEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FB8, &qword_21CBBCE98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FD8, &qword_21CBBCEB8);
    sub_21CA1A428();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5090, &qword_21CBBCF20);
    sub_21C6EADEC(&qword_27CDF5098, &qword_27CDF5090, &qword_21CBBCF20);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21CA1BBDC(&qword_27CDEEE60, type metadata accessor for PMContentListSearchable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51D0);
  }

  return result;
}

uint64_t sub_21CA1BBDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CA1BC28()
{
  result = qword_27CDF51D8;
  if (!qword_27CDF51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51D8);
  }

  return result;
}

uint64_t sub_21CA1BCA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51E0, &qword_21CBBD4B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  (*(v5 + 16))(&v13 - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  result = (*(v5 + 32))(v11 + v10, v9, v4);
  *a2 = sub_21CA1BDE0;
  a2[1] = v11;
  return result;
}

uint64_t sub_21CA1BDE0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51E0, &qword_21CBBD4B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

unint64_t sub_21CA1BE60()
{
  result = qword_27CDF51E8;
  if (!qword_27CDF51E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF51F0, &qword_21CBBD4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF51E8);
  }

  return result;
}

uint64_t sub_21CA1BF08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB83124();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CB83114();
  sub_21CB83104();
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v4 = sub_21CB84034();
  v6 = v5;
  v8 = v7 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84774();
  sub_21C74A72C(v4, v6, v8);

  v9 = sub_21CB83D34();
  sub_21CB81F24();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41E8, &qword_21CBBA0D8);
  v19 = a1 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_21CA1C114@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB83124();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CB83114();
  sub_21CB83104();
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v4 = sub_21CB84034();
  v6 = v5;
  v8 = v7 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5228, &qword_21CBBD540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5230, &qword_21CBBD548);
  sub_21C6EADEC(&qword_27CDF5238, &qword_27CDF5230, &qword_21CBBD548);
  sub_21C830EB0();
  swift_getOpaqueTypeConformance2();
  sub_21CB84774();
  sub_21C74A72C(v4, v6, v8);

  v9 = sub_21CB83D34();
  sub_21CB81F24();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5218, &unk_21CBBD530);
  v19 = a1 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_21CA1C370()
{
  v1 = sub_21CB83274();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5210, &unk_21CBBD520);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-v8];
  sub_21CB85184();
  v15 = v0;
  v14 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41E8, &qword_21CBBA0D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5218, &unk_21CBBD530);
  sub_21C9CF5E0();
  sub_21CA1CF54();
  sub_21CB85194();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v6 + 36)];
  *v11 = KeyPath;
  v11[8] = 0;
  sub_21CB83254();
  sub_21CA1D0A8();
  sub_21CB84594();
  (*(v2 + 8))(v5, v1);
  return sub_21C776F1C(v9);
}

uint64_t sub_21CA1C58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = type metadata accessor for PMSharingGroup();
  v10 = (a1 + *(v9 + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(a1 + *(v9 + 24));
  v16[0] = v11;
  v16[1] = v12;
  v14 = *(v13 + 16);
  sub_21C71F3FC();

  sub_21CB84CB4();
  sub_21CA1CE4C();
  sub_21CA1BF08(a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21CA1C708@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_21CB82F84();
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5230, &qword_21CBBD548);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5228, &qword_21CBBD540);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v26 = v2;
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5268, &unk_21CBBD588);
  sub_21CA1D260();
  sub_21CB84C84();
  KeyPath = swift_getKeyPath();
  v28 = 0;
  sub_21C6EADEC(&qword_27CDF5238, &qword_27CDF5230, &qword_21CBBD548);
  sub_21C830EB0();
  sub_21CB840E4();

  (*(v8 + 8))(v11, v7);
  sub_21CA1CE4C();
  v17 = v2 + *(type metadata accessor for PMGroupRow() + 28);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_21CB85B04();
    v19 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v18, 0);
    (*(v22 + 8))(v6, v23);
  }

  sub_21CA1C114(v24);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21CA1CAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PMSharingGroup() + 20));
  v8 = *v3;
  v9 = v3[1];
  sub_21C71F3FC();

  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

double sub_21CA1CB38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_21CB82F84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + *(type metadata accessor for PMGroupRow() + 24);
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {

    sub_21CB85B04();
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v14, 0);
    (*(v9 + 8))(v12, v8);
    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = sub_21CB84BB4();
    v19 = sub_21CB83DC4();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    v20 = sub_21CB83E14();
    sub_21C9E1150(v7);
    KeyPath = swift_getKeyPath();
    v26 = v18;
    v27 = KeyPath;
    v29 = 0;
    v28 = v20;
    v30 = 1;
    goto LABEL_6;
  }

  if (v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_21CB84BB4();
  v16 = sub_21CB84A74();
  v26 = v15;
  v27 = v16;
  v28 = vdupq_n_s64(0x4040000000000000uLL);
  v29 = 0x4018000000000000;
  v30 = 0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4E8, &unk_21CBA6BB0);
  sub_21C830D18();
  sub_21C74DDEC();
  sub_21CB83494();
  result = *&v31;
  v23 = v32;
  v24 = v33;
  v25 = v34;
  *a2 = v31;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v25;
  return result;
}

uint64_t sub_21CA1CE4C()
{
  v1 = *(v0 + *(type metadata accessor for PMGroupRow() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (*(v7 + 16) && (v2 = sub_21CB10A54(v0), (v3 & 1) != 0))
  {
    v4 = *(*(v7 + 56) + 8 * v2);

    v5 = *(v4 + 16);

    return v5;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_21CA1CF54()
{
  result = qword_27CDF5220;
  if (!qword_27CDF5220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5218, &unk_21CBBD530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5228, &qword_21CBBD540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5230, &qword_21CBBD548);
    sub_21C6EADEC(&qword_27CDF5238, &qword_27CDF5230, &qword_21CBBD548);
    sub_21C830EB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5220);
  }

  return result;
}

unint64_t sub_21CA1D0A8()
{
  result = qword_27CDF5240;
  if (!qword_27CDF5240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5210, &unk_21CBBD520);
    sub_21CA1D134();
    sub_21C9CF6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5240);
  }

  return result;
}

unint64_t sub_21CA1D134()
{
  result = qword_27CDF5248;
  if (!qword_27CDF5248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5250, &qword_21CBBD578);
    sub_21CA1D1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5248);
  }

  return result;
}

unint64_t sub_21CA1D1B8()
{
  result = qword_27CDF5258;
  if (!qword_27CDF5258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5260, &qword_21CBBD580);
    sub_21C9CF5E0();
    sub_21CA1CF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5258);
  }

  return result;
}

unint64_t sub_21CA1D260()
{
  result = qword_27CDF5270;
  if (!qword_27CDF5270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5268, &unk_21CBBD588);
    sub_21C830D18();
    sub_21C74DDEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5270);
  }

  return result;
}

unint64_t sub_21CA1D2EC()
{
  result = qword_27CDF5278;
  if (!qword_27CDF5278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5280, &qword_21CBBD618);
    sub_21CA1D0A8();
    sub_21C706060(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5278);
  }

  return result;
}

uint64_t sub_21CA1D3D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA1D444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v15 = a1;
  sub_21C968E80(sub_21CA1EA74, v16, v7);

  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v12 = v16;
    MEMORY[0x28223BE20](v11);
    *&v14[-16] = a1;
    sub_21C968E80(sub_21CA1ECA4, v12, a2);

    result = v10(v7, 1, v8);
    if (result != 1)
    {
      return sub_21C6EA794(v7, &qword_27CDF7670, &unk_21CBAA8F0);
    }
  }

  else
  {
    sub_21C9C9820(v7, a2);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  return result;
}

uint64_t sub_21CA1D6BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t PMGroupsStore.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  return sub_21C6E9478(v3, &type metadata for PMSharingGroupsProviderMain, sub_21C6EA66C, &unk_282E56668, &unk_21CBBD858);
}

uint64_t PMGroupsStore.deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle;
  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle);

    sub_21CB85944();
  }

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__invitations;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__groups, v5);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__hasLoadedGroups;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_invitationsAndGroupsPublisher);

  v10 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__newlyCreatedGroup;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA8, &qword_21CBADCD0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_provider));
  v12 = *(v0 + v1);

  return v0;
}

uint64_t PMGroupsStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle;
  if (*&v0[OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle])
  {
    v2 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle];

    sub_21CB85944();
  }

  v3 = *(v0 + 2);

  v4 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__invitations;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[v4], v5);
  v6(&v0[OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__groups], v5);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__hasLoadedGroups;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_invitationsAndGroupsPublisher];

  v10 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__newlyCreatedGroup;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA8, &qword_21CBADCD0);
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_provider]);
  v12 = *&v0[v1];

  v13 = *(*v0 + 48);
  v14 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CA1DB18()
{
  v27 = v0;
  v1 = sub_21CB86314();
  if (!v1)
  {
    v1 = swift_allocError();
  }

  v2 = v1;
  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  *(v0 + 72) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v0 + 280);

    v6 = *(v0 + 80);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136446210;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v26);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Groups stream failed with error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 264);
    v19 = *(v0 + 240);
    v20 = *(v0 + 224);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = *(v0 + 184);
    v24 = *(v0 + 160);

    v25 = *(v0 + 8);

    return v25();
  }

  return result;
}

uint64_t sub_21CA1DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = *(type metadata accessor for PMSharingGroup() - 8);
  v4[19] = v5;
  v6 = *(v5 + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = sub_21CB85C44();
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v9 = *(v8 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52E0, &unk_21CBBD7E0);
  v4[26] = v10;
  v11 = *(v10 - 8);
  v4[27] = v11;
  v12 = *(v11 + 64) + 15;
  v4[28] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90C0, &qword_21CBCADE0);
  v4[29] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52E8, &qword_21CBBD7F0);
  v4[31] = v15;
  v16 = *(v15 - 8);
  v4[32] = v16;
  v17 = *(v16 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = sub_21CB858B4();
  v4[35] = sub_21CB858A4();
  v19 = sub_21CB85874();
  v4[36] = v19;
  v4[37] = v18;

  return MEMORY[0x2822009F8](sub_21CA1E074, v19, v18);
}

uint64_t sub_21CA1E074()
{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52F0, &unk_21CBBD7F8);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_21CB85924();
  sub_21C6EADEC(&qword_27CDED3E0, &qword_27CDF90C0, &qword_21CBCADE0);
  sub_21CB85964();
  swift_beginAccess();
  v8 = v0[34];
  v9 = sub_21CB858A4();
  v0[38] = v9;
  sub_21C6EADEC(&qword_27CDF52F8, &qword_27CDF52E8, &qword_21CBBD7F0);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = sub_21CA1E254;
  v12 = v0[33];
  v13 = v0[31];
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 5, v9, v14);
}

uint64_t sub_21CA1E254()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;

  v5 = v2[38];

  v6 = v2[37];
  v7 = v2[36];
  if (v0)
  {
    v8 = sub_21CA1DB18;
  }

  else
  {
    v8 = sub_21CA1E3A8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21CA1E3A8()
{
  v1 = v0 + 40;
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 144);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 88) = v2;

      sub_21CB81DC4();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 96) = v3;

      sub_21CB81DC4();
      v7 = [objc_opt_self() sharedProvider];
      v8 = [v7 hasLoadedGroups];

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 320) = v8;

      sub_21CB81DC4();
      v9 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_invitationsAndGroupsPublisher);
      *(v0 + 56) = v2;
      *(v0 + 64) = v3;

      sub_21CB81D24();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v10 = *(v0 + 104);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v11 = *(v0 + 112);
      v12 = *(v11 + 16);
      v60 = v6;
      if (v12)
      {
        v13 = *(v0 + 152);
        *(v0 + 120) = MEMORY[0x277D84F90];
        sub_21C7B0BC8(0, v12, 0);
        v14 = *(v0 + 120);
        v15 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v16 = *(v13 + 72);
        do
        {
          v17 = *(v0 + 192);
          v19 = *(v0 + 168);
          v18 = *(v0 + 176);
          v20 = *(v0 + 160);
          sub_21C94B4A8(v15, v20);
          (*(v18 + 16))(v17, v20, v19);
          sub_21C979EE8(v20);
          *(v0 + 120) = v14;
          v22 = *(v14 + 16);
          v21 = *(v14 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_21C7B0BC8(v21 > 1, v22 + 1, 1);
            v14 = *(v0 + 120);
          }

          v23 = *(v0 + 192);
          v24 = *(v0 + 168);
          v25 = *(v0 + 176);
          *(v14 + 16) = v22 + 1;
          (*(v25 + 32))(v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v23, v24);
          v15 += v16;
          --v12;
        }

        while (v12);

        v6 = v60;
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }

      v37 = *(v0 + 168);
      v38 = *(v14 + 16);
      v39 = sub_21C703FA8();
      *(v0 + 128) = MEMORY[0x21CF154F0](v38, v37, v39);
      v40 = *(v14 + 16);
      if (v40)
      {
        v41 = *(v0 + 176);
        v42 = v14 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v61 = *(v41 + 16);
        v62 = *(v41 + 72);
        do
        {
          v43 = *(v0 + 200);
          v44 = *(v0 + 176);
          v45 = *(v0 + 184);
          v46 = *(v0 + 168);
          v61(v43, v42, v46);
          sub_21CA93D98(v45, v43);
          (*(v44 + 8))(v45, v46);
          v42 += v62;
          --v40;
        }

        while (v40);
        v47 = *(v0 + 128);

        v1 = v0 + 40;
        v6 = v60;
      }

      else
      {
      }

      v48 = *(v6 + 16);
      v49 = qword_27CDEA4C0;

      if (v49 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v50 = sub_21C704000(v48, *(v0 + 136));

      v51 = *(v50 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 24);
      v52 = *(v50 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 32);
      __swift_project_boxed_opaque_existential_0((v50 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider), v51);
      (*(v52 + 40))(v51, v52);

      v53 = *(v0 + 272);
      v54 = sub_21CB858A4();
      *(v0 + 304) = v54;
      sub_21C6EADEC(&qword_27CDF52F8, &qword_27CDF52E8, &qword_21CBBD7F0);
      v55 = *(MEMORY[0x277D856D8] + 4);
      v56 = swift_task_alloc();
      *(v0 + 312) = v56;
      *v56 = v0;
      v56[1] = sub_21CA1E254;
      v57 = *(v0 + 264);
      v58 = *(v0 + 248);
      v59 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v1, v54, v59);
    }

    v27 = *(v0 + 280);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  }

  else
  {
    v26 = *(v0 + 280);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  }

  v28 = *(v0 + 264);
  v29 = *(v0 + 240);
  v30 = *(v0 + 224);
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v33 = *(v0 + 184);
  v34 = *(v0 + 160);

  v35 = *(v0 + 8);

  return v35();
}

unint64_t sub_21CA1EAD0()
{
  result = qword_27CDF52D8;
  if (!qword_27CDF52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF52D8);
  }

  return result;
}

uint64_t sub_21CA1EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_21C6F35D0;

  return sub_21CA1DE00(a1, a2, a3, a5);
}

uint64_t sub_21CA1EBDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21CA1EB24(a1, v4, v5, sub_21CA1EB24, v6);
}

uint64_t sub_21CA1ECC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA1ED08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI34PMInvalidAccountAlertConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CA1ED68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA1EDB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21CA1EE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v43 = *v2;
  v44 = v6;
  v8 = *v2;
  v7 = *(v2 + 16);
  v45 = *(v2 + 32);
  v46 = *(v2 + 48);
  v34 = v8;
  v9 = *(v2 + 32);
  v35 = v7;
  v36 = v9;
  v37 = *(v2 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5308, &qword_21CBBD9A8);
  MEMORY[0x21CF14A20](&v40);
  v33 = a1;
  v32 = a2;
  if (!v41)
  {
    v15 = 0xE100000000000000;
    v13 = 63;
    goto LABEL_5;
  }

  result = [objc_opt_self() alertTitleForFailedAccountCreationWithErrorCode_];
  if (result)
  {
    v12 = result;
    v13 = sub_21CB855C4();
    v15 = v14;

LABEL_5:
    v27[1] = v15;
    v38 = v13;
    v39 = v15;
    sub_21CB858B4();
    sub_21CA1F678(v2, &v34);
    v16 = sub_21CB858A4();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    v19 = *(v2 + 48);
    *(v17 + 64) = *(v2 + 32);
    *(v17 + 80) = v19;
    *(v17 + 96) = *(v2 + 64);
    v20 = *(v2 + 16);
    *(v17 + 32) = *v2;
    *(v17 + 48) = v20;
    sub_21CA1F678(v2, &v34);
    v21 = sub_21CB858A4();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v18;
    v23 = *(v3 + 48);
    *(v22 + 64) = *(v3 + 32);
    *(v22 + 80) = v23;
    *(v22 + 96) = *(v3 + 64);
    v24 = *(v3 + 16);
    *(v22 + 32) = *v3;
    *(v22 + 48) = v24;
    sub_21CB84F64();
    v29 = *(&v34 + 1);
    v30 = v34;
    v31 = v35;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v25 = MEMORY[0x21CF14A20](&v40, v10);
    v27[2] = v27;
    v26 = v40;
    v27[3] = *(&v41 + 1);
    v28 = v41;
    v34 = v40;
    v35 = v41;
    *&v36 = v42;
    MEMORY[0x28223BE20](v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5310, &unk_21CBBD9B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21C6EADEC(&qword_27CDF5318, &qword_27CDF5310, &unk_21CBBD9B0);
    sub_21C71F3FC();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB84714();

    sub_21CA1F6D0(v26, *(&v26 + 1), v28);
  }

  __break(1u);
  return result;
}

id sub_21CA1F280(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() alertDismissActionTitleForFailedAccountCreation];
  if (result)
  {
    v5 = result;
    v6 = sub_21CB855C4();
    v8 = v7;

    v15 = v6;
    v16 = v8;
    v9 = *(a1 + 24);
    v17 = *(a1 + 8);
    v18 = v9;
    v10 = swift_allocObject();
    v11 = *(a2 + 48);
    *(v10 + 48) = *(a2 + 32);
    *(v10 + 64) = v11;
    v12 = *(a2 + 16);
    *(v10 + 16) = *a2;
    *(v10 + 32) = v12;
    v13 = *(a1 + 16);
    *(v10 + 88) = *a1;
    *(v10 + 80) = *(a2 + 64);
    *(v10 + 104) = v13;
    *(v10 + 120) = *(a1 + 32);
    sub_21CA1F678(a2, v14);
    sub_21C805950(&v17, v14);
    sub_21C805950(&v18, v14);
    sub_21C71F3FC();
    return sub_21CB84DE4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21CA1F3A8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = objc_opt_self();
  v9 = sub_21CB85584();
  v10 = sub_21CB85584();
  v11 = sub_21CB85584();
  v12 = [v11 safari_highLevelDomainFromHost];

  v13 = [v8 alertSubtitleForFailedAccountCreationWithErrorCode:v3 forUserTypedSite:v9 userTypedUsername:v10 highLevelDomain:v12];
  if (v13)
  {
    sub_21CB855C4();

    sub_21C71F3FC();
    *a2 = sub_21CB84054();
    *(a2 + 8) = v14;
    *(a2 + 16) = v15 & 1;
    *(a2 + 24) = v16;
  }

  else
  {
    __break(1u);
  }
}

void *sub_21CA1F4D0@<X0>(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v11 = a1[2];
  v12 = *(a1 + 6);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5308, &qword_21CBBD9A8);
  result = MEMORY[0x21CF14A20](v7, v4);
  v6 = v8;
  if (v8)
  {
    result = sub_21CA1F6D0(v7[0], v7[1], v8);
  }

  *a2 = v6 != 0;
  return result;
}

uint64_t sub_21CA1F554(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a4[1];
  v18[0] = *a4;
  v18[1] = v4;
  v6 = *a4;
  v5 = a4[1];
  v18[2] = a4[2];
  v19 = *(a4 + 6);
  v14 = v6;
  v15 = v5;
  v16 = a4[2];
  v17 = *(a4 + 6);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  sub_21CA1F744(v18, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5308, &qword_21CBBD9A8);
  sub_21CB84F34();
  v7 = v15;
  v8 = v16;

  return sub_21CA1F6D0(v7, *(&v7 + 1), v8);
}

id sub_21CA1F634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v2 + 8);
  v4 = *v2;
  v5 = v2[1];
  return sub_21CA1EE2C(a1, a2);
}

void *sub_21CA1F6B0@<X0>(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CA1F4D0((v1 + 32), a1);
}

uint64_t sub_21CA1F6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21CA1F744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5308, &qword_21CBBD9A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA1F7B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24[-1] - v8;
  v10 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_21CA21D54(a1, v24);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_21CA2259C(a1, &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMInboundOTPAuthURLContext);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_21CA22534(&v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMInboundOTPAuthURLContext);
  v16 = (v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;
  v17 = type metadata accessor for PMAccount(0);
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = type metadata accessor for PMAccountPickerModel();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  v21 = sub_21C7A4DA0(v24, 0, sub_21C737480, v15, nullsub_1, 0, v9, nullsub_1, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v21;

  return sub_21CB81DC4();
}

uint64_t sub_21CA1FA78()
{
  v1 = sub_21CB80BE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_21CB86484();
  sub_21C737438(&qword_27CDF48D0, MEMORY[0x277CC9260]);
  sub_21CB85494();
  v10 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  sub_21C6EDBAC(v0 + *(v10 + 20), v9, &qword_27CDEC300, &qword_21CBA3ED0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_21CB864A4();
    sub_21CB85494();
    (*(v2 + 8))(v5, v1);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CA1FC8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA1FD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_21C737438(&qword_27CDF48D0, MEMORY[0x277CC9260]);
  sub_21CB85494();
  sub_21C6EDBAC(v2 + *(a2 + 20), v12, &qword_27CDEC300, &qword_21CBA3ED0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_21CB864A4();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_21CB864A4();
  sub_21CB85494();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21CA1FF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_21CB86484();
  sub_21C737438(&qword_27CDF48D0, MEMORY[0x277CC9260]);
  sub_21CB85494();
  sub_21C6EDBAC(v2 + *(a2 + 20), v12, &qword_27CDEC300, &qword_21CBA3ED0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_21CB864A4();
    sub_21CB85494();
    (*(v5 + 8))(v8, v4);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CA2015C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - v8;
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = type metadata accessor for PMAccount(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EDBAC(a1, v19, &unk_27CDEBE60, &unk_21CB9FF40);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_21C6EA794(v19, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  else
  {
    sub_21CA22534(v19, v24, type metadata accessor for PMAccount);
    sub_21CA2259C(&v24[*(v20 + 24)], v12, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719600(v12, type metadata accessor for PMAccount.Storage);
      sub_21C719600(v24, type metadata accessor for PMAccount);
    }

    else
    {
      v25 = *v12;
      v26 = objc_allocWithZone(MEMORY[0x277D49B78]);
      v27 = sub_21CB80B74();
      v28 = [v26 initWithOTPAuthURL_];

      if (v28)
      {
        v29 = sub_21CB858E4();
        v30 = v39;
        (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
        sub_21CB858B4();
        v31 = v25;
        v32 = v42;

        v33 = v28;
        v34 = sub_21CB858A4();
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D85700];
        v35[2] = v34;
        v35[3] = v36;
        v35[4] = v33;
        v35[5] = v31;
        v35[6] = v41;
        v35[7] = v32;
        sub_21C98B308(0, 0, v30, &unk_21CBBDB48, v35);

        sub_21C719600(v24, type metadata accessor for PMAccount);
        goto LABEL_9;
      }

      sub_21C719600(v24, type metadata accessor for PMAccount);
    }
  }

  (*(v21 + 56))(v17, 1, 1, v20);
  v41(v17);
  sub_21C6EA794(v17, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_9:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = 0;
    return sub_21CB81DC4();
  }

  return result;
}

uint64_t sub_21CA2062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40) - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v9 = *(*(type metadata accessor for PMAccount.SIWAUniqueID(0) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v10 = *(*(type metadata accessor for PMAccount.CombinedUniqueID(0) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v11 = type metadata accessor for PMAccount.UniqueID(0);
  v7[25] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v13 = type metadata accessor for PMAccount.Storage(0);
  v7[27] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v15 = type metadata accessor for PMAccount(0);
  v7[29] = v15;
  v16 = *(v15 - 8);
  v7[30] = v16;
  v17 = *(v16 + 64) + 15;
  v7[31] = swift_task_alloc();
  sub_21CB858B4();
  v7[32] = sub_21CB858A4();
  v19 = sub_21CB85874();
  v7[33] = v19;
  v7[34] = v18;

  return MEMORY[0x2822009F8](sub_21CA20814, v19, v18);
}

uint64_t sub_21CA20814()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = [objc_opt_self() sharedStore];
  v0[35] = v3;
  v0[2] = v0;
  v0[3] = sub_21CA20960;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_27;
  v0[14] = v4;
  [v3 saveTOTPGenerator:v2 forSavedAccount:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CA20960()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CA20A68, v2, v1);
}

uint64_t sub_21CA20A68()
{
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[19];

  *v4 = v9;
  swift_storeEnumTagMultiPayload();
  v10 = (v3 + v5[7]);
  *v10 = 0u;
  v10[1] = 0u;
  sub_21CA2259C(v4, v3 + v5[6], type metadata accessor for PMAccount.Storage);
  v11 = v5[5];
  v12 = v9;
  sub_21C7C8A3C(v3 + v11);
  sub_21CA2259C(v3 + v11, v7, type metadata accessor for PMAccount.UniqueID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v0[26];
  if (EnumCaseMultiPayload == 1)
  {
    v15 = v0[23];
    sub_21CA22534(v14, v15, type metadata accessor for PMAccount.SIWAUniqueID);
    v16 = sub_21C7CE99C();
    v18 = v17;
    v19 = type metadata accessor for PMAccount.SIWAUniqueID;
  }

  else
  {
    v15 = v0[24];
    sub_21CA22534(v14, v15, type metadata accessor for PMAccount.CombinedUniqueID);
    v16 = sub_21C7CE408();
    v18 = v20;
    v19 = type metadata accessor for PMAccount.CombinedUniqueID;
  }

  sub_21C719600(v15, v19);
  v21 = v0[30];
  v22 = v0[31];
  v23 = v0[29];
  v29 = v0[26];
  v30 = v0[24];
  v31 = v0[23];
  v25 = v0[21];
  v24 = v0[22];
  v26 = v0[20];
  sub_21C719600(v0[28], type metadata accessor for PMAccount.Storage);
  *v22 = v16;
  v22[1] = v18;
  sub_21CA2259C(v22, v24, type metadata accessor for PMAccount);
  (*(v21 + 56))(v24, 0, 1, v23);
  v26(v24);
  sub_21C6EA794(v24, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C719600(v22, type metadata accessor for PMAccount);

  v27 = v0[1];

  return v27();
}

uint64_t sub_21CA20D14()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMInboundOTPAuthURLModel__pickerModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5378, &unk_21CBBDAE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CA20E54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CA20ED0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PMAccountPickerModel();
  sub_21C737438(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel);

  v4 = sub_21CB82674();
  v6 = v5;
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_21CA20F74()
{
  v0 = type metadata accessor for PMInboundOTPAuthURLModel(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABE0, &qword_21CB9FE10);
  sub_21CB81D74();
  return v3;
}

uint64_t sub_21CA20FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
  MEMORY[0x21CF14A20](v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_21C6EA794(v6, &qword_27CDF30D0, &qword_21CBBDC70);
  }

  sub_21CA22534(v6, v11, type metadata accessor for PMInboundOTPAuthURLContext);
  sub_21CA2259C(v11, v3, type metadata accessor for PMInboundOTPAuthURLContext);
  (*(v8 + 56))(v3, 0, 1, v7);
  sub_21CA211FC(v3);
  sub_21C6EA794(v3, &qword_27CDF30D0, &qword_21CBBDC70);
  return sub_21C719600(v11, type metadata accessor for PMInboundOTPAuthURLContext);
}

uint64_t sub_21CA211FC(uint64_t a1)
{
  v2 = type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EDBAC(a1, v8, &qword_27CDF30D0, &qword_21CBBDC70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21C6EA794(v8, &qword_27CDF30D0, &qword_21CBBDC70);
    v14 = v28 + *(v2 + 24);
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    type metadata accessor for PMInboundOTPAuthURLModel(0);
    sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel);
    sub_21CB82134();
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = 0;
    return sub_21CB81DC4();
  }

  else
  {
    sub_21CA22534(v8, v13, type metadata accessor for PMInboundOTPAuthURLContext);
    v19 = v28;
    v20 = v28 + *(v2 + 24);
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    type metadata accessor for PMInboundOTPAuthURLModel(0);
    sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel);
    sub_21CB82134();
    sub_21CA2259C(v19, &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
    v24 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v25 = swift_allocObject();
    sub_21CA22534(v4, v25 + v24, type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
    sub_21CA1F7B4(v13, sub_21CA22ACC, v25);

    return sub_21C719600(v13, type metadata accessor for PMInboundOTPAuthURLContext);
  }
}

uint64_t sub_21CA215CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21C6EDBAC(v10, v7, &qword_27CDF30D0, &qword_21CBBDC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
  sub_21CB84F34();
  sub_21C6EA794(v10, &qword_27CDF30D0, &qword_21CBBDC70);
  v12 = a2 + *(type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0) + 20);
  v13 = *(v12 + 8);
  return (*v12)(a1);
}

uint64_t sub_21CA21720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *(a2 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v3 + *(v7 + 32);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  type metadata accessor for PMInboundOTPAuthURLModel(0);
  sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel);
  sub_21CB82134();
  v12 = sub_21CB82674();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53B8, &qword_21CBBDCC8);
  (*(*(v15 - 8) + 16))(a3, a1, v15);
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53C0, &qword_21CBBDCD0) + 36));
  *v16 = v12;
  v16[1] = v14;
  sub_21CA2259C(v3, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = swift_allocObject();
  sub_21CA22534(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
  v19 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53C8, &qword_21CBBDCD8) + 36));
  *v19 = sub_21CA22804;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  v20 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53D0, &qword_21CBBDCE0) + 36);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30);
  MEMORY[0x21CF14A20](v21);
  sub_21CA2259C(v3, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
  v22 = swift_allocObject();
  sub_21CA22534(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v17, type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF53D8, &qword_21CBBDCE8);
  v24 = (v20 + *(result + 36));
  *v24 = sub_21CA22A68;
  v24[1] = v22;
  return result;
}

BOOL sub_21CA21A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5368, &qword_21CBBDAD8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((sub_21CB80B84() & 1) == 0)
  {
    return 0;
  }

  v25 = v8;
  v17 = *(type metadata accessor for PMInboundOTPAuthURLContext(0) + 20);
  v18 = *(v13 + 48);
  sub_21C6EDBAC(a1 + v17, v16, &qword_27CDEC300, &qword_21CBA3ED0);
  sub_21C6EDBAC(a2 + v17, &v16[v18], &qword_27CDEC300, &qword_21CBA3ED0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_21C6EA794(v16, &qword_27CDEC300, &qword_21CBA3ED0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21C6EDBAC(v16, v12, &qword_27CDEC300, &qword_21CBA3ED0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_21C6EA794(v16, &qword_27CDF5368, &qword_21CBBDAD8);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_21C737438(&qword_27CDF5370, MEMORY[0x277CC9260]);
  v22 = sub_21CB85574();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_21C6EA794(v16, &qword_27CDEC300, &qword_21CBA3ED0);
  return (v22 & 1) != 0;
}

void *sub_21CA21D54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v48 - v13;
  v15 = *(type metadata accessor for PMInboundOTPAuthURLContext(0) + 20);
  v58 = a1;
  sub_21C6EDBAC(a1 + v15, v14, &qword_27CDEC300, &qword_21CBA3ED0);
  v16 = sub_21CB80BE4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_21C6EA794(v14, &qword_27CDEC300, &qword_21CBA3ED0);
LABEL_11:
    v25 = &v107;
    v107 = 0;
    v108 = 0;
    goto LABEL_12;
  }

  sub_21CB80BB4();
  v19 = v18;
  (*(v17 + 8))(v14, v16);
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = sub_21CB85584();

  v21 = [v20 safari_highLevelDomainFromHost];

  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = sub_21CB855C4();
  v24 = v23;

  v25 = &v107;
  v107 = v22;
  v108 = v24;
  if (!v24)
  {
LABEL_12:
    v26 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  *(&v57 + 1) = &v107;

  v26 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_21CA4F2EC(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_21CA4F2EC((v27 > 1), v28 + 1, 1, v26);
  }

  v25 = *(&v57 + 1);
  *(v26 + 2) = v28 + 1;
  v29 = &v26[16 * v28];
  *(v29 + 4) = v22;
  *(v29 + 5) = v24;
LABEL_13:
  sub_21C6EA794(v25, &unk_27CDED260, &qword_21CBA1C60);
  *(&v57 + 1) = sub_21CB009AC(v26);

  *&v57 = sub_21CB5E3D8();
  v64 = 1;
  v58 = [objc_opt_self() defaultContext];
  sub_21CB81014();
  sub_21CB81014();
  v30 = sub_21CB80FF4();
  v55 = v31;
  v56 = v30;
  v32 = *(v4 + 8);
  v32(v8, v3);
  v32(v10, v3);
  sub_21CB81014();
  sub_21CB81014();
  v33 = sub_21CB80FF4();
  v53 = v34;
  v54 = v33;
  v32(v8, v3);
  v32(v10, v3);
  sub_21CB81014();
  v35 = sub_21CB81004();
  v51 = v36;
  v52 = v35;
  v32(v10, v3);
  sub_21CB81014();
  v37 = sub_21CB81004();
  v49 = v38;
  v50 = v37;
  v32(v10, v3);
  sub_21CB81014();
  v39 = sub_21CB81004();
  v48 = v40;
  v32(v10, v3);
  sub_21CB81014();
  v41 = sub_21CB81004();
  v43 = v42;
  v32(v10, v3);
  sub_21CB81014();
  v44 = sub_21CB81004();
  v46 = v45;
  v32(v10, v3);
  LOBYTE(v67[0]) = 2;
  *(v67 + 1) = *v66;
  DWORD1(v67[0]) = *&v66[3];
  *(&v67[0] + 1) = 0;
  *&v67[1] = 0;
  *(&v67[1] + 1) = v56;
  *&v67[2] = v55;
  *(&v67[2] + 1) = v54;
  *&v67[3] = v53;
  *(&v67[3] + 1) = v52;
  v67[4] = v51;
  *&v67[5] = 0xE000000000000000;
  *(&v67[5] + 1) = v50;
  *&v67[6] = v49;
  *(&v67[6] + 1) = v39;
  *&v67[7] = v48;
  *(&v67[7] + 1) = v41;
  *&v67[8] = v43;
  *(&v67[8] + 1) = v44;
  *&v67[9] = v46;
  *(&v67[9] + 1) = 7;
  v67[10] = v57;
  memset(&v67[11], 0, 49);
  *(&v67[14] + 1) = *v65;
  DWORD1(v67[14]) = *&v65[3];
  *(&v67[14] + 8) = 0u;
  *(&v67[15] + 8) = 0u;
  *(&v67[16] + 1) = 0;
  LOWORD(v67[17]) = v64;
  *(&v67[17] + 2) = v62;
  WORD3(v67[17]) = v63;
  v67[18] = 0uLL;
  *(&v67[17] + 1) = 0;
  LOBYTE(v67[19]) = 1;
  *(&v67[19] + 1) = *v61;
  DWORD1(v67[19]) = *&v61[3];
  *(&v67[19] + 1) = v58;
  v68 = 2;
  *&v69[3] = *&v66[3];
  *v69 = *v66;
  v70 = 0;
  v71 = 0;
  v72 = v56;
  v73 = v55;
  v74 = v54;
  v75 = v53;
  v76 = v52;
  v77 = v51;
  v78 = 0;
  v79 = 0xE000000000000000;
  v80 = v50;
  v81 = v49;
  v82 = v39;
  v83 = v48;
  v84 = v41;
  v85 = v43;
  v86 = v44;
  v87 = v46;
  v88 = 7;
  v89 = v57;
  v93 = 0;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  *v94 = *v65;
  *&v94[3] = *&v65[3];
  v95 = 0u;
  v96 = 0u;
  v97 = 0;
  v98 = v64;
  v99 = v62;
  v100 = v63;
  v102 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 1;
  *v105 = *v61;
  *&v105[3] = *&v61[3];
  v106 = v58;
  sub_21C7AE6B0(v67, &v60);
  sub_21C7ADFB8(&v68);
  return memcpy(v59, v67, 0x140uLL);
}

uint64_t sub_21CA22534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA2259C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA22604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21C702EFC;

  return sub_21CA2062C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_21CA22720()
{
  sub_21C71A1D4(319, &qword_27CDF53A8, &qword_27CDF30D0, &qword_21CBBDC70, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21C71F9F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21CA22804()
{
  v0 = *(*(type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0) - 8) + 80);

  return sub_21CA20FE4();
}

uint64_t objectdestroy_34Tm()
{
  v1 = type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5390, &unk_21CBBDC30) + 32);
  v9 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_21CB80BE4();
    v21 = v4;
    v11 = *(v10 - 8);
    v20 = *(v11 + 8);
    v20(v8, v10);
    v12 = *(v9 + 20);
    v13 = (*(v11 + 48))(v8 + v12, 1, v10);
    v4 = v21;
    if (!v13)
    {
      v20(v8 + v12, v10);
    }
  }

  v14 = *(v5 + *(v1 + 20) + 8);

  v15 = (v5 + *(v1 + 24));
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  sub_21C70AC30();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CA22A68(uint64_t a1)
{
  v3 = *(type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_21CA211FC(a1);
}

uint64_t sub_21CA22ACC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA215CC(a1, v4);
}

unint64_t sub_21CA22B3C()
{
  result = qword_27CDF53E0;
  if (!qword_27CDF53E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF53D0, &qword_21CBBDCE0);
    sub_21CA22BF4();
    sub_21C6EADEC(&qword_27CDF5400, &qword_27CDF53D8, &qword_21CBBDCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF53E0);
  }

  return result;
}

unint64_t sub_21CA22BF4()
{
  result = qword_27CDF53E8;
  if (!qword_27CDF53E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF53C8, &qword_21CBBDCD8);
    sub_21CA22C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF53E8);
  }

  return result;
}

unint64_t sub_21CA22C80()
{
  result = qword_27CDF53F0;
  if (!qword_27CDF53F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF53C0, &qword_21CBBDCD0);
    sub_21C6EADEC(&qword_27CDF53F8, &qword_27CDF53B8, &qword_21CBBDCC8);
    sub_21C725B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF53F0);
  }

  return result;
}

uint64_t sub_21CA22D40()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21CA22DA8()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21CA22DE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  return sub_21CB85DD4() & 1;
}

unint64_t sub_21CA22E40()
{
  result = qword_27CDF5408;
  if (!qword_27CDF5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5408);
  }

  return result;
}

uint64_t sub_21CA22EA0(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() mainBundle];
  [v7 safari_isSafariFamilyApplicationBundle];

  v8 = [a1 passkeyCredential];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CB80C84();
    v12 = v11;

    sub_21C7A34C0(v10, v12);
  }

  sub_21CB81014();
  v13 = sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t sub_21CA23068(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21CBA15B0;
  v8 = [a1 username];
  v9 = sub_21CB855C4();
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v13 = sub_21C7C0050();
  *(v7 + 64) = v13;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v14 = [a1 highLevelDomain];
  v15 = sub_21CB855C4();
  v17 = v16;

  *(v7 + 96) = v12;
  *(v7 + 104) = v13;
  *(v7 + 72) = v15;
  *(v7 + 80) = v17;
  v18 = sub_21CB85594();

  return v18;
}

uint64_t sub_21CA23248(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-v6 - 8];
  v8 = *a1;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_21CB858B4();
  v10 = v8;
  sub_21C7380DC(a2, v18);
  v11 = sub_21CB858A4();
  v12 = swift_allocObject();
  v13 = *a2;
  *(v12 + 56) = *(a2 + 16);
  v14 = *(a2 + 48);
  *(v12 + 72) = *(a2 + 32);
  *(v12 + 88) = v14;
  v15 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v15;
  *(v12 + 32) = v8;
  *(v12 + 104) = *(a2 + 64);
  *(v12 + 40) = v13;
  sub_21C98B308(0, 0, v7, &unk_21CBBDFA8, v12);
}

uint64_t sub_21CA233A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_21CB858B4();
  v5[12] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_21CA23438, v7, v6);
}

uint64_t sub_21CA23438()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_21CA23518;
    v4 = v0[11];

    return sub_21CA23744(v2);
  }

  else
  {
    v6 = v0[12];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_21CA23518()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21CA23638, v4, v3);
}

uint64_t sub_21CA23638()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v0[5] = *v2;
  v0[6] = v6;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[7] = 0;
  sub_21C74C770((v0 + 5), (v0 + 8));

  sub_21C7504F0((v0 + 6), (v0 + 9));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5420, &qword_21CBBDF40);
  sub_21CB84F34();

  sub_21C7509C4((v0 + 5));

  sub_21C6EA794((v0 + 6), &qword_27CDF5470, &qword_21CBBDF88);
  v7 = v0[1];

  return v7();
}

uint64_t sub_21CA23744(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_21CB858B4();
  v2[11] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x2822009F8](sub_21CA237DC, v4, v3);
}

uint64_t sub_21CA237DC()
{
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_21CB81C84();
  v0[14] = __swift_project_value_buffer(v2, qword_27CE186E0);
  v3 = v1;
  v4 = sub_21CB81C64();
  v5 = sub_21CB85AD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_21C6E5000, v4, v5, "Received sharable account: %@", v7, 0xCu);
    sub_21C6EA794(v8, &unk_27CDF76B0, &qword_21CBA2BE0);
    MEMORY[0x21CF16D90](v8, -1, -1);
    MEMORY[0x21CF16D90](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_21CA23998;
  v11 = v0[9];
  v12 = v0[10];

  return sub_21CA24C60(v11);
}

uint64_t sub_21CA23998()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_21CA23AD4;
  }

  else
  {
    v7 = sub_21C8EC168;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21CA23AD4()
{
  v29 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);

  *(v0 + 48) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 128);
  if (v4)
  {
    v6 = *(v0 + 72);

    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    if (*(v0 + 136))
    {
      *(v0 + 16) = *(v8 + 56);
      *(v0 + 56) = v6;
      v9 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5468, &qword_21CBBDF68);
    }

    else
    {
      *(v0 + 32) = *(v8 + 40);
      *(v0 + 64) = v6;
      v24 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5438, &qword_21CBBDF58);
    }

    sub_21CB84D64();
    v25 = *(v0 + 48);
  }

  else
  {
    v10 = *(v0 + 112);

    v11 = v5;
    v12 = sub_21CB81C64();
    v13 = sub_21CB85AF4();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 128);
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136446210;
      v18 = sub_21CB80B04();
      v19 = [v18 safari_privacyPreservingDescription];

      v20 = sub_21CB855C4();
      v22 = v21;

      v23 = sub_21C98E004(v20, v22, &v28);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_21C6E5000, v12, v13, "Failed to save sharable account: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x21CF16D90](v17, -1, -1);
      MEMORY[0x21CF16D90](v16, -1, -1);

      goto LABEL_10;
    }

    v25 = v15;
  }

LABEL_10:
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_21CA23D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_21CA23E9C, v5, v4);
}

uint64_t sub_21CA23E9C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[15];

  v0[5] = v5;
  v0[6] = v3;
  v0[7] = v4;
  v0[13] = 0;
  sub_21CB84F34();

  sub_21C7509C4((v0 + 8));

  sub_21C6EA794((v0 + 9), &qword_27CDF5470, &qword_21CBBDF88);
  v7 = v0[1];

  return v7();
}

uint64_t sub_21CA23F60@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v52 = a2;
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - v6;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v54 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v53 = &v48 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v51 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v22 = *a1;
  v49 = &v48 - v23;
  v50 = v22;
  sub_21CB81014();
  v24 = sub_21CB81004();
  v26 = v25;
  v27 = *(v9 + 8);
  v48 = v9 + 8;
  v27(v12, v8);
  v56[0] = v24;
  v56[1] = v26;
  sub_21CB81EF4();
  v28 = sub_21CB81F14();
  (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
  sub_21C71F3FC();
  sub_21CB84DC4();
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  v27(v12, v8);
  v56[9] = v29;
  v56[10] = v31;
  v32 = swift_allocObject();
  v33 = v52;
  v34 = *(v52 + 48);
  *(v32 + 48) = *(v52 + 32);
  *(v32 + 64) = v34;
  v35 = *(v33 + 64);
  v36 = *(v33 + 16);
  *(v32 + 16) = *v33;
  *(v32 + 32) = v36;
  v37 = v50;
  *(v32 + 80) = v35;
  *(v32 + 88) = v37;
  sub_21C7380DC(v33, v56);
  v38 = v37;
  v39 = v51;
  sub_21CB84DE4();
  v40 = v14[2];
  v41 = v53;
  v42 = v49;
  v40(v53, v49, v13);
  v43 = v54;
  v40(v54, v39, v13);
  v44 = v55;
  v40(v55, v41, v13);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v40(&v44[*(v45 + 48)], v43, v13);
  v46 = v14[1];
  v46(v39, v13);
  v46(v42, v13);
  v46(v43, v13);
  return (v46)(v41, v13);
}

void sub_21CA243E8(void *a1)
{
  v2 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for PMAccount.UniqueID(0);
  v8 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v12 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for PMAccount(0);
  v13 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = objc_opt_self();
  v16 = [v79 sharedStore];
  v17 = [v16 savedAccounts];

  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v18 = sub_21CB85824();

  v81 = v12;
  v82 = v15;
  if (v18 >> 62)
  {
LABEL_41:
    v19 = sub_21CB85FA4();
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_42:

    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v66 = sub_21CB81C84();
    __swift_project_value_buffer(v66, qword_27CE186E0);
    v67 = a1;
    v86 = sub_21CB81C64();
    v68 = sub_21CB85AF4();

    if (os_log_type_enabled(v86, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v67;
      *v70 = v67;
      v71 = v67;
      _os_log_impl(&dword_21C6E5000, v86, v68, "Failed to find matching saved account while attempting to save sharable account with password conflicts: %@", v69, 0xCu);
      sub_21C6EA794(v70, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v70, -1, -1);
      MEMORY[0x21CF16D90](v69, -1, -1);
    }

LABEL_46:
    v72 = v86;

    return;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_42;
  }

LABEL_3:
  v20 = 0;
  v85 = v18 & 0xFFFFFFFFFFFFFF8;
  v86 = (v18 & 0xC000000000000001);
  v21 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
  v83 = v19;
  v84 = v18;
  while (1)
  {
    if (v86)
    {
      v22 = MEMORY[0x21CF15BD0](v20, v18);
    }

    else
    {
      if (v20 >= *(v85 + 16))
      {
        goto LABEL_40;
      }

      v22 = *(v18 + 8 * v20 + 32);
    }

    v18 = v22;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v24 = [v22 v21[239]];
    if (v24)
    {
      v25 = v24;
      v26 = sub_21CB855C4();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = v21;
    v30 = a1;
    v31 = [a1 v21[239]];
    v32 = sub_21CB855C4();
    v34 = v33;

    if (v28)
    {
      if (v26 == v32 && v28 == v34)
      {
      }

      else
      {
        v35 = sub_21CB86344();

        if ((v35 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v36 = [v18 user];
      if (v36)
      {
        v37 = v36;
        v38 = sub_21CB855C4();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v41 = [v30 username];
      v42 = sub_21CB855C4();
      v44 = v43;

      if (v40)
      {
        break;
      }
    }

LABEL_5:
    a1 = v30;
    ++v20;
    v18 = v84;
    v21 = v29;
    if (v23 == v83)
    {
      goto LABEL_42;
    }
  }

  if (v38 != v42 || v40 != v44)
  {
    v45 = sub_21CB86344();

    if (v45)
    {
      goto LABEL_29;
    }

LABEL_25:

    goto LABEL_5;
  }

LABEL_29:
  v46 = v79;

  v47 = v18;
  v48 = [v46 sharedStore];
  v86 = v47;
  v49 = [v30 username];
  v51 = v81;
  v50 = v82;
  if (!v49)
  {
    sub_21CB855C4();
    v49 = sub_21CB85584();
  }

  v52 = [v30 password];
  if (!v52)
  {
    sub_21CB855C4();
    v52 = sub_21CB85584();
  }

  [v48 changeSavedAccount:v86 toUser:v49 password:v52];

  [v30 savePasskeyAccountAndMergeIntoSavedPasswordAccountIfNeeded_];
  v53 = *(v80 + 24);
  if (!v53)
  {

    goto LABEL_46;
  }

  v54 = *(v80 + 32);
  *v51 = v86;
  swift_storeEnumTagMultiPayload();
  v55 = v76;
  v56 = (v50 + *(v76 + 28));
  *v56 = 0u;
  v56[1] = 0u;
  sub_21CA25B14(v51, v50 + *(v55 + 24), type metadata accessor for PMAccount.Storage);
  v57 = *(v55 + 20);
  v58 = v86;
  sub_21C71DD5C(v53);
  sub_21C7C8A3C(v50 + v57);
  v59 = v78;
  sub_21CA25B14(v50 + v57, v78, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v74;
    sub_21CA25B7C(v59, v74, type metadata accessor for PMAccount.SIWAUniqueID);
    v61 = sub_21C7CE99C();
    v63 = v62;
    v64 = type metadata accessor for PMAccount.SIWAUniqueID;
  }

  else
  {
    v60 = v73;
    sub_21CA25B7C(v59, v73, type metadata accessor for PMAccount.CombinedUniqueID);
    v61 = sub_21C7CE408();
    v63 = v65;
    v64 = type metadata accessor for PMAccount.CombinedUniqueID;
  }

  sub_21CA25BE4(v60, v64);
  sub_21CA25BE4(v51, type metadata accessor for PMAccount.Storage);
  *v50 = v61;
  v50[1] = v63;
  v53(v50);
  sub_21C71B710(v53);

  sub_21CA25BE4(v50, type metadata accessor for PMAccount);
}

uint64_t sub_21CA24C60(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = *(*(type metadata accessor for PMAccount.SIWAUniqueID(0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v4 = *(*(type metadata accessor for PMAccount.CombinedUniqueID(0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for PMAccount.UniqueID(0);
  v2[23] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for PMAccount.Storage(0);
  v2[26] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount(0);
  v2[29] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_21CB858B4();
  v2[32] = sub_21CB858A4();
  v12 = sub_21CB85874();
  v2[33] = v12;
  v2[34] = v11;

  return MEMORY[0x2822009F8](sub_21CA24E04, v12, v11);
}

uint64_t sub_21CA24E04()
{
  v58 = v0;
  if (![*(v0 + 152) hasAnyCredentialData])
  {
    v11 = *(v0 + 256);

    v12 = 0;
    goto LABEL_29;
  }

  if ([*(v0 + 152) hasPasswordWithConflicts])
  {
    v1 = *(v0 + 256);

    v2 = [objc_opt_self() sharedStore];
    v3 = [v2 savedAccounts];

    sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
    v4 = sub_21CB85824();

    if (v4 >> 62)
    {
LABEL_27:
      v5 = sub_21CB85FA4();
      if (v5)
      {
LABEL_5:
        v6 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x21CF15BD0](v6, v4);
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v10 = *(v0 + 152);
          v57 = v7;
          if (sub_21CA257B8(&v57, v10))
          {
            break;
          }

          ++v6;
          if (v9 == v5)
          {
            goto LABEL_28;
          }
        }

        v15 = *(v0 + 152);
        v16 = *(v0 + 160);

        v17 = v8;
        [v15 savePasskeyAccountAndMergeIntoSavedPasswordAccountIfNeeded_];
        v18 = *(v16 + 24);
        if (v18)
        {
          v19 = *(v16 + 32);
          v20 = *(v0 + 248);
          v22 = *(v0 + 224);
          v21 = *(v0 + 232);
          v24 = *(v0 + 200);
          v23 = *(v0 + 208);
          v25 = *(v0 + 184);
          *v22 = v17;
          swift_storeEnumTagMultiPayload();
          v26 = (v20 + v21[7]);
          *v26 = 0u;
          v26[1] = 0u;
          sub_21CA25B14(v22, v20 + v21[6], type metadata accessor for PMAccount.Storage);
          v27 = v21[5];
          v28 = v17;
          sub_21C71DD5C(v18);
          sub_21C7C8A3C(v20 + v27);
          sub_21CA25B14(v20 + v27, v24, type metadata accessor for PMAccount.UniqueID);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v30 = *(v0 + 200);
          if (EnumCaseMultiPayload == 1)
          {
            v31 = *(v0 + 168);
            sub_21CA25B7C(v30, v31, type metadata accessor for PMAccount.SIWAUniqueID);
            v32 = sub_21C7CE99C();
            v34 = v33;
            v35 = type metadata accessor for PMAccount.SIWAUniqueID;
          }

          else
          {
            v31 = *(v0 + 176);
            sub_21CA25B7C(v30, v31, type metadata accessor for PMAccount.CombinedUniqueID);
            v32 = sub_21C7CE408();
            v34 = v36;
            v35 = type metadata accessor for PMAccount.CombinedUniqueID;
          }

          sub_21CA25BE4(v31, v35);
          v37 = *(v0 + 248);
          sub_21CA25BE4(*(v0 + 224), type metadata accessor for PMAccount.Storage);
          *v37 = v32;
          v37[1] = v34;
          v18(v37);
          sub_21C71B710(v18);

          sub_21CA25BE4(v37, type metadata accessor for PMAccount);
        }

        else
        {
        }

        v39 = *(v0 + 240);
        v38 = *(v0 + 248);
        v41 = *(v0 + 216);
        v40 = *(v0 + 224);
        v43 = *(v0 + 192);
        v42 = *(v0 + 200);
        v45 = *(v0 + 168);
        v44 = *(v0 + 176);

        v46 = *(v0 + 8);
        goto LABEL_30;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }
    }

LABEL_28:

    v12 = 1;
LABEL_29:
    sub_21CA25C44();
    swift_allocError();
    v48 = *(v0 + 240);
    v47 = *(v0 + 248);
    v50 = *(v0 + 216);
    v49 = *(v0 + 224);
    v52 = *(v0 + 192);
    v51 = *(v0 + 200);
    v53 = *(v0 + 176);
    v56 = *(v0 + 168);
    *v54 = v12;
    swift_willThrow();

    v46 = *(v0 + 8);
LABEL_30:

    return v46();
  }

  v13 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_21CA25394;
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5480, &qword_21CBC5B40);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21C82D1CC;
  *(v0 + 104) = &block_descriptor_28;
  *(v0 + 112) = v14;
  [v13 saveToKeychainWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}