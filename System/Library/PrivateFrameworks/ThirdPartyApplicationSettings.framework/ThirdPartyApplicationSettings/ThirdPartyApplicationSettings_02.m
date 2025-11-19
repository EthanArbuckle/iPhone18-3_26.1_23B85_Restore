uint64_t sub_21C6B936C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6B9258();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for TitleValueSettingView()
{
  result = qword_27CDE7230;
  if (!qword_27CDE7230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B9408()
{
  sub_21C6A7260();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TitleValueSetting();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21C6B948C()
{
  result = qword_27CDE6DD8;
  if (!qword_27CDE6DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6DD0, &qword_21C6D2540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6DD8);
  }

  return result;
}

uint64_t sub_21C6B950C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C6B948C();
  v6 = sub_21C6CE400();
  swift_getKeyPath();
  sub_21C6CE420();

  v7 = a1 + *(type metadata accessor for TitleValueSettingView() + 20);
  v8 = *&v7[*(type metadata accessor for TitleValueSetting() + 32)];
  v9 = type metadata accessor for PropertyListValueView();
  *(a2 + *(v9 + 20)) = v8;
  *(a2 + *(v9 + 24)) = 0;
}

uint64_t sub_21C6B95F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_21C6CDF20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = a1 + *(type metadata accessor for TitleValueSettingView() + 20);
  v17 = type metadata accessor for TitleValueSetting();
  sub_21C6A96C0(v16 + *(v17 + 20), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_21C6A9730(v7);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v12, v15, v8);
    v19 = sub_21C6CE750();
    v20 = v23;
    v25 = v24;
    v22 = v26;
    result = (*(v9 + 8))(v15, v8);
    v21 = v25 & 1;
  }

  *a2 = v19;
  a2[1] = v20;
  a2[2] = v21;
  a2[3] = v22;
  return result;
}

uint64_t sub_21C6B9800(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7240, &qword_21C6D1B10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v12 = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F70, &qword_21C6D1138);
  type metadata accessor for PropertyListValueView();
  sub_21C6AD218();
  sub_21C6B9B58(&qword_27CDE6E40, type metadata accessor for PropertyListValueView);
  sub_21C6CE350();
  v8 = v1 + *(a1 + 20);
  sub_21C6B9258();
  sub_21C6B99E0();
  sub_21C6CE7F0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21C6B99E0()
{
  result = qword_27CDE7248;
  if (!qword_27CDE7248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7240, &qword_21C6D1B10);
    sub_21C6AD218();
    sub_21C6B9B58(&qword_27CDE6E40, type metadata accessor for PropertyListValueView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7248);
  }

  return result;
}

unint64_t sub_21C6B9A9C()
{
  result = qword_27CDE7250;
  if (!qword_27CDE7250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7258, &qword_21C6D1B40);
    sub_21C6B99E0();
    sub_21C6B9B58(&qword_27CDE6D70, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7250);
  }

  return result;
}

uint64_t sub_21C6B9B58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ToggleSetting()
{
  result = qword_27CDE7260;
  if (!qword_27CDE7260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B9C14()
{
  sub_21C6CDF20();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PropertyListValue();
    if (v1 <= 0x3F)
    {
      sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21C6B9D1C()
{
  v1 = *(v0 + *(type metadata accessor for ToggleSetting() + 48));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6B9E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v92 = a7;
  v82 = a6;
  v91 = a5;
  v81 = a4;
  v93 = a3;
  v87 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v76 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v86 = type metadata accessor for PropertyListValue();
  v83 = *(v86 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v79 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v76 - v22;
  MEMORY[0x28223BE20](v23);
  v85 = &v76 - v24;
  MEMORY[0x28223BE20](v25);
  v84 = &v76 - v26;
  v27 = sub_21C6CE010();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_21C6CDF00();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21C6CEB80();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = sub_21C6CDF20();
  v88 = *(v36 - 8);
  v89 = v36;
  v37 = *(v88 + 64);
  MEMORY[0x28223BE20](v36);
  v78 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v90 = &v76 - v40;
  if (!*(a1 + 16) || (v41 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v42 & 1) == 0))
  {

    (*(v30 + 8))(v93, v29);
    goto LABEL_18;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v41, v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v30 + 8))(v93, v29);

    goto LABEL_18;
  }

  v76 = a8;
  v43 = HIBYTE(*(&v95[0] + 1)) & 0xFLL;
  if ((*(&v95[0] + 1) & 0x2000000000000000) == 0)
  {
    v43 = *&v95[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {
    (*(v30 + 8))(v93, v29);

    goto LABEL_23;
  }

  sub_21C6CEB70();
  v44 = v93;
  (*(v30 + 16))(v33, v93, v29);
  sub_21C6CE000();
  sub_21C6CDF30();
  if (!*(a1 + 16) || (v45 = sub_21C6C70F8(7955787, 0xE300000000000000), (v46 & 1) == 0))
  {

    (*(v30 + 8))(v44, v29);
    (*(v88 + 8))(v90, v89);
LABEL_23:
    a8 = v76;
    goto LABEL_18;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v45, v96);
  v47 = swift_dynamicCast();
  a8 = v76;
  if ((v47 & 1) == 0)
  {
    goto LABEL_27;
  }

  v48 = v95[0];
  v49 = HIBYTE(*(&v95[0] + 1)) & 0xFLL;
  if ((*(&v95[0] + 1) & 0x2000000000000000) == 0)
  {
    v49 = *&v95[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {

LABEL_27:

    goto LABEL_28;
  }

  if (!*(a1 + 16) || (v50 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v51 & 1) == 0))
  {

LABEL_28:

    (*(v30 + 8))(v93, v29);
    (*(v88 + 8))(v90, v89);
    goto LABEL_18;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v50, v95);
  sub_21C6A6FC0(v95, v96);
  sub_21C6A2734(v96, v95);
  sub_21C6C50F8(v95, v18);
  v52 = *(v83 + 48);
  if (v52(v18, 1, v86) != 1)
  {
    v87 = *(&v48 + 1);
    sub_21C6BAACC(v18, v84);
    if (*(a1 + 16) && (v55 = sub_21C6C70F8(0x756C615665757254, 0xE900000000000065), (v56 & 1) != 0))
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v55, v94);
      sub_21C6A6FC0(v94, v95);
      sub_21C6A2734(v95, v94);
      sub_21C6C50F8(v94, v15);
      __swift_destroy_boxed_opaque_existential_1(v95);
      v57 = v52(v15, 1, v86) == 1;
      v58 = v80;
      v59 = v77;
      if (!v57)
      {
        sub_21C6BAACC(v15, v85);
        if (!*(a1 + 16))
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }

      sub_21C6A6FD0(v15);
    }

    else
    {
      v58 = v80;
      v59 = v77;
    }

    *v85 = 1;
    swift_storeEnumTagMultiPayload();
    if (!*(a1 + 16))
    {
      goto LABEL_40;
    }

LABEL_36:
    v60 = sub_21C6C70F8(0x6C615665736C6146, 0xEA00000000006575);
    if (v61)
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v60, v94);
      sub_21C6A6FC0(v94, v95);
      sub_21C6A2734(v95, v94);
      sub_21C6C50F8(v94, v59);
      __swift_destroy_boxed_opaque_existential_1(v95);
      if (v52(v59, 1, v86) != 1)
      {
        sub_21C6BAACC(v59, v58);
        if (!*(a1 + 16))
        {
          goto LABEL_45;
        }

LABEL_41:
        v62 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170);
        if (v63)
        {
          sub_21C6A2734(*(a1 + 56) + 32 * v62, v95);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
          if (swift_dynamicCast())
          {
            (*(v30 + 8))(v93, v29);
            __swift_destroy_boxed_opaque_existential_1(v96);
            v64 = *&v94[0];
LABEL_47:
            v65 = v89;
            v66 = *(v88 + 32);
            v67 = v78;
            v66(v78, v90, v89);
            v68 = v79;
            sub_21C6BAACC(v84, v79);
            *a8 = 1;
            v69 = type metadata accessor for ToggleSetting();
            v66(&a8[v69[5]], v67, v65);
            v70 = &a8[v69[6]];
            v71 = v87;
            *v70 = v48;
            v70[1] = v71;
            sub_21C6BAACC(v68, &a8[v69[7]]);
            sub_21C6BAACC(v85, &a8[v69[8]]);
            sub_21C6BAACC(*(&v48 + 1), &a8[v69[9]]);
            v72 = &a8[v69[10]];
            v73 = v91;
            *v72 = v81;
            v72[1] = v73;
            v74 = &a8[v69[11]];
            v75 = v92;
            *v74 = v82;
            v74[1] = v75;
            *&a8[v69[12]] = v64;
            return (*(*(v69 - 1) + 56))(a8, 0, 1, v69);
          }

LABEL_46:
          (*(v30 + 8))(v93, v29);
          __swift_destroy_boxed_opaque_existential_1(v96);
          v64 = MEMORY[0x277D84F90];
          goto LABEL_47;
        }

LABEL_45:

        goto LABEL_46;
      }

      sub_21C6A6FD0(v59);
    }

LABEL_40:
    *v58 = 0;
    swift_storeEnumTagMultiPayload();
    if (!*(a1 + 16))
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  (*(v30 + 8))(v93, v29);
  __swift_destroy_boxed_opaque_existential_1(v96);
  (*(v88 + 8))(v90, v89);
  sub_21C6A6FD0(v18);
LABEL_18:
  v53 = type metadata accessor for ToggleSetting();
  return (*(*(v53 - 8) + 56))(a8, 1, 1, v53);
}

uint64_t sub_21C6BA95C()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v12 = type metadata accessor for ToggleSetting();
  MEMORY[0x21CF0F390](*&v0[*(v12 + 24)], *&v0[*(v12 + 24) + 8]);
  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v13 = &v0[*(v12 + 20)];
  v14 = sub_21C6CDF10();
  MEMORY[0x21CF0F390](v14);

  return 0;
}

uint64_t sub_21C6BAAA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6BA95C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C6BAACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6BAB30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v78 - v8;
  v79 = type metadata accessor for PropertyListValue();
  v9 = *(v79 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v79);
  v86 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v92 = &v78 - v13;
  MEMORY[0x28223BE20](v14);
  v91 = &v78 - v15;
  MEMORY[0x28223BE20](v16);
  v78 = &v78 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v78 - v25;
  v87 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v78 - v29;
  v31 = *(type metadata accessor for ToggleSettingView() + 20);
  v90 = a3;
  sub_21C6BB630(a1, a3 + v31, type metadata accessor for ToggleSetting);
  v32 = type metadata accessor for ToggleSetting();
  v33 = a1 + v32[7];
  v94 = v30;
  sub_21C6BB630(v33, v30, type metadata accessor for PropertyListValue);
  v34 = (a1 + v32[6]);
  v35 = *v34;
  v36 = v34[1];
  sub_21C6BB630(a1 + v32[8], v26, type metadata accessor for PropertyListValue);
  v37 = v32[9];
  v89 = a1;
  v93 = v23;
  sub_21C6BB630(a1 + v37, v23, type metadata accessor for PropertyListValue);
  if (a2)
  {

    v38 = a2;
  }

  else
  {
    v39 = objc_opt_self();

    v38 = [v39 standardUserDefaults];
  }

  v83 = a2;
  v85 = v35;
  v40 = sub_21C6CEB90();
  v41 = [v38 valueForKey_];

  v42 = v9;
  if (v41)
  {
    sub_21C6CED50();
    swift_unknownObjectRelease();
    sub_21C6A2734(v96, v95);
    v43 = v81;
    sub_21C6C50F8(v95, v81);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v44 = *(v42 + 48);
    v45 = v79;
    if (v44(v43, 1, v79) == 1)
    {
      v46 = v78;
      sub_21C6BB630(v94, v78, type metadata accessor for PropertyListValue);
      if (v44(v43, 1, v45) != 1)
      {
        sub_21C6A6FD0(v43);
      }
    }

    else
    {
      v46 = v78;
      sub_21C6BAACC(v43, v78);
    }

    sub_21C6BAACC(v46, v20);
  }

  else
  {
    sub_21C6BB630(v94, v20, type metadata accessor for PropertyListValue);
  }

  v47 = sub_21C6C8B6C(v20, v26);
  v88 = v20;
  v84 = v36;
  v82 = v38;
  if (v47)
  {
    v48 = 1;
LABEL_16:
    LODWORD(v81) = v48;
    goto LABEL_17;
  }

  if ((sub_21C6C8B6C(v20, v93) & 1) == 0)
  {
    sub_21C6C5BF8(v96);
    v48 = (swift_dynamicCast() & LOBYTE(v95[0]));
    goto LABEL_16;
  }

  LODWORD(v81) = 0;
LABEL_17:
  sub_21C6BB630(v94, v91, type metadata accessor for PropertyListValue);
  sub_21C6BB630(v26, v92, type metadata accessor for PropertyListValue);
  v49 = v86;
  sub_21C6BB630(v93, v86, type metadata accessor for PropertyListValue);
  v50 = *(v42 + 80);
  v51 = (v50 + 16) & ~v50;
  v52 = v87;
  v53 = (v87 + v50 + v51) & ~v50;
  v54 = v26;
  v80 = v26;
  v55 = (v87 + v50 + v53) & ~v50;
  v56 = swift_allocObject();
  v57 = v56 + v51;
  v58 = v56;
  v59 = v91;
  sub_21C6BAACC(v91, v57);
  v60 = v58 + v53;
  v61 = v58;
  v79 = v58;
  v62 = v92;
  sub_21C6BAACC(v92, v60);
  sub_21C6BAACC(v49, v61 + v55);
  sub_21C6BB630(v54, v59, type metadata accessor for PropertyListValue);
  v63 = v93;
  v64 = v62;
  sub_21C6BB630(v93, v62, type metadata accessor for PropertyListValue);
  v65 = (v50 + 24) & ~v50;
  v66 = (v52 + v50 + v65) & ~v50;
  v67 = swift_allocObject();
  v68 = v82;
  *(v67 + 16) = v82;
  sub_21C6BAACC(v59, v67 + v65);
  sub_21C6BAACC(v64, v67 + v66);
  v69 = (v67 + ((v52 + v66 + 7) & 0xFFFFFFFFFFFFFFF8));
  v71 = v84;
  v70 = v85;
  *v69 = v85;
  v69[1] = v71;

  v72 = v68;
  sub_21C6BB98C(v81, v72, v70, v71, sub_21C6BB820, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7270, &qword_21C6D1B98);
  sub_21C694224(&qword_27CDE7278, &qword_27CDE7270, &qword_21C6D1B98);
  v73 = sub_21C6CE370();
  v75 = v74;

  sub_21C6BBB68(v89, type metadata accessor for ToggleSetting);
  sub_21C6BBB68(v88, type metadata accessor for PropertyListValue);
  sub_21C6BBB68(v63, type metadata accessor for PropertyListValue);
  sub_21C6BBB68(v80, type metadata accessor for PropertyListValue);
  result = sub_21C6BBB68(v94, type metadata accessor for PropertyListValue);
  v77 = v90;
  *v90 = v73;
  v77[1] = v75;
  v77[2] = sub_21C6BB8D8;
  v77[3] = v67;
  return result;
}

uint64_t sub_21C6BB27C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7298, &qword_21C6D1C08);
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  sub_21C6CECA0();
  v12 = v9;

  v13 = sub_21C6CEC90();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v8;
  v14[5] = v12;
  v14[6] = v10;
  v14[7] = v11;
  v16 = v12;

  v17 = sub_21C6CEC90();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v15;
  v18[4] = v8;
  v18[5] = v16;
  v18[6] = v10;
  v18[7] = v11;
  sub_21C6CE9F0();
  v26 = v2;
  sub_21C6CE9D0();
  v19 = v2 + *(type metadata accessor for ToggleSettingView() + 20);
  sub_21C6BA95C();
  sub_21C694224(&qword_27CDE72A0, &qword_27CDE7298, &qword_21C6D1C08);
  v20 = v23;
  sub_21C6CE7F0();

  return (*(v24 + 8))(v7, v20);
}

uint64_t sub_21C6BB4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for ToggleSettingView() + 20);
  v10 = type metadata accessor for ToggleSetting();
  (*(v5 + 16))(v8, v9 + *(v10 + 20), v4);
  result = sub_21C6CE750();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t type metadata accessor for ToggleSettingView()
{
  result = qword_27CDE7280;
  if (!qword_27CDE7280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6BB630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6BB698@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6CE1E0();

  *a1 = v3;
  return result;
}

uint64_t sub_21C6BB730(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *))
{
  v9 = *a1;
  a6(&v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a5;
  return sub_21C6CE1F0();
}

uint64_t sub_21C6BB7CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21C6BB820@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for PropertyListValue() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + v6;

  return sub_21C6C1C5C(a1, v2 + ((v6 + 16) & ~v6), v2 + ((v7 + ((v6 + 16) & ~v6)) & ~v6), v2 + ((v7 + ((v7 + ((v6 + 16) & ~v6)) & ~v6)) & ~v6), a2);
}

void sub_21C6BB8D8(_BYTE *a1)
{
  v3 = *(type metadata accessor for PropertyListValue() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 64) + ((*(v3 + 64) + *(v3 + 80) + ((*(v3 + 80) + 24) & ~*(v3 + 80))) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_21C6C1E38(a1, v4);
}

id sub_21C6BB98C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7270, &qword_21C6D1B98);
  v13 = objc_allocWithZone(v12);
  v14 = MEMORY[0x277D85000];
  v15 = *((*MEMORY[0x277D85000] & *v13) + 0x58);
  swift_beginAccess();
  v23 = a1;
  sub_21C6CE1D0();
  swift_endAccess();
  *(v13 + *((*v14 & *v13) + 0x60)) = a1;
  *(v13 + *((*v14 & *v13) + 0x68)) = a2;
  v16 = (v13 + *((*v14 & *v13) + 0x70));
  *v16 = a3;
  v16[1] = a4;
  v17 = (v13 + *((*v14 & *v13) + 0x78));
  *v17 = a5;
  v17[1] = a6;
  v22.receiver = v13;
  v22.super_class = v12;
  v18 = a2;

  v19 = objc_msgSendSuper2(&v22, sel_init);
  v20 = sub_21C6CEB90();

  [v18 addObserver:v19 forKeyPath:v20 options:1 context:{0, v22.receiver, v22.super_class}];

  return v19;
}

uint64_t sub_21C6BBB68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21C6BBBF0()
{
  sub_21C6BBC74();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ToggleSetting();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6BBC74()
{
  if (!qword_27CDE7290)
  {
    v0 = type metadata accessor for Defaults();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE7290);
    }
  }
}

uint64_t sub_21C6BBCE0@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_21C6BB698(a1);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_21C6BBD50()
{
  result = qword_27CDE72A8;
  if (!qword_27CDE72A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE72B0, &qword_21C6D1C68);
    sub_21C694224(&qword_27CDE72A0, &qword_27CDE7298, &qword_21C6D1C08);
    sub_21C6AD1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72A8);
  }

  return result;
}

uint64_t type metadata accessor for LocalizedSettingValue()
{
  result = qword_27CDE72B8;
  if (!qword_27CDE72B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6BBE7C()
{
  sub_21C6B18F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PropertyListValue();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_21C6BBF00@<Q0>(char a1@<W0>, __n128 *a2@<X8>)
{
  v67 = a2;
  v4 = sub_21C6CE010();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v65.n128_u64[0] = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE72C8, &qword_21C6D2780);
  v7 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  v15 = sub_21C6CDF20();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v63 - v24;
  if (a1)
  {
    v26 = type metadata accessor for LocalizedSettingValue();
    sub_21C6A96C0(v2 + *(v26 + 20), v14);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v25, v14, v15);
      (*(v16 + 16))(v22, v25, v15);
      v40 = sub_21C6CE750();
      v42 = v41;
      *&v68 = v40;
      *(&v68 + 1) = v41;
      v44 = v43 & 1;
      v69.n128_u64[0] = v43 & 1;
      v69.n128_u64[1] = v45;
      LOBYTE(v70) = 0;
      sub_21C692AE8(v40, v41, v43 & 1);

      sub_21C6CE5C0();
      v68 = v72;
      v69 = v73;
      v70 = v74;
      v71 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
      sub_21C6A95B8();
      sub_21C6A9634();
      sub_21C6CE5C0();
      sub_21C692AD8(v40, v42, v44);

      (*(v16 + 8))(v25, v15);
      goto LABEL_17;
    }

    sub_21C6A9730(v14);
  }

  sub_21C6A96C0(v2, v11);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    sub_21C6A9730(v11);
    v27 = v2 + *(type metadata accessor for LocalizedSettingValue() + 24);
    sub_21C6C5BF8(v77);
    if (swift_dynamicCast())
    {
      v72 = v76;
      sub_21C68F5F0();
      v28 = sub_21C6CE760();
      v30 = v29;
      *&v68 = v28;
      *(&v68 + 1) = v29;
      v32 = v31 & 1;
      v69.n128_u64[0] = v31 & 1;
      v69.n128_u64[1] = v33;
      LOBYTE(v70) = 0;
      sub_21C692AE8(v28, v29, v31 & 1);

      sub_21C6CE5C0();
      v68 = v72;
      v69 = v73;
      v70 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
      sub_21C6A95B8();
      sub_21C6CE5C0();
      sub_21C692AD8(v28, v30, v32);
    }

    else
    {
      sub_21C6B028C();
      if (swift_dynamicCast())
      {
        v64 = v76;
        *&v72 = [v76 integerValue];
        sub_21C6CDFF0();
        sub_21C6BCC18();
        sub_21C6CDED0();
        sub_21C6BCC6C();
        v46 = sub_21C6CE730();
        v48 = v47;
        v50 = v49 & 1;
        *&v68 = v46;
        *(&v68 + 1) = v47;
        v69.n128_u64[0] = v49 & 1;
        v69.n128_u64[1] = v51;
        LOBYTE(v70) = 1;
        sub_21C692AE8(v46, v47, v49 & 1);

        sub_21C692AE8(v46, v48, v50);

        sub_21C6CE5C0();
        v52 = v72;
        v53 = v73.n128_u8[0];
        v68 = v72;
        v69 = v73;
        v70 = v74;
        sub_21C696B78(v72, *(&v72 + 1), v73.n128_i8[0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
        sub_21C6A95B8();
        sub_21C6CE5C0();

        sub_21C696C24(v52, *(&v52 + 1), v53);
        sub_21C692AD8(v46, v48, v50);

        sub_21C692AD8(v46, v48, v50);
      }

      else
      {
        v68 = 0u;
        v69 = 0u;
        v70 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
        sub_21C6A95B8();
        sub_21C6CE5C0();
      }
    }

    v54 = v74;
    v55 = HIBYTE(v74);
    v65 = v73;
    v66 = v72;
    v56 = v72;
    v57 = v73;
    sub_21C6BCBF8(v72, *(&v72 + 1), v73.n128_i8[0], v73.n128_i64[1], v74, SHIBYTE(v74));
    __swift_destroy_boxed_opaque_existential_1(v77);
    if (v55)
    {
      v58 = 256;
    }

    else
    {
      v58 = 0;
    }

    v68 = v66;
    v69 = v65;
    v70 = v58 | v54;
    v71 = 1;
    sub_21C6BCBF8(v56, *(&v56 + 1), v57.n128_i8[0], v57.n128_i64[1], v54, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
    sub_21C6A95B8();
    sub_21C6A9634();
    sub_21C6CE5C0();
    sub_21C6BCC08(v56, *(&v56 + 1), v57.n128_i8[0], v57.n128_i64[1], v54, v55);
    sub_21C6BCC08(v56, *(&v56 + 1), v57.n128_i8[0], v57.n128_i64[1], v54, v55);
  }

  else
  {
    (*(v16 + 32))(v19, v11, v15);
    (*(v16 + 16))(v22, v19, v15);
    v34 = sub_21C6CE750();
    v36 = v35;
    *&v68 = v34;
    *(&v68 + 1) = v35;
    v38 = v37 & 1;
    v69.n128_u64[0] = v37 & 1;
    v69.n128_u64[1] = v39;
    LOBYTE(v70) = 1;
    sub_21C692AE8(v34, v35, v37 & 1);

    sub_21C6CE5C0();
    v68 = v72;
    v69 = v73;
    v70 = v74;
    v71 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
    sub_21C6A95B8();
    sub_21C6A9634();
    sub_21C6CE5C0();
    sub_21C692AD8(v34, v36, v38);

    (*(v16 + 8))(v19, v15);
  }

LABEL_17:
  result = v73;
  v60 = v74;
  v61 = v75;
  v62 = v67;
  *v67 = v72;
  v62[1] = result;
  v62[2].n128_u16[0] = v60;
  v62[2].n128_u8[2] = v61;
  return result;
}

id sub_21C6BC874(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v10 = sub_21C6CDF20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v28 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v28 - v19;
  if (a1)
  {
    v21 = type metadata accessor for LocalizedSettingValue();
    sub_21C6A96C0(v1 + *(v21 + 20), v9);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v20, v9, v10);
      (*(v11 + 16))(v17, v20, v10);
      v23 = sub_21C6CEBD0();
      (*(v11 + 8))(v20, v10);
      return v23;
    }

    sub_21C6A9730(v9);
  }

  sub_21C6A96C0(v1, v6);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_21C6A9730(v6);
    v22 = *(type metadata accessor for LocalizedSettingValue() + 24);
    sub_21C6C5BF8(v28);
    if (swift_dynamicCast())
    {
      return v27;
    }

    else
    {
      sub_21C6C5BF8(v28);
      sub_21C6B028C();
      if (swift_dynamicCast())
      {
        v25 = v27;
        v26 = [v27 stringValue];
        v23 = sub_21C6CEBC0();
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    (*(v11 + 32))(v14, v6, v10);
    (*(v11 + 16))(v17, v14, v10);
    v23 = sub_21C6CEBD0();
    (*(v11 + 8))(v14, v10);
  }

  return v23;
}

uint64_t sub_21C6BCBF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_21C696B78(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_21C6BCC08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_21C696C24(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_21C6BCC18()
{
  result = qword_27CDE72D0;
  if (!qword_27CDE72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72D0);
  }

  return result;
}

unint64_t sub_21C6BCC6C()
{
  result = qword_27CDE72D8;
  if (!qword_27CDE72D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE72C8, &qword_21C6D2780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72D8);
  }

  return result;
}

uint64_t type metadata accessor for Setting()
{
  result = qword_27CDE72E0;
  if (!qword_27CDE72E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6BCD6C()
{
  result = type metadata accessor for ChildPaneSetting();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToggleSetting();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TitleValueSetting();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TextFieldSetting();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for MultiValueSetting();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21C6BCF74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7364726F57;
    }

    else
    {
      v4 = 0x61726168436C6C41;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xED00007372657463;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65636E65746E6553;
    }

    else
    {
      v4 = 1701736270;
    }

    if (v3)
    {
      v5 = 0xE900000000000073;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x7364726F57;
  if (a2 != 2)
  {
    v8 = 0x61726168436C6C41;
    v7 = 0xED00007372657463;
  }

  if (a2)
  {
    v2 = 0x65636E65746E6553;
    v6 = 0xE900000000000073;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21C6CEE20();
  }

  return v11 & 1;
}

uint64_t sub_21C6BD0C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x7465626168706C41;
    }

    if (v2)
    {
      v4 = 0x800000021C6D2890;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x61507265626D754ELL;
    v4 = 0xE900000000000064;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 5001813;
    }

    else
    {
      v3 = 0x6464416C69616D45;
    }

    if (v2 == 3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xEC00000073736572;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x7465626168706C41;
    }

    if (a2)
    {
      v5 = 0x800000021C6D2890;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000064;
    if (v3 != 0x61507265626D754ELL)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE300000000000000;
    if (v3 != 5001813)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000073736572;
    if (v3 != 0x6464416C69616D45)
    {
LABEL_34:
      v7 = sub_21C6CEE20();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_21C6BD274(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = "ers";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (a1 == 4)
  {
    v6 = "PSTitleValueSpecifier";
  }

  else
  {
    v6 = "PSTextFieldSpecifier";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "PSSliderSpecifier";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000017;
  if (v4 == 1)
  {
    v10 = "PSChildPaneSpecifier";
  }

  else
  {
    v9 = 0xD000000000000011;
    v10 = "PSToggleSwitchSpecifier";
  }

  if (!v4)
  {
    v9 = 0xD000000000000014;
    v10 = "ers";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000015;
      v3 = "PSSliderSpecifier";
    }

    else if (a2 == 4)
    {
      v3 = "PSTitleValueSpecifier";
    }

    else
    {
      v2 = 0xD000000000000015;
      v3 = "PSTextFieldSpecifier";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000017;
      v3 = "PSChildPaneSpecifier";
    }

    else
    {
      v2 = 0xD000000000000011;
      v3 = "PSToggleSwitchSpecifier";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21C6CEE20();
  }

  return v12 & 1;
}

uint64_t sub_21C6BD3D4()
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6BD4BC()
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6BD5A0()
{
  v1 = v0;
  v2 = type metadata accessor for MultiValueSetting();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextFieldSetting();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TitleValueSetting();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToggleSetting();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ChildPaneSetting();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Setting();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6B2424(v1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v27 = type metadata accessor for TitleValueSetting;
      sub_21C6B2488(v25, v13, type metadata accessor for TitleValueSetting);
      v28 = sub_21C6B9258();
      v29 = v13;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_21C6B2488(v25, v9, type metadata accessor for TextFieldSetting);
        v28 = sub_21C6B6BB4();
        v29 = v9;
        v30 = type metadata accessor for TextFieldSetting;
LABEL_13:
        sub_21C6BE714(v29, v30);
        return v28;
      }

      v27 = type metadata accessor for MultiValueSetting;
      sub_21C6B2488(v25, v5, type metadata accessor for MultiValueSetting);
      v28 = sub_21C6A6E50();
      v29 = v5;
    }

LABEL_12:
    v30 = v27;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = type metadata accessor for ChildPaneSetting;
    sub_21C6B2488(v25, v21, type metadata accessor for ChildPaneSetting);
    v28 = sub_21C6A3054();
    v29 = v21;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = type metadata accessor for ToggleSetting;
    sub_21C6B2488(v25, v17, type metadata accessor for ToggleSetting);
    v28 = sub_21C6BA95C();
    v29 = v17;
    goto LABEL_12;
  }

  v31 = *(v25 + 5);
  v35[4] = *(v25 + 4);
  v35[5] = v31;
  v35[6] = *(v25 + 6);
  v36 = *(v25 + 14);
  v32 = *(v25 + 1);
  v35[0] = *v25;
  v35[1] = v32;
  v33 = *(v25 + 3);
  v35[2] = *(v25 + 2);
  v35[3] = v33;
  v28 = sub_21C6B05C8();
  sub_21C6BE6C0(v35);
  return v28;
}

uint64_t sub_21C6BD938()
{
  v1 = v0;
  v2 = type metadata accessor for MultiValueSetting();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextFieldSetting();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TitleValueSetting();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToggleSetting();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ChildPaneSetting();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Setting();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6B2424(v1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v27 = type metadata accessor for TitleValueSetting;
      sub_21C6B2488(v25, v13, type metadata accessor for TitleValueSetting);
      v28 = sub_21C6B80A0();
      v29 = v13;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_21C6B2488(v25, v9, type metadata accessor for TextFieldSetting);
        v28 = sub_21C6B62C0();
        v29 = v9;
        v30 = type metadata accessor for TextFieldSetting;
LABEL_13:
        sub_21C6BE714(v29, v30);
        return v28 & 1;
      }

      v27 = type metadata accessor for MultiValueSetting;
      sub_21C6B2488(v25, v5, type metadata accessor for MultiValueSetting);
      v28 = sub_21C6A5128();
      v29 = v5;
    }

LABEL_12:
    v30 = v27;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = type metadata accessor for ChildPaneSetting;
    sub_21C6B2488(v25, v21, type metadata accessor for ChildPaneSetting);
    v28 = sub_21C6A2F5C();
    v29 = v21;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = type metadata accessor for ToggleSetting;
    sub_21C6B2488(v25, v17, type metadata accessor for ToggleSetting);
    v28 = sub_21C6B9D1C();
    v29 = v17;
    goto LABEL_12;
  }

  v31 = *(v25 + 5);
  v35[4] = *(v25 + 4);
  v35[5] = v31;
  v35[6] = *(v25 + 6);
  v36 = *(v25 + 14);
  v32 = *(v25 + 1);
  v35[0] = *v25;
  v35[1] = v32;
  v33 = *(v25 + 3);
  v35[2] = *(v25 + 2);
  v35[3] = v33;
  v28 = sub_21C6B04E0();
  sub_21C6BE6C0(v35);
  return v28 & 1;
}

id sub_21C6BDCB4()
{
  v84 = sub_21C6CDF80();
  v81 = *(v84 - 8);
  v0 = *(v81 + 64);
  MEMORY[0x28223BE20](v84);
  v79 = &v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v80 = &v77 - v3;
  MEMORY[0x28223BE20](v4);
  v77 = &v77 - v5;
  MEMORY[0x28223BE20](v6);
  v78 = &v77 - v7;
  v82 = type metadata accessor for MultiValueSetting();
  v8 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextFieldSetting();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TitleValueSetting();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ToggleSetting();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ChildPaneSetting();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Setting();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6B2424(v85, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v31 = type metadata accessor for TitleValueSetting;
      sub_21C6B2488(v29, v17, type metadata accessor for TitleValueSetting);
      v44 = *(v14 + 40);
      v45 = &v17[*(v14 + 36)];
      v35 = *v45;
      v34 = v45[1];
      v36 = *&v17[v44];
      v37 = *&v17[v44 + 8];

      swift_bridgeObjectRetain_n();
      v38 = v17;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v31 = type metadata accessor for TextFieldSetting;
      sub_21C6B2488(v29, v13, type metadata accessor for TextFieldSetting);
      v39 = *(v10 + 52);
      v40 = &v13[*(v10 + 48)];
      v35 = *v40;
      v34 = v40[1];
      v36 = *&v13[v39];
      v37 = *&v13[v39 + 8];

      swift_bridgeObjectRetain_n();
      v38 = v13;
    }

    else
    {
      v31 = type metadata accessor for MultiValueSetting;
      v50 = v83;
      sub_21C6B2488(v29, v83, type metadata accessor for MultiValueSetting);
      v51 = *(v82 + 44);
      v52 = (v50 + *(v82 + 40));
      v35 = *v52;
      v34 = v52[1];
      v36 = *(v50 + v51);
      v37 = *(v50 + v51 + 8);

      swift_bridgeObjectRetain_n();
      v38 = v50;
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21C6B2488(v29, v25, type metadata accessor for ChildPaneSetting);
    v41 = *(v22 + 36);
    v42 = &v25[*(v22 + 32)];
    v35 = *v42;
    v34 = v42[1];
    v36 = *&v25[v41];
    v37 = *&v25[v41 + 8];

    swift_bridgeObjectRetain_n();
    v38 = v25;
    v43 = type metadata accessor for ChildPaneSetting;
LABEL_13:
    sub_21C6BE714(v38, v43);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v31 = type metadata accessor for ToggleSetting;
    sub_21C6B2488(v29, v21, type metadata accessor for ToggleSetting);
    v32 = *(v18 + 44);
    v33 = &v21[*(v18 + 40)];
    v35 = *v33;
    v34 = v33[1];
    v36 = *&v21[v32];
    v37 = *&v21[v32 + 8];

    swift_bridgeObjectRetain_n();
    v38 = v21;
LABEL_12:
    v43 = v31;
    goto LABEL_13;
  }

  v46 = v29[2];
  v47 = v29[7];
  v48 = v29[9];
  v35 = v29[10];
  v34 = v29[11];
  v36 = v29[12];
  v37 = v29[13];
  v49 = v29[14];

LABEL_14:
  v53 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v54 = sub_21C6BF2EC(v35, v34, 0);
  v56 = v54;
  if (v54)
  {
    if (v37)
    {
      v57 = [v54 groupContainerURLs];
      v58 = sub_21C6CEB40();

      if (*(v58 + 16))
      {
        v59 = sub_21C6C70F8(v36, v37);
        if (v60)
        {
          v61 = v59;

          v62 = v81;
          v63 = *(v58 + 56) + *(v81 + 72) * v61;
          v64 = v77;
          v65 = v84;
          (*(v81 + 16))(v77, v63, v84);

          v66 = v78;
          (*(v62 + 32))(v78, v64, v65);
          v67 = sub_21C6CEB90();

          v68 = sub_21C6CDF40();
          v69 = [objc_opt_self() userDefaultsWithSuiteName:v67 container:v68];
LABEL_25:
          v73 = v69;

          (*(v62 + 8))(v66, v65);
          return v73;
        }
      }
    }

    v70 = [v56 dataContainerURL];
    if (v70)
    {
      v71 = v79;
      v72 = v70;
      sub_21C6CDF60();

      v66 = v80;
      v62 = v81;
      v65 = v84;
      (*(v81 + 32))(v80, v71, v84);
      v67 = sub_21C6CEB90();

      v68 = sub_21C6CDF40();
      v69 = [objc_opt_self() userDefaultsWithSuiteName:v67 container:v68];
      goto LABEL_25;
    }

    v74 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v75 = sub_21C6CEB90();

    v76 = [v74 initWithSuiteName_];

    return v76;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21C6BE480@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6BD5A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C6BE4B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21C6BE774();
  *a2 = result;
  return result;
}

uint64_t sub_21C6BE4EC()
{
  *v0;
  *v0;
  sub_21C6CEBF0();
}

void sub_21C6BE5C4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = "ers";
  v5 = "PSSliderSpecifier";
  v6 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v6 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = v7;
  }

  if (v3 != 3)
  {
    v5 = v6;
  }

  v9 = "PSChildPaneSpecifier";
  v10 = 0xD000000000000017;
  if (v3 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = "PSToggleSwitchSpecifier";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v8;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

unint64_t sub_21C6BE66C()
{
  result = qword_27CDE72F0;
  if (!qword_27CDE72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72F0);
  }

  return result;
}

uint64_t sub_21C6BE714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C6BE774()
{
  v0 = sub_21C6CEDF0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for SettingGroupType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingGroupType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_21C6BE920()
{
  v1 = sub_21C6CDF80();
  v46 = *(v1 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for RadioGroupSetting();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SettingsSection();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6BF17C(v0, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    v20 = (*v18 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier);
    v22 = *v20;
    v21 = v20[1];
    v24 = *(v19 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationGroupContainerIdentifier);
    v23 = *(v19 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationGroupContainerIdentifier + 8);

    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_21C6BF22C(v18, v14);
    v25 = *(v11 + 52);
    v26 = &v14[*(v11 + 48)];
    v22 = *v26;
    v21 = v26[1];
    v24 = *&v14[v25];
    v23 = *&v14[v25 + 8];

    swift_bridgeObjectRetain_n();
    sub_21C6BF290(v14);
  }

  v27 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v28 = sub_21C6BF2EC(v22, v21, 0);
  if (v28)
  {
    v45 = v28;
    if (v23)
    {
      v30 = [v28 groupContainerURLs];
      v31 = sub_21C6CEB40();

      if (*(v31 + 16))
      {
        v32 = sub_21C6C70F8(v24, v23);
        v34 = v33;

        if (v34)
        {
          v35 = v46;
          (*(v46 + 16))(v7, *(v31 + 56) + *(v46 + 72) * v32, v1);

LABEL_16:
          (*(v35 + 32))(v10, v7, v1);
          v38 = sub_21C6CEB90();

          v39 = sub_21C6CDF40();
          v40 = [objc_opt_self() userDefaultsWithSuiteName:v38 container:v39];

          (*(v35 + 8))(v10, v1);
          return v40;
        }
      }

      else
      {
      }

      v28 = v45;
    }

    v36 = [v28 dataContainerURL];
    if (v36)
    {
      v37 = v36;
      sub_21C6CDF60();

      v7 = v4;
      v35 = v46;
      goto LABEL_16;
    }

    v41 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v42 = sub_21C6CEB90();

    v43 = [v41 initWithSuiteName_];

    return v43;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21C6BED80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for RadioGroupSetting();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6BF17C(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = sub_21C6B1950();
    v17 = v16;
  }

  else
  {
    sub_21C6BF22C(v13, v9);
    v15 = sub_21C6AC32C();
    v17 = v19;
    result = sub_21C6BF290(v9);
  }

  *a2 = v15;
  a2[1] = v17;
  return result;
}

uint64_t sub_21C6BEEA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "PSMultiValueSpecifier";
  }

  else
  {
    v5 = "PSGroupSpecifier";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = "PSGroupSpecifier";
  }

  else
  {
    v8 = "PSMultiValueSpecifier";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21C6CEE20();
  }

  return v10 & 1;
}

uint64_t sub_21C6BEF50@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21C6CEDF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_21C6BEFB0()
{
  v1 = *v0;
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6BF034()
{
  *v0;
  sub_21C6CEBF0();
}

uint64_t sub_21C6BF0A4()
{
  v1 = *v0;
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

unint64_t sub_21C6BF128()
{
  result = qword_27CDE72F8;
  if (!qword_27CDE72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72F8);
  }

  return result;
}

uint64_t sub_21C6BF17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SettingsSection()
{
  result = qword_27CDE7300;
  if (!qword_27CDE7300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6BF22C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioGroupSetting();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6BF290(uint64_t a1)
{
  v2 = type metadata accessor for RadioGroupSetting();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21C6BF2EC(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21C6CEB90();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_21C6CDEE0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_21C6BF3C8()
{
  result = type metadata accessor for RadioGroupSetting();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StandardGroupSetting();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
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

uint64_t sub_21C6BF454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21C6BF49C(uint64_t result, int a2, int a3)
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

uint64_t sub_21C6BF514@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7310, &qword_21C6D1FB0);
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];

  sub_21C6CA27C(v7, v8, v10, v9, &v18);
  v13 = v18;
  if (v18)
  {
    v17 = v18;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 40) = v20;
    *(v14 + 56) = v21;
    *(v14 + 72) = v22;
    *(v14 + 88) = v23;
    *(v14 + 24) = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7318, &qword_21C6D1FB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7320, &qword_21C6D1FC0);
    sub_21C694224(&qword_27CDE7328, &qword_27CDE7318, &qword_21C6D1FB8);
    sub_21C6BFE3C();
    sub_21C6C01C4(&qword_27CDE7388, type metadata accessor for SettingsSection);
    sub_21C6CEA30();
    (*(v16 + 32))(a1, v6, v3);
    return (*(v16 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v11 = *(v16 + 56);

    return v11(a1, 1, 1, v3);
  }
}

id sub_21C6BF7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7340, &qword_21C6D1FC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for RadioGroupSetting();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SettingsSection();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6C037C(a1, v18, type metadata accessor for SettingsSection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    v20 = sub_21C6B1634();

    if ((v20 & 1) == 0)
    {
      return (*(v7 + 56))(a3, 1, 1, v6);
    }
  }

  else
  {
    sub_21C6BF22C(v18, v14);
    v21 = sub_21C6AAC00();
    sub_21C6BF290(v14);
    if ((v21 & 1) == 0)
    {
      return (*(v7 + 56))(a3, 1, 1, v6);
    }
  }

  v22 = sub_21C6BE920();
  if (!v22)
  {
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  sub_21C6BFA74(a1, v10);
  v28 = *(a2 + 72);
  KeyPath = swift_getKeyPath();
  v24 = &v10[*(v6 + 36)];
  *v24 = KeyPath;
  v24[1] = v28;
  sub_21C6C02B8(v10, a3);
  (*(v7 + 56))(a3, 0, 1, v6);
  v25 = v28;

  return v25;
}

uint64_t sub_21C6BFA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PropertyListValue();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7378, &qword_21C6D1FE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v35 - v10);
  v12 = type metadata accessor for RadioGroupSetting();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7398, &unk_21C6D2010);
  v16 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v18 = (&v35 - v17);
  v19 = type metadata accessor for SettingsSection();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6C037C(a1, v22, type metadata accessor for SettingsSection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v18 = *v22;
    swift_storeEnumTagMultiPayload();
    sub_21C6C0088();
    sub_21C6C00DC();
    return sub_21C6CE5C0();
  }

  else
  {
    sub_21C6BF22C(v22, v15);
    v24 = type metadata accessor for RadioGroupSettingView();
    sub_21C6C037C(v15, v11 + *(v24 + 20), type metadata accessor for RadioGroupSetting);
    v35 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
    sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
    *v11 = sub_21C6CE430();
    v11[1] = v25;
    v26 = *(v12 + 36);
    v27 = &v15[*(v12 + 32)];
    v28 = v8;
    v30 = *v27;
    v29 = v27[1];
    sub_21C6C037C(&v15[v26], v7, type metadata accessor for PropertyListValue);

    v31 = sub_21C6BE920();
    v32 = sub_21C6C3D2C(v30, v29, v7, v31);

    v33 = sub_21C6CE1B0();
    v34 = (v11 + *(v28 + 36));
    *v34 = v33;
    v34[1] = v32;
    sub_21C6C03E4(v11, v18);
    swift_storeEnumTagMultiPayload();
    sub_21C6C0088();
    sub_21C6C00DC();
    sub_21C6CE5C0();
    sub_21C6C0454(v11);
    return sub_21C6BF290(v15);
  }
}

unint64_t sub_21C6BFE3C()
{
  result = qword_27CDE7330;
  if (!qword_27CDE7330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7320, &qword_21C6D1FC0);
    sub_21C6BFEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7330);
  }

  return result;
}

unint64_t sub_21C6BFEC0()
{
  result = qword_27CDE7338;
  if (!qword_27CDE7338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7340, &qword_21C6D1FC8);
    sub_21C6BFF78();
    sub_21C694224(&qword_27CDE6D50, &qword_27CDE6D58, &qword_21C6D0DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7338);
  }

  return result;
}

unint64_t sub_21C6BFF78()
{
  result = qword_27CDE7348;
  if (!qword_27CDE7348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7350, &qword_21C6D1FD0);
    sub_21C6BFFFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7348);
  }

  return result;
}

unint64_t sub_21C6BFFFC()
{
  result = qword_27CDE7358;
  if (!qword_27CDE7358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7360, &qword_21C6D1FD8);
    sub_21C6C0088();
    sub_21C6C00DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7358);
  }

  return result;
}

unint64_t sub_21C6C0088()
{
  result = qword_27CDE7368;
  if (!qword_27CDE7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7368);
  }

  return result;
}

unint64_t sub_21C6C00DC()
{
  result = qword_27CDE7370;
  if (!qword_27CDE7370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7378, &qword_21C6D1FE0);
    sub_21C6C01C4(&qword_27CDE7380, type metadata accessor for RadioGroupSettingView);
    sub_21C694224(&qword_27CDE6EC0, &qword_27CDE6EC8, &qword_21C6D0F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7370);
  }

  return result;
}

uint64_t sub_21C6C01C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6C020C@<X0>(void *a1@<X8>)
{
  sub_21C6C0328();
  result = sub_21C6CE4C0();
  *a1 = v3;
  return result;
}

uint64_t sub_21C6C025C(void **a1)
{
  v1 = *a1;
  sub_21C6C0328();
  v2 = v1;
  return sub_21C6CE4D0();
}

uint64_t sub_21C6C02B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7340, &qword_21C6D1FC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C6C0328()
{
  result = qword_27CDE7390;
  if (!qword_27CDE7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7390);
  }

  return result;
}

uint64_t sub_21C6C037C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6C03E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7378, &qword_21C6D1FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6C0454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7378, &qword_21C6D1FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C6C04BC()
{
  result = qword_27CDE73A0;
  if (!qword_27CDE73A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE73A8, &unk_21C6D2020);
    sub_21C6C0540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE73A0);
  }

  return result;
}

unint64_t sub_21C6C0540()
{
  result = qword_27CDE73B0;
  if (!qword_27CDE73B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7310, &qword_21C6D1FB0);
    sub_21C6BFE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE73B0);
  }

  return result;
}

uint64_t ApplicationSettingsView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_21C6C1400;
  a1[1] = v5;
}

uint64_t sub_21C6C0638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a1;
  v88 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v109 = &v84 - v8;
  v9 = sub_21C6CE010();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v106 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21C6CDF00();
  v103 = *(v105 - 8);
  v12 = *(v103 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21C6CEB80();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v110 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_21C6CE500();
  v101 = *(v102 - 8);
  v17 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21C6CDF20();
  v108 = *(v87 - 8);
  v19 = *(v108 + 64);
  MEMORY[0x28223BE20](v87);
  v107 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v98 = &v84 - v22;
  v90 = sub_21C6CE3C0();
  v23 = *(v90 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v90);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73C8, &qword_21C6D20D8);
  v91 = *(v25 - 8);
  v26 = *(v91 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73D0, &qword_21C6D20E0);
  v92 = *(v29 - 8);
  v30 = *(v92 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v84 - v31;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73D8, &qword_21C6D20E8);
  v94 = *(v96 - 8);
  v33 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v89 = &v84 - v34;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73E0, &qword_21C6D20F0);
  v97 = *(v112 - 8);
  v35 = *(v97 + 64);
  MEMORY[0x28223BE20](v112);
  v95 = &v84 - v36;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73E8, &qword_21C6D20F8);
  v85 = *(v86 - 8);
  v37 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v111 = &v84 - v38;
  v113 = a2;
  v114 = a2;
  v115 = a3;
  v99 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73F0, &qword_21C6D2100);
  sub_21C694224(&qword_27CDE73F8, &qword_27CDE73F0, &qword_21C6D2100);
  sub_21C6CE700();
  if (qword_27CDE67C8 != -1)
  {
    swift_once();
  }

  v39 = sub_21C6CE2C0();
  __swift_project_value_buffer(v39, qword_27CDE9D40);
  v40 = v90;
  (*(v23 + 16))(&v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v93, v90);
  v41 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v42 = swift_allocObject();
  (*(v23 + 32))(v42 + v41, &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
  v43 = sub_21C694224(&qword_27CDE7400, &qword_27CDE73C8, &qword_21C6D20D8);
  sub_21C6CE880();

  (*(v91 + 8))(v28, v25);
  v116 = v25;
  v117 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v89;
  sub_21C6CE770();
  (*(v92 + 8))(v32, v29);
  v46 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v47 = v99;
  swift_bridgeObjectRetain_n();
  v48 = sub_21C6BF2EC(v113, v47, 1);
  v49 = v45;
  if (v48)
  {
    v50 = v48;

    sub_21C6CDFE0();
    v51 = sub_21C6CEC50();

    v52 = [v50 localizedNameWithPreferredLocalizations_];

    sub_21C6CEBC0();
    sub_21C6CDEF0();
  }

  else
  {
    sub_21C6CDEF0();
  }

  v53 = sub_21C6CE750();
  v55 = v54;
  v57 = v56;
  v116 = v29;
  v117 = OpaqueTypeConformance2;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v95;
  v60 = v96;
  sub_21C6CE810();
  sub_21C692AD8(v53, v55, v57 & 1);

  (*(v94 + 8))(v49, v60);
  v61 = v101;
  v62 = v100;
  v63 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x277CDDDC0], v102);
  v116 = v60;
  v117 = v58;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v112;
  v98 = v64;
  sub_21C6CE850();
  (*(v61 + 8))(v62, v63);
  (*(v97 + 8))(v59, v65);
  v66 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v67 = v113;
  v68 = sub_21C6BF2EC(v113, v47, 1);
  v70 = v108;
  v69 = v109;
  v71 = v107;
  if (v68)
  {
    v72 = v68;

    sub_21C6CDFE0();
    v73 = sub_21C6CEC50();

    v74 = [v72 localizedNameWithPreferredLocalizations_];

    sub_21C6CEBC0();
    sub_21C6CDEF0();
  }

  else
  {
    sub_21C6CDEF0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7408, &qword_21C6D2108);
  v75 = *(v70 + 72);
  v76 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  *(swift_allocObject() + 16) = xmmword_21C6D0E70;
  sub_21C6CEB70();
  if (qword_27CDE67E0 != -1)
  {
    swift_once();
  }

  v77 = v105;
  v78 = __swift_project_value_buffer(v105, qword_27CDE9D60);
  (*(v103 + 16))(v104, v78, v77);
  sub_21C6CE000();
  sub_21C6CDF30();
  v116 = 0xD00000000000002ELL;
  v117 = 0x800000021C6D32E0;
  MEMORY[0x21CF0F390](v67, v47);
  sub_21C6CDF70();

  v79 = sub_21C6CDF80();
  v80 = *(v79 - 8);
  result = (*(v80 + 48))(v69, 1, v79);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v116 = v112;
    v117 = v98;
    swift_getOpaqueTypeConformance2();
    v82 = v86;
    v83 = v111;
    sub_21C6CE780();

    (*(v70 + 8))(v71, v87);
    (*(v85 + 8))(v83, v82);
    return (*(v80 + 8))(v69, v79);
  }

  return result;
}

uint64_t sub_21C6C1424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = type metadata accessor for ApplicationDistributionState();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  sub_21C69DA94(a1, a2);
  result = sub_21C6CE930();
  *a3 = v11;
  a3[1] = v12;
  a3[2] = sub_21C6C18E8;
  a3[3] = v6;
  return result;
}

uint64_t sub_21C6C14E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_21C6CE160();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  swift_bridgeObjectRetain_n();
  sub_21C6CE150();
  v14 = v7[2];
  v14(v10, v13, v6);
  v14(a3, v10, v6);
  v15 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7410, &unk_21C6D2110) + 48)];
  *v15 = a1;
  *(v15 + 1) = a2;
  *(v15 + 2) = 1953460050;
  *(v15 + 3) = 0xE400000000000000;
  *(v15 + 4) = 0;
  *(v15 + 5) = 0;
  v16 = v7[1];

  v16(v13, v6);

  return (v16)(v10, v6);
}

uint64_t sub_21C6C16A8@<X0>(uint64_t (**a1)@<X0>(uint64_t@<X0>, uint64_t@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_21C6C18F0;
  a1[1] = v5;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21C6C1720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21C6C1768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C6C17BC()
{
  v0 = sub_21C6CE2C0();
  __swift_allocate_value_buffer(v0, qword_27CDE9D40);
  __swift_project_value_buffer(v0, qword_27CDE9D40);
  return sub_21C6CE2D0();
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

uint64_t sub_21C6C18F4()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings28ApplicationSettingsViewModel___observationRegistrar;
  v4 = sub_21C6CE060();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for ApplicationSettingsViewModel()
{
  result = qword_27CDE7420;
  if (!qword_27CDE7420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6C19F4()
{
  result = sub_21C6CE060();
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

uint64_t sub_21C6C1AA0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_21C6CE200();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21C6C1B9C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6CE1E0();
}

uint64_t sub_21C6C1C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22[-v12];
  v14 = type metadata accessor for PropertyListValue();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21C6C28B8(a1, v22);
  sub_21C6C6280(v22, v13);
  v19 = *(v15 + 48);
  if (v19(v13, 1, v14) == 1)
  {
    sub_21C68F0E4(a2, v18);
    if (v19(v13, 1, v14) != 1)
    {
      sub_21C68F7D4(v13, &qword_27CDE6DA8, &unk_21C6D1A90);
    }
  }

  else
  {
    sub_21C6BAACC(v13, v18);
  }

  v20 = sub_21C6C8B6C(v18, a3);
  if ((v20 & 1) == 0)
  {
    sub_21C6C8B6C(v18, a4);
  }

  result = sub_21C6C2928(v18);
  *a5 = v20 & 1;
  return result;
}

void sub_21C6C1E38(_BYTE *a1, void *a2)
{
  *a1;
  sub_21C6C5BF8(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_21C6CEE10();
  __swift_destroy_boxed_opaque_existential_1(v5);
  v4 = sub_21C6CEB90();
  [a2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

id sub_21C6C1F24()
{
  ObjectType = swift_getObjectType();
  v2 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x70));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x68));
  v6 = v0;

  v7 = sub_21C6CEB90();

  [v5 removeObserver:v6 forKeyPath:v7];

  v9.receiver = v6;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_21C6C2038(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = sub_21C6CE200();
  (*(*(v5 - 8) + 8))(&a1[v3], v5);
  (*(*(v4 - 8) + 8))(&a1[*((*v2 & *a1) + 0x60)], v4);

  v6 = *&a1[*((*v2 & *a1) + 0x70) + 8];

  v7 = *&a1[*((*v2 & *a1) + 0x78) + 8];
}

uint64_t sub_21C6C21A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_21C6CEBC0();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v11 = a5;
    v12 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_21C6CED50();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_21C6C2830();
  v10 = sub_21C6CEB40();

LABEL_8:
  sub_21C6C2460(v14, v10);

  return sub_21C68F7D4(v14, qword_27CDE74B0, &qword_21C6D2240);
}

uint64_t sub_21C6C22F0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_21C6CE1C0();
  *a1 = result;
  return result;
}

uint64_t sub_21C6C2330(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v10 - v6;
  v10[2] = v3;
  swift_getKeyPath();
  v10[0] = v3;
  swift_getKeyPath();
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1;
  return sub_21C6CE1F0();
}

uint64_t sub_21C6C2460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v7 = sub_21C6CED30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  if (a2)
  {
    v19 = *(a2 + 16);
    v29 = v8;
    v30 = v7;
    if (v19 && (v15 = sub_21C6C7170(*MEMORY[0x277CCA2F0], v16), (v20 & 1) != 0))
    {
      v15 = sub_21C6A2734(*(a2 + 56) + 32 * v15, v31);
    }

    else
    {
      memset(v31, 0, sizeof(v31));
    }

    v21 = *&v3[*((*v5 & *v3) + 0x78)];
    v22 = MEMORY[0x28223BE20](v15);
    *(&v28 - 4) = v6;
    *(&v28 - 3) = v22;
    MEMORY[0x28223BE20](v23);
    *(&v28 - 4) = v6;
    *(&v28 - 3) = sub_21C6C2888;
    *(&v28 - 2) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE74B0, &qword_21C6D2240);
    sub_21C6C2C08(sub_21C6C2894, (&v28 - 6), MEMORY[0x277D84A98], v6, v25, v11);
    v5 = MEMORY[0x277D85000];
    sub_21C68F7D4(v31, qword_27CDE74B0, &qword_21C6D2240);
    v26 = (*(v12 + 48))(v11, 1, v6);
    v8 = v29;
    v7 = v30;
    if (v26 != 1)
    {
      (*(v12 + 32))(v18, v11, v6);
      goto LABEL_11;
    }
  }

  else
  {
    (*(v12 + 56))(v11, 1, 1, v6, v16);
  }

  (*(v12 + 16))(v18, &v3[*((*v5 & *v3) + 0x60)], v6);
  if ((*(v12 + 48))(v11, 1, v6) != 1)
  {
    (*(v8 + 8))(v11, v7);
  }

LABEL_11:
  sub_21C6C2330(v18);
  return (*(v12 + 8))(v18, v6);
}

unint64_t sub_21C6C2830()
{
  result = qword_27CDE68D0;
  if (!qword_27CDE68D0)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE68D0);
  }

  return result;
}

uint64_t sub_21C6C2888(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_21C6C2EB0(a1, *(v1 + 24));
}

uint64_t sub_21C6C2894(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_21C6C2F18(a1, *(v1 + 24));
}

uint64_t sub_21C6C28B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE74B0, &qword_21C6D2240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6C2928(uint64_t a1)
{
  v2 = type metadata accessor for PropertyListValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C6C2984()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C6C29C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21C6C2A08(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21C6C2A60(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_21C6CE200();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21C6C2B60()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6CE1E0();
}

uint64_t sub_21C6C2C08@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t sub_21C6C2EB0(uint64_t a1, void (*a2)(_BYTE *))
{
  sub_21C6A2734(a1, v4);
  a2(v4);
  return sub_21C68F7D4(v4, qword_27CDE74B0, &qword_21C6D2240);
}

uint64_t sub_21C6C2F48(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - v5;
  v9 = v1 + *((v8 & v7) + 0x80);
  v11 = *v9;
  v10 = *(v9 + 1);
  sub_21C6C2B60();
  v11(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C6C30C0(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = sub_21C6CE200();
  (*(*(v5 - 8) + 8))(&a1[v3], v5);
  (*(*(v4 - 8) + 8))(&a1[*((*v2 & *a1) + 0x60)], v4);

  v6 = *&a1[*((*v2 & *a1) + 0x70) + 8];

  v7 = *&a1[*((*v2 & *a1) + 0x78) + 8];

  v8 = *&a1[*((*v2 & *a1) + 0x80) + 8];
}

uint64_t sub_21C6C3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *((*MEMORY[0x277D85000] & *a5) + 0x50);
  v5[8] = v6;
  v7 = sub_21C6CED30();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = *(v6 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  sub_21C6CECA0();
  v5[14] = sub_21C6CEC90();
  v13 = sub_21C6CEC80();
  v5[15] = v13;
  v5[16] = v12;

  return MEMORY[0x2822009F8](sub_21C6C33C0, v13, v12);
}

uint64_t sub_21C6C33C0(__n128 a1)
{
  v2 = *(v1 + 48);
  v3 = MEMORY[0x277D85000];
  if (v2)
  {
    if (*(v2 + 16) && (v4 = sub_21C6C7170(*MEMORY[0x277CCA2F0], a1), (v5 & 1) != 0))
    {
      sub_21C6A2734(*(v2 + 56) + 32 * v4, v1 + 16);
    }

    else
    {
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
    }

    v6 = *(v1 + 88);
    v7 = *(v1 + 96);
    v9 = *(v1 + 56);
    v8 = *(v1 + 64);
    v10 = *((*v3 & *v9) + 0x78);
    v11 = swift_task_alloc();
    v12 = *(v9 + v10);
    *(v11 + 16) = v8;
    *(v11 + 24) = v12;
    v13 = swift_task_alloc();
    v13[2] = v8;
    v13[3] = sub_21C6C4584;
    v13[4] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE74B0, &qword_21C6D2240);
    sub_21C6C2C08(sub_21C6C45E8, v13, MEMORY[0x277D84A98], v8, v14, v6);
    sub_21C68F7D4(v1 + 16, qword_27CDE74B0, &qword_21C6D2240);

    v3 = MEMORY[0x277D85000];

    if ((*(v7 + 48))(v6, 1, v8) != 1)
    {
      (*(*(v1 + 96) + 32))(*(v1 + 104), *(v1 + 88), *(v1 + 64));
      goto LABEL_11;
    }
  }

  else
  {
    (*(*(v1 + 96) + 56))(*(v1 + 88), 1, 1, *(v1 + 64));
  }

  v15 = *(v1 + 96);
  v16 = *(v1 + 88);
  v17 = *(v1 + 64);
  (*(v15 + 16))(*(v1 + 104), *(v1 + 56) + *((*v3 & **(v1 + 56)) + 0x60), v17);
  if ((*(v15 + 48))(v16, 1, v17) != 1)
  {
    (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));
  }

LABEL_11:
  v18 = swift_task_alloc();
  *(v1 + 136) = v18;
  *v18 = v1;
  v18[1] = sub_21C6C3688;
  v19 = *(v1 + 104);
  v20 = *(v1 + 56);

  return sub_21C6C3840(v19);
}

uint64_t sub_21C6C3688()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_21C6C37A8, v4, v3);
}

uint64_t sub_21C6C37A8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];

  (*(v4 + 8))(v2, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21C6C3840(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21C6CECA0();
  v2[4] = sub_21C6CEC90();
  v4 = sub_21C6CEC80();

  return MEMORY[0x2822009F8](sub_21C6C38D8, v4, v3);
}

uint64_t sub_21C6C38D8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_21C6C3BF4(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_21C6C3944(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_21C6CEBC0();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v11 = a5;
    v12 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_21C6CED50();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_21C6C2830();
  v10 = sub_21C6CEB40();

LABEL_8:
  sub_21C6C435C(v14, v10);

  return sub_21C68F7D4(v14, qword_27CDE74B0, &qword_21C6D2240);
}

uint64_t sub_21C6C3A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21C6C28B8(a1, &v7);
  if (v8)
  {
    sub_21C6A6FC0(&v7, v9);
    sub_21C6A2734(v9, &v7);
    sub_21C6C50F8(&v7, a3);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_21C68F7D4(&v7, qword_27CDE74B0, &qword_21C6D2240);
    sub_21C68F0E4(a2, a3);
    v6 = type metadata accessor for PropertyListValue();
    return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
  }
}

void sub_21C6C3B58(uint64_t a1, void *a2)
{
  sub_21C6C5BF8(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_21C6CEE10();
  __swift_destroy_boxed_opaque_existential_1(v5);
  v4 = sub_21C6CEB90();
  [a2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_21C6C3BF4(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v11 - v6;
  v11[2] = v3;
  swift_getKeyPath();
  v11[0] = v3;
  swift_getKeyPath();
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1;
  v9 = sub_21C6CE1F0();
  return sub_21C6C2F48(v9);
}

id sub_21C6C3D2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = a3;
  v55 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - v8;
  v52 = type metadata accessor for PropertyListValue();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  MEMORY[0x28223BE20](v21);
  v53 = &v48 - v22;
  if (a4)
  {
    v23 = a4;
  }

  else
  {
    v23 = [objc_opt_self() standardUserDefaults];
  }

  v24 = a4;
  v25 = sub_21C6CEB90();
  v50 = v23;
  v26 = [v23 valueForKey_];

  if (v26)
  {
    sub_21C6CED50();
    swift_unknownObjectRelease();
    sub_21C6A6FC0(v57, v58);
    sub_21C6A2734(v58, v57);
    sub_21C6C50F8(v57, v9);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v27 = v10;
    v28 = *(v10 + 48);
    v29 = v52;
    if (v28(v9, 1, v52) == 1)
    {
      sub_21C68F0E4(v54, v20);
      if (v28(v9, 1, v29) != 1)
      {
        sub_21C68F7D4(v9, &qword_27CDE6DA8, &unk_21C6D1A90);
      }
    }

    else
    {
      sub_21C6BAACC(v9, v20);
    }

    v30 = v53;
    sub_21C6BAACC(v20, v53);
  }

  else
  {
    v27 = v10;
    v30 = v53;
    sub_21C68F0E4(v54, v53);
  }

  sub_21C68F0E4(v30, v17);
  sub_21C68F0E4(v54, v14);
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v49 = swift_allocObject();
  sub_21C6BAACC(v14, v49 + v31);
  v32 = swift_allocObject();
  v33 = v50;
  v34 = v55;
  *(v32 + 2) = v50;
  *(v32 + 3) = v34;
  *(v32 + 4) = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  v36 = objc_allocWithZone(v35);
  sub_21C68F0E4(v17, v14);
  v37 = MEMORY[0x277D85000];
  v38 = *((*MEMORY[0x277D85000] & *v36) + 0x58);
  swift_beginAccess();
  sub_21C68F0E4(v14, v51);
  v39 = v33;

  sub_21C6CE1D0();
  sub_21C6C2928(v14);
  swift_endAccess();
  sub_21C68F0E4(v17, v36 + *((*v37 & *v36) + 0x60));
  *(v36 + *((*v37 & *v36) + 0x68)) = v39;
  v40 = (v36 + *((*v37 & *v36) + 0x70));
  *v40 = v55;
  v40[1] = a2;
  v41 = (v36 + *((*v37 & *v36) + 0x78));
  v42 = v49;
  *v41 = sub_21C6C42D0;
  v41[1] = v42;
  v43 = (v36 + *((*v37 & *v36) + 0x80));
  *v43 = sub_21C6C4350;
  v43[1] = v32;
  v56.receiver = v36;
  v56.super_class = v35;
  v44 = v39;

  v45 = objc_msgSendSuper2(&v56, sel_init);
  v46 = sub_21C6CEB90();

  [v44 addObserver:v45 forKeyPath:v46 options:1 context:0];

  sub_21C6C2928(v54);
  sub_21C6C2928(v17);
  sub_21C6C2928(v53);
  return v45;
}

uint64_t sub_21C6C42D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PropertyListValue() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C6C3A88(a1, v6, a2);
}

void sub_21C6C4350(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_21C6C3B58(a1, *(v1 + 16));
}

uint64_t sub_21C6C435C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_21C6CECD0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21C6CECA0();

  v9 = v2;
  v10 = sub_21C6CEC90();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = v9;
  sub_21C68DC00(0, 0, v7, &unk_21C6D23D8, v11);
}

uint64_t sub_21C6C44C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C68F38C;

  return sub_21C6C3250(a1, v4, v5, v7, v6);
}

uint64_t sub_21C6C4584(uint64_t a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  sub_21C6A2734(a1, v5);
  v3(v5);
  return sub_21C68F7D4(v5, qword_27CDE74B0, &qword_21C6D2240);
}

uint64_t sub_21C6C45E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

id sub_21C6C4618()
{
  result = [objc_opt_self() mainBundle];
  qword_27CDE75B8 = result;
  return result;
}

id sub_21C6C4654@<X0>(void *a1@<X8>)
{
  if (qword_27CDE67D0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27CDE75B8;
  *a1 = qword_27CDE75B8;

  return v2;
}

uint64_t sub_21C6C46C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C6C4774();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C6C4728()
{
  sub_21C6C0328();
  sub_21C6CE4C0();
  return v1;
}

unint64_t sub_21C6C4774()
{
  result = qword_27CDE75C0;
  if (!qword_27CDE75C0)
  {
    sub_21C6A33B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE75C0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21C6C47E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21C6C4828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C6C4894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v24 = a4;
  v6 = sub_21C6CE4F0();
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE75C8, &qword_21C6D2538);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
  v18 = sub_21C6CE400();
  swift_getKeyPath();
  sub_21C6CE420();

  v25 = a1;
  v26 = a2;
  v27 = v21;
  type metadata accessor for PropertyListValue();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE75D0, &unk_21C6D2570);
  sub_21C6C4DFC();
  sub_21C6C4E54();
  sub_21C6CE9A0();
  sub_21C6CE4E0();
  sub_21C694224(&qword_27CDE75E0, &qword_27CDE75C8, &qword_21C6D2538);
  v19 = v22;
  sub_21C6CE7C0();
  (*(v23 + 8))(v10, v19);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_21C6C4BCC()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D90, &qword_21C6D25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE75E8, &qword_21C6D25A8);
  sub_21C694224(&qword_27CDE6ED8, &qword_27CDE6D90, &qword_21C6D25A0);
  sub_21C6C4DFC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
  type metadata accessor for PropertyListValue();
  sub_21C6A952C();
  swift_getOpaqueTypeConformance2();
  return sub_21C6CEA20();
}

__n128 sub_21C6C4D24@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_21C6BBF00(0, v11);
  v4 = v12;
  v5 = v13;
  v6 = *(type metadata accessor for LocalizedSettingValue() + 24);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE67F8, &unk_21C6D25B0) + 36);
  v9 = v11[1];
  v10 = v11[0];
  sub_21C68F0E4(a1 + v6, v7);
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6800, &unk_21C6CF7D0) + 36)) = 1;
  result = v10;
  *a2 = v10;
  a2[1] = v9;
  a2[2].n128_u16[0] = v4;
  a2[2].n128_u8[2] = v5;
  return result;
}

uint64_t sub_21C6C4DF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21C6C4BCC();
}

unint64_t sub_21C6C4DFC()
{
  result = qword_27CDE6E78;
  if (!qword_27CDE6E78)
  {
    type metadata accessor for PropertyListValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6E78);
  }

  return result;
}

unint64_t sub_21C6C4E54()
{
  result = qword_27CDE75D8;
  if (!qword_27CDE75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE75D0, &unk_21C6D2570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
    type metadata accessor for PropertyListValue();
    sub_21C6A952C();
    sub_21C6C4DFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE75D8);
  }

  return result;
}

uint64_t type metadata accessor for PropertyListValue()
{
  result = qword_27CDE75F0;
  if (!qword_27CDE75F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6C4F80()
{
  sub_21C6CDFD0();
  if (v0 <= 0x3F)
  {
    sub_21C6C5038();
    if (v1 <= 0x3F)
    {
      sub_21C6C5090();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21C6C5038()
{
  if (!qword_27CDE7600)
  {
    type metadata accessor for PropertyListValue();
    v0 = sub_21C6CEC70();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE7600);
    }
  }
}

void sub_21C6C5090()
{
  if (!qword_27CDE7608)
  {
    type metadata accessor for PropertyListValue();
    v0 = sub_21C6CEB50();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE7608);
    }
  }
}

uint64_t sub_21C6C50F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v85 = &v76 - v7;
  v8 = sub_21C6CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PropertyListValue();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v76 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v76 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  sub_21C6A2734(a1, &v97);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    *v27 = v94;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v29 = v14;
LABEL_54:
    __swift_destroy_boxed_opaque_existential_1(&v97);
    v75 = v88;
    sub_21C6BAACC(v27, v88);
    return (*(v29 + 56))(v75, 0, 1, v13);
  }

  v87 = v13;
  v86 = a1;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    v28 = *(&v94 + 1);
    *v27 = v94;
    *(v27 + 1) = v28;
    v13 = v87;
    goto LABEL_5;
  }

  v29 = v14;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    *v27 = v94;
    v13 = v87;
LABEL_53:
    swift_storeEnumTagMultiPayload();
    goto LABEL_54;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    (*(v9 + 32))(v27, v12, v8);
    v13 = v87;
    goto LABEL_53;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    *v27 = v94;
    v13 = v87;
    goto LABEL_53;
  }

  v30 = swift_dynamicCast();
  v13 = v87;
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    *v27 = v94;
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7618, &unk_21C6D2680);
  if (swift_dynamicCast())
  {
    v31 = *(v92[0] + 16);
    if (v31)
    {
      v83 = v92[0];
      v32 = v92[0] + 32;
      v33 = (v14 + 48);
      v34 = MEMORY[0x277D84F90];
      v35 = v85;
      v84 = (v29 + 48);
      do
      {
        sub_21C6A2734(v32, &v94);
        sub_21C6C50F8(&v94);
        if ((*v33)(v35, 1, v13) == 1)
        {
          sub_21C68F7D4(v35, &qword_27CDE6DA8, &unk_21C6D1A90);
        }

        else
        {
          sub_21C6BAACC(v35, v24);
          sub_21C68F0E4(v24, v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_21C6C6F1C(0, v34[2] + 1, 1, v34, &qword_27CDE7630, &qword_21C6D2698, type metadata accessor for PropertyListValue);
          }

          v37 = v34[2];
          v36 = v34[3];
          v38 = v34;
          if (v37 >= v36 >> 1)
          {
            v38 = sub_21C6C6F1C(v36 > 1, v37 + 1, 1, v34, &qword_27CDE7630, &qword_21C6D2698, type metadata accessor for PropertyListValue);
          }

          sub_21C6C2928(v24);
          *(v38 + 16) = v37 + 1;
          v34 = v38;
          sub_21C6BAACC(v21, v38 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v37);
          v13 = v87;
          v33 = v84;
        }

        v32 += 32;
        --v31;
      }

      while (v31);
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    __swift_destroy_boxed_opaque_existential_1(v86);
    *v27 = v34;
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7620, &unk_21C6D27F0);
  if (swift_dynamicCast())
  {
    v39 = v96;
    v78 = sub_21C6C9224(MEMORY[0x277D84F90]);
    v40 = 0;
    v42 = v39 + 64;
    v41 = *(v39 + 8);
    v85 = v39;
    v43 = 1 << v39[32];
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & v41;
    v46 = (v43 + 63) >> 6;
    v81 = (v14 + 48);
    v47 = v84;
    v80 = v39 + 64;
    v79 = v46;
LABEL_29:
    v48 = v40;
    v49 = v86;
    if (!v45)
    {
      goto LABEL_31;
    }

    do
    {
      v40 = v48;
LABEL_34:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v40 << 6);
      v52 = (*(v85 + 6) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      sub_21C6A2734(*(v85 + 7) + 32 * v51, v95);
      v92[0] = v54;
      v92[1] = v53;
      sub_21C6A6FC0(v95, &v93);
      sub_21C68F744(v92, v90, &qword_27CDE7628, &qword_21C6D2690);

      sub_21C6C50F8(v91);
      if ((*v81)(v47, 1, v13) != 1)
      {
        v55 = v82;
        sub_21C6BAACC(v47, v82);
        sub_21C68F744(v92, v90, &qword_27CDE7628, &qword_21C6D2690);
        v56 = v90[0];
        v57 = v90[1];
        sub_21C68F0E4(v55, v83);
        v58 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v58;
        v77 = v56;
        v61 = sub_21C6C70F8(v56, v57);
        v62 = *(v58 + 16);
        v63 = (v60 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_56;
        }

        if (*(v58 + 24) >= v64)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v73 = v60;
            sub_21C6C79B4();
            LOBYTE(v60) = v73;
          }
        }

        else
        {
          LODWORD(v78) = v60;
          sub_21C6C73C0(v64, isUniquelyReferenced_nonNull_native);
          v65 = sub_21C6C70F8(v77, v57);
          v66 = v60 & 1;
          LOBYTE(v60) = v78;
          if ((v78 & 1) != v66)
          {
            goto LABEL_58;
          }

          v61 = v65;
        }

        if (v60)
        {

          v78 = v89;
          sub_21C6C93F8(v83, v89[7] + *(v29 + 72) * v61);
          sub_21C6C2928(v82);
          sub_21C68F7D4(v92, &qword_27CDE7628, &qword_21C6D2690);
        }

        else
        {
          v67 = v57;
          v68 = v89;
          v89[(v61 >> 6) + 8] |= 1 << v61;
          v69 = (v68[6] + 16 * v61);
          *v69 = v77;
          v69[1] = v67;
          sub_21C6BAACC(v83, v68[7] + *(v29 + 72) * v61);
          sub_21C6C2928(v82);
          sub_21C68F7D4(v92, &qword_27CDE7628, &qword_21C6D2690);
          v70 = v68[2];
          v71 = __OFADD__(v70, 1);
          v72 = v70 + 1;
          if (v71)
          {
            goto LABEL_57;
          }

          v78 = v68;
          v68[2] = v72;
        }

        __swift_destroy_boxed_opaque_existential_1(v91);
        v42 = v80;
        v46 = v79;
        goto LABEL_29;
      }

      sub_21C68F7D4(v92, &qword_27CDE7628, &qword_21C6D2690);
      sub_21C68F7D4(v47, &qword_27CDE6DA8, &unk_21C6D1A90);
      v48 = v40;
      v49 = v86;
      v42 = v80;
      v46 = v79;
    }

    while (v45);
LABEL_31:
    while (1)
    {
      v40 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v40 >= v46)
      {
        __swift_destroy_boxed_opaque_existential_1(v49);

        *v27 = v78;
        goto LABEL_53;
      }

      v45 = *&v42[8 * v40];
      ++v48;
      if (v45)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = sub_21C6CEE30();
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v86);
    __swift_destroy_boxed_opaque_existential_1(&v97);
    return (*(v14 + 56))(v88, 1, 1, v13);
  }

  return result;
}

uint64_t sub_21C6C5BF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, &qword_21C6D26B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v77 - v9);
  MEMORY[0x28223BE20](v11);
  v85 = (&v77 - v12);
  v13 = type metadata accessor for PropertyListValue();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v77 - v19);
  sub_21C68F0E4(v2, &v77 - v19);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v25 = sub_21C6CDFD0();
        a1[3] = v25;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        return (*(*(v25 - 8) + 32))(boxed_opaque_existential_1, v20, v25);
      }

      else
      {
        v37 = *v20;
        a1[3] = MEMORY[0x277D83B88];
        *a1 = v37;
      }
    }

    else if (result)
    {
      a1[3] = MEMORY[0x277CC9318];
      *a1 = *v20;
    }

    else
    {
      v22 = *v20;
      v23 = v20[1];
      a1[3] = MEMORY[0x277D837D0];
      *a1 = v22;
      a1[1] = v23;
    }

    return result;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      v24 = *v20;
      a1[3] = MEMORY[0x277D839F8];
      *a1 = v24;
    }

    else
    {
      v36 = *v20;
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v36;
    }

    return result;
  }

  if (result == 6)
  {
    v27 = *v20;
    v28 = *(*v20 + 16);
    if (v28)
    {
      v29 = a1;
      *&v87[0] = MEMORY[0x277D84F90];
      sub_21C6C8148(0, v28, 0);
      v30 = *&v87[0];
      v31 = v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v32 = *(v14 + 72);
      do
      {
        v33 = sub_21C68F0E4(v31, v17);
        sub_21C6C5BF8(v88, v33);
        sub_21C6C2928(v17);
        *&v87[0] = v30;
        v35 = *(v30 + 16);
        v34 = *(v30 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_21C6C8148((v34 > 1), v35 + 1, 1);
          v30 = *&v87[0];
        }

        *(v30 + 16) = v35 + 1;
        sub_21C6A6FC0(v88, (v30 + 32 * v35 + 32));
        v31 += v32;
        --v28;
      }

      while (v28);

      a1 = v29;
    }

    else
    {
      v76 = *v20;

      v30 = MEMORY[0x277D84F90];
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7618, &unk_21C6D2680);
    a1[3] = result;
    *a1 = v30;
    return result;
  }

  v82 = v7;
  v83 = v14;
  v38 = *v20;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7620, &unk_21C6D27F0);
  v78 = a1;
  a1[3] = v39;
  v40 = v38 + 64;
  v41 = 1 << *(v38 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v38 + 64);
  v44 = (v41 + 63) >> 6;
  v84 = v38;

  v45 = 0;
  v46 = MEMORY[0x277D84F98];
  v79 = v44;
  v80 = v38 + 64;
  v81 = v10;
  while (v43)
  {
LABEL_30:
    v49 = __clz(__rbit64(v43)) | (v45 << 6);
    v50 = v85;
    v51 = (*(v84 + 48) + 16 * v49);
    v53 = *v51;
    v52 = v51[1];
    sub_21C68F0E4(*(v84 + 56) + *(v83 + 72) * v49, v85 + *(v4 + 48));
    *v50 = v53;
    v50[1] = v52;
    v54 = v4;
    sub_21C68F744(v50, v10, &qword_27CDE7648, &qword_21C6D26B0);
    v55 = *v10;
    v56 = v10[1];
    v57 = v82;
    sub_21C68F744(v50, v82, &qword_27CDE7648, &qword_21C6D26B0);
    v58 = *(v57 + 8);

    v60 = v54;
    v61 = *(v54 + 48);
    v62 = v55;
    sub_21C6C5BF8(v88, v59);
    sub_21C6C2928(v57 + v61);
    sub_21C6A6FC0(v88, v87);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v46;
    v65 = sub_21C6C70F8(v62, v56);
    v66 = v46[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_45;
    }

    v69 = v64;
    if (v46[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v4 = v60;
        if (v64)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_21C6C7BE4();
        v4 = v60;
        if (v69)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_21C6C76FC(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_21C6C70F8(v62, v56);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_47;
      }

      v65 = v70;
      v4 = v60;
      if (v69)
      {
LABEL_23:

        v46 = v86;
        v47 = (v86[7] + 32 * v65);
        __swift_destroy_boxed_opaque_existential_1(v47);
        sub_21C6A6FC0(v87, v47);
        sub_21C68F7D4(v85, &qword_27CDE7648, &qword_21C6D26B0);
        goto LABEL_24;
      }
    }

    v46 = v86;
    v86[(v65 >> 6) + 8] |= 1 << v65;
    v72 = (v46[6] + 16 * v65);
    *v72 = v62;
    v72[1] = v56;
    sub_21C6A6FC0(v87, (v46[7] + 32 * v65));
    sub_21C68F7D4(v85, &qword_27CDE7648, &qword_21C6D26B0);
    v73 = v46[2];
    v74 = __OFADD__(v73, 1);
    v75 = v73 + 1;
    if (v74)
    {
      goto LABEL_46;
    }

    v46[2] = v75;
LABEL_24:
    v43 &= v43 - 1;
    v10 = v81;
    sub_21C6C2928(v81 + *(v4 + 48));
    v44 = v79;
    v40 = v80;
  }

  while (1)
  {
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v48 >= v44)
    {

      *v78 = v46;
      return result;
    }

    v43 = *(v40 + 8 * v48);
    ++v45;
    if (v43)
    {
      v45 = v48;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_21C6CEE30();
  __break(1u);
  return result;
}

uint64_t sub_21C6C6280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_21C68F744(a1, &v15, qword_27CDE74B0, &qword_21C6D2240);
  if (!v16)
  {
    sub_21C68F7D4(a1, qword_27CDE74B0, &qword_21C6D2240);
    v12 = &v15;
    v10 = qword_27CDE74B0;
    v11 = &qword_21C6D2240;
    goto LABEL_5;
  }

  sub_21C6A6FC0(&v15, v17);
  sub_21C6A2734(v17, &v15);
  sub_21C6C50F8(&v15, v7);
  sub_21C68F7D4(a1, qword_27CDE74B0, &qword_21C6D2240);
  __swift_destroy_boxed_opaque_existential_1(v17);
  v8 = type metadata accessor for PropertyListValue();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = &qword_27CDE6DA8;
    v11 = &unk_21C6D1A90;
    v12 = v7;
LABEL_5:
    sub_21C68F7D4(v12, v10, v11);
    v13 = type metadata accessor for PropertyListValue();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  sub_21C6BAACC(v7, a2);
  return (*(v9 + 56))(a2, 0, 1, v8);
}

uint64_t sub_21C6C647C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_21C68F0E4(v14, v11);
        sub_21C68F0E4(v15, v7);
        v17 = sub_21C6C8B6C(v11, v7);
        sub_21C6C2928(v7);
        sub_21C6C2928(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_21C6C65F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7678, &qword_21C6D26E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = a2;
    v51 = (&v48 - v16);
    v17 = 0;
    v49 = a1;
    v18 = *(a1 + 64);
    v48 = a1 + 64;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
      v53 = (v21 - 1) & v21;
      v23 = __clz(__rbit64(v21)) | (v17 << 6);
      v24 = v52;
LABEL_16:
      v29 = (*(v49 + 48) + 16 * v23);
      v30 = *v29;
      v31 = v29[1];
      sub_21C68F0E4(*(v49 + 56) + *(v5 + 72) * v23, v11);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, &qword_21C6D26B0);
      v33 = *(v32 + 48);
      *v24 = v30;
      v24[1] = v31;
      sub_21C6BAACC(v11, v24 + v33);
      (*(*(v32 - 8) + 56))(v24, 0, 1, v32);

LABEL_17:
      v34 = v51;
      sub_21C6C94A4(v24, v51);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, &qword_21C6D26B0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = v11;
      v37 = v5;
      v38 = *(v35 + 48);
      v40 = *v34;
      v39 = v34[1];
      sub_21C6BAACC(v34 + v38, v8);
      v41 = v50;
      v42 = sub_21C6C70F8(v40, v39);
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        sub_21C6C2928(v8);
        return;
      }

      v45 = *(v41 + 56);
      v5 = v37;
      v11 = v36;
      sub_21C68F0E4(v45 + *(v37 + 72) * v42, v36);
      v46 = sub_21C6C8B6C(v36, v8);
      sub_21C6C2928(v36);
      sub_21C6C2928(v8);
      v21 = v53;
      if ((v46 & 1) == 0)
      {
        return;
      }
    }

    if (v22 <= v17 + 1)
    {
      v25 = v17 + 1;
    }

    else
    {
      v25 = v22;
    }

    v26 = v25 - 1;
    v24 = v52;
    while (1)
    {
      v27 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v27 >= v22)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, &qword_21C6D26B0);
        (*(*(v47 - 8) + 56))(v24, 1, 1, v47);
        v53 = 0;
        v17 = v26;
        goto LABEL_17;
      }

      v28 = *(v48 + 8 * v27);
      ++v17;
      if (v28)
      {
        v53 = (v28 - 1) & v28;
        v23 = __clz(__rbit64(v28)) | (v27 << 6);
        v17 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21C6C6A08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C6CDFD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PropertyListValue();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v32 - v15);
  sub_21C68F0E4(v2, &v32 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v23 = *v16;
        MEMORY[0x21CF0F5F0](6);
        MEMORY[0x21CF0F5F0](*(*&v23 + 16));
        v24 = *(*&v23 + 16);
        if (v24)
        {
          v25 = *&v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
          v26 = *(v10 + 72);
          do
          {
            sub_21C68F0E4(v25, v13);
            sub_21C6C6A08(a1);
            sub_21C6C2928(v13);
            v25 += v26;
            --v24;
          }

          while (v24);
        }
      }

      else
      {
        v31 = *v16;
        MEMORY[0x21CF0F5F0](7);
        sub_21C6C8450(a1, v31);
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      v20 = *v16;
      MEMORY[0x21CF0F5F0](4);
      v21 = 0.0;
      if (v20 != 0.0)
      {
        v21 = v20;
      }

      return MEMORY[0x21CF0F610](*&v21);
    }

    else
    {
      v29 = *v16;
      MEMORY[0x21CF0F5F0](5);
      return sub_21C6CEE70();
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v27 = *v16;
        v28 = v16[1];
        MEMORY[0x21CF0F5F0](1);
        sub_21C6CDFB0();
        return sub_21C6BB7CC(v27, v28);
      }

      v18 = *v16;
      v19 = v16[1];
      MEMORY[0x21CF0F5F0](0);
      sub_21C6CEBF0();
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v5 + 32))(v8, v16, v4);
      MEMORY[0x21CF0F5F0](2);
      sub_21C6C945C(&qword_27CDE7670, MEMORY[0x277CC9578]);
      sub_21C6CEB60();
      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      v30 = *v16;
      MEMORY[0x21CF0F5F0](3);
      return MEMORY[0x21CF0F5F0](v30);
    }
  }
}

uint64_t sub_21C6C6D84()
{
  sub_21C6CEE50();
  sub_21C6C6A08(v1);
  return sub_21C6CEE90();
}

uint64_t sub_21C6C6DC8()
{
  sub_21C6CEE50();
  sub_21C6C6A08(v1);
  return sub_21C6CEE90();
}

size_t sub_21C6C6F1C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_21C6C70F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21C6CEE50();
  sub_21C6CEBF0();
  v6 = sub_21C6CEE90();

  return sub_21C6C7204(a1, a2, v6);
}

unint64_t sub_21C6C7174(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21C6CEBC0();
  sub_21C6CEE50();
  sub_21C6CEBF0();
  v4 = sub_21C6CEE90();

  return sub_21C6C72BC(a1, v4);
}

unint64_t sub_21C6C7204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21C6CEE20())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21C6C72BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21C6CEBC0();
      v9 = v8;
      if (v7 == sub_21C6CEBC0() && v9 == v10)
      {
        break;
      }

      v12 = sub_21C6CEE20();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_21C6C73C0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PropertyListValue();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7638, &qword_21C6D26A0);
  v44 = a2;
  result = sub_21C6CEDC0();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_21C6BAACC(v31, v45);
      }

      else
      {
        sub_21C68F0E4(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_21C6CEE50();
      sub_21C6CEBF0();
      result = sub_21C6CEE90();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_21C6BAACC(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_21C6C76FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7658, &unk_21C6D26C0);
  v36 = a2;
  result = sub_21C6CEDC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_21C6A6FC0(v25, v37);
      }

      else
      {
        sub_21C6A2734(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_21C6CEE50();
      sub_21C6CEBF0();
      result = sub_21C6CEE90();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_21C6A6FC0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_21C6C79B4()
{
  v1 = v0;
  v2 = type metadata accessor for PropertyListValue();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7638, &qword_21C6D26A0);
  v5 = *v0;
  v6 = sub_21C6CEDB0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_21C68F0E4(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_21C6BAACC(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_21C6C7BE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7658, &unk_21C6D26C0);
  v2 = *v0;
  v3 = sub_21C6CEDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21C6A2734(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21C6A6FC0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21C6C7D88@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21C6CDEA0();
    if (v10)
    {
      v11 = sub_21C6CDEC0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21C6CDEB0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21C6CDEA0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21C6CDEC0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21C6CDEB0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_21C6C7FB8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21C6C894C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21C6BB7CC(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_21C6C7D88(v14, a3, a4, &v13);
  v10 = v4;
  sub_21C6BB7CC(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

char *sub_21C6C8148(char *a1, int64_t a2, char a3)
{
  result = sub_21C6C8340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21C6C8168(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F18, &qword_21C6D1038);
  v10 = *(type metadata accessor for LocalizedSettingValue() - 8);
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
  v15 = *(type metadata accessor for LocalizedSettingValue() - 8);
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

char *sub_21C6C8340(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7650, &qword_21C6D26B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21C6C8450(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = type metadata accessor for PropertyListValue();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7678, &qword_21C6D26E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v45 - v11);
  v13 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;
  v46 = a2;

  v19 = 0;
  v20 = 0;
  v48 = v9;
  v21 = &qword_21C6D26B0;
  if (v16)
  {
    while (1)
    {
      v49 = v19;
      v22 = v20;
LABEL_13:
      v25 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v26 = v25 | (v22 << 6);
      v27 = (*(v46 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = v50;
      sub_21C68F0E4(*(v46 + 56) + *(v45 + 72) * v26, v50);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, v21);
      v32 = *(v31 + 48);
      v33 = v48;
      *v48 = v28;
      v33[1] = v29;
      v34 = v33;
      sub_21C6BAACC(v30, v33 + v32);
      (*(*(v31 - 8) + 56))(v34, 0, 1, v31);

      v24 = v22;
      v35 = v21;
      v36 = v34;
      v19 = v49;
LABEL_14:
      sub_21C6C94A4(v36, v12);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, v35);
      if ((*(*(v37 - 8) + 48))(v12, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v37 + 48);
      v39 = *v12;
      v40 = v12[1];
      v41 = v50;
      sub_21C6BAACC(v12 + v38, v50);
      v42 = *(v47 + 48);
      v51[2] = *(v47 + 32);
      v51[3] = v42;
      v52 = *(v47 + 64);
      v43 = *(v47 + 16);
      v51[0] = *v47;
      v51[1] = v43;
      sub_21C6CEBF0();

      sub_21C6C6A08(v51);
      sub_21C6C2928(v41);
      result = sub_21C6CEE90();
      v19 ^= result;
      v20 = v24;
      v21 = v35;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x21CF0F5F0](v19);
  }

  else
  {
LABEL_5:
    if (v17 <= v20 + 1)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = v17;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v17)
      {
        v35 = v21;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, v21);
        v36 = v48;
        (*(*(v44 - 8) + 56))(v48, 1, 1, v44);
        v16 = 0;
        goto LABEL_14;
      }

      v16 = *(v13 + 8 * v22);
      ++v20;
      if (v16)
      {
        v49 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21C6C8824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7688, &qword_21C6D26F0);
    v3 = sub_21C6CEDD0();
    v4 = a1 + 32;

    while (1)
    {
      sub_21C68F744(v4, &v11, &qword_27CDE7690, &qword_21C6D26F8);
      v5 = v11;
      result = sub_21C6C7174(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21C6A6FC0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21C6C894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21C6CDEA0();
  v11 = result;
  if (result)
  {
    result = sub_21C6CDEC0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21C6CDEB0();
  sub_21C6C7D88(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_21C6C8A04(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21C6C9514(a3, a4);
          return sub_21C6C7FB8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21C6C8B6C(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_21C6CDFD0();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PropertyListValue();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v60 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v59 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = (&v59 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = (&v59 - v19);
  MEMORY[0x28223BE20](v21);
  v61 = &v59 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v59 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = (&v59 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7680, &qword_21C6D26E8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v59 - v31;
  v34 = (&v59 + *(v33 + 56) - v31);
  sub_21C68F0E4(v64, &v59 - v31);
  sub_21C68F0E4(a2, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_21C68F0E4(v32, v28);
        v37 = *v28;
        v36 = v28[1];
        if (!swift_getEnumCaseMultiPayload())
        {
          if (v37 == *v34 && v36 == v34[1])
          {
            v58 = v34[1];
          }

          else
          {
            v39 = v34[1];
            v40 = sub_21C6CEE20();

            if ((v40 & 1) == 0)
            {
              sub_21C6C2928(v32);
LABEL_38:
              v46 = 0;
              return v46 & 1;
            }
          }

          sub_21C6C2928(v32);
          v46 = 1;
          return v46 & 1;
        }

        goto LABEL_34;
      }

      sub_21C68F0E4(v32, v25);
      v50 = *v25;
      v51 = v25[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21C6BB7CC(v50, v51);
        goto LABEL_37;
      }

      v52 = *v34;
      v53 = v34[1];
      v46 = sub_21C6C8A04(v50, v51, *v34, v53);
      sub_21C6BB7CC(v52, v53);
      sub_21C6BB7CC(v50, v51);
      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v42 = v61;
      sub_21C68F0E4(v32, v61);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v62 + 8))(v42, v63);
        goto LABEL_37;
      }

      v44 = v62;
      v43 = v63;
      v45 = v59;
      (*(v62 + 32))(v59, v34, v63);
      v46 = sub_21C6CDFC0();
      v47 = *(v44 + 8);
      v47(v45, v43);
      v47(v42, v43);
      goto LABEL_33;
    }

    sub_21C68F0E4(v32, v20);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v41 = *v20 == *v34;
LABEL_27:
      v46 = v41;
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_21C68F0E4(v32, v11);
      v48 = *v11;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v49 = sub_21C6C647C(v48, *v34);
LABEL_32:
        v46 = v49;

LABEL_33:
        sub_21C6C2928(v32);
        return v46 & 1;
      }
    }

    else
    {
      v55 = v60;
      sub_21C68F0E4(v32, v60);
      v56 = *v55;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        sub_21C6C65F0(v56, *v34);
        goto LABEL_32;
      }
    }

LABEL_34:

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_21C68F0E4(v32, v17);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v41 = *v17 == *v34;
      goto LABEL_27;
    }

LABEL_37:
    sub_21C68F7D4(v32, &qword_27CDE7680, &qword_21C6D26E8);
    goto LABEL_38;
  }

  sub_21C68F0E4(v32, v14);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_37;
  }

  v54 = *v14 ^ *v34;
  sub_21C6C2928(v32);
  v46 = v54 ^ 1;
  return v46 & 1;
}

unint64_t sub_21C6C9110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7698, &unk_21C6D2700);
    v3 = sub_21C6CEDD0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21C6C70F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21C6C9224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7640, &qword_21C6D26A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7638, &qword_21C6D26A0);
    v8 = sub_21C6CEDD0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21C68F744(v10, v6, &qword_27CDE7640, &qword_21C6D26A8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_21C6C70F8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for PropertyListValue();
      result = sub_21C6BAACC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21C6C93F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6C945C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6C94A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7678, &qword_21C6D26E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6C9514(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for PropertyListValueView()
{
  result = qword_27CDE76A0;
  if (!qword_27CDE76A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6C95DC()
{
  sub_21C6C9668();
  if (v0 <= 0x3F)
  {
    sub_21C6A50C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6C9668()
{
  if (!qword_27CDE76B0)
  {
    type metadata accessor for PropertyListValue();
    v0 = sub_21C6CEA00();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE76B0);
    }
  }
}

double sub_21C6C96DC@<D0>(__n128 *a1@<X8>)
{
  v51 = a1;
  v2 = sub_21C6CE010();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v49.n128_u64[0] = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE72C8, &qword_21C6D2780);
  v5 = *(*(v50.n128_u64[0] - 8) + 64);
  MEMORY[0x28223BE20](v50.n128_u64[0]);
  v6 = type metadata accessor for PropertyListValue();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76B8, &unk_21C6D2788);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for LocalizedSettingValue();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PropertyListValueView();
  if (*(v1 + *(v19 + 20)))
  {
    v20 = v19;
    MEMORY[0x28223BE20](v19);
    *(&v47 - 2) = v1;
    sub_21C6C9FC8(sub_21C6CA1D8, v21, v13);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_21C6AAA94(v13, v18);
      sub_21C6BBF00(*(v1 + *(v20 + 24)), &v56);
      v52 = v56;
      v53 = v57;
      v55 = v59 != 0;
      v54 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
      sub_21C6A952C();
      sub_21C6A9634();
      sub_21C6CE5C0();
      sub_21C6A70A0(v18, type metadata accessor for LocalizedSettingValue);
      goto LABEL_14;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  sub_21C6CA170(v13);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
  MEMORY[0x21CF0F170](v22);
  sub_21C6C5BF8(v62);
  sub_21C6A70A0(v9, type metadata accessor for PropertyListValue);
  if (swift_dynamicCast())
  {
    v56 = v61;
    sub_21C68F5F0();
    v23 = sub_21C6CE760();
    v25 = v24;
    v52.n128_u64[0] = v23;
    v52.n128_u64[1] = v24;
    v27 = v26 & 1;
    v53.n128_u64[0] = v26 & 1;
    v53.n128_u64[1] = v28;
    LOBYTE(v54) = 0;
    sub_21C692AE8(v23, v24, v26 & 1);

    sub_21C6CE5C0();
    v52 = v56;
    v53 = v57;
    v54 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
    sub_21C6A95B8();
    sub_21C6CE5C0();
    sub_21C692AD8(v23, v25, v27);
  }

  else
  {
    sub_21C6B028C();
    if (swift_dynamicCast())
    {
      v48 = v61.n128_u64[0];
      v56.n128_u64[0] = [v61.n128_u64[0] integerValue];
      sub_21C6CDFF0();
      sub_21C6BCC18();
      sub_21C6CDED0();
      sub_21C6BCC6C();
      v29 = sub_21C6CE730();
      v31 = v30;
      v33 = v32 & 1;
      v52.n128_u64[0] = v29;
      v52.n128_u64[1] = v30;
      v53.n128_u64[0] = v32 & 1;
      v53.n128_u64[1] = v34;
      LOBYTE(v54) = 1;
      sub_21C692AE8(v29, v30, v32 & 1);

      sub_21C692AE8(v29, v31, v33);

      sub_21C6CE5C0();
      v35 = v56;
      v36 = v57.n128_u8[0];
      v52 = v56;
      v53 = v57;
      v54 = v58;
      sub_21C696B78(v56.n128_i64[0], v56.n128_i64[1], v57.n128_i8[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
      sub_21C6A95B8();
      sub_21C6CE5C0();

      sub_21C696C24(v35.n128_i64[0], v35.n128_i64[1], v36);
      sub_21C692AD8(v29, v31, v33);

      sub_21C692AD8(v29, v31, v33);
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
      v54 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
      sub_21C6A95B8();
      sub_21C6CE5C0();
    }
  }

  v37 = v58;
  v38 = HIBYTE(v58);
  v49 = v57;
  v50 = v56;
  v39 = v56;
  v40 = v57;
  sub_21C6BCBF8(v56.n128_i64[0], v56.n128_i64[1], v57.n128_i8[0], v57.n128_i64[1], v58, SHIBYTE(v58));
  __swift_destroy_boxed_opaque_existential_1(v62);
  if (v38)
  {
    v41 = 256;
  }

  else
  {
    v41 = 0;
  }

  v52 = v50;
  v53 = v49;
  v54 = v41 | v37;
  v55 = 256;
  sub_21C6BCBF8(v39.n128_i64[0], v39.n128_i64[1], v40.n128_i8[0], v40.n128_i64[1], v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
  sub_21C6A952C();
  sub_21C6A9634();
  sub_21C6CE5C0();
  sub_21C6BCC08(v39.n128_i64[0], v39.n128_i64[1], v40.n128_i8[0], v40.n128_i64[1], v37, v38);
  sub_21C6BCC08(v39.n128_i64[0], v39.n128_i64[1], v40.n128_i8[0], v40.n128_i64[1], v37, v38);
LABEL_14:
  result = v56.n128_f64[0];
  v43 = v57;
  v44 = v58 | (v59 << 16);
  v45 = v60;
  v46 = v51;
  *v51 = v56;
  v46[1] = v43;
  v46[2].n128_u16[0] = v44;
  v46[2].n128_u8[2] = BYTE2(v44);
  v46[2].n128_u8[3] = v45;
  return result;
}

uint64_t sub_21C6C9EEC(uint64_t a1)
{
  v2 = type metadata accessor for PropertyListValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for LocalizedSettingValue() + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
  MEMORY[0x21CF0F170](v7);
  v8 = sub_21C6C8B6C(a1 + v6, v5);
  sub_21C6A70A0(v5, type metadata accessor for PropertyListValue);
  return v8 & 1;
}

uint64_t sub_21C6C9FC8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LocalizedSettingValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_21C6B0228(v13, v11);
      v15 = a1(v11);
      if (v3)
      {
        return sub_21C6A70A0(v11, type metadata accessor for LocalizedSettingValue);
      }

      if (v15)
      {
        break;
      }

      sub_21C6A70A0(v11, type metadata accessor for LocalizedSettingValue);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_21C6AAA94(v11, v19);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_21C6CA170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76B8, &unk_21C6D2788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C6CA1F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C6A9634();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21C6CA27C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v435 = a3;
  v437 = a5;
  v459 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76D0, &qword_21C6D27A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v392 = &v341 - v10;
  v391 = type metadata accessor for MultiValueSetting();
  v416 = *(v391 - 8);
  v11 = v416[8];
  MEMORY[0x28223BE20](v391);
  v382 = &v341 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76D8, &qword_21C6D27A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v390 = &v341 - v15;
  v389 = type metadata accessor for TextFieldSetting();
  v415 = *(v389 - 8);
  v16 = v415[8];
  MEMORY[0x28223BE20](v389);
  v381 = &v341 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76E0, &qword_21C6D27B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v388 = &v341 - v20;
  v387 = type metadata accessor for TitleValueSetting();
  v414 = *(v387 - 8);
  v21 = *(v414 + 64);
  MEMORY[0x28223BE20](v387);
  v380 = &v341 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76E8, &qword_21C6D27B8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v386 = &v341 - v25;
  v385 = type metadata accessor for ToggleSetting();
  v413 = *(v385 - 8);
  v26 = *(v413 + 64);
  MEMORY[0x28223BE20](v385);
  v402 = &v341 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v421 = sub_21C6CDF20();
  v412 = *(v421 - 8);
  v28 = *(v412 + 64);
  MEMORY[0x28223BE20](v421);
  v377 = &v341 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v378 = &v341 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76F0, &qword_21C6D27C0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v396 = &v341 - v34;
  v395 = type metadata accessor for ChildPaneSetting();
  v411 = *(v395 - 8);
  v35 = *(v411 + 64);
  MEMORY[0x28223BE20](v395);
  v379 = &v341 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76F8, &unk_21C6D27C8);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v418 = &v341 - v39;
  v420 = type metadata accessor for Setting();
  v425 = *(v420 - 8);
  v40 = *(v425 + 64);
  MEMORY[0x28223BE20](v420);
  v429 = &v341 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v400 = (&v341 - v43);
  MEMORY[0x28223BE20](v44);
  v430 = &v341 - v45;
  v46 = sub_21C6CE010();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v383 = &v341 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21C6CEB80();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v384 = &v341 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v408 = &v341 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v407 = &v341 - v56;
  MEMORY[0x28223BE20](v57);
  v399 = &v341 - v58;
  MEMORY[0x28223BE20](v59);
  v403 = &v341 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7700, &qword_21C6D27D8);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v398 = &v341 - v63;
  v397 = type metadata accessor for RadioGroupSetting();
  v410 = *(v397 - 8);
  v64 = *(v410 + 64);
  MEMORY[0x28223BE20](v397);
  v393 = &v341 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7708, &unk_21C6D27E0);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66 - 8);
  v426 = &v341 - v68;
  v428 = type metadata accessor for SettingsSection();
  v423 = *(v428 - 8);
  v69 = *(v423 + 64);
  MEMORY[0x28223BE20](v428);
  v417 = (&v341 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v71);
  v419 = &v341 - v72;
  MEMORY[0x28223BE20](v73);
  v406 = (&v341 - v74);
  MEMORY[0x28223BE20](v75);
  v401 = (&v341 - v76);
  MEMORY[0x28223BE20](v77);
  v409 = &v341 - v78;
  v432 = sub_21C6CDF00();
  v431 = *(v432 - 8);
  v79 = *(v431 + 64);
  MEMORY[0x28223BE20](v432);
  v394 = &v341 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v422 = &v341 - v82;
  MEMORY[0x28223BE20](v83);
  v405 = &v341 - v84;
  MEMORY[0x28223BE20](v85);
  v404 = &v341 - v86;
  MEMORY[0x28223BE20](v87);
  v424 = &v341 - v88;
  MEMORY[0x28223BE20](v89);
  v433 = &v341 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91 - 8);
  v434 = &v341 - v93;
  v94 = sub_21C6CDF80();
  v436 = *(v94 - 8);
  v95 = *(v436 + 64);
  MEMORY[0x28223BE20](v94);
  v97 = &v341 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v100 = &v341 - v99;
  MEMORY[0x28223BE20](v101);
  v103 = &v341 - v102;
  v104 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  swift_bridgeObjectRetain_n();

  v427 = a1;
  v105 = v438;
  v106 = sub_21C6BF2EC(a1, a2, 0);
  if (v105)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_11;
  }

  v373 = v100;
  v374 = v103;
  v371 = v97;
  v438 = v94;
  v375 = a4;
  v376 = a2;
  v107 = v106;
  if (([v106 hasSettingsBundle] & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v123 = 0;
    v124 = 0;
    v118 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v132 = v437;
    goto LABEL_10;
  }

  v372 = 0;
  v108 = [v107 URL];
  v109 = v373;
  sub_21C6CDF60();

  v110 = v374;
  sub_21C6CDF50();
  v112 = v436 + 8;
  v111 = *(v436 + 8);
  v113 = v438;
  v111(v109, v438);
  v114 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v115 = sub_21C6CDF40();
  v116 = [v114 initWithURL_];

  v117 = v113;
  v118 = v116;
  v119 = v110;
  v120 = v111;
  v111(v119, v117);
  if (!v116)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v123 = 0;
    v124 = 0;
    goto LABEL_9;
  }

  v374 = v107;
  v121 = v434;
  sub_21C6CD320(v116, v434);
  v122 = v436;
  if ((*(v436 + 48))(v121, 1, v117) == 1)
  {

    sub_21C68F7D4(v121, &qword_27CDE6BF8, &qword_21C6D0A30);

    v123 = 0;
    v124 = 0;
    v118 = 0;
LABEL_9:
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v132 = v437;
    goto LABEL_10;
  }

  v369 = v112;
  v370 = v120;
  v134 = v371;
  (*(v122 + 32))(v371, v121, v117);
  v373 = v116;
  v135 = v117;
  v136 = [v116 bundleURL];
  v137 = v433;
  sub_21C6CDF60();

  v138 = v431;
  v139 = v432;
  (*(v431 + 104))(v137, *MEMORY[0x277CC9118], v432);
  v140 = v372;
  v141 = sub_21C6CDF90();
  if (v140)
  {

    (*(v138 + 8))(v137, v139);
    v143 = v134;
    v144 = v135;
LABEL_14:
    v370(v143, v144);

    goto LABEL_11;
  }

  v372 = 0;
  v145 = v141;
  v146 = v142;
  v147 = objc_opt_self();
  v148 = sub_21C6CDFA0();
  v450[0] = 0;
  v149 = [v147 propertyListWithData:v148 options:0 format:0 error:v450];

  if (!v149)
  {
    v161 = v450[0];

    sub_21C6CDEE0();

    swift_willThrow();
    sub_21C6BB7CC(v145, v146);

    (*(v138 + 8))(v433, v432);
    v143 = v371;
    v144 = v438;
    goto LABEL_14;
  }

  v365 = v146;
  v366 = v145;
  v150 = v450[0];
  sub_21C6CED50();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7620, &unk_21C6D27F0);
  v151 = swift_dynamicCast();
  v152 = v373;
  v154 = v370;
  v153 = v371;
  if ((v151 & 1) == 0)
  {

    sub_21C6BB7CC(v366, v365);

    (*(v138 + 8))(v433, v432);
    v154(v153, v438);

    v132 = v437;
    goto LABEL_27;
  }

  v155 = v440;
  v132 = v437;
  if (*(v440 + 16))
  {
    v156 = sub_21C6C70F8(0x5473676E69727453, 0xEC000000656C6261);
    v127 = v427;
    if (v157)
    {
      sub_21C6A2734(*(v155 + 56) + 32 * v156, v450);
      v158 = swift_dynamicCast();
      v159 = v440;
      if (!v158)
      {
        v159 = 0;
      }

      v357 = v159;
      if (v158)
      {
        v160 = v441;
      }

      else
      {
        v160 = 0;
      }

      v367 = v160;
    }

    else
    {
      v357 = 0;
      v367 = 0;
    }
  }

  else
  {
    v357 = 0;
    v367 = 0;
    v127 = v427;
  }

  v162 = *(v155 + 16);
  if (v162)
  {
    v163 = sub_21C6C70F8(0xD000000000000023, 0x800000021C6D34E0);
    if (v164)
    {
      sub_21C6A2734(*(v155 + 56) + 32 * v163, v450);
      v165 = swift_dynamicCast();
      if (v165)
      {
        v166 = v440;
      }

      else
      {
        v166 = 0;
      }

      if (v165)
      {
        v162 = v441;
      }

      else
      {
        v162 = 0;
      }
    }

    else
    {
      v166 = 0;
      v162 = 0;
    }
  }

  else
  {
    v166 = 0;
  }

  v364 = v166;
  v368 = v162;
  if (!*(v155 + 16) || (v167 = sub_21C6C70F8(0xD000000000000014, 0x800000021C6D3510), (v168 & 1) == 0))
  {

    goto LABEL_45;
  }

  sub_21C6A2734(*(v155 + 56) + 32 * v167, v450);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7710, &qword_21C6D2800);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    v169 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v169 = v440;
LABEL_46:
  v170 = v415;
  v171 = *(v169 + 16);
  if (!v171)
  {
    sub_21C6BB7CC(v366, v365);

    v339 = MEMORY[0x277D84F90];
    v338 = v153;
LABEL_210:
    v416 = v339;

    v128 = v376;

    v340 = v375;

    (*(v138 + 8))(v433, v432);
    v118 = v340;
    v370(v338, v438);
    v440 = v339;
    v441 = v435;
    v442 = v340;
    v125 = v357;
    v443 = v357;
    v126 = v367;
    v444 = v367;
    v445 = v127;
    v446 = v128;
    v447 = v364;
    v131 = v373;
    v448 = v368;
    v449 = v373;
    v450[0] = v416;
    v450[1] = v435;
    v450[2] = v118;
    v450[3] = v357;
    v450[4] = v367;
    v450[5] = v127;
    v450[6] = v128;
    v450[7] = v364;
    v450[8] = v368;
    v450[9] = v373;
    sub_21C6CD4DC(&v440, &v439);
    sub_21C6CD514(v450);
    v129 = v364;
    v130 = v368;
    v124 = v435;
    v123 = v416;
    goto LABEL_10;
  }

  v172 = 0;
  v173 = 0;
  v175 = v435 == 1953460050 && v375 == 0xE400000000000000;
  LODWORD(v436) = v175;
  v415 = (v138 + 16);
  v176 = (v138 + 8);
  v352 = (v410 + 48);
  v353 = (v412 + 56);
  v361 = (v423 + 56);
  v360 = (v423 + 48);
  v356 = "PSMultiValueSpecifier";
  v355 = 0x800000021C6D29C0;
  v350 = (v416 + 6);
  v351 = "DisplaySortedByTitle";
  v348 = (v414 + 48);
  v349 = (v170 + 6);
  v343 = (v412 + 32);
  v344 = (v412 + 8);
  v346 = (v411 + 56);
  v347 = (v413 + 48);
  v345 = (v411 + 48);
  v354 = "PSGroupSpecifier";
  v358 = (v425 + 48);
  v359 = (v425 + 56);
  v416 = MEMORY[0x277D84F90];
  v177 = v426;
  v363 = v171;
  v413 = v138 + 8;
  v410 = v169;
  while (1)
  {
    if (v173 >= *(v169 + 16))
    {
      __break(1u);
    }

    v178 = *(v169 + 8 * v173 + 32);
    if (v436 & 1) != 0 || (v179 = sub_21C6CEE20(), v180 = 0, (v179))
    {
      v180 = v172 == 0;
    }

    if (!*(v178 + 16))
    {
      goto LABEL_55;
    }

    LODWORD(v434) = v180;

    v181 = sub_21C6C70F8(1701869908, 0xE400000000000000);
    if (v182)
    {
      sub_21C6A2734(*(v178 + 56) + 32 * v181, v450);
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_55:
    if (v171 == ++v173)
    {
      sub_21C6BB7CC(v366, v365);

      v132 = v437;
      v127 = v427;
      v138 = v431;
      v338 = v371;
      v339 = v416;
      goto LABEL_210;
    }
  }

  v414 = v172;
  v183 = sub_21C6CEDF0();

  v184 = v415 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  if (v183)
  {
    v185 = v433;
    v186 = v416;
    if (v183 != 1)
    {
      v198 = *v415;
      v187 = v432;
      goto LABEL_79;
    }

    v362 = 1;
    v187 = v432;
  }

  else
  {
    v362 = 0;
    v187 = v432;
    v185 = v433;
    v186 = v416;
  }

  v188 = v424;
  v412 = *v415;
  (v412)(v424, v185, v187);
  if (!*(v178 + 16))
  {
    goto LABEL_76;
  }

  v411 = v184;

  v189 = sub_21C6C70F8(1701869908, 0xE400000000000000);
  if ((v190 & 1) == 0)
  {

    v176 = v413;
    v184 = v411;
LABEL_76:
    (*v176)(v188, v187);
    v197 = 1;
    goto LABEL_77;
  }

  sub_21C6A2734(*(v178 + 56) + 32 * v189, v450);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v176 = v413;
    (*v413)(v188, v187);

    v197 = 1;
    v184 = v411;
    goto LABEL_77;
  }

  v191 = sub_21C6CEDF0();

  v192 = v405;
  v176 = v413;
  if (v191)
  {
    if (v191 != 1)
    {
      v187 = v432;
      (*v413)(v424, v432);

      v197 = 1;
      v186 = v416;
      v184 = v411;
      goto LABEL_77;
    }

    v193 = v424;
    v187 = v432;
    (v412)(v405, v424, v432);
    v194 = v376;

    v195 = v398;
    sub_21C6AACF8(v434, v178, v357, v367, v192, v427, v194, v364, v398, v368);
    (*v176)(v193, v187);
    v196 = (*v352)(v195, 1, v397);
    v186 = v416;
    v184 = v411;
    if (v196 == 1)
    {
      sub_21C68F7D4(v195, &qword_27CDE7700, &qword_21C6D27D8);
      v197 = 1;
      v177 = v426;
      goto LABEL_77;
    }

    v279 = v195;
    v280 = v393;
    sub_21C6CD60C(v279, v393, type metadata accessor for RadioGroupSetting);
    v278 = v401;
    sub_21C6CD60C(v280, v401, type metadata accessor for RadioGroupSetting);
  }

  else
  {
    v256 = v404;
    (v412)(v404, v424, v432);
    v257 = v399;
    if (*(v178 + 16) && (v258 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v259 & 1) != 0) && (sub_21C6A2734(*(v178 + 56) + 32 * v258, v450), (swift_dynamicCast() & 1) != 0) && v441)
    {

      sub_21C6CEB70();
      (v412)(v192, v256, v432);

      sub_21C6CE000();
      v257 = v399;
      sub_21C6CDF30();
      v260 = *v353;
      (*v353)(v403, 0, 1, v421);
    }

    else
    {
      v260 = *v353;
      (*v353)(v403, 1, 1, v421);
    }

    if (*(v178 + 16) && (v261 = sub_21C6C70F8(0x65547265746F6F46, 0xEA00000000007478), (v262 & 1) != 0) && (sub_21C6A2734(*(v178 + 56) + 32 * v261, v450), (swift_dynamicCast() & 1) != 0) && v441)
    {

      sub_21C6CEB70();
      (v412)(v192, v404, v432);

      sub_21C6CE000();
      v257 = v399;
      sub_21C6CDF30();
      v260(v257, 0, 1, v421);
    }

    else
    {
      v260(v257, 1, 1, v421);
    }

    v263 = MEMORY[0x277D84F90];

    v264 = v403;
    if (*(v178 + 16) && (v265 = sub_21C6C70F8(0xD00000000000001CLL, v351 | 0x8000000000000000), (v266 & 1) != 0) && (sub_21C6A2734(*(v178 + 56) + 32 * v265, v450), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60), swift_dynamicCast()))
    {
      v342 = v440;
    }

    else
    {
      v342 = v263;
    }

    v267 = v407;
    sub_21C6A96C0(v264, v407);
    sub_21C6A96C0(v257, v408);
    v268 = type metadata accessor for StandardGroupSetting();
    v269 = *(v268 + 48);
    v270 = *(v268 + 52);
    v271 = swift_allocObject();
    *(v271 + 16) = 0;
    v341 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items;
    sub_21C68F7D4(v257, &qword_27CDE6F10, &qword_21C6D1030);
    sub_21C68F7D4(v264, &qword_27CDE6F10, &qword_21C6D1030);
    v272 = *v176;
    v273 = v432;
    (*v176)(v424, v432);
    *(v271 + v341) = MEMORY[0x277D84F90];
    *(v271 + 17) = v434;
    sub_21C6AC488(v267, v271 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader);
    sub_21C6AC488(v408, v271 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter);
    v274 = (v271 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier);
    v275 = v376;
    *v274 = v427;
    v274[1] = v275;
    v276 = (v271 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationGroupContainerIdentifier);
    v277 = v368;
    *v276 = v364;
    v276[1] = v277;
    *(v271 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_supportedUserInterfaceIdioms) = v342;

    v272(v404, v273);
    v278 = v401;
    *v401 = v271;
    v186 = v416;
    v184 = v411;
  }

  swift_storeEnumTagMultiPayload();
  v177 = v426;
  sub_21C6CD60C(v278, v426, type metadata accessor for SettingsSection);
  v197 = 0;
  v187 = v432;
LABEL_77:
  v199 = v428;
  (*v361)(v177, v197, 1, v428);
  if ((*v360)(v177, 1, v199) != 1)
  {

    v209 = v409;
    sub_21C6CD60C(v177, v409, type metadata accessor for SettingsSection);
    v210 = v356;
    if (v362)
    {
      v210 = v354;
    }

    if ((v210 | 0x8000000000000000) == v355)
    {
      v211 = v362;
    }

    else
    {
      v211 = 1;
    }

    if (v211)
    {
      v212 = sub_21C6CEE20();

      if ((v212 & 1) == 0)
      {
        v213 = v419;
        goto LABEL_117;
      }
    }

    else
    {
    }

    v243 = v406;
    sub_21C6CD544(v209, v406, type metadata accessor for SettingsSection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v213 = v419;
    if (EnumCaseMultiPayload == 1)
    {

      v245 = *v243;
LABEL_118:
      sub_21C6CD544(v209, v213, type metadata accessor for SettingsSection);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v186 = sub_21C6C6EF4(0, v186[2] + 1, 1, v186);
      }

      v247 = v186[2];
      v246 = v186[3];
      if (v247 >= v246 >> 1)
      {
        v186 = sub_21C6C6EF4(v246 > 1, v247 + 1, 1, v186);
      }

      sub_21C6CD5AC(v209, type metadata accessor for SettingsSection);
      v186[2] = v247 + 1;
      v248 = (*(v423 + 80) + 32) & ~*(v423 + 80);
      v416 = v186;
      sub_21C6CD60C(v419, v186 + v248 + *(v423 + 72) * v247, type metadata accessor for SettingsSection);
      v169 = v410;
      v172 = v245;
      goto LABEL_123;
    }

    sub_21C6CD5AC(v243, type metadata accessor for SettingsSection);
LABEL_117:
    v245 = v414;
    goto LABEL_118;
  }

  sub_21C68F7D4(v177, &qword_27CDE7708, &unk_21C6D27E0);
  v185 = v433;
  v198 = v412;
LABEL_79:
  v200 = v422;
  v198(v422, v185, v187);
  if (!*(v178 + 16))
  {
    goto LABEL_98;
  }

  v412 = v198;
  v411 = v184;

  v201 = sub_21C6C70F8(1701869908, 0xE400000000000000);
  if ((v202 & 1) == 0)
  {

LABEL_98:

    v206 = *v176;
    (*v176)(v200, v187);
LABEL_99:
    v214 = 1;
    v215 = v421;
    v216 = v418;
    goto LABEL_100;
  }

  sub_21C6A2734(*(v178 + 56) + 32 * v201, v450);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v206 = *v176;
    (*v176)(v200, v187);

    goto LABEL_99;
  }

  v203 = sub_21C6CEDF0();

  if (v203 <= 2)
  {
    v204 = v402;
    if (v203)
    {
      if (v203 != 1)
      {
        v200 = v422;
        if (v203 == 2)
        {

          v205 = v376;

          sub_21C6B06F4(v178, v427, v205, v364, v368, &v451);
          v206 = *v176;
          (*v176)(v200, v432);
          v207 = v452;
          if (v452)
          {
            v208 = v400;
            *v400 = v451;
            *(v208 + 2) = v207;
            *(v208 + 56) = v455;
            *(v208 + 72) = v456;
            *(v208 + 88) = v457;
            *(v208 + 104) = v458;
            *(v208 + 24) = v453;
            *(v208 + 40) = v454;
LABEL_176:
            v215 = v421;
LABEL_177:
            v216 = v418;
            v186 = v416;
            goto LABEL_178;
          }

          goto LABEL_169;
        }

        goto LABEL_165;
      }

      v294 = v405;
      v295 = v432;
      (v412)(v405, v422, v432);
      v296 = v376;

      v297 = v386;
      sub_21C6B9E14(v178, v357, v294, v427, v296, v364, v368, v386);
      v206 = *v176;
      (*v176)(v422, v295);
      if ((*v347)(v297, 1, v385) != 1)
      {
        sub_21C6CD60C(v297, v204, type metadata accessor for ToggleSetting);
        v208 = v400;
        sub_21C6CD60C(v204, v400, type metadata accessor for ToggleSetting);
        goto LABEL_176;
      }

      v253 = v297;
      v254 = &qword_27CDE76E8;
      v255 = &qword_21C6D27B8;
      goto LABEL_168;
    }

    v281 = v394;
    (v412)(v394, v422, v432);
    v215 = v421;
    v282 = v395;
    if (*(v178 + 16))
    {

      v283 = sub_21C6C70F8(0x656C746954, 0xE500000000000000);
      if (v284)
      {
        sub_21C6A2734(*(v178 + 56) + 32 * v283, v450);
        if (swift_dynamicCast())
        {
          v285 = HIBYTE(v441) & 0xF;
          if ((v441 & 0x2000000000000000) == 0)
          {
            v285 = v440 & 0xFFFFFFFFFFFFLL;
          }

          if (!v285)
          {
            v206 = *v413;
            v315 = v432;
            (*v413)(v394, v432);

            v316 = 1;
            v215 = v421;
LABEL_204:
            v282 = v395;
            goto LABEL_205;
          }

          sub_21C6CEB70();
          (v412)(v405, v394, v432);
          sub_21C6CE000();
          sub_21C6CDF30();
          if (*(v178 + 16))
          {
            v286 = sub_21C6C70F8(0x6853646C756F6853, 0xEE0052504447776FLL);
            if (v287)
            {
              sub_21C6A2734(*(v178 + 56) + 32 * v286, v450);
              if (swift_dynamicCast() & 1) != 0 && (v440)
              {
                v411 = 0;
                v412 = 0xE000000000000000;
                v362 = 1;
LABEL_190:
                if (*(v178 + 16) && (v321 = sub_21C6C70F8(0xD00000000000001CLL, v351 | 0x8000000000000000), (v322 & 1) != 0))
                {
                  sub_21C6A2734(*(v178 + 56) + 32 * v321, v450);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
                  if (swift_dynamicCast())
                  {
                    v206 = *v413;
                    (*v413)(v394, v432);
                    v323 = v440;
LABEL_200:
                    v324 = *v343;
                    v325 = v377;
                    v215 = v421;
                    (*v343)(v377, v378, v421);
                    v326 = v395;
                    v327 = v396;
                    *v396 = 0;
                    v328 = v325;
                    v282 = v326;
                    v324(&v327[v326[5]], v328, v215);
                    v316 = 0;
                    v329 = &v327[v282[6]];
                    v330 = v412;
                    *v329 = v411;
                    v329[1] = v330;
                    v327[v282[7]] = v362;
                    v331 = &v327[v282[8]];
                    v332 = v376;
                    *v331 = v427;
                    v331[1] = v332;
                    v333 = &v327[v282[9]];
                    v334 = v368;
                    *v333 = v364;
                    v333[1] = v334;
                    *&v327[v282[10]] = v323;
                    v315 = v432;
                    goto LABEL_205;
                  }
                }

                else
                {
                }

                v206 = *v413;
                (*v413)(v394, v432);
                v323 = MEMORY[0x277D84F90];
                goto LABEL_200;
              }
            }
          }

          if (*(v178 + 16))
          {
            v318 = sub_21C6C70F8(1701603654, 0xE400000000000000);
            if (v319)
            {
              sub_21C6A2734(*(v178 + 56) + 32 * v318, v450);
              if (swift_dynamicCast())
              {
                v320 = HIBYTE(v441) & 0xF;
                v411 = v440;
                v412 = v441;
                if ((v441 & 0x2000000000000000) == 0)
                {
                  v320 = v440 & 0xFFFFFFFFFFFFLL;
                }

                if (v320)
                {
                  v362 = 0;
                  goto LABEL_190;
                }
              }
            }
          }

          v206 = *v413;
          v315 = v432;
          (*v413)(v394, v432);
          v215 = v421;
          (*v344)(v378, v421);
        }

        else
        {
          v206 = *v176;
          v317 = v281;
          v315 = v432;
          (*v176)(v317, v432);
        }

        v316 = 1;
        goto LABEL_204;
      }
    }

    v206 = *v176;
    v314 = v281;
    v315 = v432;
    (*v176)(v314, v432);
    v316 = 1;
LABEL_205:
    v335 = v396;
    (*v346)(v396, v316, 1, v282);
    v206(v422, v315);
    if ((*v345)(v335, 1, v282) != 1)
    {
      v336 = v379;
      sub_21C6CD60C(v396, v379, type metadata accessor for ChildPaneSetting);
      v337 = v336;
      v208 = v400;
      sub_21C6CD60C(v337, v400, type metadata accessor for ChildPaneSetting);
      goto LABEL_177;
    }

    sub_21C68F7D4(v335, &qword_27CDE76F0, &qword_21C6D27C0);
    v214 = 1;
LABEL_170:
    v216 = v418;
    v186 = v416;
    goto LABEL_100;
  }

  if (v203 == 3)
  {
    v288 = v405;
    v289 = v200;
    v290 = v200;
    v291 = v432;
    (v412)(v405, v289, v432);
    v292 = v376;

    v293 = v388;
    sub_21C6B8198(v178, v357, v367, v288, v427, v292, v364, v368, v388);
    v206 = *v176;
    (*v176)(v290, v291);
    if ((*v348)(v293, 1, v387) != 1)
    {
      v306 = v293;
      v307 = v380;
      sub_21C6CD60C(v306, v380, type metadata accessor for TitleValueSetting);
      v308 = v307;
      v208 = v400;
      sub_21C6CD60C(v308, v400, type metadata accessor for TitleValueSetting);
      goto LABEL_176;
    }

    v253 = v293;
    v254 = &qword_27CDE76E0;
    v255 = &qword_21C6D27B0;
    goto LABEL_168;
  }

  if (v203 != 4)
  {
    if (v203 != 5)
    {
LABEL_165:
      v206 = *v176;
      (*v176)(v200, v432);

LABEL_169:
      v214 = 1;
      v215 = v421;
      goto LABEL_170;
    }

    v249 = v405;
    v250 = v432;
    (v412)(v405, v200, v432);
    v251 = v376;

    v252 = v392;
    sub_21C6A5220(v178, v357, v367, v249, v427, v251, v364, v368, v392);
    v206 = *v176;
    (*v176)(v200, v250);
    if ((*v350)(v252, 1, v391) != 1)
    {
      v309 = v252;
      v310 = v382;
      sub_21C6CD60C(v309, v382, type metadata accessor for MultiValueSetting);
      v311 = v310;
      v208 = v400;
      sub_21C6CD60C(v311, v400, type metadata accessor for MultiValueSetting);
      goto LABEL_176;
    }

    v253 = v252;
    v254 = &qword_27CDE76D0;
    v255 = &qword_21C6D27A0;
LABEL_168:
    sub_21C68F7D4(v253, v254, v255);
    goto LABEL_169;
  }

  v298 = v405;
  v299 = v200;
  v300 = v200;
  v301 = v432;
  (v412)(v405, v299, v432);
  v302 = v376;

  v303 = v176;
  v304 = v390;
  sub_21C6B63B8(v178, v298, v427, v302, v364, v368, v390);
  v206 = *v303;
  (*v303)(v300, v301);
  v305 = (*v349)(v304, 1, v389);
  v215 = v421;
  v186 = v416;
  if (v305 == 1)
  {
    sub_21C68F7D4(v304, &qword_27CDE76D8, &qword_21C6D27A8);
    v214 = 1;
    v216 = v418;
    goto LABEL_100;
  }

  v312 = v381;
  sub_21C6CD60C(v304, v381, type metadata accessor for TextFieldSetting);
  v313 = v312;
  v208 = v400;
  sub_21C6CD60C(v313, v400, type metadata accessor for TextFieldSetting);
  v216 = v418;
LABEL_178:
  swift_storeEnumTagMultiPayload();
  sub_21C6CD60C(v208, v216, type metadata accessor for Setting);
  v214 = 0;
LABEL_100:
  v217 = v420;
  (*v359)(v216, v214, 1, v420);
  if ((*v358)(v216, 1, v217) != 1)
  {
    v218 = v216;
    v219 = v430;
    sub_21C6CD60C(v218, v430, type metadata accessor for Setting);
    v220 = v414;
    if (v414)
    {
      v221 = v429;
    }

    else
    {
      v222 = *v353;
      v223 = v407;
      (*v353)(v407, 1, 1, v215);
      v224 = v408;
      v222(v408, 1, 1, v215);
      v225 = type metadata accessor for StandardGroupSetting();
      v226 = *(v225 + 48);
      v227 = *(v225 + 52);
      v228 = swift_allocObject();
      *(v228 + 16) = 0;
      v229 = MEMORY[0x277D84F90];
      *(v228 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items) = MEMORY[0x277D84F90];
      *(v228 + 17) = v434;
      v230 = v223;
      v186 = v416;
      sub_21C6AC488(v230, v228 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader);
      sub_21C6AC488(v224, v228 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter);
      v231 = (v228 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier);
      v232 = v376;
      *v231 = v427;
      v231[1] = v232;
      v233 = (v228 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationGroupContainerIdentifier);
      v234 = v368;
      *v233 = v364;
      v233[1] = v234;
      *(v228 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_supportedUserInterfaceIdioms) = v229;
      *v417 = v228;
      swift_storeEnumTagMultiPayload();

      v220 = v228;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v186 = sub_21C6C6EF4(0, v186[2] + 1, 1, v186);
      }

      v236 = v186[2];
      v235 = v186[3];
      v221 = v429;
      if (v236 >= v235 >> 1)
      {
        v186 = sub_21C6C6EF4(v235 > 1, v236 + 1, 1, v186);
      }

      v186[2] = v236 + 1;
      sub_21C6CD60C(v417, v186 + ((*(v423 + 80) + 32) & ~*(v423 + 80)) + *(v423 + 72) * v236, type metadata accessor for SettingsSection);
      v219 = v430;
    }

    sub_21C6CD544(v219, v221, type metadata accessor for Setting);
    v237 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items;
    swift_beginAccess();
    v238 = *(v220 + v237);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v220 + v237) = v238;
    v416 = v186;
    if (isUniquelyReferenced_nonNull_native)
    {
      v240 = v220;
    }

    else
    {
      v238 = sub_21C6C6ECC(0, v238[2] + 1, 1, v238);
      v240 = v220;
      *(v220 + v237) = v238;
    }

    v242 = v238[2];
    v241 = v238[3];
    if (v242 >= v241 >> 1)
    {
      v238 = sub_21C6C6ECC(v241 > 1, v242 + 1, 1, v238);
    }

    v238[2] = v242 + 1;
    sub_21C6CD60C(v429, v238 + ((*(v425 + 80) + 32) & ~*(v425 + 80)) + *(v425 + 72) * v242, type metadata accessor for Setting);
    v172 = v240;
    *(v240 + v237) = v238;
    swift_endAccess();
    sub_21C6CD5AC(v430, type metadata accessor for Setting);
    v177 = v426;
    v169 = v410;
LABEL_123:
    v171 = v363;
    v176 = v413;
    goto LABEL_55;
  }

  sub_21C6BB7CC(v366, v365);

  v206(v433, v432);
  v370(v371, v438);

  sub_21C68F7D4(v216, &qword_27CDE76F8, &unk_21C6D27C8);

  v132 = v437;
  v152 = v373;
LABEL_27:

  v123 = 0;
  v124 = 0;
  v118 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
LABEL_10:
  *v132 = v123;
  v132[1] = v124;
  v132[2] = v118;
  v132[3] = v125;
  v132[4] = v126;
  v132[5] = v127;
  v132[6] = v128;
  v132[7] = v129;
  v132[8] = v130;
  v132[9] = v131;
LABEL_11:
  v133 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21C6CD320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF80();
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21C6CEB90();
  v9 = sub_21C6CEB90();
  v10 = [a1 URLForResource:v8 withExtension:v9];

  if (v10)
  {
    sub_21C6CDF60();

    (*(v14 + 32))(a2, v7, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v12 = *(v14 + 56);

    return v12(a2, 1, 1, v4);
  }
}

uint64_t sub_21C6CD544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6CD5AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C6CD60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_21C6CD690(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21C6CD6D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21C6CD770()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CDE9D58 = result;
  return result;
}

uint64_t sub_21C6CD7C8()
{
  v0 = sub_21C6CDF00();
  __swift_allocate_value_buffer(v0, qword_27CDE9D60);
  v1 = __swift_project_value_buffer(v0, qword_27CDE9D60);
  *v1 = type metadata accessor for FindClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_21C6CD864()
{
  v0 = sub_21C6CE1A0();
  __swift_allocate_value_buffer(v0, qword_27CDE9D78);
  __swift_project_value_buffer(v0, qword_27CDE9D78);

  return sub_21C6CE190();
}

uint64_t sub_21C6CD8F0()
{
  v0 = sub_21C6CE1A0();
  __swift_allocate_value_buffer(v0, qword_27CDE9D90);
  __swift_project_value_buffer(v0, qword_27CDE9D90);

  return sub_21C6CE190();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27CDE9CF8 == -1)
  {
    if (qword_27CDE9D00)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27CDE9D00)
    {
      goto LABEL_3;
    }
  }

  if (qword_27CDE9CF0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27CDE9CE4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27CDE9CE4 >= a3)
      {
        result = dword_27CDE9CE8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27CDE9D00;
  if (qword_27CDE9D00)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CDE9D00 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21CF0F720](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27CDE9CE4, &dword_27CDE9CE8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}