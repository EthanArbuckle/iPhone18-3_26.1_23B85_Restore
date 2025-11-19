uint64_t sub_26A5F4874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v105 = a1;
  v108 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0198);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v112 = &v101 - v4;
  OUTLINED_FUNCTION_25_2();
  v107 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v111 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_15();
  v110 = v7;
  OUTLINED_FUNCTION_25_2();
  v103 = sub_26A84B2F8();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v101 = v11 - v12;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v13);
  v102 = &v101 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0170);
  v16 = OUTLINED_FUNCTION_79(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v104 = v17 - v18;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v19);
  v21 = &v101 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v101 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  v29 = OUTLINED_FUNCTION_79(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v101 - v34;
  v36 = sub_26A84B2B8();
  OUTLINED_FUNCTION_15();
  v109 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_15();
  v114 = v39;
  OUTLINED_FUNCTION_25_2();
  v40 = type metadata accessor for ImageStyleAppearance();
  v41 = OUTLINED_FUNCTION_79(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_41();
  v44 = (v43 - v42);
  sub_26A5F5344(v43 - v42);
  v45 = *v44;
  v46 = v44[1];
  v113 = v44;
  sub_26A4DBD68(v2, v27, &qword_2803B0170);
  v47 = type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
  OUTLINED_FUNCTION_13_21(v27);
  if (v48)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v36);
    v52 = v36;
  }

  else
  {
    sub_26A4DBD68(v27, v35, &qword_2803AF0C0);
    OUTLINED_FUNCTION_4_36();
    sub_26A5F7588();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v36);
    v52 = v36;
    if (EnumTagSinglePayload != 1)
    {
      (*(v109 + 32))(v114, v35, v36);
      v54 = v2;
      v58 = v104;
      goto LABEL_15;
    }
  }

  type metadata accessor for ImageSizeableModifier(0);
  v54 = v2;
  sub_26A72046C(v32);
  OUTLINED_FUNCTION_22_14();
  if (__swift_getEnumTagSinglePayload(v55, v56, v57) == 1)
  {
    OUTLINED_FUNCTION_33_6();
    if (v48)
    {
      sub_26A84B298();
    }

    else
    {
      sub_26A84B268();
    }

    v58 = v104;
    OUTLINED_FUNCTION_22_14();
    if (__swift_getEnumTagSinglePayload(v59, v60, v61) != 1)
    {
      sub_26A4D6FD8();
    }
  }

  else
  {
    (*(v109 + 32))(v114, v32, v52);
    v58 = v104;
  }

  OUTLINED_FUNCTION_22_14();
  if (__swift_getEnumTagSinglePayload(v62, v63, v64) != 1)
  {
    sub_26A4D6FD8();
  }

LABEL_15:
  sub_26A4DBD68(v54, v24, &qword_2803B0170);
  OUTLINED_FUNCTION_13_21(v24);
  v65 = v103;
  if (v48)
  {
    sub_26A4D6FD8();
    v67 = v102;
    (*(v9 + 104))(v102, *MEMORY[0x277D62D28], v65);
  }

  else
  {
    v66 = v101;
    (*(v9 + 16))(v101, &v24[v47[8]], v103);
    OUTLINED_FUNCTION_4_36();
    sub_26A5F7588();
    v67 = v102;
    (*(v9 + 32))(v102, v66, v65);
  }

  v68 = v112;
  v69 = sub_26A720778(v114, v67);
  (*(v9 + 8))(v67, v65);
  sub_26A4DBD68(v54, v21, &qword_2803B0170);
  OUTLINED_FUNCTION_13_21(v21);
  v70 = v107;
  v112 = v52;
  if (v48)
  {
    sub_26A4D6FD8();
  }

  else
  {
    LODWORD(v71) = v21[v47[6]];
    OUTLINED_FUNCTION_4_36();
    sub_26A5F7588();
    if (v71 != 2)
    {
      goto LABEL_24;
    }
  }

  v71 = *(v54 + *(type metadata accessor for ImageSizeableModifier(0) + 28));
  OUTLINED_FUNCTION_49_2();
  if (!v48)
  {

    sub_26A851EA8();
    v72 = sub_26A8501F8();
    OUTLINED_FUNCTION_53_3();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v71, 0);
    v73 = OUTLINED_FUNCTION_44_4();
    v74(v73);
    LOBYTE(v71) = v118;
  }

LABEL_24:
  sub_26A4DBD68(v54, v58, &qword_2803B0170);
  OUTLINED_FUNCTION_13_21(v58);
  if (v48)
  {
    sub_26A4D6FD8();
  }

  else
  {
    LODWORD(v75) = *(v58 + v47[7]);
    OUTLINED_FUNCTION_4_36();
    sub_26A5F7588();
    if (v75 != 2)
    {
      goto LABEL_30;
    }
  }

  v75 = *(v54 + *(type metadata accessor for ImageSizeableModifier(0) + 32));
  OUTLINED_FUNCTION_49_2();
  if (!v48)
  {

    sub_26A851EA8();
    v76 = sub_26A8501F8();
    OUTLINED_FUNCTION_53_3();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v75, 0);
    v77 = OUTLINED_FUNCTION_44_4();
    v78(v77);
    LOBYTE(v75) = v117;
  }

LABEL_30:
  v79 = type metadata accessor for ImageSizeableModifier(0);
  v80 = *(v54 + *(v79 + 48));
  OUTLINED_FUNCTION_49_2();
  if (v48)
  {
    v83 = v70;
  }

  else
  {

    sub_26A851EA8();
    v81 = sub_26A8501F8();
    sub_26A84EA78();

    v82 = v110;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v80, 0);
    v83 = v70;
    (*(v111 + 8))(v82, v70);
    LOBYTE(v80) = v116;
  }

  OUTLINED_FUNCTION_2_46();
  sub_26A5F7548();
  sub_26A84C958();
  v85 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01A8);
  OUTLINED_FUNCTION_46();
  (*(v86 + 16))(v68, v105);
  v87 = &v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01B0) + 36)];
  *v87 = v85;
  v87[8] = 0;
  v88 = v80 & 1;
  v87[9] = v80 & 1;
  v89 = &v68[*(v106 + 36)];
  v90 = *(sub_26A84F5F8() + 20);
  v91 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_46();
  (*(v92 + 104))(v89 + v90, v91);
  *v89 = v69;
  v89[1] = v69;
  *(v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)) = 256;
  v93 = *(v54 + *(v79 + 52));
  OUTLINED_FUNCTION_49_2();
  if (!v48)
  {

    sub_26A851EA8();
    v94 = sub_26A8501F8();
    sub_26A84EA78();

    v95 = v110;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v93, 0);
    (*(v111 + 8))(v95, v83);
    LOBYTE(v93) = v115;
  }

  v96 = v75 & 1;
  v97 = v114;
  v98 = sub_26A5F5D30(v71 & 1, v96, v93 & 1, v114, v88, v46, v45);
  sub_26A4D6FD8();
  (*(v109 + 8))(v97, v112);
  result = sub_26A5F7588();
  v100 = v108;
  *v108 = v98;
  *(v100 + 4) = 0;
  return result;
}

uint64_t sub_26A5F5344@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v3 = sub_26A84F988();
  v99 = *(v3 - 8);
  v100 = v3;
  MEMORY[0x28223BE20](v3);
  v98 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v101);
  v102 = (&v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v96 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v96 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0170);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v96 - v12;
  v14 = sub_26A84B1D8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v97 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v96 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v96 - v24;
  v104 = v2;
  sub_26A4DBD68(v2, v13, &qword_2803B0170);
  v26 = type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v26);
  v28 = MEMORY[0x277D62B70];
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4D6FD8();
  }

  else
  {
    (*(v15 + 16))(v22, &v13[*(v26 + 20)], v14);
    sub_26A5F7588();
    (*(v15 + 32))(v25, v22, v14);
    (*(v15 + 104))(v19, *v28, v14);
    sub_26A5F7548();
    v29 = sub_26A851758();
    v30 = *(v15 + 8);
    v30(v19, v14);
    if ((v29 & 1) == 0)
    {
      v69 = v104 + *(type metadata accessor for ImageSizeableModifier(0) + 20);
      v70 = *(v69 + 208);
      v101 = *(v69 + 192);
      v102 = v70;
      v104 = v14;
      v71 = *(v69 + 216);
      v72 = *(v69 + 217);
      v73 = *(v69 + 218);
      v74 = *(v69 + 219);
      v75 = *(v69 + 220);
      v76 = *(v69 + 221);
      LODWORD(v99) = *(v69 + 222);
      LODWORD(v100) = *(v69 + 200);
      sub_26A77F8A4(v25, v103);
      v77 = 256;
      if ((v72 & 1) == 0)
      {
        v77 = 0;
      }

      v78 = v77 & 0xFFFFFFFFFFFFFFFELL | v71 & 1;
      v79 = 0x10000;
      if ((v73 & 1) == 0)
      {
        v79 = 0;
      }

      v80 = 0x1000000;
      if ((v74 & 1) == 0)
      {
        v80 = 0;
      }

      v81 = v78 | v79 | v80;
      v82 = 0x100000000;
      if ((v75 & 1) == 0)
      {
        v82 = 0;
      }

      v83 = 0x10000000000;
      if ((v76 & 1) == 0)
      {
        v83 = 0;
      }

      v84 = 0x1000000000000;
      if ((v99 & 1) == 0)
      {
        v84 = 0;
      }

      sub_26A647150(v101, v100, v102, v81 | v82 | v83 | v84, v105);
      sub_26A4D6FD8();
      return (v30)(v25, v104);
    }

    v30(v25, v14);
  }

  v31 = type metadata accessor for ImageSizeableModifier(0);
  v32 = v104;
  sub_26A720448(v8);
  v33 = __swift_getEnumTagSinglePayload(v8, 1, v14);
  v34 = v102;
  if (v33 == 1)
  {
    sub_26A4D6FD8();
    v35 = v32 + v31[5];
    v36 = *(v35 + 192);
    v37 = *(v35 + 208);
    v114 = *(v35 + 216);
    v113 = *(v35 + 217);
    v112 = *(v35 + 218);
    v111 = *(v35 + 219);
    v110 = *(v35 + 220);
    v109 = *(v35 + 221);
    v38 = *(v35 + 200);
    v108 = *(v35 + 222);
    (*(v15 + 104))(v19, *v28, v14);
    sub_26A77F8A4(v19, v103);
    v39 = 256;
    if (!v113)
    {
      v39 = 0;
    }

    v40 = v39 | v114;
    v41 = 0x10000;
    if (!v112)
    {
      v41 = 0;
    }

    v42 = 0x1000000;
    if (!v111)
    {
      v42 = 0;
    }

    v43 = v40 | v41 | v42;
    v44 = 0x100000000;
    if (!v110)
    {
      v44 = 0;
    }

    v45 = 0x10000000000;
    if (!v109)
    {
      v45 = 0;
    }

    v46 = 0x1000000000000;
    if (!v108)
    {
      v46 = 0;
    }

    sub_26A647150(v36, v38, v37, v43 | v44 | v45 | v46, v34);
    sub_26A4D6FD8();
    (*(v15 + 8))(v19, v14);
    v47 = v32 + v31[9];
    v48 = *v47;
    v49 = *(v47 + 8);
    v50 = v14;
    if (*(v47 + 9) == 1)
    {
      if ((v49 & 1) == 0)
      {
        v51 = *v47;
        goto LABEL_50;
      }
    }

    else
    {

      sub_26A851EA8();
      v85 = sub_26A8501F8();
      sub_26A84EA78();

      v86 = v98;
      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A4F5724(v48, v49, 0);
      (*(v99 + 8))(v86, v100);
      if (v107 != 1)
      {
        v51 = v106;
LABEL_50:
        v87 = v32 + v31[10];
        v88 = *v87;
        v89 = *(v87 + 8);
        if (*(v87 + 9) == 1)
        {
          if ((v89 & 1) == 0)
          {
            v90 = *v87;
LABEL_56:
            v94 = v34[2];
            v93 = v34[3];

            sub_26A5F7588();
            v95 = v105;
            result = __swift_storeEnumTagSinglePayload(v105 + *(v101 + 36), 1, 1, v50);
            *v95 = v90;
            v95[1] = v51;
            v95[2] = v94;
            v95[3] = v93;
            v95[4] = 0;
            v95[5] = 0;
            return result;
          }
        }

        else
        {

          sub_26A851EA8();
          v91 = sub_26A8501F8();
          sub_26A84EA78();

          v92 = v98;
          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A4F5724(v88, v89, 0);
          (*(v99 + 8))(v92, v100);
          if (v107 != 1)
          {
            v90 = v106;
            goto LABEL_56;
          }
        }

        v90 = *v34;
        goto LABEL_56;
      }
    }

    v51 = v34[1];
    goto LABEL_50;
  }

  v52 = v97;
  (*(v15 + 32))(v97, v8, v14);
  v53 = v32 + v31[5];
  v102 = *(v53 + 192);
  v104 = *(v53 + 208);
  v54 = *(v53 + 216);
  v55 = *(v53 + 217);
  v56 = *(v53 + 218);
  v57 = *(v53 + 219);
  v58 = *(v53 + 220);
  v59 = *(v53 + 221);
  LODWORD(v100) = *(v53 + 222);
  LODWORD(v101) = *(v53 + 200);
  sub_26A77F8A4(v52, v103);
  v60 = 256;
  if ((v55 & 1) == 0)
  {
    v60 = 0;
  }

  v61 = v60 & 0xFFFFFFFFFFFFFFFELL | v54 & 1;
  v62 = 0x10000;
  if ((v56 & 1) == 0)
  {
    v62 = 0;
  }

  v63 = 0x1000000;
  if ((v57 & 1) == 0)
  {
    v63 = 0;
  }

  v64 = v61 | v62 | v63;
  v65 = 0x100000000;
  if ((v58 & 1) == 0)
  {
    v65 = 0;
  }

  v66 = 0x10000000000;
  if ((v59 & 1) == 0)
  {
    v66 = 0;
  }

  v67 = 0x1000000000000;
  if ((v100 & 1) == 0)
  {
    v67 = 0;
  }

  sub_26A647150(v102, v101, v104, v64 | v65 | v66 | v67, v105);
  sub_26A4D6FD8();
  return (*(v15 + 8))(v52, v14);
}

uint64_t sub_26A5F5D30(char a1, unsigned __int8 a2, char a3, uint64_t a4, int a5, double a6, double a7)
{
  v41 = a5;
  v42 = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01B8);
  MEMORY[0x28223BE20](v40);
  v13 = &v39 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01C0);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01C8);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01D0);
  MEMORY[0x28223BE20](v24);
  v26 = &v39 - v25;
  if ((a3 & 1) != 0 && (a1 & 1) == 0 && (a2 & 1) == 0)
  {
    if (a6 == INFINITY)
    {
      sub_26A851448();
      sub_26A84F628();
      sub_26A4DBD68(v45, v17, &qword_2803B0198);
      memcpy(&v17[*(v15 + 36)], __src, 0x70uLL);
      sub_26A5F7748(&unk_2803B01E0);
      return sub_26A851248();
    }

    goto LABEL_19;
  }

  v27 = a1 & 1;
  if (a6 == INFINITY)
  {
    v27 = 2;
  }

  if (!v27)
  {
    if (((a7 != INFINITY) & a2) == 0)
    {
      sub_26A84B2B8();
      sub_26A5F7548();
      v28 = sub_26A84C948();
      if ((a7 == INFINITY || (v28 & 1) == 0) && (sub_26A84C938() & 1) == 0 && a7 == INFINITY)
      {
        sub_26A851448();
        sub_26A84F028();
        sub_26A4DBD68(v45, v13, &qword_2803B0198);
        v35 = &v13[*(v44 + 36)];
        v36 = __src[1];
        *v35 = __src[0];
        *(v35 + 1) = v36;
        *(v35 + 2) = __src[2];
        v37 = swift_allocObject();
        *(v37 + 16) = a6;
        v38 = &v13[*(v40 + 36)];
        *v38 = sub_26A5F7694;
        v38[1] = v37;
        sub_26A5F769C();
        v38[2] = 0;
        v38[3] = 0;
        return sub_26A851248();
      }
    }

    goto LABEL_19;
  }

  if (v27 == 1)
  {
    if (((a7 != INFINITY) & a2) != 0 && (sub_26A84EE78() & 1) == 0)
    {
      sub_26A84B2B8();
      sub_26A5F7548();
      sub_26A84C938();
      sub_26A851448();
      goto LABEL_20;
    }

LABEL_19:
    sub_26A851448();
LABEL_20:
    sub_26A84F028();
    v31 = v43;
    sub_26A4DBD68(v45, v43, &qword_2803B0198);
    v32 = (v31 + *(v44 + 36));
    v33 = __src[1];
    *v32 = __src[0];
    v32[1] = v33;
    v32[2] = __src[2];
    sub_26A5F7748(&unk_28157FD78);
    return sub_26A851248();
  }

  sub_26A851448();
  sub_26A84F628();
  if (((a7 != INFINITY) & a2) != 0)
  {
    sub_26A4DBD68(v45, v23, &qword_2803B0198);
    memcpy(&v23[*(v15 + 36)], __src, 0x70uLL);
    sub_26A851448();
    sub_26A84F028();
    sub_26A4DBDB4(v23, v26, &qword_2803B01C8);
    v29 = &v26[*(v24 + 36)];
    v30 = v47;
    *v29 = v46;
    *(v29 + 1) = v30;
    *(v29 + 2) = v48;
    sub_26A5F77C4();
  }

  else
  {
    sub_26A4DBD68(v45, v20, &qword_2803B0198);
    memcpy(&v20[*(v15 + 36)], __src, 0x70uLL);
    sub_26A5F7748(&unk_2803B01E0);
  }

  return sub_26A851248();
}

uint64_t sub_26A5F64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_29_10(a1, a2, a3, a4, a5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v52[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0250);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_34_8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0258);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_35_6(v17, v52[0]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0260);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v52 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v52 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0268);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  v32 = v52 - v31;
  if (v5 & 1) == 0 || (v10 & 1) != 0 || (v8)
  {
    v38 = OUTLINED_FUNCTION_40_6();
    if (v33)
    {
      v36 = v37;
    }

    v39 = (v12 != v38) & v8;
    if (!v36)
    {
      if (v39 & 1) != 0 || (sub_26A84B2B8(), OUTLINED_FUNCTION_2_46(), sub_26A5F7548(), OUTLINED_FUNCTION_12_21(), sub_26A84C948(), OUTLINED_FUNCTION_19_13(), !v33) && (v40)
      {
        sub_26A851448();
        OUTLINED_FUNCTION_15_19();
        OUTLINED_FUNCTION_41_0();
LABEL_21:
        sub_26A84F028();
        v43 = OUTLINED_FUNCTION_18_13();
        v44 = v53;
        sub_26A4DBD68(v43, v53, v45);
        OUTLINED_FUNCTION_11_27(v44 + *(v54 + 36));
        sub_26A5F7C08(&unk_2803B0278);
        OUTLINED_FUNCTION_42_6();
        return sub_26A851248();
      }

      OUTLINED_FUNCTION_12_21();
      if ((sub_26A84C938() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_13();
        if (v33)
        {
          sub_26A851448();
          OUTLINED_FUNCTION_9_31();
          OUTLINED_FUNCTION_54_3();
          v48 = OUTLINED_FUNCTION_18_13();
          sub_26A4DBD68(v48, v6, v49);
          OUTLINED_FUNCTION_11_27(v6 + *(v54 + 36));
          v50 = swift_allocObject();
          v51 = OUTLINED_FUNCTION_36_4(v50);
          *v14 = sub_26A5F7E94;
          v14[1] = v51;
          sub_26A5F7D50();
          v14[2] = 0;
          v14[3] = 0;
          return sub_26A851248();
        }
      }

LABEL_20:
      sub_26A851448();
      OUTLINED_FUNCTION_9_31();
      goto LABEL_21;
    }

    if (v36 == 1)
    {
      if ((v39 & 1) != 0 && (OUTLINED_FUNCTION_51_3() & 1) == 0)
      {
        sub_26A84B2B8();
        OUTLINED_FUNCTION_2_46();
        sub_26A5F7548();
        v47 = OUTLINED_FUNCTION_52_3();
        sub_26A851448();
        OUTLINED_FUNCTION_15_19();
        if (v47)
        {
          OUTLINED_FUNCTION_41_0();
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }

    sub_26A851448();
    OUTLINED_FUNCTION_0_40();
    v41 = OUTLINED_FUNCTION_18_13();
    if (v39)
    {
      sub_26A4DBD68(v41, v28, v42);
      OUTLINED_FUNCTION_38_5(&v28[*(v18 + 36)]);
      sub_26A851448();
      OUTLINED_FUNCTION_15_19();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_54_3();
      sub_26A4DBDB4(v28, v32, &qword_2803B0260);
      OUTLINED_FUNCTION_30_8(&v32[*(v29 + 36)]);
      sub_26A5F7C08(&unk_2803B02A8);
    }

    else
    {
      sub_26A4DBD68(v41, v25, v42);
      OUTLINED_FUNCTION_38_5(&v25[*(v18 + 36)]);
      sub_26A5F7E08();
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_6();
    if (!v33)
    {
      goto LABEL_20;
    }

    sub_26A851448();
    OUTLINED_FUNCTION_0_40();
    v34 = OUTLINED_FUNCTION_18_13();
    sub_26A4DBD68(v34, v22, v35);
    OUTLINED_FUNCTION_38_5((v22 + *(v18 + 36)));
    sub_26A5F7E08();
  }

  return sub_26A851248();
}

uint64_t sub_26A5F6A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_29_10(a1, a2, a3, a4, a5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v52[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0208);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_34_8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0210);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_35_6(v17, v52[0]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0218);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v52 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v52 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0220);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  v32 = v52 - v31;
  if (v5 & 1) == 0 || (v10 & 1) != 0 || (v8)
  {
    v38 = OUTLINED_FUNCTION_40_6();
    if (v33)
    {
      v36 = v37;
    }

    v39 = (v12 != v38) & v8;
    if (!v36)
    {
      if ((v12 != v38) & v8) != 0 || (sub_26A84B2B8(), OUTLINED_FUNCTION_2_46(), sub_26A5F7548(), OUTLINED_FUNCTION_12_21(), sub_26A84C948(), OUTLINED_FUNCTION_19_13(), !v33) && (v40)
      {
        sub_26A851448();
        OUTLINED_FUNCTION_15_19();
        OUTLINED_FUNCTION_41_0();
LABEL_21:
        sub_26A84F028();
        v43 = OUTLINED_FUNCTION_18_13();
        v44 = v53;
        sub_26A4DBD68(v43, v53, v45);
        OUTLINED_FUNCTION_11_27(v44 + *(v54 + 36));
        sub_26A5F7AE0(&unk_28157FD70);
        OUTLINED_FUNCTION_42_6();
        return sub_26A851248();
      }

      OUTLINED_FUNCTION_12_21();
      if ((sub_26A84C938() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_13();
        if (v33)
        {
          sub_26A851448();
          OUTLINED_FUNCTION_9_31();
          OUTLINED_FUNCTION_54_3();
          v48 = OUTLINED_FUNCTION_18_13();
          sub_26A4DBD68(v48, v6, v49);
          OUTLINED_FUNCTION_11_27(v6 + *(v54 + 36));
          v50 = swift_allocObject();
          v51 = OUTLINED_FUNCTION_36_4(v50);
          *v14 = sub_26A5F7E94;
          v14[1] = v51;
          sub_26A5F7A34();
          v14[2] = 0;
          v14[3] = 0;
          return sub_26A851248();
        }
      }

LABEL_20:
      sub_26A851448();
      OUTLINED_FUNCTION_9_31();
      goto LABEL_21;
    }

    if (v36 == 1)
    {
      if (((v12 != v38) & v8) != 0 && (OUTLINED_FUNCTION_51_3() & 1) == 0)
      {
        sub_26A84B2B8();
        OUTLINED_FUNCTION_2_46();
        sub_26A5F7548();
        v47 = OUTLINED_FUNCTION_52_3();
        sub_26A851448();
        OUTLINED_FUNCTION_15_19();
        if (v47)
        {
          OUTLINED_FUNCTION_41_0();
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }

    sub_26A851448();
    OUTLINED_FUNCTION_0_40();
    v41 = OUTLINED_FUNCTION_18_13();
    if (v39)
    {
      sub_26A4DBD68(v41, v28, v42);
      OUTLINED_FUNCTION_38_5(&v28[*(v18 + 36)]);
      sub_26A851448();
      OUTLINED_FUNCTION_15_19();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_54_3();
      sub_26A4DBDB4(v28, v32, &qword_2803B0218);
      OUTLINED_FUNCTION_30_8(&v32[*(v29 + 36)]);
      sub_26A5F7B5C();
    }

    else
    {
      sub_26A4DBD68(v41, v25, v42);
      OUTLINED_FUNCTION_38_5(&v25[*(v18 + 36)]);
      sub_26A5F7AE0(&unk_2803B0240);
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_6();
    if (!v33)
    {
      goto LABEL_20;
    }

    sub_26A851448();
    OUTLINED_FUNCTION_0_40();
    v34 = OUTLINED_FUNCTION_18_13();
    sub_26A4DBD68(v34, v22, v35);
    OUTLINED_FUNCTION_38_5((v22 + *(v18 + 36)));
    sub_26A5F7AE0(&unk_2803B0240);
  }

  return sub_26A851248();
}

uint64_t sub_26A5F6F94()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFrameWidth.getter();
  return OUTLINED_FUNCTION_20_13(v0, v1);
}

uint64_t sub_26A5F6FE0()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFrameHeight.getter();
  return OUTLINED_FUNCTION_20_13(v0, v1);
}

uint64_t sub_26A5F7050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_26A4DBD68(a1, &v7 - v4, &qword_2803AF0C0);
  return sub_26A63C8F4(v5);
}

uint64_t sub_26A5F70F0()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A731A14();
  *v0 = result;
  return result;
}

uint64_t sub_26A5F7164()
{
  sub_26A5F7488(319, &qword_28157E4D8, type metadata accessor for ImageSizeableModifier.ImageSizingMetadata);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A5F7324(319, &qword_2803AFE48, &qword_2803AFE50);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A5F74D8(319, &qword_2803AB788, MEMORY[0x277CDF468]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A5F7324(319, &qword_2803B0178, &qword_2803AA470);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_26A5F7324(319, &qword_2803AFE58, &qword_2803AF0C0);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_26A5F7324(319, &qword_2803B0180, &qword_2803B0188);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_26A5F7324(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_10_6();
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A5F739C()
{
  sub_26A5F7488(319, &qword_28157FFD0, MEMORY[0x277D62CD8]);
  if (v0 <= 0x3F)
  {
    sub_26A84B1D8();
    if (v1 <= 0x3F)
    {
      sub_26A5F74D8(319, &qword_2803B0190, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26A84B2F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A5F7488(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_10_6();
    v4 = sub_26A852068();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A5F74D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26A5F7548()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A5F7588()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A5F75DC()
{
  result = qword_28157FE58;
  if (!qword_28157FE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B01B0);
    sub_26A5F7D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE58);
  }

  return result;
}

unint64_t sub_26A5F769C()
{
  result = qword_2803B01D8;
  if (!qword_2803B01D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B01B8);
    sub_26A5F7748(&unk_28157FD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B01D8);
  }

  return result;
}

unint64_t sub_26A5F7748(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_13(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v3);
    sub_26A5F7928(&unk_28157FDB8);
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A5F77C4()
{
  result = qword_2803B01E8;
  if (!qword_2803B01E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B01D0);
    sub_26A5F7748(&unk_2803B01E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B01E8);
  }

  return result;
}

unint64_t sub_26A5F7870()
{
  result = qword_28157FDF8;
  if (!qword_28157FDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B01F8);
    sub_26A5F7D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FDF8);
  }

  return result;
}

unint64_t sub_26A5F7928(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_13(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v4);
    v2();
    sub_26A5F7D1C();
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A5F79B0()
{
  result = qword_28157FDE8;
  if (!qword_28157FDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FDE8);
  }

  return result;
}

unint64_t sub_26A5F7A34()
{
  result = qword_2803B0238;
  if (!qword_2803B0238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0208);
    sub_26A5F7AE0(&unk_28157FD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0238);
  }

  return result;
}

unint64_t sub_26A5F7AE0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_13(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v3);
    sub_26A5F7928(&unk_28157FD80);
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A5F7B5C()
{
  result = qword_2803B0248;
  if (!qword_2803B0248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0220);
    sub_26A5F7AE0(&unk_2803B0240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0248);
  }

  return result;
}

unint64_t sub_26A5F7C08(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_13(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v4);
    v2();
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A5F7C64()
{
  result = qword_2803B0280;
  if (!qword_2803B0280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0270);
    sub_26A5F7D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0280);
  }

  return result;
}

unint64_t sub_26A5F7D1C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v1);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A5F7D50()
{
  result = qword_2803B0298;
  if (!qword_2803B0298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0250);
    sub_26A5F7C08(&unk_2803B0278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0298);
  }

  return result;
}

unint64_t sub_26A5F7E08()
{
  result = qword_2803B02A0;
  if (!qword_2803B02A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0260);
    sub_26A5F7C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B02A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_40()
{

  return sub_26A84F628();
}

__n128 OUTLINED_FUNCTION_11_27@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 200);
  *a1 = *(v1 - 216);
  *(a1 + 16) = v2;
  result = *(v1 - 184);
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_29_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v6 - 272) = v5;
  *(v6 - 300) = a5;
  *(v6 - 296) = a4;
}

__n128 OUTLINED_FUNCTION_30_8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 248);
  *a1 = *(v1 - 264);
  *(a1 + 16) = v2;
  result = *(v1 - 232);
  *(a1 + 32) = result;
  return result;
}

void *OUTLINED_FUNCTION_38_5(void *a1)
{

  return memcpy(a1, (v1 - 216), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_43_4(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return sub_26A84EE78();
}

uint64_t OUTLINED_FUNCTION_52_3()
{

  return sub_26A84C938();
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_26A84EA78();
}

uint64_t OUTLINED_FUNCTION_54_3()
{

  return sub_26A84F028();
}

uint64_t type metadata accessor for VibrancyTraitCheck()
{
  result = qword_2803B02B0;
  if (!qword_2803B02B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A5F81E8()
{
  sub_26A5C8D00();
  if (v0 <= 0x3F)
  {
    sub_26A5923A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26A5F8288@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9F0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  sub_26A5F8810(v3, &v15 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A5F87A0(v12, a1);
  }

  sub_26A851EA8();
  v14 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v1);
}

uint64_t sub_26A5F8430()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(type metadata accessor for VibrancyTraitCheck() + 20);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v6, v0);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_26A5F8578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD030);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  KeyPath = swift_getKeyPath();
  if (sub_26A5F8430())
  {
LABEL_5:
    sub_26A5F8288(v6);
  }

  else
  {
    sub_26A4D7E10();
    switch(sub_26A63CD18())
    {
      case 3u:

        goto LABEL_5;
      case 4u:
        break;
      default:
        v8 = sub_26A852598();

        if (v8)
        {
          goto LABEL_5;
        }

        break;
    }

    v9 = sub_26A8513F8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  }

  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B02C0) + 36));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFB30);
  sub_26A5F87A0(v6, v10 + *(v11 + 28));
  *v10 = KeyPath;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B02C8);
  return (*(*(v12 - 8) + 16))(a2, a1, v12);
}

uint64_t sub_26A5F87A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5F8810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A5F8880()
{
  result = qword_2803B02D0;
  if (!qword_2803B02D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B02C0);
    sub_26A4DBCC8(&qword_2803B02D8, &qword_2803B02C8);
    sub_26A4DBCC8(&qword_28157FB68, &qword_2803AFB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B02D0);
  }

  return result;
}

uint64_t sub_26A5F8964()
{
  sub_26A84FBF8();
  if (sub_26A84FBE8())
  {
    return 1;
  }

  sub_26A84FC18();
  if (sub_26A84FBE8())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A5F89E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v113 = a1;
  v120 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B02E0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v112 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B02E8);
  OUTLINED_FUNCTION_0_17(v8, &v123);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v112 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B02F0);
  OUTLINED_FUNCTION_0_17(v12, &v124);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v112 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B02F8);
  OUTLINED_FUNCTION_0_17(v16, &v125);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v19 = &v112 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0300);
  OUTLINED_FUNCTION_0_17(v20, &v127);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v23 = &v112 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0308);
  OUTLINED_FUNCTION_0_17(v24, &v126);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v112 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0310);
  OUTLINED_FUNCTION_0_17(v28, &v128);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_82();
  v114 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0318);
  OUTLINED_FUNCTION_0_17(v31, &v129);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_82();
  v116 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0320);
  OUTLINED_FUNCTION_0_17(v34, &v130);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_82();
  v119 = v36;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0328);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_82();
  v118 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0330);
  OUTLINED_FUNCTION_0_17(v39, &v131);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_82();
  v115 = v41;
  swift_getKeyPath();
  v42 = sub_26A61C54C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0338);
  OUTLINED_FUNCTION_46();
  (*(v43 + 16))(v7, v113);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0340);
  OUTLINED_FUNCTION_4_37(v44);
  *(v45 + 8) = v42 & 1;
  KeyPath = swift_getKeyPath();
  v47 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  OUTLINED_FUNCTION_6_22();
  v48 = *(a2 + v47);
  v49 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0348) + 36)];
  *v49 = KeyPath;
  v49[1] = v48;
  v50 = swift_getKeyPath();
  v51 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  OUTLINED_FUNCTION_6_22();
  v52 = *(a2 + v51);
  v53 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0350) + 36)];
  *v53 = v50;
  v53[1] = v52;
  swift_getKeyPath();
  LOBYTE(v52) = *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_currentProcess);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0358);
  OUTLINED_FUNCTION_4_37(v54);
  *(v55 + 8) = v52;
  swift_getKeyPath();
  LOBYTE(v52) = *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_isModernizedSnippet);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0360);
  OUTLINED_FUNCTION_4_37(v56);
  *(v57 + 8) = v52;
  swift_getKeyPath();
  LOBYTE(v52) = *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_isSpotlightPlus);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0368);
  OUTLINED_FUNCTION_4_37(v58);
  *(v59 + 8) = v52;
  v60 = swift_getKeyPath();
  v61 = *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_isSolariumEnabled);
  v62 = &v7[*(v4 + 44)];
  *v62 = v60;
  v62[8] = v61;
  v63 = swift_getKeyPath();
  OUTLINED_FUNCTION_6_22();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    VRXInteractionDelegate.boxed()();
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0;
  }

  v122 = Strong == 0;
  OUTLINED_FUNCTION_9_10();
  v66 = &v11[v65];
  sub_26A544EC8(&v121, &v11[v65 + 8], &qword_2803ACA10);
  *v66 = v63;
  sub_26A544EC8(v7, v11, &qword_2803B02E0);
  v67 = swift_getKeyPath();
  v68 = sub_26A61D870();
  sub_26A544EC8(v11, v15, &qword_2803B02E8);
  OUTLINED_FUNCTION_9_10();
  v70 = &v15[v69];
  *v70 = v67;
  *(v70 + 1) = v68;
  v71 = swift_getKeyPath();
  v72 = sub_26A61BEB8();
  sub_26A544EC8(v15, v19, &qword_2803B02F0);
  OUTLINED_FUNCTION_9_10();
  v74 = &v19[v73];
  *v74 = v71;
  v74[8] = v72 & 1;
  v75 = swift_getKeyPath();
  v76 = sub_26A61C1A8();
  sub_26A544EC8(v19, v23, &qword_2803B02F8);
  OUTLINED_FUNCTION_9_10();
  v78 = &v23[v77];
  *v78 = v75;
  *(v78 + 1) = v76;
  v79 = swift_getKeyPath();
  v80 = *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_containsComponentsWithActionSubject);
  sub_26A544EC8(v23, v27, &qword_2803B0300);
  OUTLINED_FUNCTION_9_10();
  v82 = &v27[v81];
  *v82 = v79;
  v82[1] = v80;
  v83 = swift_getKeyPath();

  v84 = sub_26A61D544();
  v85 = v114;
  sub_26A544EC8(v27, v114, &qword_2803B0308);
  OUTLINED_FUNCTION_9_10();
  v87 = (v85 + v86);
  *v87 = v83;
  v87[1] = v84;
  v88 = swift_getKeyPath();
  v89 = (a2 + OBJC_IVAR____TtC9SnippetUI7Context_responseViewId);
  OUTLINED_FUNCTION_6_22();
  v91 = *v89;
  v90 = v89[1];
  v92 = v116;
  sub_26A544EC8(v85, v116, &qword_2803B0310);
  OUTLINED_FUNCTION_9_10();
  v94 = (v92 + v93);
  *v94 = v88;
  v94[1] = v91;
  v94[2] = v90;
  v95 = swift_getKeyPath();
  v96 = (a2 + OBJC_IVAR____TtC9SnippetUI7Context_viewId);
  OUTLINED_FUNCTION_6_22();
  v98 = *v96;
  v97 = v96[1];
  v99 = v92;
  v100 = v119;
  sub_26A544EC8(v99, v119, &qword_2803B0318);
  OUTLINED_FUNCTION_9_10();
  v102 = (v100 + v101);
  *v102 = v95;
  v102[1] = v98;
  v102[2] = v97;
  v103 = swift_getKeyPath();

  LOBYTE(v90) = sub_26A61CB2C();
  v104 = v118;
  sub_26A544EC8(v100, v118, &qword_2803B0320);
  v105 = v104 + *(v117 + 36);
  *v105 = v103;
  *(v105 + 8) = v90 & 1;
  v106 = swift_getKeyPath();
  v107 = *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_requestsKeyWindowSubject);
  v108 = v115;
  sub_26A544EC8(v104, v115, &qword_2803B0328);
  OUTLINED_FUNCTION_9_10();
  v110 = (v108 + v109);
  *v110 = v106;
  v110[1] = v107;
  sub_26A544EC8(v108, v120, &qword_2803B0330);
}

uint64_t sub_26A5F9338@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A5DA778();
  *a1 = result;
  return result;
}

unint64_t sub_26A5F93C4()
{
  result = qword_2803B0370;
  if (!qword_2803B0370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0330);
    sub_26A5F947C();
    sub_26A4DBCC8(&qword_2803B0410, &qword_2803B0418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0370);
  }

  return result;
}

unint64_t sub_26A5F947C()
{
  result = qword_2803B0378;
  if (!qword_2803B0378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0328);
    sub_26A5F9534();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0378);
  }

  return result;
}

unint64_t sub_26A5F9534()
{
  result = qword_2803B0380;
  if (!qword_2803B0380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0320);
    sub_26A5F95EC();
    sub_26A4DBCC8(&qword_2803B0430, &qword_2803B0438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0380);
  }

  return result;
}

unint64_t sub_26A5F95EC()
{
  result = qword_2803B0388;
  if (!qword_2803B0388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0318);
    sub_26A5F96A4();
    sub_26A4DBCC8(&qword_2803B0430, &qword_2803B0438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0388);
  }

  return result;
}

unint64_t sub_26A5F96A4()
{
  result = qword_2803B0390;
  if (!qword_2803B0390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0310);
    sub_26A5F975C();
    sub_26A4DBCC8(&qword_2803B0420, &qword_2803B0428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0390);
  }

  return result;
}

unint64_t sub_26A5F975C()
{
  result = qword_2803B0398;
  if (!qword_2803B0398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0308);
    sub_26A5F9814();
    sub_26A4DBCC8(&qword_2803B0410, &qword_2803B0418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0398);
  }

  return result;
}

unint64_t sub_26A5F9814()
{
  result = qword_2803B03A0;
  if (!qword_2803B03A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0300);
    sub_26A5F98CC();
    sub_26A4DBCC8(&qword_2803B0400, &qword_2803B0408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03A0);
  }

  return result;
}

unint64_t sub_26A5F98CC()
{
  result = qword_2803B03A8;
  if (!qword_2803B03A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B02F8);
    sub_26A5F9984();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03A8);
  }

  return result;
}

unint64_t sub_26A5F9984()
{
  result = qword_2803B03B0;
  if (!qword_2803B03B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B02F0);
    sub_26A5F9A3C();
    sub_26A4DBCC8(&qword_28157FB88, &qword_2803AB8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03B0);
  }

  return result;
}

unint64_t sub_26A5F9A3C()
{
  result = qword_2803B03B8;
  if (!qword_2803B03B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B02E8);
    sub_26A5F9AF4();
    sub_26A4DBCC8(&qword_28157FBA0, &qword_2803ACAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03B8);
  }

  return result;
}

unint64_t sub_26A5F9AF4()
{
  result = qword_2803B03C0;
  if (!qword_2803B03C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B02E0);
    sub_26A5F9BAC();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03C0);
  }

  return result;
}

unint64_t sub_26A5F9BAC()
{
  result = qword_2803B03C8;
  if (!qword_2803B03C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0368);
    sub_26A5F9C64();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03C8);
  }

  return result;
}

unint64_t sub_26A5F9C64()
{
  result = qword_2803B03D0;
  if (!qword_2803B03D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0360);
    sub_26A5F9D1C();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03D0);
  }

  return result;
}

unint64_t sub_26A5F9D1C()
{
  result = qword_2803B03D8;
  if (!qword_2803B03D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0358);
    sub_26A5F9DD4();
    sub_26A4DBCC8(&qword_2803ACAD0, &qword_2803ACAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03D8);
  }

  return result;
}

unint64_t sub_26A5F9DD4()
{
  result = qword_2803B03E0;
  if (!qword_2803B03E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0350);
    sub_26A5F9E8C();
    sub_26A4DBCC8(&qword_28157FB28, &qword_2803ACAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03E0);
  }

  return result;
}

unint64_t sub_26A5F9E8C()
{
  result = qword_2803B03E8;
  if (!qword_2803B03E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0348);
    sub_26A5F9F44();
    sub_26A4DBCC8(&qword_2803AD010, &qword_2803AD018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03E8);
  }

  return result;
}

unint64_t sub_26A5F9F44()
{
  result = qword_2803B03F0;
  if (!qword_2803B03F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0340);
    sub_26A4DBCC8(&qword_2803B03F8, &qword_2803B0338);
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B03F0);
  }

  return result;
}

uint64_t sub_26A5FA038()
{
  v1 = sub_26A5FA09C(v0);
  if ([v0 applySmallCaps] && v1)
  {

    v2 = sub_26A8504C8();

    return v2;
  }

  return v1;
}

uint64_t sub_26A5FA09C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = [a1 system];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 size];
    if (v7)
    {
      v8 = v7;
      sub_26A84E5E8();
      sub_26A5FA2E0([v6 weight]);
      v9 = sub_26A850338();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
      v10 = sub_26A8503E8();

      sub_26A5FA3EC(v4);
    }

    else
    {

      return 0;
    }

    return v10;
  }

  else
  {
    v11 = [a1 name];

    return sub_26A5FA214(v11);
  }
}

uint64_t sub_26A5FA3EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A5FA5AC()
{
  result = _UISolariumEnabled();
  byte_2803B0440 = result;
  return result;
}

uint64_t sub_26A5FA618()
{
  v3 = &type metadata for RFFeatureFlags.SpotlightUI;
  v4 = sub_26A5FA8A0();
  v0 = sub_26A84E5F8();
  result = __swift_destroy_boxed_opaque_existential_1(v2);
  byte_2803B0441 = v0 & 1;
  return result;
}

uint64_t sub_26A5FA694(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t RFFeatureFlags.SpotlightUI.hashValue.getter()
{
  sub_26A8526B8();
  MEMORY[0x26D664930](0);
  return sub_26A8526F8();
}

unint64_t sub_26A5FA748()
{
  result = qword_2803B0448;
  if (!qword_2803B0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0448);
  }

  return result;
}

_BYTE *_s11SpotlightUIOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A5FA8A0()
{
  result = qword_2803B0450;
  if (!qword_2803B0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0450);
  }

  return result;
}

uint64_t sub_26A5FA8F4()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v7, 0);
    (*(v3 + 8))(v6, v1);
    return v10[1];
  }

  return v7;
}

uint64_t TableView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v4 = sub_26A84DFE8();
  v5 = type metadata accessor for TableView();
  *(a2 + *(v5 + 28)) = v4;
  sub_26A84E058();
  *(a2 + *(v5 + 32)) = sub_26A84E068();
  v6 = sub_26A84E068();
  LOBYTE(v4) = sub_26A84DFC8();
  type metadata accessor for TableState();
  swift_allocObject();
  sub_26A52F79C(v6, v4 & 1);
  sub_26A5FF890();
  v7 = sub_26A84F258();
  v9 = v8;
  sub_26A84E078();
  OUTLINED_FUNCTION_46();
  result = (*(v10 + 8))(a1);
  *a2 = v7;
  *(a2 + 8) = v9;
  return result;
}

uint64_t type metadata accessor for TableView()
{
  result = qword_2803B0508;
  if (!qword_2803B0508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0458);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  v3 = v21 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0460);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0468);
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26A5FA8F4();
  VRXIdiom.idiom.getter(v19, v18);
  if ((*(v15 + 88))(v18, v13) == *MEMORY[0x277D62A20])
  {
    sub_26A5FAED0();
    (*(v9 + 16))(v6, v12, v7);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_41();
    sub_26A5FB598();
    OUTLINED_FUNCTION_8_33();
    sub_26A84FDF8();
    return (*(v9 + 8))(v12, v7);
  }

  else
  {
    sub_26A5FB004(v3);
    sub_26A505CD4(v3, v6, &qword_2803B0458);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_41();
    sub_26A5FB598();
    OUTLINED_FUNCTION_8_33();
    sub_26A84FDF8();
    sub_26A505D1C();
    return (*(v15 + 8))(v18, v13);
  }
}

uint64_t sub_26A5FAED0()
{
  v0 = sub_26A84FE58();
  MEMORY[0x28223BE20](v0);
  sub_26A84FBF8();
  sub_26A5FF890();
  sub_26A852768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0548);
  sub_26A5FF3B8();
  return sub_26A84EDD8();
}

uint64_t sub_26A5FB004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05D8);
  MEMORY[0x28223BE20](v53);
  v4 = &v51 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0488);
  MEMORY[0x28223BE20](v52);
  v6 = &v51 - v5;
  v7 = type metadata accessor for TableView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B04B8);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  *v13 = sub_26A84FBF8();
  *(v13 + 1) = 0x4000000000000000;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05E0);
  sub_26A5FBBC0(v1, &v13[*(v14 + 44)]);
  v15 = *(v1 + 8);
  type metadata accessor for TableState();
  sub_26A5FF890();
  v16 = sub_26A84EB78();
  v17 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B04D8) + 36)];
  *v17 = v16;
  v17[1] = v15;
  sub_26A5FF468(v2, v10);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_26A5FF4CC(v10, v19 + v18);

  v20 = sub_26A851448();
  v22 = v21;
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B04C8) + 36)];
  *v23 = sub_26A8027E0;
  v23[1] = 0;
  v23[2] = v20;
  v23[3] = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26A5FF63C;
  *(v24 + 24) = v19;
  v25 = &v13[*(v11 + 36)];
  *v25 = sub_26A52E998;
  v25[1] = v24;
  v26 = sub_26A5FA8F4();
  if (sub_26A61B05C(v26, &unk_287B13248))
  {
    v27 = v52;
    v28 = sub_26A850238();
    if (qword_2803A8CF8 != -1)
    {
      swift_once();
    }

    sub_26A84ED48();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_26A505CD4(v13, v6, &qword_2803B04B8);
    v37 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B04A8) + 36)];
    *v37 = v28;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    v38 = sub_26A8502A8();
    sub_26A84ED48();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0498) + 36)];
    *v47 = v38;
    *(v47 + 1) = v40;
    *(v47 + 2) = v42;
    *(v47 + 3) = v44;
    *(v47 + 4) = v46;
    v47[40] = 0;
    if (qword_2803A8CF0 != -1)
    {
      swift_once();
    }

    sub_26A851448();
    sub_26A84F028();
    v48 = &v6[*(v27 + 36)];
    v49 = v56;
    *v48 = v55;
    *(v48 + 1) = v49;
    *(v48 + 2) = v57;
    sub_26A505CD4(v6, v4, &qword_2803B0488);
    swift_storeEnumTagMultiPayload();
    sub_26A5FB624();
    sub_26A5FB78C();
    sub_26A84FDF8();
    sub_26A505D1C();
  }

  else
  {
    sub_26A505CD4(v13, v4, &qword_2803B04B8);
    swift_storeEnumTagMultiPayload();
    sub_26A5FB624();
    sub_26A5FB78C();
    sub_26A84FDF8();
  }

  return sub_26A505D1C();
}

unint64_t sub_26A5FB598()
{
  result = qword_2803B0478;
  if (!qword_2803B0478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0458);
    sub_26A5FB624();
    sub_26A5FB78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0478);
  }

  return result;
}

unint64_t sub_26A5FB624()
{
  result = qword_2803B0480;
  if (!qword_2803B0480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0488);
    sub_26A5FB70C(&qword_2803B0490, &unk_2803B0498, &unk_26A869378, sub_26A5FB6DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0480);
  }

  return result;
}

uint64_t sub_26A5FB70C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A5FB78C()
{
  result = qword_2803B04B0;
  if (!qword_2803B04B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B04B8);
    sub_26A5FB844();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B04B0);
  }

  return result;
}

unint64_t sub_26A5FB844()
{
  result = qword_2803B04C0;
  if (!qword_2803B04C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B04C8);
    sub_26A5FB8FC();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B04C0);
  }

  return result;
}

unint64_t sub_26A5FB8FC()
{
  result = qword_2803B04D0;
  if (!qword_2803B04D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B04D8);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B04D0);
  }

  return result;
}

uint64_t sub_26A5FBBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v102 = a2;
  v2 = type metadata accessor for TableView();
  v95 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v96 = v3;
  v97 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05E8);
  v100 = *(v4 - 8);
  v101 = v4;
  MEMORY[0x28223BE20](v4);
  v99 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v77 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05F0);
  MEMORY[0x28223BE20](v93);
  v90 = &v77 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0580);
  MEMORY[0x28223BE20](v87);
  v80 = (&v77 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0598);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v77 - v13;
  v83 = type metadata accessor for TableHeaderView();
  MEMORY[0x28223BE20](v83);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA988);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v17 = &v77 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE278);
  MEMORY[0x28223BE20](v82);
  v19 = &v77 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE280);
  MEMORY[0x28223BE20](v20 - 8);
  v86 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v77 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v77 - v25;
  v27 = sub_26A84AEB8();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v103 = &v77 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05F8);
  MEMORY[0x28223BE20](v33 - 8);
  v92 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v104 = &v77 - v36;
  v94 = v2;
  v37 = *(v2 + 24);
  v38 = v91;
  sub_26A505CD4(v91 + v37, v26, &qword_2803AF758);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_26A505D1C();
    v39 = 1;
    v40 = v38;
    v41 = v104;
  }

  else
  {
    v42 = v103;
    v43 = (*(v28 + 32))(v103, v26, v27);
    v44 = sub_26A5FB9FC(v43);
    v77 = *(v38 + 8);
    v45 = OBJC_IVAR____TtC9SnippetUI10TableState_separatorLines;
    v47 = v46(*(v77 + OBJC_IVAR____TtC9SnippetUI10TableState_separatorLines), v44);

    v78 = v28;
    v48 = *(v28 + 16);
    v79 = v27;
    v48(v30, v42, v27);
    TableHeaderView.init(header:)(v30, v15);
    sub_26A5FF890();
    v49 = 1;
    sub_26A850AF8();
    sub_26A5FF8D4();
    v50 = sub_26A84AE98();
    sub_26A4DE83C(v50);

    (*(v84 + 8))(v17, v85);
    KeyPath = swift_getKeyPath();
    v52 = &v19[*(v82 + 36)];
    *v52 = KeyPath;
    v52[8] = 66;
    v53 = v81;
    sub_26A58C1AC(v47, v47);
    sub_26A505D1C();
    v40 = v38;
    v54 = v88;
    if (*(v77 + v45) == 1)
    {
      v55 = sub_26A84FA78();
      v56 = v80;
      *v80 = v55;
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05B8);
      sub_26A5FEBB8(v56 + *(v57 + 44));
      sub_26A505C8C(v56, v54, &qword_2803B0580);
      v49 = 0;
    }

    __swift_storeEnumTagSinglePayload(v54, v49, 1, v87);
    v58 = v86;
    sub_26A505CD4(v53, v86, &qword_2803AE280);
    v59 = v89;
    sub_26A505CD4(v54, v89, &qword_2803B0598);
    v60 = v90;
    sub_26A505CD4(v58, v90, &qword_2803AE280);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0620);
    sub_26A505CD4(v59, v60 + *(v61 + 48), &qword_2803B0598);
    sub_26A505D1C();
    sub_26A505D1C();
    (*(v78 + 8))(v103, v79);
    sub_26A505D1C();
    sub_26A505D1C();
    v62 = v60;
    v41 = v104;
    sub_26A505C8C(v62, v104, &qword_2803B05F0);
    v39 = 0;
  }

  __swift_storeEnumTagSinglePayload(v41, v39, 1, v93);
  v105 = *(v40 + *(v94 + 28));
  v63 = v97;
  sub_26A5FF468(v40, v97);
  v64 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v65 = swift_allocObject();
  sub_26A5FF4CC(v63, v65 + v64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0568);
  sub_26A84ACC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0600);
  sub_26A506A30();
  sub_26A506A30();
  sub_26A5FF890();
  v66 = v98;
  sub_26A851308();
  v67 = v41;
  v68 = v92;
  sub_26A505CD4(v67, v92, &qword_2803B05F8);
  v70 = v99;
  v69 = v100;
  v71 = *(v100 + 16);
  v72 = v101;
  v71(v99, v66, v101);
  v73 = v102;
  sub_26A505CD4(v68, v102, &qword_2803B05F8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0610);
  v71((v73 + *(v74 + 48)), v70, v72);
  v75 = *(v69 + 8);
  v75(v66, v72);
  sub_26A505D1C();
  v75(v70, v72);
  return sub_26A505D1C();
}

uint64_t sub_26A5FC7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v139 = a1;
  v134 = a3;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0580);
  MEMORY[0x28223BE20](v131);
  v111 = (&v110 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0598);
  MEMORY[0x28223BE20](v6 - 8);
  v133 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = &v110 - v9;
  v122 = sub_26A84ACC8();
  v117 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v112 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0588);
  MEMORY[0x28223BE20](v138);
  v130 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v110 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0590);
  MEMORY[0x28223BE20](v14 - 8);
  v113 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v121 = &v110 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8);
  MEMORY[0x28223BE20](v18 - 8);
  v110 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = &v110 - v21;
  MEMORY[0x28223BE20](v22);
  v128 = &v110 - v23;
  MEMORY[0x28223BE20](v24);
  v116 = &v110 - v25;
  MEMORY[0x28223BE20](v26);
  v120 = &v110 - v27;
  MEMORY[0x28223BE20](v28);
  v119 = &v110 - v29;
  v30 = type metadata accessor for TableRowView();
  MEMORY[0x28223BE20](v30);
  v32 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA9A0);
  v118 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v34 = &v110 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE288);
  v36 = v35 - 8;
  MEMORY[0x28223BE20](v35);
  v38 = &v110 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE290);
  MEMORY[0x28223BE20](v39 - 8);
  v135 = &v110 - v40;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0628);
  MEMORY[0x28223BE20](v126);
  v129 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v125 = &v110 - v43;
  MEMORY[0x28223BE20](v44);
  v140 = &v110 - v45;
  v137 = a2;
  v47 = sub_26A5FB9FC(v46);
  v48 = *(a2 + 8);
  v123 = OBJC_IVAR____TtC9SnippetUI10TableState_separatorLines;
  v124 = v48;
  v50 = v49(*(v48 + OBJC_IVAR____TtC9SnippetUI10TableState_separatorLines), v47);

  v51 = v30[9];
  v52 = sub_26A84E4B8();
  v115 = *(v52 - 8);
  (*(v115 + 16))(&v32[v51], a1, v52);
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  type metadata accessor for TableState();
  sub_26A5FF890();
  *(v32 + 2) = sub_26A84F678();
  *(v32 + 3) = v53;
  v54 = v30[6];
  *&v32[v54] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v55 = &v32[v30[7]];
  *v55 = swift_getKeyPath();
  *(v55 + 1) = 0;
  v55[16] = 0;
  *(v55 + 3) = swift_getKeyPath();
  v55[32] = 0;
  v56 = type metadata accessor for ActionHandler(0);
  v57 = v56[6];
  *&v55[v57] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v58 = &v55[v56[7]];
  *v58 = swift_getKeyPath();
  *(v58 + 1) = 0;
  v58[16] = 0;
  v59 = &v55[v56[8]];
  *v59 = swift_getKeyPath();
  v59[8] = 0;
  v60 = &v55[v56[9]];
  *v60 = swift_getKeyPath();
  v60[8] = 0;
  v61 = &v55[v56[10]];
  *v61 = swift_getKeyPath();
  v61[9] = 0;
  swift_unknownObjectWeakInit();
  v62 = v56[11];
  v63 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(&v55[v62], 1, 1, v63);
  sub_26A505D1C();
  __swift_storeEnumTagSinglePayload(&v55[v62], 1, 1, v63);
  v64 = &v32[v30[8]];
  *v64 = sub_26A626198;
  *(v64 + 1) = 0;
  v64[16] = 0;
  sub_26A5FF890();
  sub_26A850AF8();
  v65 = v52;
  v66 = v135;
  sub_26A5FF8D4();
  v67 = sub_26A84E448();
  sub_26A4DE948(v67);

  (*(v118 + 8))(v34, v136);
  KeyPath = swift_getKeyPath();
  v69 = *(v36 + 44);
  v70 = v122;
  v71 = &v38[v69];
  *v71 = KeyPath;
  v71[8] = 65;
  sub_26A58C2C8(v50, 0.0);
  v72 = v119;
  sub_26A505D1C();
  sub_26A84E458();
  __swift_storeEnumTagSinglePayload(v72, 0, 1, v70);
  v73 = type metadata accessor for TableView();
  v74 = v121;
  v118 = *(v137 + *(v73 + 28));
  sub_26A5654AC(v118, v121);
  v136 = v65;
  if (__swift_getEnumTagSinglePayload(v74, 1, v65) == 1)
  {
    sub_26A505D1C();
    v75 = 1;
    v76 = v120;
  }

  else
  {
    v76 = v120;
    sub_26A84E458();
    (*(v115 + 8))(v74, v136);
    v75 = 0;
  }

  __swift_storeEnumTagSinglePayload(v76, v75, 1, v70);
  v77 = *(v138 + 48);
  v78 = v127;
  sub_26A505CD4(v72, v127, &qword_2803AC1D8);
  sub_26A505CD4(v76, v78 + v77, &qword_2803AC1D8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v70);
  v80 = v132;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A505D1C();
    sub_26A505D1C();
    if (__swift_getEnumTagSinglePayload(v78 + v77, 1, v70) == 1)
    {
      sub_26A505D1C();
      v81 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v82 = v116;
  sub_26A505CD4(v78, v116, &qword_2803AC1D8);
  if (__swift_getEnumTagSinglePayload(v78 + v77, 1, v70) == 1)
  {
    sub_26A505D1C();
    sub_26A505D1C();
    (*(v117 + 8))(v82, v70);
LABEL_9:
    sub_26A505D1C();
    v81 = 0;
    goto LABEL_11;
  }

  v83 = v117;
  v84 = v112;
  (*(v117 + 32))(v112, v78 + v77, v70);
  sub_26A5FF890();
  v81 = sub_26A851758();
  v85 = *(v83 + 8);
  v85(v84, v70);
  sub_26A505D1C();
  sub_26A505D1C();
  v85(v116, v70);
  v66 = v135;
  sub_26A505D1C();
LABEL_11:
  v86 = v130;
  v87 = v128;
  v88 = v80;
  v89 = swift_getKeyPath();
  v90 = v125;
  sub_26A505C8C(v66, v125, &qword_2803AE290);
  v91 = v90 + *(v126 + 36);
  *v91 = v89;
  *(v91 + 8) = v81 & 1;
  sub_26A505C8C(v90, v140, &qword_2803B0628);
  if ((*(v124 + v123) & 1) == 0)
  {
LABEL_23:
    v100 = 1;
    goto LABEL_24;
  }

  sub_26A84E458();
  __swift_storeEnumTagSinglePayload(v87, 0, 1, v70);
  v92 = v113;
  sub_26A5654AC(v118, v113);
  if (__swift_getEnumTagSinglePayload(v92, 1, v136) == 1)
  {
    sub_26A505D1C();
    v93 = 1;
    v94 = v114;
  }

  else
  {
    v94 = v114;
    sub_26A84E458();
    (*(v115 + 8))(v92, v136);
    v93 = 0;
  }

  __swift_storeEnumTagSinglePayload(v94, v93, 1, v70);
  v95 = *(v138 + 48);
  sub_26A505CD4(v87, v86, &qword_2803AC1D8);
  sub_26A505CD4(v94, v86 + v95, &qword_2803AC1D8);
  if (__swift_getEnumTagSinglePayload(v86, 1, v70) == 1)
  {
    sub_26A505D1C();
    sub_26A505D1C();
    if (__swift_getEnumTagSinglePayload(v86 + v95, 1, v70) == 1)
    {
      sub_26A505D1C();
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v96 = v110;
  sub_26A505CD4(v86, v110, &qword_2803AC1D8);
  if (__swift_getEnumTagSinglePayload(v86 + v95, 1, v70) == 1)
  {
    sub_26A505D1C();
    sub_26A505D1C();
    (*(v117 + 8))(v96, v70);
LABEL_20:
    sub_26A505D1C();
    goto LABEL_21;
  }

  v101 = v117;
  v102 = v86 + v95;
  v103 = v112;
  (*(v117 + 32))(v112, v102, v70);
  sub_26A5FF890();
  LODWORD(v138) = sub_26A851758();
  v104 = *(v101 + 8);
  v104(v103, v70);
  sub_26A505D1C();
  sub_26A505D1C();
  v104(v96, v70);
  sub_26A505D1C();
  if (v138)
  {
    goto LABEL_23;
  }

LABEL_21:
  v97 = sub_26A84FA78();
  v98 = v111;
  *v111 = v97;
  *(v98 + 8) = 0;
  *(v98 + 16) = 1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05B8);
  sub_26A5FE86C(v98 + *(v99 + 44));
  sub_26A505C8C(v98, v88, &qword_2803B0580);
  v100 = 0;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v88, v100, 1, v131);
  v105 = v129;
  sub_26A505CD4(v140, v129, &qword_2803B0628);
  v106 = v133;
  sub_26A505CD4(v88, v133, &qword_2803B0598);
  v107 = v134;
  sub_26A505CD4(v105, v134, &qword_2803B0628);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0638);
  sub_26A505CD4(v106, v107 + *(v108 + 48), &qword_2803B0598);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A5FD924()
{
  v0 = sub_26A5FA8F4();
  if (sub_26A61B05C(v0, &unk_287B13248))
  {
    if (qword_2803A8CF0 != -1)
    {
      swift_once();
    }

    if (qword_2803A8CF8 != -1)
    {
      swift_once();
    }
  }

  return sub_26A52F69C();
}

uint64_t sub_26A5FD9EC(uint64_t a1)
{
  v2 = type metadata accessor for TableView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[1] = *(a1 + *(v5 + 36));
  sub_26A5FF468(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26A5FF4CC(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0568);
  sub_26A84ACC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0560);
  sub_26A506A30();
  sub_26A506A30();
  sub_26A5FF890();
  return sub_26A851308();
}

uint64_t sub_26A5FDC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a2;
  v96 = a1;
  v107 = a3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0580);
  MEMORY[0x28223BE20](v106);
  v86 = (&v83 - v4);
  v91 = sub_26A84ACC8();
  v85 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v84 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0588);
  MEMORY[0x28223BE20](v92);
  v93 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0590);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v83 - v12;
  MEMORY[0x28223BE20](v13);
  v89 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0598);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v104 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
  v102 = *(v19 - 8);
  v100 = *(v102 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v99 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  v24 = sub_26A84E4B8();
  v109 = *(v24 - 8);
  v25 = v109;
  v98 = *(v109 + 64);
  MEMORY[0x28223BE20](v24);
  v97 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  v30 = type metadata accessor for TableRowWatchView();
  v31 = (v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05A0) - 8;
  MEMORY[0x28223BE20](v101);
  v103 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v35);
  v108 = &v83 - v37;
  v38 = *(v25 + 16);
  v38(v29, a1, v24, v36);
  v39 = type metadata accessor for TableView();
  v40 = v110;
  sub_26A505CD4(v110 + *(v39 + 24), v23, &qword_2803AF758);
  v88 = v39;
  v41 = *(v40 + *(v39 + 32));
  *(v33 + 3) = swift_getKeyPath();
  v33[32] = 0;
  v42 = v31[8];
  *&v33[v42] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v43 = &v33[v31[12]];
  v95 = v41;

  v111 = sub_26A8516A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05A8);
  sub_26A851048();
  v44 = v113;
  *v43 = v112;
  *(v43 + 1) = v44;
  (v38)(&v33[v31[10]], v29, v24);
  sub_26A505CD4(v23, &v33[v31[9]], &qword_2803AF758);
  *&v33[v31[11]] = v41;
  v45 = v109;
  v46 = *(v109 + 32);
  v47 = v97;
  v46(v97, v29, v24);
  v48 = v23;
  v49 = v99;
  sub_26A505C8C(v48, v99, &qword_2803AF758);
  v50 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v51 = (v98 + *(v102 + 80) + v50) & ~*(v102 + 80);
  v52 = (v100 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v47;
  v55 = v24;
  v46((v53 + v50), v54, v24);
  sub_26A505C8C(v49, v53 + v51, &qword_2803AF758);
  *(v53 + v52) = v95;
  *v33 = sub_26A5FF548;
  *(v33 + 1) = v53;
  v33[16] = 0;

  v56 = sub_26A84E448();
  v57 = v108;
  sub_26A4DEA54(v56);

  sub_26A5FF8D4();
  KeyPath = swift_getKeyPath();
  v59 = v57 + *(v101 + 44);
  *v59 = KeyPath;
  *(v59 + 8) = 65;
  if (*(*(v110 + 8) + OBJC_IVAR____TtC9SnippetUI10TableState_separatorLines) == 1)
  {
    v60 = v89;
    sub_26A84E458();
    v61 = v91;
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v91);
    v62 = v90;
    sub_26A5654AC(*(v110 + *(v88 + 28)), v90);
    if (__swift_getEnumTagSinglePayload(v62, 1, v55) == 1)
    {
      sub_26A505D1C();
      v63 = 1;
      v64 = v104;
      v66 = v93;
      v65 = v94;
    }

    else
    {
      v65 = v94;
      sub_26A84E458();
      (*(v109 + 8))(v62, v55);
      v63 = 0;
      v64 = v104;
      v66 = v93;
    }

    __swift_storeEnumTagSinglePayload(v65, v63, 1, v61);
    v68 = *(v92 + 48);
    sub_26A505CD4(v60, v66, &qword_2803AC1D8);
    sub_26A505CD4(v65, v66 + v68, &qword_2803AC1D8);
    if (__swift_getEnumTagSinglePayload(v66, 1, v61) == 1)
    {
      sub_26A505D1C();
      sub_26A505D1C();
      if (__swift_getEnumTagSinglePayload(v66 + v68, 1, v61) == 1)
      {
        sub_26A505D1C();
LABEL_14:
        v67 = 1;
        goto LABEL_15;
      }
    }

    else
    {
      v69 = v87;
      sub_26A505CD4(v66, v87, &qword_2803AC1D8);
      if (__swift_getEnumTagSinglePayload(v66 + v68, 1, v61) != 1)
      {
        v73 = v85;
        v74 = v66 + v68;
        v75 = v84;
        (*(v85 + 32))(v84, v74, v61);
        sub_26A5FF890();
        v76 = sub_26A851758();
        v77 = *(v73 + 8);
        v77(v75, v61);
        sub_26A505D1C();
        sub_26A505D1C();
        v77(v87, v61);
        v57 = v108;
        sub_26A505D1C();
        if (v76)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      sub_26A505D1C();
      sub_26A505D1C();
      (*(v85 + 8))(v69, v61);
    }

    sub_26A505D1C();
LABEL_12:
    v70 = sub_26A84FA78();
    v71 = v86;
    *v86 = v70;
    *(v71 + 8) = 0;
    *(v71 + 16) = 1;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05B8);
    sub_26A5FE86C(v71 + *(v72 + 44));
    sub_26A505C8C(v71, v64, &qword_2803B0580);
    v67 = 0;
    goto LABEL_15;
  }

  v67 = 1;
  v64 = v104;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v64, v67, 1, v106);
  v78 = v103;
  sub_26A505CD4(v57, v103, &qword_2803B05A0);
  v79 = v105;
  sub_26A505CD4(v64, v105, &qword_2803B0598);
  v80 = v107;
  sub_26A505CD4(v78, v107, &qword_2803B05A0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05B0);
  sub_26A505CD4(v79, v80 + *(v81 + 48), &qword_2803B0598);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A5FE86C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_26A84E4A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26A84E468();
  if (*(result + 16))
  {
    (*(v9 + 16))(v11, result + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

    v13 = sub_26A84E498();
    (*(v9 + 8))(v11, v8);
    if ((v13 & 1) == 0 || (v14 = sub_26A5FA8F4(), sub_26A61B05C(v14, &unk_287B13248)))
    {
      v24 = 0;
      v22 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v23 = 1;
LABEL_7:
      *v7 = sub_26A84FBF8();
      *(v7 + 1) = 0;
      v7[16] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05C8);
      sub_26A8512B8();
      sub_26A505CD4(v7, v4, &qword_2803B05C0);
      *a1 = 0;
      *(a1 + 8) = v19;
      *(a1 + 16) = v24;
      *(a1 + 24) = v18;
      *(a1 + 32) = v22;
      *(a1 + 40) = v17;
      *(a1 + 48) = v15;
      *(a1 + 56) = v16;
      *(a1 + 64) = v23;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05D0);
      sub_26A505CD4(v4, a1 + *(v21 + 48), &qword_2803B05C0);
      sub_26A505D1C();
      return sub_26A505D1C();
    }

    result = sub_26A52F59C();
    if (*(result + 16))
    {

      sub_26A5FB9FC(v20);

      sub_26A851448();
      sub_26A84F028();
      v23 = 0;
      v24 = v29;
      v22 = v31;
      v15 = v33;
      v16 = v34;
      v27 = 1;
      v26 = v30;
      v25 = v32;
      v19 = 1;
      v18 = v30;
      v17 = v32;
      v28 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A5FEBB8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05C0);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = sub_26A84E4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26A84AE88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26A84AEA8();
  if (*(result + 16))
  {
    (*(v12 + 16))(v14, result + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

    sub_26A84AE68();
    (*(v12 + 8))(v14, v11);
    v16 = sub_26A84E498();
    (*(v8 + 8))(v10, v7);
    if ((v16 & 1) == 0 || (v17 = sub_26A5FA8F4(), sub_26A61B05C(v17, &unk_287B13248)))
    {
      v29 = 0;
      v27 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v28 = 1;
LABEL_7:
      *v6 = sub_26A84FBF8();
      *(v6 + 1) = 0;
      v6[16] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05C8);
      sub_26A8512B8();
      v24 = v30;
      sub_26A505CD4(v6, v30, &qword_2803B05C0);
      *a1 = 0;
      *(a1 + 8) = v22;
      *(a1 + 16) = v29;
      *(a1 + 24) = v21;
      *(a1 + 32) = v27;
      *(a1 + 40) = v20;
      *(a1 + 48) = v18;
      *(a1 + 56) = v19;
      *(a1 + 64) = v28;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B05D0);
      sub_26A505CD4(v24, a1 + *(v25 + 48), &qword_2803B05C0);
      sub_26A505D1C();
      return sub_26A505D1C();
    }

    result = sub_26A52F59C();
    if (*(result + 16))
    {

      sub_26A5FB9FC(v23);

      sub_26A851448();
      sub_26A84F028();
      v28 = 0;
      v29 = v35;
      v27 = v37;
      v18 = v39;
      v19 = v40;
      v33 = 1;
      v32 = v36;
      v31 = v38;
      v22 = 1;
      v21 = v36;
      v20 = v38;
      v34 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26A5FEFF4(uint64_t a1)
{
  result = sub_26A5FF890();
  *(a1 + 8) = result;
  return result;
}

void sub_26A5FF074()
{
  sub_26A5FF200();
  if (v0 <= 0x3F)
  {
    sub_26A5FF294(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A5FF294(319, &qword_2803AF6F8, MEMORY[0x277D628A0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26A5FF294(319, &qword_2803B0520, MEMORY[0x277D63818], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_26A5FF294(319, &qword_2803B0528, MEMORY[0x277D63680], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A5FF200()
{
  if (!qword_2803B0518)
  {
    type metadata accessor for TableState();
    sub_26A5FF890();
    v0 = sub_26A84F288();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B0518);
    }
  }
}

void sub_26A5FF294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26A5FF2F8()
{
  result = qword_2803B0530;
  if (!qword_2803B0530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0538);
    sub_26A506A30();
    sub_26A5FB598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0530);
  }

  return result;
}

unint64_t sub_26A5FF3B8()
{
  result = qword_2803B0550;
  if (!qword_2803B0550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0548);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0550);
  }

  return result;
}

uint64_t sub_26A5FF468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5FF4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5FF548()
{
  v1 = sub_26A84E4B8();
  OUTLINED_FUNCTION_2_5(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758);
  OUTLINED_FUNCTION_2_5(v6);
  v8 = v7;
  v10 = v9;
  v11 = (v5 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26A6C9C30(v0 + v3, v0 + v11, v12);
}

uint64_t sub_26A5FF63C()
{
  type metadata accessor for TableView();

  return sub_26A5FD924();
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for TableView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_26A4D82E8(*(v2 + 16), *(v2 + 24));
  v3 = *(v1 + 24);
  v4 = sub_26A84AEB8();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_26A5FF7FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TableView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_26A5FF890()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A5FF8D4()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_26A506A30();
}

void IntentsUIComponentView.init(_:slots:)(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 17) = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for IntentsUIComponentView();
  v7 = *(v6 + 28);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v8 = ActionHandler.init()(a3 + *(v6 + 32));
  v9 = a2(v8);
  *a3 = v9;
  v10 = objc_allocWithZone(type metadata accessor for IntentsUIComponentViewModel());

  v11 = a1;
  sub_26A72832C(v11, v9, 0, 0);
  sub_26A600D78();
  v12 = sub_26A84F258();
  v14 = v13;

  *(a3 + 32) = v12;
  *(a3 + 40) = v14;
}

uint64_t type metadata accessor for IntentsUIComponentView()
{
  result = qword_2803B0648;
  if (!qword_2803B0648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A5FFAC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for IntentsUIComponentView();
  sub_26A51D0F8(v1 + *(v10 + 28), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A51A3E0(v9, a1);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void *IntentsUIComponentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IntentsUIComponentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_26A600DD0(v2, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_26A600E34(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  KeyPath = swift_getKeyPath();
  v22 = 0;
  v19 = swift_getKeyPath();
  v21 = 0;
  v23 = 0;
  sub_26A851048();
  v18 = LOBYTE(v25[0]);
  v17 = v25[1];
  v9 = v22;
  v15 = v21;
  v16 = swift_getKeyPath();
  v23 = 1;
  sub_26A851448();
  sub_26A84F628();
  memcpy(&v24[7], v25, 0x70uLL);
  sub_26A600DD0(v2, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = swift_allocObject();
  sub_26A600E34(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v7);
  v11 = v19;
  *a1 = KeyPath;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v15;
  *(a1 + 32) = v18;
  v12 = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = sub_26A600E98;
  *(a1 + 56) = v8;
  *(a1 + 64) = v12;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  result = memcpy((a1 + 81), v24, 0x77uLL);
  *(a1 + 200) = sub_26A601288;
  *(a1 + 208) = v10;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return result;
}

uint64_t sub_26A5FFF08(uint64_t a1)
{
  v2 = type metadata accessor for IntentsUIComponentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(sub_26A72818C() + 16);

  v9[0] = 0;
  v9[1] = v5;
  swift_getKeyPath();
  sub_26A600DD0(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26A600E34(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06A8);
  sub_26A4EEF40();
  sub_26A6016D0();
  return sub_26A8512F8();
}

uint64_t sub_26A600094@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for IntentsUIComponentView();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06D0);
  MEMORY[0x28223BE20](v27);
  v8 = (&v26 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9ED0);
  MEMORY[0x28223BE20](v28);
  v16 = &v26 - v15;
  v17 = *a1;
  result = sub_26A72818C();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= *(result + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v19 = result + 16 * v17;
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);
  sub_26A60180C(v20, v21);

  if (v21)
  {
    sub_26A600DD0(a2, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v23 = swift_allocObject();
    sub_26A600E34(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    *v8 = v20;
    v8[1] = sub_26A601818;
    v8[2] = v23;
    v8[3] = 0;
    v8[4] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06C8);
    sub_26A4DBCC8(&qword_2803B06B8, &qword_2803A9ED0);
    sub_26A601788();
    return sub_26A84FDF8();
  }

  else
  {
    v24 = sub_26A84BAB8();
    v25 = __swift_storeEnumTagSinglePayload(v14, 1, 1, v24);
    MEMORY[0x28223BE20](v25);
    *(&v26 - 2) = v20;
    *(&v26 - 1) = a2;
    sub_26A51D0F8(v14, v11, &qword_2803B3800);
    memset(v30, 0, sizeof(v30));
    v31 = 1;
    sub_26A601838(v11, v30, 0, 1, sub_26A601830, (&v26 - 4), v16);
    sub_26A4DBD10(v14, &qword_2803B3800);
    sub_26A4A173C(v16, v8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06C8);
    sub_26A4DBCC8(&qword_2803B06B8, &qword_2803A9ED0);
    sub_26A601788();
    sub_26A84FDF8();
    sub_26A601C2C(v20, 0);
    return sub_26A4A17A4(v16);
  }
}

id sub_26A6004E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 preferredContentSize];
  sub_26A851448();
  sub_26A84F028();
  v3 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9EE8) + 36);
  sub_26A600644(v3);
  v4 = sub_26A851448();
  v6 = v5;
  v7 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9F10) + 36));
  *v7 = v4;
  v7[1] = v6;
  *a2 = a1;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9EC0) + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 0;
  *(v10 + 16) = v9;
  *(v10 + 24) = 0;

  return a1;
}

uint64_t sub_26A600644@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06D8);
  MEMORY[0x28223BE20](v26);
  v3 = &v23 - v2;
  v4 = type metadata accessor for IntentsUIComponentView();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06E0);
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  sub_26A5FFAC8(&v23 - v10);
  v12 = type metadata accessor for ActionType();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  sub_26A4DBD10(v11, &qword_2803A91C8);
  if (EnumTagSinglePayload == 1)
  {
    swift_storeEnumTagMultiPayload();
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B06E8);
    v15 = sub_26A601C38();
    __dst[0] = v14;
    __dst[1] = v15;
    swift_getOpaqueTypeConformance2();
    return sub_26A84FDF8();
  }

  else
  {
    sub_26A850E18();
    v17 = sub_26A850E68();

    sub_26A851448();
    sub_26A84F628();
    __src[0] = v17;
    sub_26A600DD0(v1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v19 = swift_allocObject();
    sub_26A600E34(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06E8);
    v21 = sub_26A601C38();
    sub_26A850A38();

    memcpy(__dst, __src, sizeof(__dst));
    sub_26A4DBD10(__dst, &qword_2803B06E8);
    v22 = v25;
    (*(v25 + 16))(v3, v8, v6);
    swift_storeEnumTagMultiPayload();
    __src[0] = v20;
    __src[1] = v21;
    swift_getOpaqueTypeConformance2();
    sub_26A84FDF8();
    return (*(v22 + 8))(v8, v6);
  }
}

uint64_t sub_26A600ADC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v1 informHostOfViewResize_];
    }

    else
    {
      v4 = sub_26A851E78();
      LOBYTE(v5) = 2;
      j__OUTLINED_FUNCTION_13_45(v4, 1, "SnippetUI/InteractionDelegateWrapper.swift", 42, 2, 549, "informHostOfViewResize(_:)", 26, v5);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v2 = sub_26A851E78();
    LOBYTE(v5) = 2;
    return j__OUTLINED_FUNCTION_9_61(v2, 1, "SnippetUI/InteractionDelegateWrapper.swift", 42, 2, 545, "informHostOfViewResize(_:)", 26, v5);
  }
}

uint64_t sub_26A600BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12[-v6];
  v8 = a1 + *(type metadata accessor for IntentsUIComponentView() + 32);
  v9 = type metadata accessor for ActionHandler(0);
  sub_26A51D0F8(v8 + *(v9 + 44), v7, &qword_2803B3910);
  v10 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    return sub_26A4DBD10(v7, &qword_2803B3910);
  }

  sub_26A5FFAC8(v4);
  v12[15] = 3;
  sub_26A573B9C();
  sub_26A4DBD10(v4, &qword_2803A91C8);
  return sub_26A592630(v7);
}

unint64_t sub_26A600D78()
{
  result = qword_2803B0640;
  if (!qword_2803B0640)
  {
    type metadata accessor for IntentsUIComponentViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0640);
  }

  return result;
}

uint64_t sub_26A600DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentsUIComponentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A600E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentsUIComponentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A600E98()
{
  v1 = *(type metadata accessor for IntentsUIComponentView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A5FFF08(v2);
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for IntentsUIComponentView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 17))
  {
    if ((*(v2 + 16) & 1) == 0)
    {
      MEMORY[0x26D665710](v2 + 8);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v2 + 24);

  v3 = (v2 + *(v1 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:

    goto LABEL_11;
  }

  v4 = type metadata accessor for ActionType();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v16 + 8))(v3);
  }

LABEL_11:
  v6 = v2 + *(v1 + 32);
  sub_26A556DF4(*v6, *(v6 + 8), *(v6 + 16));
  sub_26A49035C(*(v6 + 24), *(v6 + 32));
  v7 = type metadata accessor for ActionHandler(0);
  v8 = v7[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v6 + v8, 1, v9))
    {
      (*(*(v9 - 8) + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  sub_26A556DF4(*(v6 + v7[7]), *(v6 + v7[7] + 8), *(v6 + v7[7] + 16));
  sub_26A49035C(*(v6 + v7[8]), *(v6 + v7[8] + 8));
  sub_26A49035C(*(v6 + v7[9]), *(v6 + v7[9] + 8));
  v10 = v6 + v7[10];
  if (*(v10 + 9))
  {
    if ((*(v10 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v6 + v7[10]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v10 + 16);
  v11 = v6 + v7[11];
  v12 = type metadata accessor for StandardActionHandler(0);
  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    MEMORY[0x26D665710](v11);
    v13 = *(v12 + 24);
    v14 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v11 + v13, 1, v14))
    {
      (*(*(v14 - 8) + 8))(v11 + v13, v14);
    }
  }

  return swift_deallocObject();
}

void sub_26A6012E4()
{
  sub_26A6013A0();
  if (v0 <= 0x3F)
  {
    sub_26A6013F0();
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ActionHandler(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A6013A0()
{
  if (!qword_2803B0658)
  {
    v0 = sub_26A851B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B0658);
    }
  }
}

void sub_26A6013F0()
{
  if (!qword_2803B0660)
  {
    type metadata accessor for IntentsUIComponentViewModel();
    sub_26A600D78();
    v0 = sub_26A84F288();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B0660);
    }
  }
}

unint64_t sub_26A601454()
{
  result = qword_2803B0668;
  if (!qword_2803B0668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0670);
    sub_26A6014E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0668);
  }

  return result;
}

unint64_t sub_26A6014E0()
{
  result = qword_2803B0678;
  if (!qword_2803B0678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0680);
    sub_26A60156C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0678);
  }

  return result;
}

unint64_t sub_26A60156C()
{
  result = qword_2803B0688;
  if (!qword_2803B0688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0690);
    sub_26A4DBCC8(&qword_2803B0698, &qword_2803B06A0);
    sub_26A4DBCC8(&qword_2803B31D0, &qword_2803AA240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0688);
  }

  return result;
}

uint64_t sub_26A601650@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IntentsUIComponentView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26A600094(a1, v6, a2);
}

unint64_t sub_26A6016D0()
{
  result = qword_2803B06B0;
  if (!qword_2803B06B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B06A8);
    sub_26A4DBCC8(&qword_2803B06B8, &qword_2803A9ED0);
    sub_26A601788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B06B0);
  }

  return result;
}

unint64_t sub_26A601788()
{
  result = qword_2803B06C0;
  if (!qword_2803B06C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B06C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B06C0);
  }

  return result;
}

id sub_26A60180C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_26A601838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a6;
  v40 = a7;
  v43 = a3;
  v44 = a5;
  v41 = a4;
  v42 = a2;
  v8 = sub_26A84BAB8();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v36 - v26;
  v45 = a1;
  sub_26A51D0F8(a1, &v36 - v26, &qword_2803B3800);
  v28 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v28);
  sub_26A51D0F8(v27, v24, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v24, 1, v8) == 1)
  {
    sub_26A4DBD10(v24, &qword_2803B3800);
    v29 = type metadata accessor for ActionType();
    v30 = v15;
    v31 = 1;
  }

  else
  {
    v32 = v37;
    v33 = *(v38 + 32);
    v33(v37, v24, v8);
    v33(v15, v32, v8);
    v34 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    v30 = v15;
    v31 = 0;
    v29 = v34;
  }

  __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
  sub_26A51D0F8(v15, v12, &qword_2803A91C8);
  sub_26A51D0F8(v21, v18, &qword_2803A91C0);
  sub_26A4C97C0();
  sub_26A4DBD10(v45, &qword_2803B3800);
  sub_26A4DBD10(v15, &qword_2803A91C8);
  sub_26A4DBD10(v21, &qword_2803A91C0);
  return sub_26A4DBD10(v27, &qword_2803B3800);
}

void sub_26A601C2C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_26A601C38()
{
  result = qword_2803B06F0;
  if (!qword_2803B06F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B06E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B06F0);
  }

  return result;
}

uint64_t sub_26A601CD4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for IntentsUIComponentView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26A601D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_26A4DBD68(a3, v24 - v10, &qword_2803AC090);
  v12 = sub_26A851C18();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v11, &qword_2803AC090);
  }

  else
  {
    sub_26A851C08();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26A851B78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26A851818() + 32;
      OUTLINED_FUNCTION_29_7();
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_26A4DBD10(a3, &qword_2803AC090);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26A4DBD10(a3, &qword_2803AC090);
  OUTLINED_FUNCTION_29_7();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void *sub_26A602024()
{
  OUTLINED_FUNCTION_19_14();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_26A60205C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_26A6020F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A602150();
  *a1 = result;
  return result;
}

void sub_26A602170()
{
  OUTLINED_FUNCTION_4_38();
  v6 = sub_26A602024();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0700);
  sub_26A604F6C();
  v2 = sub_26A604F40();

  if (v2)
  {
    MEMORY[0x28223BE20](v3);
    OUTLINED_FUNCTION_8_34();
    swift_getKeyPath();
    OUTLINED_FUNCTION_21_14();
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_20_14();
    *(v5 - 16) = v1;
    *(v5 - 8) = v0;
    OUTLINED_FUNCTION_25_14();
  }

  else
  {
    sub_26A60205C(v0);
  }
}

void (*sub_26A6022D4(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_12_22();
  swift_getKeyPath();
  sub_26A604DD0();

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_30_9();
  type metadata accessor for ArchiveRenderingModel();
  OUTLINED_FUNCTION_0_41();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_29_11(WitnessTable);

  v3[5] = sub_26A6020A4();
  return sub_26A6023E8;
}

uint64_t sub_26A6024E0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_36();
  v4 = *(v3 + 128);
  OUTLINED_FUNCTION_19_14();
  return sub_26A4DBD68(v1 + v4, a1, qword_2803B0718);
}

uint64_t sub_26A602544()
{
  OUTLINED_FUNCTION_4_38();
  v3 = *(v2 + 128);
  OUTLINED_FUNCTION_31_12();
  sub_26A60577C(v0, v1 + v3, qword_2803B0718);
  return swift_endAccess();
}

uint64_t sub_26A6025A8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_36();
  swift_getKeyPath();
  sub_26A604DD0();

  return sub_26A6024E0(a1);
}

uint64_t sub_26A602674()
{
  OUTLINED_FUNCTION_4_38();
  sub_26A6024E0(v2);
  sub_26A4DBD10(v2, qword_2803B0718);
  swift_getKeyPath();
  sub_26A604E6C();

  return sub_26A4DBD10(v0, qword_2803B0718);
}

uint64_t sub_26A602818(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_7_36();
  swift_getKeyPath();
  sub_26A604DD0();

  return a2(v3);
}

uint64_t sub_26A6028F0(uint64_t a1, void (*a2)(void))
{
  a2();

  swift_getKeyPath();
  sub_26A604E6C();
}

uint64_t sub_26A6029F0()
{
  OUTLINED_FUNCTION_7_36();
  v2 = *(v1 + 144);
  OUTLINED_FUNCTION_19_14();
  return *(v0 + v2);
}

uint64_t sub_26A602A30(char a1)
{
  OUTLINED_FUNCTION_7_36();
  v4 = *(v3 + 144);
  result = swift_beginAccess();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*sub_26A602A88())()
{
  OUTLINED_FUNCTION_4_38();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_26A602AEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A602B44();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A602B44()
{
  OUTLINED_FUNCTION_7_36();
  swift_getKeyPath();
  sub_26A604DD0();

  return sub_26A6029F0() & 1;
}

uint64_t sub_26A602BB8(char a1)
{
  OUTLINED_FUNCTION_7_36();
  sub_26A6029F0();
  v3 = sub_26A604F40();
  if (!v3)
  {
    return sub_26A602A30(a1 & 1);
  }

  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_34();
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_14();
  *(v5 - 16) = v1;
  *(v5 - 8) = a1 & 1;
  OUTLINED_FUNCTION_25_14();
}

void (*sub_26A602CC8(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_12_22();
  swift_getKeyPath();
  sub_26A604DD0();

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_30_9();
  type metadata accessor for ArchiveRenderingModel();
  OUTLINED_FUNCTION_0_41();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_29_11(WitnessTable);

  v3[5] = sub_26A602A88();
  return sub_26A602DDC;
}

void sub_26A602DE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  sub_26A602E4C();

  free(v1);
}

uint64_t sub_26A602E4C()
{
  swift_getKeyPath();
  type metadata accessor for ArchiveRenderingModel();
  OUTLINED_FUNCTION_0_41();
  swift_getWitnessTable();
  sub_26A84E5A8();
}

uint64_t sub_26A602F1C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_36();
  v4 = *(v3 + 152);
  OUTLINED_FUNCTION_19_14();
  return sub_26A4DBD68(v1 + v4, a1, &qword_2803AC7A8);
}

uint64_t sub_26A602F80()
{
  OUTLINED_FUNCTION_4_38();
  v3 = *(v2 + 152);
  OUTLINED_FUNCTION_31_12();
  sub_26A60577C(v0, v1 + v3, &qword_2803AC7A8);
  return swift_endAccess();
}

uint64_t sub_26A602FE4@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_36();
  swift_getKeyPath();
  sub_26A604DD0();

  return sub_26A602F1C(a1);
}

uint64_t sub_26A603064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC7A8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26A4DBD68(a1, &v5 - v3, &qword_2803AC7A8);
  return sub_26A603110();
}

uint64_t sub_26A603110()
{
  OUTLINED_FUNCTION_4_38();
  v2 = OUTLINED_FUNCTION_24_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  v5 = &v11[-v4];
  sub_26A602F1C(&v11[-v4]);
  sub_26A6056AC();
  v6 = sub_26A604F40();
  v7 = sub_26A4DBD10(v5, &qword_2803AC7A8);
  if (v6)
  {
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_8_34();
    swift_getKeyPath();
    OUTLINED_FUNCTION_21_14();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_20_14();
    *(v9 - 16) = v1;
    *(v9 - 8) = v0;
    OUTLINED_FUNCTION_25_14();
  }

  else
  {
    sub_26A4DBD68(v0, v5, &qword_2803AC7A8);
    sub_26A602F80();
  }

  return sub_26A4DBD10(v0, &qword_2803AC7A8);
}

uint64_t sub_26A6032A8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC7A8);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26A4DBD68(a2, &v6 - v4, &qword_2803AC7A8);
  return sub_26A602F80();
}

uint64_t ArchiveRenderingModel.__allocating_init(source:snippetEnvironmentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ArchiveRenderingModel.init(source:snippetEnvironmentProvider:)(a1, a2, a3);
  return v6;
}

void *ArchiveRenderingModel.init(source:snippetEnvironmentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v3[2] = 0;
  *(v3 + *(v7 + 120)) = 0;
  OUTLINED_FUNCTION_7_36();
  v12 = (v3 + *(v11 + 128));
  *v12 = 0u;
  v12[1] = 0u;
  OUTLINED_FUNCTION_7_36();
  *(v3 + *(v13 + 136)) = 0;
  OUTLINED_FUNCTION_7_36();
  *(v3 + *(v14 + 144)) = 0;
  OUTLINED_FUNCTION_7_36();
  v16 = *(v15 + 152);
  v17 = sub_26A84F188();
  __swift_storeEnumTagSinglePayload(v3 + v16, 1, 1, v17);
  OUTLINED_FUNCTION_7_36();
  sub_26A84E5C8();
  OUTLINED_FUNCTION_7_36();
  v19 = *(v7 + 80);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v3 + *(v18 + 104), a1, v19);
  OUTLINED_FUNCTION_7_36();
  v22 = (v3 + *(v21 + 112));
  *v22 = a2;
  v22[1] = a3;
  memset(v26, 0, sizeof(v26));
  sub_26A4C2304(a2);
  sub_26A602674();
  sub_26A6028BC(0);
  sub_26A603ECC();
  v23 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v3;

  sub_26A601D48(0, 0, v10, &unk_26A869948, v24);

  sub_26A4C24DC(a2);
  (*(v20 + 8))(a1, v19);
  return v3;
}

uint64_t sub_26A603638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A5213F4;

  return sub_26A604434();
}

uint64_t ArchiveRenderingModel.deinit()
{
  v1 = v0;
  OUTLINED_FUNCTION_7_36();
  v3 = v2;
  if (sub_26A6027F8())
  {
    sub_26A59F464();
  }

  OUTLINED_FUNCTION_18_14();
  (*(*(*(v3 + 80) - 8) + 8))(v0 + *(v4 + 104));
  OUTLINED_FUNCTION_18_14();
  sub_26A4C24DC(*(v0 + *(v5 + 112)));
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_18_14();
  sub_26A4DBD10(v0 + *(v6 + 128), qword_2803B0718);
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_18_14();
  sub_26A4DBD10(v0 + *(v7 + 152), &qword_2803AC7A8);
  OUTLINED_FUNCTION_18_14();
  v9 = *(v8 + 160);
  sub_26A84E5D8();
  OUTLINED_FUNCTION_46();
  (*(v10 + 8))(v1 + v9);
  return v1;
}

uint64_t ArchiveRenderingModel.__deallocating_deinit()
{
  ArchiveRenderingModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A6038AC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_26A851788();
  v3 = [objc_opt_self() currentQueue];
  v7[4] = sub_26A60555C;
  v8 = v0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_26A603DD8;
  v7[3] = &block_descriptor_2;
  v4 = _Block_copy(v7);

  v5 = [v1 addObserverForName:v2 object:0 suspensionBehavior:1 queue:v3 usingBlock:v4];
  _Block_release(v4);

  sub_26A852108();
  swift_unknownObjectRelease();
  return sub_26A602674();
}

unint64_t sub_26A603C54()
{
  sub_26A852248();

  sub_26A84A858();
  sub_26A605664(&qword_2803B07B0, MEMORY[0x277CC8900]);
  v0 = sub_26A852568();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](0xD000000000000013, 0x800000026A88D1D0);
  return 0xD000000000000017;
}

uint64_t sub_26A603D48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A5206A8;

  return sub_26A604434();
}

uint64_t sub_26A603DD8(uint64_t a1)
{
  v2 = sub_26A84A858();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_26A84A848();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26A603ECC()
{
  v1 = v0;
  OUTLINED_FUNCTION_12_22();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v5 = sub_26A756598(v3, v4);
  v7 = v6;
  v8 = (*(v4 + 8))(v3, v4);
  v10 = v9;
  type metadata accessor for ArchiveInteractionRunner();
  swift_allocObject();

  v11 = sub_26A62AB44(v5, v7, v8, v10, sub_26A605964, v1);
  sub_26A602470(v11);
  type metadata accessor for ArchiveRendererAssertion();
  OUTLINED_FUNCTION_29_7();
  swift_allocObject();
  v12 = sub_26A59E690(v5, v7);
  sub_26A6028BC(v12);
  result = sub_26A6027F8();
  if (result)
  {
    sub_26A59E8EC();
  }

  return result;
}

uint64_t sub_26A604148(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  if (a1)
  {
    v7 = a1;
    v8 = sub_26A851E98();
    LOBYTE(v12) = 2;
    sub_26A7BC1D4(v8, 1, "SnippetUI/ArchiveRenderingModel.swift", 37, 2, 67, "setUpInteractionRunner()", 24, v12, a1);
  }

  v9 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;

  sub_26A601D48(0, 0, v6, &unk_26A869B38, v10);
}

uint64_t sub_26A604354()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A604434()
{
  OUTLINED_FUNCTION_1_10();
  v1[5] = v0;
  v1[6] = *v0;
  v2 = sub_26A84FDD8();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_26A84F188();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  sub_26A851BD8();
  v1[13] = sub_26A851BC8();
  v5 = sub_26A851B78();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x2822009F8](sub_26A6045A8, v5, v4);
}

uint64_t sub_26A6045A8()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_12_22();
  v3 = (v1 + *(v2 + 112));
  v4 = *v3;
  v5 = v3[1];
  v8 = *(v6 + 80);
  v7 = *(v6 + 88);
  v11 = (*(v7 + 24) + **(v7 + 24));
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = sub_26A604710;

  return v11(v0 + 16, v4, v5, v8, v7);
}

uint64_t sub_26A604710()
{
  OUTLINED_FUNCTION_6_10();
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_26A604A3C;
  }

  else
  {
    v5 = sub_26A604848;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26A604848()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 32);
  sub_26A602170();
  v3 = OUTLINED_FUNCTION_24_13();
  sub_26A54D260(v3, v4);
  OUTLINED_FUNCTION_24_13();
  sub_26A84FDB8();
  if (v1)
  {
    v5 = OUTLINED_FUNCTION_24_13();
    sub_26A513D40(v5, v6);

    v7 = v1;
    sub_26A851E88();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_2_47();
    sub_26A7B1378();
  }

  else
  {
    sub_26A84FDC8();
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    if (qword_2803A8C00 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v16 = *(v0 + 80);
    v12 = *(v0 + 40);
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v10;
    sub_26A84F1C8();
    v14 = OUTLINED_FUNCTION_24_13();
    sub_26A513D40(v14, v15);

    (*(v11 + 8))(v10, v16);
  }

  OUTLINED_FUNCTION_2_9();

  return v8();
}

uint64_t sub_26A604A3C()
{
  OUTLINED_FUNCTION_6_10();

  v1 = *(v0 + 136);
  v2 = v1;
  sub_26A851E88();
  OUTLINED_FUNCTION_6_30();
  OUTLINED_FUNCTION_2_47();
  sub_26A7B1378();

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A604AE8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC7A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_26A602BB8(0);
  v6 = sub_26A84F188();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_26A603110();
}

uint64_t sub_26A604D40()
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD00000000000001DLL, 0x800000026A88D130);
  sub_26A8523D8();
  return 0;
}

uint64_t sub_26A604DD0()
{
  OUTLINED_FUNCTION_0_41();
  swift_getWitnessTable();
  return sub_26A84E598();
}

uint64_t sub_26A604E6C()
{
  OUTLINED_FUNCTION_0_41();
  swift_getWitnessTable();
  return sub_26A84E588();
}

unint64_t sub_26A604F6C()
{
  result = qword_2803B0708;
  if (!qword_2803B0708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0700);
    sub_26A604FF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0708);
  }

  return result;
}

unint64_t sub_26A604FF0()
{
  result = qword_2803B0710;
  if (!qword_2803B0710)
  {
    sub_26A4EC5B0(255, &qword_2803AC080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0710);
  }

  return result;
}

uint64_t sub_26A6050C0()
{
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_13_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_42(v1);

  return sub_26A603638();
}

uint64_t sub_26A605148()
{
  result = sub_26A851478();
  qword_2803B06F8 = result;
  return result;
}

void sub_26A60519C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_26A6054FC();
    if (v1 <= 0x3F)
    {
      sub_26A84E5D8();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of ArchiveRenderingModel.reloadArchive()()
{
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_7_36();
  v4 = (*(v1 + 480) + **(v1 + 480));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_26A5206A8;

  return v4();
}

void sub_26A6054FC()
{
  if (!qword_2803B07A0)
  {
    sub_26A84F188();
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B07A0);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26A60557C()
{
  sub_26A84A858();

  return sub_26A603C54();
}

uint64_t sub_26A6055DC()
{
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_13_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_42(v1);

  return sub_26A603D48();
}

uint64_t sub_26A605664(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A6056AC()
{
  result = qword_2803B07B8;
  if (!qword_2803B07B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC7A8);
    sub_26A605664(&qword_2803B07C0, MEMORY[0x277CDD890]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B07B8);
  }

  return result;
}

uint64_t sub_26A60577C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8_0(a1, a2, a3);
  OUTLINED_FUNCTION_46();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t sub_26A6057E4()
{
  OUTLINED_FUNCTION_6_10();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_9(v3);
  *v4 = v5;
  v4[1] = sub_26A520F80;

  return v7(v1);
}

uint64_t sub_26A6058D0()
{
  OUTLINED_FUNCTION_6_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_8(v1);

  return v4(v3);
}

uint64_t objectdestroyTm_13()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A6059AC()
{
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_13_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_42(v1);

  return sub_26A604280(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_14()
{

  return sub_26A604E6C();
}

uint64_t OUTLINED_FUNCTION_29_11(uint64_t a1)
{

  return MEMORY[0x2821FF708](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_30_9()
{
  *v1 = v0;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_31_12()
{

  return swift_beginAccess();
}

uint64_t sub_26A605C00@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0818);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_26A606DF8();
  sub_26A84FF18();
  sub_26A606E4C();
  sub_26A84FF18();
  sub_26A4DBDB4(v13, v7, &qword_2803B0818);
  v14 = type metadata accessor for SeparatorsConfig(0);
  OUTLINED_FUNCTION_37_4(v7);
  if (v15)
  {
    sub_26A4DBDB4(v10, v4, &qword_2803B0818);
    OUTLINED_FUNCTION_37_4(v4);
    if (v15)
    {
      v16 = *MEMORY[0x277D62F38];
      v17 = sub_26A84BBF8();
      OUTLINED_FUNCTION_46();
      v19 = *(v18 + 104);
      v19(a1, v16, v17);
      v20 = a1 + *(v14 + 20);
      v19(v20, v16, v17);
      v21 = type metadata accessor for SeparatorConfig(0);
      *(a1 + *(v21 + 20)) = 0;
      *(v20 + *(v21 + 20)) = 0;
      OUTLINED_FUNCTION_37_4(v4);
      if (!v15)
      {
        sub_26A4DBD10(v4, &qword_2803B0818);
      }
    }

    else
    {
      sub_26A606EA0(v4, a1);
    }

    result = OUTLINED_FUNCTION_37_4(v7);
    if (!v15)
    {
      return sub_26A4DBD10(v7, &qword_2803B0818);
    }
  }

  else
  {
    sub_26A4DBD10(v10, &qword_2803B0818);
    return sub_26A606EA0(v7, a1);
  }

  return result;
}

uint64_t sub_26A605E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0818);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_26A606F04(a1, &v7 - v3);
  v5 = type metadata accessor for SeparatorsConfig(0);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_26A606DF8();
  sub_26A850BE8();
  return sub_26A4DBD10(v4, &qword_2803B0818);
}

uint64_t View.separators(_:isOverride:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B07F8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  if (a2)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v13 = sub_26A606B24;
  }

  else
  {
    v14 = v12;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v11 + 2) = swift_getKeyPath();
  v11[24] = 0;
  v16 = *(v8 + 40);
  *&v11[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v17 = &v11[*(v8 + 44)];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  *v11 = sub_26A606AD4;
  *(v11 + 1) = v15;

  MEMORY[0x26D662ED0](v11, a3, v8, a4);
  return sub_26A4DBD10(v11, &qword_2803B07F8);
}

{
  return View.separators(top:bottom:isOverride:)(a1, a1, a2, a3, a4);
}

uint64_t sub_26A606180(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0818);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = type metadata accessor for SeparatorsConfig(0);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
}

uint64_t sub_26A60621C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0818);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_26A4DBD68(v6, a3, &qword_2803B0818);
}

BOOL sub_26A606298(uint64_t a1)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  sub_26A4DBD68(v1 + *(a1 + 40), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A4DBDB4(v9, v12, &qword_2803A91C8);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v14 = type metadata accessor for ActionType();
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v14) != 1;
  sub_26A4DBD10(v12, &qword_2803A91C8);
  return v15;
}

uint64_t sub_26A606500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v45 = a3;
  v5 = sub_26A84F988();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0818);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v36 - v9;
  swift_getWitnessTable();
  v11 = sub_26A84FE88();
  v12 = *(a2 + 24);
  v38 = *(a2 + 16);
  v40 = v12;
  v13 = sub_26A84FE78();
  v39 = v11;
  v42 = v13;
  v14 = sub_26A84F4F8();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v36 - v18;
  v20 = *v3;
  v36[1] = *(v3 + 8);
  v37 = v20;
  v21 = *(v3 + 16);
  if ((*(v3 + 24) & 1) == 0)
  {

    sub_26A851EA8();
    v22 = sub_26A8501F8();
    v36[0] = v10;
    v23 = v16;
    v24 = v19;
    v25 = v5;
    v26 = v22;
    sub_26A84EA78();

    v5 = v25;
    v19 = v24;
    v16 = v23;
    v10 = v36[0];
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v21, 0);
    (*(v41 + 8))(v7, v5);
    v21 = v48;
  }

  v27 = sub_26A606298(a2);
  v28 = v3 + *(a2 + 44);
  v29 = *v28;
  if ((*(v28 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v36[0] = v5;
    v30 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v29, 0);
    (*(v41 + 8))(v7, v36[0]);
    v29 = v48;
  }

  v37(v21, v27, v29);
  v31 = type metadata accessor for SeparatorsConfig(0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v31);
  WitnessTable = swift_getWitnessTable();
  sub_26A850BE8();
  sub_26A4DBD10(v10, &qword_2803B0818);
  v33 = swift_getWitnessTable();
  v46 = WitnessTable;
  v47 = v33;
  swift_getWitnessTable();
  sub_26A80757C(v16);
  v34 = *(v43 + 8);
  v34(v16, v14);
  sub_26A80757C(v19);
  return (v34)(v19, v14);
}

uint64_t View.separators(top:bottom:isOverride:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v8 = type metadata accessor for SeparatorsConfig(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v14 = *(v13 + 16);
  v14(v11, a1, v12);
  v15 = &v11[*(v9 + 28)];
  v14(v15, a2, v12);
  v16 = type metadata accessor for SeparatorConfig(0);
  v11[*(v16 + 20)] = a3;
  v15[*(v16 + 20)] = a3;
  sub_26A605E84(v11);
  return sub_26A606B2C(v11);
}

uint64_t sub_26A606B2C(uint64_t a1)
{
  v2 = type metadata accessor for SeparatorsConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA21_TraitWritingModifierVy07SnippetB0023UserPreferredSeparatorsF3Key33_3B845B8C27247481203C829BAEB3946DLLVGGAaBHPxAaBHD1__AkA0cH0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_26A84F4F8();
  sub_26A4DBCC8(a4, a2);
  OUTLINED_FUNCTION_15_10();
  return swift_getWitnessTable();
}

void sub_26A606C34()
{
  sub_26A5046B4();
  if (v0 <= 0x3F)
  {
    sub_26A606D60(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        sub_26A606D60(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A606D60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26A606DF8()
{
  result = qword_2803B0820;
  if (!qword_2803B0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0820);
  }

  return result;
}

unint64_t sub_26A606E4C()
{
  result = qword_2803B0828;
  if (!qword_2803B0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0828);
  }

  return result;
}

uint64_t sub_26A606EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeparatorsConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A606F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeparatorsConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A606F68()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B09F8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0A00);
  OUTLINED_FUNCTION_15();
  v9 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34_8();
  if (v3)
  {
    v2(v0);
    (*(v9 + 16))(v6, v1, v7);
    swift_storeEnumTagMultiPayload();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF638);
    v12 = sub_26A5C93C0();
    v15 = v11;
    v16 = MEMORY[0x277D839B0];
    OUTLINED_FUNCTION_6_32(v12, MEMORY[0x277D839C8]);
    OUTLINED_FUNCTION_4_39();
    sub_26A84FDF8();
    (*(v9 + 8))(v1, v7);
  }

  else
  {
    sub_26A4DBD68(v0, v6, &qword_2803AF638);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF638);
    v14 = sub_26A5C93C0();
    v15 = v13;
    v16 = MEMORY[0x277D839B0];
    OUTLINED_FUNCTION_6_32(v14, MEMORY[0x277D839C8]);
    OUTLINED_FUNCTION_4_39();
    sub_26A84FDF8();
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A607168(char a1, void (*a2)(uint64_t *, __n128), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B09B0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v20 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B09B8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v23 = a4;
  if (a1)
  {
    a2(&v23, v12);
    (*(v11 + 16))(v9, v14, v10);
    swift_storeEnumTagMultiPayload();
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0860);
    v16 = sub_26A608B44();
    v21 = v15;
    v22 = v16;
    swift_getOpaqueTypeConformance2();
    sub_26A84FDF8();
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    *v9 = a4;
    swift_storeEnumTagMultiPayload();

    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0860);
    v19 = sub_26A608B44();
    v21 = v18;
    v22 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A6073E0(char a1, void (*a2)(void *__return_ptr, uint64_t))
{
  if (a1)
  {
    a2(v7, v2);
    sub_26A4DBD68(v7, v8, &qword_2803B0988);
    v8[1552] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0988);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0980);
    sub_26A6094F0();
    sub_26A60957C();
    OUTLINED_FUNCTION_24_14();
    return sub_26A4DBD10(v7, &qword_2803B0988);
  }

  else
  {
    OUTLINED_FUNCTION_19_15();
    sub_26A4DBD68(v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0988);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0980);
    sub_26A6094F0();
    sub_26A60957C();
    OUTLINED_FUNCTION_19_15();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A607528(char a1, void (*a2)(void *__return_ptr, uint64_t))
{
  if (a1)
  {
    a2(v7, v2);
    sub_26A4DBD68(v7, v8, &qword_2803B08B0);
    v8[1064] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B08B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B08A8);
    sub_26A608E08();
    sub_26A608FAC();
    OUTLINED_FUNCTION_24_14();
    return sub_26A4DBD10(v7, &qword_2803B08B0);
  }

  else
  {
    OUTLINED_FUNCTION_19_15();
    sub_26A4DBD68(v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B08B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B08A8);
    sub_26A608E08();
    sub_26A608FAC();
    OUTLINED_FUNCTION_19_15();
    return sub_26A84FDF8();
  }
}

void sub_26A607670()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0910);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0918);
  OUTLINED_FUNCTION_15();
  v8 = v7;
  OUTLINED_FUNCTION_77();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  if (v2)
  {
    v1(v0, v10);
    (*(v8 + 16))(v5, v12, v6);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0920);
    v14 = type metadata accessor for RFButtonStyle();
    v15 = sub_26A6091D0();
    OUTLINED_FUNCTION_7_37();
    v18 = sub_26A609338(v16, v17);
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v18;
    OUTLINED_FUNCTION_8_35();
    OUTLINED_FUNCTION_4_39();
    sub_26A84FDF8();
    (*(v8 + 8))(v12, v6);
  }

  else
  {
    sub_26A4DBD68(v0, v5, &qword_2803B0920);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0920);
    v20 = type metadata accessor for RFButtonStyle();
    v21 = sub_26A6091D0();
    OUTLINED_FUNCTION_7_37();
    v24 = sub_26A609338(v22, v23);
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = v24;
    OUTLINED_FUNCTION_8_35();
    OUTLINED_FUNCTION_4_39();
    sub_26A84FDF8();
  }

  OUTLINED_FUNCTION_27_0();
}

void sub_26A6078C0()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  sub_26A4DBD68((v2 + 1), v15, &qword_2803ADD70);
  if (v15[3])
  {
    OUTLINED_FUNCTION_25_15();
  }

  else
  {
    v4 = sub_26A84FEA8();
    OUTLINED_FUNCTION_10_28(v4, MEMORY[0x277CE04F8]);
    if (v5)
    {
      sub_26A4DBD10(v15, &qword_2803ADD70);
    }
  }

  v14[1] = v16[4];
  v14[2] = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC4A0);
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_21_15();
  v6 = sub_26A84F4F8();
  v14[3] = v14;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34_8();
  v8 = *v3;
  KeyPath = swift_getKeyPath();
  v15[0] = v1;
  v15[1] = KeyPath;
  v15[2] = v8;
  v10 = sub_26A52E598();

  OUTLINED_FUNCTION_12_23();

  v11 = OUTLINED_FUNCTION_1_46();
  v14[4] = v10;
  v14[5] = v11;
  OUTLINED_FUNCTION_0_42();
  swift_getWitnessTable();
  View.eraseToAnyView()(v6);
  v12 = OUTLINED_FUNCTION_18_15();
  v13(v12);
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A607A7C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  sub_26A4DBD68((v2 + 1), v15, &qword_2803ADD70);
  if (v15[3])
  {
    OUTLINED_FUNCTION_25_15();
  }

  else
  {
    v4 = sub_26A84FEA8();
    OUTLINED_FUNCTION_10_28(v4, MEMORY[0x277CE04F8]);
    if (v5)
    {
      sub_26A4DBD10(v15, &qword_2803ADD70);
    }
  }

  v14[1] = v16[4];
  v14[2] = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0970);
  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_21_15();
  v6 = sub_26A84F4F8();
  v14[3] = v14;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34_8();
  v8 = *v3;
  KeyPath = swift_getKeyPath();
  v15[0] = v1;
  v15[1] = KeyPath;
  v15[2] = v8;
  v10 = sub_26A609438();

  OUTLINED_FUNCTION_12_23();

  v11 = OUTLINED_FUNCTION_1_46();
  v14[4] = v10;
  v14[5] = v11;
  OUTLINED_FUNCTION_0_42();
  swift_getWitnessTable();
  View.eraseToAnyView()(v6);
  v12 = OUTLINED_FUNCTION_18_15();
  v13(v12);
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A607C38()
{
  OUTLINED_FUNCTION_28_0();
  v19 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0960);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  sub_26A4DBD68((v2 + 1), v22, &qword_2803ADD70);
  if (v22[3])
  {
    OUTLINED_FUNCTION_25_15();
  }

  else
  {
    v7 = sub_26A84FEA8();
    OUTLINED_FUNCTION_10_28(v7, MEMORY[0x277CE04F8]);
    if (v8)
    {
      sub_26A4DBD10(v22, &qword_2803ADD70);
    }
  }

  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_21_15();
  v9 = sub_26A84F4F8();
  v18[2] = v18;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34_8();
  v11 = *v2;
  KeyPath = swift_getKeyPath();
  sub_26A4DBD68(v19, v6, &qword_2803AAFA0);
  v13 = &v6[*(v3 + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = sub_26A609380();

  OUTLINED_FUNCTION_11_28();
  sub_26A4DBD10(v6, &qword_2803B0960);
  v15 = OUTLINED_FUNCTION_1_46();
  v20 = v14;
  v21 = v15;
  OUTLINED_FUNCTION_0_42();
  swift_getWitnessTable();
  View.eraseToAnyView()(v9);
  v16 = OUTLINED_FUNCTION_17_14();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A607E38()
{
  OUTLINED_FUNCTION_28_0();
  v20 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B09E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  sub_26A4DBD68((v2 + 1), v23, &qword_2803ADD70);
  if (v23[3])
  {
    OUTLINED_FUNCTION_25_15();
  }

  else
  {
    v7 = sub_26A84FEA8();
    OUTLINED_FUNCTION_10_28(v7, MEMORY[0x277CE04F8]);
    if (v8)
    {
      sub_26A4DBD10(v23, &qword_2803ADD70);
    }
  }

  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_21_15();
  v9 = sub_26A84F4F8();
  v19[2] = v19;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34_8();
  v11 = *v2;
  KeyPath = swift_getKeyPath();
  sub_26A84FF88();
  OUTLINED_FUNCTION_46();
  (*(v13 + 16))(v6, v20);
  v14 = &v6[*(v3 + 36)];
  *v14 = KeyPath;
  v14[1] = v11;
  v15 = sub_26A609984();

  OUTLINED_FUNCTION_11_28();
  sub_26A4DBD10(v6, &qword_2803B09E0);
  v16 = OUTLINED_FUNCTION_1_46();
  v21 = v15;
  v22 = v16;
  OUTLINED_FUNCTION_0_42();
  swift_getWitnessTable();
  View.eraseToAnyView()(v9);
  v17 = OUTLINED_FUNCTION_17_14();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_27_0();
}

uint64_t CompositionToken.init(text1:tapAction:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (qword_2803A9168 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D3160, (a4 + 296), &qword_2803B0830);
  sub_26A6AEE74(v14);
  memcpy(a4, v14, 0xBFuLL);
  sub_26A6088C0((a4 + 328), (a4 + 192));
  v8 = type metadata accessor for CompositionToken(0);
  v9 = v8[5];
  *&a4[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  *&a4[v8[6]] = (*(v11 + 8))(v10, v11);
  v12 = &a4[v8[7]];
  *v12 = a2;
  *(v12 + 1) = a3;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A6081B4(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionToken(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0860);
  MEMORY[0x28223BE20](v7);
  v9 = &__src[-v8 - 8];
  v10 = *a1;
  v12 = *(v11 + 36);
  if (qword_2803A9168 != -1)
  {
    swift_once();
  }

  v13 = v9 + v12;
  sub_26A4DBD68(&unk_2803D3160, (v13 + 296), &qword_2803B0830);
  sub_26A6AEE74(__src);
  memcpy(v13, __src, 0xBFuLL);
  sub_26A6088C0((v13 + 328), (v13 + 192));
  v14 = *(type metadata accessor for CompositionToken.Platter(0) + 20);
  *&v13[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  *v9 = v10;
  sub_26A609634(a2, &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_26A609698(&__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v16 + v15);
  sub_26A608B44();

  sub_26A850A38();

  return sub_26A4DBD10(v9, &qword_2803B0860);
}

uint64_t sub_26A608428(uint64_t a1)
{
  result = type metadata accessor for CompositionToken(0);
  v3 = *(a1 + *(result + 28));
  if (v3)
  {

    v3(v4);

    return sub_26A4C24DC(v3);
  }

  return result;
}

uint64_t CompositionToken.body.getter()
{
  v1 = type metadata accessor for CompositionToken(0);
  sub_26A6078C0();
  v3 = v2;
  LOBYTE(v2) = *(v0 + *(v1 + 28)) != 0;
  v6 = v0;
  sub_26A607168(v2, sub_26A60893C, &v5, v3);
}

uint64_t sub_26A608528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = sub_26A84EE68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0888);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0890);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v42 = &v40 - v18;
  v19 = *(v3 + 240);
  v40 = *(v3 + 256);
  v41 = v19;
  v20 = sub_26A850248();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0898);
  (*(*(v21 - 8) + 16))(v15, a1, v21);
  v22 = &v15[*(v13 + 44)];
  *v22 = v20;
  v23 = v41;
  *(v22 + 24) = v40;
  *(v22 + 8) = v23;
  v22[40] = 0;
  type metadata accessor for CompositionToken.Platter(0);
  sub_26A720064(v11);
  (*(v6 + 104))(v8, *MEMORY[0x277CDF3D0], v5);
  v24 = sub_26A84EE58();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  v26 = 288;
  if (v24)
  {
    v26 = 280;
  }

  v27 = *(v3 + v26);

  v28 = sub_26A850248();
  v29 = v15;
  v30 = v42;
  sub_26A4DBDB4(v29, v42, &qword_2803B0888);
  v31 = v30 + *(v17 + 44);
  *v31 = v27;
  *(v31 + 8) = v28;
  v32 = *(v3 + 272);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B08A0);
  v34 = v43;
  v35 = (v43 + *(v33 + 36));
  v36 = *(sub_26A84F5F8() + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_26A84FB88();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  *v35 = v32;
  *(v35 + 1) = v32;
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
  return sub_26A4DBDB4(v30, v34, &qword_2803B0890);
}

void sub_26A608988()
{
  sub_26A608A2C();
  if (v0 <= 0x3F)
  {
    sub_26A5B96FC();
    if (v1 <= 0x3F)
    {
      sub_26A586908();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A608A2C()
{
  if (!qword_2803B0848)
  {
    v0 = type metadata accessor for EnvironmentConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B0848);
    }
  }
}

unint64_t sub_26A608A7C()
{
  result = qword_2803B0850;
  if (!qword_2803B0850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0860);
    sub_26A608B44();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0850);
  }

  return result;
}

unint64_t sub_26A608B44()
{
  result = qword_2803B0868;
  if (!qword_2803B0868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0860);
    sub_26A609338(&qword_2803B0870, type metadata accessor for CompositionToken.Platter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0868);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 192);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 192) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3C0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_26A608D68()
{
  sub_26A608A2C();
  if (v0 <= 0x3F)
  {
    sub_26A5B96FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26A608E08()
{
  result = qword_2803B08B8;
  if (!qword_2803B08B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B08B0);
    sub_26A608E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B08B8);
  }

  return result;
}

unint64_t sub_26A608E94()
{
  result = qword_2803B08C0;
  if (!qword_2803B08C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B08C8);
    sub_26A608F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B08C0);
  }

  return result;
}

unint64_t sub_26A608F20()
{
  result = qword_2803B08D0;
  if (!qword_2803B08D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B08D8);
    sub_26A608FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B08D0);
  }

  return result;
}

unint64_t sub_26A608FAC()
{
  result = qword_2803B08E0;
  if (!qword_2803B08E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B08A8);
    sub_26A609038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B08E0);
  }

  return result;
}

unint64_t sub_26A609038()
{
  result = qword_2803B08E8;
  if (!qword_2803B08E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B08F0);
    sub_26A6090C4();
    sub_26A5C896C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B08E8);
  }

  return result;
}

unint64_t sub_26A6090C4()
{
  result = qword_2803B08F8;
  if (!qword_2803B08F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0900);
    sub_26A60917C();
    sub_26A4DBCC8(&qword_2803A99A8, &qword_2803A99B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B08F8);
  }

  return result;
}

unint64_t sub_26A60917C()
{
  result = qword_2803B0908;
  if (!qword_2803B0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0908);
  }

  return result;
}

unint64_t sub_26A6091D0()
{
  result = qword_2803B0928;
  if (!qword_2803B0928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0920);
    sub_26A609254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0928);
  }

  return result;
}

unint64_t sub_26A609254()
{
  result = qword_2803B0930;
  if (!qword_2803B0930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0938);
    sub_26A4DBCC8(&qword_2803B0940, &qword_2803B0948);
    sub_26A4DBCC8(&qword_2803B0950, &qword_2803B0958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0930);
  }

  return result;
}

uint64_t sub_26A609338(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A609380()
{
  result = qword_2803B0968;
  if (!qword_2803B0968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0960);
    sub_26A52E814();
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0968);
  }

  return result;
}

unint64_t sub_26A609438()
{
  result = qword_2803B0978;
  if (!qword_2803B0978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0970);
    sub_26A4EA164();
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0978);
  }

  return result;
}

unint64_t sub_26A6094F0()
{
  result = qword_2803B0990;
  if (!qword_2803B0990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0988);
    sub_26A60957C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0990);
  }

  return result;
}

unint64_t sub_26A60957C()
{
  result = qword_2803B0998;
  if (!qword_2803B0998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0980);
    sub_26A4DBCC8(&qword_2803B09A0, &qword_2803B09A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0998);
  }

  return result;
}

uint64_t sub_26A609634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A609698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6096FC()
{
  v1 = *(type metadata accessor for CompositionToken(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A608428(v2);
}

unint64_t sub_26A60975C()
{
  result = qword_2803B09C0;
  if (!qword_2803B09C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B08A0);
    sub_26A609814();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B09C0);
  }

  return result;
}

unint64_t sub_26A609814()
{
  result = qword_2803B09C8;
  if (!qword_2803B09C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0890);
    sub_26A6098CC();
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B09C8);
  }

  return result;
}

unint64_t sub_26A6098CC()
{
  result = qword_2803B09D0;
  if (!qword_2803B09D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0888);
    sub_26A4DBCC8(&qword_2803B09D8, &qword_2803B0898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B09D0);
  }

  return result;
}

unint64_t sub_26A609984()
{
  result = qword_2803B09E8;
  if (!qword_2803B09E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B09E0);
    sub_26A609338(&qword_2803B09F0, MEMORY[0x277CDE230]);
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B09E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_46()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_6_32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_35()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 96) = a2;
  *(v3 - 88) = v2;
  *(v3 - 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_28()
{
  v6 = *(v4 - 200);

  return MEMORY[0x282132FD0](v6, v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_23()
{
  v6 = *(v3 - 200);
  v5 = *(v3 - 192);

  return MEMORY[0x282132FD0](v5, v2, v0, v1, v6);
}

uint64_t OUTLINED_FUNCTION_16_13()
{
  v2 = *(v0 - 96);
  v1 = *(v0 - 88);
  *(v0 - 200) = __swift_project_boxed_opaque_existential_1((v0 - 120), v2);

  return MEMORY[0x282132308](255, v2, v1);
}

uint64_t OUTLINED_FUNCTION_23_12()
{

  return MEMORY[0x282132308](255, v1, v0);
}

uint64_t OUTLINED_FUNCTION_24_14()
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return sub_26A4C2314((v0 - 160), v0 - 120);
}

uint64_t type metadata accessor for TableRowWatchCellViewModel()
{
  result = qword_2803B0A08;
  if (!qword_2803B0A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A609D08()
{
  sub_26A609E14(319, &qword_2803B0A18, MEMORY[0x277D63810], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A609E14(319, &qword_2803B0A20, MEMORY[0x277D62898], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A609E14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TableRowWatchCellViewModel.CellType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A609F58()
{
  result = qword_2803B0A28;
  if (!qword_2803B0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0A28);
  }

  return result;
}

uint64_t sub_26A609FAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0A38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_26A84E4A8();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  if (*v1)
  {
    return 0;
  }

  v20 = v1[2];
  if (*(v20 + 16) != 1)
  {
    return 0;
  }

  sub_26A7DBCBC(v20, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    (*(v13 + 32))(v19, v10, v11);
    if ((sub_26A84E498() & 1) == 0)
    {
      v29 = OUTLINED_FUNCTION_0_43();
      v30(v29);
      return 0;
    }

    v23 = *(type metadata accessor for TableRowWatchCellViewModel() + 28);
    sub_26A60A614(v1 + v23, v7);
    v24 = sub_26A84AE88();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v24);
    sub_26A4E2544(v7, &qword_2803ACE98);
    if (EnumTagSinglePayload == 1)
    {
      v26 = OUTLINED_FUNCTION_0_43();
      v27(v26);
    }

    else
    {
      sub_26A60A614(v1 + v23, v4);
      if (__swift_getEnumTagSinglePayload(v4, 1, v24) == 1)
      {
        v31 = OUTLINED_FUNCTION_0_43();
        v32(v31);
        v21 = &qword_2803ACE98;
        v22 = v4;
        goto LABEL_5;
      }

      sub_26A84AE68();
      (*(*(v24 - 8) + 8))(v4, v24);
      v33 = sub_26A84E488();
      v34 = *(v13 + 8);
      v34(v16, v11);
      v34(v19, v11);
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  v21 = &qword_2803B0A38;
  v22 = v10;
LABEL_5:
  sub_26A4E2544(v22, v21);
  return 0;
}

void sub_26A60A310()
{
  v1 = sub_26A84E4A8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    while (v9 != v10)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      (*(v3 + 16))(v7, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10++, v1, v5);
      v11 = sub_26A84E488();
      (*(v3 + 8))(v7, v1);
      if ((v11 & 1) == 0)
      {
        return;
      }
    }
  }
}

unint64_t sub_26A60A45C()
{
  result = qword_2803B0A30;
  if (!qword_2803B0A30)
  {
    type metadata accessor for TableRowWatchCellViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0A30);
  }

  return result;
}

BOOL sub_26A60A4B4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1[2] + 16) != *(a2[2] + 16))
  {
    return 0;
  }

  v4 = type metadata accessor for TableRowWatchCellViewModel();
  return *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36));
}

uint64_t sub_26A60A534()
{
  MEMORY[0x26D664930](*v0);
  MEMORY[0x26D664930](*(v0[2] + 16));
  v1 = *(v0 + *(type metadata accessor for TableRowWatchCellViewModel() + 36));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26D664950](*&v1);
}

uint64_t sub_26A60A590()
{
  sub_26A8526B8();
  sub_26A60A534();
  return sub_26A8526F8();
}

uint64_t sub_26A60A5D8()
{
  sub_26A8526B8();
  sub_26A60A534();
  return sub_26A8526F8();
}

uint64_t sub_26A60A614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A60A694()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for FactItemHeroNumberView() + 24);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A60A7D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FactItemHeroNumberView();
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A60A9BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FactItemHeroNumberView();
  sub_26A4DBD68(v1 + *(v10 + 32), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = type metadata accessor for FactItemHeroNumberView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = (v10 - v9);
  if (qword_2803A8A80 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  v13 = __swift_project_value_buffer(v12, qword_2803D1A70);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v15 = &v11[*(v14 + 32)];
  sub_26A4DBD68(v13, v15, &qword_2803AB6F0);
  sub_26A6AEE74(v48);
  memcpy(v11, v48, 0xBFuLL);
  sub_26A60E54C(v15 + *(v12 + 36), &v11[*(v14 + 28)]);
  v16 = &v11[v7[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v49[0] = xmmword_281588758[0];
  v49[1] = unk_281588768;
  v49[2] = xmmword_281588778;
  v49[3] = unk_281588788;
  v50 = xmmword_281588758[0];
  v51 = unk_281588768;
  v52 = xmmword_281588778;
  v53 = unk_281588788;
  v37 = unk_281588788;
  v38 = xmmword_281588778;
  sub_26A4DBD68(v49, v54, &qword_2803A91B0);
  sub_26A6AEE74(v54);
  memcpy(v16, v54, 0xC0uLL);
  *(v16 + 12) = v38;
  *(v16 + 13) = v37;
  v17 = v51;
  *(v16 + 14) = v50;
  *(v16 + 15) = v17;
  v18 = v53;
  *(v16 + 16) = v52;
  *(v16 + 17) = v18;
  v19 = &v11[v7[6]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v7[7];
  *&v11[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v21 = v7[8];
  *&v11[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v22 = a1[3];
  v23 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  *&v11[v7[9]] = (*(v23 + 8))(v22, v23);
  sub_26A4DBD68(a2, v46, &qword_2803A91B8);
  if (v47)
  {
    v25 = OUTLINED_FUNCTION_0_44();
    v26(v25);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4D6FD8();
    v24 = 0;
  }

  *&v11[v7[10]] = v24;
  sub_26A4DBD68(a3, v46, &qword_2803A91B8);
  if (v47)
  {
    v27 = OUTLINED_FUNCTION_0_44();
    v28(v27);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4D6FD8();
    v24 = 0;
  }

  *&v11[v7[11]] = v24;
  sub_26A4DBD68(a4, v46, &qword_2803A91B8);
  if (v47)
  {
    v29 = OUTLINED_FUNCTION_0_44();
    v30(v29);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4D6FD8();
    v24 = 0;
  }

  *&v11[v7[12]] = v24;
  sub_26A4DBD68(a5, v46, &qword_2803A91B8);
  if (v47)
  {
    v31 = OUTLINED_FUNCTION_0_44();
    v32(v31);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4D6FD8();
    v24 = 0;
  }

  *&v11[v7[13]] = v24;
  sub_26A4DBD68(a6, v46, &qword_2803A91B8);
  if (v47)
  {
    v33 = OUTLINED_FUNCTION_0_44();
    v35 = v34(v33);
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_16_14();
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    OUTLINED_FUNCTION_14_22();
    OUTLINED_FUNCTION_14_22();
    OUTLINED_FUNCTION_14_22();
    OUTLINED_FUNCTION_14_22();
    OUTLINED_FUNCTION_14_22();
    OUTLINED_FUNCTION_14_22();
    v35 = 0;
  }

  *&v11[v7[14]] = v35;
  sub_26A60E5B0(v11, a7);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for FactItemHeroNumberView()
{
  result = qword_2803B0B98;
  if (!qword_2803B0B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FactItemHeroNumberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  sub_26A60A7D4(&v17[-v9]);
  sub_26A60B508(v19);
  sub_26A60A694();
  sub_26A60A9BC(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v18 = v1;
  sub_26A4C9830();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0B80) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0B88);
  *(a1 + *(result + 36)) = 3;
  return result;
}

void sub_26A60B508(uint64_t a1@<X8>)
{
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v3 = 0uLL;
  if (byte_2803B0440 == 1)
  {
    v4 = sub_26A60A694();
    if (sub_26A61B05C(v4, &unk_287B13090))
    {
      v5 = type metadata accessor for FactItemHeroNumberView();
      v6 = 0;
      v7 = (v1 + *(v5 + 20));
      __asm { FMOV            V0.2D, #10.0 }

      v3 = vaddq_f64(v7[12], _Q0);
      v13 = vaddq_f64(v7[13], _Q0);
    }

    else
    {
      v6 = 1;
      v13 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v6 = 1;
    v13 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
}

uint64_t sub_26A60B5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0BC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9EA8);
  MEMORY[0x28223BE20](v26);
  v10 = &v25 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0BC8);
  MEMORY[0x28223BE20](v25);
  v12 = &v25 - v11;
  v13 = sub_26A84F3A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A60A9BC(v16);
  v17 = sub_26A84F388();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v28[0] = sub_26A84FC08();
    v28[1] = 0;
    LOBYTE(v28[2]) = 0;
    sub_26A60C0C0(a1);
    sub_26A851458();
    sub_26A84F628();
    memcpy(v29, v28, 0x780uLL);
    sub_26A4DBD68(v29, v12, &qword_2803A9E88);
  }

  else
  {
    *v10 = sub_26A84FA78();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0BD0) + 44)];
    *v8 = sub_26A84FC08();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0BD8);
    sub_26A60BA6C(a1, &v8[*(v20 + 44)]);
    sub_26A4DBD68(v8, v5, &qword_2803B0BC0);
    sub_26A4DBD68(v5, v19, &qword_2803B0BC0);
    v21 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0BE0) + 48);
    *v21 = 0;
    *(v21 + 8) = 1;
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v23 = swift_getKeyPath();
    v24 = &v10[*(v26 + 36)];
    *v24 = KeyPath;
    v24[8] = 0;
    *(v24 + 2) = v23;
    *(v24 + 12) = 256;
    sub_26A4DBD68(v10, v12, &qword_2803A9EA8);
  }

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E88);
  sub_26A4D6310();
  sub_26A4D63C8();
  sub_26A84FDF8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A60BA6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0BF0);
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for FactItemHeroNumberView();
  v9 = *(a1 + v8[13]);
  if (qword_2803A8C30 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B0B30, v60, &qword_2803AA880);
  sub_26A6AEE74(v67);
  memcpy(v59, v67, 0xBFuLL);
  v60[11] = 0;
  v60[10] = sub_26A80A810;
  v58 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFE0);
  sub_26A4EA0D8();
  v38 = v7;
  sub_26A850B98();
  sub_26A4D6FD8();
  v10 = sub_26A84FA38();
  v11 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 8);
  v58 = v10;
  v59[0] = v11;
  LOBYTE(v59[1]) = 0;
  sub_26A60C5D8(a1, &v59[2]);
  v12 = sub_26A850258();
  sub_26A60B120();
  sub_26A84ED48();
  v61 = v12;
  v62 = v13;
  v63 = v14;
  v64 = v15;
  v65 = v16;
  v66 = 0;
  v17 = *(a1 + v8[11]);
  if (qword_2803A8C20 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B0A90, v51, &qword_2803AA880);
  sub_26A6AEE74(v68);
  memcpy(v50, v68, sizeof(v50));
  v51[11] = 0;
  v51[10] = sub_26A80A810;
  v49 = v17;

  v18 = sub_26A850258();
  sub_26A60B120();
  sub_26A84ED48();
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  v56 = v22;
  v57 = 0;
  v23 = *(a1 + v8[12]);
  if (qword_2803A8C28 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B0AE0, v48, &qword_2803AA880);
  sub_26A6AEE74(v69);
  memcpy(v47, v69, sizeof(v47));
  v48[11] = 0;
  v48[10] = sub_26A80A810;
  v46 = v23;
  v24 = *(a1 + v8[14]);
  v25 = qword_28157E6A0;

  v26 = v38;
  if (v25 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815887F8, v45, &qword_2803AA880);
  sub_26A6AEE74(v70);
  memcpy(v44, v70, sizeof(v44));
  v45[11] = 0;
  v45[10] = sub_26A80A810;
  v43 = v24;
  v28 = v36;
  v27 = v37;
  v29 = *(v36 + 16);
  v29(v37, v26, v3);
  sub_26A4DBD68(&v58, v42, &qword_2803B0BF8);
  sub_26A4DBD68(&v49, v41, &qword_2803B0BE8);
  sub_26A4DBD68(&v46, v40, &qword_2803AAFE0);
  sub_26A4DBD68(&v43, v39, &qword_2803AAFE0);
  v30 = v35;
  v29(v35, v27, v3);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0C00);
  sub_26A4DBD68(v42, &v30[v31[12]], &qword_2803B0BF8);
  sub_26A4DBD68(v41, &v30[v31[16]], &qword_2803B0BE8);
  sub_26A4DBD68(v40, &v30[v31[20]], &qword_2803AAFE0);
  sub_26A4DBD68(v39, &v30[v31[24]], &qword_2803AAFE0);

  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  v32 = *(v28 + 8);
  v32(v38, v3);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return (v32)(v27, v3);
}

uint64_t sub_26A60C0C0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for FactItemHeroNumberView();
  v6 = *(v2 + v5[13]);
  if (qword_2803A8C30 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B0B30, v54, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v53, __src, sizeof(v53));
  v54[11] = 0;
  v54[10] = sub_26A80A810;
  v52 = v6;

  v7 = sub_26A84FA38();
  v8 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 8);
  v49[0] = v7;
  v49[1] = v8;
  v50 = 0;
  sub_26A60C5D8(v2, &v51);
  v9 = *(v2 + v5[11]);
  if (qword_2803A8C20 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B0A90, v42, &qword_2803AA880);
  sub_26A6AEE74(v56);
  memcpy(v41, v56, sizeof(v41));
  v42[11] = 0;
  v42[10] = sub_26A80A810;
  v40 = v9;

  v10 = sub_26A850268();
  sub_26A84ED48();
  v43 = v10;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = 0;
  v15 = *(v2 + v5[12]);
  if (qword_2803A8C28 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B0AE0, v33, &qword_2803AA880);
  sub_26A6AEE74(v57);
  memcpy(v32, v57, sizeof(v32));
  v33[11] = 0;
  v33[10] = sub_26A80A810;
  v31 = v15;

  v16 = sub_26A850268();
  sub_26A84ED48();
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = 0;
  v21 = *(v2 + v5[14]);
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815887F8, v30, &qword_2803AA880);
  sub_26A6AEE74(v58);
  memcpy(v29, v58, sizeof(v29));
  v30[11] = 0;
  v30[10] = sub_26A80A810;
  v28 = v21;
  sub_26A4DBD68(&v52, v27, &qword_2803AAFE0);
  sub_26A4DBD68(v49, v26, &qword_2803AE638);
  sub_26A4DBD68(&v40, v25, &qword_2803B0BE8);
  sub_26A4DBD68(&v31, v24, &qword_2803B0BE8);
  sub_26A4DBD68(&v28, &v23, &qword_2803AAFE0);
  sub_26A4DBD68(v27, v4, &qword_2803AAFE0);
  sub_26A4DBD68(v26, v4 + 296, &qword_2803AE638);
  sub_26A4DBD68(v25, v4 + 912, &qword_2803B0BE8);
  sub_26A4DBD68(v24, v4 + 1256, &qword_2803B0BE8);
  sub_26A4DBD68(&v23, v4 + 1600, &qword_2803AAFE0);

  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A60C5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FactItemHeroNumberView();
  v5 = *(a1 + *(v4 + 36));
  if (qword_2803A9048 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D28A0, v16, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v15, __src, sizeof(v15));
  v16[11] = 0;
  v16[10] = sub_26A80A810;
  v14 = v5;
  v6 = *(a1 + *(v4 + 40));
  v7 = qword_2803A8C18;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B0A40, v13, &qword_2803AA880);
  sub_26A6AEE74(v18);
  memcpy(v12, v18, sizeof(v12));
  v13[11] = 0;
  v13[10] = sub_26A80A810;
  v11 = v6;
  sub_26A4DBD68(&v14, v10, &qword_2803A99A0);
  sub_26A4DBD68(&v11, v9, &qword_2803AAFE0);
  sub_26A4DBD68(v10, a2, &qword_2803A99A0);
  sub_26A4DBD68(v9, a2 + 296, &qword_2803AAFE0);

  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A60C80C()
{
  v1 = v0;
  v125 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v110 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v109 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v124 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  v119 = &v108 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  v12 = OUTLINED_FUNCTION_79(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  *&v115 = v13;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  v111 = &v108 - v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  v18 = &v108 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v112 = v21;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v22);
  v24 = &v108 - v23;
  v25 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  v117 = type metadata accessor for FactItemHeroNumberView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v32);
  v34 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v126 = &v108 - v36;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA38);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v37);
  v120 = &v108 - v38;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA40);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_19();
  v122 = v40;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v41);
  v121 = &v108 - v42;
  sub_26A84C918();
  v116 = TextProperty.asAnyView()();
  v43 = *(v27 + 8);
  v43(v31, v25);
  sub_26A84C8B8();
  OUTLINED_FUNCTION_26_0(v24);
  v113 = v27 + 8;
  *&v114 = v43;
  if (v44)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v139[2] = 0;
    v139[1] = 0;
  }

  else
  {
    v0 = TextProperty.asAnyView()();
    v43(v24, v25);
    v45 = &protocol witness table for AnyView;
    v46 = MEMORY[0x277CE11C8];
  }

  v139[0] = v0;
  v139[3] = v46;
  v139[4] = v45;
  v47 = v1;
  sub_26A84C8C8();
  v48 = sub_26A84D098();
  OUTLINED_FUNCTION_34(v18);
  v49 = v111;
  if (v44)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v138[2] = 0;
    v138[1] = 0;
  }

  else
  {
    v47 = v18;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v50 + 8))(v18, v48);
    v51 = &protocol witness table for AnyView;
    v52 = MEMORY[0x277CE11C8];
  }

  v138[0] = v47;
  v138[3] = v52;
  v138[4] = v51;
  v53 = v1;
  sub_26A84C8D8();
  OUTLINED_FUNCTION_34(v49);
  if (v44)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v137[2] = 0;
    v137[1] = 0;
  }

  else
  {
    v53 = v49;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v54 + 8))(v49, v48);
    v55 = &protocol witness table for AnyView;
    v56 = MEMORY[0x277CE11C8];
  }

  v137[0] = v53;
  v137[3] = v56;
  v137[4] = v55;
  v57 = v112;
  v58 = v1;
  sub_26A84C8E8();
  OUTLINED_FUNCTION_26_0(v57);
  v59 = v114;
  if (v44)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v136[2] = 0;
    v136[1] = 0;
  }

  else
  {
    v58 = TextProperty.asAnyView()();
    v59(v57, v25);
    v60 = &protocol witness table for AnyView;
    v61 = MEMORY[0x277CE11C8];
  }

  v136[0] = v58;
  v136[3] = v61;
  v136[4] = v60;
  v62 = v115;
  v63 = v1;
  sub_26A84C8F8();
  OUTLINED_FUNCTION_34(v62);
  if (v44)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v135[2] = 0;
    v135[1] = 0;
  }

  else
  {
    v63 = v62;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v64 + 8))(v62, v48);
    v65 = &protocol witness table for AnyView;
    v66 = MEMORY[0x277CE11C8];
  }

  v135[0] = v63;
  v135[3] = v66;
  v135[4] = v65;
  if (qword_2803A8A80 != -1)
  {
    OUTLINED_FUNCTION_18_1();
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  v68 = __swift_project_value_buffer(v67, qword_2803D1A70);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v70 = &v34[*(v69 + 32)];
  sub_26A4DBD68(v68, v70, &qword_2803AB6F0);
  sub_26A6AEE74(v140);
  memcpy(v34, v140, 0xBFuLL);
  sub_26A60E54C(v70 + *(v67 + 36), &v34[*(v69 + 28)]);
  v71 = v117;
  v72 = &v34[*(v117 + 20)];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v129[0] = xmmword_281588758[0];
  v129[1] = unk_281588768;
  v129[2] = xmmword_281588778;
  v129[3] = unk_281588788;
  v130 = xmmword_281588758[0];
  v131 = unk_281588768;
  v132 = xmmword_281588778;
  v133 = unk_281588788;
  v114 = unk_281588788;
  v115 = xmmword_281588778;
  sub_26A4DBD68(v129, v134, &qword_2803A91B0);
  sub_26A6AEE74(v134);
  memcpy(v72, v134, 0xC0uLL);
  v73 = v114;
  *(v72 + 12) = v115;
  *(v72 + 13) = v73;
  v74 = v131;
  *(v72 + 14) = v130;
  *(v72 + 15) = v74;
  v75 = v133;
  *(v72 + 16) = v132;
  *(v72 + 17) = v75;
  v76 = &v34[v71[6]];
  *v76 = swift_getKeyPath();
  v76[8] = 0;
  v77 = v71[7];
  *&v34[v77] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v78 = v71[8];
  *&v34[v78] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  *&v34[v71[9]] = v116;
  sub_26A4DBD68(v139, v127, &qword_2803A91B8);
  v79 = v125;
  v80 = v120;
  if (v128)
  {
    v81 = OUTLINED_FUNCTION_1_47();
    v82(v81);
    OUTLINED_FUNCTION_22_16();
  }

  else
  {
    sub_26A4D6FD8();
    v78 = 0;
  }

  *&v34[v71[10]] = v78;
  sub_26A4DBD68(v138, v127, &qword_2803A91B8);
  if (v128)
  {
    v83 = OUTLINED_FUNCTION_1_47();
    v84(v83);
    OUTLINED_FUNCTION_22_16();
  }

  else
  {
    sub_26A4D6FD8();
    v78 = 0;
  }

  *&v34[v71[11]] = v78;
  sub_26A4DBD68(v137, v127, &qword_2803A91B8);
  if (v128)
  {
    v85 = OUTLINED_FUNCTION_1_47();
    v86(v85);
    OUTLINED_FUNCTION_22_16();
  }

  else
  {
    sub_26A4D6FD8();
    v78 = 0;
  }

  *&v34[v71[12]] = v78;
  sub_26A4DBD68(v136, v127, &qword_2803A91B8);
  if (v128)
  {
    v87 = OUTLINED_FUNCTION_1_47();
    v88(v87);
    OUTLINED_FUNCTION_22_16();
  }

  else
  {
    sub_26A4D6FD8();
    v78 = 0;
  }

  *&v34[v71[13]] = v78;
  sub_26A4DBD68(v135, v127, &qword_2803A91B8);
  if (v128)
  {
    v89 = OUTLINED_FUNCTION_1_47();
    v91 = v90(v89);
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_15_20();
    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    v91 = 0;
  }

  *&v34[v71[14]] = v91;
  sub_26A60E5B0(v34, v126);
  v92 = v119;
  sub_26A84C908();
  v93 = v124;
  sub_26A4DBDB4(v92, v124, &qword_2803B3800);
  OUTLINED_FUNCTION_26_0(v93);
  if (v44)
  {
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v95 = (v80 + *(v118 + 36));
    v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v97 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v95 + v96, 1, 1, v97);
    *v95 = KeyPath;
  }

  else
  {
    v98 = v109;
    v99 = *(v110 + 32);
    v99(v109, v93, v79);
    v100 = swift_getKeyPath();
    v101 = (v80 + *(v118 + 36));
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v99(v101 + v102, v98, v79);
    v103 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v101 + v102, 0, 1, v103);
    *v101 = v100;
  }

  sub_26A60E5B0(v126, v80);
  v104 = sub_26A84C888();
  v105 = v121;
  sub_26A4DD514(v104);

  sub_26A4D6FD8();
  sub_26A84C898();

  sub_26A4DBD68(v105, v122, &qword_2803AAA40);
  sub_26A60E9F0();
  v106 = sub_26A851248();
  OUTLINED_FUNCTION_30_1();
  return v106;
}

void sub_26A60D4B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v4 = swift_initStackObject();
  v22 = xmmword_26A8570D0;
  *(v4 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v5 = qword_281588998;
  *(v4 + 32) = qword_281588998;
  v6 = byte_2815889A0;
  *(v4 + 40) = byte_2815889A0;
  sub_26A4E324C(v5, v6);
  sub_26A621A9C(v4);
  *(inited + 32) = v7;
  v8 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  sub_26A8503E8();
  sub_26A4D6FD8();
  sub_26A8503A8();
  v9 = sub_26A850428();

  v10 = sub_26A84FEA8();
  v11 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v11;
  *(inited + 48) = v10;
  *(inited + 40) = v9;
  v12 = swift_initStackObject();
  *(v12 + 16) = v22;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v13 = qword_281588938;
  *(v12 + 32) = qword_281588938;
  v14 = byte_281588940;
  *(v12 + 40) = byte_281588940;
  sub_26A4E324C(v13, v14);
  sub_26A621A9C(v12);
  *(inited + 88) = v15;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, &v26, &qword_2803AA880);
  v16 = swift_initStackObject();
  *(v16 + 16) = v22;
  v17 = qword_281588938;
  *(v16 + 32) = qword_281588938;
  v18 = byte_281588940;
  *(v16 + 40) = byte_281588940;
  sub_26A4E324C(v17, v18);

  sub_26A58787C(v19);
  sub_26A5075B0();

  if (v23)
  {
    v20 = v24;
    *(inited + 96) = v23;
    *(inited + 112) = v20;
    *(inited + 128) = v25;
  }

  else
  {
    sub_26A4F20CC(&v28 + 8, inited + 96);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  sub_26A8516A8();
  sub_26A850408();
  sub_26A8503A8();
  v21 = sub_26A850428();

  v29 = 0;
  v28 = 0u;
  v27 = 0u;
  v26 = v21;
  sub_26A80D690();
}

void sub_26A60D88C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588898, v30, &qword_2803AA880);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588968;
  *(v5 + 32) = qword_281588968;
  v7 = byte_281588970;
  *(v5 + 40) = byte_281588970;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (*&v28[0])
  {
    v9 = v28[1];
    *(inited + 40) = v28[0];
    *(inited + 56) = v9;
    *(inited + 72) = v29[0];
  }

  else
  {
    sub_26A4F20CC(&v31, inited + 40);
  }

  sub_26A4D6FD8();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v11 = qword_281588998;
  *(v10 + 32) = qword_281588998;
  v12 = byte_2815889A0;
  *(v10 + 40) = byte_2815889A0;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(v10);
  *(inited + 88) = v13;
  sub_26A850458();
  v14 = sub_26A850308();

  v15 = sub_26A84FEA8();
  v16 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v16;
  *(inited + 104) = v15;
  *(inited + 96) = v14;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v18 = qword_281588938;
  *(v17 + 32) = qword_281588938;
  v19 = byte_281588940;
  *(v17 + 40) = byte_281588940;
  sub_26A4E324C(v18, v19);
  sub_26A621A9C(v17);
  *(inited + 144) = v20;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, v28, &qword_2803AA880);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_26A8570D0;
  v22 = qword_281588938;
  *(v21 + 32) = qword_281588938;
  v23 = byte_281588940;
  *(v21 + 40) = byte_281588940;
  sub_26A4E324C(v22, v23);

  sub_26A58787C(v24);
  sub_26A5075B0();

  if (v25)
  {
    *(inited + 152) = v25;
    *(inited + 168) = v26;
    *(inited + 184) = v27;
  }

  else
  {
    sub_26A4F20CC(v29, inited + 152);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  sub_26A8516A8();
  sub_26A4F20CC(&unk_2815888B8, v30);
  sub_26A80D690();
}

void sub_26A60DD10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, v34, &qword_2803AA880);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588968;
  *(v5 + 32) = qword_281588968;
  v7 = byte_281588970;
  *(v5 + 40) = byte_281588970;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (*&v32[0])
  {
    v9 = v32[1];
    *(inited + 40) = v32[0];
    *(inited + 56) = v9;
    *(inited + 72) = v33[0];
  }

  else
  {
    sub_26A4F20CC(&v35, inited + 40);
  }

  sub_26A4D6FD8();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v11 = qword_281588998;
  *(v10 + 32) = qword_281588998;
  v12 = byte_2815889A0;
  *(v10 + 40) = byte_2815889A0;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(v10);
  *(inited + 88) = v13;
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588898, v32, &qword_2803AA880);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_26A8570D0;
  v15 = qword_281588998;
  *(v14 + 32) = qword_281588998;
  v16 = byte_2815889A0;
  *(v14 + 40) = byte_2815889A0;
  sub_26A4E324C(v15, v16);

  sub_26A58787C(v17);
  sub_26A5075B0();

  if (*&v30[0])
  {
    v18 = v30[1];
    *(inited + 96) = v30[0];
    *(inited + 112) = v18;
    *(inited + 128) = v31[0];
  }

  else
  {
    sub_26A4F20CC(v33, inited + 96);
  }

  sub_26A4D6FD8();
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v20 = qword_281588938;
  *(v19 + 32) = qword_281588938;
  v21 = byte_281588940;
  *(v19 + 40) = byte_281588940;
  sub_26A4E324C(v20, v21);
  sub_26A621A9C(v19);
  *(inited + 144) = v22;
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815887F8, v30, &qword_2803AA880);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_26A8570D0;
  v24 = qword_281588938;
  *(v23 + 32) = qword_281588938;
  v25 = byte_281588940;
  *(v23 + 40) = byte_281588940;
  sub_26A4E324C(v24, v25);

  sub_26A58787C(v26);
  sub_26A5075B0();

  if (v27)
  {
    *(inited + 152) = v27;
    *(inited + 168) = v28;
    *(inited + 184) = v29;
  }

  else
  {
    sub_26A4F20CC(v31, inited + 152);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  sub_26A8516A8();
  sub_26A4F20CC(&unk_281588868, v34);
  sub_26A80D690();
}

uint64_t sub_26A60E25C()
{
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588898, v16, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v2 = qword_281588938;
  *(v1 + 32) = qword_281588938;
  v3 = byte_281588940;
  *(v1 + 40) = byte_281588940;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, v14, &qword_2803AA880);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588938;
  *(v5 + 32) = qword_281588938;
  v7 = byte_281588940;
  *(v5 + 40) = byte_281588940;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v11)
  {
    *(inited + 40) = v11;
    *(inited + 56) = v12;
    *(inited + 72) = v13;
  }

  else
  {
    sub_26A4F20CC(v15, inited + 40);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  v9 = sub_26A8516A8();
  v15[0] = 0u;
  memset(v14, 0, sizeof(v14));
  sub_26A66DDEC(v9, &unk_2803B0B30);

  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A60E54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FactItemConstants();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A60E5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FactItemHeroNumberView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A60E638(uint64_t a1)
{
  result = sub_26A60EC1C();
  *(a1 + 8) = result;
  return result;
}

void sub_26A60E6B8()
{
  sub_26A504650(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v1 <= 0x3F)
    {
      sub_26A504650(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A4D27F4();
        if (v3 <= 0x3F)
        {
          sub_26A504650(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26A60E880()
{
  result = qword_2803B0BA8;
  if (!qword_2803B0BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0B88);
    sub_26A60E90C();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0BA8);
  }

  return result;
}

unint64_t sub_26A60E90C()
{
  result = qword_2803B0BB0;
  if (!qword_2803B0BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0B80);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0BB0);
  }

  return result;
}

unint64_t sub_26A60E9F0()
{
  result = qword_2803B0C08;
  if (!qword_2803B0C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA40);
    sub_26A60EAA8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0C08);
  }

  return result;
}

unint64_t sub_26A60EAA8()
{
  result = qword_2803B0C10;
  if (!qword_2803B0C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA30);
    sub_26A60EB34();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0C10);
  }

  return result;
}

unint64_t sub_26A60EB34()
{
  result = qword_2803B0C18;
  if (!qword_2803B0C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA38);
    sub_26A60EC1C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0C18);
  }

  return result;
}

unint64_t sub_26A60EC1C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_22()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_16_14()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 168);
}

uint64_t SnippetGlassMaterial.SemanticType.hashValue.getter()
{
  v1 = *v0;
  sub_26A8526B8();
  MEMORY[0x26D664930](v1);
  return sub_26A8526F8();
}

uint64_t SnippetGlassMaterial.InteractionState.hashValue.getter()
{
  v1 = *v0;
  sub_26A8526B8();
  MEMORY[0x26D664930](v1);
  return sub_26A8526F8();
}

uint64_t SnippetGlassMaterial.Configuration.tintColor.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t SnippetGlassMaterial.Configuration.init(type:shape:interactionState:tintColor:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *a3;
  *(a5 + 64) = 1;
  *a5 = v7;
  result = sub_26A4C2314(a2, a5 + 8);
  *(a5 + 48) = v8;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_26A60EF54@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = sub_26A8512A8();
  *(a1 + 40) = sub_26A60F020(&qword_2803ADD78, MEMORY[0x277CE1260]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 8));
  v3 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_5_0();
  result = (*(v4 + 104))(boxed_opaque_existential_1, v3);
  *a1 = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  return result;
}

uint64_t sub_26A60F020(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_26A60F070@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84F5F8();
  *(a2 + 32) = v4;
  *(a2 + 40) = sub_26A60F020(&qword_2803B0C28, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 8));
  v6 = *(v4 + 20);
  v7 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_5_0();
  (*(v8 + 104))(boxed_opaque_existential_1 + v6, v7);
  __asm { FMOV            V0.2D, #15.0 }

  *boxed_opaque_existential_1 = result;
  *a2 = a1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return result;
}

uint64_t SnippetGlassMaterial.Configuration.tinted(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A60F1B8(v2, a2);

  *(a2 + 56) = a1;
  return result;
}

uint64_t SnippetGlassMaterial.Configuration.pressed(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_26A60F1B8(v2, a2);
  if (a1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_26A60F23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26A8513A8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  sub_26A60F4AC(a1, MEMORY[0x277CDF158], MEMORY[0x277CDF160]);
  if (!*(a1 + 56))
  {
    return (*(v7 + 32))(a2, v2, v5);
  }

  sub_26A851398();

  return (*(v7 + 8))(v2, v5);
}

uint64_t sub_26A60F364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26A84EB18();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  sub_26A60F4AC(a1, MEMORY[0x277D74E00], MEMORY[0x277D74E08]);
  if (!*(a1 + 56))
  {
    return (*(v7 + 32))(a2, v2, v5);
  }

  sub_26A54FFB0();
  swift_retain_n();
  v9 = sub_26A851FB8();
  sub_26A84EAE8();

  return (*(v7 + 8))(v2, v5);
}

uint64_t sub_26A60F4AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  if (*(a1 + 64) == 6)
  {
    return a2();
  }

  else
  {
    return a3();
  }
}

uint64_t static SnippetGlassMaterial.buttonConfiguration(using:)(void *a1)
{
  if (!a1 || (v2 = [objc_opt_self() clearColor]) != 0 && (v3 = v2, sub_26A54FFB0(), v4 = a1, v5 = sub_26A851FF8(), v4, v3, (v5 & 1) != 0))
  {

    return MEMORY[0x2821DE280]();
  }

  else
  {

    return MEMORY[0x2821DE180]();
  }
}

unint64_t sub_26A60F598()
{
  result = qword_2803B0C30;
  if (!qword_2803B0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0C30);
  }

  return result;
}

unint64_t sub_26A60F5F0()
{
  result = qword_2803B0C38;
  if (!qword_2803B0C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0C38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetGlassMaterial.SemanticType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SnippetGlassMaterial.InteractionState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SnippetGlassMaterial.InteractionState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A60F8C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_26A60F900(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void MapView.init(model:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_26A4EC1C4(a1, &selRef_markers, &qword_2803B0CC0);
  v4 = sub_26A4EC1C4(a1, &selRef_annotations, &qword_2803B0CD0);
  v5 = sub_26A4EC1C4(a1, &selRef_polyline, &qword_2803B0EB8);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    v8 = sub_26A73670C(v5);
    if (v8)
    {
      v9 = v8;
      v25 = v6;
      sub_26A7DCE44(0, v8 & ~(v8 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return;
      }

      v22 = v3;
      v10 = 0;
      v11 = v25;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x26D6644E0](v10, v7);
        }

        else
        {
          v12 = *(v7 + 8 * v10 + 32);
        }

        v13 = v12;
        [v12 lat];
        v15 = v14;
        [v13 lng];
        v17 = v16;

        v25 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_26A7DCE44(v18 > 1, v19 + 1, 1);
          v11 = v25;
        }

        ++v10;
        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v9 != v10);

      v3 = v22;
      v6 = MEMORY[0x277D84F90];
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (!v4)
  {
    v4 = v6;
  }

  if (!v3)
  {
    v3 = v6;
  }

  v24 = [a1 sizeFormat] != 0;
  [a1 cameraDistance];
  MapView.init(markers:annotations:mapItemIdentifiers:polyline:aspectRatio:cameraDistance:showsUserLocation:)(v3, v4, v6, v11, &v24, [a1 showsUserLocation], a2, v21);
}

void MapAspectRatio.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 1.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2 == 0.0)
  {
    v2 = 0;
  }

  *a1 = v2;
}

double MapAspectRatio.rawValue.getter()
{
  result = 0.0;
  if (*v0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_26A60FD50()
{
  v0 = sub_26A850D48();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_26A850E98();
  qword_2803B0C40 = result;
  return result;
}

uint64_t sub_26A60FE34()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v3 + 8))(v6, v1);
    return v10[1];
  }

  return v7;
}

uint64_t sub_26A60FF6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MapView();
  sub_26A505CD4(v1 + *(v10 + 20), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A610174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for MapView();
  sub_26A505CD4(v1 + *(v10 + 60), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A505C8C(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void sub_26A61035C()
{
  v0 = sub_26A851F98();
  __swift_allocate_value_buffer(v0, qword_2803B0C48);
  __swift_project_value_buffer(v0, qword_2803B0C48);
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D77548];
  sub_26A851FA8();
}

void MapView.init(markers:annotations:mapItemIdentifiers:polyline:aspectRatio:cameraDistance:showsUserLocation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v49 = *a5;
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  v11 = type metadata accessor for MapView();
  v12 = v11[5];
  *(a7 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v13 = a7 + v11[6];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v54 = v11;
  v14 = v11[15];
  *(a7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  v55 = a7;
  swift_storeEnumTagMultiPayload();
  v15 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v16 = sub_26A73670C(a1);
  v17 = 0;
  v18 = a1 & 0xC000000000000001;
  v56 = a1;
  v19 = a1 & 0xFFFFFFFFFFFFFF8;
  v53 = v15;
  while (v16 != v17)
  {
    if (v18)
    {
      v20 = MEMORY[0x26D6644E0](v17, v56);
    }

    else
    {
      if (v17 >= *(v19 + 16))
      {
        goto LABEL_43;
      }

      v20 = *(v56 + 8 * v17 + 32);
    }

    v21 = v20;
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v23 = [v20 identifier];

    ++v17;
    if (v23)
    {
      MEMORY[0x26D663CE0]();
      OUTLINED_FUNCTION_6_33();
      if (v24)
      {
        sub_26A851B08();
      }

      sub_26A851B28();
      v15 = v57;
      v17 = v22;
    }
  }

  v58 = MEMORY[0x277D84F90];
  v25 = sub_26A73670C(v15);
  v26 = 0;
  v27 = v15 & 0xC000000000000001;
  v28 = *MEMORY[0x277CE4278];
  v29 = *(MEMORY[0x277CE4278] + 8);
  while (v25 != v26)
  {
    if (v27)
    {
      v30 = MEMORY[0x26D6644E0](v26, v15);
    }

    else
    {
      if (v26 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v30 = *(v15 + 8 * v26 + 32);
    }

    v31 = v30;
    v32 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_44;
    }

    sub_26A5B4A3C();
    v34 = v33;
    sub_26A5B4CA8();
    v36 = [objc_allocWithZone(MEMORY[0x277CD4E98]) initWithMUID:v34 resultProviderID:v35 coordinate:{v28, v29}];

    ++v26;
    if (v36)
    {
      MEMORY[0x26D663CE0]();
      OUTLINED_FUNCTION_6_33();
      if (v24)
      {
        sub_26A851B08();
      }

      sub_26A851B28();
      v53 = v58;
      v26 = v32;
    }
  }

  sub_26A614A54(v53);
  v37 = objc_allocWithZone(type metadata accessor for MapViewModel());
  sub_26A807D6C(a3);
  v38 = (v55 + v54[7]);
  sub_26A6155D8();
  *v38 = sub_26A84F258();
  v38[1] = v39;
  if (v25 < 0)
  {
    goto LABEL_46;
  }

  if (v25)
  {
    v40 = 0;
    v41 = MEMORY[0x277D84F90];
    do
    {
      if (v27)
      {
        v42 = MEMORY[0x26D6644E0](v40, v15);
      }

      else
      {
        v42 = *(v15 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = [v42 isForCameraPositionOnly];

      if (v44)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7DCC48();
        }

        v45 = *(v41 + 16);
        if (v45 >= *(v41 + 24) >> 1)
        {
          sub_26A7DCC48();
        }

        *(v41 + 16) = v45 + 1;
        *(v41 + 8 * v45 + 32) = v40;
      }

      ++v40;
    }

    while (v25 != v40);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  *(v55 + v54[14]) = sub_26A587948(v41);
  *(v55 + v54[10]) = v56;
  *(v55 + v54[11]) = a2;
  *(v55 + v54[12]) = a4;
  *(v55 + v54[13]) = a8;
  *(v55 + v54[9]) = v49;
  v46 = sub_26A73670C(v56);
  v47 = sub_26A73670C(a2);
  if (__OFADD__(v46, v47))
  {
LABEL_47:
    __break(1u);
    return;
  }

  *(v55 + v54[8]) = v46 + v47;
  if (a6)
  {
    sub_26A80936C();
  }
}

void sub_26A610904(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84E6E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for MapView();
  v12 = v11;
  if (*(v1 + *(v11 + 52)) == 0.0)
  {
LABEL_2:
    v13 = *(v2 + v12[7] + 8);
    if ((sub_26A807B48() & 1) != 0 && !*(v2 + v12[8]))
    {
      v27 = sub_26A807B70();
      if (v27)
      {
        v28 = v27;
        [v27 coordinate];

        v29 = sub_26A851E78();
        LOBYTE(v30) = 2;
        sub_26A7BC848(v29, 1, "SnippetUI/MapView.swift", 23, 2, 118, "position", 8, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
        sub_26A84E6D8();
        sub_26A84E648();
        (*(v5 + 8))(v7, v4);
        return;
      }
    }

    v1 = *(v13 + OBJC_IVAR____TtC9SnippetUI12MapViewModel_mapItems);
    if (sub_26A73670C(v1))
    {
      sub_26A736710(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_34;
      }

      v14 = *(v1 + 32);
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  v33 = v5;
  v34 = v4;
  v35 = a1;
  v17 = *(v1 + *(v11 + 40));
  v18 = sub_26A73670C(v17);
  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {
      v23 = *(v2 + v12[11]);
      v24 = sub_26A73670C(v23);
      v4 = v34;
      v5 = v33;
      if (!v24)
      {
        goto LABEL_2;
      }

      sub_26A736710(0, (v23 & 0xC000000000000001) == 0, v23);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x26D6644E0](0, v23);
      }

      else
      {
        v25 = *(v23 + 32);
      }

      v1 = v25;
      sub_26A7492F8();
      goto LABEL_29;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D6644E0](i, v17);
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v20 = *(v17 + 8 * i + 32);
    }

    v1 = v20;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_26A83AA04();
    if (CLLocationCoordinate2DIsValid(v45))
    {
      sub_26A83AA04();
      v4 = v34;
      v5 = v33;
LABEL_29:

      v26 = sub_26A851E78();
      LOBYTE(v30) = 2;
      sub_26A7BC674(v26, 1, "SnippetUI/MapView.swift", 23, 2, 109, "position", 8, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
      sub_26A84E6D8();
      sub_26A84E648();
      (*(v5 + 8))(v10, v4);
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:

  v35 = MEMORY[0x26D6644E0](0, v1);

  v14 = v35;
LABEL_7:
  if (*(v2 + v12[8]) == 1)
  {
    v35 = v14;
    v15 = sub_26A851E78();
    LOBYTE(v30) = 2;
    sub_26A7BCA1C(v15, 1, "SnippetUI/MapView.swift", 23, 2, 126, "position", 8, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    sub_26A84E638();
    v16 = v35;

    return;
  }

LABEL_21:
  v21 = sub_26A851E78();
  LOBYTE(v30) = 2;
  v22 = sub_26A7BCBF0(v21, 1, "SnippetUI/MapView.swift", 23, 2, 129, "position", 8, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);

  MEMORY[0x282136DD0](v22);
}