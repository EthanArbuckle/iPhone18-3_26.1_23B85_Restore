void sub_1C87DE590()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_101();
  v55 = sub_1C8BD493C();
  v4 = OUTLINED_FUNCTION_13_1(v55);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v52 = v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_21(v53);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_74();
  v54 = type metadata accessor for Siri_Nlu_External_RewrittenUtterance(v15);
  v16 = OUTLINED_FUNCTION_7_2(v54);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_28_1();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  v25 = *(v3 + 16);
  OUTLINED_FUNCTION_227_0();
  if (v32 && v25 && v3 != v0)
  {
    OUTLINED_FUNCTION_27_2(v26);
    OUTLINED_FUNCTION_318();
    v46 = v27;
    v47 = v1;
    v48 = (v28 + 8);
    v50 = *(v29 + 72);
    v51 = v24;
    while (1)
    {
      sub_1C87E45D0();
      sub_1C87E45D0();
      v30 = *(v54 + 20);
      v31 = *(v53 + 48);
      sub_1C8786744(&v24[v30], v2, &qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_332(v21 + v30, v2 + v31);
      OUTLINED_FUNCTION_16_1(v2);
      if (v32)
      {
        OUTLINED_FUNCTION_16_1(v2 + v31);
        if (!v32)
        {
          OUTLINED_FUNCTION_58();
          sub_1C87E4624();
          OUTLINED_FUNCTION_221();
          sub_1C87E4624();
LABEL_25:
          sub_1C8778ED8(v2, &qword_1EC2B6118, &qword_1C8BE6DC0);
          break;
        }

        sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
      }

      else
      {
        OUTLINED_FUNCTION_332(v2, v52);
        OUTLINED_FUNCTION_16_1(v2 + v31);
        if (v32)
        {
          sub_1C87E4624();
          OUTLINED_FUNCTION_259();
          sub_1C87E4624();
          (*v48)(v52, v55);
          goto LABEL_25;
        }

        v33 = v47;
        v34 = v2 + v31;
        v35 = v55;
        (*v46)(v47, v34, v55);
        OUTLINED_FUNCTION_59();
        sub_1C87E44D0(&qword_1EC2B6120, v36);
        v49 = OUTLINED_FUNCTION_226_0();
        v37 = *v48;
        (*v48)(v33, v35);
        v38 = OUTLINED_FUNCTION_218();
        (v37)(v38);
        sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
        if ((v49 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v39 = *(v54 + 24);
      v24 = v51;
      v40 = &v51[v39];
      v41 = v51[v39 + 8];
      v42 = v21 + v39;
      v43 = *(v42 + 8);
      if (v41)
      {
        if ((*(v42 + 8) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if ((*(v42 + 8) & 1) != 0 || *v40 != *v42)
      {
LABEL_26:
        OUTLINED_FUNCTION_58();
        sub_1C87E4624();
        sub_1C87E4624();
        break;
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v44);
      OUTLINED_FUNCTION_217();
      v45 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_100();
      sub_1C87E4624();
      if (v45)
      {
        OUTLINED_FUNCTION_228();
        if (!v32)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DEA94()
{
  OUTLINED_FUNCTION_124();
  v31 = v0;
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_206_0();
  v14 = *(v5 + 16);
  if (v14 == *(v3 + 16) && v14 && v5 != v3)
  {
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = v5 + v15;
    v17 = v3 + v15;
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v20 = (v18 - 8);
    v28 = *(v18 + 56);
    v29 = v19;
    while (1)
    {
      v21 = OUTLINED_FUNCTION_230();
      (v29)(v21);
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_217();
      v22 = v18;
      v29();
      sub_1C87E44D0(v30, v31);
      OUTLINED_FUNCTION_258();
      v23 = sub_1C8BD517C();
      v24 = *v20;
      v25 = OUTLINED_FUNCTION_300();
      v24(v25);
      v26 = OUTLINED_FUNCTION_259();
      v24(v26);
      if (v23)
      {
        v17 += v28;
        v16 += v28;
        v27 = v14-- == 1;
        v18 = v22;
        if (!v27)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87DEC44()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_201();
  v5 = type metadata accessor for Siri_Nlu_External_RRBoundingBox(v4);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81();
  v62 = v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6130, &unk_1C8BE6DD0);
  OUTLINED_FUNCTION_21(v61);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_74();
  v18 = type metadata accessor for Siri_Nlu_External_RRSurroundingText(v17);
  v19 = OUTLINED_FUNCTION_7_2(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_1();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_49_2();
  v26 = *(v3 + 16);
  OUTLINED_FUNCTION_227_0();
  if (!v37 || !v26 || v3 == v0)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_27_2(v27);
  v29 = v3 + v28;
  v30 = v0 + v28;
  v59 = *(v31 + 72);
  v60 = v18;
  v57 = v2;
  v58 = v1;
  while (1)
  {
    OUTLINED_FUNCTION_230();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_147();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_198(v2 + *(v18 + 20));
    if (v34)
    {
      if (!v32)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_35(v33);
      v37 = v37 && v35 == v36;
      if (!v37 && (sub_1C8BD529C() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v32)
    {
      goto LABEL_43;
    }

    v38 = *(v18 + 24);
    v39 = *(v61 + 48);
    sub_1C8786744(v2 + v38, v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
    sub_1C8786744(v24 + v38, v1 + v39, &qword_1EC2B6128, &qword_1C8BE6DC8);
    OUTLINED_FUNCTION_65(v1);
    if (!v37)
    {
      break;
    }

    OUTLINED_FUNCTION_65(v1 + v39);
    if (!v37)
    {
      OUTLINED_FUNCTION_32_2();
      goto LABEL_45;
    }

    sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
LABEL_38:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v55);
    OUTLINED_FUNCTION_91();
    v56 = sub_1C8BD517C();
    sub_1C87E4624();
    sub_1C87E4624();
    if (v56)
    {
      v18 = v60;
      v30 += v59;
      v29 += v59;
      if (--v26)
      {
        continue;
      }
    }

    goto LABEL_47;
  }

  sub_1C8786744(v1, v62, &qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_65(v1 + v39);
  if (!v40)
  {
    sub_1C87E4518();
    OUTLINED_FUNCTION_70(v5[5]);
    if (v42)
    {
      if (!v41)
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v43)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_70(v5[6]);
    if (v45)
    {
      if (!v44)
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v46)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_70(v5[7]);
    if (v48)
    {
      if (!v47)
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v49)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_70(v5[8]);
    if (v51)
    {
      if (!v50)
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v52)
      {
LABEL_42:
        sub_1C87E4624();
        sub_1C87E4624();
        sub_1C8778ED8(v58, &qword_1EC2B6128, &qword_1C8BE6DC8);
LABEL_43:
        OUTLINED_FUNCTION_32_2();
        sub_1C87E4624();
        goto LABEL_46;
      }
    }

    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v53);
    OUTLINED_FUNCTION_311();
    v54 = sub_1C8BD517C();
    v2 = v57;
    sub_1C87E4624();
    sub_1C87E4624();
    v1 = v58;
    sub_1C8778ED8(v58, &qword_1EC2B6128, &qword_1C8BE6DC8);
    if ((v54 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_32_2();
  sub_1C87E4624();
LABEL_45:
  sub_1C87E4624();
  sub_1C8778ED8(v1, &qword_1EC2B6130, &unk_1C8BE6DD0);
LABEL_46:
  OUTLINED_FUNCTION_32_2();
  sub_1C87E4624();
LABEL_47:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DF17C()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_201();
  v6 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v5);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE0, &unk_1C8C102D0);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_180();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE8, &qword_1C8BE6CA0);
  OUTLINED_FUNCTION_21(v58);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_45();
  v61 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v17);
  v18 = OUTLINED_FUNCTION_7_2(v61);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_28_1();
  v22 = MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_317(v22, v23, v24, v25, v26, v27, v28, v29, v53);
  v32 = *(v4 + 16);
  if (v32 != *(v0 + 16) || !v32 || v4 == v0)
  {
    goto LABEL_25;
  }

  v56 = v2;
  v57 = v1;
  v60 = v31;
  OUTLINED_FUNCTION_27_2(v30);
  v34 = v4 + v33;
  v35 = v0 + v33;
  v54 = v6;
  v55 = *(v36 + 72);
  v37 = v59;
  while (1)
  {
    OUTLINED_FUNCTION_215();
    sub_1C87E45D0();
    sub_1C87E45D0();
    v38 = *(v61 + 24);
    OUTLINED_FUNCTION_294();
    sub_1C8786744(v37 + v38, v3, &qword_1EC2B5FE0, &unk_1C8C102D0);
    sub_1C8786744(v60 + v38, v3 + v0, &qword_1EC2B5FE0, &unk_1C8C102D0);
    OUTLINED_FUNCTION_24(v3);
    if (!v42)
    {
      break;
    }

    OUTLINED_FUNCTION_24(v3 + v0);
    if (!v42)
    {
      goto LABEL_21;
    }

    v39 = OUTLINED_FUNCTION_168_0();
    sub_1C8778ED8(v39, v40, &unk_1C8C102D0);
    v37 = v59;
    v41 = v60;
LABEL_14:
    if ((sub_1C87DF17C(*v37, *v41) & 1) == 0)
    {
      goto LABEL_24;
    }

    v49 = *(v61 + 20);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v50);
    sub_1C8BD517C();
    OUTLINED_FUNCTION_50_0();
    sub_1C87E4624();
    OUTLINED_FUNCTION_107_0();
    sub_1C87E4624();
    if (v0)
    {
      v35 += v55;
      v34 += v55;
      OUTLINED_FUNCTION_112_1();
      if (!v42)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  sub_1C8786744(v3, v57, &qword_1EC2B5FE0, &unk_1C8C102D0);
  OUTLINED_FUNCTION_24(v3 + v0);
  if (v42)
  {
    OUTLINED_FUNCTION_53_0();
    sub_1C87E4624();
LABEL_21:
    v51 = &qword_1EC2B5FE8;
    v52 = &qword_1C8BE6CA0;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_55_2();
  sub_1C87E4518();
  v43 = *(v6 + 20);
  v0 = *(v57 + v43);
  if (v0 == *(v56 + v43) || (, , sub_1C88BF490(), v45 = v44, , , (v45 & 1) != 0))
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v46);
    OUTLINED_FUNCTION_312();
    sub_1C8BD517C();
    OUTLINED_FUNCTION_11_1();
    sub_1C87E4624();
    sub_1C87E4624();
    v47 = OUTLINED_FUNCTION_299_0();
    sub_1C8778ED8(v47, v48, &unk_1C8C102D0);
    v6 = v54;
    v37 = v59;
    v41 = v60;
    if ((v0 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  sub_1C87E4624();
  sub_1C87E4624();
  v51 = &qword_1EC2B5FE0;
  v52 = &unk_1C8C102D0;
LABEL_23:
  sub_1C8778ED8(v3, v51, v52);
LABEL_24:
  OUTLINED_FUNCTION_52();
  sub_1C87E4624();
  OUTLINED_FUNCTION_91();
  sub_1C87E4624();
LABEL_25:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DF64C()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v6 = v5;
  v42 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v7 = OUTLINED_FUNCTION_21(v42);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_180();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B8, &qword_1C8BE6E48);
  OUTLINED_FUNCTION_21(v43);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_45();
  v44 = type metadata accessor for Siri_Nlu_External_UsoEdge(v17);
  v18 = OUTLINED_FUNCTION_7_2(v44);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_253_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_78_0();
  v23 = *(v6 + 16);
  if (v23 == *(v4 + 16) && v23 && v6 != v4)
  {
    v40 = v2;
    OUTLINED_FUNCTION_27_2(v22);
    OUTLINED_FUNCTION_135_0(v24);
    v41 = v0;
    while (1)
    {
      sub_1C87E45D0();
      if (!v23)
      {
        break;
      }

      OUTLINED_FUNCTION_230();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_309(v44[5]);
      if (v26)
      {
        if (!v25)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v27)
        {
          goto LABEL_28;
        }
      }

      OUTLINED_FUNCTION_309(v44[6]);
      if (v29)
      {
        if (!v28)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v30)
        {
          goto LABEL_28;
        }
      }

      v31 = v44[7];
      OUTLINED_FUNCTION_190_1();
      sub_1C8786744(v32 + v31, v1, &qword_1EC2B61B0, &qword_1C8BE6E40);
      sub_1C8786744(v2 + v31, v1 + v4, &qword_1EC2B61B0, &qword_1C8BE6E40);
      OUTLINED_FUNCTION_24(v1);
      if (v35)
      {
        OUTLINED_FUNCTION_24(v1 + v4);
        if (!v35)
        {
          goto LABEL_27;
        }

        v33 = OUTLINED_FUNCTION_168_0();
        sub_1C8778ED8(v33, v34, &qword_1C8BE6E40);
      }

      else
      {
        sub_1C8786744(v1, v41, &qword_1EC2B61B0, &qword_1C8BE6E40);
        OUTLINED_FUNCTION_24(v1 + v4);
        if (v35)
        {
          sub_1C87E4624();
LABEL_27:
          sub_1C8778ED8(v1, &qword_1EC2B61B8, &qword_1C8BE6E48);
LABEL_28:
          sub_1C87E4624();
          OUTLINED_FUNCTION_196_0();
          sub_1C87E4624();
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_242_0();
        sub_1C87E4518();
        OUTLINED_FUNCTION_237();
        static Siri_Nlu_External_UsoEdgeLabel.== infix(_:_:)();
        v37 = v36;
        sub_1C87E4624();
        sub_1C87E4624();
        sub_1C8778ED8(v1, &qword_1EC2B61B0, &qword_1C8BE6E40);
        v2 = v40;
        if ((v37 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v38);
      OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_232_0();
      v4 = sub_1C8BD517C();
      sub_1C87E4624();
      sub_1C87E4624();
      if (v4)
      {
        OUTLINED_FUNCTION_68_1();
        v35 = v23 == 1;
        v23 = v39;
        if (!v35)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87DFAD8()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_249();
  v5 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v4);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_302();
  v13 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v12);
  v14 = OUTLINED_FUNCTION_7_2(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  v19 = *(v3 + 16);
  if (v19 == *(v0 + 16) && v19 && v3 != v0)
  {
    OUTLINED_FUNCTION_27_2(v18);
    v20 = 0;
    v60 = v19;
    v63 = v8;
    v64 = v1;
    v62 = v13;
    v59 = *(v21 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_179_0();
      sub_1C87E45D0();
      if (v20 == v19)
      {
        break;
      }

      v61 = v20;
      OUTLINED_FUNCTION_179_0();
      OUTLINED_FUNCTION_330();
      v22 = *(v13 + 24);
      v23 = *(v2 + v22 + 4);
      v24 = *(v1 + v22 + 4);
      if (v23)
      {
        if (!v24)
        {
          goto LABEL_51;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v25)
        {
          goto LABEL_51;
        }
      }

      v26 = *v2;
      v27 = *v64;
      v28 = *(*v2 + 16);
      if (v28 != *(*v64 + 16))
      {
LABEL_51:
        sub_1C87E4624();
        OUTLINED_FUNCTION_91();
        sub_1C87E4624();
        goto LABEL_52;
      }

      if (v28 && v26 != v27)
      {
        v29 = 0;
        v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        while (v29 < *(v26 + 16))
        {
          v31 = *(v8 + 72) * v29;
          OUTLINED_FUNCTION_177();
          OUTLINED_FUNCTION_235_0();
          sub_1C87E45D0();
          if (v29 >= *(v27 + 16))
          {
            goto LABEL_54;
          }

          OUTLINED_FUNCTION_177();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_42(v5[5]);
          if (v33)
          {
            if (!v32)
            {
              goto LABEL_50;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v34)
            {
              goto LABEL_50;
            }
          }

          OUTLINED_FUNCTION_42(v5[6]);
          if (v36)
          {
            if (!v35)
            {
              goto LABEL_50;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v37)
            {
              goto LABEL_50;
            }
          }

          OUTLINED_FUNCTION_42(v5[7]);
          if (v39)
          {
            if (!v38)
            {
              goto LABEL_50;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v40)
            {
              goto LABEL_50;
            }
          }

          OUTLINED_FUNCTION_42(v5[8]);
          if (v42)
          {
            if (!v41)
            {
              goto LABEL_50;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v43)
            {
              goto LABEL_50;
            }
          }

          OUTLINED_FUNCTION_42(v5[9]);
          if (v45)
          {
            if (!v44)
            {
              goto LABEL_50;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v46)
            {
              goto LABEL_50;
            }
          }

          OUTLINED_FUNCTION_42(v5[10]);
          if (v48)
          {
            if (!v47)
            {
              goto LABEL_50;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v49)
            {
LABEL_50:
              sub_1C87E4624();
              OUTLINED_FUNCTION_118();
              sub_1C87E4624();
              goto LABEL_51;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v50);
          OUTLINED_FUNCTION_97();
          v51 = sub_1C8BD517C();
          sub_1C87E4624();
          OUTLINED_FUNCTION_298();
          v8 = v63;
          sub_1C87E4624();
          if ((v51 & 1) == 0)
          {
            goto LABEL_51;
          }

          if (v28 == ++v29)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
        break;
      }

LABEL_42:
      v52 = *(v62 + 28);
      v53 = *(v2 + v52 + 4);
      v54 = *(v64 + v52 + 4);
      if (v53)
      {
        if (!v54)
        {
          goto LABEL_51;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v55)
        {
          goto LABEL_51;
        }
      }

      v13 = v62;
      v56 = *(v62 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v57);
      v1 = v64;
      v58 = sub_1C8BD517C();
      sub_1C87E4624();
      sub_1C87E4624();
      if (v58)
      {
        v20 = v61 + 1;
        v19 = v60;
        v8 = v63;
        if (v61 + 1 != v60)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    __break(1u);
  }

  else
  {
LABEL_52:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87DFFBC()
{
  OUTLINED_FUNCTION_124();
  v21 = v2;
  v3 = OUTLINED_FUNCTION_201();
  v22 = v4(v3);
  v5 = OUTLINED_FUNCTION_7_2(v22);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_254();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49_2();
  v9 = *(v1 + 16);
  OUTLINED_FUNCTION_227_0();
  if (v11 && v9 && v1 != v0)
  {
    OUTLINED_FUNCTION_27_2(v10);
    v13 = v1 + v12;
    v14 = v0 + v12;
    v16 = *(v15 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_234();
      sub_1C87E45D0();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_269();
      if (!v11)
      {

        v17 = OUTLINED_FUNCTION_306();
        v18 = v21(v17);

        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v19);
      v20 = OUTLINED_FUNCTION_225();
      sub_1C87E4624();
      OUTLINED_FUNCTION_107_0();
      sub_1C87E4624();
      if (v20)
      {
        v14 += v16;
        v13 += v16;
        if (--v9)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_316();
    sub_1C87E4624();
    OUTLINED_FUNCTION_91();
    sub_1C87E4624();
  }

LABEL_13:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87E01E0()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_101();
  v46 = sub_1C8BD483C();
  v6 = OUTLINED_FUNCTION_13_1(v46);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_75(v13, v36);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61A0, &qword_1C8BE8DF0);
  OUTLINED_FUNCTION_21(v43);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_211();
  v45 = type metadata accessor for Siri_Nlu_External_AsrAlternative(0);
  v17 = OUTLINED_FUNCTION_7_2(v45);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_69_0();
  v21 = *(v4 + 16);
  OUTLINED_FUNCTION_227_0();
  if (!v30 || !v21 || v4 == v0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_27_2(v22);
  OUTLINED_FUNCTION_318();
  v37 = v23;
  v38 = v2;
  v39 = (v24 + 8);
  v41 = *(v25 + 72);
  v42 = v1;
  while (1)
  {
    OUTLINED_FUNCTION_223_1();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_107_0();
    sub_1C87E45D0();
    v26 = *(v45 + 20);
    v27 = *(v1 + v26 + 8);
    if (*(v5 + v26 + 8))
    {
      break;
    }

    if (v27)
    {
      goto LABEL_30;
    }

LABEL_15:
    v31 = *(v45 + 24);
    OUTLINED_FUNCTION_294();
    sub_1C8786744(v5 + v31, v3, &qword_1EC2B6198, &unk_1C8BE6E30);
    OUTLINED_FUNCTION_332(v1 + v31, v3 + v0);
    OUTLINED_FUNCTION_16_1(v3);
    if (v30)
    {
      OUTLINED_FUNCTION_16_1(v3 + v0);
      if (v30)
      {
        sub_1C8778ED8(v3, &qword_1EC2B6198, &unk_1C8BE6E30);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_12_1();
      sub_1C87E4624();
LABEL_29:
      sub_1C8778ED8(v3, &qword_1EC2B61A0, &qword_1C8BE8DF0);
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_332(v3, v44);
    OUTLINED_FUNCTION_16_1(v3 + v0);
    if (v32)
    {
      OUTLINED_FUNCTION_12_1();
      sub_1C87E4624();
      (*v39)(v44, v46);
      goto LABEL_29;
    }

    (*v37)(v38, v3 + v0, v46);
    sub_1C87E44D0(&qword_1EC2B61A8, MEMORY[0x1E69AA918]);
    v40 = OUTLINED_FUNCTION_226_0();
    v33 = *v39;
    (*v39)(v38, v46);
    v34 = OUTLINED_FUNCTION_218();
    (v33)(v34);
    sub_1C8778ED8(v3, &qword_1EC2B6198, &unk_1C8BE6E30);
    if ((v40 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_22:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v35);
    OUTLINED_FUNCTION_240();
    v1 = v42;
    v0 = sub_1C8BD517C();
    sub_1C87E4624();
    OUTLINED_FUNCTION_271();
    sub_1C87E4624();
    if (v0)
    {
      OUTLINED_FUNCTION_228();
      if (!v30)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (v27)
  {
    OUTLINED_FUNCTION_35((v5 + v26));
    v30 = v30 && v28 == v29;
    if (v30 || (sub_1C8BD529C() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_12_1();
  sub_1C87E4624();
LABEL_31:
  OUTLINED_FUNCTION_12_1();
  sub_1C87E4624();
LABEL_32:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87E0664()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_101();
  v3 = type metadata accessor for Siri_Nlu_Internal_Token();
  v4 = OUTLINED_FUNCTION_105(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_251_1();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_89();
  v11 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v10);
  v12 = OUTLINED_FUNCTION_13_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_123();
  v217 = v21;
  OUTLINED_FUNCTION_83_0();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v201 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_90_0();
  v220 = type metadata accessor for Siri_Nlu_External_UUID();
  v26 = OUTLINED_FUNCTION_21(v220);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_9_0();
  v214 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_81();
  v215 = v34;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v218);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_79(v38);
  v222 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  v39 = OUTLINED_FUNCTION_13_1(v222);
  v216 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_10_0();
  v223 = v43;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_96();
  v224 = v45;
  v46 = OUTLINED_FUNCTION_86();
  v47 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v46);
  v48 = OUTLINED_FUNCTION_7_2(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_20_1();
  v225 = v51;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_243_0();
  if (!v86 || !v55 || v1 == v0)
  {
    goto LABEL_168;
  }

  v213 = v53;
  v204 = v6;
  OUTLINED_FUNCTION_27_2(v54);
  v211 = v0 + v57;
  v212 = v58;
  v60 = *(v59 + 72);
  v205 = v14;
  v206 = v60;
  v208 = v19;
  v209 = v25;
  v221 = v61;
  v207 = v1 + v57;
  while (1)
  {
    v62 = v56;
    v63 = v60 * v56;
    OUTLINED_FUNCTION_327();
    v210 = v62;
    if (v62 == v212)
    {
      __break(1u);
      __break(1u);
LABEL_174:
      __break(1u);
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_276();
    OUTLINED_FUNCTION_304(*v0);
    if (!v86)
    {
      goto LABEL_167;
    }

    if (v0 && v64 != v65)
    {
      break;
    }

LABEL_133:
    v173 = *(v221 + 8);
    OUTLINED_FUNCTION_104(*(v225 + 8));
    if (!v86)
    {
      goto LABEL_167;
    }

    if (v14 && v175 != v174)
    {
      OUTLINED_FUNCTION_37_3();
      v178 = v176 + v177;
      v180 = v179 + v177;
      v182 = *(v181 + 72);
      do
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_307();
        sub_1C87E45D0();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_107_0();
        sub_1C87E45D0();
        v183 = OUTLINED_FUNCTION_184();
        static Siri_Nlu_Internal_Token.== infix(_:_:)(v183, v184);
        OUTLINED_FUNCTION_133();
        sub_1C87E4624();
        OUTLINED_FUNCTION_106();
        sub_1C87E4624();
        if ((v63 & 1) == 0)
        {
          goto LABEL_167;
        }

        v180 += v182;
        v178 += v182;
      }

      while (--v14);
    }

    OUTLINED_FUNCTION_286(v221 + v213[7]);
    if (v187)
    {
      if (!v185)
      {
        goto LABEL_167;
      }

      OUTLINED_FUNCTION_35(v186);
      v190 = v86 && v188 == v189;
      if (!v190 && (sub_1C8BD529C() & 1) == 0)
      {
        goto LABEL_167;
      }
    }

    else if (v185)
    {
      goto LABEL_167;
    }

    v191 = v213[8];
    v192 = *(v221 + v191);
    OUTLINED_FUNCTION_214(v191);
    if (v86)
    {
      if (v193 != 2)
      {
        goto LABEL_167;
      }
    }

    else if (v193 == 2 || ((v194 ^ v193) & 1) != 0)
    {
      goto LABEL_167;
    }

    OUTLINED_FUNCTION_288(v213[9]);
    if (v196)
    {
      if (!v195)
      {
        goto LABEL_167;
      }
    }

    else
    {
      OUTLINED_FUNCTION_61_0();
      if (v197)
      {
        goto LABEL_167;
      }
    }

    OUTLINED_FUNCTION_282(v213);
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v198);
    v14 = v225;
    v0 = sub_1C8BD517C();
    OUTLINED_FUNCTION_158_0();
    sub_1C87E4624();
    OUTLINED_FUNCTION_91();
    sub_1C87E4624();
    if (v0)
    {
      v56 = v210 + 1;
      LOBYTE(v60) = v206;
      if (v210 + 1 != v212)
      {
        continue;
      }
    }

    goto LABEL_168;
  }

  v14 = 0;
  OUTLINED_FUNCTION_39_0();
  v68 = v66 + v67;
  v70 = *(v69 + 72);
  v202 = v0;
  v201[3] = v71 + v67;
  v201[2] = v68;
  v201[1] = v70;
  while (1)
  {
    OUTLINED_FUNCTION_171();
    v72 = v224;
    sub_1C87E45D0();
    v203 = v14;
    if (v14 == v0)
    {
      goto LABEL_174;
    }

    OUTLINED_FUNCTION_171();
    v73 = v223;
    sub_1C87E45D0();
    v74 = v222[7];
    v75 = v219;
    v76 = *(v218 + 48);
    sub_1C8786744(v72 + v74, v219, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v77 = v73 + v74;
    v78 = &unk_1C8BE68C0;
    OUTLINED_FUNCTION_331(v77, v75 + v76);
    v79 = v220;
    OUTLINED_FUNCTION_41_2(v75, 1);
    if (!v86)
    {
      v82 = v215;
      OUTLINED_FUNCTION_222();
      sub_1C8786744(v83, v84, v85, &unk_1C8BE68C0);
      OUTLINED_FUNCTION_19(v75 + v76);
      if (v86)
      {
        OUTLINED_FUNCTION_6_1();
        sub_1C87E4624();
LABEL_171:
        v199 = &qword_1EC2B5EE8;
        v200 = &unk_1C8BE6F90;
      }

      else
      {
        OUTLINED_FUNCTION_1_2();
        v78 = v214;
        sub_1C87E4518();
        OUTLINED_FUNCTION_305(v79[5]);
        if (v88)
        {
          if (!v87)
          {
            goto LABEL_169;
          }
        }

        else
        {
          OUTLINED_FUNCTION_61_0();
          if (v89)
          {
            goto LABEL_169;
          }
        }

        OUTLINED_FUNCTION_305(v79[6]);
        if (v91)
        {
          if (!v90)
          {
            goto LABEL_169;
          }
        }

        else
        {
          OUTLINED_FUNCTION_61_0();
          if (v92)
          {
            goto LABEL_169;
          }
        }

        v93 = v79[7];
        v94 = *(v82 + v93);
        v95 = v78[v93];
        if (v94 == 6)
        {
          if (v95 != 6)
          {
            goto LABEL_169;
          }

          goto LABEL_31;
        }

        if (v94 == v95)
        {
LABEL_31:
          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v96);
          OUTLINED_FUNCTION_225();
          OUTLINED_FUNCTION_126();
          sub_1C87E4624();
          OUTLINED_FUNCTION_193();
          sub_1C87E4624();
          v97 = OUTLINED_FUNCTION_233();
          sub_1C8778ED8(v97, v98, &unk_1C8BE68C0);
          if ((v79 & 1) == 0)
          {
            goto LABEL_166;
          }

          goto LABEL_32;
        }

LABEL_169:
        OUTLINED_FUNCTION_178();
        sub_1C87E4624();
        OUTLINED_FUNCTION_91();
        sub_1C87E4624();
        v199 = &qword_1EC2B5EC8;
        v200 = &unk_1C8BE68C0;
      }

      sub_1C8778ED8(v75, v199, v200);
      goto LABEL_166;
    }

    OUTLINED_FUNCTION_19(v75 + v76);
    if (!v86)
    {
      goto LABEL_171;
    }

    v80 = OUTLINED_FUNCTION_233();
    sub_1C8778ED8(v80, v81, &unk_1C8BE68C0);
LABEL_32:
    v99 = v222[8];
    OUTLINED_FUNCTION_205(v224);
    if (v102)
    {
      if (!v100)
      {
        goto LABEL_166;
      }

      OUTLINED_FUNCTION_35(v101);
      v105 = v86 && v103 == v104;
      if (!v105 && (sub_1C8BD529C() & 1) == 0)
      {
        goto LABEL_166;
      }
    }

    else if (v100)
    {
      goto LABEL_166;
    }

    OUTLINED_FUNCTION_236(v223);
    OUTLINED_FUNCTION_104(v106);
    if (!v86)
    {
      goto LABEL_166;
    }

    if (v78 && v108 != v107)
    {
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_267();
      do
      {
        OUTLINED_FUNCTION_30_0();
        sub_1C87E45D0();
        OUTLINED_FUNCTION_30_0();
        v109 = v209;
        sub_1C87E45D0();
        OUTLINED_FUNCTION_98(v2 + v11[5]);
        if (v112)
        {
          if (!v110 || ((OUTLINED_FUNCTION_35(v111), v86) ? (v115 = v113 == v114) : (v115 = 0), !v115 && (sub_1C8BD529C() & 1) == 0))
          {
LABEL_163:
            OUTLINED_FUNCTION_167_0();
            sub_1C87E4624();
            goto LABEL_165;
          }
        }

        else if (v110)
        {
          goto LABEL_163;
        }

        OUTLINED_FUNCTION_199_0(v11[6]);
        if (v117)
        {
          if (!v116)
          {
            goto LABEL_163;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_1();
          if (v118)
          {
            goto LABEL_163;
          }
        }

        OUTLINED_FUNCTION_199_0(v11[7]);
        if (v120)
        {
          if (!v119)
          {
            goto LABEL_163;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_1();
          if (v121)
          {
            goto LABEL_163;
          }
        }

        v122 = v11[8];
        v123 = *(v2 + v122 + 8);
        v124 = v109[v122 + 8];
        if (v123)
        {
          if (!v124)
          {
            goto LABEL_163;
          }
        }

        else
        {
          OUTLINED_FUNCTION_36();
          if (v125)
          {
            goto LABEL_163;
          }
        }

        OUTLINED_FUNCTION_98(v2 + v11[9]);
        if (v128)
        {
          if (!v126)
          {
            goto LABEL_163;
          }

          OUTLINED_FUNCTION_35(v127);
          v131 = v86 && v129 == v130;
          if (!v131 && (sub_1C8BD529C() & 1) == 0)
          {
            goto LABEL_163;
          }
        }

        else if (v126)
        {
          goto LABEL_163;
        }

        v132 = v11[10];
        v133 = *(v2 + v132);
        v134 = v109[v132];
        if (v133 == 2)
        {
          if (v134 != 2)
          {
            goto LABEL_163;
          }
        }

        else if (v134 == 2 || ((v133 ^ v134) & 1) != 0)
        {
          goto LABEL_163;
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v135);
        v136 = OUTLINED_FUNCTION_326();
        OUTLINED_FUNCTION_167_0();
        sub_1C87E4624();
        OUTLINED_FUNCTION_191();
        sub_1C87E4624();
        if ((v136 & 1) == 0)
        {
          goto LABEL_166;
        }

        OUTLINED_FUNCTION_266_0();
      }

      while (!v86);
    }

    v137 = *(v224 + 8);
    OUTLINED_FUNCTION_104(v223[1]);
    if (!v86)
    {
      goto LABEL_166;
    }

    if (v78 && v139 != v138)
    {
      break;
    }

LABEL_127:
    OUTLINED_FUNCTION_310(v222[9]);
    if (v170)
    {
      if (!v169)
      {
        goto LABEL_166;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v171)
      {
        goto LABEL_166;
      }
    }

    OUTLINED_FUNCTION_282(v222);
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v172);
    v63 = sub_1C8BD517C();
    sub_1C87E4624();
    OUTLINED_FUNCTION_119_0();
    sub_1C87E4624();
    v0 = v202;
    if ((v63 & 1) == 0)
    {
      goto LABEL_167;
    }

    v14 = v203 + 1;
    if (v203 + 1 == v202)
    {
      goto LABEL_133;
    }
  }

  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_267();
  while (1)
  {
    OUTLINED_FUNCTION_30_0();
    v140 = v217;
    sub_1C87E45D0();
    OUTLINED_FUNCTION_30_0();
    v141 = v208;
    sub_1C87E45D0();
    OUTLINED_FUNCTION_98(v140 + v11[5]);
    if (v144)
    {
      break;
    }

    if (v142)
    {
      goto LABEL_164;
    }

LABEL_98:
    OUTLINED_FUNCTION_199_0(v11[6]);
    if (v149)
    {
      if (!v148)
      {
        goto LABEL_164;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
      if (v150)
      {
        goto LABEL_164;
      }
    }

    OUTLINED_FUNCTION_199_0(v11[7]);
    if (v152)
    {
      if (!v151)
      {
        goto LABEL_164;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
      if (v153)
      {
        goto LABEL_164;
      }
    }

    v154 = v11[8];
    v155 = *(v140 + v154 + 8);
    v156 = *(v141 + v154 + 8);
    if (v155)
    {
      if (!v156)
      {
        goto LABEL_164;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v157)
      {
        goto LABEL_164;
      }
    }

    OUTLINED_FUNCTION_98(v140 + v11[9]);
    if (v160)
    {
      if (!v158)
      {
        goto LABEL_164;
      }

      OUTLINED_FUNCTION_35(v159);
      v163 = v86 && v161 == v162;
      if (!v163 && (sub_1C8BD529C() & 1) == 0)
      {
        goto LABEL_164;
      }
    }

    else if (v158)
    {
      goto LABEL_164;
    }

    v164 = v11[10];
    v165 = *(v140 + v164);
    v166 = *(v141 + v164);
    if (v165 == 2)
    {
      if (v166 != 2)
      {
        goto LABEL_164;
      }
    }

    else if (v166 == 2 || ((v165 ^ v166) & 1) != 0)
    {
      goto LABEL_164;
    }

    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v167);
    v168 = OUTLINED_FUNCTION_226_0();
    sub_1C87E4624();
    OUTLINED_FUNCTION_218();
    sub_1C87E4624();
    if ((v168 & 1) == 0)
    {
      goto LABEL_166;
    }

    OUTLINED_FUNCTION_266_0();
    if (v86)
    {
      goto LABEL_127;
    }
  }

  if (v142)
  {
    OUTLINED_FUNCTION_35(v143);
    v147 = v86 && v145 == v146;
    if (v147 || (sub_1C8BD529C() & 1) != 0)
    {
      goto LABEL_98;
    }
  }

LABEL_164:
  sub_1C87E4624();
LABEL_165:
  sub_1C87E4624();
LABEL_166:
  sub_1C87E4624();
  sub_1C87E4624();
LABEL_167:
  OUTLINED_FUNCTION_158_0();
  sub_1C87E4624();
  sub_1C87E4624();
LABEL_168:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87E1314()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_84();
  v4 = type metadata accessor for Siri_Nlu_Internal_Token();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_123();
  v258 = v12;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_301_0();
  v254 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v14);
  v15 = OUTLINED_FUNCTION_13_1(v254);
  v248 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_0();
  v255 = v19;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v234 - v21;
  v253 = type metadata accessor for Siri_Nlu_External_UUID();
  v23 = OUTLINED_FUNCTION_21(v253);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_0();
  v249 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_81();
  v250 = v31;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v252);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_81();
  v256 = v35;
  v36 = OUTLINED_FUNCTION_86();
  v257 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v36);
  v37 = OUTLINED_FUNCTION_13_1(v257);
  v251 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_10_0();
  v259 = v41;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_96();
  v260 = v43;
  v44 = OUTLINED_FUNCTION_86();
  v45 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v44);
  v46 = OUTLINED_FUNCTION_7_2(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_20_1();
  v261 = v49;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_69_0();
  v53 = *(v1 + 16);
  if (v53 == *(v0 + 16) && v53 && v1 != v0)
  {
    v246 = v51;
    OUTLINED_FUNCTION_27_2(v52);
    v55 = v1 + v54;
    v56 = 0;
    v244 = v0 + v54;
    v58 = *(v57 + 72);
    v237 = v4;
    v240 = v7;
    v247 = v2;
    v245 = v59;
    v241 = v58;
    v242 = v55;
    while (1)
    {
      OUTLINED_FUNCTION_153();
      sub_1C87E45D0();
      if (v56 == v245)
      {
        break;
      }

      v243 = v56;
      OUTLINED_FUNCTION_153();
      OUTLINED_FUNCTION_276();
      OUTLINED_FUNCTION_304(*v3);
      if (!v81)
      {
        goto LABEL_195;
      }

      if (v56 && v60 != v61)
      {
        v62 = 0;
        OUTLINED_FUNCTION_39_0();
        v239 = v63 + v64;
        v66 = *(v65 + 72);
        v238 = v3;
        v235 = v56;
        v234[3] = v67 + v64;
        v234[2] = v66;
        do
        {
          OUTLINED_FUNCTION_150();
          v68 = v260;
          sub_1C87E45D0();
          v236 = v62;
          if (v62 == v56)
          {
            goto LABEL_202;
          }

          OUTLINED_FUNCTION_150();
          v69 = v259;
          sub_1C87E45D0();
          v70 = v257[7];
          v71 = *(v252 + 48);
          v72 = v68 + v70;
          v73 = v256;
          sub_1C8786744(v72, v256, &qword_1EC2B5EC8, &unk_1C8BE68C0);
          v74 = v69 + v70;
          v75 = v73;
          v76 = &qword_1EC2B5EC8;
          OUTLINED_FUNCTION_281(v74, v75 + v71);
          v77 = OUTLINED_FUNCTION_195_0();
          v78 = v253;
          OUTLINED_FUNCTION_41_2(v77, v79);
          v80 = v254;
          if (v81)
          {
            OUTLINED_FUNCTION_19(v75 + v71);
            if (!v81)
            {
              goto LABEL_199;
            }

            sub_1C8778ED8(v75, &qword_1EC2B5EC8, &unk_1C8BE68C0);
          }

          else
          {
            v76 = v250;
            sub_1C8786744(v75, v250, &qword_1EC2B5EC8, &unk_1C8BE68C0);
            OUTLINED_FUNCTION_19(v75 + v71);
            if (v81)
            {
              OUTLINED_FUNCTION_6_1();
              sub_1C87E4624();
LABEL_199:
              v231 = &qword_1EC2B5EE8;
              v232 = &unk_1C8BE6F90;
              v233 = v75;
              goto LABEL_200;
            }

            OUTLINED_FUNCTION_1_2();
            v82 = v249;
            sub_1C87E4518();
            OUTLINED_FUNCTION_248(v78[5]);
            if (v84)
            {
              if (!v83)
              {
                goto LABEL_197;
              }
            }

            else
            {
              OUTLINED_FUNCTION_61_0();
              if (v85)
              {
                goto LABEL_197;
              }
            }

            OUTLINED_FUNCTION_248(v78[6]);
            if (v87)
            {
              if (!v86)
              {
                goto LABEL_197;
              }
            }

            else
            {
              OUTLINED_FUNCTION_61_0();
              if (v88)
              {
                goto LABEL_197;
              }
            }

            v89 = v78[7];
            v90 = *(v76 + v89);
            v91 = *(v82 + v89);
            if (v90 == 6)
            {
              if (v91 != 6)
              {
                goto LABEL_197;
              }
            }

            else if (v90 != v91)
            {
LABEL_197:
              OUTLINED_FUNCTION_178();
              sub_1C87E4624();
              OUTLINED_FUNCTION_221();
              sub_1C87E4624();
              v231 = &qword_1EC2B5EC8;
              v232 = &unk_1C8BE68C0;
              v233 = v256;
LABEL_200:
              sub_1C8778ED8(v233, v231, v232);
LABEL_194:
              sub_1C87E4624();
              sub_1C87E4624();
              goto LABEL_195;
            }

            sub_1C8BD49FC();
            OUTLINED_FUNCTION_0_2();
            sub_1C87E44D0(&qword_1EC2B2F70, v92);
            OUTLINED_FUNCTION_100();
            v93 = sub_1C8BD517C();
            sub_1C87E4624();
            OUTLINED_FUNCTION_259();
            sub_1C87E4624();
            sub_1C8778ED8(v256, &qword_1EC2B5EC8, &unk_1C8BE68C0);
            if ((v93 & 1) == 0)
            {
              goto LABEL_194;
            }
          }

          v94 = v257[8];
          OUTLINED_FUNCTION_205(v260);
          if (v97)
          {
            if (!v95)
            {
              goto LABEL_194;
            }

            OUTLINED_FUNCTION_35(v96);
            v100 = v81 && v98 == v99;
            if (!v100 && (sub_1C8BD529C() & 1) == 0)
            {
              goto LABEL_194;
            }
          }

          else if (v95)
          {
            goto LABEL_194;
          }

          OUTLINED_FUNCTION_236(v259);
          OUTLINED_FUNCTION_104(v101);
          if (!v81)
          {
            goto LABEL_194;
          }

          if (v76 && v103 != v102)
          {
            OUTLINED_FUNCTION_39_0();
            v106 = v104 + v105;
            v108 = v107 + v105;
            v110 = *(v109 + 72);
            do
            {
              OUTLINED_FUNCTION_149();
              sub_1C87E45D0();
              v111 = v255;
              OUTLINED_FUNCTION_149();
              OUTLINED_FUNCTION_270();
              sub_1C87E45D0();
              v112 = v80[5];
              OUTLINED_FUNCTION_293();
              if (v115)
              {
                if (!v113 || ((OUTLINED_FUNCTION_35(v114), v81) ? (v118 = v116 == v117) : (v118 = 0), !v118 && (sub_1C8BD529C() & 1) == 0))
                {
LABEL_193:
                  sub_1C87E4624();
                  sub_1C87E4624();
                  goto LABEL_194;
                }
              }

              else if (v113)
              {
                goto LABEL_193;
              }

              OUTLINED_FUNCTION_284(v80[6]);
              if (v120)
              {
                if (!v119)
                {
                  goto LABEL_193;
                }
              }

              else
              {
                OUTLINED_FUNCTION_8_1();
                if (v121)
                {
                  goto LABEL_193;
                }
              }

              OUTLINED_FUNCTION_284(v80[7]);
              if (v123)
              {
                if (!v122)
                {
                  goto LABEL_193;
                }
              }

              else
              {
                OUTLINED_FUNCTION_8_1();
                if (v124)
                {
                  goto LABEL_193;
                }
              }

              v125 = v80[8];
              v126 = v22[v125 + 8];
              v127 = *(v111 + v125 + 8);
              if (v126)
              {
                if (!v127)
                {
                  goto LABEL_193;
                }
              }

              else
              {
                OUTLINED_FUNCTION_36();
                if (v128)
                {
                  goto LABEL_193;
                }
              }

              v129 = v80[9];
              OUTLINED_FUNCTION_293();
              if (v132)
              {
                if (!v130)
                {
                  goto LABEL_193;
                }

                OUTLINED_FUNCTION_35(v131);
                v135 = v81 && v133 == v134;
                if (!v135 && (sub_1C8BD529C() & 1) == 0)
                {
                  goto LABEL_193;
                }
              }

              else if (v130)
              {
                goto LABEL_193;
              }

              v136 = v80[10];
              v137 = v22[v136];
              v138 = *(v111 + v136);
              if (v137 == 2)
              {
                if (v138 != 2)
                {
                  goto LABEL_193;
                }
              }

              else if (v138 == 2 || ((v137 ^ v138) & 1) != 0)
              {
                goto LABEL_193;
              }

              sub_1C8BD49FC();
              OUTLINED_FUNCTION_0_2();
              sub_1C87E44D0(&qword_1EC2B2F70, v139);
              OUTLINED_FUNCTION_88();
              v140 = sub_1C8BD517C();
              sub_1C87E4624();
              OUTLINED_FUNCTION_88();
              sub_1C87E4624();
              if ((v140 & 1) == 0)
              {
                goto LABEL_194;
              }

              v108 += v110;
              v106 += v110;
              v76 = (v76 - 1);
            }

            while (v76);
          }

          OUTLINED_FUNCTION_310(v257[9]);
          if (v142)
          {
            if (!v141)
            {
              goto LABEL_194;
            }
          }

          else
          {
            OUTLINED_FUNCTION_36();
            if (v143)
            {
              goto LABEL_194;
            }
          }

          v144 = *(v260 + 8);
          v145 = v259[1];
          v146 = *(v144 + 16);
          if (v146 != *(v145 + 16))
          {
            goto LABEL_194;
          }

          if (v146 && v144 != v145)
          {
            v147 = 0;
            OUTLINED_FUNCTION_37_3();
            v150 = v148 + v149;
            v152 = *(v151 + 72);
            v234[1] = v150;
            v234[0] = v152;
            do
            {
              OUTLINED_FUNCTION_3();
              v153 = v247;
              sub_1C87E45D0();
              if (v147 == v146)
              {
                goto LABEL_203;
              }

              OUTLINED_FUNCTION_3();
              v154 = v258;
              sub_1C87E45D0();
              v155 = v237;
              OUTLINED_FUNCTION_198(v153 + v237[7]);
              if (v158)
              {
                if (!v156)
                {
                  goto LABEL_193;
                }

                OUTLINED_FUNCTION_35(v157);
                v161 = v81 && v159 == v160;
                if (!v161 && (sub_1C8BD529C() & 1) == 0)
                {
                  goto LABEL_193;
                }
              }

              else if (v156)
              {
                goto LABEL_193;
              }

              OUTLINED_FUNCTION_60(v155[8]);
              if (v163)
              {
                if (!v162)
                {
                  goto LABEL_193;
                }
              }

              else
              {
                OUTLINED_FUNCTION_8_1();
                if (v164)
                {
                  goto LABEL_193;
                }
              }

              OUTLINED_FUNCTION_60(v155[9]);
              if (v166)
              {
                if (!v165)
                {
                  goto LABEL_193;
                }
              }

              else
              {
                OUTLINED_FUNCTION_8_1();
                if (v167)
                {
                  goto LABEL_193;
                }
              }

              v168 = v155[10];
              v169 = *(v247 + v168);
              OUTLINED_FUNCTION_214(v168);
              if (v81)
              {
                if (v170 != 2)
                {
                  goto LABEL_193;
                }
              }

              else if (v170 == 2 || ((v171 ^ v170) & 1) != 0)
              {
                goto LABEL_193;
              }

              v172 = v155[11];
              v173 = *(v247 + v172);
              OUTLINED_FUNCTION_214(v172);
              if (v81)
              {
                if (v174 != 2)
                {
                  goto LABEL_193;
                }
              }

              else if (v174 == 2 || ((v175 ^ v174) & 1) != 0)
              {
                goto LABEL_193;
              }

              v176 = *v247;
              OUTLINED_FUNCTION_99(*v258);
              if (!v81)
              {
                goto LABEL_193;
              }

              if (v154 && v178 != v177)
              {
                v179 = (v178 + 40);
                v180 = (v177 + 40);
                do
                {
                  v181 = *(v179 - 1) == *(v180 - 1) && *v179 == *v180;
                  if (!v181 && (sub_1C8BD529C() & 1) == 0)
                  {
                    goto LABEL_193;
                  }

                  v179 += 2;
                  v180 += 2;
                  v154 = (v154 - 1);
                }

                while (v154);
              }

              OUTLINED_FUNCTION_60(v155[12]);
              if (v183)
              {
                if (!v182)
                {
                  goto LABEL_193;
                }
              }

              else
              {
                OUTLINED_FUNCTION_8_1();
                if (v184)
                {
                  goto LABEL_193;
                }
              }

              OUTLINED_FUNCTION_60(v155[13]);
              if (v186)
              {
                if (!v185)
                {
                  goto LABEL_193;
                }
              }

              else
              {
                OUTLINED_FUNCTION_8_1();
                if (v187)
                {
                  goto LABEL_193;
                }
              }

              v188 = v155[14];
              v189 = *(v258 + v188 + 8);
              if (*(v247 + v188 + 8))
              {
                if (!v189)
                {
                  goto LABEL_193;
                }

                OUTLINED_FUNCTION_35((v247 + v188));
                v192 = v81 && v190 == v191;
                if (!v192 && (sub_1C8BD529C() & 1) == 0)
                {
                  goto LABEL_193;
                }
              }

              else if (v189)
              {
                goto LABEL_193;
              }

              v193 = v247[1];
              OUTLINED_FUNCTION_99(v258[1]);
              if (!v81)
              {
                goto LABEL_193;
              }

              if (v154 && v195 != v194)
              {
                v196 = (v195 + 40);
                v197 = (v194 + 40);
                do
                {
                  v198 = *(v196 - 1) == *(v197 - 1) && *v196 == *v197;
                  if (!v198 && (sub_1C8BD529C() & 1) == 0)
                  {
                    goto LABEL_193;
                  }

                  v196 += 2;
                  v197 += 2;
                  v154 = (v154 - 1);
                }

                while (v154);
              }

              v199 = v155[6];
              sub_1C8BD49FC();
              OUTLINED_FUNCTION_0_2();
              sub_1C87E44D0(&qword_1EC2B2F70, v200);
              sub_1C8BD517C();
              OUTLINED_FUNCTION_133();
              sub_1C87E4624();
              OUTLINED_FUNCTION_119_0();
              sub_1C87E4624();
              if ((v199 & 1) == 0)
              {
                goto LABEL_194;
              }
            }

            while (++v147 != v146);
          }

          OUTLINED_FUNCTION_282(v257);
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v201);
          v7 = v260;
          v202 = sub_1C8BD517C();
          sub_1C87E4624();
          OUTLINED_FUNCTION_259();
          sub_1C87E4624();
          v3 = v238;
          v56 = v235;
          if ((v202 & 1) == 0)
          {
            goto LABEL_195;
          }

          v62 = v236 + 1;
        }

        while (v236 + 1 != v235);
      }

      v203 = v3[1];
      OUTLINED_FUNCTION_104(*(v261 + 8));
      if (!v81)
      {
        goto LABEL_195;
      }

      if (v7 && v205 != v204)
      {
        OUTLINED_FUNCTION_37_3();
        v208 = v206 + v207;
        v210 = v209 + v207;
        v212 = *(v211 + 72);
        while (1)
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_224();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_307();
          sub_1C87E45D0();
          v213 = OUTLINED_FUNCTION_97();
          v215 = static Siri_Nlu_Internal_Token.== infix(_:_:)(v213, v214);
          sub_1C87E4624();
          OUTLINED_FUNCTION_239();
          sub_1C87E4624();
          if ((v215 & 1) == 0)
          {
            break;
          }

          v210 += v212;
          v208 += v212;
          if (!--v7)
          {
            goto LABEL_170;
          }
        }

LABEL_195:
        sub_1C87E4624();
        OUTLINED_FUNCTION_147();
        sub_1C87E4624();
        goto LABEL_196;
      }

LABEL_170:
      OUTLINED_FUNCTION_286(v3 + v246[7]);
      if (v218)
      {
        if (!v216)
        {
          goto LABEL_195;
        }

        OUTLINED_FUNCTION_35(v217);
        v221 = v81 && v219 == v220;
        if (!v221 && (sub_1C8BD529C() & 1) == 0)
        {
          goto LABEL_195;
        }
      }

      else if (v216)
      {
        goto LABEL_195;
      }

      v222 = v246[8];
      v223 = *(v3 + v222);
      OUTLINED_FUNCTION_214(v222);
      if (v81)
      {
        if (v224 != 2)
        {
          goto LABEL_195;
        }
      }

      else if (v224 == 2 || ((v225 ^ v224) & 1) != 0)
      {
        goto LABEL_195;
      }

      OUTLINED_FUNCTION_288(v246[9]);
      if (v227)
      {
        if (!v226)
        {
          goto LABEL_195;
        }
      }

      else
      {
        OUTLINED_FUNCTION_61_0();
        if (v228)
        {
          goto LABEL_195;
        }
      }

      OUTLINED_FUNCTION_282(v246);
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v229);
      v230 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_262_0();
      sub_1C87E4624();
      if (v230)
      {
        v56 = v243 + 1;
        if (v243 + 1 != v245)
        {
          continue;
        }
      }

      goto LABEL_196;
    }

    __break(1u);
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
  }

  else
  {
LABEL_196:
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87E222C()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_67_0();
  v4 = sub_1C8BD493C();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v12 = OUTLINED_FUNCTION_80(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_0();
  v63 = v15;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_96();
  v59 = v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  v18 = OUTLINED_FUNCTION_21(v65);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_0();
  v62 = v21;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_206_0();
  v64 = type metadata accessor for Siri_Nlu_External_RRAnnotation(0);
  v23 = OUTLINED_FUNCTION_7_2(v64);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_69_0();
  v28 = *(v1 + 16);
  if (v28 != *(v0 + 16) || !v28 || v1 == v0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_27_2(v27);
  v30 = v1 + v29;
  v31 = v0 + v29;
  v57 = v3;
  v58 = (v7 + 8);
  v55 = *(v32 + 72);
  v56 = (v7 + 32);
  v60 = v4;
  while (1)
  {
    OUTLINED_FUNCTION_106();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_316();
    sub_1C87E45D0();
    v33 = *(v64 + 20);
    v34 = *(v65 + 48);
    sub_1C8786744(v3 + v33, v2, &qword_1EC2B6110, &qword_1C8BF5070);
    v35 = v4 + v33;
    v4 = v60;
    OUTLINED_FUNCTION_272(v35, v2 + v34);
    OUTLINED_FUNCTION_24(v2);
    if (v38)
    {
      OUTLINED_FUNCTION_24(v2 + v34);
      if (!v38)
      {
        goto LABEL_25;
      }

      v36 = OUTLINED_FUNCTION_200_0();
      sub_1C8778ED8(v36, v37, &qword_1C8BF5070);
    }

    else
    {
      OUTLINED_FUNCTION_272(v2, v59);
      OUTLINED_FUNCTION_24(v2 + v34);
      if (v38)
      {
        goto LABEL_24;
      }

      (*v56)(v61, v2 + v34, v60);
      OUTLINED_FUNCTION_59();
      sub_1C87E44D0(&qword_1EC2B6120, v39);
      OUTLINED_FUNCTION_239();
      v40 = sub_1C8BD517C();
      v41 = *v58;
      v3 = v57;
      (*v58)(v61, v60);
      v42 = OUTLINED_FUNCTION_237();
      (v41)(v42);
      sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
      if ((v40 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v43 = *(v64 + 24);
    v44 = *(v65 + 48);
    sub_1C8786744(v3 + v43, v62, &qword_1EC2B6110, &qword_1C8BF5070);
    OUTLINED_FUNCTION_272(v66 + v43, v62 + v44);
    OUTLINED_FUNCTION_24(v62);
    if (!v38)
    {
      break;
    }

    OUTLINED_FUNCTION_24(v62 + v44);
    if (!v38)
    {
      v2 = v62;
      goto LABEL_25;
    }

    sub_1C8778ED8(v62, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_19:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v50);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_316();
    v51 = sub_1C8BD517C();
    sub_1C87E4624();
    sub_1C87E4624();
    if (v51)
    {
      v31 += v55;
      v30 += v55;
      if (--v28)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_272(v62, v63);
  OUTLINED_FUNCTION_24(v62 + v44);
  if (!v45)
  {
    (*v56)(v61, v62 + v44, v60);
    OUTLINED_FUNCTION_59();
    sub_1C87E44D0(&qword_1EC2B6120, v46);
    OUTLINED_FUNCTION_223_1();
    v47 = sub_1C8BD517C();
    v48 = *v58;
    v3 = v57;
    (*v58)(v61, v60);
    v49 = OUTLINED_FUNCTION_191();
    v48(v49);
    sub_1C8778ED8(v62, &qword_1EC2B6110, &qword_1C8BF5070);
    if ((v47 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v2 = v62;
LABEL_24:
  v52 = *v58;
  v53 = OUTLINED_FUNCTION_118();
  v54(v53);
LABEL_25:
  sub_1C8778ED8(v2, &qword_1EC2B6118, &qword_1C8BE6DC0);
LABEL_26:
  sub_1C87E4624();
  OUTLINED_FUNCTION_147();
  sub_1C87E4624();
LABEL_27:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87E27F4()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_62();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category(v5);
  v7 = OUTLINED_FUNCTION_7_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_14(v11);
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      v12 = *v2 == *v1 && v2[1] == v1[1];
      if (!v12 && (sub_1C8BD529C() & 1) == 0)
      {
        break;
      }

      v13 = *(v6 + 24);
      OUTLINED_FUNCTION_23_1();
      if (v16)
      {
        if (!v14)
        {
          break;
        }

        OUTLINED_FUNCTION_35(v15);
        v19 = v12 && v17 == v18;
        if (!v19 && (sub_1C8BD529C() & 1) == 0)
        {
          break;
        }
      }

      else if (v14)
      {
        break;
      }

      v20 = *(v6 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v21);
      v22 = OUTLINED_FUNCTION_324();
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v22)
      {
        OUTLINED_FUNCTION_22();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    sub_1C87E4624();
    OUTLINED_FUNCTION_121();
    sub_1C87E4624();
  }

LABEL_26:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87E29E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 16)
    {
      v5 = *(v3 - 1);
      if (*v3 == 1)
      {
        v5 = qword_1C8BE6EF0[v5];
      }

      v6 = *(i - 1);
      if (*i)
      {
        switch(v6)
        {
          case 1:
            if (v5 != 1)
            {
              return OUTLINED_FUNCTION_189_0();
            }

            goto LABEL_12;
          case 2:
            if (v5 != 2)
            {
              return OUTLINED_FUNCTION_189_0();
            }

            goto LABEL_12;
          case 3:
            if (v5 != 4)
            {
              return OUTLINED_FUNCTION_189_0();
            }

            goto LABEL_12;
          case 4:
            if (v5 != 8)
            {
              return OUTLINED_FUNCTION_189_0();
            }

            goto LABEL_12;
          case 5:
            if (v5 != 16)
            {
              return OUTLINED_FUNCTION_189_0();
            }

            goto LABEL_12;
          case 6:
            if (v5 != 32)
            {
              return OUTLINED_FUNCTION_189_0();
            }

            goto LABEL_12;
          case 7:
            if (v5 != 64)
            {
              return OUTLINED_FUNCTION_189_0();
            }

            goto LABEL_12;
          default:
            if (v5)
            {
              return OUTLINED_FUNCTION_189_0();
            }

            goto LABEL_12;
        }
      }

      if (v5 != v6)
      {
        break;
      }

LABEL_12:
      v3 += 16;
      if (!--v2)
      {
        return OUTLINED_FUNCTION_188();
      }
    }

    return OUTLINED_FUNCTION_189_0();
  }

  return OUTLINED_FUNCTION_188();
}

void sub_1C87E2E4C()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_62();
  v6 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v5);
  v7 = OUTLINED_FUNCTION_7_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  if (v12 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_14(v11);
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_44_0(*(v6 + 20));
      if (v14)
      {
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v15)
        {
          goto LABEL_19;
        }
      }

      v16 = *(v6 + 24);
      v17 = *(v2 + v16);
      v18 = *(v1 + v16);
      if (v17 == 4)
      {
        if (v18 != 4)
        {
          goto LABEL_19;
        }
      }

      else if (v17 != v18)
      {
LABEL_19:
        sub_1C87E4624();
        OUTLINED_FUNCTION_121();
        sub_1C87E4624();
        break;
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v19);
      v20 = OUTLINED_FUNCTION_93_0();
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v20)
      {
        OUTLINED_FUNCTION_22();
        if (!v12)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87E3028(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_188();
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

void sub_1C87E30D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = OUTLINED_FUNCTION_241();
  v28 = type metadata accessor for Siri_Nlu_External_TurnInput(v27);
  v29 = OUTLINED_FUNCTION_21(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_33();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_211();
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21(v187);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v176 - v42;
  v195 = type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  v44 = OUTLINED_FUNCTION_13_1(v195);
  v186 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_34();
  v50 = v48 - v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_90_0();
  v52 = type metadata accessor for Siri_Nlu_Internal_Token();
  v53 = OUTLINED_FUNCTION_105(v52);
  v185 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_10_0();
  v193 = v57;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_89();
  v190 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v59 = OUTLINED_FUNCTION_21(v190);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_81();
  v192 = v67;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21(v188);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_81();
  v189 = v71;
  v72 = OUTLINED_FUNCTION_86();
  v194 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v72);
  v73 = OUTLINED_FUNCTION_7_2(v194);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_20_1();
  v197 = v76;
  OUTLINED_FUNCTION_111();
  v78 = MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_317(v78, v79, v80, v81, v82, v83, v84, v85, v176[0]);
  v86 = *(v20 + 16);
  OUTLINED_FUNCTION_256();
  if (v100 && v88 && v20 != v26)
  {
    v180 = v43;
    v177 = v21;
    v176[1] = v34;
    v89 = 0;
    OUTLINED_FUNCTION_27_2(v87);
    v181 = v28;
    v182 = v26 + v90;
    v92 = *(v91 + 72);
    v93 = v196;
    v184 = v94;
    v178 = v92;
    v179 = v20 + v90;
    while (1)
    {
      OUTLINED_FUNCTION_139();
      sub_1C87E45D0();
      if (v89 == v184)
      {
        break;
      }

      v183 = v89;
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_276();
      OUTLINED_FUNCTION_198(v93 + v194[6]);
      if (v97)
      {
        if (!v95)
        {
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_35(v96);
        v100 = v100 && v98 == v99;
        if (!v100 && (sub_1C8BD529C() & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      else if (v95)
      {
        goto LABEL_72;
      }

      v101 = v194[7];
      v102 = v189;
      v103 = *(v188 + 48);
      v104 = OUTLINED_FUNCTION_235_0();
      sub_1C8786744(v104, v102, &qword_1EC2B6048, &unk_1C8BE6F80);
      OUTLINED_FUNCTION_329(v197 + v101, v102 + v103);
      v105 = OUTLINED_FUNCTION_109();
      v106 = v190;
      OUTLINED_FUNCTION_41_2(v105, v107);
      if (v100)
      {
        OUTLINED_FUNCTION_19(v102 + v103);
        if (!v100)
        {
          goto LABEL_75;
        }

        v108 = OUTLINED_FUNCTION_299_0();
        sub_1C8778ED8(v108, v109, &unk_1C8BE6F80);
      }

      else
      {
        v110 = v192;
        OUTLINED_FUNCTION_329(v102, v192);
        OUTLINED_FUNCTION_19(v102 + v103);
        if (v111)
        {
          sub_1C87E4624();
LABEL_75:
          v173 = &qword_1EC2B6050;
          v174 = &qword_1C8BE6D00;
          v175 = v102;
          goto LABEL_70;
        }

        sub_1C87E4518();
        OUTLINED_FUNCTION_198(v110 + *(v106 + 24));
        if (v114)
        {
          if (!v112)
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_35(v113);
          v117 = v100 && v115 == v116;
          if (!v117 && (sub_1C8BD529C() & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (v112)
        {
          goto LABEL_69;
        }

        v118 = *(v190 + 28);
        OUTLINED_FUNCTION_205(v192);
        if (v121)
        {
          if (!v119)
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_35(v120);
          v124 = v100 && v122 == v123;
          if (!v124 && (sub_1C8BD529C() & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (v119)
        {
          goto LABEL_69;
        }

        OUTLINED_FUNCTION_236(v191);
        v127 = *(v126 + 16);
        if (v127 != *(v125 + 16))
        {
          goto LABEL_69;
        }

        if (v127 && v126 != v125)
        {
          OUTLINED_FUNCTION_39_0();
          v130 = v128 + v129;
          v132 = v131 + v129;
          v134 = *(v133 + 72);
          while (1)
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_312();
            sub_1C87E45D0();
            OUTLINED_FUNCTION_3();
            sub_1C87E45D0();
            v135 = OUTLINED_FUNCTION_268();
            v137 = static Siri_Nlu_Internal_Token.== infix(_:_:)(v135, v136);
            sub_1C87E4624();
            OUTLINED_FUNCTION_106();
            sub_1C87E4624();
            if ((v137 & 1) == 0)
            {
              break;
            }

            v132 += v134;
            v130 += v134;
            if (!--v127)
            {
              goto LABEL_46;
            }
          }

LABEL_69:
          sub_1C87E4624();
          sub_1C87E4624();
          v173 = &qword_1EC2B6048;
          v174 = &unk_1C8BE6F80;
          v175 = v189;
LABEL_70:
          sub_1C8778ED8(v175, v173, v174);
LABEL_72:
          sub_1C87E4624();
          sub_1C87E4624();
          goto LABEL_73;
        }

LABEL_46:
        OUTLINED_FUNCTION_255(v190);
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v138);
        v102 = v192;
        v139 = OUTLINED_FUNCTION_274();
        sub_1C87E4624();
        OUTLINED_FUNCTION_300();
        sub_1C87E4624();
        sub_1C8778ED8(v189, &qword_1EC2B6048, &unk_1C8BE6F80);
        if ((v139 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      OUTLINED_FUNCTION_236(v197);
      OUTLINED_FUNCTION_246_0(v140);
      if (!v100)
      {
        goto LABEL_72;
      }

      if (v102 && v142 != v141)
      {
        OUTLINED_FUNCTION_39_0();
        v145 = v143 + v144;
        v147 = v146 + v144;
        v149 = *(v148 + 72);
        while (1)
        {
          OUTLINED_FUNCTION_5_1();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_5_1();
          sub_1C87E45D0();
          v150 = *(v195 + 20);
          v151 = *(v22 + v150);
          if (v151 != *(v50 + v150))
          {
            v152 = *(v22 + v150);

            OUTLINED_FUNCTION_216();
            sub_1C89FBAF0();
            v154 = v153;

            if ((v154 & 1) == 0)
            {
              break;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v155);
          OUTLINED_FUNCTION_326();
          OUTLINED_FUNCTION_51_2();
          sub_1C87E4624();
          sub_1C87E4624();
          if ((v151 & 1) == 0)
          {
            goto LABEL_72;
          }

          v147 += v149;
          v145 += v149;
          if (!--v102)
          {
            goto LABEL_56;
          }
        }

        OUTLINED_FUNCTION_56();
        sub_1C87E4624();
        OUTLINED_FUNCTION_191();
        sub_1C87E4624();
        goto LABEL_72;
      }

LABEL_56:
      v156 = v194[8];
      v157 = *(v187 + 48);
      v158 = OUTLINED_FUNCTION_235_0();
      v159 = v180;
      sub_1C8786744(v158, v180, &qword_1EC2B6038, &unk_1C8BE8850);
      sub_1C8786744(v197 + v156, v159 + v157, &qword_1EC2B6038, &unk_1C8BE8850);
      v160 = v181;
      OUTLINED_FUNCTION_41_2(v159, 1);
      if (v100)
      {
        OUTLINED_FUNCTION_19(v159 + v157);
        if (!v100)
        {
          goto LABEL_77;
        }

        v161 = OUTLINED_FUNCTION_107_0();
        sub_1C8778ED8(v161, v162, &unk_1C8BE8850);
      }

      else
      {
        v163 = v177;
        sub_1C8786744(v159, v177, &qword_1EC2B6038, &unk_1C8BE8850);
        OUTLINED_FUNCTION_19(v159 + v157);
        if (v164)
        {
          OUTLINED_FUNCTION_152();
          sub_1C87E4624();
LABEL_77:
          v173 = &qword_1EC2B6040;
          v174 = &unk_1C8BE6CF0;
          goto LABEL_79;
        }

        OUTLINED_FUNCTION_154_0();
        OUTLINED_FUNCTION_110(&a18);
        sub_1C87E4518();
        v165 = *(v160 + 20);
        if (*(v163 + v165) != *(&qword_1EC2B6038 + v165))
        {
          v166 = *(v163 + v165);

          OUTLINED_FUNCTION_218();
          sub_1C88AD618();
          v168 = v167;

          if ((v168 & 1) == 0)
          {
            OUTLINED_FUNCTION_57();
            sub_1C87E4624();
            OUTLINED_FUNCTION_118();
            sub_1C87E4624();
            v173 = &qword_1EC2B6038;
            v174 = &unk_1C8BE8850;
LABEL_79:
            v175 = v159;
            goto LABEL_70;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v169);
        OUTLINED_FUNCTION_168_0();
        v170 = sub_1C8BD517C();
        sub_1C87E4624();
        OUTLINED_FUNCTION_300();
        sub_1C87E4624();
        sub_1C8778ED8(v159, &qword_1EC2B6038, &unk_1C8BE8850);
        if ((v170 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      OUTLINED_FUNCTION_255(v194);
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v171);
      v93 = v196;
      v172 = OUTLINED_FUNCTION_274();
      sub_1C87E4624();
      OUTLINED_FUNCTION_300();
      sub_1C87E4624();
      if (v172)
      {
        v89 = v183 + 1;
        if (v183 + 1 != v184)
        {
          continue;
        }
      }

      goto LABEL_73;
    }

    __break(1u);
  }

  else
  {
LABEL_73:
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87E3B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v27;
  a20 = v28;
  v29 = OUTLINED_FUNCTION_101();
  v30 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v29);
  v31 = OUTLINED_FUNCTION_21(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F98, &qword_1C8BE6C48);
  OUTLINED_FUNCTION_80(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_252();
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA0, &unk_1C8BE6C50);
  OUTLINED_FUNCTION_21(v157);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_81();
  v159 = v41;
  v42 = OUTLINED_FUNCTION_86();
  v160 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v42);
  v43 = OUTLINED_FUNCTION_21(v160);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_0();
  v164 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
  OUTLINED_FUNCTION_80(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_81();
  v161 = v51;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB0, &unk_1C8BE6C60);
  OUTLINED_FUNCTION_21(v162);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v54);
  v55 = OUTLINED_FUNCTION_210();
  v56 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v55);
  v57 = OUTLINED_FUNCTION_13_1(v56);
  v163 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_250();
  MEMORY[0x1EEE9AC00](v61);
  v63 = v141 - v62;
  v64 = type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(0);
  v65 = OUTLINED_FUNCTION_7_2(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_18_5();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_243_0();
  if (v85 && v71 && v23 != v20)
  {
    v155 = v69;
    OUTLINED_FUNCTION_27_2(v70);
    v146 = v30;
    v147 = v20 + v73;
    v75 = *(v74 + 72);
    v141[1] = v21;
    v142 = v24;
    v76 = v160;
    v156 = v25;
    v158 = v77;
    v154 = v78;
    v144 = v75;
    v145 = v23 + v73;
    while (1)
    {
      v79 = v72;
      OUTLINED_FUNCTION_327();
      v151 = v79;
      if (v79 == v154)
      {
        break;
      }

      sub_1C87E45D0();
      OUTLINED_FUNCTION_98(v20 + *(v155 + 24));
      if (v82)
      {
        if (!v80 || ((OUTLINED_FUNCTION_35(v81), v85) ? (v85 = v83 == v84) : (v85 = 0), !v85 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_80:
          sub_1C87E4624();
          sub_1C87E4624();
          goto LABEL_81;
        }
      }

      else if (v80)
      {
        goto LABEL_80;
      }

      v86 = *v158;
      v87 = *v156;
      v88 = *(*v158 + 16);
      if (v88 != *(*v156 + 16))
      {
        goto LABEL_80;
      }

      if (v88 && v86 != v87)
      {
        v89 = 0;
        OUTLINED_FUNCTION_71(v163);
        v152 = v87 + v90;
        v153 = v86 + v90;
        v143 = v56;
        v149 = v87;
        v150 = v86;
        v148 = v91;
        while (v89 < *(v86 + 16))
        {
          v92 = *(v163 + 72) * v89;
          OUTLINED_FUNCTION_185();
          OUTLINED_FUNCTION_330();
          if (v89 >= *(v87 + 16))
          {
            goto LABEL_83;
          }

          OUTLINED_FUNCTION_185();
          sub_1C87E45D0();
          v93 = v56[5];
          OUTLINED_FUNCTION_287();
          if (v96)
          {
            if (!v94)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_35(v95);
            v99 = v85 && v97 == v98;
            if (!v99 && (sub_1C8BD529C() & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          else if (v94)
          {
            goto LABEL_79;
          }

          v100 = v56[6];
          OUTLINED_FUNCTION_287();
          if (v103)
          {
            if (!v101)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_35(v102);
            v106 = v85 && v104 == v105;
            if (!v106 && (sub_1C8BD529C() & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          else if (v101)
          {
            goto LABEL_79;
          }

          v107 = v56[7];
          v108 = v63[v107];
          v109 = *(v22 + v107);
          if (v108 == 5)
          {
            if (v109 != 5)
            {
              goto LABEL_79;
            }
          }

          else if (v108 != v109)
          {
            goto LABEL_79;
          }

          v110 = v56[8];
          OUTLINED_FUNCTION_294();
          sub_1C8786744(&v63[v110], v26, &qword_1EC2B5FA8, &unk_1C8BEBC60);
          OUTLINED_FUNCTION_273(v22 + v110, v26 + v92);
          OUTLINED_FUNCTION_72(v26);
          if (v85)
          {
            OUTLINED_FUNCTION_72(v26 + v92);
            if (!v85)
            {
              goto LABEL_74;
            }

            v111 = OUTLINED_FUNCTION_223_1();
            sub_1C8778ED8(v111, v112, &unk_1C8BEBC60);
            v87 = v149;
            v86 = v150;
          }

          else
          {
            v113 = v161;
            OUTLINED_FUNCTION_273(v26, v161);
            OUTLINED_FUNCTION_72(v26 + v92);
            if (v114)
            {
              sub_1C87E4624();
LABEL_74:
              v139 = &qword_1EC2B5FB0;
              v140 = &unk_1C8BE6C60;
LABEL_78:
              sub_1C8778ED8(v26, v139, v140);
LABEL_79:
              sub_1C87E4624();
              sub_1C87E4624();
              goto LABEL_80;
            }

            v115 = v164;
            sub_1C87E4518();
            v116 = v76[5];
            v117 = *(v113 + v116);
            v118 = *(v115 + v116);
            if (v117 == 5)
            {
              v119 = v118 == 5;
            }

            else
            {
              v119 = v117 == v118;
            }

            if (!v119)
            {
              goto LABEL_77;
            }

            v120 = v76[6];
            v121 = *(v113 + v120);
            v122 = *(v164 + v120);
            if (v121 == 3)
            {
              if (v122 != 3)
              {
                goto LABEL_77;
              }
            }

            else if (v121 != v122)
            {
              goto LABEL_77;
            }

            v123 = v113;
            v124 = v76[7];
            v125 = *(v157 + 48);
            v126 = v159;
            sub_1C8786744(v123 + v124, v159, &qword_1EC2B5F98, &qword_1C8BE6C48);
            sub_1C8786744(v164 + v124, v126 + v125, &qword_1EC2B5F98, &qword_1C8BE6C48);
            v127 = OUTLINED_FUNCTION_109();
            v128 = v146;
            OUTLINED_FUNCTION_76(v127, v129, v146);
            if (v85)
            {
              OUTLINED_FUNCTION_76(v126 + v125, 1, v128);
              v130 = v126;
              if (!v85)
              {
                goto LABEL_76;
              }

              sub_1C8778ED8(v126, &qword_1EC2B5F98, &qword_1C8BE6C48);
              v56 = v143;
            }

            else
            {
              sub_1C8786744(v126, v142, &qword_1EC2B5F98, &qword_1C8BE6C48);
              OUTLINED_FUNCTION_76(v126 + v125, 1, v128);
              if (v131)
              {
                sub_1C87E4624();
                v130 = v126;
LABEL_76:
                sub_1C8778ED8(v130, &qword_1EC2B5FA0, &unk_1C8BE6C50);
LABEL_77:
                sub_1C87E4624();
                OUTLINED_FUNCTION_119_0();
                sub_1C87E4624();
                v139 = &qword_1EC2B5FA8;
                v140 = &unk_1C8BEBC60;
                goto LABEL_78;
              }

              OUTLINED_FUNCTION_242_0();
              OUTLINED_FUNCTION_265(&a16);
              sub_1C87E4518();
              OUTLINED_FUNCTION_292();
              static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.== infix(_:_:)();
              v133 = v132;
              sub_1C87E4624();
              OUTLINED_FUNCTION_234();
              sub_1C87E4624();
              sub_1C8778ED8(v159, &qword_1EC2B5F98, &qword_1C8BE6C48);
              v56 = v143;
              if ((v133 & 1) == 0)
              {
                goto LABEL_77;
              }
            }

            sub_1C8BD49FC();
            OUTLINED_FUNCTION_0_2();
            sub_1C87E44D0(&qword_1EC2B2F70, v134);
            OUTLINED_FUNCTION_217();
            v135 = sub_1C8BD517C();
            sub_1C87E4624();
            v76 = v160;
            sub_1C87E4624();
            sub_1C8778ED8(v26, &qword_1EC2B5FA8, &unk_1C8BEBC60);
            v87 = v149;
            v86 = v150;
            if ((v135 & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v136);
          OUTLINED_FUNCTION_311();
          v137 = sub_1C8BD517C();
          sub_1C87E4624();
          sub_1C87E4624();
          if ((v137 & 1) == 0)
          {
            goto LABEL_80;
          }

          if (v148 == ++v89)
          {
            goto LABEL_69;
          }
        }

        __break(1u);
LABEL_83:
        __break(1u);
        break;
      }

LABEL_69:
      OUTLINED_FUNCTION_255(v155);
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v138);
      v20 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_234();
      sub_1C87E4624();
      if (v20)
      {
        v72 = v151 + 1;
        if (v151 + 1 != v154)
        {
          continue;
        }
      }

      goto LABEL_81;
    }

    __break(1u);
  }

  else
  {
LABEL_81:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

uint64_t sub_1C87E4490(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C87E44A8();
  }

  return result;
}

uint64_t sub_1C87E44B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C87E44C8();
  }

  return result;
}

uint64_t sub_1C87E44D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C87E4518()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
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

uint64_t sub_1C87E45D0()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C87E4624()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_93_0()
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_95()
{
  v2 = *(v0 - 128);

  return sub_1C87E4518();
}

uint64_t OUTLINED_FUNCTION_225()
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_226_0()
{

  return sub_1C8BD517C();
}

void OUTLINED_FUNCTION_269()
{
  v3 = *(*(v2 - 96) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
}

uint64_t OUTLINED_FUNCTION_272(uint64_t a1, uint64_t a2)
{

  return sub_1C8786744(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_274()
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_275()
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_276()
{
  v2 = *(v0 - 96);

  return sub_1C87E45D0();
}

uint64_t OUTLINED_FUNCTION_278(uint64_t a1, uint64_t a2)
{

  return sub_1C8786744(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_279()
{

  return sub_1C87E4624();
}

uint64_t OUTLINED_FUNCTION_280(uint64_t a1, uint64_t a2)
{

  return sub_1C8786744(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_281(uint64_t a1, uint64_t a2)
{

  return sub_1C8786744(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_282@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 24);

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_283()
{
}

void OUTLINED_FUNCTION_308()
{
  v1 = *(v0 - 208);
  v2 = *(v0 - 232);
  v3 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_322()
{
  v2 = *(*(v0 - 352) + 32);

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_323()
{

  return sub_1C8786744(v4, v3 + v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_326()
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_327()
{

  return sub_1C87E45D0();
}

uint64_t OUTLINED_FUNCTION_328_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C87E4624();
}

uint64_t OUTLINED_FUNCTION_329(uint64_t a1, uint64_t a2)
{

  return sub_1C8786744(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_330()
{

  return sub_1C87E45D0();
}

uint64_t OUTLINED_FUNCTION_331(uint64_t a1, uint64_t a2)
{

  return sub_1C8786744(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_332(uint64_t a1, uint64_t a2)
{

  return sub_1C8786744(a1, a2, v2, v3);
}

uint64_t static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v50 - v6;
  v50 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v7 = OUTLINED_FUNCTION_21(v50);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v53 = (v11 - v10);
  v12 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  v51 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v19 = OUTLINED_FUNCTION_80(v18);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - v25;
  v27 = *(a1 + *(type metadata accessor for Siri_Nlu_External_UserDialogAct(0) + 20));
  swift_beginAccess();
  sub_1C8778810();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v12);
  sub_1C8778ED8(v26, &unk_1EC2B61D8, &unk_1C8BF4FD0);
  v29 = MEMORY[0x1E69E7CC0];
  if (EnumTagSinglePayload != 1)
  {
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v24, 1, v12) == 1)
    {
      v30 = v51;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v31 = *(v12 + 20);
      OUTLINED_FUNCTION_5();
      v32 = v50;
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v50);
      v36 = __swift_getEnumTagSinglePayload(v24, 1, v12);
      v37 = v54;
      v39 = v52;
      v38 = v53;
      if (v36 != 1)
      {
        sub_1C8778ED8(v24, &unk_1EC2B61D8, &unk_1C8BF4FD0);
      }
    }

    else
    {
      v30 = v51;
      sub_1C87E66B8();
      v37 = v54;
      v39 = v52;
      v38 = v53;
      v32 = v50;
    }

    v40 = *(v12 + 20);
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v39, 1, v32) == 1)
    {
      *v38 = v29;
      v38[1] = v29;
      v38[2] = v29;
      v38[3] = v29;
      v38[4] = v29;
      v41 = v38 + *(v32 + 36);
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v42 = *(v32 + 40);
      type metadata accessor for Siri_Nlu_External_SemVer();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
      if (__swift_getEnumTagSinglePayload(v39, 1, v32) != 1)
      {
        sub_1C8778ED8(v39, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      }
    }

    else
    {
      sub_1C87E66B8();
    }

    sub_1C87E6710(v30, type metadata accessor for Siri_Nlu_External_UserStatedTask);
    type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
    swift_initStackObject();
    sub_1C87A5614(v38);
    v48 = v47;
    sub_1C87E6710(v38, type metadata accessor for Siri_Nlu_External_UsoGraph);
    if (!v37)
    {
      v29 = MEMORY[0x1CCA7D450](v48);
    }
  }

  return v29;
}

uint64_t static ConversionUtils.convertProtoToUuid(protoUuid:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61E8, &qword_1C8BE6F40);
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_3_0();
  sub_1C87A4A08(v6, v7);
  sub_1C8BD4CCC();
  v13 = objc_allocWithZone(SIRINLUEXTERNALUUID);
  v14 = sub_1C87E6648();
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() convertUUID_];
    if (v16)
    {
      v17 = v16;
      sub_1C8BD403C();

      v18 = sub_1C8BD404C();
      v19 = 0;
    }

    else
    {

      v18 = sub_1C8BD404C();
      v19 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v19, 1, v18);
    OUTLINED_FUNCTION_121();
    return sub_1C87791EC();
  }

  else
  {
    sub_1C8BD404C();
    OUTLINED_FUNCTION_5();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

id static ConversionUtils.toLegacyPreferredUserDialogAct(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61F0, &qword_1C8BF50B0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20[-v7];
  sub_1C87E585C(a1, &v20[-v7]);
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &unk_1EC2B61F0, &qword_1C8BF50B0);
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
    sub_1C87A4A08(v10, v11);
    v12 = OUTLINED_FUNCTION_8_2();
    if (!v1)
    {
      v16 = v12;
      v17 = v13;
      OUTLINED_FUNCTION_6_2();
      v18 = objc_allocWithZone(SIRINLUEXTERNALUserDialogAct);
      sub_1C87A8FBC(v16, v17);
      v19 = sub_1C87E6648();
      v14 = [objc_opt_self() convertUserDialogAct_];
      sub_1C87A997C(v16, v17);

      return v14;
    }

    OUTLINED_FUNCTION_6_2();
  }

  return 0;
}

uint64_t sub_1C87E585C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v41 - v8;
  v45 = type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v45);
  v42 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v41[1] = v41 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v41[0] = v41 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v41 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v41[3] = v41 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v41[2] = v41 - v24;
  v25 = 0;
  v26 = *a1;
  v27 = *(v26 + 16);
  while (1)
  {
    v28 = *(v26 + 16);
    if (v27 == v25)
    {
      v33 = 0;
      for (i = v42; ; result = sub_1C87E6710(i, type metadata accessor for Siri_Nlu_External_UserDialogAct))
      {
        if (v28 == v33)
        {
          return sub_1C87E5D38(v26, v43);
        }

        if (v33 >= *(v26 + 16))
        {
          goto LABEL_17;
        }

        v35 = v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v36 = *(v10 + 72);
        sub_1C87E6868();
        v37 = *(i + *(v45 + 20));
        swift_beginAccess();
        v38 = v44;
        sub_1C8778810();
        v39 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
        if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
        {
          break;
        }

        ++v33;
        sub_1C8778ED8(v38, &unk_1EC2B61D8, &unk_1C8BF4FD0);
      }

      sub_1C8778ED8(v38, &unk_1EC2B61D8, &unk_1C8BF4FD0);
      sub_1C87E66B8();
      goto LABEL_14;
    }

    if (v25 >= v28)
    {
      break;
    }

    v29 = v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v30 = *(v10 + 72);
    sub_1C87E6868();
    v31 = *&v20[*(v45 + 20)];
    swift_beginAccess();
    sub_1C8778810();
    v32 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v32) != 1)
    {
      sub_1C8778ED8(v9, &unk_1EC2B6330, &unk_1C8BF4FE0);
      sub_1C87E66B8();
LABEL_14:
      sub_1C87E66B8();
      v40 = v43;
      sub_1C87E66B8();
      return __swift_storeEnumTagSinglePayload(v40, 0, 1, v45);
    }

    ++v25;
    sub_1C8778ED8(v9, &unk_1EC2B6330, &unk_1C8BF4FE0);
    result = sub_1C87E6710(v20, type metadata accessor for Siri_Nlu_External_UserDialogAct);
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C87E5D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  v5 = v4;
  if (v3)
  {
    v6 = *(*(v4 - 8) + 80);
    sub_1C87E6868();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v5);
}

uint64_t static ConversionUtils.toUserParse(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v8 = (v7 - v6);
  v9 = sub_1C8BD4AAC();
  v10 = OUTLINED_FUNCTION_80(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v15 = (v14 - v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61F0, &qword_1C8BF50B0);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  v22 = type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  v68 = *(v22 - 8);
  v23 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v72 = &unk_1F4897A00;
  v73 = &unk_1F48A9308;
  v24 = swift_dynamicCastObjCProtocolConditional();
  if (v24)
  {
    swift_unknownObjectRetain();
  }

  v25 = [objc_opt_self() convertFromUserDialogAct_];
  if (!v25 || (sub_1C87A458C(v25), OUTLINED_FUNCTION_13_5(), !v29 & v28))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = v26;
    v31 = v27;
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    sub_1C87A8FBC(v26, v27);
    sub_1C8BD4A9C();
    OUTLINED_FUNCTION_4_3();
    sub_1C87A4A08(v32, v33);
    OUTLINED_FUNCTION_14_0();
    if (!v15)
    {
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
      sub_1C87E66B8();
      v41 = v8 + v2[5];
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v42 = v2[6];
      type metadata accessor for Siri_Nlu_External_UUID();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
      v47 = v8 + v2[7];
      *v47 = 0;
      v47[8] = 1;
      v48 = (v8 + v2[8]);
      *v48 = 0;
      v48[1] = 0;
      v49 = v2[9];
      type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
      v54 = v2[10];
      type metadata accessor for Siri_Nlu_External_Parser(0);
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
      v59 = v8 + v2[11];
      *v59 = 0;
      v59[8] = 1;
      v60 = v2[12];
      type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B62C0, &qword_1C8BE6F48);
      v65 = *(v68 + 72);
      v66 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1C8BE6F30;
      sub_1C87E66B8();
      sub_1C87A9A24(v30, v31);
      swift_unknownObjectRelease();
      *v8 = v67;
      sub_1C87E6868();
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
      return sub_1C87E6710(v8, type metadata accessor for Siri_Nlu_External_UserParse);
    }

    sub_1C87A9A24(v30, v31);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v22);
    sub_1C8778ED8(v21, &unk_1EC2B61F0, &qword_1C8BF50B0);
  }

  OUTLINED_FUNCTION_5();
  return __swift_storeEnumTagSinglePayload(v37, v38, v39, v2);
}

id static ConversionUtils.toLegacyUserParse(from:)()
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C87A4A08(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse);
  OUTLINED_FUNCTION_8_2();
  if (v0)
  {
  }

  else
  {
    v2 = objc_allocWithZone(SIRINLUEXTERNALUserParse);
    OUTLINED_FUNCTION_218();
    v3 = sub_1C87E6648();
    if (v3)
    {
      v4 = v3;
      v1 = [objc_opt_self() convertUserParse_];

      return v1;
    }
  }

  return 0;
}

id static ConversionUtils.toLegacySystemDialogAct(from:)()
{
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  OUTLINED_FUNCTION_2_4();
  sub_1C87A4A08(v1, v2);
  OUTLINED_FUNCTION_8_2();
  if (v0)
  {
  }

  else
  {
    v4 = objc_allocWithZone(SIRINLUEXTERNALSystemDialogAct);
    v5 = OUTLINED_FUNCTION_121();
    sub_1C87A8FBC(v5, v6);
    OUTLINED_FUNCTION_121();
    v7 = sub_1C87E6648();
    if (v7)
    {
      v8 = v7;
      v3 = [objc_opt_self() convertSystemDialogAct_];
      v9 = OUTLINED_FUNCTION_121();
      sub_1C87A997C(v9, v10);

      return v3;
    }

    v12 = OUTLINED_FUNCTION_121();
    sub_1C87A997C(v12, v13);
  }

  return 0;
}

void static ConversionUtils.toSystemDialogAct(from:)(uint64_t a1@<X8>)
{
  v2 = sub_1C8BD4AAC();
  v3 = OUTLINED_FUNCTION_80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE0, &unk_1C8C102D0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29[-v13];
  v15 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v31 = &unk_1F4897A00;
  v32 = &unk_1F48A9408;
  v19 = swift_dynamicCastObjCProtocolConditional();
  if (v19)
  {
    v20 = v19;
    v21 = objc_opt_self();
    swift_unknownObjectRetain();
    v22 = [v21 convertFromSystemDialogAct_];
    if (v22)
    {
      v23 = v22;
      sub_1C87A458C(v23);
      OUTLINED_FUNCTION_13_5();
      if (!v25 & v24)
      {
        __break(1u);
      }

      else
      {
        v30 = 0;
        memset(&v29[16], 0, 32);
        sub_1C8BD4A9C();
        OUTLINED_FUNCTION_2_4();
        sub_1C87A4A08(v26, v27);
        OUTLINED_FUNCTION_14_0();
        if (v8)
        {

          swift_unknownObjectRelease();
          sub_1C8778ED8(a1, &qword_1EC2B5FE0, &unk_1C8C102D0);
          v28 = 1;
        }

        else
        {
          sub_1C8778ED8(a1, &qword_1EC2B5FE0, &unk_1C8C102D0);

          swift_unknownObjectRelease();
          v28 = 0;
        }

        __swift_storeEnumTagSinglePayload(v14, v28, 1, v15);
        sub_1C87791EC();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_1C87E6648()
{
  OUTLINED_FUNCTION_13_5();
  if (!v4 & v3)
  {
    v7 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v1;
    v7 = sub_1C8BD3FEC();
    sub_1C87A9A24(v6, v5);
  }

  v8 = [v0 initWithData_];

  return v8;
}

uint64_t sub_1C87E66B8()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t sub_1C87E6710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConversionUtils(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ConversionUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C87E6868()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_7_3();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 20));
  sub_1C8786744(v8, v9, &qword_1EC2B6048, &unk_1C8BE6F80);
  v10 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v11 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v11, v12, v10);
  if (v13)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v14 = a1 + v10[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = (a1 + v10[6]);
    *v15 = 0;
    v15[1] = 0;
    v16 = (a1 + v10[7]);
    *v16 = 0;
    v16[1] = 0;
    v17 = OUTLINED_FUNCTION_120();
    result = OUTLINED_FUNCTION_76(v17, v18, v10);
    if (!v13)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    v19 = OUTLINED_FUNCTION_121();
    return sub_1C87976F8(v19, v20);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.tokenChain.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 20);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_1_3();
  sub_1C87976F8(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse()
{
  result = qword_1EC2B44A8;
  if (!qword_1EC2B44A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*Siri_Nlu_Internal_Tokenizer_TokenizerResponse.tokenChain.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 20);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_13(v11);
  sub_1C8786744(v12, v13, &qword_1EC2B6048, &unk_1C8BE6F80);
  v14 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v17 = v10 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = (v10 + v7[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v10 + v7[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v20, v21, v7);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    sub_1C87976F8(v6, v10);
  }

  return sub_1C87E6C20;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.hasTokenChain.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_7_3();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 20));
  sub_1C8786744(v5, v6, &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &unk_1C8BE6F80);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Tokenizer_TokenizerResponse.clearTokenChain()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.text.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C87E6DA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Tokenizer_TokenizerResponse.text.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Tokenizer_TokenizerResponse.text.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 24);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

void sub_1C87E6EC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Siri_Nlu_Internal_Tokenizer_TokenizerResponse.clearText()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_7_3();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 28));
  sub_1C8786744(v8, v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  v11 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v11, v12, v10);
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v10[5]);
    OUTLINED_FUNCTION_313(a1 + v10[6]);
    *(a1 + v10[7]) = 6;
    v14 = OUTLINED_FUNCTION_120();
    result = OUTLINED_FUNCTION_76(v14, v15, v10);
    if (!v13)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_5();
    v16 = OUTLINED_FUNCTION_121();
    return sub_1C87976F8(v16, v17);
  }

  return result;
}

uint64_t sub_1C87E70C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1C87E749C(a1, &v16 - v13);
  return a7(v14);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.asrID.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 28);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_2_5();
  sub_1C87976F8(v0, v1 + v2);
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Tokenizer_TokenizerResponse.asrID.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 28);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_13(v11);
  sub_1C8786744(v12, v13, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v14 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    v17 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v17, v18, v7);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_5();
    sub_1C87976F8(v6, v10);
  }

  return sub_1C87E7368;
}

void sub_1C87E7390(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    sub_1C87E749C((*a1)[4], v8);
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C87976F8(v8, v12 + v7);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
    sub_1C87E74F4();
  }

  else
  {
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C87976F8(v9, v12 + v7);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_1C87E749C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

uint64_t sub_1C87E74F4()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.hasAsrID.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_7_3();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 28));
  sub_1C8786744(v5, v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &unk_1C8BE68C0);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Tokenizer_TokenizerResponse.clearAsrID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  v3 = v2[5];
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (a1 + v2[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v2[7];
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1C87E77D0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B44C8);
  __swift_project_value_buffer(v0, qword_1EC2B44C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token_chain";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "asrId";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Tokenizer_TokenizerResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B44C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B44C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C87E7C30();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C87E7BCC();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C87E7B18();
        break;
    }
  }

  return result;
}

uint64_t sub_1C87E7B18()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 20);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C87A4A50(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87E7C30()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse() + 28);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C87A4A50(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v40 = a3;
  v38 = a1;
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v34 - v10;
  v37 = type metadata accessor for Siri_Nlu_External_UUID();
  v11 = OUTLINED_FUNCTION_21(v37);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v35 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v22 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v23 = OUTLINED_FUNCTION_21(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_33();
  v28 = v27 - v26;
  v29 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  sub_1C8786744(v5 + v29[5], v21, &qword_1EC2B6048, &unk_1C8BE6F80);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1C8778ED8(v21, &qword_1EC2B6048, &unk_1C8BE6F80);
  }

  else
  {
    sub_1C87976F8(v21, v28);
    sub_1C87A4A50(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    sub_1C8BD4E2C();
    result = sub_1C87E74F4();
    if (v4)
    {
      return result;
    }
  }

  v31 = (v5 + v29[6]);
  if (!v31[1] || (v32 = *v31, result = sub_1C8BD4DDC(), !v4))
  {
    v33 = v36;
    sub_1C8786744(v5 + v29[7], v36, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v33, 1, v37) == 1)
    {
      sub_1C8778ED8(v33, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }

    else
    {
      sub_1C87976F8(v33, v35);
      sub_1C87A4A50(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
      sub_1C8BD4E2C();
      result = sub_1C87E74F4();
      if (v4)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Tokenizer_TokenizerResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for Siri_Nlu_External_UUID();
  v4 = OUTLINED_FUNCTION_21(v65);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v62 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v61 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v64);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v61 - v17;
  v18 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v19 = OUTLINED_FUNCTION_21(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v61 - v29);
  v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00) - 8);
  v32 = *(*v31 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v61 - v34;
  v67 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  v68 = a1;
  v36 = *(v67 + 20);
  v37 = v31[14];
  sub_1C8786744(a1 + v36, v35, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8786744(a2 + v36, &v35[v37], &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_24(v35);
  if (v38)
  {
    OUTLINED_FUNCTION_24(&v35[v37]);
    if (v38)
    {
      sub_1C8778ED8(v35, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_14;
    }

LABEL_9:
    v39 = &qword_1EC2B6050;
    v40 = &qword_1C8BE6D00;
    v41 = v35;
LABEL_10:
    sub_1C8778ED8(v41, v39, v40);
    goto LABEL_11;
  }

  sub_1C8786744(v35, v30, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_24(&v35[v37]);
  if (v38)
  {
    sub_1C87E74F4();
    goto LABEL_9;
  }

  sub_1C87976F8(&v35[v37], v24);
  v44 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v30, v24);
  sub_1C87E74F4();
  sub_1C87E74F4();
  sub_1C8778ED8(v35, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v44 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v45 = v67;
  v46 = v68;
  v47 = *(v67 + 24);
  v48 = (v68 + v47);
  v49 = *(v68 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51)
    {
      goto LABEL_11;
    }

    v52 = *v48 == *v50 && v49 == v51;
    if (!v52 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v51)
  {
    goto LABEL_11;
  }

  v53 = *(v45 + 28);
  v54 = *(v64 + 48);
  v55 = v66;
  sub_1C8786744(v46 + v53, v66, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8786744(a2 + v53, v55 + v54, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_76(v55, 1, v65);
  if (v38)
  {
    OUTLINED_FUNCTION_24(v55 + v54);
    if (v38)
    {
      sub_1C8778ED8(v55, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_33:
      sub_1C8BD49FC();
      sub_1C87A4A50(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
      v42 = sub_1C8BD517C();
      return v42 & 1;
    }

    goto LABEL_31;
  }

  v56 = v63;
  sub_1C8786744(v55, v63, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_24(v55 + v54);
  if (v57)
  {
    sub_1C87E74F4();
LABEL_31:
    v39 = &qword_1EC2B5EE8;
    v40 = &unk_1C8BE6F90;
    v41 = v55;
    goto LABEL_10;
  }

  v58 = v55 + v54;
  v59 = v62;
  sub_1C87976F8(v58, v62);
  v60 = static Siri_Nlu_External_UUID.== infix(_:_:)(v56, v59);
  sub_1C87E74F4();
  sub_1C87E74F4();
  sub_1C8778ED8(v55, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (v60)
  {
    goto LABEL_33;
  }

LABEL_11:
  v42 = 0;
  return v42 & 1;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  sub_1C87A4A50(&qword_1EC2B6400, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87E86B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87A4A50(&qword_1EC2B6418, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87E8730(uint64_t a1)
{
  v2 = sub_1C87A4A50(&qword_1EC2B6408, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87E87A0()
{
  sub_1C87A4A50(&qword_1EC2B6408, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);

  return sub_1C8BD4CFC();
}

void sub_1C87E8968()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87E8AA4(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v1 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v2 <= 0x3F)
      {
        sub_1C87E8AA4(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C87E8A54()
{
  if (!qword_1EDACD3E8)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDACD3E8);
    }
  }
}

void sub_1C87E8AA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
}

uint64_t Siri_Nlu_External_RequestID.id.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_RequestID();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 20)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t type metadata accessor for Siri_Nlu_External_RequestID()
{
  result = qword_1EDACDC90;
  if (!qword_1EDACDC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C87E8BA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_RequestID.id.setter();
}

uint64_t Siri_Nlu_External_RequestID.id.setter()
{
  v3 = OUTLINED_FUNCTION_10_2();
  result = OUTLINED_FUNCTION_24_0(*(v3 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_RequestID.id.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_3(v1);
  if (OUTLINED_FUNCTION_4_1(*(v2 + 20)))
  {
    OUTLINED_FUNCTION_15_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_RequestID.clearID()()
{
  v1 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_25_2(*(v1 + 20));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_RequestID.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_28_2();
  sub_1C87E8DEC(v1 + *(v8 + 24), v2);
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    return sub_1C87E8E5C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_313(a1 + v9[5]);
  OUTLINED_FUNCTION_313(a1 + v9[6]);
  *(a1 + v9[7]) = 6;
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C87E8DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87E8E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UUID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87E8EC0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87E9210(a1, v5);
  return Siri_Nlu_External_RequestID.nluRequestID.setter(v5);
}

uint64_t Siri_Nlu_External_RequestID.nluRequestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_RequestID() + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_UUID();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_External_RequestID.nluRequestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_RequestID() + 24);
  *(v3 + 10) = v11;
  sub_1C87E8DEC(v1 + v11, v6);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C87E9130;
}

void sub_1C87E9130(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1C87E9210((*a1)[4], v4);
    sub_1C8778ED8(v8 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87E8E5C(v4, v8 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C87E9274(v5);
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87E8E5C(v5, v8 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1C87E9210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UUID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87E9274(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Siri_Nlu_External_RequestID.hasNluRequestID.getter()
{
  v2 = OUTLINED_FUNCTION_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_28_2();
  sub_1C87E8DEC(v0 + *(v8 + 24), v1);
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = __swift_getEnumTagSinglePayload(v1, 1, v9) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v10;
}

Swift::Void __swiftcall Siri_Nlu_External_RequestID.clearNluRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_RequestID() + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_External_RequestID.userID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_RequestID();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C87E9428(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_RequestID.userID.setter();
}

uint64_t Siri_Nlu_External_RequestID.userID.setter()
{
  v3 = OUTLINED_FUNCTION_10_2();
  result = OUTLINED_FUNCTION_24_0(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_RequestID.userID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_3(v1);
  if (OUTLINED_FUNCTION_4_1(*(v2 + 28)))
  {
    OUTLINED_FUNCTION_15_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_RequestID.clearUserID()()
{
  v1 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_25_2(*(v1 + 28));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_RequestID.loggableUserID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_RequestID();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 32)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C87E95A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_RequestID.loggableUserID.setter();
}

uint64_t Siri_Nlu_External_RequestID.loggableUserID.setter()
{
  v3 = OUTLINED_FUNCTION_10_2();
  result = OUTLINED_FUNCTION_24_0(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_RequestID.loggableUserID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_3(v1);
  if (OUTLINED_FUNCTION_4_1(*(v2 + 32)))
  {
    OUTLINED_FUNCTION_15_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_RequestID.clearLoggableUserID()()
{
  v1 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_25_2(*(v1 + 32));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_RequestID.trpID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_RequestID();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 36)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C87E9720(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_RequestID.trpID.setter();
}

uint64_t Siri_Nlu_External_RequestID.trpID.setter()
{
  v3 = OUTLINED_FUNCTION_10_2();
  result = OUTLINED_FUNCTION_24_0(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_RequestID.trpID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_3(v1);
  if (OUTLINED_FUNCTION_4_1(*(v2 + 36)))
  {
    OUTLINED_FUNCTION_15_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_RequestID.clearTrpID()()
{
  v1 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_25_2(*(v1 + 36));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_RequestID.connectionID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_RequestID();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 40)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C87E989C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_RequestID.connectionID.setter();
}

uint64_t Siri_Nlu_External_RequestID.connectionID.setter()
{
  v3 = OUTLINED_FUNCTION_10_2();
  result = OUTLINED_FUNCTION_24_0(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_RequestID.connectionID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_3(v1);
  if (OUTLINED_FUNCTION_4_1(*(v2 + 40)))
  {
    OUTLINED_FUNCTION_15_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_RequestID.clearConnectionID()()
{
  v1 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_25_2(*(v1 + 40));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_RequestID.requester.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Siri_Nlu_External_RequestID();
  v4 = *(v1 + *(result + 44));
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C87E9A14@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_RequestID.requester.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_RequestID.requester.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_RequestID();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_RequestID.requester.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_External_RequestID() + 44);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_RequestID.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_External_RequestID.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

SiriNLUTypes::Siri_Nlu_External_RequestID::CDMRequester_optional __swiftcall Siri_Nlu_External_RequestID.CDMRequester.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C87E9C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87EA7A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C87E9CE8@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_RequestID.CDMRequester.rawValue.getter();
  *a1 = result;
  return result;
}

void Siri_Nlu_External_RequestID.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_18_2(v2[5]);
  v4 = *(v3 + 24);
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  OUTLINED_FUNCTION_18_2(v2[7]);
  OUTLINED_FUNCTION_18_2(v2[8]);
  OUTLINED_FUNCTION_18_2(v2[9]);
  OUTLINED_FUNCTION_18_2(v2[10]);
  *(a1 + v2[11]) = 6;
}

uint64_t sub_1C87E9DD4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACCBB8);
  __swift_project_value_buffer(v0, qword_1EDACCBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nlu_request_id";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "user_id";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "loggable_user_id";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "trp_id";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 11;
  *v19 = "connection_id";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 12;
  *v21 = "requester";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RequestID.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C87EA1E4();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C87EA248();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C87EA2FC();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C87EA360();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C87EA3C4();
        break;
      case 11:
        OUTLINED_FUNCTION_8();
        sub_1C87EA428();
        break;
      case 12:
        OUTLINED_FUNCTION_8();
        sub_1C87EA48C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87EA248()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_RequestID() + 24);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C87A4A98(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87EA48C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_RequestID() + 44);
  sub_1C87EA7A0();
  return sub_1C8BD4B4C();
}

uint64_t Siri_Nlu_External_RequestID.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_16_2(v15[5]);
  if (!v17 || (v18 = *v16, result = OUTLINED_FUNCTION_9_5(), (v2 = v1) == 0))
  {
    sub_1C87E8DEC(v0 + v15[6], v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1C8778ED8(v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }

    else
    {
      sub_1C87E8E5C(v8, v14);
      sub_1C87A4A98(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
      v1 = v2;
      sub_1C8BD4E2C();
      result = sub_1C87E9274(v14);
      if (v2)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_16_2(v15[7]);
    if (!v21 || (v22 = *v20, result = OUTLINED_FUNCTION_9_5(), (v2 = v1) == 0))
    {
      OUTLINED_FUNCTION_16_2(v15[8]);
      if (!v24 || (v25 = *v23, result = OUTLINED_FUNCTION_9_5(), (v2 = v1) == 0))
      {
        OUTLINED_FUNCTION_16_2(v15[9]);
        if (!v27 || (v28 = *v26, result = OUTLINED_FUNCTION_9_5(), (v2 = v1) == 0))
        {
          OUTLINED_FUNCTION_16_2(v15[10]);
          if (!v30 || (v31 = *v29, result = OUTLINED_FUNCTION_9_5(), (v2 = v1) == 0))
          {
            if (*(v0 + v15[11]) == 6)
            {
              return sub_1C8BD49DC();
            }

            v33 = *(v0 + v15[11]);
            sub_1C87EA7A0();
            result = sub_1C8BD4D4C();
            if (!v2)
            {
              return sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1C87EA7A0()
{
  result = qword_1EC2B4B90;
  if (!qword_1EC2B4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4B90);
  }

  return result;
}

uint64_t static Siri_Nlu_External_RequestID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UUID();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  v22 = type metadata accessor for Siri_Nlu_External_RequestID();
  v23 = v22[5];
  OUTLINED_FUNCTION_1();
  if (v26)
  {
    if (!v24)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v25);
    v29 = v29 && v27 == v28;
    if (!v29 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v24)
  {
    goto LABEL_19;
  }

  v30 = v22[6];
  v31 = *(v16 + 48);
  sub_1C87E8DEC(a1 + v30, v21);
  sub_1C87E8DEC(a2 + v30, &v21[v31]);
  OUTLINED_FUNCTION_73(v21);
  if (!v29)
  {
    sub_1C87E8DEC(v21, v15);
    OUTLINED_FUNCTION_73(&v21[v31]);
    if (!v32)
    {
      sub_1C87E8E5C(&v21[v31], v9);
      v35 = static Siri_Nlu_External_UUID.== infix(_:_:)(v15, v9);
      sub_1C87E9274(v9);
      sub_1C87E9274(v15);
      sub_1C8778ED8(v21, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v35 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    sub_1C87E9274(v15);
LABEL_18:
    sub_1C8778ED8(v21, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_73(&v21[v31]);
  if (!v29)
  {
    goto LABEL_18;
  }

  sub_1C8778ED8(v21, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_22:
  v36 = v22[7];
  OUTLINED_FUNCTION_1();
  if (v39)
  {
    if (!v37)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v38);
    v42 = v29 && v40 == v41;
    if (!v42 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v37)
  {
    goto LABEL_19;
  }

  v43 = v22[8];
  OUTLINED_FUNCTION_1();
  if (v46)
  {
    if (!v44)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v45);
    v49 = v29 && v47 == v48;
    if (!v49 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v44)
  {
    goto LABEL_19;
  }

  v50 = v22[9];
  OUTLINED_FUNCTION_1();
  if (v53)
  {
    if (!v51)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v52);
    v56 = v29 && v54 == v55;
    if (!v56 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v51)
  {
    goto LABEL_19;
  }

  v57 = v22[10];
  OUTLINED_FUNCTION_1();
  if (v60)
  {
    if (!v58)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v59);
    v63 = v29 && v61 == v62;
    if (!v63 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v58)
  {
    goto LABEL_19;
  }

  v64 = v22[11];
  v65 = *(a1 + v64);
  v66 = *(a2 + v64);
  if (v65 == 6)
  {
    if (v66 == 6)
    {
      goto LABEL_62;
    }
  }

  else if (v65 == v66)
  {
LABEL_62:
    sub_1C8BD49FC();
    sub_1C87A4A98(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    v33 = sub_1C8BD517C();
    return v33 & 1;
  }

LABEL_19:
  v33 = 0;
  return v33 & 1;
}

uint64_t Siri_Nlu_External_RequestID.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C87A4A98(&qword_1EC2B6420, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87EAC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87A4A98(&qword_1EC2B6440, type metadata accessor for Siri_Nlu_External_RequestID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87EACCC(uint64_t a1)
{
  v2 = sub_1C87A4A98(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87EAD3C()
{
  sub_1C87A4A98(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C87EADBC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4BA0);
  __swift_project_value_buffer(v0, qword_1EC2B4BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CDM_REQUESTER_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CDM_REQUESTER_ORCHESTRATOR";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CDM_REQUESTER_CURARE";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CDM_REQUESTER_LIGHTHOUSE";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CDM_REQUESTER_XCODE";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CDM_REQUESTER_SPOTLIGHT";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

unint64_t sub_1C87EB0A8()
{
  result = qword_1EC2B4B80;
  if (!qword_1EC2B4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4B80);
  }

  return result;
}

unint64_t sub_1C87EB100()
{
  result = qword_1EC2B4B88;
  if (!qword_1EC2B4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4B88);
  }

  return result;
}

unint64_t sub_1C87EB158()
{
  result = qword_1EC2B4B78;
  if (!qword_1EC2B4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4B78);
  }

  return result;
}

unint64_t sub_1C87EB1B0()
{
  result = qword_1EC2B6428;
  if (!qword_1EC2B6428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2B6430, &qword_1C8BE7258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6428);
  }

  return result;
}

uint64_t sub_1C87EB35C()
{
  v0 = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD3E8);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1C87EB458();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1C87EB4B0(319, qword_1EDACDCA0);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_1C87EB458()
{
  if (!qword_1EDACE198[0])
  {
    type metadata accessor for Siri_Nlu_External_UUID();
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDACE198);
    }
  }
}

void sub_1C87EB4B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C8BD522C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Siri_Nlu_External_UUID.UUIDNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_RequestID.CDMRequester(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Siri_Nlu_Internal_SubwordTokenChain.locale.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain()
{
  result = qword_1EC2B6488;
  if (!qword_1EC2B6488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C87EB704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SubwordTokenChain.locale.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_SubwordTokenChain.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_SubwordTokenChain.locale.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain() + 24);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SubwordTokenChain.clearLocale()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_SubwordTokenChain.subwordTokens.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_SubwordTokenChain.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_SubwordTokenChain.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_SubwordTokenChain.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  v3 = a1 + *(v2 + 20);
  result = _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C87EBA90()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6448);
  __swift_project_value_buffer(v0, qword_1EC2B6448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "locale";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subword_tokens";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_SubwordTokenChain._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4CB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B6448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_SubwordTokenChain.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C87EBDE0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C87EBD7C();
    }
  }

  return result;
}

uint64_t sub_1C87EBDE0()
{
  type metadata accessor for Siri_Nlu_Internal_SubwordToken();
  sub_1C87EC54C(&qword_1EC2B6460, type metadata accessor for Siri_Nlu_Internal_SubwordToken);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_SubwordTokenChain.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  v3 = (v0 + *(v2 + 24));
  if (!v3[1] || (v4 = *v3, result = sub_1C8BD4DDC(), !v1))
  {
    if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_SubwordToken(), sub_1C87EC54C(&qword_1EC2B6460, type metadata accessor for Siri_Nlu_Internal_SubwordToken), result = sub_1C8BD4E0C(), !v1))
    {
      v6 = v0 + *(v2 + 20);
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SubwordTokenChain.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *a1;
  v12 = *a2;
  sub_1C87DD204();
  if (v13)
  {
    v14 = *(v4 + 20);
    sub_1C8BD49FC();
    sub_1C87EC54C(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t Siri_Nlu_Internal_SubwordTokenChain.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  sub_1C87EC54C(&qword_1EC2B6468, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t (*sub_1C87EC14C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C87EC1A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87EC54C(&qword_1EC2B64A0, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87EC220(uint64_t a1)
{
  v2 = sub_1C87EC54C(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87EC290()
{
  sub_1C87EC54C(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);

  return sub_1C8BD4CFC();
}

void sub_1C87EC458()
{
  sub_1C87EC4F4();
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C87EC4F4()
{
  if (!qword_1EC2B6498)
  {
    type metadata accessor for Siri_Nlu_Internal_SubwordToken();
    v0 = sub_1C8BD521C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B6498);
    }
  }
}

uint64_t sub_1C87EC54C(unint64_t *a1, void (*a2)(uint64_t))
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

void Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.requestID.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_13_2(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_3_1();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[5]);
    OUTLINED_FUNCTION_11_0(v8[6]);
    v12[v8[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87EC7B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  OUTLINED_FUNCTION_3_1();
  v12 = *(v2 + v11);
  v13 = *a1;
  OUTLINED_FUNCTION_28();
  sub_1C8778810();
  v14 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_1_0();
  if (!v15)
  {
    return OUTLINED_FUNCTION_54();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_15_2(v14[5]);
  OUTLINED_FUNCTION_15_2(v14[6]);
  *(a2 + v14[7]) = 6;
  result = OUTLINED_FUNCTION_1_0();
  if (!v15)
  {
    return sub_1C8778ED8(v10, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C87EC8E4(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(0) + 20);
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v15 = OUTLINED_FUNCTION_2();
    *(v4 + v11) = sub_1C87EF020(v15);
  }

  sub_1C87EF7B0();
  v16 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  v17 = *a2;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.nluRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_13_2(v7);
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_3_1();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[5]);
    OUTLINED_FUNCTION_11_0(v8[6]);
    v12[v8[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

BOOL sub_1C87ECB94(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  OUTLINED_FUNCTION_3_1();
  v16 = *(v4 + v15);
  v17 = *a3;
  OUTLINED_FUNCTION_28();
  sub_1C8778810();
  v18 = a4(0);
  v19 = __swift_getEnumTagSinglePayload(v14, 1, v18) != 1;
  sub_1C8778ED8(v14, a1, a2);
  return v19;
}

uint64_t sub_1C87ECC9C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v18 = OUTLINED_FUNCTION_2();
    *(v7 + v14) = sub_1C87EF020(v18);
  }

  v19 = a3(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = *a4;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C87ECDAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.resultCandidateID.setter(v1, v2);
}

void (*Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.resultCandidateID.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_3_1();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__resultCandidateID);
  OUTLINED_FUNCTION_277();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C87ECEA0;
}

uint64_t sub_1C87ECEE4(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_3(v2);
  if (a1[1])
  {
    v3 = *a1;
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C87ECF38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.utterance.setter(v1, v2);
}

uint64_t sub_1C87ECF84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v12 = OUTLINED_FUNCTION_2();
    v11 = sub_1C87EF020(v12);
    *(v5 + v8) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_36_0();
  v14 = v13[1];
  *v13 = a1;
  v13[1] = a2;
}

void (*Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.utterance.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_3_1();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__utterance);
  OUTLINED_FUNCTION_277();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C87ED0BC;
}

void sub_1C87ED0DC(uint64_t *a1, char a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v8 = *(v4 + 64);
    v9 = *(*a1 + 56);

    a4(v5, v6);
    v10 = *(v4 + 56);
  }

  else
  {
    v12 = *(v4 + 72);
    v13 = *(v4 + 64);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 72);
      v18 = *(v4 + 64);
      OUTLINED_FUNCTION_10_3();
      v19 = OUTLINED_FUNCTION_2();
      v16 = sub_1C87EF020(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *a3);
    OUTLINED_FUNCTION_36_0();
    v21 = v20[1];
    *v20 = v5;
    v20[1] = v6;
  }

  free(v4);
}

BOOL sub_1C87ED1C0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_3(v2);
  return *(a1 + 8) != 0;
}

uint64_t sub_1C87ED208()
{
  v4 = OUTLINED_FUNCTION_55_3();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v6 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87EF020(v6);
    *(v2 + v3) = v5;
  }

  v7 = (v5 + *v0);
  OUTLINED_FUNCTION_37_0();
  v8 = v7[1];
  *v7 = 0;
  v7[1] = 0;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_3_1();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_32_3();
  v11 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_1_0();
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v13 = a1 + v11[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v11[6]);
    OUTLINED_FUNCTION_18_2(v11[7]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v12)
    {
      return sub_1C8778ED8(v8, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    return OUTLINED_FUNCTION_54();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.tokenChain.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_24_1();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C87EF020(v8);
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_5_2();
  sub_1C87EF7B0();
  v10 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_33_1(v10);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.tokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_13_2(v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_3_1();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    v16 = v12 + v8[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[6]);
    OUTLINED_FUNCTION_26(v8[7]);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    sub_1C87EF7B0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.embeddingTensor.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_3_1();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_32_3();
  v11 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_1_0();
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v13 = a1 + v11[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v11[6]);
    OUTLINED_FUNCTION_15_2(v11[7]);
    OUTLINED_FUNCTION_15_2(v11[8]);
    OUTLINED_FUNCTION_18_2(v11[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v12)
    {
      return sub_1C8778ED8(v8, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_1();
    return OUTLINED_FUNCTION_54();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.embeddingTensor.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_24_1();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C87EF020(v8);
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_7_1();
  sub_1C87EF7B0();
  v10 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_33_1(v10);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.embeddingTensor.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_13_2(v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_3_1();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    v16 = v12 + v8[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[6]);
    OUTLINED_FUNCTION_11_0(v8[7]);
    OUTLINED_FUNCTION_11_0(v8[8]);
    OUTLINED_FUNCTION_26(v8[9]);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_1();
    sub_1C87EF7B0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87EDA28(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.entityCandidates.setter(v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.entityCandidates.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C87EDAFC(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_1();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_277();
  v6 = *(v4 + v5);
}

uint64_t sub_1C87EDB44(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.detectedMentions.setter(v2);
}

uint64_t sub_1C87EDB7C(uint64_t a1, uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_241();
  v6 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(v5) + 20);
  v7 = *(v3 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C87EF020(v10);
    OUTLINED_FUNCTION_40(v11);
  }

  v12 = *a2;
  OUTLINED_FUNCTION_37_0();
  v13 = *(v9 + v12);
  *(v9 + v12) = v2;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.detectedMentions.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.maxCandidates.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_3_1();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__maxCandidates;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1C87EDD54(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.matchingSpans.setter(v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.matchingSpans.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C87EDE28(_BYTE *a1)
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_3(v2);
  if (a1[8])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_1C87EDE74(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_241();
  v6 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(v5) + 20);
  v7 = *(v3 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C87EF020(v10);
    OUTLINED_FUNCTION_40(v11);
  }

  v12 = v9 + *a2;
  result = OUTLINED_FUNCTION_36_0();
  *v12 = v2;
  *(v12 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.turnIndex.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_3_1();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__turnIndex;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

void sub_1C87EDF7C(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    OUTLINED_FUNCTION_10_3();
    v13 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87EF020(v13);
    *(v12 + v11) = v10;
  }

  v14 = v10 + *a3;
  OUTLINED_FUNCTION_36_0();
  *v14 = v5;
  *(v14 + 8) = 0;

  free(v4);
}

BOOL sub_1C87EE040(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_3(v2);
  return (*(a1 + 8) & 1) == 0;
}

uint64_t sub_1C87EE088()
{
  v4 = OUTLINED_FUNCTION_55_3();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v6 = OUTLINED_FUNCTION_2();
    v5 = sub_1C87EF020(v6);
    *(v2 + v3) = v5;
  }

  v7 = v5 + *v0;
  result = OUTLINED_FUNCTION_37_0();
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.cdmRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_3_1();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_32_3();
  v11 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_1_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v11[5]);
    v13 = v11[6];
    v14 = type metadata accessor for Siri_Nlu_External_UUID();
    __swift_storeEnumTagSinglePayload(a1 + v13, 1, 1, v14);
    OUTLINED_FUNCTION_18_2(v11[7]);
    OUTLINED_FUNCTION_18_2(v11[8]);
    OUTLINED_FUNCTION_18_2(v11[9]);
    OUTLINED_FUNCTION_18_2(v11[10]);
    *(a1 + v11[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v12)
    {
      return sub_1C8778ED8(v8, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_54();
  }

  return result;
}

uint64_t sub_1C87EE230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C87EF808();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.cdmRequestID.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_24_1();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C87EF020(v8);
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_6_4();
  sub_1C87EF7B0();
  v10 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_33_1(v10);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.cdmRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_13_2(v7);
  v8 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_3_1();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    v16 = v8[6];
    v17 = type metadata accessor for Siri_Nlu_External_UUID();
    __swift_storeEnumTagSinglePayload(&v12[v16], 1, 1, v17);
    OUTLINED_FUNCTION_26(v8[7]);
    OUTLINED_FUNCTION_26(v8[8]);
    OUTLINED_FUNCTION_26(v8[9]);
    OUTLINED_FUNCTION_26(v8[10]);
    v12[v8[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_4();
    sub_1C87EF7B0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C87EE558(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1C87EF808();
    a3(v5);
    sub_1C87EF860();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t sub_1C87EE674(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.contextualSpans.setter(v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.contextualSpans.modify()
{
  v1 = OUTLINED_FUNCTION_51();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_0(v3);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

void sub_1C87EE73C(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v7 = *(v4 + 56);
    v8 = *(*a1 + 48);

    a4(v9);
    v10 = *(v4 + 48);
  }

  else
  {
    v12 = *(v4 + 64);
    v13 = *(v4 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 64);
      v18 = *(v4 + 56);
      OUTLINED_FUNCTION_10_3();
      v19 = OUTLINED_FUNCTION_2();
      v16 = sub_1C87EF020(v19);
      *(v18 + v17) = v16;
    }

    v20 = *a3;
    OUTLINED_FUNCTION_37_0();
    v21 = *(v16 + v20);
    *(v16 + v20) = v5;
  }

  free(v4);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(0) + 20);
  if (qword_1EC2B42C0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2B42C8;
}

uint64_t sub_1C87EE970()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4270);
  __swift_project_value_buffer(v0, qword_1EC2B4270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C8BE7660;
  v4 = v33 + v3 + v1[14];
  *(v33 + v3) = 1;
  *v4 = "request_id";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v33 + v3 + v2 + v1[14];
  *(v33 + v3 + v2) = 2;
  *v8 = "nlu_request_id";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v33 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "result_candidate_id";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v33 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "utterance";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v7();
  v14 = (v33 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "token_chain";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v7();
  v16 = (v33 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "embedding_tensor";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v7();
  v18 = (v33 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "entity_candidates";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v7();
  v20 = (v33 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "detected_mentions";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v7();
  v22 = (v33 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "max_candidates";
  *(v23 + 1) = 14;
  v23[16] = 2;
  v7();
  v24 = (v33 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "matching_spans";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v7();
  v26 = (v33 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "turn_index";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v7();
  v28 = (v33 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "cdm_request_id";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v7();
  v30 = (v33 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "contextual_spans";
  *(v31 + 1) = 16;
  v31[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_MentionResolver_MentionResolverRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4268 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4270);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C87EEE84()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C87EEEC4();
  qword_1EC2B42C8 = result;
  return result;
}

uint64_t sub_1C87EEEC4()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__nluRequestID, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__resultCandidateID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__utterance);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__tokenChain;
  v6 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__embeddingTensor;
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__entityCandidates) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__detectedMentions) = v9;
  v10 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__maxCandidates;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__matchingSpans) = v9;
  v11 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__turnIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__cdmRequestID;
  v13 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__contextualSpans) = v9;
  return v0;
}

uint64_t sub_1C87EF020(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__requestID;
  v15 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__nluRequestID, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__resultCandidateID);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__utterance);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__tokenChain;
  v58[0] = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__tokenChain;
  v19 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__embeddingTensor;
  v58[1] = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__embeddingTensor;
  v21 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v59 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__entityCandidates;
  v22 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__entityCandidates) = MEMORY[0x1E69E7CC0];
  v61 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__detectedMentions;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__detectedMentions) = v22;
  v23 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__maxCandidates;
  v62 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__maxCandidates;
  *v23 = 0;
  *(v23 + 8) = 1;
  v63 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__matchingSpans;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__matchingSpans) = v22;
  v24 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__turnIndex;
  v65 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__turnIndex;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__cdmRequestID;
  v66 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__cdmRequestID;
  v26 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v67 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__contextualSpans;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__contextualSpans) = v22;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__resultCandidateID);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  swift_beginAccess();
  v30 = v16[1];
  *v16 = v29;
  v16[1] = v28;

  v31 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__utterance);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  swift_beginAccess();
  v34 = v17[1];
  *v17 = v33;
  v17[1] = v32;

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__entityCandidates;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = v59;
  swift_beginAccess();
  v38 = *(v1 + v37);
  *(v1 + v37) = v36;

  v39 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__detectedMentions;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = v61;
  swift_beginAccess();
  v42 = *(v1 + v41);
  *(v1 + v41) = v40;

  v43 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__maxCandidates);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v62;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  v46 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__matchingSpans;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = v63;
  swift_beginAccess();
  v49 = *(v1 + v48);
  *(v1 + v48) = v47;

  v50 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__turnIndex);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  v52 = v65;
  swift_beginAccess();
  *v52 = v51;
  *(v52 + 8) = v50;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__contextualSpans;
  swift_beginAccess();
  v54 = *(a1 + v53);

  v55 = v67;
  swift_beginAccess();
  v56 = *(v1 + v55);
  *(v1 + v55) = v54;

  return v1;
}

uint64_t sub_1C87EF7B0()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t sub_1C87EF808()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t sub_1C87EF860()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C87EF8B4()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__nluRequestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__resultCandidateID + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__utterance + 8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__tokenChain, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__embeddingTensor, &qword_1EC2B64A8, &unk_1C8BE7670);
  v3 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__entityCandidates);

  v4 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__detectedMentions);

  v5 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__matchingSpans);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__cdmRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__contextualSpans);

  return v0;
}

uint64_t sub_1C87EF9E4()
{
  v0 = sub_1C87EF8B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    *(v1 + v2) = sub_1C87EF020(v9);
  }

  return sub_1C87EFAD8();
}

uint64_t sub_1C87EFAD8()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        sub_1C87EFD00();
        break;
      case 3:
      case 4:
        sub_1C87EFDA4();
        break;
      case 5:
        sub_1C87EFE00();
        break;
      case 6:
        sub_1C87EFEDC();
        break;
      case 7:
        sub_1C87EFFB8();
        break;
      case 8:
      case 10:
      case 13:
        sub_1C87F0094();
        break;
      case 9:
      case 11:
        sub_1C87F0138();
        break;
      case 12:
        sub_1C87F0194();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87EFD00()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776350(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  OUTLINED_FUNCTION_30_1();
  sub_1C8BD4C7C();
  return OUTLINED_FUNCTION_53_1();
}

uint64_t sub_1C87EFDA4()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_0();
  sub_1C8BD4C1C();
  return OUTLINED_FUNCTION_53_1();
}

uint64_t sub_1C87EFE00()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C8776350(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87EFEDC()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  sub_1C8776350(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87EFFB8()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_EntityCandidate(0);
  sub_1C8776350(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C87F0094()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8776350(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  OUTLINED_FUNCTION_30_1();
  sub_1C8BD4C6C();
  return OUTLINED_FUNCTION_53_1();
}

uint64_t sub_1C87F0138()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_0();
  sub_1C8BD4C4C();
  return OUTLINED_FUNCTION_53_1();
}

uint64_t sub_1C87F0194()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C8776350(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(0);
  result = sub_1C87F02DC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C87F02DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v66 = a3;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v53 - v7;
  v54 = type metadata accessor for Siri_Nlu_External_RequestID();
  v8 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v53 - v12;
  v58 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v62 = &v53 - v17;
  v59 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v18 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v53 - v25;
  v27 = type metadata accessor for Siri_Nlu_External_UUID();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v61 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  swift_beginAccess();
  v63 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_1C8778ED8(v26, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v31 = v65;
  }

  else
  {
    sub_1C87EF7B0();
    sub_1C8776350(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    v32 = v65;
    sub_1C8BD4E2C();
    v31 = v32;
    if (v32)
    {
      return sub_1C87EF860();
    }

    sub_1C87EF860();
  }

  v33 = v63;
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v24, 1, v27) == 1)
  {
    sub_1C8778ED8(v24, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87EF7B0();
    sub_1C8776350(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    sub_1C8BD4E2C();
    if (v31)
    {
      return sub_1C87EF860();
    }

    sub_1C87EF860();
  }

  v34 = (v33 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__resultCandidateID);
  swift_beginAccess();
  v35 = v62;
  if (v34[1])
  {
    v36 = *v34;
    v37 = v34[1];

    sub_1C8BD4DDC();
    if (v31)
    {
    }
  }

  v38 = (v33 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__utterance);
  swift_beginAccess();
  if (v38[1])
  {
    v39 = *v38;
    v40 = v38[1];

    sub_1C8BD4DDC();
    if (v31)
    {
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v59);
  v43 = v60;
  if (EnumTagSinglePayload != 1)
  {
    sub_1C87EF7B0();
    sub_1C8776350(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    sub_1C8BD4E2C();
    if (!v31)
    {
      sub_1C87EF860();
      goto LABEL_22;
    }

    return sub_1C87EF860();
  }

  sub_1C8778ED8(v35, &qword_1EC2B6048, &unk_1C8BE6F80);
LABEL_22:
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v43, 1, v58) == 1)
  {
    sub_1C8778ED8(v43, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C87EF7B0();
    sub_1C8776350(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8BD4E2C();
    result = sub_1C87EF860();
    if (v31)
    {
      return result;
    }
  }

  v44 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__entityCandidates;
  swift_beginAccess();
  v45 = v57;
  if (*(*(v33 + v44) + 16))
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate(0);
    sub_1C8776350(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate);

    sub_1C8BD4E0C();

    if (v31)
    {
      return result;
    }

    v45 = v57;
  }

  v46 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__detectedMentions;
  swift_beginAccess();
  if (*(*(v33 + v46) + 16))
  {
    type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
    sub_1C8776350(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);

    sub_1C8BD4E0C();

    if (v31)
    {
      return result;
    }

    v45 = v57;
  }

  v47 = (v33 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__maxCandidates);
  swift_beginAccess();
  if ((v47[1] & 1) != 0 || (v48 = *v47, result = sub_1C8BD4DFC(), !v31))
  {
    v49 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__matchingSpans;
    swift_beginAccess();
    if (*(*(v33 + v49) + 16))
    {
      type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
      sub_1C8776350(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);

      sub_1C8BD4E0C();

      if (v31)
      {
        return result;
      }

      v45 = v57;
    }

    v50 = (v33 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__turnIndex);
    swift_beginAccess();
    if ((v50[1] & 1) != 0 || (v51 = *v50, result = sub_1C8BD4DFC(), !v31))
    {
      swift_beginAccess();
      sub_1C8778810();
      if (__swift_getEnumTagSinglePayload(v45, 1, v54) == 1)
      {
        sub_1C8778ED8(v45, &qword_1EC2B64B0, &unk_1C8BF3F40);
      }

      else
      {
        sub_1C87EF7B0();
        sub_1C8776350(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
        sub_1C8BD4E2C();
        result = sub_1C87EF860();
        if (v31)
        {
          return result;
        }
      }

      v52 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__contextualSpans;
      result = swift_beginAccess();
      if (*(*(v33 + v52) + 16))
      {
        type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
        sub_1C8776350(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);

        sub_1C8BD4E0C();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MentionResolver_MentionResolverRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_3_1();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1C87F104C(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776350(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C87F104C(uint64_t a1, uint64_t a2)
{
  v157 = a2;
  v135 = type metadata accessor for Siri_Nlu_External_RequestID();
  v3 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v132 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  v5 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v137 = &v131 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v134 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v136 = &v131 - v11;
  v142 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v12 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v138 = (&v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  v14 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141);
  v143 = &v131 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v139 = (&v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v148 = &v131 - v20;
  v146 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v21 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v140 = (&v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  v23 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v147 = &v131 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v144 = (&v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v149 = &v131 - v29;
  v156 = type metadata accessor for Siri_Nlu_External_UUID();
  v30 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v151 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v153 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v131 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v150 = &v131 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v155 = &v131 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v154 = &v131 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v131 - v46;
  swift_beginAccess();
  v48 = a1;
  sub_1C8778810();
  v49 = v157;
  swift_beginAccess();
  v152 = v32;
  v50 = *(v32 + 48);
  sub_1C8778810();
  v51 = v156;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v37, 1, v51) == 1)
  {

    sub_1C8778ED8(v47, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v52 = v48;
    if (__swift_getEnumTagSinglePayload(&v37[v50], 1, v51) == 1)
    {
      sub_1C8778ED8(v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_8;
    }

LABEL_6:
    v54 = &qword_1EC2B5EE8;
    v55 = &unk_1C8BE6F90;
    v56 = v37;
LABEL_14:
    sub_1C8778ED8(v56, v54, v55);
    goto LABEL_15;
  }

  v52 = v48;
  v53 = v154;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(&v37[v50], 1, v51) == 1)
  {

    sub_1C8778ED8(v47, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87EF860();
    goto LABEL_6;
  }

  v57 = v151;
  sub_1C87EF7B0();

  v58 = static Siri_Nlu_External_UUID.== infix(_:_:)(v53, v57);
  sub_1C87EF860();
  sub_1C8778ED8(v47, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87EF860();
  sub_1C8778ED8(v37, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  swift_beginAccess();
  v59 = v155;
  sub_1C8778810();
  swift_beginAccess();
  v60 = v153;
  v61 = *(v152 + 48);
  sub_1C8778810();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v60, 1, v51) == 1)
  {
    sub_1C8778ED8(v59, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v60 + v61, 1, v51) == 1)
    {
      sub_1C8778ED8(v60, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v62 = v150;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v60 + v61, 1, v51) == 1)
  {
    sub_1C8778ED8(v155, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87EF860();
LABEL_13:
    v54 = &qword_1EC2B5EE8;
    v55 = &unk_1C8BE6F90;
    v56 = v60;
    goto LABEL_14;
  }

  v65 = v151;
  sub_1C87EF7B0();
  v66 = static Siri_Nlu_External_UUID.== infix(_:_:)(v62, v65);
  sub_1C87EF860();
  sub_1C8778ED8(v155, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87EF860();
  sub_1C8778ED8(v60, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v67 = (v52 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__resultCandidateID);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = (v49 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__resultCandidateID);
  swift_beginAccess();
  v71 = v70[1];
  if (v69)
  {
    v73 = v148;
    v72 = v149;
    if (!v71)
    {
      goto LABEL_15;
    }

    v74 = v68 == *v70 && v69 == v71;
    if (!v74 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v73 = v148;
    v72 = v149;
    if (v71)
    {
      goto LABEL_15;
    }
  }

  v75 = (v52 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__utterance);
  swift_beginAccess();
  v76 = *v75;
  v77 = v75[1];
  v78 = (v49 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__utterance);
  swift_beginAccess();
  v79 = v78[1];
  if (v77)
  {
    if (!v79)
    {
      goto LABEL_15;
    }

    v80 = v76 == *v78 && v77 == v79;
    if (!v80 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v79)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v81 = *(v145 + 48);
  v82 = v147;
  sub_1C8778810();
  sub_1C8778810();
  v83 = v146;
  if (__swift_getEnumTagSinglePayload(v82, 1, v146) == 1)
  {
    sub_1C8778ED8(v72, &qword_1EC2B6048, &unk_1C8BE6F80);
    if (__swift_getEnumTagSinglePayload(v82 + v81, 1, v83) == 1)
    {
      sub_1C8778ED8(v82, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_43;
    }

LABEL_41:
    v54 = &qword_1EC2B6050;
    v55 = &qword_1C8BE6D00;
LABEL_49:
    v56 = v82;
    goto LABEL_14;
  }

  v84 = v144;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v82 + v81, 1, v83) == 1)
  {
    sub_1C8778ED8(v149, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C87EF860();
    goto LABEL_41;
  }

  v85 = v140;
  sub_1C87EF7B0();
  v86 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v84, v85);
  sub_1C87EF860();
  sub_1C8778ED8(v149, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C87EF860();
  sub_1C8778ED8(v82, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v86 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_43:
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v87 = *(v141 + 48);
  v82 = v143;
  sub_1C8778810();
  sub_1C8778810();
  v88 = v142;
  if (__swift_getEnumTagSinglePayload(v82, 1, v142) != 1)
  {
    v89 = v139;
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v82 + v87, 1, v88) != 1)
    {
      v90 = v138;
      sub_1C87EF7B0();
      v91 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v89, v90);
      sub_1C87EF860();
      sub_1C8778ED8(v73, &qword_1EC2B64A8, &unk_1C8BE7670);
      sub_1C87EF860();
      sub_1C8778ED8(v82, &qword_1EC2B64A8, &unk_1C8BE7670);
      if ((v91 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_51;
    }

    sub_1C8778ED8(v73, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C87EF860();
    goto LABEL_48;
  }

  sub_1C8778ED8(v73, &qword_1EC2B64A8, &unk_1C8BE7670);
  if (__swift_getEnumTagSinglePayload(v82 + v87, 1, v88) != 1)
  {
LABEL_48:
    v54 = &qword_1EC2B64E0;
    v55 = &unk_1C8BE7880;
    goto LABEL_49;
  }

  sub_1C8778ED8(v82, &qword_1EC2B64A8, &unk_1C8BE7670);
LABEL_51:
  v92 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__entityCandidates;
  swift_beginAccess();
  v93 = *(v52 + v92);
  v94 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__entityCandidates;
  swift_beginAccess();
  v95 = *(v49 + v94);

  sub_1C87D73D8();
  v97 = v96;

  if ((v97 & 1) == 0)
  {
    goto LABEL_15;
  }

  v98 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__detectedMentions;
  swift_beginAccess();
  v99 = *(v52 + v98);
  v100 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__detectedMentions;
  swift_beginAccess();
  v101 = *(v49 + v100);

  sub_1C87D27C0();
  v103 = v102;

  if ((v103 & 1) == 0)
  {
    goto LABEL_15;
  }

  v104 = (v52 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__maxCandidates);
  swift_beginAccess();
  v105 = *v104;
  v106 = *(v104 + 8);
  v107 = v49 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__maxCandidates;
  swift_beginAccess();
  v108 = *(v107 + 8);
  if (v106)
  {
    if ((*(v107 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v107 + 8) & 1) != 0 || v105 != *v107)
  {
    goto LABEL_15;
  }

  v109 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__matchingSpans;
  swift_beginAccess();
  v110 = *(v52 + v109);
  v111 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__matchingSpans;
  swift_beginAccess();
  v112 = *(v49 + v111);

  sub_1C87D27C0();
  v114 = v113;

  if (v114)
  {
    v115 = (v52 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__turnIndex);
    swift_beginAccess();
    v116 = *v115;
    v117 = *(v115 + 8);
    v118 = v49 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__turnIndex;
    swift_beginAccess();
    v119 = *(v118 + 8);
    if (v117)
    {
      if ((*(v118 + 8) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ((*(v118 + 8) & 1) != 0 || v116 != *v118)
    {
      goto LABEL_15;
    }

    swift_beginAccess();
    sub_1C8778810();
    swift_beginAccess();
    v120 = *(v133 + 48);
    v121 = v137;
    sub_1C8778810();
    sub_1C8778810();
    v122 = v135;
    if (__swift_getEnumTagSinglePayload(v121, 1, v135) == 1)
    {
      sub_1C8778ED8(v136, &qword_1EC2B64B0, &unk_1C8BF3F40);
      if (__swift_getEnumTagSinglePayload(v121 + v120, 1, v122) == 1)
      {
        sub_1C8778ED8(v137, &qword_1EC2B64B0, &unk_1C8BF3F40);
LABEL_72:
        v126 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__contextualSpans;
        swift_beginAccess();
        v127 = *(v52 + v126);
        v128 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionResolver_MentionResolverRequestP33_458FFE5128E4C69367EE6A0CD0859EE113_StorageClass__contextualSpans;
        swift_beginAccess();
        v129 = *(v49 + v128);

        sub_1C87D27C0();
        v63 = v130;

        return v63 & 1;
      }

      goto LABEL_69;
    }

    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v121 + v120, 1, v122) == 1)
    {
      sub_1C8778ED8(v136, &qword_1EC2B64B0, &unk_1C8BF3F40);
      sub_1C87EF860();
LABEL_69:
      sub_1C8778ED8(v137, &qword_1EC2B64D8, &unk_1C8BEAC20);
      goto LABEL_15;
    }

    v123 = v137;
    v124 = v132;
    sub_1C87EF7B0();
    v125 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v134, v124);
    sub_1C87EF860();
    sub_1C8778ED8(v136, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C87EF860();
    sub_1C8778ED8(v123, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (v125)
    {
      goto LABEL_72;
    }
  }

LABEL_15:

  v63 = 0;
  return v63 & 1;
}