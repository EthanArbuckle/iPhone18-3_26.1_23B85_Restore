uint64_t sub_26EE598E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VoiceInformationSection();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = sub_26EF3B30C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_26EE5C5D0(a1, v13);
  (*(v5 + 16))(v8, a2, v4);
  sub_26EF3B2DC();
  v20 = sub_26EF3B2CC();
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = (v11 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_26EE5C86C(v13, v23 + v21);
  (*(v5 + 32))(v23 + v22, v8, v4);
  sub_26EE2C388(0, 0, v18, &unk_26EF3EF70, v23);
}

uint64_t sub_26EE59B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF3883C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[7] = sub_26EF3B2CC();
  v10 = sub_26EF3B29C();
  v5[8] = v10;
  v5[9] = v9;

  return MEMORY[0x2822009F8](sub_26EE59C68, v10, v9);
}

uint64_t sub_26EE59C68()
{
  v1 = v0[2];
  v2 = *(v1 + 32);
  v0[10] = v2;
  if (v2)
  {
    v3 = v0[3];
    v2;
    v4 = sub_26EF38A6C();
    v6 = v5;
    v0[11] = v5;
    v7 = sub_26EF38A9C();
    v9 = v8;
    v0[12] = v8;
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_26EE59DD4;

    return sub_26EF1E820(v4, v6, v7, v9);
  }

  else
  {
    v12 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EE5CE6C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE59DD4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v11 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_26EE59F70;
  }

  else
  {
    v8 = v2[11];
    v7 = v2[12];
    v9 = v2[10];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_26EE59F08;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EE59F08()
{
  v1 = v0[7];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26EE59F70()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  v9 = sub_26EE27DAC();
  (*(v8 + 16))(v6, v9, v7);
  v10 = v1;
  v11 = sub_26EF3881C();
  v12 = sub_26EF3B45C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[14];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v14;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_26EE01000, v11, v12, "VoiceManagementView: Unable to preview personal voice. %@", v15, 0xCu);
    sub_26EE14578(v16, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v16, -1, -1);
    MEMORY[0x2743842A0](v15, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v19 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26EE5A140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession();
  sub_26EE5CE6C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceBankingBatteryMonitor();
  sub_26EE5CE6C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v7;
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE5CE6C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v8;
  v9 = type metadata accessor for VoiceInformationSection();
  sub_26EE14D98(a1, a3 + *(v9 + 28), &qword_2806C7080, &unk_26EF3DBF0);
  return sub_26EE14D98(a2, a3 + *(v9 + 32), &qword_2806C7088, &unk_26EF3E330);
}

uint64_t sub_26EE5A2D4()
{
  v1 = sub_26EF387DC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  (*(v5 + 104))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277CE76B8]);
  v9 = v0;
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79F0, &qword_26EF3EE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C79F8, &qword_26EF3EE38);
  sub_26EE154C8(&qword_2806C7A00, &qword_2806C79F0, &qword_26EF3EE30);
  sub_26EE56DD0(&qword_2806C7A08, &qword_2806C79F8, &qword_26EF3EE38, sub_26EE56DA0);
  return sub_26EF3878C();
}

uint64_t sub_26EE5A4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EE5A608(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EE5A744()
{
  sub_26EE2E05C(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EE5A8A0();
    if (v1 <= 0x3F)
    {
      sub_26EE1F7D0();
      if (v2 <= 0x3F)
      {
        sub_26EE2E05C(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_26EE2E05C(319, &qword_2806C70B0, MEMORY[0x277D705D8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26EE5A8A0()
{
  if (!qword_2806C7A40)
  {
    type metadata accessor for VoiceBankingBatteryMonitor();
    sub_26EE5CE6C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor);
    v0 = sub_26EF39C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C7A40);
    }
  }
}

uint64_t sub_26EE5A978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A18, &qword_26EF3EE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE5AA04(void **a1)
{
  v2 = *(sub_26EF37FEC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EE5C5BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EE5AAF0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26EE5AAAC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26EE12ABC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26EE5AAF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26EF37FEC();
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26EF37FEC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26EE5AF24(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26EE5AC1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EE5AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_26EF37FEC();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v52 = &v38 - v15;
  result = MEMORY[0x28223BE20](v14, v16);
  v51 = &v38 - v19;
  v40 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v49 = *(v18 + 16);
    v50 = v18 + 16;
    v21 = *(v18 + 72);
    v22 = (v18 + 8);
    v46 = (v18 + 32);
    v47 = v20;
    v23 = v20 + v21 * (a3 - 1);
    v45 = -v21;
    v24 = a1 - a3;
    v39 = v21;
    v25 = v20 + v21 * a3;
LABEL_6:
    v43 = v23;
    v44 = a3;
    v41 = v25;
    v42 = v24;
    v27 = v23;
    while (1)
    {
      v28 = v49;
      v49(v51, v25, v8);
      v28(v52, v27, v8);
      v29 = sub_26EF37EFC();
      v31 = v30;
      if (sub_26EF37EFC() == v29 && v32 == v31)
      {

        v26 = *v22;
        (*v22)(v52, v8);
        result = (v26)(v51, v8);
LABEL_5:
        a3 = v44 + 1;
        v23 = v43 + v39;
        v24 = v42 - 1;
        v25 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return result;
        }

        goto LABEL_6;
      }

      v33 = sub_26EF3B82C();

      v34 = *v22;
      (*v22)(v52, v8);
      result = (v34)(v51, v8);
      if ((v33 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v35 = *v46;
      v36 = v48;
      (*v46)(v48, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v35)(v27, v36, v8);
      v27 += v45;
      v25 += v45;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EE5AF24(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v143 = a1;
  v9 = sub_26EF37FEC();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v147 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v158 = &v137 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v163 = &v137 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v162 = &v137 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v155 = &v137 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v154 = &v137 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v142 = &v137 - v31;
  result = MEMORY[0x28223BE20](v30, v32);
  v141 = &v137 - v35;
  v36 = *(a3 + 1);
  v152 = v34;
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_103:
    v40 = *v143;
    if (!*v143)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v152;
    if (result)
    {
LABEL_105:
      v164 = v38;
      v131 = *(v38 + 16);
      if (v131 >= 2)
      {
        while (1)
        {
          v132 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v133 = a3;
          v134 = *(v38 + 16 * v131);
          a3 = v38;
          v135 = *(v38 + 16 * (v131 - 1) + 32);
          v38 = *(v38 + 16 * (v131 - 1) + 40);
          sub_26EE5BAD4(&v132[*(v5 + 72) * v134], &v132[*(v5 + 72) * v135], &v132[*(v5 + 72) * v38], v40);
          if (v6)
          {
          }

          if (v38 < v134)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_26EE13990(a3);
          }

          if (v131 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v136 = &a3[16 * v131];
          *v136 = v134;
          *(v136 + 1) = v38;
          v164 = a3;
          result = sub_26EE5C168(v131 - 1);
          v38 = v164;
          v131 = *(v164 + 16);
          a3 = v133;
          if (v131 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_26EE13990(v38);
    v38 = result;
    goto LABEL_105;
  }

  v138 = a4;
  v37 = 0;
  v160 = v34 + 16;
  v161 = (v34 + 8);
  v159 = (v34 + 32);
  v38 = MEMORY[0x277D84F90];
  v144 = a3;
  while (1)
  {
    v39 = v37;
    v40 = v37 + 1;
    v146 = v37;
    if (v37 + 1 < v36)
    {
      v150 = v36;
      v139 = v38;
      v41 = *a3;
      v42 = *(v152 + 72);
      v5 = v37 + 1;
      v43 = &v41[v42 * v40];
      v44 = *(v152 + 16);
      v44(v141, v43, v9);
      v153 = v42;
      v149 = v44;
      v44(v142, &v41[v42 * v39], v9);
      v40 = sub_26EF37EFC();
      v46 = v45;
      v47 = sub_26EF37EFC();
      v140 = v6;
      if (v47 == v40 && v48 == v46)
      {
        LODWORD(v151) = 0;
      }

      else
      {
        LODWORD(v151) = sub_26EF3B82C();
      }

      v49 = *v161;
      (*v161)(v142, v9);
      v148 = v49;
      result = (v49)(v141, v9);
      v50 = (v146 + 2);
      v51 = v153 * (v146 + 2);
      v52 = &v41[v51];
      v53 = v153 * v5;
      v54 = &v41[v153 * v5];
      do
      {
        a3 = v50;
        v57 = v5;
        v6 = v53;
        v38 = v51;
        if (v50 >= v150)
        {
          break;
        }

        v156 = v5;
        v157 = v50;
        v58 = v149;
        (v149)(v154, v52, v9);
        v58(v155, v54, v9);
        v59 = sub_26EF37EFC();
        v61 = v60;
        if (sub_26EF37EFC() == v59 && v62 == v61)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_26EF3B82C();
        }

        a3 = v157;

        v40 = v148;
        v148(v155, v9);
        result = (v40)(v154, v9);
        v56 = v151 ^ v55;
        v50 = a3 + 1;
        v52 += v153;
        v54 += v153;
        v57 = v156;
        v5 = v156 + 1;
        v53 = v6 + v153;
        v51 = v38 + v153;
      }

      while ((v56 & 1) == 0);
      if (v151)
      {
        v39 = v146;
        if (a3 < v146)
        {
          goto LABEL_132;
        }

        if (v146 < a3)
        {
          v63 = v146 * v153;
          v64 = v146;
          do
          {
            if (v64 != v57)
            {
              v66 = *v144;
              if (!*v144)
              {
                goto LABEL_138;
              }

              v5 = v57;
              v157 = *v159;
              (v157)(v147, v66 + v63, v9);
              if (v63 < v6 || v66 + v63 >= (v66 + v38))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v63 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v157)(v66 + v6, v147, v9);
              v39 = v146;
              v57 = v5;
            }

            ++v64;
            v6 -= v153;
            v38 -= v153;
            v63 += v153;
          }

          while (v64 < v57--);
        }

        v40 = a3;
        v6 = v140;
        a3 = v144;
        v38 = v139;
      }

      else
      {
        v40 = a3;
        v6 = v140;
        a3 = v144;
        v38 = v139;
        v39 = v146;
      }
    }

    v67 = *(a3 + 1);
    if (v40 < v67)
    {
      if (__OFSUB__(v40, v39))
      {
        goto LABEL_131;
      }

      if (v40 - v39 < v138)
      {
        break;
      }
    }

LABEL_52:
    if (v40 < v39)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v38 + 16) + 1, 1, v38);
      v38 = result;
    }

    v85 = *(v38 + 16);
    v84 = *(v38 + 24);
    v86 = v85 + 1;
    if (v85 >= v84 >> 1)
    {
      result = sub_26EE12E30((v84 > 1), v85 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 16) = v86;
    v87 = v38 + 16 * v85;
    *(v87 + 32) = v39;
    *(v87 + 40) = v40;
    v88 = *v143;
    if (!*v143)
    {
      goto LABEL_140;
    }

    v153 = v40;
    if (v85)
    {
      while (1)
      {
        v40 = v86 - 1;
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v89 = *(v38 + 32);
          v90 = *(v38 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_72:
          if (v92)
          {
            goto LABEL_119;
          }

          v105 = (v38 + 16 * v86);
          v107 = *v105;
          v106 = v105[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_122;
          }

          v111 = (v38 + 32 + 16 * v40);
          v113 = *v111;
          v112 = v111[1];
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_126;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v40 = v86 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v115 = (v38 + 16 * v86);
        v117 = *v115;
        v116 = v115[1];
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_86:
        if (v110)
        {
          goto LABEL_121;
        }

        v118 = v38 + 16 * v40;
        v120 = *(v118 + 32);
        v119 = *(v118 + 40);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_124;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_93:
        v126 = v40 - 1;
        if (v40 - 1 >= v86)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v127 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v38;
        v128 = *(v38 + 32 + 16 * v126);
        v129 = *(v38 + 32 + 16 * v40);
        v38 = *(v38 + 32 + 16 * v40 + 8);
        sub_26EE5BAD4(&v127[*(v152 + 72) * v128], &v127[*(v152 + 72) * v129], &v127[*(v152 + 72) * v38], v88);
        if (v6)
        {
        }

        if (v38 < v128)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_26EE13990(a3);
        }

        if (v126 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v130 = &a3[16 * v126];
        *(v130 + 4) = v128;
        *(v130 + 5) = v38;
        v164 = a3;
        result = sub_26EE5C168(v40);
        v38 = v164;
        v86 = *(v164 + 16);
        a3 = v5;
        if (v86 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = v38 + 32 + 16 * v86;
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_117;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_118;
      }

      v100 = (v38 + 16 * v86);
      v102 = *v100;
      v101 = v100[1];
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_120;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_123;
      }

      if (v104 >= v96)
      {
        v122 = (v38 + 32 + 16 * v40);
        v124 = *v122;
        v123 = v122[1];
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_127;
        }

        if (v91 < v125)
        {
          v40 = v86 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v36 = *(a3 + 1);
    v37 = v153;
    if (v153 >= v36)
    {
      goto LABEL_103;
    }
  }

  v68 = (v39 + v138);
  if (__OFADD__(v39, v138))
  {
    goto LABEL_133;
  }

  if (v68 >= v67)
  {
    v68 = *(a3 + 1);
  }

  if (v68 < v39)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v40 == v68)
  {
    goto LABEL_52;
  }

  v139 = v38;
  v140 = v6;
  v69 = *a3;
  v70 = *(v152 + 72);
  v71 = *(v152 + 16);
  v72 = *a3 + v70 * (v40 - 1);
  v156 = -v70;
  v157 = v69;
  v73 = v39 - v40;
  v145 = v70;
  v74 = &v69[v40 * v70];
  v148 = v68;
LABEL_43:
  v153 = v40;
  v149 = v74;
  v150 = v73;
  v151 = v72;
  v76 = v72;
  while (1)
  {
    v71(v162, v74, v9);
    (v71)(v163, v76);
    v5 = sub_26EF37EFC();
    v78 = v77;
    if (sub_26EF37EFC() == v5 && v79 == v78)
    {

      v75 = *v161;
      (*v161)(v163, v9);
      v75(v162, v9);
LABEL_42:
      v40 = v153 + 1;
      v72 = v151 + v145;
      v73 = v150 - 1;
      v74 = &v149[v145];
      if ((v153 + 1) == v148)
      {
        v40 = v148;
        v6 = v140;
        a3 = v144;
        v38 = v139;
        v39 = v146;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_26EF3B82C();

    v80 = *v161;
    (*v161)(v163, v9);
    result = (v80)(v162, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v157)
    {
      break;
    }

    v81 = v158;
    v5 = v159;
    v82 = *v159;
    (*v159)(v158, v74, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v82)(v76, v81, v9);
    v76 += v156;
    v74 += v156;
    if (__CFADD__(v73++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_26EE5BAD4(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v76 = sub_26EF37FEC();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v76, v10);
  v73 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v72 = &v64 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v75 = &v64 - v18;
  result = MEMORY[0x28223BE20](v17, v19);
  v74 = &v64 - v21;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_70;
  }

  v24 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_71;
  }

  v25 = (a2 - a1) / v23;
  v79 = a1;
  v78 = a4;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v27;
    if (v27 < 1)
    {
      v49 = a4 + v27;
    }

    else
    {
      v68 = a4;
      v69 = (v8 + 16);
      v67 = (v8 + 8);
      v47 = -v23;
      v48 = a4 + v27;
      v49 = v46;
      v70 = v47;
      while (2)
      {
        while (1)
        {
          v65 = v49;
          v50 = (a2 + v47);
          v74 = (a2 + v47);
          v71 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v79 = a2;
              v77 = v65;
              goto LABEL_68;
            }

            v52 = a3;
            v66 = v49;
            v53 = *v69;
            v75 = (v48 + v47);
            v54 = v76;
            (v53)(v72);
            (v53)(v73, v50, v54);
            v55 = sub_26EF37EFC();
            v57 = v56;
            if (sub_26EF37EFC() != v55)
            {
              goto LABEL_51;
            }

            if (v58 == v57)
            {
              v59 = 0;
            }

            else
            {
LABEL_51:
              v59 = sub_26EF3B82C();
            }

            v47 = v70;
            a3 = v70 + v52;
            v60 = *v67;
            v61 = v76;
            (*v67)(v73, v76);
            v60(v72, v61);
            if (v59)
            {
              break;
            }

            v62 = v75;
            v49 = v75;
            if (v52 < v48 || a3 >= v48)
            {
              swift_arrayInitWithTakeFrontToBack();
              v50 = v74;
            }

            else
            {
              v50 = v74;
              if (v52 != v48)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v48 = v49;
            v51 = v62 > v68;
            a2 = v71;
            if (!v51)
            {
              goto LABEL_66;
            }
          }

          if (v52 < v71 || a3 >= v71)
          {
            break;
          }

          a2 = v74;
          v63 = v68;
          v49 = v66;
          if (v52 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v48 <= v63)
          {
            goto LABEL_66;
          }
        }

        a2 = v74;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v66;
        if (v48 > v68)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v79 = a2;
    v77 = v49;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v73 = (a4 + v26);
    v77 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = *(v8 + 16);
      v71 = v23;
      v72 = (v8 + 16);
      v69 = (v8 + 8);
      v70 = v29;
      do
      {
        v30 = a3;
        v31 = a2;
        v32 = a2;
        v33 = v76;
        v34 = v70;
        v70(v74, v32, v76);
        v34(v75, a4, v33);
        v35 = sub_26EF37EFC();
        v37 = v36;
        if (sub_26EF37EFC() == v35 && v38 == v37)
        {

          v39 = *v69;
          v40 = v76;
          (*v69)(v75, v76);
          v39(v74, v40);
        }

        else
        {
          v41 = sub_26EF3B82C();

          v42 = *v69;
          v43 = v76;
          (*v69)(v75, v76);
          v42(v74, v43);
          if (v41)
          {
            a2 = v31 + v71;
            a3 = v30;
            if (a1 < v31 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v45 = v71;
            goto LABEL_37;
          }
        }

        v44 = a4;
        v45 = v71;
        a4 += v71;
        a2 = v31;
        a3 = v30;
        if (a1 < v44 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v44)
        {
          swift_arrayInitWithTakeBackToFront();
          v78 = a4;
          goto LABEL_37;
        }

        v78 = a4;
LABEL_37:
        a1 += v45;
        v79 = a1;
      }

      while (a4 < v73 && a2 < a3);
    }
  }

LABEL_68:
  sub_26EE5C1F4(&v79, &v78, &v77);
  return 1;
}

uint64_t sub_26EE5C168(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26EE13990(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26EE5C1F4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26EF37FEC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_26EE5C2D8(size_t a1, int64_t a2, char a3)
{
  result = sub_26EE5C2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26EE5C2F8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A90, &unk_26EF3EF40);
  v10 = *(sub_26EF37FEC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26EF37FEC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26EE5C4F4(uint64_t a1)
{
  v2 = sub_26EF396EC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return MEMORY[0x274381D30](v6);
}

uint64_t sub_26EE5C5D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceInformationSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE5C634()
{
  v1 = type metadata accessor for VoiceInformationSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v7 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v8 = *(v0 + v3 + 16);

  v9 = *(v1 + 28);
  if (!(*(v5 + 48))(v0 + v3 + v9, 1, v4))
  {
    (*(v5 + 8))(v7 + v9, v4);
  }

  v10 = *(v1 + 32);
  v11 = sub_26EF38DBC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v2 | v6;
  v14 = (v3 + v17 + v6) & ~v6;
  (*(v5 + 8))(v0 + v14, v4);

  return MEMORY[0x2821FE8E8](v0, v14 + v16, v13 | 7);
}

uint64_t sub_26EE5C86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceInformationSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE5C8D0()
{
  v1 = *(type metadata accessor for VoiceInformationSection() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26EF38AAC() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26EE598E0(v0 + v2, v5);
}

uint64_t sub_26EE5C99C()
{
  v1 = type metadata accessor for VoiceInformationSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v9 = *(v0 + v3 + 16);

  v10 = *(v1 + 28);
  if (!(*(v5 + 48))(v0 + v3 + v10, 1, v4))
  {
    (*(v5 + 8))(v8 + v10, v4);
  }

  v11 = *(v1 + 32);
  v12 = sub_26EF38DBC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v8 + v11, v12);
  }

  v14 = v2 | v6;
  v15 = (v3 + v18 + v6) & ~v6;
  (*(v5 + 8))(v0 + v15, v4);

  return MEMORY[0x2821FE8E8](v0, v15 + v17, v14 | 7);
}

uint64_t sub_26EE5CBDC()
{
  v2 = *(type metadata accessor for VoiceInformationSection() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EE59B74(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EE5CD08()
{
  v1 = *(v0 + 16);
  v2 = sub_26EF37EFC();
  v4 = v3;
  if (v2 == sub_26EF37EFC() && v4 == v5)
  {

    v8 = 0;
  }

  else
  {
    v7 = sub_26EF3B82C();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

unint64_t sub_26EE5CDBC()
{
  result = qword_2806C7AC8;
  if (!qword_2806C7AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7AC0, &qword_26EF3EF88);
    sub_26EE154C8(&qword_2806C7AD0, &qword_2806C7AD8, &qword_26EF3EF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7AC8);
  }

  return result;
}

uint64_t sub_26EE5CE6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EE5CEB4(uint64_t a1)
{
  v2 = type metadata accessor for RenameVoiceView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE5CF34()
{
  v0 = sub_26EF3A34C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VoiceBankingNavigationModel();
  v5 = sub_26EE43684();
  sub_26EE43690();
  return VoiceBankingNavigationModel.__allocating_init(itemPath:columnVisibility:)(v5, v4);
}

id VBManagerView.init(authenticationCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *sub_26EED2EB8();
  type metadata accessor for VoiceBankingSession();
  v7 = v6;
  sub_26EF3AAEC();
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = sub_26EE5CF34;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = sub_26EE5CFC8;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = sub_26EE5CFF4;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = sub_26EE5D020;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AF0, &unk_26EF3EFB0);
  sub_26EF3AAEC();
  *(a3 + 112) = v10;
  *(a3 + 120) = v11;
  v8 = [objc_opt_self() sharedInstance];
  [v8 allowAppUsage];

  sub_26EF3AAEC();
  *(a3 + 128) = v10;
  *(a3 + 136) = v11;
  result = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  *(a3 + 144) = result;
  *(a3 + 152) = a1;
  *(a3 + 168) = sub_26EE60C40;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 160) = a2;
  return result;
}

uint64_t VBManagerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v137 = a1;
  v2 = v1[9];
  v155 = v1[8];
  v156 = v2;
  v157[0] = v1[10];
  *(v157 + 9) = *(v1 + 169);
  v3 = v1[5];
  v151 = v1[4];
  v152 = v3;
  v4 = v1[7];
  v153 = v1[6];
  v154 = v4;
  v5 = v1[1];
  v147 = *v1;
  v148 = v5;
  v6 = v1[3];
  v149 = v1[2];
  v150 = v6;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AF8, &qword_26EF3EFC0);
  v7 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135, v8);
  v136 = &v118 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B00, &qword_26EF3EFC8);
  v133 = *(v10 - 8);
  v134 = v10;
  v11 = *(v133 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v132 = &v118 - v13;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B08, &qword_26EF3EFD0);
  v14 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130, v15);
  v131 = &v118 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B10, &qword_26EF3EFD8);
  v17 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126, v18);
  v129 = &v118 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B18, &qword_26EF3EFE0);
  v123 = *(v20 - 8);
  v124 = v20;
  v21 = *(v123 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v122 = &v118 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B20, &qword_26EF3EFE8);
  v25 = *(v24 - 8);
  v121 = (v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24 - 8, v27);
  v139 = &v118 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B28, &qword_26EF3EFF0);
  v30 = *(v29 - 8);
  v119 = v29;
  v120 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v138 = &v118 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B30, &qword_26EF3EFF8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v118 - v37;
  sub_26EE5E004(&v147, &v118 - v37);
  v140 = *(&v148 + 1);
  v141 = v148;
  v39 = v149;
  v40 = type metadata accessor for VoiceBankingNavigationModel();
  v41 = sub_26EE67148(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  sub_26EF3976C();
  v42 = &v38[*(v34 + 52)];
  VoiceBankingNavigationModel.$presentManagerRootView.getter();

  v43 = swift_allocObject();
  v44 = v154;
  v43[7] = v153;
  v43[8] = v44;
  v45 = v152;
  v43[5] = v151;
  v43[6] = v45;
  *(v43 + 185) = *(v157 + 9);
  v46 = v157[0];
  v43[10] = v156;
  v43[11] = v46;
  v43[9] = v155;
  v47 = v148;
  v43[1] = v147;
  v43[2] = v47;
  v48 = v150;
  v43[3] = v149;
  v43[4] = v48;
  v49 = &v38[*(v34 + 56)];
  *v49 = sub_26EE60C80;
  v49[1] = v43;
  v143 = v155;
  sub_26EE60C88(&v147, &v144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  v50 = sub_26EE154C8(&qword_2806C7B38, &qword_2806C7B30, &qword_26EF3EFF8);
  sub_26EF3A8FC();
  sub_26EE14578(v38, &qword_2806C7B30, &qword_26EF3EFF8);
  v127 = v39;
  v128 = v40;
  sub_26EF3977C();
  swift_getKeyPath();
  v125 = v41;
  sub_26EF399BC();

  type metadata accessor for RootView();
  *&v144 = v34;
  *(&v144 + 1) = MEMORY[0x277D839B0];
  v145 = v50;
  v146 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_26EE67148(&qword_2806C7B40, type metadata accessor for RootView);
  v51 = v139;
  v52 = v119;
  v53 = v138;
  sub_26EF3A8BC();

  (*(v120 + 8))(v53, v52);
  v143 = v147;
  v144 = v147;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B48, &qword_26EF41080);
  sub_26EF3AAFC();
  v55 = v142;
  v56 = VoiceBankingSession.dataStoreEventPublisher.getter();

  v57 = swift_allocObject();
  v58 = v156;
  v57[9] = v155;
  v57[10] = v58;
  v57[11] = v157[0];
  *(v57 + 185) = *(v157 + 9);
  v59 = v152;
  v57[5] = v151;
  v57[6] = v59;
  v60 = v154;
  v57[7] = v153;
  v57[8] = v60;
  v61 = v148;
  v57[1] = v147;
  v57[2] = v61;
  v62 = v150;
  v57[3] = v149;
  v57[4] = v62;
  v63 = v121;
  *(v51 + *(v121 + 15)) = v56;
  v64 = (v51 + *(v63 + 16));
  *v64 = sub_26EE60CC0;
  v64[1] = v57;
  sub_26EF3B2DC();
  sub_26EE60C88(&v147, &v144);
  sub_26EE60C88(&v147, &v144);
  v65 = sub_26EF3B2CC();
  v66 = swift_allocObject();
  v67 = MEMORY[0x277D85700];
  *(v66 + 16) = v65;
  *(v66 + 24) = v67;
  v68 = v156;
  *(v66 + 160) = v155;
  *(v66 + 176) = v68;
  *(v66 + 192) = v157[0];
  *(v66 + 201) = *(v157 + 9);
  v69 = v152;
  *(v66 + 96) = v151;
  *(v66 + 112) = v69;
  v70 = v154;
  *(v66 + 128) = v153;
  *(v66 + 144) = v70;
  v71 = v148;
  *(v66 + 32) = v147;
  *(v66 + 48) = v71;
  v72 = v150;
  *(v66 + 64) = v149;
  *(v66 + 80) = v72;
  v73 = sub_26EF3B30C();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73, v76);
  v77 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = &v118 - v77;
  sub_26EF3B2EC();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v120 = sub_26EF39A1C();
    v121 = &v118;
    v119 = *(v120 - 8);
    v79 = *(v119 + 64);
    MEMORY[0x28223BE20](v120, v80);
    v118 = &v118 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v144 = 0;
    *(&v144 + 1) = 0xE000000000000000;
    sub_26EF3B70C();

    *&v144 = 0xD00000000000003BLL;
    *(&v144 + 1) = 0x800000026EF45790;
    *&v142 = 99;
    v82 = sub_26EF3B7FC();
    MEMORY[0x274383240](v82);

    v138 = v54;
    MEMORY[0x28223BE20](v83, v84);
    (*(v74 + 16))(&v118 - v77, &v118 - v77, v73);
    v85 = v118;
    sub_26EF39A0C();
    (*(v74 + 8))(v78, v73);
    v86 = v122;
    sub_26EE14D98(v139, v122, &qword_2806C7B20, &qword_26EF3EFE8);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B50, &qword_26EF3F040);
    (*(v119 + 32))(v86 + *(v87 + 36), v85, v120);
  }

  else
  {
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B78, &qword_26EF3F050);
    v86 = v122;
    v89 = (v122 + *(v88 + 36));
    v90 = sub_26EF3990C();
    (*(v74 + 32))(&v89[*(v90 + 20)], &v118 - v77, v73);
    *v89 = &unk_26EF3F038;
    *(v89 + 1) = v66;
    sub_26EE14D98(v139, v86, &qword_2806C7B20, &qword_26EF3EFE8);
  }

  v91 = swift_allocObject();
  v92 = v156;
  v91[9] = v155;
  v91[10] = v92;
  v91[11] = v157[0];
  *(v91 + 185) = *(v157 + 9);
  v93 = v152;
  v91[5] = v151;
  v91[6] = v93;
  v94 = v154;
  v91[7] = v153;
  v91[8] = v94;
  v95 = v148;
  v91[1] = v147;
  v91[2] = v95;
  v96 = v150;
  v91[3] = v149;
  v91[4] = v96;
  v97 = v129;
  (*(v123 + 32))(v129, v86, v124);
  v98 = (v97 + *(v126 + 36));
  *v98 = sub_26EE60D58;
  v98[1] = v91;
  v98[2] = 0;
  v98[3] = 0;
  v99 = swift_allocObject();
  v100 = v156;
  v99[9] = v155;
  v99[10] = v100;
  v99[11] = v157[0];
  *(v99 + 185) = *(v157 + 9);
  v101 = v152;
  v99[5] = v151;
  v99[6] = v101;
  v102 = v154;
  v99[7] = v153;
  v99[8] = v102;
  v103 = v148;
  v99[1] = v147;
  v99[2] = v103;
  v104 = v150;
  v99[3] = v149;
  v99[4] = v104;
  v105 = v131;
  sub_26EE14D98(v97, v131, &qword_2806C7B10, &qword_26EF3EFD8);
  v106 = (v105 + *(v130 + 36));
  *v106 = 0;
  v106[1] = 0;
  v106[2] = sub_26EE60D80;
  v106[3] = v99;
  v142 = v143;
  sub_26EE60C88(&v147, &v144);
  sub_26EE60C88(&v147, &v144);
  sub_26EF3AAFC();
  v107 = v144;
  type metadata accessor for VoiceBankingSession();
  sub_26EE60DA8();
  sub_26EE67148(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  v108 = v132;
  sub_26EF3A67C();

  sub_26EE14578(v105, &qword_2806C7B08, &qword_26EF3EFD0);
  v109 = sub_26EF3976C();
  v110 = sub_26EF394AC();
  v111 = v136;
  (*(v133 + 32))(v136, v108, v134);
  v112 = (v111 + *(v135 + 36));
  *v112 = v110;
  v112[1] = v109;
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE67148(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  v113 = sub_26EF3976C();
  v114 = sub_26EF394AC();
  v115 = v137;
  sub_26EE14D98(v111, v137, &qword_2806C7AF8, &qword_26EF3EFC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B70, &qword_26EF3F048);
  v117 = (v115 + *(result + 36));
  *v117 = v114;
  v117[1] = v113;
  return result;
}

uint64_t sub_26EE5E004@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a1;
  v75 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CB8, &qword_26EF3F430);
  v71 = *(v72 - 1);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v72, v4);
  v69 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D98, &qword_26EF3F518);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v83 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v78 = &v68 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DA0, &qword_26EF3F520);
  v73 = *(v74 - 8);
  v13 = *(v73 + 64);
  v15 = MEMORY[0x28223BE20](v74, v14);
  v87 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v85 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DA8, &qword_26EF3F528);
  v81 = *(v19 - 8);
  v82 = v19;
  v20 = v81[8];
  v22 = MEMORY[0x28223BE20](v19, v21);
  v86 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v84 = &v68 - v25;
  v26 = sub_26EF387DC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DB0, &qword_26EF3F530);
  v79 = *(v32 - 8);
  v80 = v32;
  v33 = v79[8];
  v35 = MEMORY[0x28223BE20](v32, v34);
  v77 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v68 - v38;
  v40 = *MEMORY[0x277CE76C8];
  v41 = *(v27 + 104);
  v41(v31, v40, v26);
  v90 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DB8, &qword_26EF3F538);
  sub_26EE154C8(&qword_2806C7DC0, &qword_2806C7DB8, &qword_26EF3F538);
  v76 = v39;
  sub_26EF3877C();
  v41(v31, v40, v26);
  v42 = v70;
  v89 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DC8, &qword_26EF3F540);
  sub_26EE154C8(&qword_2806C7DD0, &qword_2806C7DC8, &qword_26EF3F540);
  sub_26EF3879C();
  v41(v31, v40, v26);
  v88 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CA8, &qword_26EF3F428);
  sub_26EE65F70();
  sub_26EF3879C();
  if (TTSVBIsInternalUIBuild())
  {
    v43 = sub_26EF39EAC();
    MEMORY[0x28223BE20](v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C50, &unk_26EF3F0F0);
    sub_26EE154C8(&qword_2806C7C58, &qword_2806C7C50, &unk_26EF3F0F0);
    v45 = v69;
    sub_26EF3AD2C();
    v46 = v71;
    v47 = v78;
    v48 = v72;
    (*(v71 + 32))(v78, v45, v72);
    v49 = 0;
    v50 = v48;
    v51 = v46;
  }

  else
  {
    v49 = 1;
    v47 = v78;
    v50 = v72;
    v51 = v71;
  }

  (*(v51 + 56))(v47, v49, 1, v50);
  v52 = v80;
  v53 = v79[2];
  v54 = v77;
  v53(v77, v76, v80);
  v72 = v81[2];
  (v72)(v86, v84, v82);
  v55 = v73;
  v56 = *(v73 + 16);
  v57 = v74;
  v56(v87, v85, v74);
  sub_26EE13B88(v47, v83, &qword_2806C7D98, &qword_26EF3F518);
  v58 = v75;
  v53(v75, v54, v52);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DD8, &qword_26EF3F548);
  v60 = v82;
  (v72)(&v58[v59[12]], v86, v82);
  v56(&v58[v59[16]], v87, v57);
  v61 = v83;
  sub_26EE13B88(v83, &v58[v59[20]], &qword_2806C7D98, &qword_26EF3F518);
  sub_26EE14578(v78, &qword_2806C7D98, &qword_26EF3F518);
  v62 = *(v55 + 8);
  v62(v85, v57);
  v63 = v81[1];
  v64 = v60;
  v63(v84, v60);
  v65 = v80;
  v66 = v79[1];
  v66(v76, v80);
  sub_26EE14578(v61, &qword_2806C7D98, &qword_26EF3F518);
  v62(v87, v57);
  v63(v86, v64);
  return (v66)(v77, v65);
}

uint64_t sub_26EE5E90C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_26EF387DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C98, &qword_26EF3F420);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C90, &qword_26EF3F418);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v36 - v25;
  v27 = a1[9];
  v48 = a1[8];
  v49 = v27;
  v50[0] = a1[10];
  *(v50 + 9) = *(a1 + 169);
  v28 = a1[5];
  v44 = a1[4];
  v45 = v28;
  v29 = a1[7];
  v46 = a1[6];
  v47 = v29;
  v30 = a1[1];
  v40 = *a1;
  v41 = v30;
  v31 = a1[3];
  v42 = a1[2];
  v43 = v31;
  sub_26EE5ECA4(&v36 - v25);
  (*(v4 + 104))(v8, *MEMORY[0x277CE76C0], v3);
  v39 = a1;
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  sub_26EE63944();
  sub_26EF3878C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C00, &qword_26EF3F0C0);
  (*(*(v32 - 8) + 56))(v17, 0, 1, v32);
  sub_26EE67304(v26, v23);
  sub_26EE13B88(v17, v14, &qword_2806C7C98, &qword_26EF3F420);
  v33 = v37;
  sub_26EE67304(v23, v37);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DE8, &qword_26EF3F558);
  sub_26EE13B88(v14, v33 + *(v34 + 48), &qword_2806C7C98, &qword_26EF3F420);
  sub_26EE14578(v17, &qword_2806C7C98, &qword_26EF3F420);
  sub_26EE14578(v26, &qword_2806C7C90, &qword_26EF3F418);
  sub_26EE14578(v14, &qword_2806C7C98, &qword_26EF3F420);
  return sub_26EE14578(v23, &qword_2806C7C90, &qword_26EF3F418);
}

uint64_t sub_26EE5ECA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B80, &qword_26EF3F058);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B88, &qword_26EF3F060);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v28 - v12;
  v14 = v1[9];
  v38 = v1[8];
  v39 = v14;
  v40[0] = v1[10];
  *(v40 + 9) = *(v1 + 169);
  v15 = v1[5];
  v34 = v1[4];
  v35 = v15;
  v16 = v1[7];
  v36 = v1[6];
  v37 = v16;
  v17 = v1[1];
  v30 = *v1;
  v31 = v17;
  v18 = v1[3];
  v32 = v1[2];
  v33 = v18;
  v19 = *(sub_26EE60F30() + 16);

  if (v19)
  {
    v28[1] = v3;
    v28[2] = a1;
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
    sub_26EF3976C();
    v20 = sub_26EEA65A4();

    v29[24] = v20;
    v28[0] = swift_getKeyPath();
    v21 = swift_allocObject();
    v22 = v39;
    v21[9] = v38;
    v21[10] = v22;
    v21[11] = v40[0];
    *(v21 + 185) = *(v40 + 9);
    v23 = v35;
    v21[5] = v34;
    v21[6] = v23;
    v24 = v37;
    v21[7] = v36;
    v21[8] = v24;
    v25 = v31;
    v21[1] = v30;
    v21[2] = v25;
    v26 = v33;
    v21[3] = v32;
    v21[4] = v26;
    sub_26EE60C88(&v30, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BE8, &qword_26EF3F0B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BA0, &qword_26EF3F068);
    sub_26EE154C8(&qword_2806C7BF0, &qword_2806C7BE8, &qword_26EF3F0B8);
    sub_26EE67148(&qword_2806C7BF8, type metadata accessor for TTSVBVoicesByLocaleContainer);
    sub_26EE612D8();
    sub_26EF3ACEC();
    (*(v9 + 16))(v7, v13, v8);
    swift_storeEnumTagMultiPayload();
    sub_26EE6139C(&qword_2806C7B90, &qword_2806C7B88, &qword_26EF3F060, sub_26EE612D8);
    sub_26EF3A06C();
    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_26EE6139C(&qword_2806C7B90, &qword_2806C7B88, &qword_26EF3F060, sub_26EE612D8);
    return sub_26EF3A06C();
  }
}

uint64_t sub_26EE5F0DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = sub_26EF3875C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v7 = MEMORY[0x28223BE20](v3, v6);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  sub_26EE5F3A4();
  v20 = sub_26EE17094();
  v21._object = 0x800000026EF45840;
  v22 = v20 & 1;
  v21._countAndFlagsBits = 0xD000000000000012;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v21, v22, 0);
  v23 = sub_26EE17094();
  v24._countAndFlagsBits = 0xD000000000000019;
  v24._object = 0x800000026EF45860;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v24, v23 & 1, 0);
  v34 = *(a1 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  sub_26EF3876C();
  v25 = v4[2];
  v25(v12, v19, v3);
  v26 = v32;
  v25(v32, v16, v3);
  v27 = v33;
  v25(v33, v12, v3);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DE0, &qword_26EF3F550);
  v25(&v27[*(v28 + 48)], v26, v3);
  v29 = v4[1];
  v29(v16, v3);
  v29(v19, v3);
  v29(v26, v3);
  return (v29)(v12, v3);
}

uint64_t sub_26EE5F3A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  type metadata accessor for VBCloudSyncModel();
  sub_26EE67148(&qword_2806C7C18, type metadata accessor for VBCloudSyncModel);
  sub_26EF3976C();
  v4 = sub_26EE9BFBC();

  if (v4)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000026;
  }

  if (v4)
  {
    v6 = "VB_USE_ICLOUD_TITLE";
  }

  else
  {
    v6 = "kingUI/VBManagerView.swift:";
  }

  v7 = sub_26EE17094();
  v8._object = (v6 | 0x8000000000000000);
  v9 = v7 & 1;
  v8._countAndFlagsBits = v5;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v8, v9, 0);

  v10 = sub_26EE17094();
  v11._object = 0x800000026EF45800;
  v12 = v10 & 1;
  v11._countAndFlagsBits = 0xD000000000000013;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v11, v12, 0);
  sub_26EF3976C();
  sub_26EE9BB94();

  sub_26EF3976C();
  sub_26EE9BFBC();

  return sub_26EF3876C();
}

uint64_t sub_26EE5F580@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C20, &qword_26EF3F0D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v32 - v7;
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1[7];
  v46 = v1[8];
  v47 = v9;
  v48[0] = v10;
  *(v48 + 9) = *(v1 + 169);
  v12 = v1[5];
  v42 = v1[4];
  v43 = v12;
  v13 = v1[7];
  v44 = v1[6];
  v45 = v13;
  v14 = v1[1];
  v38 = *v1;
  v39 = v14;
  v15 = v1[3];
  v40 = v1[2];
  v41 = v15;
  v35 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C28, &qword_26EF3F0D8);
  sub_26EF3AAFC();
  v16 = *(v32._countAndFlagsBits + 16);

  if (v16)
  {
    MEMORY[0x28223BE20](v17, v18);
    v19 = sub_26EE17094();
    v20._countAndFlagsBits = 0xD00000000000001BLL;
    v20._object = 0x800000026EF45880;
    v35 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v20, v19 & 1, 0);
    sub_26EE12538();
    v35._countAndFlagsBits = sub_26EF3A5DC();
    v35._object = v21;
    v36 = v22 & 1;
    v37 = v23;
    v24 = sub_26EE17094();
    v25._object = 0x800000026EF458A0;
    v26 = v24 & 1;
    v25._countAndFlagsBits = 0xD000000000000016;
    v32 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v25, v26, 0);
    v32._countAndFlagsBits = sub_26EF3A5DC();
    v32._object = v27;
    v33 = v28 & 1;
    v34 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C30, &qword_26EF3F0E0);
    sub_26EE63B50();
    sub_26EF3AD5C();
    (*(v4 + 32))(a1, v8, v3);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  return (*(v4 + 56))(a1, v30, 1, v3);
}

uint64_t sub_26EE5F84C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_26EF3883C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_26EE27DAC();
  (*(v5 + 16))(v9, v11, v4);
  v12 = sub_26EF3881C();
  v13 = sub_26EF3B43C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_26EE01000, v12, v13, "VBManagerView: onChange presentManagerRootView=%{BOOL}d. Will update timer.", v14, 8u);
    MEMORY[0x2743842A0](v14, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  sub_26EEA7B10(v10 ^ 1);
}

void sub_26EE5FA30(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [objc_opt_self() sharedInstance];
  [v3 setAllowAppUsage_];
}

uint64_t sub_26EE5FAA4(uint64_t a1, _OWORD *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v28[-v6];
  v8 = sub_26EF3883C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_26EF3915C();
  if (result)
  {
    v15 = sub_26EE27DAC();
    (*(v9 + 16))(v13, v15, v8);
    v16 = sub_26EF3881C();
    v17 = sub_26EF3B43C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26EE01000, v16, v17, "VBManagerView: Got db event, voices did change. Will refresh voices and models", v18, 2u);
      MEMORY[0x2743842A0](v18, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    v19 = sub_26EF3B30C();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    sub_26EF3B2DC();
    sub_26EE60C88(a2, v28);
    v20 = sub_26EF3B2CC();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v20;
    *(v21 + 24) = v22;
    v23 = a2[9];
    *(v21 + 160) = a2[8];
    *(v21 + 176) = v23;
    *(v21 + 192) = a2[10];
    *(v21 + 201) = *(a2 + 169);
    v24 = a2[5];
    *(v21 + 96) = a2[4];
    *(v21 + 112) = v24;
    v25 = a2[7];
    *(v21 + 128) = a2[6];
    *(v21 + 144) = v25;
    v26 = a2[1];
    *(v21 + 32) = *a2;
    *(v21 + 48) = v26;
    v27 = a2[3];
    *(v21 + 64) = a2[2];
    *(v21 + 80) = v27;
    sub_26EE2C388(0, 0, v7, &unk_26EF3F510, v21);
  }

  return result;
}

uint64_t sub_26EE5FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EE5FDE4, v6, v5);
}

uint64_t sub_26EE5FDE4()
{
  v1 = v0[2];
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 104);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  v0[6] = sub_26EF3976C();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_26EE5FEE8;

  return sub_26EEA69C4();
}

uint64_t sub_26EE5FEE8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26EE6002C, v5, v4);
}

uint64_t sub_26EE6002C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EE6008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a3;
  v4 = sub_26EF38A2C();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_26EF3883C();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_26EF3B2DC();
  v3[16] = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  v3[17] = v11;
  v3[18] = v10;

  return MEMORY[0x2822009F8](sub_26EE601E8, v11, v10);
}

uint64_t sub_26EE601E8()
{
  *(v0 + 16) = **(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B48, &qword_26EF41080);
  sub_26EF3AAFC();
  *(v0 + 152) = *(v0 + 48);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_26EE602AC;

  return VoiceBankingSession.loadStores()();
}

uint64_t sub_26EE602AC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = *(v2 + 144);
    v6 = sub_26EE607AC;
  }

  else
  {

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);
    v6 = sub_26EE603C8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EE603C8()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = sub_26EE27DAC();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B43C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "VBManagerView: body loaded task. Will refresh voices and models", v7, 2u);
    MEMORY[0x2743842A0](v7, -1, -1);
  }

  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[8];

  (*(v10 + 8))(v8, v9);
  v13 = *(v11 + 88);
  v12 = *(v11 + 96);
  v14 = *(v11 + 104);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  v0[22] = sub_26EF3976C();
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_26EE60588;

  return sub_26EEA69C4();
}

uint64_t sub_26EE60588()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26EE606CC, v5, v4);
}

uint64_t sub_26EE606CC()
{
  v1 = *(v0 + 128);

  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  sub_26EF3B15C();
  v6 = sub_26EF38B8C();

  *(v0 + 32) = *(v5 + 112);
  *(v0 + 56) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C28, &qword_26EF3F0D8);
  sub_26EF3AB0C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26EE607AC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);

  sub_26EF3934C();
  v5 = v1;
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B45C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 168);
  if (v8)
  {
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v0 + 72);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    (*(v11 + 104))(v10, *MEMORY[0x277D704D8], v12);
    sub_26EF38A4C();
    sub_26EE67148(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v11 + 8))(v10, v12);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26EE01000, v6, v7, "%@", v13, 0xCu);
    sub_26EE14578(v14, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v14, -1, -1);
    MEMORY[0x2743842A0](v13, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 88);
  v19 = *(v0 + 64);
  sub_26EF3B15C();
  v20 = sub_26EF38B8C();

  *(v0 + 32) = *(v19 + 112);
  *(v0 + 56) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C28, &qword_26EF3F0D8);
  sub_26EF3AB0C();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_26EE60A64(uint64_t a1, const char *a2, char a3)
{
  v6 = sub_26EF3883C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26EE27DAC();
  (*(v7 + 16))(v11, v12, v6);
  v13 = sub_26EF3881C();
  v14 = sub_26EF3B47C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26EE01000, v13, v14, a2, v15, 2u);
    MEMORY[0x2743842A0](v15, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  sub_26EEA7B10(a3 & 1);
}

uint64_t sub_26EE60C70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t sub_26EE60CC8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE6008C(v2, v3, v0 + 32);
}

unint64_t sub_26EE60DA8()
{
  result = qword_2806C7B58;
  if (!qword_2806C7B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B08, &qword_26EF3EFD0);
    sub_26EE60E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7B58);
  }

  return result;
}

unint64_t sub_26EE60E34()
{
  result = qword_2806C7B60;
  if (!qword_2806C7B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B10, &qword_26EF3EFD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B20, &qword_26EF3EFE8);
    sub_26EE154C8(&qword_2806C7B68, &qword_2806C7B20, &qword_26EF3EFE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7B60);
  }

  return result;
}

uint64_t sub_26EE60F30()
{
  v31 = sub_26EF38AAC();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v31, v3);
  v34 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - v7;
  v9 = v0[9];
  v36[8] = v0[8];
  v36[9] = v9;
  *v37 = v0[10];
  *&v37[9] = *(v0 + 169);
  v10 = v0[5];
  v36[4] = v0[4];
  v36[5] = v10;
  v11 = v0[7];
  v36[6] = v0[6];
  v36[7] = v11;
  v12 = v0[1];
  v36[0] = *v0;
  v36[1] = v12;
  v13 = v0[3];
  v36[2] = v0[2];
  v36[3] = v13;
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  v14 = sub_26EEA652C();

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v33 = v1 + 16;
    v29 = (v1 + 8);
    v32 = (v1 + 32);
    v17 = MEMORY[0x277D84F90];
    v18 = v31;
    v30 = v14;
    v28 = v15;
    while (v16 < *(v14 + 16))
    {
      v19 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v20 = *(v1 + 72);
      (*(v1 + 16))(v8, v14 + v19 + v20 * v16, v18);
      if (sub_26EE64A98(v8, v36))
      {
        v21 = *v32;
        (*v32)(v34, v8, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26EE659E8(0, *(v17 + 16) + 1, 1);
          v17 = v35;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_26EE659E8(v23 > 1, v24 + 1, 1);
          v17 = v35;
        }

        *(v17 + 16) = v24 + 1;
        v25 = v17 + v19 + v24 * v20;
        v18 = v31;
        v21(v25, v34, v31);
        v14 = v30;
        v15 = v28;
      }

      else
      {
        (*v29)(v8, v18);
      }

      if (v15 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v29)(v8, v18);

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_13:

    return v17;
  }

  return result;
}

unint64_t sub_26EE612D8()
{
  result = qword_2806C7B98;
  if (!qword_2806C7B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7BA0, &qword_26EF3F068);
    sub_26EE6139C(&qword_2806C7BA8, &qword_2806C7BB0, &qword_26EF3F070, sub_26EE61418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7B98);
  }

  return result;
}

uint64_t sub_26EE6139C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE61418()
{
  result = qword_2806C7BB8;
  if (!qword_2806C7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7BC0, &qword_26EF3F078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7BC8, &qword_26EF3F080);
    sub_26EF39B6C();
    sub_26EE61528();
    sub_26EE67148(&qword_2806C6BB8, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7BB8);
  }

  return result;
}

unint64_t sub_26EE61528()
{
  result = qword_2806C7BD0;
  if (!qword_2806C7BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7BC8, &qword_26EF3F080);
    sub_26EE154C8(&qword_2806C7BD8, &qword_2806C7BE0, &qword_26EF3F088);
    sub_26EE154C8(&qword_2806C7020, &qword_2806C7028, &unk_26EF3F090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7BD0);
  }

  return result;
}

uint64_t sub_26EE6160C()
{
  sub_26EEA5AE8();
  sub_26EE12538();
  sub_26EF3A5DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BB0, &qword_26EF3F070);
  sub_26EE6139C(&qword_2806C7BA8, &qword_2806C7BB0, &qword_26EF3F070, sub_26EE61418);
  return sub_26EF3AD4C();
}

uint64_t sub_26EE616FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = sub_26EF39B6C();
  v65 = *(v66 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v66, v7);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BC8, &qword_26EF3F080);
  v9 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62, v10);
  v63 = &v59 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D38, &unk_26EF3F4B0);
  v67 = *(v68 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v68, v13);
  v61 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v59 - v18;
  v20 = sub_26EF38AAC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v25 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v59 - v27;
  v29 = *(a2 + 144);
  v70[8] = *(a2 + 128);
  v70[9] = v29;
  *v71 = *(a2 + 160);
  *&v71[9] = *(a2 + 169);
  v30 = *(a2 + 80);
  v70[4] = *(a2 + 64);
  v70[5] = v30;
  v31 = *(a2 + 112);
  v70[6] = *(a2 + 96);
  v70[7] = v31;
  v32 = *(a2 + 16);
  v70[0] = *a2;
  v70[1] = v32;
  v33 = *(a2 + 48);
  v70[2] = *(a2 + 32);
  v70[3] = v33;
  v34 = sub_26EE60F30();
  v69 = a1;
  sub_26EE61DE8(sub_26EE66AFC, v34, v19);

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_26EE14578(v19, &qword_2806C7080, &unk_26EF3DBF0);
    return (*(v67 + 56))(a3, 1, 1, v68);
  }

  else
  {
    v60 = a3;
    v36 = *(v21 + 32);
    v36(v28, v19, v20);
    (*(v21 + 16))(v25, v28, v20);
    v37 = (*(v21 + 80) + 201) & ~*(v21 + 80);
    v38 = swift_allocObject();
    v39 = *(a2 + 144);
    v38[9] = *(a2 + 128);
    v38[10] = v39;
    v38[11] = *(a2 + 160);
    *(v38 + 185) = *(a2 + 169);
    v40 = *(a2 + 80);
    v38[5] = *(a2 + 64);
    v38[6] = v40;
    v41 = *(a2 + 112);
    v38[7] = *(a2 + 96);
    v38[8] = v41;
    v42 = *(a2 + 16);
    v38[1] = *a2;
    v38[2] = v42;
    v43 = *(a2 + 48);
    v38[3] = *(a2 + 32);
    v38[4] = v43;
    v44 = (v36)(v38 + v37, v25, v20);
    MEMORY[0x28223BE20](v44, v45);
    *(&v59 - 2) = v28;
    *(&v59 - 1) = a2;
    sub_26EE60C88(a2, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D40, &qword_26EF3F4C0);
    sub_26EE66CDC();
    v46 = v63;
    sub_26EF3AB4C();
    v47 = *(a2 + 64);
    v48 = *(a2 + 72);
    v49 = *(a2 + 80);
    type metadata accessor for VBCloudSyncModel();
    sub_26EE67148(&qword_2806C7C18, type metadata accessor for VBCloudSyncModel);
    sub_26EF3976C();
    LOBYTE(v48) = VBCloudSyncModel.hasDevicePasscode.getter();

    KeyPath = swift_getKeyPath();
    v51 = swift_allocObject();
    *(v51 + 16) = (v48 & 1) == 0;
    v52 = (v46 + *(v62 + 36));
    *v52 = KeyPath;
    v52[1] = sub_26EE673E4;
    v52[2] = v51;
    v53 = v64;
    sub_26EF39B5C();
    sub_26EE61528();
    sub_26EE67148(&qword_2806C6BB8, MEMORY[0x277CDDB18]);
    v54 = v61;
    v55 = v66;
    sub_26EF3A65C();
    (*(v65 + 8))(v53, v55);
    sub_26EE14578(v46, &qword_2806C7BC8, &qword_26EF3F080);
    v56 = v67;
    v57 = v60;
    v58 = v68;
    (*(v67 + 32))(v60, v54, v68);
    (*(v56 + 56))(v57, 0, 1, v58);
    return (*(v21 + 8))(v28, v20);
  }
}

uint64_t sub_26EE61DE8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_26EF38AAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_26EE61FBC(_OWORD *a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v25[-v12];
  v14 = sub_26EF3B30C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v5 + 16))(v8, a2, v4);
  sub_26EF3B2DC();
  sub_26EE60C88(a1, v25);
  v15 = sub_26EF3B2CC();
  v16 = (*(v5 + 80) + 217) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  v19 = a1[9];
  *(v17 + 160) = a1[8];
  *(v17 + 176) = v19;
  *(v17 + 192) = a1[10];
  *(v17 + 201) = *(a1 + 169);
  v20 = a1[5];
  *(v17 + 96) = a1[4];
  *(v17 + 112) = v20;
  v21 = a1[7];
  *(v17 + 128) = a1[6];
  *(v17 + 144) = v21;
  v22 = a1[1];
  *(v17 + 32) = *a1;
  *(v17 + 48) = v22;
  v23 = a1[3];
  *(v17 + 64) = a1[2];
  *(v17 + 80) = v23;
  (*(v5 + 32))(v17 + v16, v8, v4);
  sub_26EE2C388(0, 0, v13, &unk_26EF3F4F8, v17);
}

uint64_t sub_26EE621FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF37EDC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[7] = sub_26EF3B2CC();
  v10 = sub_26EF3B29C();
  v5[8] = v10;
  v5[9] = v9;

  return MEMORY[0x2822009F8](sub_26EE622F0, v10, v9);
}

uint64_t sub_26EE622F0()
{
  v1 = v0[2];
  v3 = *(v1 + 168);
  v2 = *(v1 + 176);
  v4 = *(v1 + 184);
  type metadata accessor for VBAuthenticationChallengeModel();
  sub_26EE67148(&qword_2806C7D18, type metadata accessor for VBAuthenticationChallengeModel);
  v0[10] = sub_26EF3976C();
  v5 = sub_26EE17094();
  v6._object = 0x800000026EF45A30;
  v7 = v5 & 1;
  v6._countAndFlagsBits = 0xD000000000000024;
  v8 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v6, v7, 0);
  v0[11] = v8._object;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_26EE62434;

  return VBAuthenticationChallengeModel.presentAuthenticationChallenge(localizedReason:)(v8._countAndFlagsBits, v8._object);
}

uint64_t sub_26EE62434(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 104) = a1;

  v6 = *(v2 + 72);
  v7 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_26EE6259C, v7, v6);
}

uint64_t sub_26EE6259C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);

  if (v1 == 1)
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v10 = *(v8 + 152);
    v9 = *(v8 + 160);
    MEMORY[0x274380B50](v3);
    v11 = sub_26EF38A7C();
    v10(v4, v11, v12);

    (*(v5 + 8))(v4, v7);
  }

  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26EE62684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26EF38AAC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  sub_26EECD5EC(v10, a3);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  v15 = sub_26EF3976C();
  v16 = sub_26EF394AC();
  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D68, &unk_26EF3F4D0) + 36));
  *v17 = v16;
  v17[1] = v15;
  v18 = sub_26EF3AE4C();
  v20 = v19;
  v21 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D58, &qword_26EF3F4C8) + 36);
  sub_26EE82F84();
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D90, &unk_26EF3F4E0) + 36));
  *v22 = v18;
  v22[1] = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D40, &qword_26EF3F4C0);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26EE62864@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v34[-v7];
  v9 = sub_26EE17094();
  v10._object = 0x800000026EF459E0;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0xD000000000000018;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v10, v11, 0);
  v12 = a1[9];
  v43 = a1[8];
  v44 = v12;
  v45[0] = a1[10];
  *(v45 + 9) = *(a1 + 169);
  v13 = a1[5];
  v39 = a1[4];
  v40 = v13;
  v14 = a1[7];
  v41 = a1[6];
  v42 = v14;
  v15 = a1[1];
  v35 = *a1;
  v36 = v15;
  v16 = a1[3];
  v37 = a1[2];
  v38 = v16;
  sub_26EE62B04();
  v17 = sub_26EF3961C();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = a1[9];
  v18[9] = a1[8];
  v18[10] = v19;
  v18[11] = a1[10];
  *(v18 + 185) = *(a1 + 169);
  v20 = a1[5];
  v18[5] = a1[4];
  v18[6] = v20;
  v21 = a1[7];
  v18[7] = a1[6];
  v18[8] = v21;
  v22 = a1[1];
  v18[1] = *a1;
  v18[2] = v22;
  v23 = a1[3];
  v18[3] = a1[2];
  v18[4] = v23;
  sub_26EE60C88(a1, v34);
  sub_26EF3874C();
  v24 = a1[9];
  v43 = a1[8];
  v44 = v24;
  v45[0] = a1[10];
  *(v45 + 9) = *(a1 + 169);
  v25 = a1[5];
  v39 = a1[4];
  v40 = v25;
  v26 = a1[7];
  v41 = a1[6];
  v42 = v26;
  v27 = a1[1];
  v35 = *a1;
  v36 = v27;
  v28 = a1[3];
  v37 = a1[2];
  v38 = v28;
  v29 = sub_26EE6369C();
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = (v29 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  v33 = (a2 + *(result + 36));
  *v33 = KeyPath;
  v33[1] = sub_26EE274EC;
  v33[2] = v31;
  return result;
}

uint64_t sub_26EE62E8C(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17[-v5];
  v7 = sub_26EF3B30C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_26EF3B2DC();
  sub_26EE60C88(a1, v17);
  v8 = sub_26EF3B2CC();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = a1[9];
  *(v9 + 160) = a1[8];
  *(v9 + 176) = v11;
  *(v9 + 192) = a1[10];
  *(v9 + 201) = *(a1 + 169);
  v12 = a1[5];
  *(v9 + 96) = a1[4];
  *(v9 + 112) = v12;
  v13 = a1[7];
  *(v9 + 128) = a1[6];
  *(v9 + 144) = v13;
  v14 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v14;
  v15 = a1[3];
  *(v9 + 64) = a1[2];
  *(v9 + 80) = v15;
  sub_26EE2C388(0, 0, v6, &unk_26EF3F4A8, v9);
}

uint64_t sub_26EE62FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EE63084, v6, v5);
}

uint64_t sub_26EE63084()
{
  v1 = v0[2];
  v3 = *(v1 + 168);
  v2 = *(v1 + 176);
  v4 = *(v1 + 184);
  type metadata accessor for VBAuthenticationChallengeModel();
  sub_26EE67148(&qword_2806C7D18, type metadata accessor for VBAuthenticationChallengeModel);
  v0[6] = sub_26EF3976C();
  v5._object = 0x800000026EF45A00;
  v5._countAndFlagsBits = 0xD000000000000024;
  v6 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v5, 1, 0);
  v0[7] = v6._object;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_26EE631C4;

  return VBAuthenticationChallengeModel.presentAuthenticationChallenge(localizedReason:)(v6._countAndFlagsBits, v6._object);
}

uint64_t sub_26EE631C4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 72) = a1;

  v6 = *(v2 + 40);
  v7 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_26EE6332C, v7, v6);
}

uint64_t sub_26EE6332C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  if (v1 == 1)
  {
    v3 = *(v0 + 16);
    sub_26EE633A0();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26EE633A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v24 - v9;
  v12 = *v0;
  v11 = *(v0 + 8);
  v13 = *(v0 + 16);
  v24[1] = *(v0 + 24);
  v24[2] = v13;
  v14 = *(v0 + 32);
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EE67148(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  sub_26EF3976C();
  v15 = VoiceBankingNavigationModel.itemPath.modify(&v26);
  v17 = *v16;
  *v16 = MEMORY[0x277D84F90];

  (v15)(&v26, 0);

  v26 = v12;
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B48, &qword_26EF41080);
  sub_26EF3AAFC();
  v18 = v25;
  v19 = sub_26EF38E9C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_26EED6AEC(v10);

  v26 = v12;
  v27 = v11;
  sub_26EF3AAFC();
  v20 = v25;
  v21 = sub_26EF37EDC();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  v22 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE65A2C(v5, v20 + v22);
  swift_endAccess();

  sub_26EF3976C();
  v26 = 0;
  LOBYTE(v27) = 1;
  VoiceBankingNavigationModel.initialViewType.setter(&v26);

  sub_26EF3976C();
  VoiceBankingNavigationModel.presentManagerRootView.setter();
}

uint64_t sub_26EE6369C()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 56);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = *(v0 + 80);
  v12 = *v0;
  v14 = v0[1];
  v16 = *(v0 + 4);
  v11 = *(v0 + 6);
  LODWORD(v18) = *(v0 + 57);
  *(&v18 + 3) = *(v0 + 15);
  v24 = *(v0 + 113);
  v22 = *(v0 + 97);
  v20 = *(v0 + 81);
  v32 = *(v0 + 177);
  v30 = *(v0 + 161);
  v28 = *(v0 + 145);
  v26 = *(v0 + 129);
  if (sub_26EE648D0())
  {
    return 0;
  }

  type metadata accessor for VBCloudSyncModel();
  sub_26EE67148(&qword_2806C7C18, type metadata accessor for VBCloudSyncModel);
  sub_26EF3976C();
  v6 = VBCloudSyncModel.hasDevicePasscode.getter();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v13 = *v0;
  v15 = v0[1];
  v17 = *(v0 + 4);
  LODWORD(v19) = *(v0 + 57);
  *(&v19 + 3) = *(v0 + 15);
  v25 = *(v0 + 113);
  v23 = *(v0 + 97);
  v21 = *(v0 + 81);
  v33 = *(v0 + 177);
  v31 = *(v0 + 161);
  v29 = *(v0 + 145);
  v27 = *(v0 + 129);
  v7 = *(sub_26EE60F30() + 16);

  if (v7 >= sub_26EF3899C())
  {
    return 0;
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE67148(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  v8 = sub_26EF3976C();
  v9 = sub_26EF0FFFC();

  return v9 & 1;
}

uint64_t sub_26EE638E0@<X0>(uint64_t a1@<X8>)
{
  sub_26EE62B04();
  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_26EE63944()
{
  result = qword_2806C7C10;
  if (!qword_2806C7C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7C08, &qword_26EF3F0C8);
    sub_26EE67148(&qword_2806C7100, MEMORY[0x277CE7690]);
    sub_26EE154C8(&qword_2806C7020, &qword_2806C7028, &unk_26EF3F090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7C10);
  }

  return result;
}

uint64_t sub_26EE63A2C()
{
  v2 = *(*(v0 + 16) + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C28, &qword_26EF3F0D8);
  sub_26EF3AB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CE0, &qword_26EF3F458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C48, &qword_26EF3F0E8);
  sub_26EE66394();
  sub_26EE154C8(&qword_2806C7C40, &qword_2806C7C48, &qword_26EF3F0E8);
  sub_26EE66480();
  return sub_26EF3ACFC();
}

unint64_t sub_26EE63B50()
{
  result = qword_2806C7C38;
  if (!qword_2806C7C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7C30, &qword_26EF3F0E0);
    sub_26EE154C8(&qword_2806C7C40, &qword_2806C7C48, &qword_26EF3F0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7C38);
  }

  return result;
}

uint64_t sub_26EE63C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v8 = v16 - v7;
  sub_26EE13B88(a1, v16 - v7, &qword_2806C7D08, &qword_26EF3F460);
  sub_26EF3B2DC();
  v9 = sub_26EF3B2CC();
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_26EE66538(v8, v11 + v10);
  sub_26EE13B88(a1, v8, &qword_2806C7D08, &qword_26EF3F460);
  v13 = sub_26EF3B2CC();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  sub_26EE66538(v8, v14 + v10);
  sub_26EF3AC7C();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7470, &qword_26EF3E1D0);
  sub_26EE154C8(&qword_2806C7478, &qword_2806C7470, &qword_26EF3E1D0);
  return sub_26EF3ABCC();
}

uint64_t sub_26EE63E48@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_26EF38BBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  MEMORY[0x274382CF0](v8);
  v9 = sub_26EF38B9C();
  result = (*(v3 + 8))(v7, v2);
  *a1 = v9 & 1;
  return result;
}

uint64_t sub_26EE63F40(unsigned __int8 *a1)
{
  v2 = sub_26EF38BBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  MEMORY[0x274382CF0]();
  sub_26EF38B6C();
  (*(v3 + 16))(v8, v11, v2);
  sub_26EF3AC3C();
  return (*(v3 + 8))(v11, v2);
}

uint64_t sub_26EE64094@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF38BBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  MEMORY[0x274382CF0]();
  sub_26EF38BAC();
  v9 = *(v3 + 8);
  v9(v7, v2);
  v10 = sub_26EF3B0BC();

  v11 = TTSUIAppImageForBundleID(v10);

  if (v11)
  {
    v11 = sub_26EF3AA7C();
  }

  MEMORY[0x274382CF0](v8);
  v12 = sub_26EF38B7C();
  v14 = v13;
  v9(v7, v2);
  v22[0] = v12;
  v22[1] = v14;
  sub_26EE12538();
  v15 = sub_26EF3A5DC();
  v17 = v16;
  LOBYTE(v14) = v18;
  v20 = v19;

  LOBYTE(v14) = v14 & 1;
  sub_26EE13B20(v15, v17, v14);

  *a1 = v11;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17;
  *(a1 + 24) = v14;
  *(a1 + 32) = v20;
  sub_26EE12ABC(v15, v17, v14);
}

uint64_t sub_26EE642A4@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7178, &qword_26EF3DD70);
  v52 = *(v1 - 8);
  v2 = v52[8];
  v4 = MEMORY[0x28223BE20](v1, v3);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v48 = &v44 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v51 = &v44 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v47 = &v44 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v46 = &v44 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v45 = &v44 - v19;
  sub_26EF39EAC();
  sub_26EF3B2DC();
  v20 = sub_26EF3B2CC();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = sub_26EF3B2CC();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  sub_26EF3AC7C();
  sub_26EF3ABDC();
  sub_26EF39EAC();
  v25 = sub_26EF3B2CC();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v22;
  v27 = sub_26EF3B2CC();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v22;
  sub_26EF3AC7C();
  v29 = v46;
  sub_26EF3ABDC();
  sub_26EF39EAC();
  v30 = sub_26EF3B2CC();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v22;
  v32 = sub_26EF3B2CC();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v22;
  sub_26EF3AC7C();
  v34 = v47;
  sub_26EF3ABDC();
  v35 = v51;
  v36 = v52[2];
  v37 = v45;
  v36(v51, v45, v1);
  v38 = v48;
  v36(v48, v29, v1);
  v39 = v49;
  v36(v49, v34, v1);
  v40 = v50;
  v36(v50, v35, v1);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CD8, &qword_26EF3F450);
  v36(&v40[*(v41 + 48)], v38, v1);
  v36(&v40[*(v41 + 64)], v39, v1);
  v42 = v52[1];
  v42(v34, v1);
  v42(v29, v1);
  v42(v37, v1);
  v42(v39, v1);
  v42(v38, v1);
  return (v42)(v51, v1);
}

void sub_26EE64808(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  sub_26EE660E4();
  v4 = sub_26EF3B48C();
  LOBYTE(a1) = a1();

  *a2 = a1 & 1;
}

void sub_26EE64860(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  sub_26EE660E4();
  v4 = sub_26EF3B48C();
  a2(v3);
}

uint64_t sub_26EE648D0()
{
  v1 = sub_26EF38DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  v10 = sub_26EEA6568();

  v12 = 0;
  v13 = *(v10 + 16);
  while (1)
  {
    v14 = v12;
    if (v13 == v12)
    {
LABEL_5:

      return v13 != v14;
    }

    if (v12 >= *(v10 + 16))
    {
      break;
    }

    (*(v2 + 16))(v6, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12++, v1);
    v15 = sub_26EF38CFC();
    result = (*(v2 + 8))(v6, v1);
    if (v15)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE64A98(uint64_t a1, uint64_t a2)
{
  v87 = sub_26EF391EC();
  v4 = *(v87 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v87, v6);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v72 = &v67 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v86 = &v67 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v85 = &v67 - v16;
  v78 = sub_26EF38DBC();
  v17 = *(v78 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v78, v19);
  v71 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v70 = &v67 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v77 = &v67 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v84 = &v67 - v29;
  v30 = *(a2 + 88);
  v31 = *(a2 + 96);
  v32 = *(a2 + 104);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  v33 = sub_26EEA6568();

  v89 = a1;
  result = sub_26EE65474(sub_26EE66174, v88, v33);
  v35 = result;
  v36 = *(result + 16);
  v79 = result;
  v80 = v17;
  v83 = v36;
  if (v36)
  {
    v37 = 0;
    v76 = (v17 + 16);
    v68 = v4;
    v75 = (v4 + 8);
    v69 = (v17 + 8);
    v38 = (v17 + 32);
    v39 = MEMORY[0x277D84F90];
    v40 = v78;
    while (1)
    {
      if (v37 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v82 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v81 = *(v17 + 72);
      (*(v17 + 16))(v84, v35 + v82 + v81 * v37, v40);
      sub_26EF38D1C();
      sub_26EF391BC();
      sub_26EE67148(&qword_2806C7A60, MEMORY[0x277D70650]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v92 == v90 && v93 == v91)
      {
        break;
      }

      v74 = sub_26EF3B82C();
      v43 = *v75;
      v44 = v87;
      (*v75)(v86, v87);
      v43(v85, v44);

      if (v74)
      {
        goto LABEL_10;
      }

      v40 = v78;
      result = (*v69)(v84, v78);
      v35 = v79;
      v17 = v80;
LABEL_4:
      if (v83 == ++v37)
      {
        goto LABEL_17;
      }
    }

    v41 = *v75;
    v42 = v87;
    (*v75)(v86, v87);
    v41(v85, v42);

LABEL_10:
    v45 = *v38;
    v40 = v78;
    (*v38)(v77, v84, v78);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26EE66130(0, *(v39 + 16) + 1, 1);
      v40 = v78;
      v39 = v94;
    }

    v35 = v79;
    v48 = *(v39 + 16);
    v47 = *(v39 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_26EE66130(v47 > 1, v48 + 1, 1);
      v40 = v78;
      v39 = v94;
    }

    *(v39 + 16) = v48 + 1;
    result = (v45)(v39 + v82 + v48 * v81, v77, v40);
    v17 = v80;
    goto LABEL_4;
  }

  if (!AXDeviceIsWatch())
  {
    goto LABEL_34;
  }

  v68 = v4;
  v39 = MEMORY[0x277D84F90];
  v40 = v78;
LABEL_17:
  v49 = *(v39 + 16);

  if (v49 && (result = AXDeviceSupportsAppleIntelligence(), result) && (result = AXDeviceIsWatch(), (result & 1) == 0))
  {
LABEL_34:

    return 1;
  }

  else if (v83)
  {
    v50 = 0;
    v51 = v80;
    v82 = v80 + 16;
    v81 = (v68 + 8);
    v76 = (v80 + 8);
    v77 = (v80 + 32);
    v84 = MEMORY[0x277D84F90];
    v52 = v70;
    while (v50 < *(v35 + 16))
    {
      v86 = ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v85 = *(v51 + 72);
      (*(v51 + 16))(v52, &v86[v35 + v85 * v50], v40);
      v53 = v72;
      v54 = v40;
      sub_26EF38D1C();
      v55 = v73;
      sub_26EF391BC();
      sub_26EE67148(&qword_2806C7CC8, MEMORY[0x277D70650]);
      v56 = v52;
      v57 = v87;
      v58 = sub_26EF3B0AC();
      v59 = *v81;
      (*v81)(v55, v57);
      v59(v53, v57);
      if (v58)
      {
        result = (*v76)(v56, v54);
        v40 = v54;
        v52 = v56;
        v35 = v79;
      }

      else
      {
        v60 = *v77;
        (*v77)(v71, v56, v54);
        v61 = v84;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = v61;
        v92 = v61;
        if (v62)
        {
          v40 = v54;
        }

        else
        {
          sub_26EE66130(0, *(v61 + 2) + 1, 1);
          v40 = v78;
          v63 = v92;
        }

        v35 = v79;
        v65 = *(v63 + 2);
        v64 = *(v63 + 3);
        if (v65 >= v64 >> 1)
        {
          sub_26EE66130(v64 > 1, v65 + 1, 1);
          v40 = v78;
          v63 = v92;
        }

        *(v63 + 2) = v65 + 1;
        v84 = v63;
        result = v60(&v86[v63 + v65 * v85], v71, v40);
        v52 = v70;
      }

      ++v50;
      v51 = v80;
      if (v83 == v50)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
    v84 = MEMORY[0x277D84F90];
LABEL_33:

    v66 = *(v84 + 2);

    return v66 != 0;
  }

  return result;
}

uint64_t sub_26EE65340(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_26EF37EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v18 - v13;
  v15 = a3(v12);
  MEMORY[0x274380B50](v15);
  LOBYTE(a3) = sub_26EF37EAC();
  v16 = *(v5 + 8);
  v16(v10, v4);
  v16(v14, v4);
  return a3 & 1;
}

uint64_t sub_26EE65474(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v42 = sub_26EF38DBC();
  v7 = *(*(v42 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v42, v8);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = MEMORY[0x277D84F90];
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v3)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26EE66130(0, *(v26 + 16) + 1, 1);
          v26 = v43;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_26EE66130(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_26EE65748@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v23 = MEMORY[0x277D84A98];
  v24 = v4;
  v25 = MEMORY[0x277D84AA8];
  v26 = v5;
  v6 = sub_26EF3A51C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v19[-v14];
  v20 = v4;
  v21 = v5;
  v22 = v2;
  sub_26EF3A50C();
  swift_getWitnessTable();
  v16 = v7[2];
  v16(v15, v12, v6);
  v17 = v7[1];
  v17(v12, v6);
  v16(a2, v15, v6);
  return (v17)(v15, v6);
}

uint64_t sub_26EE658F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

size_t sub_26EE659E8(size_t a1, int64_t a2, char a3)
{
  result = sub_26EE661B8(a1, a2, a3, *v3, &qword_2806C7CC0, &qword_26EF3F438, MEMORY[0x277D70530]);
  *v3 = result;
  return result;
}

uint64_t sub_26EE65A2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE65A9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_26EE65C90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EE65CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EE65D74()
{
  result = qword_2806C7C60;
  if (!qword_2806C7C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B70, &qword_26EF3F048);
    sub_26EE65E2C();
    sub_26EE154C8(&qword_2806C7C80, &qword_2806C7C88, &qword_26EF3F410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7C60);
  }

  return result;
}

unint64_t sub_26EE65E2C()
{
  result = qword_2806C7C68;
  if (!qword_2806C7C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7AF8, &qword_26EF3EFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B08, &qword_26EF3EFD0);
    type metadata accessor for VoiceBankingSession();
    sub_26EE60DA8();
    sub_26EE67148(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C7C70, &qword_2806C7C78, &qword_26EF3F408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7C68);
  }

  return result;
}

unint64_t sub_26EE65F70()
{
  result = qword_2806C7CA0;
  if (!qword_2806C7CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7CA8, &qword_26EF3F428);
    sub_26EE65FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7CA0);
  }

  return result;
}

unint64_t sub_26EE65FF4()
{
  result = qword_2806C7CB0;
  if (!qword_2806C7CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7C20, &qword_26EF3F0D0);
    sub_26EE63B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7CB0);
  }

  return result;
}

uint64_t sub_26EE66084(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26EF3A51C();
  return swift_getWitnessTable();
}

unint64_t sub_26EE660E4()
{
  result = qword_2806C9C00;
  if (!qword_2806C9C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806C9C00);
  }

  return result;
}

size_t sub_26EE66130(size_t a1, int64_t a2, char a3)
{
  result = sub_26EE661B8(a1, a2, a3, *v3, &qword_2806C7CD0, &unk_26EF3F440, MEMORY[0x277D705D8]);
  *v3 = result;
  return result;
}

size_t sub_26EE661B8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_26EE66394()
{
  result = qword_2806C7CE8;
  if (!qword_2806C7CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7CE0, &qword_26EF3F458);
    sub_26EE154C8(&qword_2806C7CF0, &qword_2806C7AF0, &unk_26EF3EFB0);
    sub_26EE154C8(&qword_2806C7CF8, &qword_2806C7AF0, &unk_26EF3EFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7CE8);
  }

  return result;
}

unint64_t sub_26EE66480()
{
  result = qword_2806C7D00;
  if (!qword_2806C7D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7D08, &qword_26EF3F460);
    sub_26EE67148(&qword_2806C7D10, MEMORY[0x277D70560]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7D00);
  }

  return result;
}

uint64_t sub_26EE66538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE665A8@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460) - 8) + 80);

  return sub_26EE63E48(a1);
}

uint64_t objectdestroy_82Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[10];
  v9 = sub_26EF38BBC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE66728(unsigned __int8 *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460) - 8) + 80);

  return sub_26EE63F40(a1);
}

__n128 sub_26EE667A4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_26EF39E4C();
  sub_26EE64094(&v9);
  v5 = v10;
  v6 = v11;
  v7 = v12;
  result = v9;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  return result;
}

uint64_t sub_26EE66828()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE05D7C;

  return sub_26EE62FEC(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE668B8()
{
  v1 = *(v0 + 24);
  v14 = **(v0 + 16);
  v2 = swift_allocObject();
  v3 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  v2[3] = v1[2];
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  v6 = v1[7];
  v8 = v1[4];
  v7 = v1[5];
  v2[7] = v1[6];
  v2[8] = v6;
  v2[5] = v8;
  v2[6] = v7;
  v10 = v1[9];
  v9 = v1[10];
  v11 = v1[8];
  *(v2 + 185) = *(v1 + 169);
  v2[10] = v10;
  v2[11] = v9;
  v2[9] = v11;

  sub_26EE60C88(v1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D20, &qword_26EF412D0);
  sub_26EF37EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BC0, &qword_26EF3F078);
  sub_26EE154C8(&qword_2806C7D28, &qword_2806C7D20, &qword_26EF412D0);
  sub_26EE61418();
  sub_26EE67148(&qword_2806C7D30, MEMORY[0x277D70530]);
  return sub_26EF3ACFC();
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_26EE05CA8();
  sub_26EE60C70(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  sub_26EE05CA8();
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  sub_26EE05CA8();
  v11 = *(v0 + 128);

  v12 = *(v0 + 136);

  v13 = *(v0 + 152);

  v14 = *(v0 + 176);

  v15 = *(v0 + 184);
  v16 = *(v0 + 192);
  v17 = *(v0 + 200);
  sub_26EE05CA8();

  return MEMORY[0x2821FE8E8](v0, 201, 7);
}

uint64_t sub_26EE66B40()
{
  v1 = sub_26EF38AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 201) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_26EE05CA8();
  sub_26EE60C70(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  sub_26EE05CA8();
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  sub_26EE05CA8();
  v16 = *(v0 + 128);

  v17 = *(v0 + 136);

  v18 = *(v0 + 152);

  v19 = *(v0 + 176);

  v20 = *(v0 + 184);
  v21 = *(v0 + 192);
  v22 = *(v0 + 200);
  sub_26EE05CA8();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE66C70()
{
  v1 = *(sub_26EF38AAC() - 8);
  v2 = v0 + ((*(v1 + 80) + 201) & ~*(v1 + 80));

  return sub_26EE61FBC((v0 + 16), v2);
}

unint64_t sub_26EE66CDC()
{
  result = qword_2806C7D48;
  if (!qword_2806C7D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7D40, &qword_26EF3F4C0);
    sub_26EE66D94();
    sub_26EE154C8(&qword_2806C6B98, &qword_2806C6BA0, &qword_26EF41DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7D48);
  }

  return result;
}

unint64_t sub_26EE66D94()
{
  result = qword_2806C7D50;
  if (!qword_2806C7D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7D58, &qword_26EF3F4C8);
    sub_26EE66E4C();
    sub_26EE154C8(&qword_2806C7D88, &qword_2806C7D90, &unk_26EF3F4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7D50);
  }

  return result;
}

unint64_t sub_26EE66E4C()
{
  result = qword_2806C7D60;
  if (!qword_2806C7D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7D68, &unk_26EF3F4D0);
    sub_26EE67148(&qword_2806C7D70, type metadata accessor for VoiceCell);
    sub_26EE154C8(&qword_2806C7D78, &qword_2806C7D80, &qword_26EF41150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7D60);
  }

  return result;
}

uint64_t sub_26EE66F44()
{
  v1 = sub_26EF38AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 217) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  sub_26EE05CA8();
  sub_26EE60C70(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  sub_26EE05CA8();
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  sub_26EE05CA8();
  v17 = *(v0 + 144);

  v18 = *(v0 + 152);

  v19 = *(v0 + 168);

  v20 = *(v0 + 192);

  v21 = *(v0 + 200);
  v22 = *(v0 + 208);
  v23 = *(v0 + 216);
  sub_26EE05CA8();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE6707C()
{
  v2 = *(sub_26EF38AAC() - 8);
  v3 = (*(v2 + 80) + 217) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE621FC(v4, v5, v6, v0 + 32, v0 + v3);
}

uint64_t sub_26EE67148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_26EE05CA8();
  sub_26EE60C70(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  sub_26EE05CA8();
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  sub_26EE05CA8();
  v12 = *(v0 + 144);

  v13 = *(v0 + 152);

  v14 = *(v0 + 168);

  v15 = *(v0 + 192);

  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 216);
  sub_26EE05CA8();

  return MEMORY[0x2821FE8E8](v0, 217, 7);
}

uint64_t sub_26EE67240()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE5FD4C(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE67304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C90, &qword_26EF3F418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CoreSynthesisVoicePickable.__allocating_init(voice:fetcher:locale:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = sub_26EF382EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v4);
  v13 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__fetcher;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_26EF3803C();
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__voice;
  v15 = sub_26EF383FC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v12[v14], a1, v15);
  sub_26EF383BC();
  v17 = (*(v7 + 88))(v11, v6);
  if (v17 == *MEMORY[0x277D702A0])
  {
    (*(v7 + 96))(v11, v6);
    v18 = *v11;
    v19 = 1;
LABEL_7:
    v20 = &v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState];
    *v20 = v18;
    v20[4] = v19;
    v21 = v29;
    MEMORY[0x274384370](&v12[v13]);
    swift_unknownObjectWeakInit();

    v22 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__locale;
    v23 = sub_26EF37FEC();
    v24 = *(v23 - 8);
    v25 = &v12[v22];
    v26 = v30;
    (*(v24 + 16))(v25, v30, v23);
    v31.receiver = v12;
    v31.super_class = v4;
    v27 = objc_msgSendSuper2(&v31, sel_init);
    (*(v24 + 8))(v26, v23);
    (*(v16 + 8))(a1, v15);

    return v27;
  }

  if (v17 == *MEMORY[0x277D70298])
  {
    v18 = 0;
    v19 = 2;
    goto LABEL_7;
  }

  if (v17 == *MEMORY[0x277D70290])
  {
    v19 = 2;
    v18 = 1;
    goto LABEL_7;
  }

  result = sub_26EF3B81C();
  __break(1u);
  return result;
}

uint64_t CoreSynthesisVoicePickable.init(voice:fetcher:locale:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_26EE73004(a1, a2, a3);

  return v4;
}

void sub_26EE67710(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for CoreSynthesisVoicePickableFetcher(0);
      v5 = v4;
      v6 = sub_26EF3B5AC();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x28223BE20](KeyPath, v8);
  (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))(v9, sub_26EE732EC);
}

uint64_t sub_26EE67884(char *a1)
{
  v2 = v1;
  v4 = sub_26EF383FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__voice;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, &v2[v10], v4);
  sub_26EE73470(&qword_2806C7DF8, MEMORY[0x277D702F8]);
  v18 = a1;
  LOBYTE(a1) = sub_26EF3B0AC();
  v12 = *(v5 + 8);
  v12(v9, v4);
  if (a1)
  {
    v11(v9, v18, v4);
    swift_beginAccess();
    (*(v5 + 40))(&v2[v10], v9, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v15 = MEMORY[0x28223BE20](KeyPath, v14);
    v16 = v18;
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v16;
    (*((*MEMORY[0x277D85000] & *v2) + 0x1A0))(v15, sub_26EE7336C);
  }

  return (v12)(v18, v4);
}

uint64_t sub_26EE67B18(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState;
  swift_beginAccess();
  v9 = *v4;
  v10 = v4[4];
  sub_26EE733B4();
  result = sub_26EF3B0AC();
  if (result)
  {
    *v4 = v2;
    v4[4] = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath, v7);
    (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))(v8, sub_26EE73408);
  }

  return result;
}

uint64_t sub_26EE67C84(char *a1)
{
  v2 = v1;
  v4 = sub_26EF37FEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__locale;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, &v2[v10], v4);
  sub_26EE73470(&qword_2806C7E08, MEMORY[0x277CC9788]);
  v18 = a1;
  LOBYTE(a1) = sub_26EF3B0AC();
  v12 = *(v5 + 8);
  v12(v9, v4);
  if (a1)
  {
    v11(v9, v18, v4);
    swift_beginAccess();
    (*(v5 + 40))(&v2[v10], v9, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v15 = MEMORY[0x28223BE20](KeyPath, v14);
    v16 = v18;
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v16;
    (*((*MEMORY[0x277D85000] & *v2) + 0x1A0))(v15, sub_26EE734B8);
  }

  return (v12)(v18, v4);
}

void (*sub_26EE67F18(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__fetcher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_26EE67FB0;
}

void sub_26EE67FB0(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_26EE6802C()
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v0) + 0x198))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_26EE680C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_26EE68124(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

void (*sub_26EE6818C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable);
  sub_26EF3802C();

  v4[7] = sub_26EE67F18(v4);
  return sub_26EE682EC;
}

uint64_t sub_26EE683D4(uint64_t a1, void **a2)
{
  v4 = sub_26EF383FC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD0))(v8);
}

void (*sub_26EE684D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable);
  sub_26EF3802C();

  v4[7] = sub_26EE682F8();
  return sub_26EE68630;
}

uint64_t sub_26EE6863C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v123 = a1;
  v3 = sub_26EF3821C();
  v109 = *(v3 - 8);
  v110 = v3;
  v4 = *(v109 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_26EF3824C();
  v115 = *(v117 - 8);
  v7 = *(v115 + 64);
  v9 = MEMORY[0x28223BE20](v117, v8);
  v112 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v114 = &v107 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v116 = &v107 - v15;
  v16 = sub_26EF37FEC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v122 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26EF383AC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v107 - v28;
  v30 = sub_26EF383FC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x28223BE20](v30, v33);
  v111 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v113 = &v107 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v107 - v41;
  v43 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v118 = (*MEMORY[0x277D85000] & *v1) + 200;
  v121 = v43;
  v43(v40);
  sub_26EF383CC();
  v45 = *(v31 + 8);
  v44 = (v31 + 8);
  v119 = v30;
  v120 = v45;
  v45(v42, v30);
  sub_26EF3838C();
  sub_26EE73470(&qword_2806C7E18, MEMORY[0x277D702B8]);
  v46 = sub_26EF3B63C();
  v47 = *(v21 + 8);
  v47(v26, v20);
  v48 = (v47)(v29, v20);
  if (v46)
  {
    v49 = sub_26EE17094();
    v50._object = 0xEE006C616E6F7372;
    v51 = v49 & 1;
    v50._countAndFlagsBits = 0x65702E70756F7267;
    v52 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v50, v51, 0);
    countAndFlagsBits = v52._countAndFlagsBits;
    object = v52._object;
    v55 = v122;
    (*((*MEMORY[0x277D85000] & *v2) + 0x120))();
    LOBYTE(v126[0]) = 0;
LABEL_5:
    v62 = v123;
    v63 = countAndFlagsBits;
    v64 = object;
    v65 = 0;
    v66 = v55;
    v67 = 1;
    v68 = 0;
    return sub_26EE295F4(v63, v64, v65, v66, v67, v68, v126, v62);
  }

  v121(v48);
  sub_26EF383CC();
  v120(v42, v119);
  sub_26EF3837C();
  v56 = sub_26EF3B63C();
  v47(v26, v20);
  v57 = (v47)(v29, v20);
  if (v56)
  {
    v58 = sub_26EE17094();
    v59._object = 0xED000079746C6576;
    v60 = v58 & 1;
    v59._countAndFlagsBits = 0x6F6E2E70756F7267;
    v61 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v59, v60, 0);
    countAndFlagsBits = v61._countAndFlagsBits;
    object = v61._object;
    v55 = v122;
    (*((*MEMORY[0x277D85000] & *v2) + 0x120))();
    LOBYTE(v126[0]) = 1;
    goto LABEL_5;
  }

  v121(v57);
  sub_26EF383CC();
  v120(v42, v119);
  sub_26EF3836C();
  v69 = sub_26EF3B63C();
  v47(v26, v20);
  v70 = (v47)(v29, v20);
  if (v69)
  {
    v71 = sub_26EE17094() & 1;
    v72._countAndFlagsBits = 0x69732E70756F7267;
    v72._object = 0xEA00000000006972;
    v73 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v72, v71, 0);
    v74 = v122;
    (*((*MEMORY[0x277D85000] & *v2) + 0x120))();
    LOBYTE(v126[0]) = 2;
    v62 = v123;
    v63 = v73._countAndFlagsBits;
    v64 = v73._object;
    v65 = 1;
    v66 = v74;
  }

  else
  {
    v75 = v113;
    v107 = v2;
    v121(v70);
    sub_26EF382DC();
    v113 = v44;
    v120(v75, v119);
    v76 = v114;
    v77 = v115;
    (*(v115 + 104))(v114, *MEMORY[0x277D70258], v117);
    sub_26EE73470(&qword_2806C7E20, MEMORY[0x277D70260]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v126[0] == v124 && v126[1] == v125)
    {
      v78 = 1;
    }

    else
    {
      v78 = sub_26EF3B82C();
    }

    v79 = *(v77 + 8);
    v80 = v117;
    v79(v76, v117);
    v79(v116, v80);

    v82 = v107;
    if (v78)
    {
      v83 = v122;
      (*((*MEMORY[0x277D85000] & *v107) + 0x120))(v81);
      LOBYTE(v126[0]) = 2;
      v63 = 0x636E6575716F6C45;
      v62 = v123;
      v64 = 0xE900000000000065;
      v65 = 1;
      v66 = v83;
    }

    else
    {
      v84 = v111;
      v121(v81);
      v85 = v112;
      sub_26EF382DC();
      v86 = v84;
      v87 = v119;
      v120(v86, v119);
      v88 = (*(v77 + 88))(v85, v80);
      v89 = v80;
      v90 = MEMORY[0x277D85000];
      if (v88 == *MEMORY[0x277D70238])
      {
        (*(v77 + 96))(v85, v89);
        v92 = v108;
        v91 = v109;
        v93 = v110;
        (*(v109 + 32))(v108, v85, v110);
        v94 = sub_26EF3820C();
        v96 = v95;
        v97 = *v90 & *v82;
        v98 = v122;
        (*(v97 + 288))();
        LOBYTE(v126[0]) = 2;
        sub_26EE295F4(v94, v96, 1, v98, 0, 1, v126, v123);
        return (*(v91 + 8))(v92, v93);
      }

      v100 = (v79)(v85, v89);
      v121(v100);
      v101 = sub_26EF3826C();
      v102 = v87;
      v104 = v103;
      v105 = (v120)(v42, v102);
      v106 = v122;
      (*((*v90 & *v82) + 0x120))(v105);
      LOBYTE(v126[0]) = 2;
      v62 = v123;
      v63 = v101;
      v64 = v104;
      v65 = 0;
      v66 = v106;
    }
  }

  v67 = 0;
  v68 = 1;
  return sub_26EE295F4(v63, v64, v65, v66, v67, v68, v126, v62);
}

uint64_t sub_26EE6917C()
{
  v1 = sub_26EF3824C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF3823C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_26EF383FC();
  v13 = *(v50 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v50, v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - v20;
  if (TTSIsInternalBuild())
  {
    v45 = v12;
    v46 = v8;
    v47 = v7;
    v22 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
    v49 = v1;
    v22();
    v23 = sub_26EF3829C();
    v48 = v6;
    v24 = v2;
    v26 = v25;
    v27 = *(v13 + 8);
    v28 = v21;
    v29 = v50;
    v30 = v27(v28, v50);
    v53 = v23;
    v54 = v26;
    v31 = v24;
    v32 = v48;
    v33 = v49;
    (v22)(v30);
    sub_26EF382DC();
    v27(v18, v29);
    if ((*(v31 + 88))(v32, v33) == *MEMORY[0x277D70240])
    {
      (*(v31 + 96))(v32, v33);
      v35 = v46;
      v34 = v47;
      v36 = v32;
      v37 = v45;
      (*(v46 + 32))(v45, v36, v47);
      sub_26EF3B40C();
      v38 = MEMORY[0x2743834C0]();
      v39 = *MEMORY[0x277CE7918];
      swift_beginAccess();
      v40 = *(v38 + v39);

      LOBYTE(v38) = sub_26EF3B3EC();
      if (v38)
      {
        v51 = 10272;
        v52 = 0xE200000000000000;
        v41 = sub_26EF3822C();
        MEMORY[0x274383240](v41);

        MEMORY[0x274383240](41, 0xE100000000000000);
        MEMORY[0x274383240](v51, v52);
      }

      (*(v35 + 8))(v37, v34);
    }

    else
    {
      (*(v31 + 8))(v32, v33);
    }

    return v53;
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
    v42 = sub_26EF3829C();
    (*(v13 + 8))(v21, v50);
    return v42;
  }
}

uint64_t sub_26EE6960C(uint64_t (*a1)(uint64_t))
{
  v3 = sub_26EF383FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))(v7);
  v11 = a1(v10);
  (*(v4 + 8))(v9, v3);
  return v11 | ((HIDWORD(v11) & 1) << 32);
}

uint64_t sub_26EE697E4(uint64_t a1, void **a2)
{
  v4 = sub_26EF37FEC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x128))(v8);
}

uint64_t sub_26EE6991C@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v3) + 0x198))();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, &v3[v7], v8);
}

uint64_t sub_26EE69A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15 - v11;
  (*(v8 + 16))(&v15 - v11, a2, v7);
  v13 = *a4;
  swift_beginAccess();
  (*(v8 + 40))(a1 + v13, v12, v7);
  return swift_endAccess();
}

void (*sub_26EE69B14(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable);
  sub_26EF3802C();

  v4[7] = sub_26EE69728();
  return sub_26EE69C74;
}

uint64_t sub_26EE69C98(uint64_t (*a1)(uint64_t))
{
  v3 = sub_26EF383FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))(v7);
  v11 = a1(v10);
  (*(v4 + 8))(v9, v3);
  return v11;
}

void *sub_26EE69E10@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))(&v5);
  v4 = BYTE4(v5);
  *a2 = v5;
  *(a2 + 4) = v4;
  return result;
}

uint64_t sub_26EE69E8C(int *a1, void **a2)
{
  v2 = *(a1 + 4);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return (*((*MEMORY[0x277D85000] & *v3) + 0x168))(&v5);
}

uint64_t sub_26EE69F04@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))();

  v3 = v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState;
  result = swift_beginAccess();
  v5 = v3[4];
  *a1 = *v3;
  *(a1 + 4) = v5;
  return result;
}

void (*sub_26EE69FB8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable);
  sub_26EF3802C();

  v4[7] = sub_26EE69DB0();
  return sub_26EE6A118;
}

void sub_26EE6A124()
{
  v1 = v0;
  v2 = sub_26EF383AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v25 - v10;
  v12 = sub_26EF383FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xC8))(v16);
  sub_26EF383CC();
  (*(v13 + 8))(v18, v12);
  sub_26EF3839C();
  sub_26EE73470(&qword_2806C7E18, MEMORY[0x277D702B8]);
  v20 = sub_26EF3B63C();
  v21 = *(v3 + 8);
  v21(v8, v2);
  v22 = (v21)(v11, v2);
  if (v20)
  {
    v26 = 1;
    v27 = 2;
    v22 = (*((*v19 & *v1) + 0x168))(&v26);
  }

  v23 = (*((*v19 & *v1) + 0x98))(v22);
  if (v23)
  {
    v24 = v23;
    (*((*v19 & *v23) + 0x158))(v1);
  }
}

uint64_t sub_26EE6A41C(float a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x160);
  v4(&v6);
  sub_26EE733B4();
  result = sub_26EF3B0AC();
  if ((result & 1) == 0)
  {
    v4(&v6);
    result = sub_26EF3B0AC();
    if ((result & 1) == 0)
    {
      *&v6 = a1;
      BYTE4(v6) = 0;
      return (*((*v3 & *v1) + 0x168))(&v6);
    }
  }

  return result;
}

void sub_26EE6A578()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  if (v2)
  {
    v3 = v2;
    (*((*v1 & *v2) + 0x150))(v0);
  }
}

void *sub_26EE6A63C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26EF383AC();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v30 = &v30 - v10;
  v11 = sub_26EF383FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v18(v15);
  v19 = a1;
  v20 = MEMORY[0x274380370](v17, a1);
  v21 = *(v12 + 8);
  result = v21(v17, v11);
  if ((v20 & 1) == 0)
  {
    (*(v12 + 16))(v17, v19, v11);
    v23 = (*((*MEMORY[0x277D85000] & *v2) + 0xD0))(v17);
    v18(v23);
    v24 = v30;
    sub_26EF383CC();
    v21(v17, v11);
    v25 = v31;
    sub_26EF3830C();
    sub_26EE73470(&qword_2806C7E18, MEMORY[0x277D702B8]);
    v26 = v33;
    v27 = sub_26EF3B63C();
    v28 = *(v32 + 8);
    v28(v25, v26);
    result = (v28)(v24, v26);
    if ((v27 & 1) == 0 || (result = (*((*MEMORY[0x277D85000] & *v2) + 0x160))(&v34, result), BYTE4(v34)))
    {
      MEMORY[0x28223BE20](result, v29);
      *(&v30 - 2) = v2;
      sub_26EF3AEAC();
      sub_26EF3992C();
    }
  }

  return result;
}

uint64_t sub_26EE6A9D8(void *a1)
{
  v2 = sub_26EF382EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF383FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0xC8))(v12);
  sub_26EF383BC();
  v16 = (*(v3 + 88))(v7, v2);
  if (v16 == *MEMORY[0x277D702A0])
  {
    (*(v9 + 8))(v14, v8);
    (*(v3 + 96))(v7, v2);
    v17 = *v7;
    v18 = 1;
LABEL_7:
    v21 = v17;
    v22 = v18;
    return (*((*v15 & *a1) + 0x168))(&v21);
  }

  if (v16 == *MEMORY[0x277D70298])
  {
    (*(v9 + 8))(v14, v8);
    v17 = 0;
    v18 = 2;
    goto LABEL_7;
  }

  if (v16 == *MEMORY[0x277D70290])
  {
    (*(v9 + 8))(v14, v8);
    v18 = 2;
    v17 = 1;
    goto LABEL_7;
  }

  result = sub_26EF3B81C();
  __break(1u);
  return result;
}

id CoreSynthesisVoicePickable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSynthesisVoicePickable(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EE6B21C@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **v1) + 0xF0))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26EE6B278()
{
  v1 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher__pickableStreams);

  sub_26EF385AC();
}

uint64_t sub_26EE6B2C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_26EE6B324(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);

  return v3(v4);
}

uint64_t sub_26EE6B388()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentIdMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_26EE6B3D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentIdMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CoreSynthesisVoicePickableFetcher.filterBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock);
  v2 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock + 8);
  sub_26EE21114(v1);
  return v1;
}

void *sub_26EE6B4C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26EF3B79C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_26EE7123C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2743837E0](v5, a1);
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_26EE7123C((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_26EE73470(&qword_2806C7EB8, type metadata accessor for CoreSynthesisVoicePickable);
        *(v17 + 16) = v8 + 1;
        v10 = v17 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v17 + 16);
        v13 = *(v17 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          sub_26EE7123C((v13 > 1), v12 + 1, 1);
        }

        v15 = sub_26EE73470(&qword_2806C7EB8, type metadata accessor for CoreSynthesisVoicePickable);
        *(v17 + 16) = v12 + 1;
        v16 = v17 + 16 * v12;
        *(v16 + 32) = v14;
        *(v16 + 40) = v15;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t CoreSynthesisVoicePickableFetcher.requiredTraits.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_requiredTraits;
  v4 = sub_26EF383AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CoreSynthesisVoicePickableFetcher.SiriVoicePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

void *sub_26EE6B7B4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_26EE6B820(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0xF0))(&v4);
}

uint64_t sub_26EE6B888@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_siriVoicePolicy;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_26EE6B8DC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_siriVoicePolicy;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

char *CoreSynthesisVoicePickableFetcher.__allocating_init(source:requiredTraits:siriPolicy:filterBlock:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = *a3;
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher__pickableStreams;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E28, &unk_26EF3F610);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v12[v14] = sub_26EF3857C();
  v18 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_assetService;
  *&v12[v18] = [objc_allocWithZone(MEMORY[0x277CE6678]) init];
  *&v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentIdMap] = MEMORY[0x277D84F98];
  *&v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices] = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_databaseClient;
  sub_26EF384AC();
  *&v12[v19] = sub_26EF3849C();
  sub_26EE7354C(a1, &v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_source]);
  v20 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_requiredTraits;
  v21 = sub_26EF383AC();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v12[v20], a2, v21);
  v23 = &v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock];
  *v23 = a4;
  v23[1] = a5;
  v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_siriVoicePolicy] = v13;
  sub_26EE21114(a4);
  v32.receiver = v12;
  v32.super_class = v6;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  v25 = *&v24[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher__pickableStreams];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v24;

  sub_26EF3858C();

  v28 = MEMORY[0x277D85000];
  v29 = (*((*MEMORY[0x277D85000] & *v26) + 0x120))(v27);
  (*((*v28 & *v26) + 0x108))(v29);

  sub_26EE18828(a4);
  (*(v22 + 8))(a2, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v26;
}

char *CoreSynthesisVoicePickableFetcher.init(source:requiredTraits:siriPolicy:filterBlock:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  v12 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher__pickableStreams;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E28, &unk_26EF3F610);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v5[v12] = sub_26EF3857C();
  v16 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_assetService;
  *&v6[v16] = [objc_allocWithZone(MEMORY[0x277CE6678]) init];
  *&v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentIdMap] = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices] = MEMORY[0x277D84F90];
  v17 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_databaseClient;
  sub_26EF384AC();
  *&v6[v17] = sub_26EF3849C();
  sub_26EE7354C(a1, &v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_source]);
  v18 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_requiredTraits;
  v19 = sub_26EF383AC();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v6[v18], a2, v19);
  v21 = &v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock];
  *v21 = a4;
  v21[1] = a5;
  v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_siriVoicePolicy] = v11;
  sub_26EE21114(a4);
  v29.receiver = v6;
  v29.super_class = type metadata accessor for CoreSynthesisVoicePickableFetcher(0);
  v22 = objc_msgSendSuper2(&v29, sel_init);
  v23 = *&v22[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher__pickableStreams];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = v22;

  sub_26EF3858C();

  v26 = MEMORY[0x277D85000];
  v27 = (*((*MEMORY[0x277D85000] & *v24) + 0x120))(v25);
  (*((*v26 & *v24) + 0x108))(v27);

  sub_26EE18828(a4);
  (*(v20 + 8))(a2, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v24;
}

uint64_t sub_26EE6BF50(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26EE6BF70, 0, 0);
}

uint64_t sub_26EE6BF70()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices);
    v4 = Strong;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v5 = v0[5];
  v6 = sub_26EE6B4C8(v3);

  *v5 = v6;
  v7 = v0[1];

  return v7();
}

id CoreSynthesisVoicePickableFetcher.__deallocating_deinit()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x110))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSynthesisVoicePickableFetcher(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EE6C218()
{
  v1 = sub_26EF383FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_26EE73720(v7);

  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  v89 = v2 + 16;
  v13 = (v2 + 8);

  v14 = 0;
  v84 = 0;
  v83 = MEMORY[0x277D84F90];
LABEL_4:
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
LABEL_9:
      (*(v2 + 16))(v6, *(v8 + 48) + *(v2 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v1);
      v16 = v84;
      sub_26EE6CA28(v6, v82, v91);
      v84 = v16;
      if (v16)
      {

        (*v13)(v6, v1);

        __break(1u);
        return result;
      }

      v11 &= v11 - 1;
      (*v13)(v6, v1);
      v0 = v91[0];
      if (v91[0])
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_26EE71BCC(0, v83[2] + 1, 1, v83);
        }

        v18 = v83[2];
        v17 = v83[3];
        v19 = (v18 + 1);
        if (v18 >= v17 >> 1)
        {
          v87 = v83[2];
          v88 = (v18 + 1);
          v21 = sub_26EE71BCC((v17 > 1), v18 + 1, 1, v83);
          v18 = v87;
          v19 = v88;
          v83 = v21;
        }

        v20 = v83;
        v83[2] = v19;
        v20[v18 + 4] = v0;
      }

      goto LABEL_4;
    }
  }

  v22 = v83;
  v23 = v83[2];
  if (v23)
  {
    v24 = 0;
    v25 = MEMORY[0x277D84F90];
    v88 = v83 + 4;
    v81 = v23;
    while (1)
    {
      if (v24 >= v22[2])
      {
        goto LABEL_71;
      }

      v26 = v88[v24];
      v27 = v26 >> 62;
      if (v26 >> 62)
      {
        if (v26 < 0)
        {
          v46 = v88[v24];
        }

        v28 = sub_26EF3B79C();
      }

      else
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v0 = v25 >> 62;
      if (v25 >> 62)
      {
        v47 = sub_26EF3B79C();
        v30 = v47 + v28;
        if (__OFADD__(v47, v28))
        {
          goto LABEL_72;
        }
      }

      else
      {
        v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v30 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          goto LABEL_72;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v0)
      {
        isUniquelyReferenced_nonNull_bridgeObject = 0;
      }

      if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v32 = v25 & 0xFFFFFFFFFFFFFF8, v33 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18), v89 = v25, v30 > (v33 >> 1)))
      {
        if (v0)
        {
          sub_26EF3B79C();
        }

        else
        {
          v34 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v89 = sub_26EF3B72C();
        v32 = v89 & 0xFFFFFFFFFFFFFF8;
      }

      v35 = *(v32 + 16);
      v0 = *(v32 + 24);
      if (v27)
      {
        v37 = v32;
        v38 = sub_26EF3B79C();
        v32 = v37;
        v36 = v38;
        if (!v38)
        {
LABEL_18:

          if (v28 > 0)
          {
            goto LABEL_73;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v36 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v36)
        {
          goto LABEL_18;
        }
      }

      if (((v0 >> 1) - v35) < v28)
      {
        goto LABEL_76;
      }

      v39 = v32 + 8 * v35 + 32;
      v87 = v32;
      if (v27)
      {
        v0 = &qword_2806C7E58;
        if (v36 < 1)
        {
          goto LABEL_78;
        }

        v85 = v28;
        *&v86 = v24;
        sub_26EE154C8(&qword_2806C7E60, &qword_2806C7E58, &unk_26EF3F638);
        for (i = 0; i != v36; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E58, &unk_26EF3F638);
          v0 = sub_26EE72CD8(v91, i, v26);
          v42 = *v41;
          (v0)(v91, 0);
          *(v39 + 8 * i) = v42;
        }

        v22 = v83;
        v23 = v81;
        v28 = v85;
        v24 = v86;
      }

      else
      {
        type metadata accessor for CoreSynthesisVoicePickable(0);
        swift_arrayInitWithCopy();
      }

      if (v28 > 0)
      {
        v43 = *(v87 + 2);
        v44 = __OFADD__(v43, v28);
        v45 = v43 + v28;
        if (v44)
        {
          goto LABEL_77;
        }

        *(v87 + 2) = v45;
      }

LABEL_19:
      ++v24;
      v25 = v89;
      if (v24 == v23)
      {
        goto LABEL_54;
      }
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_54:

  v48 = v82;
  v49 = *(v82 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices);
  *(v82 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices) = v25;

  v85 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices;
  v0 = *(v48 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices);
  if (v0 >> 62)
  {
    goto LABEL_79;
  }

  for (j = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_26EF3B79C())
  {

    if (!j)
    {
      break;
    }

    v88 = (v0 & 0xFFFFFFFFFFFFFF8);
    v89 = v0 & 0xC000000000000001;
    v51 = MEMORY[0x277D84F98];
    v52 = 4;
    v86 = xmmword_26EF3F560;
    v87 = v0;
    while (1)
    {
      v59 = v52 - 4;
      if (v89)
      {
        v60 = MEMORY[0x2743837E0](v52 - 4, v0);
      }

      else
      {
        if (v59 >= v88[2])
        {
          goto LABEL_75;
        }

        v60 = *(v0 + 8 * v52);
      }

      v61 = v60;
      v62 = v52 - 3;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v63 = j;
      v64 = *((*MEMORY[0x277D85000] & *v60) + 0xF0);

      v66 = (v64)(v65);
      v68 = v67;
      v69 = v64();
      if (v51[2])
      {
        v71 = sub_26EE1FCF4(v69, v70);
        v73 = v72;

        v53 = MEMORY[0x277D84F90];
        if (v73)
        {
          v53 = *(v51[7] + 8 * v71);
        }
      }

      else
      {

        v53 = MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EB0, &qword_26EF3F8A0);
      inited = swift_initStackObject();
      *(inited + 16) = v86;
      *(inited + 32) = v61;
      v90 = v53;
      v55 = v61;
      sub_26EE7148C(inited);
      v56 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v51;
      sub_26EE71824(v56, v66, v68, isUniquelyReferenced_nonNull_native);

      v51 = v90;
      ++v52;
      j = v63;
      v58 = v62 == v63;
      v0 = v87;
      if (v58)
      {
        goto LABEL_69;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v51 = MEMORY[0x277D84F98];
LABEL_69:

  v74 = v82;
  (*((*MEMORY[0x277D85000] & *v82) + 0xC0))(v51);
  v75 = *(v74 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher__pickableStreams);
  v76 = *(v74 + v85);

  v78 = sub_26EE6B4C8(v77);

  v90 = v78;
  sub_26EF3859C();
}

void sub_26EE6CA28(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v195 = a3;
  v198 = a2;
  v180 = sub_26EF383DC();
  v178 = *(v180 - 8);
  v4 = *(v178 + 64);
  v6 = MEMORY[0x28223BE20](v180, v5);
  v181 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v179 = &v169 - v9;
  v194 = sub_26EF3824C();
  v197 = *(v194 - 8);
  v10 = *(v197 + 64);
  v12 = MEMORY[0x28223BE20](v194, v11);
  v14 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v193 = &v169 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v191 = &v169 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v192 = &v169 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v185 = &v169 - v25;
  v186 = sub_26EF3823C();
  v188 = *(v186 - 8);
  v26 = *(v188 + 64);
  v28 = MEMORY[0x28223BE20](v186, v27);
  v171 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v176 = &v169 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v175 = &v169 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v172 = &v169 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v173 = &v169 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v174 = &v169 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v184 = &v169 - v46;
  v47 = sub_26EF383AC();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v51 = MEMORY[0x28223BE20](v47, v50);
  v53 = &v169 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v54);
  v56 = &v169 - v55;
  sub_26EF383CC();
  sub_26EF3836C();
  v57 = sub_26EE73470(&qword_2806C7E18, MEMORY[0x277D702B8]);
  v58 = sub_26EF3B63C();
  v61 = *(v48 + 8);
  v59 = v48 + 8;
  v60 = v61;
  v61(v53, v47);
  v62 = (v61)(v56, v47);
  v63 = v198;
  v187 = v53;
  v189 = v61;
  v190 = v56;
  v183 = v14;
  if ((v58 & 1) == 0)
  {
LABEL_13:
    v79 = v63;
    sub_26EF383CC();
    sub_26EF3834C();
    v185 = v57;
    v80 = sub_26EF3B63C();
    v60(v53, v47);
    v60(v56, v47);
    v81 = a1;
    v82 = v193;
    if (v80)
    {
      v170 = v59;
      v182 = v47;
      v83 = v193;
      sub_26EF382DC();
      v84 = v194;
      (*(v197 + 104))(v191, *MEMORY[0x277D70248], v194);
      sub_26EE73470(&qword_2806C7E20, MEMORY[0x277D70260]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v199 == v203 && v200 == v204)
      {
        v85 = *(v197 + 8);
        v85(v191, v84);
        v85(v192, v84);

        goto LABEL_59;
      }

      LODWORD(v184) = sub_26EF3B82C();
      v82 = v83;
      v86 = *(v197 + 8);
      v86(v191, v84);
      v86(v192, v84);

      v47 = v182;
      if (v184)
      {
        goto LABEL_59;
      }
    }

    v87 = *(v79 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock);
    if (v87)
    {
      v88 = *(v79 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock + 8);

      v89 = v87(v81);
      sub_26EE18828(v87);
      if ((v89 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v90 = v190;
    sub_26EF383CC();
    v91 = v187;
    sub_26EF3835C();
    v92 = sub_26EF3B63C();
    v93 = v91;
    v94 = v189;
    v189(v93, v47);
    v94(v90, v47);
    if (v92)
    {
      goto LABEL_59;
    }

    sub_26EF382DC();
    v95 = v183;
    (*(v188 + 104))(v183, *MEMORY[0x277D70200], v186);
    v96 = v197;
    v97 = v194;
    (*(v197 + 104))(v95, *MEMORY[0x277D70240], v194);
    sub_26EE73470(&qword_2806C7E20, MEMORY[0x277D70260]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v199 == v203 && v200 == v204)
    {
      v98 = *(v96 + 8);
      v98(v95, v97);
      v98(v82, v97);
    }

    else
    {
      v99 = sub_26EF3B82C();
      v100 = *(v96 + 8);
      v100(v95, v97);
      v100(v82, v97);

      if ((v99 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v101 = v179;
    sub_26EF383EC();
    v102 = v178;
    v103 = v181;
    v104 = v180;
    (*(v178 + 104))(v181, *MEMORY[0x277D702D8], v180);
    sub_26EE73470(&qword_2806C7EE0, MEMORY[0x277D702E0]);
    v105 = sub_26EF3B0AC();
    v106 = *(v102 + 8);
    v106(v103, v104);
    v106(v101, v104);
    if ((v105 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_26:
    v107 = sub_26EF382BC();
    v109 = v108;
    v110 = MEMORY[0x277D85000];
    v111 = (*((*MEMORY[0x277D85000] & *v198) + 0xB8))();
    if (*(v111 + 16))
    {
      v112 = sub_26EE1FCF4(v107, v109);
      v114 = v113;

      if (v114)
      {
        v115 = *(*(v111 + 56) + 8 * v112);

        if (v115 >> 62)
        {
          v116 = sub_26EF3B79C();
          if (!v116)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v116 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v116)
          {
            goto LABEL_75;
          }
        }

        if (v116 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v116; ++i)
        {
          if ((v115 & 0xC000000000000001) != 0)
          {
            v118 = MEMORY[0x2743837E0](i, v115);
          }

          else
          {
            v118 = *(v115 + 8 * i + 32);
          }

          v119 = v118;
          (*((*v110 & *v118) + 0x190))(v81);
        }

LABEL_75:
        *v195 = v115;
        return;
      }
    }

    else
    {
    }

    sub_26EF3828C();
    v125 = v201;
    v126 = v202;
    v127 = __swift_project_boxed_opaque_existential_1(&v199, v201);
    MEMORY[0x28223BE20](v127, v128);
    v129 = v198;
    *(&v169 - 2) = v81;
    *(&v169 - 1) = v129;
    v130 = type metadata accessor for CoreSynthesisVoicePickable(0);
    v131 = v196;
    v133 = sub_26EE6E328(sub_26EE74A18, (&v169 - 4), v125, v130, MEMORY[0x277D84A98], v126, MEMORY[0x277D84AC0], v132);
    v196 = v131;
    *v195 = v133;
    __swift_destroy_boxed_opaque_existential_1(&v199);
    return;
  }

  v64 = v59;
  v177 = a1;
  v65 = *((*MEMORY[0x277D85000] & *v198) + 0xE8);
  v65(&v199, v62);
  if (v199)
  {
    v182 = v47;
    v66 = v185;
    sub_26EF382DC();
    v67 = v197;
    v68 = v194;
    if ((*(v197 + 88))(v66, v194) != *MEMORY[0x277D70240])
    {
      (*(v67 + 8))(v66, v68);
      a1 = v177;
      v47 = v182;
      v63 = v198;
      v53 = v187;
      v60 = v189;
      v56 = v190;
      goto LABEL_13;
    }

    (*(v67 + 96))(v66, v68);
    v69 = v184;
    v70 = v186;
    v71 = (*(v188 + 32))(v184, v66, v186);
    v65(&v205, v71);
    v72 = v57;
    if (!v205)
    {
      (*(v188 + 8))(v69, v70);
      v47 = v182;
      v78 = v64;
LABEL_12:
      a1 = v177;
      v53 = v187;
      v60 = v189;
      v56 = v190;
      v57 = v72;
      v63 = v198;
      v59 = v78;
      goto LABEL_13;
    }

    v170 = v64;
    if (v205 != 1)
    {
      v120 = *MEMORY[0x277D70218];
      v121 = *(v188 + 104);
      v122 = v175;
      v185 = (v188 + 104);
      v174 = v121;
      (v121)(v175, v120, v70);
      v123 = sub_26EE73470(&qword_2806C7EE8, MEMORY[0x277D70228]);
      sub_26EF3B1DC();
      v173 = v123;
      sub_26EF3B1DC();
      v47 = v182;
      if (v199 == v203 && v200 == v204)
      {
        v124 = 1;
      }

      else
      {
        v124 = sub_26EF3B82C();
      }

      v138 = *(v188 + 8);
      v139 = v122;
      v140 = (v188 + 8);
      v141 = v186;
      v138(v139, v186);

      if (v124)
      {
        goto LABEL_58;
      }

      v175 = v138;
      (v174)(v176, *MEMORY[0x277D70208], v141);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v199 == v203 && v200 == v204)
      {
        v142 = v175;
        (v175)(v176, v141);

        v142(v69, v141);
        goto LABEL_59;
      }

      v150 = sub_26EF3B82C();
      v138 = v175;
      (v175)(v176, v141);

      if (v150)
      {
LABEL_58:
        v138(v69, v141);
        goto LABEL_59;
      }

      (v174)(v171, *MEMORY[0x277D70210], v141);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v199 == v203 && v200 == v204)
      {
        v158 = v186;
        v159 = v175;
        (v175)(v171, v186);

        goto LABEL_70;
      }

      v160 = sub_26EF3B82C();
      v158 = v186;
      v159 = v175;
      (v175)(v171, v186);

      if (v160)
      {
LABEL_70:
        v161 = v69;
        v162 = v190;
        sub_26EF383CC();
        v185 = v140;
        v163 = v187;
        sub_26EF3833C();
        v164 = sub_26EF3B63C();
        v165 = v163;
        v166 = v189;
        v167 = v170;
        v189(v165, v47);
        v166(v162, v47);
        v168 = v161;
        v78 = v167;
        v159(v168, v158);
        v151 = v195;
        if (v164)
        {
          goto LABEL_60;
        }

        goto LABEL_12;
      }

      v159(v69, v158);
      goto LABEL_73;
    }

    v73 = *MEMORY[0x277D70220];
    v74 = *(v188 + 104);
    v75 = v174;
    v185 = (v188 + 104);
    v176 = v74;
    (v74)(v174, v73, v70);
    v76 = sub_26EE73470(&qword_2806C7EE8, MEMORY[0x277D70228]);
    sub_26EF3B1DC();
    v175 = v76;
    sub_26EF3B1DC();
    if (v199 == v203 && v200 == v204)
    {
      v77 = 1;
    }

    else
    {
      v77 = sub_26EF3B82C();
    }

    v134 = *(v188 + 8);
    v135 = v75;
    v136 = v186;
    v134(v135, v186);

    if (v77)
    {
LABEL_53:
      v134(v69, v136);
      goto LABEL_59;
    }

    v137 = v173;
    (v176)(v173, *MEMORY[0x277D70210], v136);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v199 == v203 && v200 == v204)
    {
      v134(v137, v136);
    }

    else
    {
      v143 = sub_26EF3B82C();
      v134(v137, v136);

      if ((v143 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    v144 = v190;
    sub_26EF3831C();
    v145 = sub_26EF382CC();
    v189(v144, v182);
    if (v145)
    {
      goto LABEL_53;
    }

LABEL_54:
    v146 = v172;
    (v176)(v172, *MEMORY[0x277D70208], v136);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v199 == v203 && v200 == v204)
    {
      v134(v146, v136);

      v148 = v189;
      v147 = v190;
      v149 = v134;
      v72 = v57;
    }

    else
    {
      v152 = sub_26EF3B82C();
      v134(v146, v136);

      v148 = v189;
      v147 = v190;
      v149 = v134;
      v72 = v57;
      if ((v152 & 1) == 0)
      {
        v149(v184, v136);
        v47 = v182;
LABEL_73:
        v78 = v170;
        goto LABEL_12;
      }
    }

    v153 = v149;
    sub_26EF3832C();
    v154 = sub_26EF382CC();
    v155 = v147;
    v47 = v182;
    v156 = v170;
    v148(v155, v182);
    v157 = v136;
    v78 = v156;
    v153(v184, v157);
    v151 = v195;
    if (v154)
    {
      goto LABEL_60;
    }

    goto LABEL_12;
  }

LABEL_59:
  v151 = v195;
LABEL_60:
  *v151 = 0;
}

void sub_26EE6DF4C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v43 = a3;
  v45 = a1;
  v46 = a4;
  v5 = sub_26EF382EC();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26EF37FEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26EF383FC();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v22(v21, a2, v16);
  v44 = v11;
  v41 = *(v11 + 16);
  v42 = v15;
  v23 = v45;
  v45 = v10;
  v41(v15, v23, v10);
  v40 = type metadata accessor for CoreSynthesisVoicePickable(0);
  v24 = objc_allocWithZone(v40);
  v25 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__fetcher;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v37 = v43;
  sub_26EF3803C();
  v43 = v16;
  v26 = v16;
  v27 = v39;
  v22(&v24[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__voice], v21, v26);
  v28 = v38;
  sub_26EF383BC();
  v29 = (*(v28 + 88))(v9, v27);
  if (v29 == *MEMORY[0x277D702A0])
  {
    (*(v28 + 96))(v9, v27);
    v30 = *v9;
    v31 = 1;
LABEL_7:
    v32 = &v24[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState];
    *v32 = v30;
    v32[4] = v31;
    v33 = v37;
    MEMORY[0x274384370](&v24[v25]);
    swift_unknownObjectWeakInit();

    v34 = v42;
    v35 = v45;
    v41(&v24[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__locale], v42, v45);
    v47.receiver = v24;
    v47.super_class = v40;
    v36 = objc_msgSendSuper2(&v47, sel_init);
    (*(v44 + 8))(v34, v35);
    (*(v17 + 8))(v21, v43);

    *v46 = v36;
    return;
  }

  if (v29 == *MEMORY[0x277D70298])
  {
    v30 = 0;
    v31 = 2;
    goto LABEL_7;
  }

  if (v29 == *MEMORY[0x277D70290])
  {
    v31 = 2;
    v30 = 1;
    goto LABEL_7;
  }

  sub_26EF3B81C();
  __break(1u);
}

uint64_t sub_26EE6E328(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_26EF3B38C();
  if (!v29)
  {
    return sub_26EF3B23C();
  }

  v51 = v29;
  v55 = sub_26EF3B76C();
  v42 = sub_26EF3B77C();
  sub_26EF3B74C();
  result = sub_26EF3B37C();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_26EF3B3AC();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_26EF3B75C();
      result = sub_26EF3B39C();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE6E748()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_source + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_source), *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_source + 24));
  sub_26EF3808C();
  v16 = sub_26EF3B30C();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v11, v14, v6);
  v18 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v17;
  (*(v7 + 32))(&v19[v18], v11, v6);
  sub_26EE6F2A4(0, 0, v5, &unk_26EF3F658, v19);

  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_26EE6E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EA0, &qword_26EF3F890);
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EE6EA8C, 0, 0);
}

uint64_t sub_26EE6EA8C()
{
  v1 = v0[15];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = *(MEMORY[0x277CE6750] + 4);
    v4 = swift_task_alloc();
    v0[21] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
    *v4 = v0;
    v4[1] = sub_26EE6EC2C;
    v6 = v0[16];

    return MEMORY[0x282138898](v0 + 13, v5);
  }

  else
  {
    v7 = v0[19];
    v9 = v0[15];
    v8 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
    sub_26EF3856C();
    swift_beginAccess();
    v10 = *(MEMORY[0x277D85798] + 4);
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_26EE6EEFC;
    v12 = v0[19];
    v13 = v0[17];

    return MEMORY[0x2822003E8](v0 + 14, 0, 0, v13);
  }
}

uint64_t sub_26EE6EC2C()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26EE6ED28, 0, 0);
}

uint64_t sub_26EE6ED28()
{
  v16 = v0;
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_26EE7125C(*(v1 + 16), 0);
    v4 = *(sub_26EF383FC() - 8);
    v5 = sub_26EE72D60(&v15, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, v1);
    sub_26EE74A10();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = v0[20];
  (*((*MEMORY[0x277D85000] & *v6) + 0x118))(v3);

  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
  sub_26EF3856C();
  swift_beginAccess();
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_26EE6EEFC;
  v12 = v0[19];
  v13 = v0[17];

  return MEMORY[0x2822003E8](v0 + 14, 0, 0, v13);
}

uint64_t sub_26EE6EEFC()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26EE6EFF8, 0, 0);
}

uint64_t sub_26EE6EFF8()
{
  v1 = v0[14];
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v0[15];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    goto LABEL_13;
  }

  v4 = Strong;
  v5 = *(v1 + 16);
  if (!v5)
  {

    v9 = MEMORY[0x277D84F90];
LABEL_17:
    (*((*MEMORY[0x277D85000] & *v4) + 0x118))(v9);

    v24 = *(MEMORY[0x277D85798] + 4);
    v25 = swift_task_alloc();
    v0[22] = v25;
    *v25 = v0;
    v25[1] = sub_26EE6EEFC;
    v26 = v0[19];
    v13 = v0[17];
    v10 = (v0 + 14);
    v11 = 0;
    v12 = 0;

    return MEMORY[0x2822003E8](v10, v11, v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EA8, &qword_26EF3F898);
  v6 = *(sub_26EF383FC() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v10 = _swift_stdlib_malloc_size(v9);
  if (!v7)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x2822003E8](v10, v11, v12, v13);
  }

  if (v10 - v8 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_21;
  }

  v9[2] = v5;
  v9[3] = 2 * ((v10 - v8) / v7);
  v15 = sub_26EE72D60((v0 + 2), v9 + v8, v5, v1);
  v16 = v0[2];
  v17 = v0[3];
  v18 = v0[4];
  v19 = v0[5];
  v20 = v0[6];
  sub_26EE74A10();
  if (v15 == v5)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_11:
  (*(v0[18] + 8))(v0[19], v0[17]);
LABEL_13:
  v21 = v0[19];

  v22 = v0[1];

  return v22();
}

uint64_t sub_26EE6F2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_26EE74938(a3, v25 - v11);
  v13 = sub_26EF3B30C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26EE749A8(v12);
  }

  else
  {
    sub_26EF3B2FC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26EF3B29C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26EF3B12C() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_26EE749A8(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26EE749A8(a3);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26EE6F510(uint64_t a1, uint64_t a2, float a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))();
  if (*(v8 + 16) && (v9 = sub_26EE1FCF4(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26EF3B79C())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2743837E0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      (*((*v7 & *v14) + 0x180))(a3);

      ++v13;
      if (v16 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
}

uint64_t sub_26EE6F6EC(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xB8))();
  if (*(v5 + 16) && (v6 = sub_26EE1FCF4(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26EF3B79C())
  {
    for (j = 0; ; ++j)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2743837E0](j, v8);
      }

      else
      {
        if (j >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(v8 + 8 * j + 32);
      }

      v13 = v11;
      v14 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      MEMORY[0x28223BE20](v11, v12);
      sub_26EF3AEAC();
      sub_26EF3992C();

      if (v14 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_26EE6F8B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = sub_26EF3B30C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = a1;
  v10 = v1;
  v11 = a1;
  sub_26EE6F2A4(0, 0, v7, &unk_26EF3F668, v9);
}

uint64_t sub_26EE6F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E90, &qword_26EF3F880);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_26EF383FC();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E98, &qword_26EF3F888);
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EE6FB58, 0, 0);
}

uint64_t sub_26EE6FB58()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_databaseClient);
  v3 = v0[10];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v5 = ((*MEMORY[0x277D85000] & *v1) + 200) & 0xFFFFFFFFFFFFLL | 0x5A18000000000000;
  v0[14] = v4;
  v0[15] = v5;
  v4();
  v6 = *(MEMORY[0x277D70360] + 4);
  v11 = (*MEMORY[0x277D70360] + MEMORY[0x277D70360]);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_26EE6FC60;
  v8 = v0[13];
  v9 = v0[10];

  return v11(v8, v9);
}

uint64_t sub_26EE6FC60()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v10 = *v1;
  v2[17] = v0;

  v7 = *(v5 + 8);
  v2[18] = v7;
  v2[19] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_26EE701AC;
  }

  else
  {
    v8 = sub_26EE6FDE4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26EE6FDE4()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  sub_26EF3B31C();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_26EE6FE9C;
  v6 = v0[6];
  v7 = v0[4];

  return MEMORY[0x2822003E8](v0 + 21, 0, 0, v7);
}

uint64_t sub_26EE6FE9C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26EE6FF98, 0, 0);
}

uint64_t sub_26EE6FF98()
{
  v1 = *(v0 + 168);
  if (*(v0 + 172))
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v3 + 8))(v2, v4);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 120);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    (*(v0 + 112))();
    v16 = sub_26EF382BC();
    v18 = v17;
    v10(v12, v13);
    (*((*MEMORY[0x277D85000] & *v15) + 0x130))(v16, v18, v1);

    v19 = *(MEMORY[0x277D85798] + 4);
    v20 = swift_task_alloc();
    *(v0 + 160) = v20;
    *v20 = v0;
    v20[1] = sub_26EE6FE9C;
    v21 = *(v0 + 48);
    v22 = *(v0 + 32);

    return MEMORY[0x2822003E8](v0 + 168, 0, 0, v22);
  }
}

uint64_t sub_26EE701AC()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_26EE70238(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v61 = &v52 - v5;
  v6 = sub_26EF382EC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x28223BE20](v6, v9);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v60 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v52 - v20;
  v22 = sub_26EF383FC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v56 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v52 - v30;
  v32 = *((*MEMORY[0x277D85000] & *a1) + 0xC8);
  v33 = (*MEMORY[0x277D85000] & *a1) + 200;
  v63 = a1;
  v54 = v33;
  v55 = v32;
  v32(v29);
  sub_26EF383BC();
  v34 = *(v23 + 8);
  v57 = v23 + 8;
  v58 = v22;
  v53 = v34;
  v34(v31, v22);
  v35 = 1;
  *v18 = 1;
  v36 = *MEMORY[0x277D702A0];
  v52 = v7[13];
  v52(v18, v36, v6);
  sub_26EE73470(&qword_2806C7E70, MEMORY[0x277D702A8]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  if (v66 != v64 || v67 != v65)
  {
    v35 = sub_26EF3B82C();
  }

  v37 = v7[1];
  v37(v18, v6);
  v37(v21, v6);

  if (v35)
  {
    v39 = &unk_26EF3F688;
    v40 = v63;
  }

  else
  {
    v41 = v56;
    v40 = v63;
    v55(v38);
    v42 = v60;
    sub_26EF383BC();
    v53(v41, v58);
    v43 = v59;
    v52(v59, *MEMORY[0x277D70290], v6);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v66 == v64 && v67 == v65)
    {
      v37(v43, v6);
      v37(v42, v6);
    }

    else
    {
      v44 = sub_26EF3B82C();
      v37(v43, v6);
      v37(v42, v6);

      if ((v44 & 1) == 0)
      {
        return result;
      }
    }

    v39 = &unk_26EF3F678;
  }

  v46 = sub_26EF3B30C();
  v47 = v61;
  (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v49 = v62;
  v48[4] = v62;
  v48[5] = v40;
  v50 = v49;
  v51 = v40;
  sub_26EE6F2A4(0, 0, v47, v39, v48);
}

uint64_t sub_26EE707D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF383FC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EE708A0, 0, 0);
}

uint64_t sub_26EE708A0()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_databaseClient);
  v3 = v0[7];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v5 = ((*MEMORY[0x277D85000] & *v1) + 200) & 0xFFFFFFFFFFFFLL | 0x5A18000000000000;
  v0[8] = v4;
  v0[9] = v5;
  v4();
  v6 = *(MEMORY[0x277D70358] + 4);
  v10 = (*MEMORY[0x277D70358] + MEMORY[0x277D70358]);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_26EE709A4;
  v8 = v0[7];

  return v10(v8);
}

uint64_t sub_26EE709A4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v10 = *v1;
  v2[11] = v0;

  v7 = *(v5 + 8);
  v2[12] = v7;
  v2[13] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_26EE74A50;
  }

  else
  {
    v8 = sub_26EE70B28;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26EE70B28()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  (*(v0 + 64))();
  v9 = sub_26EF382BC();
  v11 = v10;
  v2(v5, v7);
  (*((*MEMORY[0x277D85000] & *v8) + 0x138))(v9, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26EE70C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF383FC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EE70D0C, 0, 0);
}

uint64_t sub_26EE70D0C()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_databaseClient);
  v3 = v0[7];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v5 = ((*MEMORY[0x277D85000] & *v1) + 200) & 0xFFFFFFFFFFFFLL | 0x5A18000000000000;
  v0[8] = v4;
  v0[9] = v5;
  v4();
  v6 = *(MEMORY[0x277D70350] + 4);
  v10 = (*MEMORY[0x277D70350] + MEMORY[0x277D70350]);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_26EE70E10;
  v8 = v0[7];

  return v10(v8);
}

uint64_t sub_26EE70E10()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v10 = *v1;
  v2[11] = v0;

  v7 = *(v5 + 8);
  v2[12] = v7;
  v2[13] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_26EE710AC;
  }

  else
  {
    v8 = sub_26EE70F94;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26EE70F94()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  (*(v0 + 64))();
  v9 = sub_26EF382BC();
  v11 = v10;
  v2(v5, v7);
  (*((*MEMORY[0x277D85000] & *v8) + 0x148))(v9, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26EE710AC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

id CoreSynthesisVoicePickableFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_26EE7123C(void *a1, int64_t a2, char a3)
{
  result = sub_26EE71358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26EE7125C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EA8, &qword_26EF3F898);
  v4 = *(sub_26EF383FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26EE71358(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC0, &qword_26EF3F8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC8, &qword_26EF3F8B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26EE7148C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26EF3B79C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_26EF3B79C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26EE71B10(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26EE72B34(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26EE7157C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7ED0, &qword_26EF3F8B8);
  v38 = a2;
  result = sub_26EF3B7BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26EE71824(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26EE1FCF4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26EE7157C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26EE1FCF4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_26EF3B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26EE719A0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_26EE719A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7ED0, &qword_26EF3F8B8);
  v2 = *v0;
  v3 = sub_26EF3B7AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26EE71B10(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_26EF3B79C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_26EF3B72C();
    *v1 = result;
  }

  return result;
}

void *sub_26EE71BCC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7ED8, &qword_26EF3F8C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E58, &unk_26EF3F638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26EE71D00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26EF383FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8]);
  v37 = a2;
  v14 = sub_26EF3B04C();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_26EE73470(&qword_2806C7DF8, MEMORY[0x277D702F8]);
      v24 = sub_26EF3B0AC();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_26EE7233C(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_26EE71FE0(uint64_t a1)
{
  v2 = v1;
  v42 = sub_26EF383FC();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EF8, &unk_26EF3F8C8);
  result = sub_26EF3B6DC();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8]);
      result = sub_26EF3B04C();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_26EE7233C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_26EF383FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26EE71FE0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_26EE725E0();
      goto LABEL_12;
    }

    sub_26EE72818(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8]);
  v16 = sub_26EF3B04C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_26EE73470(&qword_2806C7DF8, MEMORY[0x277D702F8]);
      v24 = sub_26EF3B0AC();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26EF3B85C();
  __break(1u);
  return result;
}

void *sub_26EE725E0()
{
  v1 = v0;
  v2 = sub_26EF383FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EF8, &unk_26EF3F8C8);
  v8 = *v0;
  v9 = sub_26EF3B6CC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_26EE72818(uint64_t a1)
{
  v2 = v1;
  v38 = sub_26EF383FC();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EF8, &unk_26EF3F8C8);
  v11 = sub_26EF3B6DC();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8]);
      result = sub_26EF3B04C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_26EE72B34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26EF3B79C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26EF3B79C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26EE154C8(&qword_2806C7E60, &qword_2806C7E58, &unk_26EF3F638);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E58, &unk_26EF3F638);
            v9 = sub_26EE72CD8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CoreSynthesisVoicePickable(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_26EE72CD8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2743837E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26EE72D58;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE72D60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = sub_26EF383FC();
  v45 = *(v43 - 8);
  v8 = *(v45 + 64);
  v10 = MEMORY[0x28223BE20](v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 64;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 56);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26EE73004(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = sub_26EF382EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__fetcher;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_26EF3803C();
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__voice;
  v15 = sub_26EF383FC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v4[v14], a1, v15);
  sub_26EF383BC();
  v17 = (*(v8 + 88))(v12, v7);
  if (v17 == *MEMORY[0x277D702A0])
  {
    (*(v8 + 96))(v12, v7);
    v18 = *v12;
    v19 = 1;
LABEL_7:
    v20 = &v4[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState];
    *v20 = v18;
    v20[4] = v19;
    v21 = v29;
    MEMORY[0x274384370](&v4[v13]);
    swift_unknownObjectWeakInit();

    v22 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__locale;
    v23 = sub_26EF37FEC();
    v24 = *(v23 - 8);
    (*(v24 + 16))(&v4[v22], a3, v23);
    v25 = type metadata accessor for CoreSynthesisVoicePickable(0);
    v30.receiver = v4;
    v30.super_class = v25;
    v26 = objc_msgSendSuper2(&v30, sel_init);
    (*(v24 + 8))(a3, v23);
    (*(v16 + 8))(a1, v15);
    return v26;
  }

  if (v17 == *MEMORY[0x277D70298])
  {
    v18 = 0;
    v19 = 2;
    goto LABEL_7;
  }

  if (v17 == *MEMORY[0x277D70290])
  {
    v19 = 2;
    v18 = 1;
    goto LABEL_7;
  }

  result = sub_26EF3B81C();
  __break(1u);
  return result;
}