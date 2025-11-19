void sub_2178DA614(char a1)
{
  sub_2178D9A48(a1);
  OUTLINED_FUNCTION_39_2();
  *(v1 + *(v3 + 504)) = a1;
}

void sub_2178DA660()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_53_1();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_47_0();
  sub_21796657C();

  OUTLINED_FUNCTION_210();
}

void sub_2178DA700()
{
  OUTLINED_FUNCTION_243();
  v1 = *v0;
  OUTLINED_FUNCTION_218();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_218();
  v5 = *(v4 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_132();

  OUTLINED_FUNCTION_146();
  sub_21796658C();
  OUTLINED_FUNCTION_210();
}

uint64_t sub_2178DA794()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_52_1();
  v5 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  swift_getKeyPath();
  OUTLINED_FUNCTION_105();

  if (!v6)
  {
    return 0;
  }

  v3 = [v6 capabilities];

  return v3 & 1;
}

void sub_2178DA848()
{
  OUTLINED_FUNCTION_81();
  v2 = v0;
  OUTLINED_FUNCTION_39_2();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  v6 = OUTLINED_FUNCTION_48(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_5();
  v11 = v9 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v102[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v102[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v102[-v19];
  v21 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 0:
      v22 = OUTLINED_FUNCTION_81_0();
      sub_2178BF534(v22, v23);
      v24 = OUTLINED_FUNCTION_81_0();
      sub_2178BF548(v24, v25);
      v26 = sub_217965B3C();
      v27 = sub_217965B2C();
      v105 = v27;
      if (!v26)
      {
        goto LABEL_7;
      }

      v28 = v26;
      sub_217965C1C();
      OUTLINED_FUNCTION_151();

      if (v1)
      {
        goto LABEL_35;
      }

      sub_217965C3C();
      v29 = sub_217968E3C();
      OUTLINED_FUNCTION_60_1(v20);
      if (!v30)
      {
        v104 = sub_217968D7C();
        v1 = v59;
        OUTLINED_FUNCTION_10(v29);
        (*(v60 + 8))(v20, v29);
LABEL_30:

        goto LABEL_36;
      }

      sub_2178BE050(v20, qword_27CB8AC48, &unk_21796FF10);
LABEL_7:
      if (!v27)
      {
        goto LABEL_34;
      }

      v31 = sub_217965D0C();
      if (v32)
      {
        v1 = v32;
        v104 = v31;
        goto LABEL_30;
      }

      sub_217965D2C();
      v61 = sub_217968E3C();
      OUTLINED_FUNCTION_60_1(v18);
      if (v30)
      {
        sub_2178BE050(v18, qword_27CB8AC48, &unk_21796FF10);
LABEL_34:
        v28 = v21;
        sub_217965B6C();
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_240();
        if (v1)
        {
LABEL_35:
          v104 = v28;
        }

        else
        {
          v104 = 0;
          v1 = 0xE000000000000000;
        }
      }

      else
      {
        v104 = sub_217968D7C();
        v1 = v96;
        OUTLINED_FUNCTION_10(v61);
        (*(v97 + 8))(v18, v61);
        OUTLINED_FUNCTION_240();
      }

LABEL_36:
      sub_2178D759C();
      OUTLINED_FUNCTION_192(v62);
      OUTLINED_FUNCTION_8_7();
      swift_getWitnessTable();
      v63 = OUTLINED_FUNCTION_194();

      if (v63)
      {
        if (qword_27CB8A380 != -1)
        {
          OUTLINED_FUNCTION_39_0();
        }

        OUTLINED_FUNCTION_67_1();
        OUTLINED_FUNCTION_43_1();
        OUTLINED_FUNCTION_78_1();
        sub_21796560C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
        OUTLINED_FUNCTION_116();
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_21796A340;
        *(v64 + 56) = MEMORY[0x277D837D0];
        *(v64 + 64) = sub_21788C964();
        *(v64 + 32) = v104;
        *(v64 + 40) = v1;
        OUTLINED_FUNCTION_145();
        sub_217968F7C();
        OUTLINED_FUNCTION_110();

        v65 = OUTLINED_FUNCTION_81_0();
        sub_2178E3790(v65, v66);
        v67 = OUTLINED_FUNCTION_81_0();
        goto LABEL_66;
      }

      v103 = v26;
      if (qword_27CB8A358 != -1)
      {
        OUTLINED_FUNCTION_98();
      }

      OUTLINED_FUNCTION_207(&qword_27CB977D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
      v69 = swift_allocObject();
      OUTLINED_FUNCTION_237(v69, xmmword_21796B330);
      sub_21796914C();
      OUTLINED_FUNCTION_219();

      v70 = MEMORY[0x277D83C10];
      v69[3].n128_u64[1] = MEMORY[0x277D83B88];
      v69[4].n128_u64[0] = v70;
      v69[2].n128_u64[0] = v2;
      v69[6].n128_u64[0] = MEMORY[0x277D837D0];
      v69[6].n128_u64[1] = sub_21788C964();
      v69[4].n128_u64[1] = v104;
      v69[5].n128_u64[0] = v1;

      OUTLINED_FUNCTION_78_1();
      sub_21796560C();

      OUTLINED_FUNCTION_51_0();
      v71 = sub_217968F3C();
      v73 = v72;

      v106 = v71;
      v107 = v73;
      sub_21796903C();
      OUTLINED_FUNCTION_110();
      v74 = OUTLINED_FUNCTION_81_0();
      sub_2178E3790(v74, v75);

      v76 = OUTLINED_FUNCTION_81_0();
      sub_2178E3790(v76, v77);

      goto LABEL_67;
    case 1:
      if (!v21)
      {
        OUTLINED_FUNCTION_240();
        v78 = 0;
        v1 = 0;
        v47 = 0;
        v42 = 0;
        goto LABEL_49;
      }

      v36 = OUTLINED_FUNCTION_61_0();
      sub_2178BF548(v36, v37);
      v38 = OUTLINED_FUNCTION_61_0();
      sub_2178BF548(v38, v39);
      v40 = OUTLINED_FUNCTION_61_0();
      sub_2178BF548(v40, v41);
      v42 = sub_217965B3C();
      v43 = OUTLINED_FUNCTION_61_0();
      sub_2178E3790(v43, v44);
      v45 = OUTLINED_FUNCTION_61_0();
      sub_2178BF548(v45, v46);
      v47 = sub_217965B2C();
      v48 = OUTLINED_FUNCTION_61_0();
      sub_2178E3790(v48, v49);
      if (v42)
      {

        v50 = v42;
        sub_217965C1C();
        OUTLINED_FUNCTION_151();

        if (v1)
        {
LABEL_24:
          v78 = v50;
          goto LABEL_49;
        }

        sub_217965C3C();
        v51 = sub_217968E3C();
        OUTLINED_FUNCTION_60_1(v15);
        if (!v30)
        {
          v78 = sub_217968D7C();
          v1 = v79;
          OUTLINED_FUNCTION_10(v51);
          (*(v80 + 8))(v15, v51);

          goto LABEL_49;
        }

        sub_2178BE050(v15, qword_27CB8AC48, &unk_21796FF10);
      }

      if (!v47)
      {
        goto LABEL_47;
      }

      v50 = v47;
      sub_217965D0C();
      if (v52)
      {
        OUTLINED_FUNCTION_151();

        goto LABEL_24;
      }

      sub_217965D2C();
      v81 = sub_217968E3C();
      OUTLINED_FUNCTION_60_1(v11);
      if (v30)
      {
        sub_2178BE050(v11, qword_27CB8AC48, &unk_21796FF10);
LABEL_47:
        v78 = sub_217965B6C();
        v1 = v82;
      }

      else
      {
        sub_217968D7C();
        v1 = v98;
        OUTLINED_FUNCTION_10(v81);
        v100 = v11;
        v78 = v101;
        (*(v99 + 8))(v100, v81);
      }

      OUTLINED_FUNCTION_240();
LABEL_49:
      sub_2178D759C();
      OUTLINED_FUNCTION_192(v83);
      OUTLINED_FUNCTION_8_7();
      swift_getWitnessTable();
      v84 = OUTLINED_FUNCTION_194();

      if (v84)
      {
        if (v1)
        {
          if (qword_27CB8A380 != -1)
          {
            OUTLINED_FUNCTION_39_0();
          }

          OUTLINED_FUNCTION_67_1();
          OUTLINED_FUNCTION_43_1();
          OUTLINED_FUNCTION_78_1();
          sub_21796560C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
          OUTLINED_FUNCTION_116();
          v85 = swift_allocObject();
          *(v85 + 16) = xmmword_21796A340;
          *(v85 + 56) = MEMORY[0x277D837D0];
          *(v85 + 64) = sub_21788C964();
          *(v85 + 32) = v78;
          *(v85 + 40) = v1;
          OUTLINED_FUNCTION_145();
        }

        else
        {
          if (qword_27CB8A380 != -1)
          {
            OUTLINED_FUNCTION_39_0();
          }

          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_78_1();
          sub_21796560C();
        }

        sub_217968F7C();
        OUTLINED_FUNCTION_110();

        v94 = OUTLINED_FUNCTION_61_0();
        sub_2178E3790(v94, v95);
      }

      else
      {
        if (!v1)
        {
          if (qword_27CB8A380 != -1)
          {
            OUTLINED_FUNCTION_39_0();
          }

          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_78_1();
          v78 = sub_21796560C();
          v1 = v86;
        }

        v103 = v78;
        v104 = v47;
        v105 = v42;
        if (qword_27CB8A358 != -1)
        {
          OUTLINED_FUNCTION_98();
        }

        OUTLINED_FUNCTION_207(&qword_27CB977D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
        v87 = swift_allocObject();
        OUTLINED_FUNCTION_237(v87, xmmword_21796B330);
        sub_21796914C();
        OUTLINED_FUNCTION_219();

        v88 = MEMORY[0x277D83C10];
        v87[3].n128_u64[1] = MEMORY[0x277D83B88];
        v87[4].n128_u64[0] = v88;
        v87[2].n128_u64[0] = v2;
        v87[6].n128_u64[0] = MEMORY[0x277D837D0];
        v87[6].n128_u64[1] = sub_21788C964();
        v87[4].n128_u64[1] = v103;
        v87[5].n128_u64[0] = v1;

        OUTLINED_FUNCTION_78_1();
        sub_21796560C();

        OUTLINED_FUNCTION_51_0();
        v89 = sub_217968F3C();
        v91 = v90;

        v106 = v89;
        v107 = v91;
        sub_21796903C();
        OUTLINED_FUNCTION_110();

        v92 = OUTLINED_FUNCTION_61_0();
        sub_2178E3790(v92, v93);
      }

      v67 = OUTLINED_FUNCTION_61_0();
LABEL_66:
      sub_2178E3790(v67, v68);
LABEL_67:
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_80();
      return;
    case 2:
      sub_2178D759C();
      v106 = v33;
      v34 = *(v4 + 80);
      sub_21796919C();
      OUTLINED_FUNCTION_8_7();
      swift_getWitnessTable();
      v35 = OUTLINED_FUNCTION_194();

      if ((v35 & 1) == 0)
      {
        if (qword_27CB8A360 != -1)
        {
          swift_once();
        }

        v105 = unk_27CB97830;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
        OUTLINED_FUNCTION_116();
        v53 = swift_allocObject();
        OUTLINED_FUNCTION_237(v53, xmmword_21796A340);
        v54 = sub_21796914C();

        v55 = MEMORY[0x277D83C10];
        v53[3].n128_u64[1] = MEMORY[0x277D83B88];
        v53[4].n128_u64[0] = v55;
        v53[2].n128_u64[0] = v54;

        OUTLINED_FUNCTION_78_1();
        sub_21796560C();

        OUTLINED_FUNCTION_63_0();
        v56 = sub_217968F3C();
        v58 = v57;

        v106 = v56;
        v107 = v58;
        sub_21796903C();
        goto LABEL_28;
      }

      if (qword_27CB8A380 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_14;
    case 3:
      if (qword_27CB8A380 != -1)
      {
LABEL_68:
        OUTLINED_FUNCTION_39_0();
      }

LABEL_14:
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_78_1();
      sub_21796560C();
LABEL_28:
      OUTLINED_FUNCTION_110();
      goto LABEL_67;
    default:
      goto LABEL_67;
  }
}

void sub_2178DB500()
{
  OUTLINED_FUNCTION_241();
  v1 = sub_217965CCC();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14();
  v7 = sub_217968E3C();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v13 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 0:
      sub_2178BF548(*(v0 + 24), 0);
      sub_217965B8C();
      v14 = v4[11];
      v15 = OUTLINED_FUNCTION_28_1();
      if (v16(v15) == *MEMORY[0x277D2A6F0])
      {
        v17 = v4[12];
        v18 = OUTLINED_FUNCTION_28_1();
        v19(v18);
        v20 = *(v10 + 32);
        OUTLINED_FUNCTION_152();
        v21();
        sub_217968CCC();
        sub_2178E3790(v13, 0);
        v22 = *(v10 + 8);
        v23 = OUTLINED_FUNCTION_140();
      }

      else
      {
        sub_2178E3790(v13, 0);
        v25 = v4[1];
        v23 = OUTLINED_FUNCTION_28_1();
      }

      v24(v23);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_242();
}

void sub_2178DB700()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_107();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = _s6ModuleVMa();
  v14 = OUTLINED_FUNCTION_2(v13);
  v46 = v15;
  v47 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_88();
  v42 = v18;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  sub_2178DBAE4();
  v23 = v22;
  v24 = 0;
  v48 = *(v22 + 16);
  v44 = v7 + 8;
  v45 = (v7 + 32);
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v48 == v24)
    {

LABEL_14:
      OUTLINED_FUNCTION_80();
      return;
    }

    if (v24 >= *(v23 + 16))
    {
      break;
    }

    v25 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v26 = *(v46 + 72);
    sub_2178EBBC4(v23 + v25 + v26 * v24, v21);
    sub_2178EBFC4(&v21[*(v47 + 24)], v0, &qword_27CB8B0A0);
    v27 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_24_3(v27, v28, v5);
    if (v29)
    {
      sub_2178EBC28(v21);

      sub_2178BE050(v0, &qword_27CB8B0A0, &qword_21796B758);
      goto LABEL_14;
    }

    (*v45)(v12, v0, v5);
    OUTLINED_FUNCTION_36_0();
    sub_217864B2C(&qword_27CB8CAD8, &qword_27CB8B0A8, &unk_21796B760);
    OUTLINED_FUNCTION_120();
    sub_2179692AC();
    OUTLINED_FUNCTION_120();
    sub_2179692EC();
    if (v50 == v49)
    {
      v30 = OUTLINED_FUNCTION_203();
      v31(v30);
      sub_2178EBC28(v21);
      ++v24;
    }

    else
    {
      sub_2178EBBC4(v21, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_2178E80C4(0, *(v43 + 16) + 1, 1, v43);
      }

      v33 = *(v43 + 16);
      v32 = *(v43 + 24);
      if (v33 >= v32 >> 1)
      {
        v38 = OUTLINED_FUNCTION_56_2(v32);
        v43 = sub_2178E80C4(v38, v39, v40, v43);
      }

      ++v24;
      v34 = OUTLINED_FUNCTION_203();
      v35(v34);
      sub_2178EBC28(v21);
      v36 = v42;
      v37 = v43;
      *(v43 + 16) = v33 + 1;
      sub_2178EBB60(v36, v37 + v25 + v33 * v26);
    }
  }

  __break(1u);
}

uint64_t sub_2178DBA5C()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_78_1();
  return sub_21796560C();
}

void sub_2178DBAE4()
{
  OUTLINED_FUNCTION_81();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  OUTLINED_FUNCTION_48(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  v7 = v65 - v6;
  v71 = sub_217968E3C();
  v8 = OUTLINED_FUNCTION_2(v71);
  v68 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v67 = v13 - v12;
  v14 = _s6ModuleVMa();
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_88();
  v69 = v20;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v21);
  v66 = v65 - v22;
  OUTLINED_FUNCTION_84_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v65 - v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_159();
  v27 = sub_2178DBA5C();
  v29 = v28;
  v30 = v1 + *(v14 + 24);
  sub_2178D852C();
  *v1 = 0;
  *(v1 + 8) = v27;
  *(v1 + 16) = v29;
  v31 = sub_2178E80C4(0, 1, 1, MEMORY[0x277D84F90]);
  v33 = *(v31 + 16);
  v32 = *(v31 + 24);
  if (v33 >= v32 >> 1)
  {
    v56 = OUTLINED_FUNCTION_56_2(v32);
    v31 = sub_2178E80C4(v56, v57, v58, v31);
  }

  *(v31 + 16) = v33 + 1;
  v34 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v35 = *(v17 + 72);
  sub_2178EBB60(v1, v31 + v34 + v35 * v33);
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_43_1();
  v70 = v36;
  OUTLINED_FUNCTION_78_1();
  sub_21796560C();
  v37 = &v26[*(v14 + 24)];
  sub_2178D85D4();
  OUTLINED_FUNCTION_180(1);
  if (v47)
  {
    v59 = OUTLINED_FUNCTION_56_2(v38);
    v31 = sub_2178E80C4(v59, v60, v61, v31);
  }

  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_34_1();
  if ((*(v0 + *(v39 + 480)) & 1) == 0)
  {
    sub_2178D978C(v7);
    v40 = v71;
    OUTLINED_FUNCTION_24_3(v7, 1, v71);
    if (v41)
    {
      sub_2178BE050(v7, qword_27CB8AC48, &unk_21796FF10);
    }

    else
    {
      (*(v68 + 32))(v67, v7, v40);
      OUTLINED_FUNCTION_67_1();
      OUTLINED_FUNCTION_43_1();
      OUTLINED_FUNCTION_78_1();
      v65[1] = sub_21796560C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
      OUTLINED_FUNCTION_116();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_21796A340;
      v43 = sub_217968D7C();
      v45 = v44;
      *(v42 + 56) = MEMORY[0x277D837D0];
      *(v42 + 64) = sub_21788C964();
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      sub_217968F7C();

      v46 = &v66[*(v14 + 24)];
      sub_2178D8564();
      OUTLINED_FUNCTION_180(3);
      if (v47)
      {
        v62 = OUTLINED_FUNCTION_56_2(v48);
        v31 = sub_2178E80C4(v62, v63, v64, v31);
      }

      (*(v68 + 8))(v67, v71);
      OUTLINED_FUNCTION_236();
    }

    OUTLINED_FUNCTION_67_1();
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_78_1();
    v49 = sub_21796560C();
    v51 = v50;
    v52 = *(v14 + 24);
    v53 = v69;
    sub_2178D859C();
    *v53 = 2;
    *(v53 + 8) = v49;
    *(v53 + 16) = v51;
    v55 = *(v31 + 16);
    v54 = *(v31 + 24);
    if (v55 >= v54 >> 1)
    {
      v31 = sub_2178E80C4(v54 > 1, v55 + 1, 1, v31);
    }

    *(v31 + 16) = v55 + 1;
    sub_2178EBB60(v53, v31 + v34 + v55 * v35);
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178DBFEC()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_52_1();
  v5 = *(v2 + 88);
  swift_getKeyPath();
  OUTLINED_FUNCTION_170();
  swift_getKeyPath();
  OUTLINED_FUNCTION_105();

  if (!v6)
  {
    return 0;
  }

  v3 = [v6 capabilities];

  return (v3 >> 8) & 1;
}

uint64_t sub_2178DC0A4()
{
  v1 = v0;
  OUTLINED_FUNCTION_23_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_52_1();
  v5 = *(v4 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_63_0();
  sub_21796657C();

  if (!v17)
  {
    goto LABEL_7;
  }

  v6 = [v17 capabilities];

  OUTLINED_FUNCTION_34_1();
  v8 = *(v0 + *(v7 + 424));
  if ((sub_21796878C() & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((v6 & 1) == 0)
  {
    v9 = *(v1 + 32);
    if (v9 == 255)
    {
      goto LABEL_7;
    }

    v10 = *(v1 + 24);
    v17 = v10;
    v18 = v9;
    v15 = 0;
    v16 = 3;
    sub_2178BF534(v10, v9);
    sub_2178BF534(v10, v9);
    v11 = static MusicPicker.Reason.== infix(_:_:)(&v17, &v15);
    sub_2178BF424(v15, v16);
    sub_2178BF424(v17, v18);
    sub_2178E3790(v10, v9);
    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_2178D8634();
  v13 = sub_2178E78D0(v12, &unk_28298CA38);

  if ((v13 & 1) == 0)
  {
LABEL_7:
    sub_2178D8648();
    return sub_2178D8744();
  }

  return result;
}

void sub_2178DC24C()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_39_2();
  v7 = *(v6 + 80);
  v8 = sub_21796944C();
  OUTLINED_FUNCTION_48(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_5();
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v12 = sub_21796653C();
  __swift_project_value_buffer(v12, qword_27CB97B00);
  v13 = sub_21796651C();
  v14 = sub_21796939C();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_186();
    v15 = OUTLINED_FUNCTION_88_0();
    v24 = v15;
    *v5 = 136315138;
    if (v3)
    {
      v16 = 1701736260;
    }

    else
    {
      v16 = 0x6C65636E6143;
    }

    if (v3)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    v18 = sub_217957F4C(v16, v17, &v24);

    *(v5 + 4) = v18;
    _os_log_impl(&dword_217846000, v13, v14, "Dismissing MusicPicker from “%s” button tap.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  if (qword_27CB8A378 != -1)
  {
    swift_once();
  }

  sub_2178CC26C();
  if (v3)
  {
    if (*(v1 + 16) == 1)
    {
      v19 = *(v1 + 40);
      sub_2178D759C();
      OUTLINED_FUNCTION_146();
      sub_21796910C();
      OUTLINED_FUNCTION_219();

      sub_2178D7524();
    }

    else
    {
      sub_2178D759C();
      OUTLINED_FUNCTION_234(v21);
      OUTLINED_FUNCTION_8_7();
      swift_getWitnessTable();
      sub_21796931C();

      sub_2178D7398();
    }

    sub_2178DC530();
    sub_2178D759C();
    OUTLINED_FUNCTION_234(v22);
    OUTLINED_FUNCTION_8_7();
    swift_getWitnessTable();
    v23 = sub_21796932C();

    if (v23)
    {
      if ((v5 & 1) == 0)
      {
        sub_2178D7348();
      }
    }

    else
    {
      sub_2178DC658();
    }

    goto LABEL_25;
  }

  if (v5)
  {
LABEL_25:
    OUTLINED_FUNCTION_80();
    return;
  }

  OUTLINED_FUNCTION_80();

  sub_2178D7348();
}

void sub_2178DC530()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {
    if (*(v0 + 32))
    {
      return;
    }

    v2 = *(*v0 + 536);
    swift_beginAccess();
    v3 = *(v0 + v2);
    sub_2178BF534(v1, 0);

    sub_217965BAC();

    v4 = v1;
    v5 = 0;
    goto LABEL_6;
  }

  if (v1)
  {
    v6 = *(*v0 + 536);
    swift_beginAccess();
    v7 = *(v0 + v6);
    sub_2178BF534(v1, 1u);

    sub_217965BAC();

    v4 = v1;
    v5 = 1;
LABEL_6:
    sub_2178E3790(v4, v5);
    return;
  }

  sub_2178BF548(0, 1u);
}

void sub_2178DC658()
{
  OUTLINED_FUNCTION_81();
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_45_0();
  v49 = v6;
  OUTLINED_FUNCTION_222();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_222();
  v10 = *(v9 + 88);
  OUTLINED_FUNCTION_176();
  _s9ViewModelCMa();
  v11 = sub_2179687DC();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v18 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_222();
  v20 = *(v19 + 520);
  if (*(v0 + v20))
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31();
    }

    v21 = sub_21796653C();
    __swift_project_value_buffer(v21, qword_27CB97B00);
    v49 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v49, v22))
    {
      v23 = OUTLINED_FUNCTION_156();
      *v23 = 0;
      _os_log_impl(&dword_217846000, v49, v14, "Skipping completion task because it is already running.", v23, 2u);
      OUTLINED_FUNCTION_73();
    }

    OUTLINED_FUNCTION_80();
  }

  else
  {
    *(v0 + v20) = 1;

    sub_2179687EC();
    v26 = objc_opt_self();
    v27 = *(v14 + 16);
    v28 = OUTLINED_FUNCTION_120();
    v29(v28);
    v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v8;
    *(v31 + 24) = v10;
    (*(v14 + 32))(v31 + v30, v18, v11);
    v50[4] = sub_2178EB934;
    v50[5] = v31;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 1107296256;
    v50[2] = sub_2178DCDF8;
    v50[3] = &block_descriptor_2;
    v32 = _Block_copy(v50);

    v33 = [v26 scheduledTimerWithTimeInterval:0 repeats:v32 block:0.3];
    _Block_release(v32);
    OUTLINED_FUNCTION_39_2();
    v35 = *(v34 + 528);
    v36 = *(v0 + v35);
    *(v0 + v35) = v33;

    sub_21796923C();
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    OUTLINED_FUNCTION_27_2();
    v41 = swift_allocObject();
    swift_weakInit();
    sub_21796920C();
    OUTLINED_FUNCTION_123();

    v42 = sub_2179691FC();
    OUTLINED_FUNCTION_92_0();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    v43[2] = v42;
    v43[3] = v44;
    v43[4] = v8;
    v43[5] = v10;
    v43[6] = v41;

    OUTLINED_FUNCTION_50_2();
    sub_2178D2328();

    v45 = *(v14 + 8);
    v46 = OUTLINED_FUNCTION_181();
    v47(v46);
    OUTLINED_FUNCTION_80();
  }
}

uint64_t sub_2178DCA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa();
  v7 = sub_2179687DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a2, v7);
  v17 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  (*(v8 + 32))(&v18[v17], v11, v7);
  sub_2178D207C();
}

uint64_t sub_2178DCC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2178DCC5C, 0, 0);
}

uint64_t sub_2178DCC5C()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_95_0();
  sub_2179687DC();
  v4 = sub_2179687CC();
  v0[5] = v4;
  if (v4)
  {
    sub_21796920C();

    v0[6] = sub_2179691FC();
    OUTLINED_FUNCTION_75_1();
    sub_2179691BC();
    OUTLINED_FUNCTION_109();
    v5 = OUTLINED_FUNCTION_31_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_39();

    return v8();
  }
}

uint64_t sub_2178DCD38()
{
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  sub_2178DD5CC();

  v3 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2178DCDA0()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_39();

  return v2();
}

void sub_2178DCDF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2178DCE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21796920C();
  v4[7] = sub_2179691FC();
  v6 = sub_2179691BC();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2178DCEF8, v6, v5);
}

uint64_t sub_2178DCEF8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_77_0(v2);

    return sub_2178DD150();
  }

  else
  {
    v4 = v0[7];

    OUTLINED_FUNCTION_25_1();

    return v5();
  }
}

uint64_t sub_2178DCFC8()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_206();
  v2 = v0[11];
  v3 = v0[10];
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_217();
  v7 = *(v6 + 72);
  v8 = v0[8];

  return MEMORY[0x2822009F8](sub_2178DD0F8, v8, v7);
}

uint64_t sub_2178DD0F8()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_25_1();

  return v2();
}

uint64_t sub_2178DD150()
{
  OUTLINED_FUNCTION_62();
  v1[2] = v0;
  sub_21796920C();
  v1[3] = OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_75_1();
  v3 = sub_2179691BC();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2178DD1D8, v3, v2);
}

uint64_t sub_2178DD1D8()
{
  OUTLINED_FUNCTION_69_1();
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v1 = sub_21796653C();
  v0[6] = __swift_project_value_buffer(v1, qword_27CB97B00);
  v2 = sub_21796651C();
  sub_21796939C();
  OUTLINED_FUNCTION_122();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_148(v4);
    OUTLINED_FUNCTION_130(&dword_217846000, v5, v6, "Calling MusicPicker completion handler.");
    OUTLINED_FUNCTION_87_1();
  }

  v7 = v0[2];

  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  sub_2178D759C();
  v11 = v10;
  v0[7] = v10;
  v17 = (v8 + *v8);
  v12 = v8[1];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_115(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_77_0(v14);

  return v17(v11);
}

uint64_t sub_2178DD354()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_206();
  v2 = v0[8];
  v3 = v0[7];
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_217();
  v7 = *(v6 + 40);
  v8 = v0[4];

  return MEMORY[0x2822009F8](sub_2178DD484, v8, v7);
}

uint64_t sub_2178DD484()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[6];
  v2 = v0[3];

  v3 = sub_21796651C();
  sub_21796939C();
  OUTLINED_FUNCTION_122();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_156();
    OUTLINED_FUNCTION_148(v5);
    OUTLINED_FUNCTION_131(&dword_217846000, v6, v7, "Completed MusicPicker completion handler.");
    OUTLINED_FUNCTION_87_1();
  }

  v8 = v0[2];

  OUTLINED_FUNCTION_34_1();
  *(v8 + *(v9 + 520)) = 0;
  OUTLINED_FUNCTION_34_1();
  v11 = *(v10 + 528);
  v12 = *(v8 + v11);
  if (v12)
  {
    [v12 invalidate];
    v13 = *(v8 + v11);
    *(v8 + v11) = 0;
  }

  v14 = v0[2];
  if (sub_2178D72FC())
  {
    v15 = v0[6];
    v16 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_148(v18);
      OUTLINED_FUNCTION_130(&dword_217846000, v19, v20, "MusicPicker completed. Setting isPresented to false");
      OUTLINED_FUNCTION_87_1();
    }

    v21 = v0[2];

    sub_2178D7348();
  }

  OUTLINED_FUNCTION_39();

  return v22();
}

void sub_2178DD5CC()
{
  OUTLINED_FUNCTION_39_2();
  v2 = *(v1 + 528);
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;

  OUTLINED_FUNCTION_39_2();
  if (*(v0 + *(v4 + 520)) == 1)
  {

    sub_2178DA6EC();
  }

  else
  {

    sub_2178D7348();
  }
}

void sub_2178DD648()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  OUTLINED_FUNCTION_48(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v10 = sub_21796859C();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v16 = *(v1 + 32);
  if (v16 != 255)
  {
    v63 = v3;
    v66 = v9;
    v17 = *(v1 + 24);
    sub_21796860C();
    v65 = v17;
    sub_2178BF548(v17, v16);
    v67 = sub_2179685FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA58, &qword_21796E5D0);
    v64 = v16;
    v18 = sub_21796858C();
    OUTLINED_FUNCTION_2(v18);
    v20 = v19;
    v22 = *(v21 + 72);
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21796E3A0;
    v25 = v24 + v23;
    v26 = *(v20 + 104);
    v26(v25, *MEMORY[0x277D2AF58], v18);
    v26(v25 + v22, *MEMORY[0x277D2AF40], v18);
    v26(v25 + 2 * v22, *MEMORY[0x277D2AF38], v18);
    v26(v25 + 3 * v22, *MEMORY[0x277D2AF68], v18);
    v68 = MEMORY[0x277D84F90];
    sub_2178EBD10(&qword_27CB8CA60, MEMORY[0x277D2B058]);
    v27 = OUTLINED_FUNCTION_145();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_146();
    sub_217864B2C(v29, v30, v31);
    sub_2179694BC();
    sub_2179685EC();

    v32 = *(v13 + 8);
    v33 = OUTLINED_FUNCTION_144();
    v34(v33);
    sub_2178D8620();
    if (sub_2178DA794())
    {
      v35 = sub_21796923C();
      v36 = OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
      OUTLINED_FUNCTION_27_2();
      v39 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_116();
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      v41 = v63;
      v42 = *(v63 + 80);
      *(v40 + 32) = v42;
      v43 = *(v41 + 88);
      v44 = v65;
      *(v40 + 40) = v43;
      *(v40 + 48) = v44;
      v45 = v64;
      *(v40 + 56) = v64;
      *(v40 + 64) = v39;
      sub_2178BF548(v44, v45);
      OUTLINED_FUNCTION_50_2();
      sub_2178D207C();

      v46 = OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v35);
      OUTLINED_FUNCTION_27_2();
      v49 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_92_0();
      v50 = swift_allocObject();
      v51 = OUTLINED_FUNCTION_213(v50);
      v51[4] = v42;
      v51[5] = v43;
      v51[6] = v49;
      OUTLINED_FUNCTION_50_2();
      sub_2178D2328();

      v52 = OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v35);
      OUTLINED_FUNCTION_27_2();
      v55 = swift_allocObject();
      OUTLINED_FUNCTION_74_1(v55);
      swift_weakInit();
    }

    else
    {
      v35 = v1;
      sub_2178DB500();
      v42 = *(v63 + 80);
      v43 = *(v63 + 88);
      sub_21796923C();
      v56 = OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
      OUTLINED_FUNCTION_27_2();
      v60 = swift_allocObject();
      OUTLINED_FUNCTION_74_1(v60);
      swift_weakInit();
      v45 = v64;
      v44 = v65;
    }

    OUTLINED_FUNCTION_92_0();
    v61 = swift_allocObject();
    v62 = OUTLINED_FUNCTION_213(v61);
    v62[4] = v42;
    v62[5] = v43;
    v62[6] = v35;
    sub_2178D2328();
    sub_2178E3790(v44, v45);
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178DDBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  return MEMORY[0x2822009F8](sub_2178DDBC8, 0, 0);
}

uint64_t sub_2178DDBC8()
{
  OUTLINED_FUNCTION_62();
  if (*(v0 + 80) > 1u)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 40);
  }

  *(v0 + 56) = v1;
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_43_1();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_77_0(v4);

    return sub_2178DDE2C(v1);
  }

  else
  {
    v6 = *(v0 + 56);

    OUTLINED_FUNCTION_39();

    return v7();
  }
}

uint64_t sub_2178DDCD4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2178DDDD4()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_39();

  return v2();
}

uint64_t sub_2178DDE2C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_217965B1C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_217965AFC();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  sub_21796920C();
  v2[13] = sub_2179691FC();
  v11 = sub_2179691BC();
  v2[14] = v11;
  v2[15] = v10;

  return MEMORY[0x2822009F8](sub_2178DDFDC, v11, v10);
}

uint64_t sub_2178DDFDC()
{
  OUTLINED_FUNCTION_138();
  if (*(v0 + 24))
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 32);
    v3 = *(v0 + 24);

    sub_2178D64C4();
LABEL_6:

LABEL_7:
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);

    OUTLINED_FUNCTION_39();

    return v12();
  }

  v4 = *(v0 + 32);
  v5 = *(v4 + 24);
  *(v0 + 128) = v5;
  v6 = *(v4 + 32);
  *(v0 + 168) = v6;
  if (v6 == 255 || (v7 = *(*v4 + 472), *(v0 + 136) = v7, (*(v4 + v7) & 1) != 0))
  {
    v8 = *(v0 + 104);
    goto LABEL_6;
  }

  sub_2178BF548(v5, v6);
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v14 = sub_21796653C();
  *(v0 + 144) = __swift_project_value_buffer(v14, qword_27CB97B00);
  v15 = sub_21796651C();
  v16 = sub_21796939C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_156();
    *v17 = 0;
    _os_log_impl(&dword_217846000, v15, v16, "Fetching suggested songs.", v17, 2u);
    OUTLINED_FUNCTION_73();
  }

  v18 = *(v0 + 96);
  v20 = *(v0 + 32);
  v19 = *(v0 + 40);

  sub_21791A5E4(*(v20 + 40), 20, 0, *(v19 + 80), *(v19 + 88), v18);
  v21 = *(sub_217965ADC() + 16);

  if (!v21)
  {
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 80);
    v30 = *(v0 + 88);
    v31 = *(v0 + 72);
    v32 = *(v0 + 32);

    sub_2179688CC();
    sub_2179680AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
    v33 = OUTLINED_FUNCTION_36_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    sub_2178D8540();
    sub_2178E3790(v5, v6);
    v37 = *(v30 + 8);
    v38 = OUTLINED_FUNCTION_93_0();
    v39(v38);
    goto LABEL_7;
  }

  *(v4 + v7) = 1;
  v22 = *(MEMORY[0x277D2A640] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_46_1();
  *(v0 + 152) = v23;
  *v23 = v24;
  v23[1] = sub_2178DE2CC;
  v25 = *(v0 + 96);
  v26 = *(v0 + 64);

  return MEMORY[0x282189758](v26);
}

uint64_t sub_2178DE2CC()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  v5 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_139();
  v7 = *(v6 + 120);
  v8 = *(v1 + 112);
  if (v0)
  {
    v9 = sub_2178DE500;
  }

  else
  {
    v9 = sub_2178DE3F4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2178DE3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_101();
  v15 = *(v14 + 128);
  v16 = *(v14 + 136);
  v17 = *(v14 + 104);
  v18 = *(v14 + 88);
  v41 = *(v14 + 80);
  v42 = *(v14 + 96);
  v20 = *(v14 + 64);
  v19 = *(v14 + 72);
  v22 = *(v14 + 48);
  v21 = *(v14 + 56);
  v23 = *(v14 + 32);
  v24 = *(v14 + 168);

  *(v23 + v16) = 0;
  sub_217965B0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_2178D8540();
  sub_2178E3790(v15, v24);
  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v42, v41);
  v29 = *(v14 + 96);
  v30 = *(v14 + 64);
  v31 = *(v14 + 72);

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, a12, a13, a14);
}

uint64_t sub_2178DE500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_127();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_138();
  a18 = v20;
  v24 = *(v20 + 160);
  v26 = *(v20 + 136);
  v25 = *(v20 + 144);
  v28 = *(v20 + 96);
  v27 = *(v20 + 104);
  v29 = *(v20 + 80);
  v30 = *(v20 + 88);
  v31 = *(v20 + 72);
  v32 = *(v20 + 32);

  v33 = *(v30 + 8);
  v34 = OUTLINED_FUNCTION_143();
  v35(v34);
  *(v32 + v26) = 0;
  sub_2179688CC();
  sub_2179680AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_62_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  sub_2178D8540();
  v40 = v24;
  v41 = sub_21796651C();
  sub_21796937C();
  OUTLINED_FUNCTION_190();
  if (OUTLINED_FUNCTION_189())
  {
    v42 = *(v20 + 160);
    v43 = *(v20 + 128);
    v44 = *(v20 + 168);
    OUTLINED_FUNCTION_186();
    a9 = OUTLINED_FUNCTION_88_0();
    *v28 = 136446210;
    *(v20 + 16) = v42;
    v45 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v46 = OUTLINED_FUNCTION_193();
    sub_217957F4C(v46, v47, &a9);
    OUTLINED_FUNCTION_187();
    *(v28 + 4) = v21;
    OUTLINED_FUNCTION_57_2(&dword_217846000, v48, v49, "Failed to fetch suggested songs. Error = %{public}s");
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_104();
    sub_2178E3790(v43, v44);
  }

  else
  {
    v50 = *(v20 + 160);
    sub_2178E3790(*(v20 + 128), *(v20 + 168));
  }

  v51 = *(v20 + 96);
  v52 = *(v20 + 64);
  v53 = *(v20 + 72);

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_102();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
}

uint64_t sub_2178DE6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178DE6F0, 0, 0);
}

uint64_t sub_2178DE6F0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178DE7B4();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178DE7B4()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAB8, &qword_21796E690) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAC0, &qword_21796E698);
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_2179659BC();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAC8, &qword_21796E6A0);
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  sub_21796920C();
  v1[14] = sub_2179691FC();
  v13 = sub_2179691BC();
  v1[15] = v13;
  v1[16] = v12;

  return MEMORY[0x2822009F8](sub_2178DE9B0, v13, v12);
}

uint64_t sub_2178DE9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v13 = v12[3];
  v14 = *(*v13 + 496);
  v12[17] = v14;
  if (*(v13 + v14))
  {
    v15 = v12[14];

    OUTLINED_FUNCTION_126();

    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_102();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  else
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31();
    }

    v25 = sub_21796653C();
    v12[18] = __swift_project_value_buffer(v25, qword_27CB97B00);
    v26 = sub_21796651C();
    v27 = sub_21796939C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_156();
      *v28 = 0;
      _os_log_impl(&dword_217846000, v26, v27, "Fetching recently favorited songs.", v28, 2u);
      OUTLINED_FUNCTION_73();
    }

    v29 = v12[13];
    v31 = v12[10];
    v30 = v12[11];
    v32 = v12[8];
    v33 = v12[9];

    sub_2179688CC();
    sub_21796820C();
    swift_getKeyPath();
    (*(v33 + 104))(v31, *MEMORY[0x277D2A4B0], v32);
    sub_2178EBD10(&qword_27CB8CAD0, MEMORY[0x277D2A4B8]);
    OUTLINED_FUNCTION_181();
    sub_21796816C();

    v34 = *(v33 + 8);
    v35 = OUTLINED_FUNCTION_118();
    v36(v35);
    swift_getKeyPath();
    sub_21796815C();

    sub_21796819C();
    sub_2179681CC();
    *(v13 + v14) = 1;
    v37 = *(MEMORY[0x277CD7CF0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_46_1();
    v12[19] = v38;
    *v38 = v39;
    v38[1] = sub_2178DEC70;
    v40 = v12[13];
    v41 = v12[11];
    v42 = v12[7];
    OUTLINED_FUNCTION_102();

    return MEMORY[0x282124698](v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }
}

uint64_t sub_2178DEC70()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  v5 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_139();
  v7 = *(v6 + 128);
  v8 = *(v1 + 120);
  if (v0)
  {
    v9 = sub_2178DEE9C;
  }

  else
  {
    v9 = sub_2178DED98;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2178DED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v13 = v12[17];
  v15 = v12[13];
  v14 = v12[14];
  v16 = v12[11];
  v17 = v12[12];
  v19 = v12[6];
  v18 = v12[7];
  v21 = v12[4];
  v20 = v12[5];
  v22 = v12[3];

  *(v22 + v13) = 0;
  v23 = *(v19 + 16);
  v24 = OUTLINED_FUNCTION_143();
  v25(v24);
  v26 = OUTLINED_FUNCTION_36_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
  sub_2178E37F4(v21);
  sub_2178BE050(v21, &qword_27CB8CAB8, &qword_21796E690);
  v29 = *(v19 + 8);
  v30 = OUTLINED_FUNCTION_93_0();
  v31(v30);
  v32 = *(v17 + 8);
  v33 = OUTLINED_FUNCTION_68_2();
  v34(v33);
  OUTLINED_FUNCTION_126();

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_102();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_2178DEFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178DF018, 0, 0);
}

uint64_t sub_2178DF018()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178DF0DC();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178DF0DC()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B098, &qword_21796B750);
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = sub_217968E3C();
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA78, &qword_21796E638);
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA80, &qword_21796E640);
  v1[17] = v12;
  v13 = *(v12 - 8);
  v1[18] = v13;
  v14 = *(v13 + 64) + 15;
  v1[19] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA88, &qword_21796E648) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v16 = sub_217965D9C();
  v1[21] = v16;
  v17 = *(v16 - 8);
  v1[22] = v17;
  v18 = *(v17 + 64) + 15;
  v1[23] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA90, &qword_21796E650);
  v1[24] = v19;
  v20 = *(v19 - 8);
  v1[25] = v20;
  v21 = *(v20 + 64) + 15;
  v1[26] = swift_task_alloc();
  v22 = sub_217965A5C();
  v1[27] = v22;
  v23 = *(v22 - 8);
  v1[28] = v23;
  v24 = *(v23 + 64) + 15;
  v1[29] = swift_task_alloc();
  v25 = sub_2179659EC();
  v1[30] = v25;
  v26 = *(v25 - 8);
  v1[31] = v26;
  v27 = *(v26 + 64) + 15;
  v1[32] = swift_task_alloc();
  sub_21796920C();
  v1[33] = sub_2179691FC();
  v29 = sub_2179691BC();
  v1[34] = v29;
  v1[35] = v28;

  return MEMORY[0x2822009F8](sub_2178DF500, v29, v28);
}

uint64_t sub_2178DF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_138();
  v13 = v12[5];
  v14 = *(*v13 + 480);
  v12[36] = v14;
  if (*(v13 + v14))
  {
    v15 = v12[33];

    OUTLINED_FUNCTION_10_6();
    v46 = v16;

    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_102();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, v46, a10, a11, a12);
  }

  else
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31();
    }

    v26 = sub_21796653C();
    v12[37] = __swift_project_value_buffer(v26, qword_27CB97B00);
    v27 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_148(v29);
      OUTLINED_FUNCTION_131(&dword_217846000, v30, v31, "Fetching recent replay playlist's songs.");
      OUTLINED_FUNCTION_87_1();
    }

    v32 = v12[32];

    sub_2179659DC();
    *(v13 + v14) = 1;
    v33 = *(MEMORY[0x277D2A508] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_46_1();
    v12[38] = v34;
    *v34 = v35;
    v34[1] = sub_2178DF6E4;
    v36 = v12[32];
    v37 = v12[29];
    OUTLINED_FUNCTION_102();

    return MEMORY[0x2821894F8](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }
}

uint64_t sub_2178DF6E4()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  v5 = *(v1 + 304);
  *v4 = *v2;
  *(v3 + 312) = v0;

  OUTLINED_FUNCTION_139();
  v7 = *(v6 + 280);
  v8 = *(v1 + 272);
  if (v0)
  {
    v9 = sub_2178DFECC;
  }

  else
  {
    v9 = sub_2178DF80C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2178DF80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_101();
  v15 = v14[39];
  v16 = v14[29];
  v18 = v14[25];
  v17 = v14[26];
  v19 = v14[24];
  v21 = v14[20];
  v20 = v14[21];
  sub_217965A4C();
  v22 = sub_2178E4748(v17);
  (*(v18 + 8))(v17, v19);
  sub_2178D2A00(v22, v21);

  OUTLINED_FUNCTION_24_3(v21, 1, v20);
  if (v23)
  {
    v24 = v14[33];
    v25 = v14[20];

    sub_2178BE050(v25, &qword_27CB8CA88, &qword_21796E648);
  }

  else
  {
    (*(v14[22] + 32))(v14[23], v14[20], v14[21]);
    v26 = sub_217965D7C();
    if (v27)
    {
      v28 = v26;
      v29 = v27;
      v30 = v14[19];
      v31 = v14[17];
      v32 = v14[11];
      swift_getKeyPath();
      v14[2] = v28;
      v14[3] = v29;
      OUTLINED_FUNCTION_82_1();
      sub_2178EBD10(v33, v34);
      sub_21796837C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
      OUTLINED_FUNCTION_137();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_21796E3B0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAA0, &qword_217970040);
      *(v35 + 32) = sub_21796800C();
      OUTLINED_FUNCTION_140();
      sub_21796836C();
      v36 = *(MEMORY[0x277CD7DA0] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_46_1();
      v14[40] = v37;
      *v37 = v38;
      v37[1] = sub_2178DFB20;
      v39 = v14[19];
      v40 = v14[16];
      v41 = v14[17];
      OUTLINED_FUNCTION_78_0();

      return MEMORY[0x282124780](v42, v43);
    }

    v45 = v14[33];
    (*(v14[22] + 8))(v14[23], v14[21]);
  }

  v47 = v14[31];
  v46 = v14[32];
  v49 = v14[29];
  v48 = v14[30];
  v50 = v14[27];
  v51 = v14[28];
  *(v14[5] + v14[36]) = 0;
  sub_2178DA614(1);
  v52 = *(v51 + 8);
  v53 = OUTLINED_FUNCTION_93_0();
  v54(v53);
  v55 = *(v47 + 8);
  v56 = OUTLINED_FUNCTION_68_2();
  v57(v56);
  OUTLINED_FUNCTION_10_6();
  v68 = v58;

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, v68, a11, a12, a13, a14);
}

uint64_t sub_2178DFB20()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  v5 = *(v1 + 320);
  *v4 = *v2;
  *(v3 + 328) = v0;

  OUTLINED_FUNCTION_139();
  v7 = *(v6 + 280);
  v8 = *(v1 + 272);
  if (v0)
  {
    v9 = sub_2178E005C;
  }

  else
  {
    v9 = sub_2178DFC48;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2178DFC48()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[5];

  *(v10 + v1) = 0;
  sub_2179683AC();
  sub_21793684C(v9);
  v11 = *(v8 + 8);
  v12 = OUTLINED_FUNCTION_93_0();
  v13(v12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v5);
  v15 = v0[31];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[22];
  v51 = v0[23];
  v52 = v0[27];
  v19 = v0[18];
  v49 = v0[19];
  v50 = v0[21];
  v47 = v0[16];
  v48 = v0[17];
  v20 = v0[15];
  v46 = v0[14];
  if (EnumTagSinglePayload == 1)
  {
    v21 = v0[5];
    sub_2178BE050(v0[7], qword_27CB8AC48, &unk_21796FF10);
    sub_2178DA614(1);
  }

  else
  {
    v44 = v0[30];
    v45 = v0[32];
    v22 = v0[12];
    v23 = v0[13];
    v43 = v0[29];
    v24 = v0[11];
    v26 = v0[6];
    v25 = v0[7];
    v42 = v0[5];
    OUTLINED_FUNCTION_208();
    v27(v23);
    v28 = *(v22 + 16);
    v29 = OUTLINED_FUNCTION_57_0();
    v30(v29);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v24);
    sub_2178D97F8();
    v34 = *(v22 + 8);
    v35 = OUTLINED_FUNCTION_93_0();
    v16 = v43;
    v36(v35);
  }

  (*(v20 + 8))(v47, v46);
  (*(v19 + 8))(v49, v48);
  (*(v18 + 8))(v51, v50);
  (*(v17 + 8))(v16, v52);
  v37 = *(v15 + 8);
  v38 = OUTLINED_FUNCTION_118();
  v39(v38);
  OUTLINED_FUNCTION_10_6();

  OUTLINED_FUNCTION_39();

  return v40();
}

uint64_t sub_2178DFECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_101();
  v17 = v14[33];

  v18 = v14[39];
  OUTLINED_FUNCTION_235();
  v19 = sub_21796651C();
  sub_21796937C();
  OUTLINED_FUNCTION_190();
  if (OUTLINED_FUNCTION_189())
  {
    v20 = v14[31];
    v44 = v14[32];
    v21 = v14[30];
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_165();
    OUTLINED_FUNCTION_231(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v22 = OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_202(v22, v23, v24, v25);
    OUTLINED_FUNCTION_187();
    *(v15 + 4) = v16;
    OUTLINED_FUNCTION_57_2(&dword_217846000, v26, v27, "Failed to fetch recent replay playlist's songs. Error = %{public}s");
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_104();

    (*(v20 + 8))(v44, v21);
  }

  else
  {
    v29 = v14[31];
    v28 = v14[32];
    v30 = v14[30];

    v31 = *(v29 + 8);
    v32 = OUTLINED_FUNCTION_118();
    v33(v32);
  }

  OUTLINED_FUNCTION_10_6();
  v45 = v34;

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v45, a11, a12, a13, a14);
}

uint64_t sub_2178E005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_101();
  v15 = v14[33];
  v17 = v14[28];
  v16 = v14[29];
  v18 = v14[27];
  v20 = v14[22];
  v19 = v14[23];
  v21 = v14[21];
  v23 = v14[18];
  v22 = v14[19];
  v24 = v14[17];

  v26 = *(v23 + 8);
  v25 = v23 + 8;
  v27 = OUTLINED_FUNCTION_111();
  v28(v27);
  v29 = *(v20 + 8);
  v30 = OUTLINED_FUNCTION_118();
  v31(v30);
  (*(v17 + 8))(v16, v18);
  v32 = v14[41];
  OUTLINED_FUNCTION_235();
  v33 = sub_21796651C();
  sub_21796937C();
  OUTLINED_FUNCTION_190();
  if (OUTLINED_FUNCTION_189())
  {
    v34 = v14[31];
    v58 = v14[32];
    v35 = v14[30];
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_165();
    OUTLINED_FUNCTION_231(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v36 = OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_202(v36, v37, v38, v39);
    OUTLINED_FUNCTION_187();
    *(v24 + 4) = v25;
    OUTLINED_FUNCTION_57_2(&dword_217846000, v40, v41, "Failed to fetch recent replay playlist's songs. Error = %{public}s");
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_104();

    (*(v34 + 8))(v58, v35);
  }

  else
  {
    v43 = v14[31];
    v42 = v14[32];
    v44 = v14[30];

    v45 = *(v43 + 8);
    v46 = OUTLINED_FUNCTION_118();
    v47(v46);
  }

  OUTLINED_FUNCTION_10_6();
  v59 = v48;

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, v59, a11, a12, a13, a14);
}

uint64_t sub_2178E0244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178E0264, 0, 0);
}

uint64_t sub_2178E0264()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178DDE2C(0);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178E032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2178E034C, 0, 0);
}

uint64_t sub_2178E034C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_115(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_77_0(v3);

    return sub_2178E0410();
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178E0410()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAC0, &qword_21796E698);
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAC8, &qword_21796E6A0);
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_21796920C();
  v1[12] = sub_2179691FC();
  v10 = sub_2179691BC();
  v1[13] = v10;
  v1[14] = v9;

  return MEMORY[0x2822009F8](sub_2178E05B0, v10, v9);
}

uint64_t sub_2178E05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  v13 = v12[4];
  OUTLINED_FUNCTION_223();
  v15 = *(v14 + 488);
  v12[15] = v15;
  if (*(v13 + v15))
  {
    v16 = v12[12];

    OUTLINED_FUNCTION_172();
    v17 = v12[5];

    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_195();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    if (qword_27CB8A480 != -1)
    {
      OUTLINED_FUNCTION_31();
    }

    v27 = sub_21796653C();
    v12[16] = __swift_project_value_buffer(v27, qword_27CB97B00);
    v28 = sub_21796651C();
    sub_21796939C();
    OUTLINED_FUNCTION_122();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_148(v30);
      OUTLINED_FUNCTION_130(&dword_217846000, v31, v32, "Fetching recently played songs from library.");
      OUTLINED_FUNCTION_87_1();
    }

    v33 = v12[11];
    v34 = v12[9];

    v12[17] = sub_2179688CC();
    sub_21796820C();
    swift_getKeyPath();
    sub_2179681BC();

    sub_2179681CC();
    *(v13 + v15) = 1;
    v35 = *(MEMORY[0x277CD7CF0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_46_1();
    v12[18] = v36;
    *v36 = v37;
    v36[1] = sub_2178E0798;
    v38 = v12[11];
    v39 = v12[8];
    v40 = v12[9];
    OUTLINED_FUNCTION_195();

    return MEMORY[0x282124698](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }
}

uint64_t sub_2178E0798()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_139();
  v7 = *(v6 + 112);
  v8 = *(v1 + 104);
  if (v0)
  {
    v9 = sub_2178E0A6C;
  }

  else
  {
    v9 = sub_2178E08C0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2178E08C0()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];
  v21 = v0[9];
  v22 = v0[11];
  v5 = v0[7];
  v6 = v0[5];
  v19 = v0[6];
  v20 = v0[8];
  v7 = v0[4];

  *(v7 + v2) = 0;
  v0[3] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB00, &qword_21796E770);
  OUTLINED_FUNCTION_85_0();
  sub_217864B2C(v8, &qword_27CB8CB00, &qword_21796E770);
  sub_21796811C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v10 = OUTLINED_FUNCTION_36_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  sub_2178D85E8();
  sub_21796823C();
  v13 = OUTLINED_FUNCTION_36_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  sub_2178D85B0();
  (*(v5 + 8))(v20, v19);
  (*(v4 + 8))(v22, v21);
  OUTLINED_FUNCTION_172();
  v16 = v0[5];

  OUTLINED_FUNCTION_39();

  return v17();
}

void sub_2178E0BC8()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_222();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_185();
  v6 = sub_21796944C();
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70_0();
  v12 = *(*(v3 + 88) + 48);
  v13 = *(v2 + 8);
  v14 = OUTLINED_FUNCTION_51_0();
  v15(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA30, &qword_21796E5C0);
  v16 = (v8 + 8);
  if (swift_dynamicCast())
  {
    v17 = OUTLINED_FUNCTION_36_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v5);
    v20 = *v16;
    v21 = OUTLINED_FUNCTION_120();
    v22(v21);
    if (sub_2178DA794())
    {
      goto LABEL_6;
    }

    v23 = *(v2 + 144);
    v24 = OUTLINED_FUNCTION_28_1();
    if (v25(v24))
    {
      goto LABEL_6;
    }

    sub_2178DB500();
    if (v26)
    {
      OUTLINED_FUNCTION_28_1();
      sub_217938234();
      v27 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      v28 = *(v27 + 152);
      v29 = OUTLINED_FUNCTION_111();
      v31 = v30(v29);
      __swift_destroy_boxed_opaque_existential_1(v48);
      if (v31)
      {
LABEL_6:
        sub_2178DB500();
        if (!v32)
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_28_1();
        sub_217938234();
        v33 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        v34 = *(v33 + 152);
        v35 = OUTLINED_FUNCTION_93_0();
        v37 = v36(v35);
        __swift_destroy_boxed_opaque_existential_1(v48);
        if (v37)
        {
LABEL_8:
          OUTLINED_FUNCTION_28_1();
          sub_217938234();
          v38 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v39 = *(v38 + 136);
          v40 = OUTLINED_FUNCTION_68_2();
          v41(v40);
          __swift_destroy_boxed_opaque_existential_1(v48);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v5);
    v45 = *v16;
    v46 = OUTLINED_FUNCTION_120();
    v47(v46);
  }

  OUTLINED_FUNCTION_80();
}

void sub_2178E0E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_81();
  a19 = v21;
  a20 = v22;
  v131 = v23;
  v126 = v25;
  v127 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9E0, &qword_21796E520);
  OUTLINED_FUNCTION_48(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_45_0();
  v123 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9C8, &qword_21796E4A8);
  OUTLINED_FUNCTION_2(v31);
  v125 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_45_0();
  v124 = v36;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2(v128);
  v122 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_45_0();
  v121 = v41;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB20, &unk_21796B100);
  v42 = OUTLINED_FUNCTION_3(v120);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_17_5();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_106();
  v130 = sub_217968DFC();
  v49 = OUTLINED_FUNCTION_2(v130);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_88();
  v129 = v54;
  OUTLINED_FUNCTION_84_0();
  v56 = MEMORY[0x28223BE20](v55);
  MEMORY[0x28223BE20](v56);
  v58 = &v116 - v57;
  v132 = sub_21796809C();
  v59 = OUTLINED_FUNCTION_2(v132);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_17_5();
  v64 = (v62 - v63);
  MEMORY[0x28223BE20](v65);
  v68 = &v116 - v67;
  v69 = *(v20 + 32);
  if (v69 > 1)
  {
LABEL_16:
    OUTLINED_FUNCTION_80();
    return;
  }

  v119 = v66;
  v118 = v31;
  v117 = v20;
  v70 = *(v20 + 24);
  sub_2178BF548(v70, v69);
  sub_2178BF548(v70, v69);
  sub_217938234();
  v131 = v68;
  v71 = v133[4];
  OUTLINED_FUNCTION_142();
  v72 = *(v71 + 8);
  sub_2179684BC();
  __swift_destroy_boxed_opaque_existential_1(v133);
  if (!v70)
  {
    v86 = v117;
    OUTLINED_FUNCTION_39_2();
    v88 = *(v87 + 416);
    OUTLINED_FUNCTION_43_1();
    swift_beginAccess();
    v89 = v123;
    sub_2178EBFC4(v86 + v88, v123, &qword_27CB8C9E0);
    OUTLINED_FUNCTION_24_3(v89, 1, v118);
    if (v90)
    {
      OUTLINED_FUNCTION_54(&a18);
      v91(v131, v132);
      sub_2178E3790(v70, v69);
      sub_2178BE050(v89, &qword_27CB8C9E0, &qword_21796E520);
    }

    else
    {
      OUTLINED_FUNCTION_155();
      v92 = *(v125 + 32);
      v93 = OUTLINED_FUNCTION_47_0();
      v94(v93);
      v95 = v121;
      sub_21796823C();
      v96 = v122;
      v97 = *(v122 + 16);
      v98 = OUTLINED_FUNCTION_215();
      v99 = v128;
      v100(v98);
      v101 = *(v120 + 36);
      OUTLINED_FUNCTION_36_0();
      sub_217864B2C(v102, v103, v104);
      OUTLINED_FUNCTION_28_1();
      sub_2179692AC();
      (*(v96 + 8))(v95, v99);
      OUTLINED_FUNCTION_212();
      v127 = v105;
      while (1)
      {
        OUTLINED_FUNCTION_28_1();
        sub_2179692EC();
        if (*(v47 + v101) == v133[0])
        {
          break;
        }

        v106 = sub_21796934C();
        (v51[2])(v129);
        (v106)(v133, 0);
        v107 = sub_2179692FC();
        MEMORY[0x21CEA7D10](v133, v107);
        v108 = *v51;
        v109 = OUTLINED_FUNCTION_181();
        v110(v109);
        OUTLINED_FUNCTION_142();
        OUTLINED_FUNCTION_47_0();
        sub_2179684BC();
        LOBYTE(v106) = sub_21796805C();
        v111 = *v127;
        (*v127)(v64, v132);
        __swift_destroy_boxed_opaque_existential_1(v133);
        if (v106)
        {
          OUTLINED_FUNCTION_103();
          sub_2178BE050(v47, &qword_27CB8AB20, &unk_21796B100);
          v112 = OUTLINED_FUNCTION_211();
          v113(v112);
          v111(v131, v132);
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_103();
      sub_2178BE050(v47, &qword_27CB8AB20, &unk_21796B100);
      v114 = OUTLINED_FUNCTION_211();
      v115(v114);
      (*v127)(v131, v132);
    }

    goto LABEL_16;
  }

  sub_217965B2C();
  v73 = OUTLINED_FUNCTION_123();
  sub_2178E3790(v73, v69);
  OUTLINED_FUNCTION_155();
  v128 = v70;
  v74 = sub_217965D1C();
  v75 = 0;
  v76 = *(v74 + 16);
  v129 = v51 + 2;
  v77 = (v119 + 8);
  while (1)
  {
    if (v76 == v75)
    {

      OUTLINED_FUNCTION_103();
      (*v77)(v131, v132);
      goto LABEL_16;
    }

    if (v75 >= *(v74 + 16))
    {
      break;
    }

    v78 = *(v51 + 80);
    OUTLINED_FUNCTION_133();
    v80 = (v51[2])(v58, v74 + v79 + v51[9] * v75++, v130);
    MEMORY[0x21CEA7D10](v133, v80);
    v81 = v51[1];
    v82 = OUTLINED_FUNCTION_118();
    v83(v82);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_57_0();
    sub_2179684BC();
    v84 = sub_21796805C();
    v85 = *v77;
    (*v77)(v64, v132);
    __swift_destroy_boxed_opaque_existential_1(v133);
    if (v84)
    {
      v85(v131, v132);

      OUTLINED_FUNCTION_103();

      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_2178E1804()
{
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 80);
  v6 = sub_21796944C();
  v7 = OUTLINED_FUNCTION_2(v6);
  v53 = v8;
  v54 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_106();
  v22 = *(v4 + 88);
  v23 = v22[6];
  v24 = *(v3 + 8);
  v25 = OUTLINED_FUNCTION_224();
  v26(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA30, &qword_21796E5C0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v5);
    (*(v15 + 32))(v1, v13, v5);
    sub_2178D759C();
    v31 = v30;
    v56 = sub_2179690DC();
    v32 = (v15 + 8);
    while (1)
    {
      OUTLINED_FUNCTION_177();
      v33 = sub_21796914C();
      v34 = v56;
      if (v56 == v33)
      {
        v47 = *v32;
        v48 = OUTLINED_FUNCTION_182();
        v49(v48);

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_177();
      v35 = sub_21796913C();
      sub_2179690FC();
      if (v35)
      {
        v36 = *(v15 + 80);
        OUTLINED_FUNCTION_133();
        (*(v15 + 16))(v21, v31 + v37 + *(v15 + 72) * v34, v5);
      }

      else
      {
        v43 = sub_21796951C();
        if (v52 != 8)
        {
          __break(1u);
          return;
        }

        v55 = v43;
        (*(v15 + 16))(v21, &v55, v5);
        swift_unknownObjectRelease();
      }

      sub_21796917C();
      v38 = v22[1];
      v39 = *(v22[2] + 8);
      OUTLINED_FUNCTION_93_0();
      v40 = sub_21796848C();
      v41 = *v32;
      v42 = OUTLINED_FUNCTION_141();
      v41(v42);
      if (v40)
      {
        v50 = OUTLINED_FUNCTION_182();
        v41(v50);

        goto LABEL_12;
      }
    }
  }

  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v5);
  (*(v53 + 8))(v13, v54);
LABEL_12:
  OUTLINED_FUNCTION_80();
}

void sub_2178E1B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_81();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v28 = v27;
  LODWORD(v173) = v29;
  v170 = v30;
  v176 = v31;
  v32 = *v20;
  v162 = sub_21796809C();
  v33 = OUTLINED_FUNCTION_3(v162);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v37 - v36);
  OUTLINED_FUNCTION_0_1();
  v169 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_88();
  v168 = v42;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_13_4();
  v167 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA20, &qword_21796E5B8);
  OUTLINED_FUNCTION_48(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v49);
  v50 = sub_217965A7C();
  v51 = OUTLINED_FUNCTION_8_5(v50, &a11);
  v159 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_88();
  v157 = v55;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v56);
  v156[1] = v156 - v57;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_13_4();
  v172 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  OUTLINED_FUNCTION_48(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v64);
  v65 = sub_2179688CC();
  v66 = OUTLINED_FUNCTION_8_5(v65, &a18);
  v171 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_88();
  v158 = v70;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_52(v72);
  v73 = *(v32 + 80);
  OUTLINED_FUNCTION_185();
  v74 = sub_21796944C();
  OUTLINED_FUNCTION_2(v74);
  v76 = v75;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_0_1();
  v81 = v80;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_88();
  v163 = v85;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v86);
  v88 = v156 - v87;
  v89 = *(v32 + 88);
  v90 = *(v89 + 48);
  v175 = v26;
  v91 = *(v26 + 8);
  v92 = v176;
  v161 = v91;
  v90(v178, v176, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA30, &qword_21796E5C0);
  if (swift_dynamicCast())
  {
    v93 = OUTLINED_FUNCTION_36_2();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v73);
    v96 = *(v81 + 32);
    v174 = v73;
    v96(v88, v21, v73);
    if ((sub_2178DA794() & 1) == 0 && ((*(v175 + 144))(v28) & 1) == 0)
    {
      sub_2178DB500();
      if (!v97 || (sub_217938234(), v98 = v179, v99 = v180, __swift_project_boxed_opaque_existential_1(v178, v179), v100 = (*(v99 + 152))(v98, v99), __swift_destroy_boxed_opaque_existential_1(v178), (v100 & 1) == 0))
      {
LABEL_32:
        (*(v81 + 8))(v88, v174);
        goto LABEL_33;
      }
    }

    sub_2178D759C();
    v177[1] = v101;
    sub_2178E1804();
    if (v102)
    {
      v103 = v174;
      if (v173 == 2 || (v173 & 1) != 0)
      {
        LODWORD(v173) = v102;
        v163 = v156;
        MEMORY[0x28223BE20](v102);
        v156[-6] = v103;
        v156[-5] = v28;
        v104 = v175;
        v156[-4] = v89;
        v156[-3] = v104;
        v156[-2] = v88;
        OUTLINED_FUNCTION_185();
        sub_21796919C();
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_21796935C();
LABEL_17:
        v112 = v171;
        v111 = v172;
        v113 = v170;
        sub_2178D75B0();
        if (v113 != 11)
        {
          v114 = *(v89 + 56);
          v115 = v89;
          v116 = v164;
          v114(v174, v115);
          v117 = OUTLINED_FUNCTION_72_1();
          v118 = v166;
          OUTLINED_FUNCTION_24_3(v117, v119, v166);
          if (v120)
          {
            sub_2178BE050(v116, &qword_27CB8CA28, &unk_21796F610);
          }

          else
          {
            v171 = v88;
            v121 = v165;
            (*(v112 + 4))(v165, v116, v118);
            (*(v112 + 2))(v158, v121, v118);
            LOBYTE(v178[0]) = v113;
            sub_2178E8494();
            sub_217965A6C();
            OUTLINED_FUNCTION_223();
            v123 = *(v122 + 536);
            OUTLINED_FUNCTION_43_1();
            swift_beginAccess();
            v124 = v118;
            v125 = *(v24 + v123);

            v126 = sub_2178E2744(v111, v125);

            if (v126)
            {
              OUTLINED_FUNCTION_238();
              OUTLINED_FUNCTION_149(&v181);
              sub_2178E9CE0(v111, v127);
              sub_2178BE050(v126, &qword_27CB8CA20, &qword_21796E5B8);
              swift_endAccess();
              OUTLINED_FUNCTION_54(&a10);
              v128(v111, v160);
              (*(v112 + 1))(v165, v124);
            }

            else
            {
              v129 = v111;
              v130 = v159;
              v131 = v160;
              (*(v159 + 16))(v157, v129, v160);
              OUTLINED_FUNCTION_238();
              OUTLINED_FUNCTION_147(&v179);
              sub_2178E9F54();
              v132 = *(v130 + 8);
              v133 = OUTLINED_FUNCTION_153();
              v132(v133);
              swift_endAccess();
              (v132)(v172, v131);
              (*(v112 + 1))(v165, v166);
            }

            v88 = v171;
          }
        }

        sub_2178DB500();
        if (v134)
        {
          v135 = v92;
          v172 = v81;
          if (qword_27CB8A480 != -1)
          {
            OUTLINED_FUNCTION_31();
          }

          v136 = sub_21796653C();
          __swift_project_value_buffer(v136, qword_27CB97B00);
          v137 = v169;
          v138 = *(v169 + 16);
          v139 = OUTLINED_FUNCTION_183();
          v138(v139);
          (v138)(v168, v135, v28);
          v140 = sub_21796651C();
          v141 = sub_21796939C();
          if (os_log_type_enabled(v140, v141))
          {
            LODWORD(v176) = v173 ^ 1;
            v142 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v177[0] = v173;
            *v142 = 136315650;
            v170 = v141;
            sub_2179684BC();
            v143 = sub_217968F8C();
            v145 = v144;
            v171 = v88;
            v146 = *(v137 + 8);
            v147 = OUTLINED_FUNCTION_182();
            v146(v147);
            sub_217957F4C(v143, v145, v177);
            OUTLINED_FUNCTION_123();

            *(v142 + 4) = v143;
            *(v142 + 12) = 1024;
            sub_217938234();
            v148 = v180;
            __swift_project_boxed_opaque_existential_1(v178, v179);
            v149 = *(v148 + 152);
            v150 = OUTLINED_FUNCTION_123();
            LOBYTE(v143) = v151(v150, v148);
            __swift_destroy_boxed_opaque_existential_1(v178);
            v152 = OUTLINED_FUNCTION_177();
            v146(v152);
            v88 = v171;
            *(v142 + 14) = v143 & 1;
            *(v142 + 18) = 1024;
            *(v142 + 20) = v176 & 1;
            _os_log_impl(&dword_217846000, v140, v170, "Toggling selection of item with [identifierSet]=%s [isCollaborativePlaylistAddable]=%{BOOL}d [isAdding]=%{BOOL}d.", v142, 0x18u);
            __swift_destroy_boxed_opaque_existential_1(v173);
            OUTLINED_FUNCTION_73();
            OUTLINED_FUNCTION_73();
          }

          else
          {
            v153 = *(v137 + 8);
            v154 = OUTLINED_FUNCTION_177();
            v153(v154);

            v155 = OUTLINED_FUNCTION_182();
            v153(v155);
          }

          v81 = v172;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v103 = v174;
      if (v173 == 2 || (v173 & 1) == 0)
      {
        LODWORD(v173) = v102;
        if ((v24[2] & 1) == 0)
        {
          OUTLINED_FUNCTION_185();
          sub_21796919C();
          sub_21796918C();
          v103 = v174;
        }

        (*(v81 + 16))(v163, v88, v103);
        OUTLINED_FUNCTION_185();
        sub_21796919C();
        sub_21796915C();
        goto LABEL_17;
      }
    }

    (*(v81 + 8))(v88, v103);
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v73);
    v108 = *(v76 + 8);
    v109 = OUTLINED_FUNCTION_143();
    v110(v109);
  }

LABEL_33:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178E270C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  v6 = *(*(a5 + 16) + 8);
  return sub_21796848C() & 1;
}

BOOL sub_2178E2744(uint64_t a1, uint64_t a2)
{
  v4 = sub_217965A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_2178EBD10(&qword_27CB8CA40, MEMORY[0x277D2A5F8]);
  v18 = a1;
  v10 = sub_217968EBC();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_2178EBD10(&qword_27CB8CA48, MEMORY[0x277D2A5F8]);
    v16 = sub_217968F1C();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

void sub_2178E2948()
{
  OUTLINED_FUNCTION_241();
  v1 = v0;
  OUTLINED_FUNCTION_23_2();
  v9 = *(v2 + 80);
  OUTLINED_FUNCTION_53_1();
  v10 = *(v3 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_63_0();
  sub_21796657C();

  if (v11)
  {
    if (v1)
    {
      sub_2178E37B0();
      v5 = v1;
      OUTLINED_FUNCTION_72_0();
      v6 = sub_21796941C();

      if (v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!v1)
  {
    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_228();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  OUTLINED_FUNCTION_228();
  swift_getKeyPath();
  v8 = v1;

  sub_21796658C();
  sub_2178DC0A4();
  sub_2178DD648();
LABEL_9:
  OUTLINED_FUNCTION_242();
}

void sub_2178E2AD0()
{
  OUTLINED_FUNCTION_241();
  v1 = sub_2179685BC();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_5();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_159();
  if (*(v0 + 32) != 2)
  {
    sub_217938234();
    v11 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v12 = *(v11 + 144);
    v13 = OUTLINED_FUNCTION_111();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_34_1();
    v16 = *(v0 + *(v15 + 464));

    sub_2179685CC();

    (*(v4 + 104))(v9, *MEMORY[0x277D2B090], v1);
    sub_2178EBD10(&qword_27CB8CA10, MEMORY[0x277D2B098]);
    sub_217968F1C();
    v17 = *(v4 + 8);
    v18 = OUTLINED_FUNCTION_153();
    v17(v18);
    v19 = OUTLINED_FUNCTION_140();
    v17(v19);
    sub_2178DBFEC();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_2178E2CD0()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_29_2();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2178E2CF8()
{
  OUTLINED_FUNCTION_62();
  sub_21796920C();
  *(v0 + 24) = OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_75_1();
  sub_2179691BC();
  OUTLINED_FUNCTION_109();
  v1 = OUTLINED_FUNCTION_31_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2178E2D70()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[2];
  v1 = v0[3];

  OUTLINED_FUNCTION_39_2();
  v0[4] = *(v2 + *(v3 + 464));
  v4 = *(MEMORY[0x277D2B088] + 4);

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_77_0(v5);

  return MEMORY[0x28218A668](v6);
}

uint64_t sub_2178E2E24()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v3 = v2;
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2178E2F44, 0, 0);
  }

  else
  {
    v9 = *(v3 + 32);

    OUTLINED_FUNCTION_39();

    return v10();
  }
}

uint64_t sub_2178E2F44()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_39();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_2178E2FA0()
{
  OUTLINED_FUNCTION_62();
  v1[2] = v0;
  v1[3] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9E8, &qword_21796E528);
  v1[4] = v2;
  OUTLINED_FUNCTION_64_0(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_16_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  OUTLINED_FUNCTION_48(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_16_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C9F0, &qword_21796E530);
  v1[8] = v9;
  OUTLINED_FUNCTION_64_0(v9);
  v1[9] = v10;
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_16_2();
  v13 = sub_217965CCC();
  v1[11] = v13;
  OUTLINED_FUNCTION_64_0(v13);
  v1[12] = v14;
  v16 = *(v15 + 64);
  v1[13] = OUTLINED_FUNCTION_16_2();
  v17 = sub_217968E3C();
  v1[14] = v17;
  OUTLINED_FUNCTION_64_0(v17);
  v1[15] = v18;
  v20 = *(v19 + 64);
  v1[16] = OUTLINED_FUNCTION_16_2();
  sub_21796920C();
  v1[17] = OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_75_1();
  sub_2179691BC();
  OUTLINED_FUNCTION_109();
  v21 = OUTLINED_FUNCTION_31_0();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_2178E31B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_204();
  v19 = v18[17];
  v20 = v18[2];

  if (!*(v20 + 32))
  {
    v21 = *(v20 + 24);
    v23 = v18[12];
    v22 = v18[13];
    v24 = v18[11];
    v25 = OUTLINED_FUNCTION_81_0();
    sub_2178BF548(v25, v26);
    sub_217965B8C();
    v27 = *(v23 + 88);
    v28 = OUTLINED_FUNCTION_118();
    if (v29(v28) == *MEMORY[0x277D2A6F0])
    {
      v31 = v18[15];
      v30 = v18[16];
      v32 = v18[13];
      v33 = v18[14];
      v34 = v18[10];
      v35 = v18[7];
      v36 = v18[8];
      a14 = v18[5];
      a15 = v18[9];
      a13 = v18[4];
      a9 = v18[6];
      a10 = v18[3];
      v37 = v18[2];
      (*(v18[12] + 96))(v32, v18[11]);
      a11 = v33;
      a12 = v30;
      (*(v31 + 32))(v30, v32, v33);
      sub_217968DFC();
      sub_21796820C();
      swift_getKeyPath();
      (*(v31 + 16))(v35, v30, v33);
      OUTLINED_FUNCTION_62_2();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v33);
      OUTLINED_FUNCTION_82_1();
      sub_2178EBD10(v41, v42);
      sub_21796817C();

      sub_2178BE050(v35, qword_27CB8AC48, &unk_21796FF10);
      sub_217864B2C(&qword_27CB8CA00, &qword_27CB8C9F0, &qword_21796E530);
      v43 = sub_217965A8C();
      OUTLINED_FUNCTION_223();
      v45 = *(v44 + 400);
      v46 = *(v37 + v45);
      *(v37 + v45) = v47;

      sub_217965A9C();

      OUTLINED_FUNCTION_27_2();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_74_1(v48);
      swift_weakInit();
      OUTLINED_FUNCTION_137();
      v49 = swift_allocObject();
      v49[2] = *(a10 + 80);
      v49[3] = *(a10 + 88);
      v49[4] = v43;
      OUTLINED_FUNCTION_21_4(&qword_27CB8CA08, &qword_27CB8C9E8, &qword_21796E528);
      sub_2179665AC();
      v50 = OUTLINED_FUNCTION_75_1();
      sub_2178E3790(v50, 0);

      (*(a14 + 8))(a9, a13);
      v51 = *(a15 + 8);
      v52 = OUTLINED_FUNCTION_143();
      v53(v52);
      (*(v31 + 8))(a12, v33);
      OUTLINED_FUNCTION_223();
      v55 = *(v54 + 408);
      v56 = *(v37 + v55);
      *(v37 + v55) = a9;
    }

    else
    {
      v58 = v18[12];
      v57 = v18[13];
      v59 = v18[11];
      v60 = OUTLINED_FUNCTION_81_0();
      sub_2178E3790(v60, v61);
      v62 = *(v58 + 8);
      v63 = OUTLINED_FUNCTION_47_0();
      v64(v63);
    }
  }

  v65 = v18[16];
  v66 = v18[13];
  v67 = v18[10];
  v69 = v18[6];
  v68 = v18[7];

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_164();

  return v71(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2178E356C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2178E35CC(a1);
  }

  return result;
}

uint64_t sub_2178E35CC(uint64_t a1)
{
  OUTLINED_FUNCTION_39_2();
  v4 = *(v3 + 416);
  OUTLINED_FUNCTION_238();
  sub_2178EBD58(a1, v1 + v4, &qword_27CB8C9E0);
  return swift_endAccess();
}

void sub_2178E363C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21796659C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2178E3688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2178E36EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_226(0, a2, a3);
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8, v9);
    v11 = a5(a1, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2178E374C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  _s9ViewModelCMa();
  result = sub_21796654C();
  *a2 = result;
  return result;
}

uint64_t sub_2178E3790(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2178BF424(a1, a2);
  }

  return a1;
}

uint64_t sub_2178E37A4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2178E356C(a1);
}

unint64_t sub_2178E37B0()
{
  result = qword_27CB8CA18;
  if (!qword_27CB8CA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB8CA18);
  }

  return result;
}

void sub_2178E37F4(uint64_t a1)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = &v61 - v3;
  v4 = sub_21796584C();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21796585C();
  v64 = *(v66 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0D0, &unk_21796B780);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v61 - v12;
  v13 = sub_2179657FC();
  v70 = *(v13 - 8);
  v14 = *(v70 + 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAB8, &qword_21796E690);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v62 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v61 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v61 - v31;
  sub_2178EBFC4(v72, v22, &qword_27CB8CAB8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAC0, &qword_21796E698);
  if (__swift_getEnumTagSinglePayload(v22, 1, v33) == 1)
  {
    v34 = &qword_27CB8CAB8;
    v35 = &qword_21796E690;
    v36 = v22;
LABEL_5:
    sub_2178BE050(v36, v34, v35);
LABEL_6:
    sub_2178DA614(1);
    return;
  }

  sub_21796823C();
  (*(*(v33 - 8) + 8))(v22, v33);
  v37 = *(v24 + 32);
  v72 = v23;
  v37(v32, v30, v23);
  sub_21796583C();
  v38 = v67;
  v39 = v68;
  v40 = v65;
  (*(v67 + 104))(v65, *MEMORY[0x277CC9968], v68);
  sub_2179657CC();
  v41 = v71;
  sub_21796582C();
  v42 = *(v70 + 1);
  v61 = v70 + 8;
  v42(v17, v13);
  (*(v38 + 8))(v40, v39);
  (*(v64 + 8))(v9, v66);
  if (__swift_getEnumTagSinglePayload(v41, 1, v13) == 1)
  {
    (*(v24 + 8))(v32, v72);
    v34 = &qword_27CB8B0D0;
    v35 = &unk_21796B780;
    v36 = v71;
    goto LABEL_5;
  }

  v43 = v13;
  v44 = v42;
  v45 = v69;
  v46 = (*(v70 + 4))(v69, v71, v13);
  MEMORY[0x28223BE20](v46);
  *(&v61 - 2) = v45;
  v47 = sub_2178E438C(sub_2178EB684, (&v61 - 4));
  v48 = v72;
  if (!v47 || (sub_217864B2C(&qword_27CB8CAD8, &qword_27CB8B0A8, &unk_21796B760), sub_2179692AC(), sub_2179692EC(), sub_2179692DC() < 4))
  {
    v71 = v43;
    if (qword_27CB8A480 != -1)
    {
      swift_once();
    }

    v49 = sub_21796653C();
    __swift_project_value_buffer(v49, qword_27CB97B00);
    v50 = v62;
    (*(v24 + 16))(v62, v32, v48);
    v51 = sub_21796651C();
    v52 = sub_21796939C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v70 = v32;
      v54 = v48;
      v55 = v53;
      *v53 = 67240448;
      *(v53 + 4) = v47;
      *(v53 + 8) = 2050;
      sub_217864B2C(&qword_27CB8CAD8, &qword_27CB8B0A8, &unk_21796B760);
      sub_2179692AC();
      sub_2179692EC();
      v56 = sub_2179692DC();
      v57 = *(v24 + 8);
      v57(v50, v54);
      *(v55 + 10) = v56;
      _os_log_impl(&dword_217846000, v51, v52, "Returning empty recently favorited songs [containsAtLeastOneFavoritedSongInLastMonth]=%{BOOL,public}d [favoritedSongsCount]=%{public}ld", v55, 0x12u);
      v58 = v55;
      v48 = v54;
      v32 = v70;
      MEMORY[0x21CEA8ED0](v58, -1, -1);
    }

    else
    {
      v57 = *(v24 + 8);
      v57(v50, v48);
    }

    sub_2179688CC();
    v59 = v63;
    sub_2179680AC();
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v48);
    sub_2178D85E8();
    v57(v32, v48);
    v44(v69, v71);
    goto LABEL_6;
  }

  v60 = v63;
  (*(v24 + 16))(v63, v32, v48);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v48);
  sub_2178D85E8();
  (*(v24 + 8))(v32, v48);
  v44(v69, v43);
}

BOOL sub_2178E40E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0D0, &unk_21796B780);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  v4 = sub_2179657FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21796880C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2178BE050(v3, &qword_27CB8B0D0, &unk_21796B780);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  sub_2178EBD10(&qword_27CB8CAF0, MEMORY[0x277CC9578]);
  v9 = sub_217968F0C();
  (*(v5 + 8))(v8, v4);
  return (v9 & 1) == 0;
}

BOOL sub_2178E42C0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_21796858C();
    OUTLINED_FUNCTION_64_0(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

BOOL sub_2178E438C(uint64_t (*a1)(char *), uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_2179688CC();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAE0, &qword_21796E6F8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  (*(v7 + 16))(v10, v2, v6);
  sub_217864B2C(&qword_27CB8CAE8, &qword_27CB8B0A8, &unk_21796B760);
  sub_21796905C();
  v16 = *(v12 + 44);
  sub_217864B2C(&qword_27CB8CAD8, &qword_27CB8B0A8, &unk_21796B760);
  v27 = (v3 + 16);
  v28 = (v3 + 8);
  do
  {
    sub_2179692EC();
    v17 = v34[0];
    v33 = *&v15[v16];
    if (v33 == v34[0])
    {
      break;
    }

    v18 = sub_21796934C();
    v19 = v6;
    v20 = v29;
    v21 = v30;
    (*v27)(v29);
    v18(v34, 0);
    sub_2179692FC();
    v22 = v35;
    v23 = v31(v20);
    v35 = v22;
    if (v22)
    {
      (*v28)(v20, v21);
      break;
    }

    v24 = v23;
    (*v28)(v20, v21);
    v6 = v19;
  }

  while ((v24 & 1) == 0);
  sub_2178BE050(v15, &qword_27CB8CAE0, &qword_21796E6F8);
  return v33 != v17;
}

BOOL sub_2178E46F0()
{
  v0 = sub_217965D8C();
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0;
  }

  v3 = sub_217965D8C();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v2 < v5;
}

uint64_t sub_2178E4748(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA90, &qword_21796E650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v9 - v5, a1, v3);
  sub_217864B2C(&qword_27CB8CAA8, &qword_27CB8CA90, &qword_21796E650);
  v10 = sub_21796906C();
  sub_2178E84E8(&v10);
  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

uint64_t sub_2178E488C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_21796871C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2178E48D4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = OUTLINED_FUNCTION_51_0();
  return a4(v6);
}

uint64_t sub_2178E4920(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2179692BC();
  if (!v26)
  {
    return sub_21796911C();
  }

  v48 = v26;
  v52 = sub_21796956C();
  v39 = sub_21796957C();
  sub_21796954C();
  result = sub_2179692AC();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_21796934C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_21796955C();
      result = sub_2179692FC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2178E4D3C()
{
  v0 = sub_217965A3C();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_224();
  return v4(v3);
}

void sub_2178E4DA0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  if ((sub_2178D86A8() & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = sub_21796969C();

  if (v6)
  {
LABEL_7:
    v7 = sub_21796923C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_21796920C();

    v9 = sub_2179691FC();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = *(v1 + 80);
    v10[5] = *(v1 + 88);
    v10[6] = v8;

    sub_2178D2328();

    return;
  }

  sub_2178E57A4();
}

uint64_t sub_2178E4F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21796920C();
  v4[7] = sub_2179691FC();
  v6 = sub_2179691BC();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2178E5018, v6, v5);
}

uint64_t sub_2178E5018()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_77_0(v2);

    return sub_2178E50E8();
  }

  else
  {
    v4 = v0[7];

    OUTLINED_FUNCTION_25_1();

    return v5();
  }
}

uint64_t sub_2178E50E8()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC18, &qword_21796F0E0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_217965DBC();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C960, &qword_21796E480) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = sub_21796843C();
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v12 = sub_217965E1C();
  v1[15] = v12;
  v13 = *(v12 - 8);
  v1[16] = v13;
  v14 = *(v13 + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_21796920C();
  v1[18] = sub_2179691FC();
  v16 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2178E5368, v16, v15);
}

uint64_t sub_2178E5368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_204();
  v19 = v18[18];
  v20 = v18[2];

  v21 = sub_2178D8034();
  v23 = v22;
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = v21;
    v27 = v18[10];
    v26 = v18[11];
    v28 = v18[2];
    sub_2178D83D8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v26);
    v30 = v18[17];
    a14 = v25;
    if (EnumTagSinglePayload == 1)
    {
      v31 = v18[3];
      sub_2178BE050(v18[10], &qword_27CB8C960, &qword_21796E480);
      v32 = *(v31 + 80);
      v33 = *(v31 + 88);
      v34 = *(v33 + 32);

      a15 = v32;
      a13 = v33;
      v34(v32, v33);
      OUTLINED_FUNCTION_177();
      sub_217965DDC();
    }

    else
    {
      v36 = v18[13];
      v35 = v18[14];
      v38 = v18[11];
      v37 = v18[12];
      v39 = v18[10];
      v40 = v18[3];
      OUTLINED_FUNCTION_208();
      v41(v35);
      v42 = *(v37 + 16);
      v43 = OUTLINED_FUNCTION_144();
      v44(v43);
      a15 = *(v40 + 80);
      a13 = *(v40 + 88);
      (*(a13 + 32))();
      sub_217965DAC();
      (*(v37 + 8))(v35, v38);
    }

    v45 = v18[17];
    a10 = v18[15];
    v46 = v18[8];
    v47 = v18[9];
    v49 = v18[6];
    v48 = v18[7];
    v50 = v18[5];
    a11 = v18[4];
    a12 = v18[16];
    v51 = v18[2];
    sub_217965DEC();
    (*(v46 + 104))(v47, *MEMORY[0x277D2A7F8], v48);
    sub_217965DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC20, &qword_21796F0E8);
    v52 = sub_217965DFC();
    OUTLINED_FUNCTION_2(v52);
    v54 = v53;
    v56 = *(v55 + 72);
    v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_21796A340;
    (*(v54 + 104))(v58 + v57, *MEMORY[0x277D2A800], v52);
    sub_217965E0C();
    v59 = sub_217965A8C();
    v60 = *(*v51 + 336);
    v61 = *(v51 + v60);
    *(v51 + v60) = v59;

    sub_217965A9C();

    OUTLINED_FUNCTION_27_2();
    v62 = swift_allocObject();
    OUTLINED_FUNCTION_74_1(v62);
    swift_weakInit();
    OUTLINED_FUNCTION_92_0();
    v63 = swift_allocObject();
    v63[2] = a15;
    v63[3] = a13;
    v63[4] = v59;
    v63[5] = a14;
    v63[6] = v23;
    OUTLINED_FUNCTION_21_4(&qword_27CB8CC28, &qword_27CB8CC18, &qword_21796F0E0);
    v64 = sub_2179665AC();

    (*(v50 + 8))(v49, a11);
    v65 = *(a12 + 8);
    v66 = OUTLINED_FUNCTION_143();
    v67(v66);
    v68 = *(*v51 + 368);
    v69 = *(v51 + v68);
    *(v51 + v68) = v64;
  }

  else
  {
  }

  v70 = v18[17];
  v71 = v18[13];
  v72 = v18[14];
  v74 = v18[9];
  v73 = v18[10];
  v75 = v18[6];

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_164();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_2178E57A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = sub_2178D8034();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    sub_2178D88C8();
    v16 = sub_21796832C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v16);
    sub_2178BE050(v11, &qword_27CB8BA28, &qword_21796C840);
    if (EnumTagSinglePayload != 1)
    {
      sub_2178D88C8();
      sub_2178D89E0();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
      sub_2178D88DC();
      sub_2178D8858();
      v18 = _s12SearchColumnVMa();
      v19 = __swift_getEnumTagSinglePayload(v4, 1, v18);
      sub_2178BE050(v4, &qword_27CB8B958, &qword_21796C750);
      if (v19 == 1)
      {
        sub_2178D2C28();
        sub_217936680(v20);

        sub_2178D886C();
      }
    }
  }
}

uint64_t sub_2178E59BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a6;
  v8[9] = a8;
  v8[6] = a4;
  v8[7] = a5;
  v9 = *(a8 - 8);
  v8[10] = v9;
  v10 = *(v9 + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  sub_21796920C();
  v8[13] = sub_2179691FC();
  v12 = sub_2179691BC();
  v8[14] = v12;
  v8[15] = v11;

  return MEMORY[0x2822009F8](sub_2178E5AB8, v12, v11);
}

uint64_t sub_2178E5AB8()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[16] = *(Strong + *(*Strong + 320));

    v2 = *(MEMORY[0x277D2A698] + 4);
    v10 = (*MEMORY[0x277D2A698] + MEMORY[0x277D2A698]);
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_2178E5BEC;
    v4 = v0[7];

    return v10(v4);
  }

  else
  {
    v6 = v0[13];

    v8 = v0[11];
    v7 = v0[12];

    OUTLINED_FUNCTION_39();

    return v9();
  }
}

uint64_t sub_2178E5BEC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v3 = v2;
  OUTLINED_FUNCTION_30_2();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    v9 = v3[14];
    v10 = v3[15];
    v11 = sub_2178E5D58;
  }

  else
  {
    v12 = v3[16];

    v9 = v3[14];
    v10 = v3[15];
    v11 = sub_2178E5CF0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2178E5CF0()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[13];

  v3 = v0[11];
  v2 = v0[12];

  OUTLINED_FUNCTION_39();

  return v4();
}

uint64_t sub_2178E5D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_101();
  a20 = v22;
  v25 = v22[16];
  v26 = v22[13];

  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v27 = v22[18];
  v28 = v22[12];
  v29 = v22[9];
  v30 = v22[10];
  v31 = v22[8];
  v32 = sub_21796653C();
  __swift_project_value_buffer(v32, qword_27CB97B00);
  v33 = *(v30 + 16);
  v34 = OUTLINED_FUNCTION_57_0();
  v33(v34);
  v35 = v27;
  v36 = sub_21796651C();
  v37 = sub_21796937C();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v22[18];
  v40 = v22[12];
  if (v38)
  {
    HIDWORD(a10) = v37;
    v41 = v22[10];
    v42 = v22[11];
    v43 = v22[9];
    v44 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    a11 = a9;
    *v44 = 136446466;
    v45 = OUTLINED_FUNCTION_111();
    v33(v45);
    v46 = sub_217968F8C();
    v48 = v47;
    (*(v41 + 8))(v40, v43);
    v49 = sub_217957F4C(v46, v48, &a11);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2082;
    v22[5] = v39;
    v50 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v51 = sub_217968F8C();
    v53 = sub_217957F4C(v51, v52, &a11);

    *(v44 + 14) = v53;
    _os_log_impl(&dword_217846000, v36, BYTE4(a10), "Failed to add recently searched item: %{public}s. Error = %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v54 = v22[9];
    v55 = v22[10];

    (*(v55 + 8))(v40, v54);
  }

  v57 = v22[11];
  v56 = v22[12];

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2178E5FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_2178E6008, 0, 0);
}

uint64_t sub_2178E6008()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_205(v2);

    return sub_2178E61D0(v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178E60D0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2178E61D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB40, &qword_21796EAB8);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_2179683EC();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  sub_21796920C();
  v3[12] = sub_2179691FC();
  v11 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2178E6358, v11, v10);
}

uint64_t sub_2178E6578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_2178E659C, 0, 0);
}

uint64_t sub_2178E659C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_205(v2);

    return sub_2178E676C(v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_2178E6664()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2178E676C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CB50, &qword_21796EAC8);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_2179682AC();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  sub_21796920C();
  v3[12] = sub_2179691FC();
  v11 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_2178E68F4, v11, v10);
}

void sub_2178E6B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA30, &qword_21796C848);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  sub_2178D8034();
  v6 = sub_21796900C();

  if (v6)
  {
    v7 = sub_21796846C();
    if (__swift_getEnumTagSinglePayload(a1, 1, v7) != 1)
    {
      sub_2178EBFC4(a1, v5, &qword_27CB8BA30);
      sub_2178D88A4();
    }
  }
}

uint64_t sub_2178E6C18(uint64_t *a1, uint64_t *a2, void (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_48(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_107();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  OUTLINED_FUNCTION_48(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_5();
  _s12SearchColumnVMa();
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_2178D886C();
  a3(0);
  OUTLINED_FUNCTION_13_7();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  return a4(v4);
}

void sub_2178E6D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA28, &qword_21796C840);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  if (sub_2178D8034() == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = sub_21796969C();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  v13 = sub_21796832C();
  if (__swift_getEnumTagSinglePayload(a1, 1, v13) != 1)
  {
    sub_2178EBFC4(a1, v9, &qword_27CB8BA28);
    sub_2178D88DC();
    sub_2178D75C4();
    if ((v14 & 1) == 0)
    {
      sub_2178E57A4();
    }
  }
}

uint64_t sub_2178E6E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_43_1();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = OUTLINED_FUNCTION_153();
    a7(v9);
  }

  return result;
}

void sub_2178E6EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B958, &qword_21796C750);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B238, &qword_21796C6B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA30, &qword_21796C848);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  if (sub_2178D8034() == a2 && v19 == a3)
  {
  }

  else
  {
    v21 = sub_21796969C();

    if ((v21 & 1) == 0)
    {
      return;
    }
  }

  v22 = sub_217965EFC();
  if (__swift_getEnumTagSinglePayload(a1, 1, v22) != 1)
  {
    v23 = sub_21796846C();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v23);
    sub_2178D88A4();
    sub_2178EBFC4(a1, v14, &qword_27CB8B238);
    sub_2178D8914();
    sub_2178D8858();
    v24 = _s12SearchColumnVMa();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v24);
    sub_2178BE050(v10, &qword_27CB8B958, &qword_21796C750);
    if (EnumTagSinglePayload == 1)
    {
      sub_2178D2C28();
      sub_217936680(v26);

      sub_2178D886C();
    }
  }
}

void sub_2178E7104()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_39_2();
  v2 = v1;
  v3 = sub_2179688CC();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_5();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_106();
  v13 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {
    if (*(v0 + 32))
    {
LABEL_15:
      OUTLINED_FUNCTION_80();
      return;
    }

    v14 = OUTLINED_FUNCTION_178();
    sub_2178BF548(v14, v15);
    sub_2178D759C();
    v16 = *(v2 + 80);
    v17 = sub_2179695DC();

    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v21 = *(v6 + 16);
        v20 = v6 + 16;
        v19 = v21;
        v22 = *(v20 + 64);
        OUTLINED_FUNCTION_133();
        v24 = v17 + v23;
        v25 = *(v20 + 56);
        v26 = (v20 - 8);
        do
        {
          v27 = OUTLINED_FUNCTION_111();
          v19(v27);
          sub_2178E8494();
          sub_217965B9C();
          v28 = *v26;
          v29 = OUTLINED_FUNCTION_181();
          v30(v29);
          v24 += v25;
          --v18;
        }

        while (v18);

        v31 = v13;
        v32 = 0;
LABEL_14:
        sub_2178E3790(v31, v32);
        goto LABEL_15;
      }
    }

    OUTLINED_FUNCTION_178();
LABEL_23:
    OUTLINED_FUNCTION_80();

    sub_2178E3790(v50, v51);
    return;
  }

  if (v13)
  {
    v33 = OUTLINED_FUNCTION_72_1();
    sub_2178BF548(v33, v34);
    sub_2178D759C();
    v35 = *(v2 + 80);
    v36 = sub_2179695DC();

    if (v36)
    {
      v37 = *(v36 + 16);
      if (v37)
      {
        v39 = *(v6 + 16);
        v38 = v6 + 16;
        v53 = v39;
        v40 = *(v38 + 64);
        OUTLINED_FUNCTION_133();
        v42 = v36 + v41;
        v43 = *(v38 + 56);
        do
        {
          v53(v11, v42, v3);
          sub_2178E8494();
          sub_217965B9C();
          v44 = *(v38 - 8);
          v45 = OUTLINED_FUNCTION_140();
          v46(v45);
          v42 += v43;
          --v37;
        }

        while (v37);

        v31 = OUTLINED_FUNCTION_72_1();
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_72_1();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_80();

  sub_2178BF548(v47, v48);
}

uint64_t sub_2178E741C(uint64_t result, char a2, void (*a3)(uint64_t, char *, ValueMetadata *, unint64_t))
{
  v5 = result;
  if (*(v3 + 32) != 1)
  {
    if (*(v3 + 32))
    {
      return result;
    }

    v14 = a2;
    v6 = OUTLINED_FUNCTION_178();
    sub_2178BF548(v6, v7);
    v8 = sub_2178E8494();
    a3(v5, &v14, &_s8ModuleIDON, v8);
    v9 = OUTLINED_FUNCTION_178();
    return sub_2178E3790(v9, v10);
  }

  if (*(v3 + 24))
  {
    v15 = a2;
    v11 = OUTLINED_FUNCTION_72_1();
    sub_2178BF548(v11, v12);
    v13 = sub_2178E8494();
    a3(v5, &v15, &_s8ModuleIDON, v13);
    v9 = OUTLINED_FUNCTION_72_1();
    return sub_2178E3790(v9, v10);
  }

  return sub_2178BF548(0, 1u);
}

int64_t sub_2178E7504(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2178EB134(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_2178EB08C(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_2178E75E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_2178D75B0();
}

void sub_2178E7614(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_2178D8620();
}

void sub_2178E7640(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_2178D8648();
}

uint64_t sub_2178E766C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_48(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_18_3();
  v14 = OUTLINED_FUNCTION_93_0();
  sub_2178EBFC4(v14, v15, a5);
  v16 = *a2;
  return a7(v7);
}

void sub_2178E7704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_2178D8AA4();
}

uint64_t sub_2178E7730(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_2178E778C()
{
  OUTLINED_FUNCTION_81();
  v2 = v0[2];
  if (v2 == v1[2])
  {
    if (v2)
    {
      v3 = v1;
      v4 = v0;
      if (v0 != v1)
      {
        v5 = v0[6];
        v6 = v0[7];
        v8 = v1[6];
        v7 = v1[7];
        v9 = v0[4] == v1[4] && v0[5] == v1[5];
        if (v9 || (v10 = v1[5], (sub_21796969C() & 1) != 0))
        {
          v11 = v3 + 11;
          v12 = v4 + 11;
          v13 = 1;
          if (!v6)
          {
            goto LABEL_17;
          }

LABEL_10:
          if (v7)
          {
            v14 = v5 == v8 && v6 == v7;
            if (v14 || (OUTLINED_FUNCTION_51_0(), (sub_21796969C() & 1) != 0))
            {
              while (v2 != v13)
              {
                if (v13 >= v2)
                {
                  __break(1u);
                  return;
                }

                v5 = *(v12 - 1);
                v6 = *v12;
                v8 = *(v11 - 1);
                v7 = *v11;
                if (*(v12 - 3) != *(v11 - 3) || *(v12 - 2) != *(v11 - 2))
                {
                  v16 = *(v11 - 2);
                  if ((sub_21796969C() & 1) == 0)
                  {
                    break;
                  }
                }

                v11 += 4;
                v12 += 4;
                ++v13;
                if (v6)
                {
                  goto LABEL_10;
                }

LABEL_17:

                if (v7)
                {

                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178E78D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x7972617262696CLL;
      }

      else
      {
        v5 = 0x676F6C61746163;
      }

      if (*v4)
      {
        v6 = 0x7972617262696CLL;
      }

      else
      {
        v6 = 0x676F6C61746163;
      }

      if (v5 == v6)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v7 = sub_21796969C();
        swift_bridgeObjectRelease_n();
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2178E79B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2178E7AB0;

  return v7(a1);
}

uint64_t sub_2178E7AB0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_39();

  return v5();
}

void sub_2178E7BC4()
{
  OUTLINED_FUNCTION_169();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_66_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC08, &unk_2179700D0);
      v8 = OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_239(v8);
      OUTLINED_FUNCTION_99(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_65_2();
        sub_217909E6C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_168();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_136();
  if (!v6)
  {
    OUTLINED_FUNCTION_48_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2178E7CB0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49_1();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = OUTLINED_FUNCTION_200();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 32);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_136();
  if (!v12)
  {
    OUTLINED_FUNCTION_48_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2178E7D9C()
{
  OUTLINED_FUNCTION_169();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_66_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC00, &qword_21796F0B8);
      v8 = OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_239(v8);
      OUTLINED_FUNCTION_99(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_65_2();
        sub_217909E4C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_168();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_136();
  if (!v6)
  {
    OUTLINED_FUNCTION_48_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2178E7E50()
{
  OUTLINED_FUNCTION_169();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_66_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAB0, &qword_21796E680);
      v8 = OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_239(v8);
      OUTLINED_FUNCTION_99(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_65_2();
        sub_217909E6C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_168();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_136();
  if (!v6)
  {
    OUTLINED_FUNCTION_48_1();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_2178E7F04(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_2178E83A4(v9, a2, &unk_27CB8AF18, &unk_21796B630, MEMORY[0x277CDF110]);
  v11 = *(*(sub_217967DCC() - 8) + 80);
  OUTLINED_FUNCTION_133();
  if (v6)
  {
    sub_217909E8C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2178E8010()
{
  OUTLINED_FUNCTION_169();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_66_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC48, &qword_21796F0F8);
      v8 = OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_239(v8);
      OUTLINED_FUNCTION_99(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_65_2();
        sub_217909EA4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_168();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_136();
  if (!v6)
  {
    OUTLINED_FUNCTION_48_1();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_2178E80C4(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_2178E83A4(v9, a2, &unk_27CB8CB10, &unk_21796E798, _s6ModuleVMa);
  v11 = *(_s6ModuleVMa() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_217909EC4(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2178E81D4(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_2178E83A4(v9, a2, &unk_27CB8CB38, &unk_21796E820, MEMORY[0x277CD8238]);
  v11 = *(sub_2179688CC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_217909EDC(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2178E82E4()
{
  OUTLINED_FUNCTION_169();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_66_2(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CCA0, &qword_21796F118);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * v10 - 64;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_65_2();
        sub_217909FD8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_168();
    memcpy(v14, v15, v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_136();
  if (!v7)
  {
    OUTLINED_FUNCTION_48_1();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_2178E83A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = OUTLINED_FUNCTION_226(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = a5(0);
  OUTLINED_FUNCTION_64_0(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if (result - v14 != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2178E8494()
{
  result = qword_27CB8CA38;
  if (!qword_27CB8CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8CA38);
  }

  return result;
}

uint64_t sub_2178E84E8(uint64_t *a1)
{
  v2 = *(sub_217965D9C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2178EB66C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2178E8694(v7);
  *a1 = v3;
  return result;
}

void sub_2178E8590(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_2178E83A4(v5, 0, &unk_27CB8CB38, &unk_21796E820, MEMORY[0x277CD8238]);
    if (v4 != a3)
    {
      v7 = *(sub_2179688CC() - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_2178E8694(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_21796965C();
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
        sub_217965D9C();
        v6 = sub_21796912C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_217965D9C() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2178E8A74(v8, v9, a1, v4);
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
    return sub_2178E87C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2178E87C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_217965D9C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v40 - v13;
  result = MEMORY[0x28223BE20](v12);
  v54 = &v40 - v16;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v15 + 16);
    v18 = v15 + 16;
    v20 = *(v18 + 56);
    v51 = (v18 - 8);
    v52 = v19;
    v53 = v18;
    v48 = (v18 + 16);
    v49 = v17;
    v21 = (v17 + v20 * (a3 - 1));
    v47 = -v20;
    v22 = a1 - a3;
    v41 = v20;
    v23 = v17 + v20 * a3;
    while (2)
    {
      v45 = v21;
      v46 = a3;
      v43 = v23;
      v44 = v22;
      v56 = v22;
      v24 = v21;
      do
      {
        v25 = v54;
        v26 = v52;
        v52(v54, v23, v8);
        v27 = v8;
        v28 = v55;
        v26(v55, v24, v27);
        v29 = sub_217965D8C();
        if (v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }

        v32 = sub_217965D8C();
        if (v33)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        v35 = *v51;
        v36 = v28;
        v8 = v27;
        (*v51)(v36, v27);
        result = v35(v25, v27);
        if (v31 >= v34)
        {
          break;
        }

        if (!v49)
        {
          __break(1u);
          return result;
        }

        v37 = *v48;
        v38 = v50;
        (*v48)(v50, v23, v27);
        swift_arrayInitWithTakeFrontToBack();
        result = v37(v24, v38, v27);
        v24 += v47;
        v23 += v47;
      }

      while (!__CFADD__(v56++, 1));
      a3 = v46 + 1;
      v21 = &v45[v41];
      v22 = v44 - 1;
      v23 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2178E8A74(void **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v139 = a1;
  v6 = sub_217965D9C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v143 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v155 = &v135 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v158 = &v135 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v157 = &v135 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v148 = &v135 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v135 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v137 = &v135 - v22;
  MEMORY[0x28223BE20](v21);
  v136 = &v135 - v23;
  v149 = v7;
  v150 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_112:
    v162 = *v139;
    if (!v162)
    {
      goto LABEL_155;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v151;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_114;
    }

    goto LABEL_149;
  }

  v135 = a4;
  v25 = 0;
  v160 = v7 + 2;
  v161 = (v7 + 1);
  v159 = (v7 + 4);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v27 = v25 + 1;
    v140 = v25;
    if (v25 + 1 < v24)
    {
      v162 = v24;
      v28 = *v150;
      v29 = v7[9];
      v152 = (v25 + 1);
      v30 = &v28[v29 * v27];
      v31 = v7[2];
      v32 = v136;
      v31(v136, v30, v6);
      v145 = v28;
      v33 = &v28[v29 * v25];
      v34 = v137;
      v154 = v31;
      v31(v137, v33, v6);
      v35 = v151;
      LODWORD(v156) = sub_2178E46F0();
      if (v35)
      {
        v134 = *v161;
        (*v161)(v34, v6);
        v134(v32, v6);
LABEL_124:

        return;
      }

      v151 = 0;
      v138 = v26;
      v26 = v161;
      v36 = *v161;
      (*v161)(v34, v6);
      v153 = v36;
      v36(v32, v6);
      v37 = (v140 + 2);
      v38 = &v145[v29 * (v140 + 2)];
      v39 = v29;
      v40 = v162;
      v146 = v29;
      while (1)
      {
        v7 = v37;
        v152 = (v152 + 1);
        if (v152 >= v40)
        {
          break;
        }

        v41 = v147;
        v42 = v154;
        v154(v147, v38, v6);
        v43 = v148;
        v42(v148, v30, v6);
        v44 = sub_217965D8C();
        if (v45)
        {
          v26 = 0;
        }

        else
        {
          v26 = v44;
        }

        v46 = sub_217965D8C();
        if (v47)
        {
          v48 = 0;
        }

        else
        {
          v48 = v46;
        }

        v49 = v153;
        (v153)(v43, v6);
        v49(v41, v6);
        v40 = v162;
        v39 = v146;
        v38 += v146;
        v30 += v146;
        v37 = (v7 + 1);
        if (((v156 ^ (v26 >= v48)) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v152 = v40;
LABEL_16:
      if (v156)
      {
        v27 = v152;
        v25 = v140;
        if (v152 < v140)
        {
          goto LABEL_148;
        }

        if (v140 >= v152)
        {
          v7 = v149;
          v26 = v138;
          goto LABEL_37;
        }

        if (v40 >= v7)
        {
          v50 = v7;
        }

        else
        {
          v50 = v40;
        }

        v51 = v140;
        v52 = v39 * (v50 - 1);
        v53 = v39 * v50;
        v54 = v140 * v39;
        do
        {
          if (v51 != --v27)
          {
            v55 = *v150;
            if (!*v150)
            {
              goto LABEL_153;
            }

            v162 = *v159;
            (v162)(v143, &v55[v54], v6);
            v56 = v54 < v52 || &v55[v54] >= &v55[v53];
            if (v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v162)(&v55[v52], v143, v6);
          }

          v51 = (v51 + 1);
          v52 -= v39;
          v53 -= v39;
          v54 += v39;
        }

        while (v51 < v27);
      }

      v7 = v149;
      v26 = v138;
      v27 = v152;
      v25 = v140;
    }

LABEL_37:
    v57 = v150[1];
    if (v27 < v57)
    {
      if (__OFSUB__(v27, v25))
      {
        goto LABEL_145;
      }

      if (v27 - v25 < v135)
      {
        break;
      }
    }

LABEL_59:
    if (v27 < v25)
    {
      goto LABEL_144;
    }

    v79 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v27;
    if ((v79 & 1) == 0)
    {
      v123 = *(v26 + 2);
      sub_2178E7E50();
      v26 = v124;
    }

    v80 = *(v26 + 2);
    v81 = v80 + 1;
    if (v80 >= *(v26 + 3) >> 1)
    {
      sub_2178E7E50();
      v26 = v125;
    }

    *(v26 + 2) = v81;
    v82 = v26 + 32;
    v83 = &v26[16 * v80 + 32];
    v84 = v152;
    *v83 = v140;
    *(v83 + 1) = v84;
    v162 = *v139;
    if (!v162)
    {
      goto LABEL_154;
    }

    if (v80)
    {
      while (1)
      {
        v85 = v81 - 1;
        v86 = &v82[16 * v81 - 16];
        v87 = &v26[16 * v81];
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v88 = *(v26 + 4);
          v89 = *(v26 + 5);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_79:
          if (v91)
          {
            goto LABEL_131;
          }

          v103 = *v87;
          v102 = *(v87 + 1);
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_134;
          }

          v107 = *(v86 + 1);
          v108 = v107 - *v86;
          if (__OFSUB__(v107, *v86))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v105, v108))
          {
            goto LABEL_139;
          }

          if (v105 + v108 >= v90)
          {
            if (v90 < v108)
            {
              v85 = v81 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v81 < 2)
        {
          goto LABEL_133;
        }

        v110 = *v87;
        v109 = *(v87 + 1);
        v98 = __OFSUB__(v109, v110);
        v105 = v109 - v110;
        v106 = v98;
LABEL_94:
        if (v106)
        {
          goto LABEL_136;
        }

        v112 = *v86;
        v111 = *(v86 + 1);
        v98 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v98)
        {
          goto LABEL_138;
        }

        if (v113 < v105)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v85 - 1 >= v81)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v150)
        {
          goto LABEL_151;
        }

        v117 = v26;
        v118 = &v82[16 * v85 - 16];
        v119 = *v118;
        v26 = &v82[16 * v85];
        v120 = *(v26 + 1);
        v121 = v151;
        sub_2178E9538(&(*v150)[v7[9] * *v118], &(*v150)[v7[9] * *v26], &(*v150)[v7[9] * v120], v162);
        v7 = v121;
        if (v121)
        {
          goto LABEL_124;
        }

        if (v120 < v119)
        {
          goto LABEL_126;
        }

        v151 = 0;
        v7 = *(v117 + 2);
        if (v85 > v7)
        {
          goto LABEL_127;
        }

        *v118 = v119;
        *(v118 + 1) = v120;
        if (v85 >= v7)
        {
          goto LABEL_128;
        }

        v81 = v7 - 1;
        memmove(&v82[16 * v85], v26 + 16, 16 * (v7 - v85 - 1));
        v26 = v117;
        *(v117 + 2) = v7 - 1;
        v122 = v7 > 2;
        v7 = v149;
        if (!v122)
        {
          goto LABEL_108;
        }
      }

      v92 = &v82[16 * v81];
      v93 = *(v92 - 8);
      v94 = *(v92 - 7);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_129;
      }

      v97 = *(v92 - 6);
      v96 = *(v92 - 5);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_130;
      }

      v99 = *(v87 + 1);
      v100 = v99 - *v87;
      if (__OFSUB__(v99, *v87))
      {
        goto LABEL_132;
      }

      v98 = __OFADD__(v90, v100);
      v101 = v90 + v100;
      if (v98)
      {
        goto LABEL_135;
      }

      if (v101 >= v95)
      {
        v115 = *v86;
        v114 = *(v86 + 1);
        v98 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v98)
        {
          goto LABEL_143;
        }

        if (v90 < v116)
        {
          v85 = v81 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v24 = v150[1];
    v25 = v152;
    if (v152 >= v24)
    {
      goto LABEL_112;
    }
  }

  v58 = (v25 + v135);
  if (__OFADD__(v25, v135))
  {
    goto LABEL_146;
  }

  if (v58 >= v57)
  {
    v58 = v150[1];
  }

  if (v58 < v25)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    v26 = sub_2178E9AC0(v26);
LABEL_114:
    v127 = v26 + 16;
    v128 = *(v26 + 2);
    while (v128 >= 2)
    {
      if (!*v150)
      {
        goto LABEL_152;
      }

      v129 = v26;
      v130 = &v26[16 * v128];
      v131 = *v130;
      v26 = &v127[2 * v128];
      v132 = *(v26 + 1);
      sub_2178E9538(&(*v150)[v149[9] * *v130], &(*v150)[v149[9] * *v26], &(*v150)[v149[9] * v132], v162);
      if (v7)
      {
        break;
      }

      if (v132 < v131)
      {
        goto LABEL_140;
      }

      if (v128 - 2 >= *v127)
      {
        goto LABEL_141;
      }

      *v130 = v131;
      *(v130 + 1) = v132;
      v133 = *v127 - v128;
      if (*v127 < v128)
      {
        goto LABEL_142;
      }

      v128 = *v127 - 1;
      memmove(v26, v26 + 16, 16 * v133);
      *v127 = v128;
      v26 = v129;
    }

    goto LABEL_124;
  }

  if (v27 == v58)
  {
    goto LABEL_59;
  }

  v138 = v26;
  v59 = *v150;
  v60 = v7[9];
  v156 = v7[2];
  v61 = &v59[v60 * (v27 - 1)];
  v153 = -v60;
  v154 = v59;
  v62 = v25 - v27;
  v141 = v60;
  v142 = v58;
  v63 = &v59[v27 * v60];
LABEL_46:
  v152 = v27;
  v144 = v63;
  v145 = v62;
  v64 = v62;
  v146 = v61;
  while (1)
  {
    v65 = v156;
    v66 = v157;
    v156(v157, v63, v6);
    v67 = v6;
    v68 = v158;
    v65(v158, v61, v67);
    v69 = sub_217965D8C();
    if (v70)
    {
      v71 = 0;
    }

    else
    {
      v71 = v69;
    }

    v162 = v71;
    v72 = sub_217965D8C();
    if (v73)
    {
      v74 = 0;
    }

    else
    {
      v74 = v72;
    }

    v75 = *v161;
    v76 = v68;
    v6 = v67;
    (*v161)(v76, v67);
    v75(v66, v67);
    if (v162 >= v74)
    {
LABEL_57:
      v27 = v152 + 1;
      v61 = (v146 + v141);
      v62 = (v145 - 1);
      v63 = &v144[v141];
      if (v152 + 1 == v142)
      {
        v27 = v142;
        v7 = v149;
        v26 = v138;
        v25 = v140;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    if (!v154)
    {
      break;
    }

    v77 = *v159;
    v78 = v155;
    (*v159)(v155, v63, v67);
    swift_arrayInitWithTakeFrontToBack();
    v77(v61, v78, v67);
    v61 += v153;
    v63 += v153;
    v56 = __CFADD__(v64++, 1);
    if (v56)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_2178E9538(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v80 = a4;
  v79 = sub_217965D9C();
  v7 = *(*(v79 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v79);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v73 = &v68 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v68 - v13;
  result = MEMORY[0x28223BE20](v12);
  v74 = &v68 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v19 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v19)
  {
    goto LABEL_72;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v22 = (a2 - a1) / v18;
  v83 = a1;
  v82 = v80;
  v76 = (v15 + 8);
  v77 = (v15 + 16);
  v23 = v20 / v18;
  if (v22 >= v20 / v18)
  {
    v42 = v80;
    sub_217909EF4(a2, v20 / v18, v80);
    v43 = v42 + v23 * v18;
    v44 = -v18;
    v45 = v43;
    v78 = a1;
    v75 = -v18;
LABEL_42:
    v46 = a2 + v44;
    v47 = a3;
    v68 = v45;
    v48 = v45;
    v72 = a2;
    v70 = a2 + v44;
    while (1)
    {
      if (v43 <= v80)
      {
        v83 = a2;
        v81 = v48;
        goto LABEL_70;
      }

      if (a2 <= a1)
      {
        break;
      }

      v69 = v48;
      v49 = v43 + v44;
      v50 = *v77;
      v51 = v43 + v44;
      v52 = v79;
      v53 = v47;
      (*v77)(v73, v51, v79);
      v54 = v43;
      v55 = v71;
      v50(v71, v46, v52);
      v56 = sub_217965D8C();
      if (v57)
      {
        v58 = 0;
      }

      else
      {
        v58 = v56;
      }

      v74 = v58;
      v59 = sub_217965D8C();
      if (v60)
      {
        v61 = 0;
      }

      else
      {
        v61 = v59;
      }

      v62 = (v53 + v75);
      v63 = *v76;
      (*v76)(v55, v52);
      v63(v73, v52);
      if (v74 < v61)
      {
        v43 = v54;
        v65 = v53 < v72 || v62 >= v72;
        a3 = v62;
        if (v65)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v69;
          a1 = v78;
          v44 = v75;
        }

        else
        {
          v66 = v70;
          v45 = v69;
          v19 = v53 == v72;
          a2 = v70;
          a1 = v78;
          v44 = v75;
          if (!v19)
          {
            v67 = v69;
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v45 = v67;
          }
        }

        goto LABEL_42;
      }

      if (v53 < v54 || v62 >= v54)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v62;
        v43 = v49;
        v48 = v49;
        a2 = v72;
        a1 = v78;
        v44 = v75;
        v46 = v70;
      }

      else
      {
        v48 = v49;
        v19 = v54 == v53;
        v47 = v62;
        v43 = v49;
        a2 = v72;
        a1 = v78;
        v44 = v75;
        v46 = v70;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v43 = v49;
          v48 = v49;
        }
      }
    }

    v83 = a2;
    v81 = v68;
  }

  else
  {
    v24 = v80;
    sub_217909EF4(a1, (a2 - a1) / v18, v80);
    v72 = a3;
    v73 = (v24 + v22 * v18);
    v81 = v73;
    while (v80 < v73 && a2 < a3)
    {
      v78 = a1;
      v26 = *v77;
      v27 = v74;
      v28 = v79;
      (*v77)(v74, a2, v79);
      v29 = a2;
      v30 = v75;
      v26(v75, v80, v28);
      v31 = sub_217965D8C();
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31;
      }

      v34 = sub_217965D8C();
      if (v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = v34;
      }

      v37 = *v76;
      (*v76)(v30, v28);
      v37(v27, v28);
      if (v33 >= v36)
      {
        v40 = v80 + v18;
        v38 = v78;
        if (v78 < v80 || v78 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v72;
          a2 = v29;
        }

        else
        {
          a3 = v72;
          a2 = v29;
          if (v78 != v80)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v82 = v40;
        v80 = v40;
      }

      else
      {
        a2 = v29 + v18;
        v38 = v78;
        if (v78 < v29 || v78 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v72;
        }

        else
        {
          a3 = v72;
          if (v78 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v38 + v18;
      v83 = a1;
    }
  }

LABEL_70:
  sub_2178E9AD4(&v83, &v82, &v81);
  return 1;
}

uint64_t sub_2178E9AD4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_217965D9C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2178E9BB4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2178E9BE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CAB0, &qword_21796E680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2178E9CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217965A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_2178EBD10(&qword_27CB8CA40, MEMORY[0x277D2A5F8]);
  v28 = a1;
  v11 = sub_217968EBC();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_2178EBD10(&qword_27CB8CA48, MEMORY[0x277D2A5F8]);
    v15 = sub_217968F1C();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2178EA834();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_2178EAD80(v13);
  v16 = 0;
  *v18 = v29;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
}

void sub_2178E9F54()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v35 = v3;
  v4 = sub_217965A7C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v34 = v0;
  v13 = *v0;
  v14 = *(*v0 + 40);
  OUTLINED_FUNCTION_83_1();
  sub_2178EBD10(v15, v16);
  v17 = sub_217968EBC();
  v36 = v13;
  v37 = v13 + 56;
  v18 = ~(-1 << *(v13 + 32));
  while (1)
  {
    v19 = v17 & v18;
    if (((1 << (v17 & v18)) & *(v37 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v26 = *v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v7[2];
      OUTLINED_FUNCTION_152();
      v29();
      v38 = *v34;
      v30 = OUTLINED_FUNCTION_111();
      sub_2178EA544(v30, v31, isUniquelyReferenced_nonNull_native);
      *v34 = v38;
      v32 = v7[4];
      OUTLINED_FUNCTION_152();
      v33();
      goto LABEL_7;
    }

    v20 = v7[9] * v19;
    v21 = v7[2];
    v21(v12, *(v36 + 48) + v20, v4);
    OUTLINED_FUNCTION_83_1();
    sub_2178EBD10(&qword_27CB8CA48, v22);
    OUTLINED_FUNCTION_221();
    v23 = sub_217968F1C();
    v24 = v7[1];
    v25 = OUTLINED_FUNCTION_181();
    v24(v25);
    if (v23)
    {
      break;
    }

    v17 = v19 + 1;
  }

  (v24)(v2, v4);
  v21(v35, *(v36 + 48) + v20, v4);
LABEL_7:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178EA1EC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_217965A7C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA50, &qword_21796E5C8);
  result = sub_2179694EC();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_2178EA7D0(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_2178EBD10(&qword_27CB8CA40, MEMORY[0x277D2A5F8]);
    result = sub_217968EBC();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2178EA544(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_217965A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2178EA1EC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2178EAA68(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_2178EBD10(&qword_27CB8CA40, MEMORY[0x277D2A5F8]);
      v15 = sub_217968EBC();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_2178EBD10(&qword_27CB8CA48, MEMORY[0x277D2A5F8]);
        v17 = sub_217968F1C();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_2178EA834();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_2179696CC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2178EA7D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21796E3C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_2178EA834()
{
  v1 = v0;
  v2 = sub_217965A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA50, &qword_21796E5C8);
  v7 = *v0;
  v8 = sub_2179694DC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_2178EAA68(uint64_t a1)
{
  v2 = v1;
  v37 = sub_217965A7C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA50, &qword_21796E5C8);
  v10 = sub_2179694EC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_2178EBD10(&qword_27CB8CA40, MEMORY[0x277D2A5F8]);
        result = sub_217968EBC();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2178EAD80(int64_t a1)
{
  v3 = sub_217965A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_2179694CC();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_2178EBD10(&qword_27CB8CA40, MEMORY[0x277D2A5F8]);
        v27 = sub_217968EBC();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

unint64_t sub_2178EB08C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_2179688CC() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2178EB134(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2178EB180()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178E032C(v3, v4, v5, v6);
}

uint64_t sub_2178EB20C()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178E0244(v3, v4, v5, v6);
}

uint64_t sub_2178EB298()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_7(v5);

  return sub_2178DDBA4(v7, v8, v9, v1, v3, v2);
}

uint64_t sub_2178EB354()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178DE6D0(v3, v4, v5, v6);
}

uint64_t sub_2178EB3E0()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178DEFF8(v3, v4, v5, v6);
}

uint64_t sub_2178EB46C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2178EB560;

  return v6(v2 + 32);
}

uint64_t sub_2178EB560()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = v1;
  OUTLINED_FUNCTION_30_2();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_6();
  *v8 = v7;

  *v6 = *(v2 + 32);
  OUTLINED_FUNCTION_39();

  return v9();
}

uint64_t sub_2178EB6A4()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_209();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_4(v1);

  return v4(v3);
}

uint64_t sub_2178EB734()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_209();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_4(v1);

  return v4(v3);
}

uint64_t sub_2178EB7C4()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_209();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_4(v1);

  return v4(v3);
}

uint64_t sub_2178EB854()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_39();

  return v5();
}

uint64_t sub_2178EB934()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_95_0();
  v3 = sub_2179687DC();
  OUTLINED_FUNCTION_48(v3);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_117();

  return sub_2178DCA64(v6, v7, v8, v9);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2178EB9D4()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178DCE60(v3, v4, v5, v6);
}

uint64_t sub_2178EBA60()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_108();
  v3 = v0[4];
  v2 = v0[5];
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_95_0();
  v4 = sub_2179687DC();
  OUTLINED_FUNCTION_48(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2178EC8F0;
  OUTLINED_FUNCTION_196();

  return sub_2178DCC38(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2178EBB60(uint64_t a1, uint64_t a2)
{
  v4 = _s6ModuleVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178EBBC4(uint64_t a1, uint64_t a2)
{
  v4 = _s6ModuleVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2178EBC28(uint64_t a1)
{
  v2 = _s6ModuleVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2178EBC84()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178D9C60(v3, v4, v5, v6);
}

uint64_t sub_2178EBD10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2178EBD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_226(a1, a2, a3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 24);
  v9 = OUTLINED_FUNCTION_63_0();
  v10(v9);
  return a2;
}

uint64_t sub_2178EBDD8()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_19_3();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_4(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2_7(v5);
  OUTLINED_FUNCTION_174();

  return sub_2178E6578(v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_148Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  OUTLINED_FUNCTION_116();

  return swift_deallocObject();
}

uint64_t sub_2178EBEC4()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_19_3();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_4(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2_7(v5);
  OUTLINED_FUNCTION_174();

  return sub_2178E5FE4(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2178EBFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_226(a1, a2, a3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_63_0();
  v10(v9);
  return a2;
}

uint64_t sub_2178EC01C()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178D789C(v3, v4, v5, v6);
}

uint64_t sub_2178EC0A8()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178D7C1C(v3, v4, v5, v6);
}

void sub_2178EC158()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_2178D6840();
}

uint64_t sub_2178EC194()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178D665C(v3, v4, v5, v6);
}

uint64_t objectdestroy_278Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

void sub_2178EC260()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_2178D6840();
}

uint64_t sub_2178EC29C()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178D665C(v3, v4, v5, v6);
}

uint64_t sub_2178EC328()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_19_3();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_4(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_7(v4);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_196();

  return sub_2178D6378(v6, v7, v8, v9, v10);
}

uint64_t sub_2178EC3BC()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_19_3();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_4(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_7(v4);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_196();

  return sub_2178D6378(v6, v7, v8, v9, v10);
}

uint64_t sub_2178EC450()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178D6238(v3, v4, v5, v6);
}

uint64_t objectdestroy_297Tm(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[6];

  a1(v1[7]);

  return swift_deallocObject();
}

uint64_t sub_2178EC534()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_19_3();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_4(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_7(v4);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_196();

  return sub_2178D5F7C(v6, v7, v8, v9, v10);
}

uint64_t sub_2178EC5C8()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_19_3();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_4(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_7(v4);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_196();

  return sub_2178D5C70(v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_92_0();

  return swift_deallocObject();
}

uint64_t sub_2178EC698()
{
  OUTLINED_FUNCTION_198();
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_195();

  return sub_2178E4F80(v3, v4, v5, v6);
}

uint64_t objectdestroy_159Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_92_0();

  return swift_deallocObject();
}

uint64_t sub_2178EC778()
{
  OUTLINED_FUNCTION_101();
  v2 = v1;
  v3 = v0[5];
  v24 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
  v6 = sub_21796595C();
  OUTLINED_FUNCTION_64_0(v6);
  v9 = (((*(v7 + 80) + 72) & ~*(v7 + 80)) + *(v8 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[8];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_2178EC8F0;
  OUTLINED_FUNCTION_78_0();

  return sub_2178E59BC(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  **(v0 + 40) = 1;
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  result = v0[32];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[7];
  return result;
}

void OUTLINED_FUNCTION_11_6()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_17_6()
{
  v2 = *(v0 + 48);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_19_3()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
}

uint64_t OUTLINED_FUNCTION_21_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_217864B2C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_25_1()
{
  **(v0 + 40) = *(v0 + 80) == 0;
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_1(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_217864B2C(a1, a2, a3);
}

void OUTLINED_FUNCTION_51_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x21CEA8ED0);
}

void OUTLINED_FUNCTION_57_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_66_2(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_73_2()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_86_0(unint64_t *a1)
{

  return sub_217864B2C(a1, v1, v2);
}

void OUTLINED_FUNCTION_87_1()
{

  JUMPOUT(0x21CEA8ED0);
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_98()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100()
{

  return sub_21796969C();
}

uint64_t OUTLINED_FUNCTION_103()
{
  v2 = *(v0 - 280);
  v3 = *(v0 - 208);

  return sub_2178E3790(v2, v3);
}

void OUTLINED_FUNCTION_104()
{

  JUMPOUT(0x21CEA8ED0);
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_21796657C();
}

void OUTLINED_FUNCTION_114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v18);

  sub_2178D58A0(v21, v22, v23, v19, v20, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void OUTLINED_FUNCTION_119()
{
  v1 = v0[11];
  v2 = v0[9];
  v8 = v0[7];
  v9 = v0[10];
  v3 = v0[5];
  v6 = v0[8];
  v7 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
}

uint64_t OUTLINED_FUNCTION_126()
{
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];
}

id OUTLINED_FUNCTION_128(float a1)
{
  *v3 = a1;
  *(v1 + 16) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_129(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return MEMORY[0x2821FBAE8](va, v2, a1);
}

void OUTLINED_FUNCTION_130(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_131(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_132()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_135(unsigned __int8 *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_156()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_163()
{

  return sub_2179691FC();
}

uint64_t OUTLINED_FUNCTION_172()
{
  result = *(v0 + 88);
  v2 = *(v0 + 64);
  return result;
}

void OUTLINED_FUNCTION_180(char a1@<W8>)
{
  *v3 = a1;
  *(v3 + 8) = v1;
  *(v3 + 16) = v4;
  v5 = *(v2 + 24);
  v6 = *(v2 + 16) + 1;
}

void *OUTLINED_FUNCTION_184(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result[2] = v14;
  result[3] = v12;
  result[4] = v11;
  result[5] = a11;
  result[6] = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_186()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_187()
{
}

uint64_t OUTLINED_FUNCTION_188@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  *(v1 + a1) = v2;
}

BOOL OUTLINED_FUNCTION_189()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_190()
{
}

uint64_t OUTLINED_FUNCTION_191()
{
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];
}

uint64_t OUTLINED_FUNCTION_192(uint64_t a1)
{
  *(v2 - 96) = a1;
  v4 = *(v1 + 80);

  return sub_21796919C();
}

uint64_t OUTLINED_FUNCTION_193()
{

  return sub_217968F8C();
}

uint64_t OUTLINED_FUNCTION_194()
{

  return sub_21796932C();
}

uint64_t OUTLINED_FUNCTION_199@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  *(v1 + a1) = 0;
}

uint64_t OUTLINED_FUNCTION_200()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_202(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_217957F4C(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_205(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
  return *(v2 + 56);
}

void OUTLINED_FUNCTION_207(void *a1@<X8>)
{
  v3 = a1[5];
  *(v2 - 144) = a1[4];
  *(v2 - 136) = v1;
  *(v2 - 128) = v3;
  v4 = a1[6];
}

uint64_t OUTLINED_FUNCTION_211()
{
  result = *(v0 - 224);
  v2 = *(*(v0 - 216) + 8);
  v3 = *(v0 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_213(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_216(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

void OUTLINED_FUNCTION_229()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
}

id OUTLINED_FUNCTION_231(float a1)
{
  *v3 = a1;
  *(v2 + 32) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_232()
{
  v2 = *(v0 - 280);

  return MEMORY[0x2821897C8]();
}

uint64_t OUTLINED_FUNCTION_233()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_234(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_21796919C();
}

id OUTLINED_FUNCTION_235()
{
  v3 = v1[37];
  *(v1[5] + v1[36]) = 0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_236()
{
  *(v3 + 16) = v0;

  return sub_2178EBB60(v4, v3 + v1 + v2 * v5);
}

uint64_t OUTLINED_FUNCTION_238()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_240()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2178ED854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {

    sub_2178EDDA8(a1, a2, a3);
    MEMORY[0x21CEA7F50](v6);
  }

  else
  {
  }

  sub_21796790C();
}

void sub_2178ED924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v28 = a1;

  v11 = 0;
  if (v9)
  {
LABEL_8:
    while (1)
    {
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v28 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      sub_2178EF938(*(v28 + 56) + 32 * v13, &v32);
      v29 = v32;
      v30 = v33;

      if (!v16)
      {
        break;
      }

      v32 = v29;
      v33 = v30;
      v31 = sub_2178EE128(v15, v16, &v32);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2178E7C80(0, *(a4 + 16) + 1, 1, a4);
        a4 = v26;
      }

      v24 = *(a4 + 16);
      v23 = *(a4 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2178E7C80(v23 > 1, v24 + 1, 1, a4);
        a4 = v27;
      }

      v9 &= v9 - 1;
      *(a4 + 16) = v24 + 1;
      v25 = (a4 + 32 * v24);
      v25[4] = v31;
      v25[5] = v18;
      v25[6] = v20;
      v25[7] = v22;
      if (!v9)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
  }

  else
  {
LABEL_4:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_15;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2178EDAE8()
{
  result = sub_2178EDB2C();
  v2 = 0x74694B636973754DLL;
  if (v1)
  {
    v2 = result;
  }

  v3 = 0xE800000000000000;
  if (v1)
  {
    v3 = v1;
  }

  qword_27CB8CCA8 = v2;
  unk_27CB8CCB0 = v3;
  return result;
}

uint64_t sub_2178EDB2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B218, &unk_217970AE0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v27[-v5];
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_2178EF818(v7);
  if (!v9)
  {
    goto LABEL_4;
  }

  v28[0] = 46;
  v28[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v8);
  *&v27[-16] = v28;
  v12 = sub_2178EF418(0x7FFFFFFFFFFFFFFFLL, 1, sub_2178EF918, &v27[-32], v10, v11, v27);
  sub_2178D25E4(v12);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (v20)
  {
    v21 = MEMORY[0x21CEA7F10](v14, v16, v18, v20);
  }

  else
  {
LABEL_4:
    v22 = [v7 executableURL];
    if (v22)
    {
      v23 = v22;
      sub_21796571C();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = sub_21796572C();
    __swift_storeEnumTagSinglePayload(v4, v24, 1, v25);
    sub_2178EF87C(v4, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v25) == 1)
    {

      sub_217875F0C(v6, &qword_27CB8B218, &unk_217970AE0);
      return 0;
    }

    else
    {
      v21 = sub_2179656FC();

      (*(*(v25 - 8) + 8))(v6, v25);
    }
  }

  return v21;
}

void sub_2178EDDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2179655BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a3 + 16);
  v35 = (v10 + 8);
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = (a3 + 32 * v8);
  while (v9 != v8)
  {
    if (v8 >= v9)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_21;
    }

    v14 = v12[7];
    ++v8;
    v12 += 4;
    if (v14)
    {
      v32 = v4;
      v33 = v11;
      v34 = a3;
      v8 = v13;
      v15 = v12[1];
      v31 = *v12;
      v16 = v12[2];
      v38 = v16;
      v39 = v14;
      swift_bridgeObjectRetain_n();

      sub_2179655AC();
      sub_217873C34();
      for (i = v14; ; i = v39)
      {
        v36 = v16;
        v37 = i;
        sub_21796946C();
        if (v18)
        {
          break;
        }

        sub_217968FBC();
        v16 = v38;
      }

      v36 = v31;
      v37 = v15;

      MEMORY[0x21CEA7F50](61, 0xE100000000000000);
      MEMORY[0x21CEA7F50](v16, i);

      v19 = v36;
      v20 = v37;
      v4 = v32;
      (*v35)(v7, v32);

      v11 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v11 + 16);
        sub_2178E7BC4();
        v11 = v24;
      }

      v21 = *(v11 + 16);
      if (v21 >= *(v11 + 24) >> 1)
      {
        sub_2178E7BC4();
        v11 = v25;
      }

      *(v11 + 16) = v21 + 1;
      v22 = v11 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v20;
      a3 = v34;
      goto LABEL_2;
    }
  }

  v38 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CCB8, &qword_21796F120);
  sub_2178EF7B4();
  v26 = sub_217968EFC();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v38 = 91;
    v39 = 0xE100000000000000;
    MEMORY[0x21CEA7F50](v26, v28);

    MEMORY[0x21CEA7F50](93, 0xE100000000000000);
  }
}

uint64_t sub_2178EE0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {

    v4 = OUTLINED_FUNCTION_10_7();
    sub_2178EDDA8(v4, v5, a3);
    MEMORY[0x21CEA7F50](v6, v7);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_10_7();
}

uint64_t sub_2178EE128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2178EF938(a3, v6);
  if (v6[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CCD0, &qword_21796F130);
    if (swift_dynamicCast())
    {
      if (*(&v8 + 1))
      {
        sub_21784A7D4(&v7, v10);
        v6[0] = 0;
        v6[1] = 0xE000000000000000;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        *(&v8 + 1) = swift_getAssociatedTypeWitness();
        __swift_allocate_boxed_opaque_existential_1(&v7);
        sub_21796909C();
        sub_21796958C();
        __swift_destroy_boxed_opaque_existential_1(&v7);
        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_217875F0C(v6, &qword_27CB8A7F0, &unk_21796B180);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_217875F0C(&v7, &qword_27CB8CCC8, &qword_21796F128);
  sub_2178EF938(a3, &v7);
  if (!*(&v8 + 1))
  {
    sub_217875F0C(a3, &qword_27CB8A7F0, &unk_21796B180);
    sub_217875F0C(&v7, &qword_27CB8A7F0, &unk_21796B180);
    return a1;
  }

  sub_2178C2DBC(&v7, v10);
  *&v7 = 0;
  *(&v7 + 1) = 0xE000000000000000;
  sub_21796958C();
LABEL_9:
  sub_217875F0C(a3, &qword_27CB8A7F0, &unk_21796B180);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return a1;
}

void sub_2178EE35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (v5 || (sub_21796969C() & 1) != 0)
  {
    OUTLINED_FUNCTION_10_7();

    sub_2178E778C();
  }
}

uint64_t sub_2178EE3C4()
{
  sub_217968FCC();
  v0 = OUTLINED_FUNCTION_10_7();

  return sub_2178EFB48(v0, v1);
}

uint64_t sub_2178EE400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21796973C();
  sub_217968FCC();
  sub_2178EFB48(v5, a3);
  return sub_21796977C();
}

uint64_t sub_2178EE490()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_2178EE3C4();
}

uint64_t sub_2178EE49C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21796973C();
  sub_217968FCC();
  sub_2178EFB48(v5, v3);
  return sub_21796977C();
}

uint64_t sub_2178EE4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_21796969C(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if (a8)
      {
        v15 = a3 == a7 && a4 == a8;
        if (v15 || (sub_21796969C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2178EE598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217968FCC();
  if (!a5)
  {
    return sub_21796975C();
  }

  sub_21796975C();

  return sub_217968FCC();
}

uint64_t sub_2178EE60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21796973C();
  sub_217968FCC();
  sub_21796975C();
  if (a4)
  {
    sub_217968FCC();
  }

  return sub_21796977C();
}

uint64_t sub_2178EE6CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21796973C();
  sub_217968FCC();
  sub_21796975C();
  if (v4)
  {
    sub_217968FCC();
  }

  return sub_21796977C();
}

uint64_t sub_2178EE754()
{
  if (qword_27CB8A388 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  v1 = qword_27CB8CCA8;
  v2 = unk_27CB8CCB0;

  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_8_8();

  qword_27CB978C0 = v1;
  *algn_27CB978C8 = v2;
  qword_27CB978D0 = MEMORY[0x277D84F90];
  return result;
}

void sub_2178EE7E4()
{
  if (qword_27CB8A390 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  OUTLINED_FUNCTION_1_12(&xmmword_27CB978C0);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_4_10();
  MEMORY[0x21CEA7F50](0x776569566E69614DLL, 0xE800000000000000);

  OUTLINED_FUNCTION_5_6(v0);
}

void sub_2178EE88C()
{
  if (qword_27CB8A390 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  OUTLINED_FUNCTION_1_12(&xmmword_27CB978C0);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_9_6();

  OUTLINED_FUNCTION_5_6(v0);
}

void sub_2178EE924()
{
  if (qword_27CB8A390 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  OUTLINED_FUNCTION_1_12(&xmmword_27CB978C0);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_4_10();
  MEMORY[0x21CEA7F50](0x75426C65636E6143, 0xEC0000006E6F7474);

  OUTLINED_FUNCTION_5_6(v0);
}

void sub_2178EE9D4()
{
  if (qword_27CB8A390 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  OUTLINED_FUNCTION_1_12(&xmmword_27CB978C0);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_9_6();

  OUTLINED_FUNCTION_5_6(v0);
}