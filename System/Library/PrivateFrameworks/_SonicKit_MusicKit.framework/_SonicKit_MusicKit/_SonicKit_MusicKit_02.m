uint64_t sub_27530F71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();
  v19 = v18[685];
  v20 = v18[684];

  v35 = v18[689];
  OUTLINED_FUNCTION_28_0();
  v22 = OUTLINED_FUNCTION_116_0(v21);
  v23(v22);
  v24 = OUTLINED_FUNCTION_73_0();
  v25(v24);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_131_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, v35, a16, a17, a18);
}

uint64_t sub_27530F820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_181();
  v33 = *(v18 + 5544);
  OUTLINED_FUNCTION_28_0();
  v20 = OUTLINED_FUNCTION_116_0(v19);
  v21(v20);
  v22 = OUTLINED_FUNCTION_73_0();
  v23(v22);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_131_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_27530F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a4;
  v6[11] = a6;
  v6[8] = a2;
  v6[9] = a3;
  v6[7] = a1;
  return MEMORY[0x2822009F8](sub_27530F938, 0, 0);
}

uint64_t sub_27530F938()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v0[6] = 1;
  OUTLINED_FUNCTION_112_0(v2);
  v0[12] = sub_2753B69B8();
  sub_2753B69A8();
  v4 = v0[2];
  v0[13] = v0[3];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_27530FA04;
  v6 = v0[8];
  OUTLINED_FUNCTION_71_0();

  return MusicContentStorage.Operations.hasMediaAPIAttributes(containing:for:)();
}

uint64_t sub_27530FA04()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {
    v11 = *(v5 + 104);

    *(v5 + 168) = v3 & 1;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_27530FB1C()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 72);
    sub_2753B69A8();
    v3 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 40);
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_27530FC10;
    v5 = *(v0 + 64);
    OUTLINED_FUNCTION_75_0();

    return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
  }

  else
  {
    v7 = *(v0 + 56);
    *v7 = 0;
    v7[1] = 0;
    OUTLINED_FUNCTION_35_0();

    return v8();
  }
}

uint64_t sub_27530FC10()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[18] = v1;

  if (!v1)
  {
    v11 = v5[16];

    v5[19] = v0;
    v5[20] = v3;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_27530FD34()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);
  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_27530FD90()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_27530FDEC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a1;
  v87 = a3;
  OUTLINED_FUNCTION_0_3();
  sub_275316CAC(0, v5, v6, v7, MEMORY[0x277D64F00]);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  v84 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  v12 = OUTLINED_FUNCTION_9(v84);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10();
  v85 = v16 - v15;
  OUTLINED_FUNCTION_104_0();
  v17 = MEMORY[0x277D83D88];
  sub_2753167D4(0, v18, v19, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_75(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v23);
  v25 = &v80 - v24;
  v26 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo();
  v27 = OUTLINED_FUNCTION_9(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10();
  v32 = v31 - v30;
  OUTLINED_FUNCTION_103_0();
  sub_2753167D4(0, v33, v34, v17);
  OUTLINED_FUNCTION_75(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v38);
  v40 = &v80 - v39;
  v41 = sub_2753B61F8();
  OUTLINED_FUNCTION_2_1();
  v88 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10();
  v96 = v47 - v46;
  v95[0] = *a2;
  *(v95 + 13) = *(a2 + 13);
  v48 = *(v3 + 296);
  if (!v48 || (sub_275319BB4(0x6465636E61686E65, 0xEB00000000736C48, v48), !v49))
  {
    sub_275314678();
    OUTLINED_FUNCTION_190();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    LOBYTE(v90[0]) = 14;
    sub_2753B6298();
    goto LABEL_6;
  }

  sub_2753B61D8();

  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {
    OUTLINED_FUNCTION_103_0();
    sub_275316AC4(v40, v50, v51);
    sub_275314678();
    OUTLINED_FUNCTION_190();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    LOBYTE(v90[0]) = 15;
    sub_2753B6298();
    OUTLINED_FUNCTION_85_0();
LABEL_6:
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    v52 = OUTLINED_FUNCTION_222();
    sub_275316CAC(v52, v53, v54, v55, v56);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_146_0();
    sub_2753B62E8();
    return swift_willThrow();
  }

  v83 = *(v88 + 32);
  v83(v96, v40, v41);
  v89[0] = v95[0];
  *(v89 + 13) = *(v95 + 13);
  MusicContent.Environment.selectedAccount.getter(v90);
  if (*(&v90[0] + 1) && (v59 = v93, v58 = v94, v82 = v91, v81 = v92, sub_275316838(v91, v92, v93), sub_275316048(v90, &qword_2809C1828, &type metadata for MusicContent.Environment.Account), v59))
  {

    sub_275316888(v82, v81, v59);
    sub_275319C0C(0, v58, v25);

    if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
    {
      sub_2753168D8(v25, v32, type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo);
      v60 = v84;
      v61 = v85;
      v62 = v83;
      v83(v85 + v84[5], v32, v41);
      v62(v61 + v60[6], v32 + *(v26 + 20), v41);
      *v61 = v86;
      *(v61 + 8) = 0;
      *(v61 + v60[7]) = 0;
      *(v61 + v60[8]) = 1;
      v63 = v87;
      v62(v87, v96, v41);
      v64 = type metadata accessor for AssetRecipe(0);
      sub_2753168D8(v61, v63 + *(v64 + 20), type metadata accessor for AssetRecipe.DRM.FairPlayStreaming);
      type metadata accessor for AssetRecipe.DRM(0);
      swift_storeEnumTagMultiPayload();
      v65 = *(v64 + 24);
      type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
      OUTLINED_FUNCTION_140_0();
      return __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    }
  }

  else
  {
    OUTLINED_FUNCTION_140_0();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v26);
  }

  OUTLINED_FUNCTION_104_0();
  sub_275316AC4(v25, v73, v74);
  sub_275314678();
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_24_0();
  sub_2753B62C8();
  LOBYTE(v89[0]) = 4;
  sub_2753B6298();
  sub_2753B62C8();
  OUTLINED_FUNCTION_0_3();
  v75 = OUTLINED_FUNCTION_222();
  sub_275316CAC(v75, v76, v77, v78, v79);
  sub_275314720();
  OUTLINED_FUNCTION_9_2();
  swift_allocError();
  OUTLINED_FUNCTION_146_0();
  sub_2753B62E8();
  swift_willThrow();
  return (*(v88 + 8))(v96, v41);
}

double sub_2753104C4@<D0>(uint64_t a1@<X3>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 8);
  sub_2753B69B8();
  sub_2753B6978();
  v7[0] = v8[0];
  *(v7 + 13) = *(v8 + 13);
  sub_2753196F4(v7, v9);
  if (!v2)
  {
    v6 = v9[1];
    *a2 = v9[0];
    a2[1] = v6;
    result = *&v10;
    a2[2] = v10;
  }

  return result;
}

uint64_t sub_275310560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[707] = a6;
  v6[706] = a5;
  v6[705] = a3;
  v6[704] = a1;
  sub_275316CAC(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v6[708] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[709] = swift_task_alloc();
  v10 = sub_2753B6DB8();
  v6[710] = v10;
  v11 = *(v10 - 8);
  v6[711] = v11;
  v12 = *(v11 + 64) + 15;
  v6[712] = swift_task_alloc();
  v13 = *(a4 + 16);
  v6[713] = v13;
  v14 = *(v13 - 8);
  v6[714] = v14;
  v15 = *(v14 + 64) + 15;
  v6[715] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[716] = AssociatedTypeWitness;
  v17 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v6[717] = swift_task_alloc();
  v18 = *(a4 + 24);
  v6[718] = v18;
  v19 = *(v18 + 8);
  v20 = sub_2753B69B8();
  v6[719] = v20;
  v21 = *(v20 - 8);
  v6[720] = v21;
  v22 = *(v21 + 64) + 15;
  v6[721] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753107B8, 0, 0);
}

uint64_t sub_2753107B8()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  v1 = v0[721];
  v2 = v0[719];
  v3 = v0[718];
  v4 = v0[717];
  v5 = v0[716];
  v6 = v0[715];
  v7 = v0[707];
  v8 = v0[706];
  v9 = v0[705];
  sub_2753B6938();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_70_0();
  sub_2753B6998();
  v0[722] = *(v3 + 32);
  v0[723] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  v0[724] = OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_2_4();
  sub_275315BB8(v10, v11);
  OUTLINED_FUNCTION_102_0();
  sub_2753B70C8();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2753108A4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[724];
  v2 = v0[723];
  v3 = v0[722];
  v4 = v0[718];
  v5 = v0[715];
  v6 = v0[714];
  v7 = v0[713];

  v8 = OUTLINED_FUNCTION_79_0();
  v0[725] = v3(v8);
  v9 = OUTLINED_FUNCTION_39_0();
  v10(v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_217();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_27531093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_66_0();
  v10 = v9[721];
  v11 = v9[718];
  v12 = v9[713];
  v13 = v9[707];
  v14 = v9[706];
  v15 = swift_task_alloc();
  v9[726] = v15;
  OUTLINED_FUNCTION_56_0(v15);
  OUTLINED_FUNCTION_38_0(&unk_2753C1DF0);
  v28 = v16;
  v17 = swift_task_alloc();
  v9[727] = v17;
  *v17 = v9;
  v17[1] = sub_275310A18;
  v18 = v9[725];
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_241();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28);
}

uint64_t sub_275310A18()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 5816);
  *v4 = *v1;
  v3[728] = v7;
  v3[729] = v8;
  v3[730] = v0;

  if (!v0)
  {
    v9 = v3[726];
    v10 = v3[725];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

unsigned __int8 *sub_275310B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_226();
  if (!*(v16 + 5832))
  {
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_113_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    *(v16 + 2425) = 11;
    sub_2753B6298();
    OUTLINED_FUNCTION_49_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_156_0();
    sub_2753B69A8();
    v27 = *(v16 + 5512);
    *(v16 + 5520) = *(v16 + 5504);
    *(v16 + 5528) = v27;
    goto LABEL_5;
  }

  v17 = *(v16 + 5824);
  v18 = *(v16 + 5696);
  v19 = *(v16 + 5688);
  v20 = *(v16 + 5680);
  sub_2753B6DA8();
  OUTLINED_FUNCTION_213();
  sub_2753B6D98();
  v22 = v21;

  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_101_0();
  v25(v24);
  if (v22 >> 60 == 15)
  {
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_113_0();
    sub_2753B62D8();
    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_164();
    sub_2753B62C8();
    OUTLINED_FUNCTION_156_0();
    sub_2753B69A8();
    v26 = *(v16 + 5544);
    *(v16 + 5552) = *(v16 + 5536);
    *(v16 + 5560) = v26;
LABEL_5:
    sub_2753146CC();
    sub_2753B62B8();

    OUTLINED_FUNCTION_33_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_198(v28, v29, v30, v31, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_71_0();
    sub_2753B62E8();
    swift_willThrow();
LABEL_87:
    v94 = *(v16 + 5768);
    v95 = *(v16 + 5752);
    v96 = *(v16 + 5736);
    v97 = *(v16 + 5720);
    v98 = *(v16 + 5696);
    v99 = *(v16 + 5672);
    v100 = OUTLINED_FUNCTION_98_0(*(v16 + 5760));
    v101(v100);

    OUTLINED_FUNCTION_19_0();
    goto LABEL_88;
  }

  v32 = *(v16 + 5840);
  v33 = sub_2753B5FF8();
  OUTLINED_FUNCTION_199(v33);
  swift_allocObject();
  sub_2753B5FE8();
  sub_275315F0C();
  OUTLINED_FUNCTION_230();
  if (v32)
  {
    v34 = OUTLINED_FUNCTION_110_0();
    sub_275315F60(v34, v35);

    goto LABEL_87;
  }

  result = memcpy((v16 + 840), (v16 + 16), 0x338uLL);
  v37 = *(v16 + 840);
  v38 = *(v16 + 848);
  v39 = HIBYTE(v38) & 0xF;
  v40 = v37 & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0x2000000000000000) != 0)
  {
    v41 = HIBYTE(v38) & 0xF;
  }

  else
  {
    v41 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
    goto LABEL_85;
  }

  if ((v38 & 0x1000000000000000) != 0)
  {
    v85 = *(v16 + 848);

    v43 = sub_27531518C(v37, v38, 10);
    v87 = v86;

    if (v87)
    {
      goto LABEL_85;
    }

    goto LABEL_79;
  }

  if ((v38 & 0x2000000000000000) != 0)
  {
    a11 = *(v16 + 840);
    a12 = v38 & 0xFFFFFFFFFFFFFFLL;
    if (a11 == 43)
    {
      if (v39)
      {
        if (v39 != 1)
        {
          OUTLINED_FUNCTION_201();
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v45 & v44)
            {
              break;
            }

            OUTLINED_FUNCTION_44_0();
            if (!v45)
            {
              break;
            }

            v43 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              break;
            }

            OUTLINED_FUNCTION_109_0();
            if (v45)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_95:
      __break(1u);
      return result;
    }

    if (*(v16 + 840) != 45)
    {
      if (v39)
      {
        while (1)
        {
          OUTLINED_FUNCTION_34_0();
          if (!v45 & v44)
          {
            break;
          }

          OUTLINED_FUNCTION_44_0();
          if (!v45)
          {
            break;
          }

          v43 = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            break;
          }

          OUTLINED_FUNCTION_109_0();
          if (v45)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v39)
    {
      if (v39 != 1)
      {
        OUTLINED_FUNCTION_201();
        while (1)
        {
          OUTLINED_FUNCTION_34_0();
          if (!v45 & v44)
          {
            break;
          }

          OUTLINED_FUNCTION_44_0();
          if (!v45)
          {
            break;
          }

          v43 = v50 - v49;
          if (__OFSUB__(v50, v49))
          {
            break;
          }

          OUTLINED_FUNCTION_109_0();
          if (v45)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_93;
  }

  if ((v37 & 0x1000000000000000) != 0)
  {
    result = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v110 = *(v16 + 840);
    v111 = *(v16 + 848);
    result = sub_2753B73F8();
  }

  v42 = *result;
  if (v42 == 43)
  {
    if (v40 >= 1)
    {
      if (v40 != 1)
      {
        v43 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_203();
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v45 & v44)
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_44_0();
            if (!v45)
            {
              goto LABEL_77;
            }

            v43 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_109_0();
            if (v45)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_77;
    }

    goto LABEL_94;
  }

  if (v42 == 45)
  {
    if (v40 >= 1)
    {
      if (v40 != 1)
      {
        v43 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_203();
          while (1)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v45 & v44)
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_44_0();
            if (!v45)
            {
              goto LABEL_77;
            }

            v43 = v47 - v46;
            if (__OFSUB__(v47, v46))
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_109_0();
            if (v45)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_68:
        v48 = 0;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v40)
  {
    v43 = 0;
    if (result)
    {
      while (1)
      {
        v55 = *result - 48;
        if (v55 > 9)
        {
          goto LABEL_77;
        }

        v56 = 10 * v43;
        if ((v43 * 10) >> 64 != (10 * v43) >> 63)
        {
          goto LABEL_77;
        }

        v43 = v56 + v55;
        if (__OFADD__(v56, v55))
        {
          goto LABEL_77;
        }

        ++result;
        if (!--v40)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_77:
  v43 = 0;
  v48 = 1;
LABEL_78:
  LOBYTE(a10) = v48;
  if (v48)
  {
LABEL_85:
    v88 = *(v16 + 5672);
    v89 = *(v16 + 5664);
    sub_275314678();
    OUTLINED_FUNCTION_206();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v16 + 2427) = 16;
    sub_2753B6298();
    OUTLINED_FUNCTION_49_0();
    sub_2753B62C8();
    *(v16 + 5568) = v37;
    *(v16 + 5576) = v38;

    sub_2753B62B8();
    sub_275315F74(v16 + 840);

    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v90, v91, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_67_1();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    goto LABEL_86;
  }

LABEL_79:
  if (!v43)
  {
    goto LABEL_85;
  }

  OUTLINED_FUNCTION_237((v16 + 2432));
  if (sub_275315FC8(v16 + 2432) == 1 || (memcpy((v16 + 3200), (v16 + 2432), 0x2F9uLL), sub_27531603C(v16 + 3200)))
  {
    v59 = *(v16 + 5768);
    v60 = *(v16 + 5752);
    v61 = *(v16 + 5672);
    v62 = *(v16 + 5664);
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    *(v16 + 2428) = 12;
    sub_2753B6298();
    OUTLINED_FUNCTION_49_0();
    sub_2753B62C8();
    v63 = *(v16 + 864);
    *(v16 + 5584) = *(v16 + 856);
    *(v16 + 5592) = v63;

    sub_2753B62B8();
    sub_275315F74(v16 + 840);

    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    sub_2753B69A8();
    v64 = *(v16 + 5608);
    *(v16 + 5616) = *(v16 + 5600);
    *(v16 + 5624) = v64;
    sub_2753146CC();
    OUTLINED_FUNCTION_239();

    OUTLINED_FUNCTION_23_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    sub_275316CAC(0, v65, v66, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_9_2();
    swift_allocError();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_212();
LABEL_86:
    sub_2753B62E8();
    swift_willThrow();
    v92 = OUTLINED_FUNCTION_110_0();
    sub_275315F60(v92, v93);
    goto LABEL_87;
  }

  v67 = *(v16 + 5768);
  a9 = *(v16 + 5744);
  v68 = *(v16 + 5704);
  v69 = *(v16 + 5656);
  v70 = *(v16 + 5648);
  v71 = *(v16 + 5632);
  v72 = sub_275316098(v16 + 3200);
  memcpy((v16 + 1664), v72, 0x2F9uLL);
  OUTLINED_FUNCTION_237((v16 + 3968));
  sub_275315FE0(v16 + 3968, v16 + 4736);
  sub_275315F74(v16 + 840);
  sub_2753119D8((v16 + 1664), v43, a9, v71);
  v73 = *(v16 + 5768);
  v74 = *(v16 + 5760);
  v75 = *(v16 + 5752);
  v76 = *(v16 + 5736);
  v77 = *(v16 + 5720);
  v78 = *(v16 + 5696);
  v79 = *(v16 + 5672);
  v80 = OUTLINED_FUNCTION_110_0();
  sub_275315F60(v80, v81);
  sub_275316048(v16 + 888, qword_2809C1498, &type metadata for MediaAPI.Attributes);
  v82 = *(v74 + 8);
  v83 = OUTLINED_FUNCTION_69_0();
  v84(v83);

  OUTLINED_FUNCTION_35_0();
LABEL_88:
  OUTLINED_FUNCTION_175();

  return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_275311504()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_68_0();
  v1 = v0[726];
  v2 = v0[725];

  v3 = v0[730];
  v4 = v0[721];
  v5 = v0[719];
  v6 = v0[717];
  v7 = v0[715];
  v8 = v0[712];
  v9 = v0[709];
  v10 = OUTLINED_FUNCTION_105_0(v0[720]);
  v11(v10);

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_217();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2753115C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a4;
  v6[11] = a6;
  v6[8] = a2;
  v6[9] = a3;
  v6[7] = a1;
  return MEMORY[0x2822009F8](sub_2753115F0, 0, 0);
}

uint64_t sub_2753115F0()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v0[6] = 1;
  OUTLINED_FUNCTION_112_0(v2);
  v0[12] = sub_2753B69B8();
  sub_2753B69A8();
  v4 = v0[2];
  v0[13] = v0[3];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_2753116BC;
  v6 = v0[8];
  OUTLINED_FUNCTION_71_0();

  return MusicContentStorage.Operations.hasMediaAPIAttributes(containing:for:)();
}

uint64_t sub_2753116BC()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {
    v11 = *(v5 + 104);

    *(v5 + 168) = v3 & 1;
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2753117D4()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 72);
    sub_2753B69A8();
    v3 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 40);
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_2753118C8;
    v5 = *(v0 + 64);
    OUTLINED_FUNCTION_75_0();

    return MusicContentStorage.Operations.mediaAPIAttributes(for:)();
  }

  else
  {
    v7 = *(v0 + 56);
    *v7 = 0;
    v7[1] = 0;
    OUTLINED_FUNCTION_35_0();

    return v8();
  }
}

uint64_t sub_2753118C8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_45_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  v5[18] = v1;

  if (!v1)
  {
    v11 = v5[16];

    v5[19] = v0;
    v5[20] = v3;
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2753119D8@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = *(a3 + 8);
  sub_2753B69B8();
  sub_2753B6978();
  v10[0] = v11[0];
  *(v10 + 13) = *(v11 + 13);
  sub_27530FDEC(a2, v10, a4);
  v9[0] = v10[0];
  *(v9 + 13) = *(v10 + 13);
  return sub_275314888(v9);
}

uint64_t FacetCollection<>.MusicKitAssetElement.value<A, B>(from:for:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_155_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_41_0(v9, v10, v11, v12);
  v0[9] = v13;
  OUTLINED_FUNCTION_75(v13);
  v15 = *(v14 + 64);
  v0[10] = OUTLINED_FUNCTION_138_0();
  v0[11] = OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_93_0();
  v16 = sub_2753B72A8();
  v0[12] = v16;
  OUTLINED_FUNCTION_17_1(v16);
  v0[13] = v17;
  v19 = *(v18 + 64);
  v0[14] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_87_0();
  v0[15] = v20;
  v22 = *(v21 + 64);
  v0[16] = OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_88_0();
  v0[17] = v23;
  v25 = *(v24 + 64);
  v0[18] = OUTLINED_FUNCTION_138_0();
  v26 = OUTLINED_FUNCTION_20_0();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_275311C04()
{
  OUTLINED_FUNCTION_144_0();
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_54_0(v0[15]);
  v7(v6);
  v8 = OUTLINED_FUNCTION_59_0();
  v9 = v0[11];
  if (!v8)
  {
    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[12];
    v32 = v0[9];
    v31 = v0[10];
    v33 = v0[6];
    v34 = v0[3];
    OUTLINED_FUNCTION_140_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v9);
    (*(v29 + 8))(v28, v30);
    sub_275314678();
    OUTLINED_FUNCTION_124_0();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_85_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_83_0();
    sub_2753B62A8();
    OUTLINED_FUNCTION_24_0();
    sub_2753B62C8();
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_193(v38, v39, v40, v41, MEMORY[0x277D64F08]);
    sub_275314720();
    OUTLINED_FUNCTION_25_0();
    swift_allocError();
    OUTLINED_FUNCTION_52_0();
    sub_2753B62E8();
    swift_willThrow();
    OUTLINED_FUNCTION_232();

    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_172();

    __asm { BRAA            X1, X16 }
  }

  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[14];
  v13 = OUTLINED_FUNCTION_213();
  __swift_storeEnumTagSinglePayload(v13, v14, 1, v9);
  v15 = *(v11 + 32);
  v16 = OUTLINED_FUNCTION_52_0();
  v17(v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[19] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_157_0(v18);
  OUTLINED_FUNCTION_172();

  return sub_275310560(v20, v21, v22, v23, v24, v25);
}

uint64_t sub_275311E24()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_275311F20()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = OUTLINED_FUNCTION_98_0(v0[17]);
  v7(v6);

  OUTLINED_FUNCTION_35_0();

  return v8();
}

uint64_t sub_275311FB8()
{
  OUTLINED_FUNCTION_3();
  (*(v0[17] + 8))(v0[18], v0[11]);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];

  OUTLINED_FUNCTION_19_0();

  return v6();
}

uint64_t sub_2753120AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.FullyQualifiedContentRegistrationElement.prepare(in:)();
}

uint64_t sub_275312138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitAssetElement.availability<A>(of:)();
}

uint64_t sub_275312200()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return FacetCollection<>.MusicKitAssetElement.value<A, B>(from:for:)();
}

uint64_t sub_2753122FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_2753B6288();
  v4[6] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v6 = sub_2753B70C8();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_2753123C8, v6, v5);
}

uint64_t sub_2753123C8()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_94_0(v1);
  v2 = *(MEMORY[0x277D64F18] + 4);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  sub_275316CAC(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  OUTLINED_FUNCTION_134_0();
  *v3 = v4;
  v3[1] = sub_2753124BC;
  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2821CC178]();
}

uint64_t sub_2753124BC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_275312618;
  }

  else
  {
    v12 = v3[9];

    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_2753125C0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2753125C0()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275312618()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[9];
  v2 = v0[6];

  OUTLINED_FUNCTION_19_0();
  v4 = v0[11];

  return v3();
}

uint64_t sub_275312680(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_2753B6288();
  v3[7] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v5 = sub_2753B70C8();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x2822009F8](sub_27531274C, v5, v4);
}

uint64_t sub_27531274C()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 48);
  v2 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D64F18] + 4);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  OUTLINED_FUNCTION_43_0(v6, &qword_2809C0E08, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_134_0();
  *v6 = v7;
  v6[1] = sub_275312830;
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2821CC178]();
}

uint64_t sub_275312830()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_275312990;
  }

  else
  {
    v12 = v3[10];

    v9 = v3[8];
    v10 = v3[9];
    v11 = sub_275312934;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275312934()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[7];

  v2 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_168();

  return v4();
}

uint64_t sub_275312990()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[10];
  v2 = v0[7];

  OUTLINED_FUNCTION_19_0();
  v4 = v0[12];

  return v3();
}

uint64_t sub_2753129F8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_2753B6288();
  v3[6] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v5 = sub_2753B70C8();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_275312AC4, v5, v4);
}

uint64_t sub_275312AC4()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_94_0(v1);
  v2 = *(MEMORY[0x277D64F18] + 4);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  OUTLINED_FUNCTION_42_0(v3, &qword_2809C1898, MEMORY[0x277D64FD0]);
  OUTLINED_FUNCTION_134_0();
  *v3 = v4;
  v3[1] = sub_275312B8C;
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2821CC178]();
}

uint64_t sub_275312B8C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_275312618;
  }

  else
  {
    v12 = v3[9];

    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_275312C90;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275312C90()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_161();

  return v3();
}

uint64_t sub_275312CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_2753B6288();
  v4[6] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v6 = sub_2753B70C8();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_275312DB8, v6, v5);
}

uint64_t sub_275312DB8()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_94_0(v1);
  v2 = *(MEMORY[0x277D64F18] + 4);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  OUTLINED_FUNCTION_43_0(v3, &qword_2809C1488, &type metadata for TransitionInfoStorage);
  OUTLINED_FUNCTION_134_0();
  *v3 = v4;
  v3[1] = sub_275312E80;
  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x2821CC178]();
}

uint64_t sub_275312E80()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_2753179B4;
  }

  else
  {
    v12 = v3[9];

    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_2753179DC;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275312F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  sub_2753B6288();
  v4[19] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v6 = sub_2753B70C8();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_275313050, v6, v5);
}

uint64_t sub_275313050()
{
  OUTLINED_FUNCTION_68_0();
  if (qword_2809C06E8 != -1)
  {
    OUTLINED_FUNCTION_21_0();
  }

  sub_2753B7848();
  v3 = v1[16];
  v2 = v1[17];
  if (v1[14])
  {
    v4 = sub_2753B6398();
    OUTLINED_FUNCTION_80_0(v4, MEMORY[0x277D64F38]);
    OUTLINED_FUNCTION_1_3();
    v17 = v5;
    v6 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v1[22] = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_77_0(v7);
    v10 = v0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_62_0(v11, MEMORY[0x277D64F68]);

    OUTLINED_FUNCTION_1_3();
    v17 = v12;
    v13 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v1[24] = v14;
    *v14 = v15;
    v9 = OUTLINED_FUNCTION_77_0(v14);
    v10 = 0;
  }

  return v17(v9, v10);
}

uint64_t sub_2753131E4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 176);
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 168);
  v8 = *(v1 + 160);
  if (v0)
  {
    v9 = sub_275313494;
  }

  else
  {
    v9 = sub_275313434;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_27531330C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 168);
  v8 = *(v1 + 160);
  if (v0)
  {
    v9 = sub_275313558;
  }

  else
  {
    v9 = sub_2753134F8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275313434()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 152);

  sub_275317184(v0 + 64);
  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275313494()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 152);

  sub_275317184(v0 + 64);
  v2 = *(v0 + 184);
  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_2753134F8()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 152);

  sub_275317184(v0 + 16);
  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275313558()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 152);

  sub_275317184(v0 + 16);
  v2 = *(v0 + 200);
  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_2753135BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  sub_2753B6288();
  v3[20] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v5 = sub_2753B70C8();
  v3[21] = v5;
  v3[22] = v4;

  return MEMORY[0x2822009F8](sub_275313688, v5, v4);
}

uint64_t sub_275313688()
{
  OUTLINED_FUNCTION_68_0();
  if (qword_2809C06E8 != -1)
  {
    OUTLINED_FUNCTION_21_0();
  }

  sub_2753B7848();
  v3 = v1[17];
  v2 = v1[18];
  if (v1[16])
  {
    v4 = sub_2753B6398();
    OUTLINED_FUNCTION_80_0(v4, MEMORY[0x277D64F38]);
    OUTLINED_FUNCTION_1_3();
    v17 = v5;
    v6 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v1[23] = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_216(v7);
    v10 = v0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_62_0(v11, MEMORY[0x277D64F68]);

    OUTLINED_FUNCTION_1_3();
    v17 = v12;
    v13 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v1[25] = v14;
    *v14 = v15;
    v9 = OUTLINED_FUNCTION_216(v14);
    v10 = 0;
  }

  return v17(v9, v10);
}

uint64_t sub_27531381C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 176);
  v8 = *(v1 + 168);
  if (v0)
  {
    v9 = sub_275313AD0;
  }

  else
  {
    v9 = sub_275313A6C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275313944()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 200);
  *v4 = *v2;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 176);
  v8 = *(v1 + 168);
  if (v0)
  {
    v9 = sub_275313B98;
  }

  else
  {
    v9 = sub_275313B34;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275313A6C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[20];

  sub_275317184((v0 + 8));
  v2 = v0[14];
  v3 = v0[15];
  OUTLINED_FUNCTION_168();

  return v4();
}

uint64_t sub_275313AD0()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 160);

  sub_275317184(v0 + 64);
  v2 = *(v0 + 192);
  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_275313B34()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[20];

  sub_275317184((v0 + 2));
  v2 = v0[14];
  v3 = v0[15];
  OUTLINED_FUNCTION_168();

  return v4();
}

uint64_t sub_275313B98()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 160);

  sub_275317184(v0 + 16);
  v2 = *(v0 + 208);
  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_275313BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  sub_2753B6288();
  v3[19] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v5 = sub_2753B70C8();
  v3[20] = v5;
  v3[21] = v4;

  return MEMORY[0x2822009F8](sub_275313CC8, v5, v4);
}

uint64_t sub_275313CC8()
{
  OUTLINED_FUNCTION_68_0();
  if (qword_2809C06E8 != -1)
  {
    OUTLINED_FUNCTION_21_0();
  }

  sub_2753B7848();
  v3 = v1[16];
  v2 = v1[17];
  if (v1[15])
  {
    v4 = sub_2753B6398();
    OUTLINED_FUNCTION_80_0(v4, MEMORY[0x277D64F38]);
    OUTLINED_FUNCTION_1_3();
    v17 = v5;
    v6 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v1[22] = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_215(v7);
    v10 = v0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_62_0(v11, MEMORY[0x277D64F68]);

    OUTLINED_FUNCTION_1_3();
    v17 = v12;
    v13 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v1[24] = v14;
    *v14 = v15;
    v9 = OUTLINED_FUNCTION_215(v14);
    v10 = 0;
  }

  return v17(v9, v10);
}

uint64_t sub_275313E5C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 176);
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 168);
  v8 = *(v1 + 160);
  if (v0)
  {
    v9 = sub_275313494;
  }

  else
  {
    v9 = sub_2753140AC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275313F84()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 168);
  v8 = *(v1 + 160);
  if (v0)
  {
    v9 = sub_275313558;
  }

  else
  {
    v9 = sub_275314110;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2753140AC()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 152);

  sub_275317184(v0 + 64);
  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_161();

  return v3();
}

uint64_t sub_275314110()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 152);

  sub_275317184(v0 + 16);
  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_161();

  return v3();
}

uint64_t sub_275314174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  sub_2753B6288();
  v4[19] = sub_2753B6278();
  sub_275315BB8(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v6 = sub_2753B70C8();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_275314240, v6, v5);
}

uint64_t sub_275314240()
{
  OUTLINED_FUNCTION_68_0();
  if (qword_2809C06E8 != -1)
  {
    OUTLINED_FUNCTION_21_0();
  }

  sub_2753B7848();
  v3 = v1[16];
  v2 = v1[17];
  if (v1[14])
  {
    v4 = sub_2753B6398();
    OUTLINED_FUNCTION_80_0(v4, MEMORY[0x277D64F38]);
    OUTLINED_FUNCTION_1_3();
    v17 = v5;
    v6 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v1[22] = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_77_0(v7);
    v10 = v0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_62_0(v11, MEMORY[0x277D64F68]);

    OUTLINED_FUNCTION_1_3();
    v17 = v12;
    v13 = *(v2 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    v1[24] = v14;
    *v14 = v15;
    v9 = OUTLINED_FUNCTION_77_0(v14);
    v10 = 0;
  }

  return v17(v9, v10);
}

uint64_t sub_2753143D4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 176);
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 168);
  v8 = *(v1 + 160);
  if (v0)
  {
    v9 = sub_2753179CC;
  }

  else
  {
    v9 = sub_27531796C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2753144FC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_145_0();
  v7 = *(v6 + 168);
  v8 = *(v1 + 160);
  if (v0)
  {
    v9 = sub_2753179D0;
  }

  else
  {
    v9 = sub_275317970;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

unint64_t sub_275314624()
{
  result = qword_2809C1420;
  if (!qword_2809C1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1420);
  }

  return result;
}

unint64_t sub_275314678()
{
  result = qword_2809C1430;
  if (!qword_2809C1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1430);
  }

  return result;
}

unint64_t sub_2753146CC()
{
  result = qword_2809C1438;
  if (!qword_2809C1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1438);
  }

  return result;
}

unint64_t sub_275314720()
{
  result = qword_2809C1448;
  if (!qword_2809C1448)
  {
    sub_275316CAC(255, &qword_2809C1440, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1448);
  }

  return result;
}

uint64_t sub_2753147B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a5 >> 5;
  if (v6 <= 5)
  {
    if (v6 == 2)
    {
    }
  }

  return result;
}

unint64_t sub_27531480C()
{
  result = qword_2809C1458;
  if (!qword_2809C1458)
  {
    sub_275317784(255, &qword_2809C1450, &type metadata for MusicContent.QualifiedIdentifier, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1458);
  }

  return result;
}

void sub_2753148DC()
{
  if (!qword_2809C1460)
  {
    sub_2753149C4(255, &qword_2809C1468);
    v0 = sub_2753B76C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1460);
    }
  }
}

void sub_275314944()
{
  if (!qword_2809C1470)
  {
    sub_2753B6A38();
    sub_2753149C4(255, &qword_2809C1478);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C1470);
    }
  }
}

uint64_t sub_2753149C4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_275314A18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_275301360(a1, a2, a3);
}

uint64_t sub_275314A34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_58_0();
  v9 = sub_275314AF4(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_275316DF4(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

unint64_t sub_275314AF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_275314BF4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2753B73F8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_275314BF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_275314C40(a1, a2);
  sub_275314D58(&unk_288407738);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_275314C40(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2753B6E38())
  {
    result = sub_275314E3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2753B7388();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2753B73F8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_275314D58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_275314EC4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_275314E3C(uint64_t a1, uint64_t a2)
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

  sub_275317784(0, &qword_2809C1830, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_275314EC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_275317784(0, &qword_2809C1830, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_275314FD0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  sub_275316CAC(0, &qword_2809C1870, sub_275316D14, MEMORY[0x277CD7E90], MEMORY[0x277D84098]);
  result = sub_2753B7368();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_2753B7798();

    sub_2753B6688();
    result = sub_2753B77D8();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_2753B7718() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unsigned __int8 *sub_27531518C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2753B6E88();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_275315714(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2753B73F8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_275315714(uint64_t a1, unint64_t a2)
{
  v2 = sub_275315780(sub_27531577C, 0, a1, a2);
  v6 = sub_2753157B4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_275315780(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_2753157B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2753B6DF8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2753B72B8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_275314E3C(v9, 0);
  v12 = sub_275315914(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2753B6DF8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2753B73F8();
LABEL_4:

  return sub_2753B6DF8();
}

unint64_t sub_275315914(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_275315B24(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2753B6E68();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2753B73F8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_275315B24(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2753B6E48();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_275315B24(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2753B6E78();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x277C76130](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_275315BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275315C00()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_14_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_2(v1);
  OUTLINED_FUNCTION_111_0();

  return sub_275302C7C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_275315C8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_275315CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((~a7 & 0xFE00FE) != 0)
  {
    return sub_275315CB8(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_275315CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = (a7 >> 21) & 7;
  if (v8 <= 5)
  {
    if (((1 << v8) & 0x1A) == 0)
    {
    }
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

uint64_t sub_275315D60()
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_18_1();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_26_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_19_1(v4);
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_179();

  return sub_275305EBC(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_275315DF4()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_14_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_2(v1);
  OUTLINED_FUNCTION_111_0();

  return sub_275308C20(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_275315E80()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_14_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_2(v1);
  OUTLINED_FUNCTION_111_0();

  return sub_27530F910(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_275315F0C()
{
  result = qword_2809C1490;
  if (!qword_2809C1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1490);
  }

  return result;
}

uint64_t sub_275315F60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2752F2350(a1, a2);
  }

  return a1;
}

uint64_t sub_275315FC8(uint64_t a1)
{
  if ((*(a1 + 584) >> 1) > 0x80000000)
  {
    return -(*(a1 + 584) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275316048(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43_0(a1, a2, a3);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2753160E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27531618C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_275316200(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_275316290(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_275316320(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2753163B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_275316408()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_27531645C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_27531649C(uint64_t result, int a2, int a3)
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

uint64_t sub_2753164F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_275316530(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_275316570(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPI(unsigned int *a1, int a2)
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

_BYTE *sub_27531666C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275316708);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275316748()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_14_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_2(v1);
  OUTLINED_FUNCTION_111_0();

  return sub_2753115C8(v3, v4, v5, v6, v7, v8);
}

void sub_2753167D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_275316838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_275316888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2753168D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_8_2(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

void sub_275316934()
{
  if (!qword_2809C1838)
  {
    sub_2753169C4(255, &qword_2809C1840, MEMORY[0x277CD8320], MEMORY[0x277CD8310], MEMORY[0x277CD7C78]);
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1838);
    }
  }
}

void sub_2753169C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_275316A30(uint64_t a1, uint64_t a2)
{
  sub_2753167D4(0, &qword_2809C1858, MEMORY[0x277D2A720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275316AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2753167D4(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_275316B2C(uint64_t a1)
{
  sub_275316934();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275316B88()
{
  result = qword_2809C1868;
  if (!qword_2809C1868)
  {
    sub_2753169C4(255, &qword_2809C1840, MEMORY[0x277CD8320], MEMORY[0x277CD8310], MEMORY[0x277CD7C78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1868);
  }

  return result;
}

uint64_t sub_275316C18(uint64_t a1, uint64_t a2)
{
  sub_2753167D4(0, &qword_2809C1288, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_275316CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_275316D14()
{
  result = qword_2809C1878;
  if (!qword_2809C1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1878);
  }

  return result;
}

uint64_t sub_275316D68()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_14_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_2(v1);
  OUTLINED_FUNCTION_111_0();

  return sub_275308C20(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_275316DF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_275316E50()
{
  result = qword_2809C1880;
  if (!qword_2809C1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1880);
  }

  return result;
}

uint64_t sub_275316EF8(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_275316F10()
{
  result = qword_2809C12E8;
  if (!qword_2809C12E8)
  {
    sub_2753167D4(255, &qword_2809C12B0, MEMORY[0x277CD8320], MEMORY[0x277D83940]);
    sub_275315BB8(&qword_2809C12F0, MEMORY[0x277CD8320]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C12E8);
  }

  return result;
}

unint64_t sub_275317044()
{
  result = qword_2809C1888;
  if (!qword_2809C1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1888);
  }

  return result;
}

uint64_t sub_2753170F4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_135_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  v1[1] = sub_2752FE5C0;
  v3 = OUTLINED_FUNCTION_50_0();

  return sub_275314174(v3, v4, v5, v6);
}

uint64_t sub_2753171D8()
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_18_1();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_26_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_19_1(v4);
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_179();

  return sub_275306C08(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_27531726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_27531731C;

  return sub_2753135BC(a2, a3, a4);
}

uint64_t sub_27531731C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18_0();
  v7 = v6;
  OUTLINED_FUNCTION_13_2();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_2();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    v13[1] = v3;
  }

  v14 = *(v11 + 8);
  OUTLINED_FUNCTION_195();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_275317418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_2753174C8;

  return sub_275313BFC(a2, a3, a4);
}

uint64_t sub_2753174C8()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  v5 = v4;
  OUTLINED_FUNCTION_13_2();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_2753175C0()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_135_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  v1[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_195();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_27531765C()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_14_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_2(v1);
  OUTLINED_FUNCTION_111_0();

  return sub_275303694(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2753176E8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_135_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  v1[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_195();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_275317784(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2753177D4()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_14_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_2(v1);
  OUTLINED_FUNCTION_111_0();

  return sub_2753009F4(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_275317860()
{
  result = qword_2809C18A0[0];
  if (!qword_2809C18A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C18A0);
  }

  return result;
}

uint64_t sub_2753178B4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_135_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_26_0(v0);
  *v1 = v2;
  v1[1] = sub_2752FD514;
  v3 = OUTLINED_FUNCTION_50_0();

  return sub_275312F84(v3, v4, v5, v6);
}

void OUTLINED_FUNCTION_14_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

void OUTLINED_FUNCTION_15_1()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[72];
  v5 = v0[70];
  v6 = v0[67];
  v8 = v0[63];
  v7 = v0[64];
}

void OUTLINED_FUNCTION_18_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_27_0()
{
  v1 = v0[678];
  v2 = v0[677];
  v3 = v0[676];
  v4 = v0[675];
  v5 = v0[673];
  v6 = v0[672];
  v7 = v0[671];
  v8 = v0[670];
  v9 = v0[668];
  v10 = v0[667];
  v11 = v0[665];
  v12 = v0[662];
  v13 = v0[661];
}

void OUTLINED_FUNCTION_28_0()
{
  v1 = v0[678];
  v2 = v0[677];
  v3 = v0[676];
  v4 = v0[675];
  v5 = v0[673];
  v6 = v0[672];
  v7 = v0[671];
  v8 = v0[670];
  v9 = v0[668];
  v10 = v0[667];
  v11 = v0[665];
  v12 = v0[662];
  v13 = v0[661];
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_36_0()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[60];
  v8 = v0[61];
  v10 = v0[58];
  v9 = v0[59];
  v11 = v0[55];
  v12 = v0[56];
  v14 = v0[52];
  v13 = v0[53];
}

void OUTLINED_FUNCTION_37_0()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[60];
  v8 = v0[61];
  v9 = v0[58];
  v10 = v0[59];
  v11 = v0[55];
  v12 = v0[56];
  v14 = v0[52];
  v13 = v0[53];
}

uint64_t OUTLINED_FUNCTION_38_0@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void OUTLINED_FUNCTION_41_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = MEMORY[0x277D64F00];

  sub_275316CAC(0, a2, a3, a4, v5);
}

void OUTLINED_FUNCTION_42_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D83940];

  sub_275317784(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_43_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D83D88];

  sub_275317784(0, a2, a3, v4);
}

void *OUTLINED_FUNCTION_56_0(void *result)
{
  result[2] = v3;
  result[3] = v5;
  result[4] = v2;
  result[5] = v4;
  result[6] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[5] = a1;
  v3[6] = a2;
  v3[2] = v2;
  v3[7] = *(v4 + 32);
}

uint64_t OUTLINED_FUNCTION_72_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_74_0(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + 32);
  return v2;
}

uint64_t OUTLINED_FUNCTION_77_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 144);
  return *(v2 + 120);
}

uint64_t OUTLINED_FUNCTION_80_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[11] = a1;
  v3[12] = a2;
  v3[8] = v2;
  v3[13] = *(v4 + 32);
}

uint64_t OUTLINED_FUNCTION_89_0()
{
  v2 = v0[7];
  v3 = v0[6];
  v4 = *(v0[8] + 8);

  return sub_2753B69B8();
}

uint64_t OUTLINED_FUNCTION_91_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 32);
  v4 = *(v2 + 40);
  return result;
}

__n128 OUTLINED_FUNCTION_94_0(uint64_t a1)
{
  *(v2 + 72) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_108_0()
{
  v4 = v1[51];
  v5 = v1[49];
  v2 = v1[48];
  v6 = v1[42];
  v7 = v1[39];
  return v0;
}

uint64_t OUTLINED_FUNCTION_114_0()
{
  v4 = v1[51];
  v5 = v1[49];
  v2 = v1[48];
  v6 = v1[42];
  v7 = v1[39];
  return v0;
}

uint64_t OUTLINED_FUNCTION_116_0@<X0>(uint64_t a1@<X8>)
{
  v6 = v1[659];
  v7 = v1[658];
  v3 = v1[652];
  v8 = v1[649];
  v4 = *(a1 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_119_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  *(v4 - 160) = v3;
  *(v4 - 152) = a1;
  v5 = *(v4 - 208);
  v6 = v4 - 224;
  *(v6 + 80) = *(v4 - 224);
  *(v6 + 96) = v5;
  *(v6 + 112) = *(v4 - 192);
  *(v6 + 127) = *(v4 - 177);
  return a3;
}

void OUTLINED_FUNCTION_120_0()
{
  v1 = v0[65];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[55];
  v5 = v0[53];
  v6 = v0[51];
  v8 = v0[48];
  v7 = v0[49];
  v10 = v0[44];
  v9 = v0[45];
  v11 = v0[41];
  v12 = v0[54] + 8;
}

uint64_t OUTLINED_FUNCTION_121_0()
{

  return sub_2753B62D8();
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return sub_2753B62D8();
}

uint64_t OUTLINED_FUNCTION_128_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
  v6 = *(v5 + 8);
  return v4;
}

void OUTLINED_FUNCTION_132_0()
{
  v1 = v0[57];
  v2 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[50];
}

void OUTLINED_FUNCTION_135_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_138_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_139_0(uint64_t a1@<X8>)
{
  v4 = v1[659];
  v5 = v1[658];
  v2 = v1[652];
  v6 = v1[649];
  v3 = *(a1 + 8);
}

uint64_t OUTLINED_FUNCTION_149_0()
{
  *(v0 + 168) = 7;

  return sub_2753B6298();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_151_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_155_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_157_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[18];
  v4 = v2[7];
  v5 = v2[8];
  v6 = v2[4];
  v7 = v2[5];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_158_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  v4 = v2[7];
  v5 = v2[3];
  v6 = v2[4];
  return v2[17];
}

void OUTLINED_FUNCTION_159_0()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
}

uint64_t OUTLINED_FUNCTION_169()
{

  return sub_2753B6278();
}

void OUTLINED_FUNCTION_170()
{

  JUMPOUT(0x277C77190);
}

uint64_t OUTLINED_FUNCTION_171()
{

  return sub_2753B62C8();
}

uint64_t OUTLINED_FUNCTION_176()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_184(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = result;
  v7[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_185()
{
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_2753B62C8();
}

uint64_t OUTLINED_FUNCTION_187()
{
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[13];
}

uint64_t OUTLINED_FUNCTION_188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_2752FBB6C(a15, v19, v20, a16, a17, a18, v18);
}

uint64_t OUTLINED_FUNCTION_189()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_190()
{

  return sub_2753B62D8();
}

uint64_t OUTLINED_FUNCTION_191()
{
  v2 = *(*(v0 + 40) + 24);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_192()
{

  return sub_2753B6998();
}

void OUTLINED_FUNCTION_193(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{

  sub_275316CAC(0, a2, a3, v5, a5);
}

uint64_t OUTLINED_FUNCTION_194()
{

  return type metadata accessor for MediaAPIResourceRequest();
}

uint64_t OUTLINED_FUNCTION_197()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{

  sub_275316CAC(0, a2, a3, v5, a5);
}

uint64_t OUTLINED_FUNCTION_199(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_215(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 144);
  return v2 + 112;
}

uint64_t OUTLINED_FUNCTION_216(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 152);
  return v2 + 112;
}

uint64_t OUTLINED_FUNCTION_227(uint64_t a1)
{
  *a1 = *(v2 - 144);
  *(a1 + 13) = *(v1 + 13);

  return sub_275314888(a1);
}

unint64_t OUTLINED_FUNCTION_228()
{
  v2 = v0[721];
  v3 = v0[719];
  v4 = v0[709];
  v5 = v0[708];

  return sub_275314678();
}

uint64_t OUTLINED_FUNCTION_229()
{
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[9];
}

uint64_t OUTLINED_FUNCTION_230()
{

  return sub_2753B5FD8();
}

uint64_t OUTLINED_FUNCTION_231()
{
  *(v0 + 2426) = 11;

  return sub_2753B6298();
}

uint64_t OUTLINED_FUNCTION_232()
{
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
}

uint64_t OUTLINED_FUNCTION_233()
{
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[49];
  v5 = v0[47];
  v6 = v0[44];
}

uint64_t OUTLINED_FUNCTION_234()
{

  return sub_2753B62C8();
}

uint64_t OUTLINED_FUNCTION_235()
{

  return sub_2753B6A88();
}

void *OUTLINED_FUNCTION_237(void *a1)
{

  return memcpy(a1, (v1 + 888), 0x2F9uLL);
}

uint64_t OUTLINED_FUNCTION_238()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return type metadata accessor for MediaAPIResourceRequest();
}

uint64_t OUTLINED_FUNCTION_239()
{

  return sub_2753B62B8();
}

uint64_t OUTLINED_FUNCTION_240()
{
  v2 = *(v0 + 16);

  return sub_2753B6438();
}

uint64_t sub_275318D68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = type metadata accessor for MediaAPIResourceRequest.Configuration();
  if (v4 <= 0x3F)
  {
    v3 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      type metadata accessor for MediaAPIResourceRequest.Identifier();
      type metadata accessor for MediaAPIResourceRequest.Option();
      swift_getWitnessTable();
      sub_2753B71D8();
      swift_getWitnessTable();
      v3 = sub_2753B6CD8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_275318EAC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 48) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x275318FF4);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 48) & ~v7, v6, v4);
  }

  v18 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_275319008(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return;
      case 2:
        *&a1[v11] = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x2753191F4);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = &a1[v10 + 48] & ~v10;

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
            *(a1 + 5) = 0;
            *(a1 + 24) = 0u;
            *(a1 + 8) = 0u;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *a1 = v18;
        }
      }

      return;
  }
}

uint64_t sub_27531927C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_2753192CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_27531930C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_275319358()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2753193A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 67))
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

uint64_t sub_2753193E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_275319440(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27531950CLL);
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

uint64_t sub_275319534(uint64_t a1, uint64_t a2)
{
  sub_2753149C4(0, &qword_2809C1468);
  OUTLINED_FUNCTION_67_1();
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

BOOL sub_2753195D4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_275319620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 48);
  v8 = *(a3 + 50);
  v9 = *(a3 + 16);
  v16[0] = *a3;
  v16[1] = v9;
  v16[2] = *(a3 + 32);
  v18 = v8;
  v17 = v7;
  result = sub_27531A038(v16, v19);
  v11 = v20;
  v12 = v22 | (v23 << 16);
  if (v20 >> 2 != 0xFFFFFFFF || v22 & 0xFE | (v23 << 16) & 0xFE00FE)
  {
    v13 = v21;
    v14 = v19[0];
    v15 = v19[1];
    *a4 = a1;
  }

  else
  {

    a2 = 0;
    v11 = 0;
    v13 = 0;
    v12 = 0;
    *a4 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *(a4 + 8) = a2;
  *(a4 + 16) = v14;
  *(a4 + 32) = v15;
  *(a4 + 48) = v11;
  *(a4 + 56) = v13;
  *(a4 + 64) = v12;
  *(a4 + 66) = BYTE2(v12);
  return result;
}

uint64_t sub_2753196F4@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  sub_27532A18C(0, &qword_2809C1BD8, sub_27532A138, &type metadata for MediAPIResourceRequestError, MEMORY[0x277D64F00]);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *v47 = *a1;
  *&v47[13] = *(a1 + 13);
  *v45 = *a1;
  *&v45[13] = *(a1 + 13);
  MusicContent.Environment.selectedAccount.getter(v48);
  if (!*(&v48[0] + 1))
  {
    goto LABEL_13;
  }

  v40 = a2;
  v9 = v49;
  v8 = v50;
  v10 = v51;
  v11 = OUTLINED_FUNCTION_111();
  sub_275316838(v11, v12, v10);
  sub_275329880(v48, &qword_2809C1828, &type metadata for MusicContent.Environment.Account);
  if (!v10 || (, v39 = v9, v13 = OUTLINED_FUNCTION_111(), sub_275316888(v13, v14, v10), (v52 = v8) == 0))
  {
LABEL_13:
    sub_275314888(v47);
    sub_27532A138();
    sub_2753B62D8();
    OUTLINED_FUNCTION_56_1();
    sub_2753B62C8();
    v45[0] = 1;
    sub_2753B6298();
LABEL_14:
    sub_2753B62C8();
    v36 = OUTLINED_FUNCTION_87_1();
    sub_27532A18C(v36, v37, sub_27532A138, &type metadata for MediAPIResourceRequestError, v38);
    sub_2753276C4(qword_2809C1BF0, &qword_2809C1BE8, sub_27532A138, &type metadata for MediAPIResourceRequestError);
    OUTLINED_FUNCTION_67_1();
    swift_allocError();
    sub_2753B62E8();
    return swift_willThrow();
  }

  *v44 = *v47;
  *&v44[13] = *&v47[13];
  MusicContent.Environment.selectedAccount.getter(v45);
  if (!*&v45[8] || (v15 = v46, v16 = OUTLINED_FUNCTION_118_1(), sub_275316838(v16, v17, v18), sub_275329880(v45, &qword_2809C1828, &type metadata for MusicContent.Environment.Account), !v15))
  {

    sub_275314888(v47);
LABEL_16:
    sub_27532A138();
    sub_2753B62D8();
    OUTLINED_FUNCTION_56_1();
    sub_2753B62C8();
    v44[0] = 2;
    sub_2753B6298();
    goto LABEL_14;
  }

  v19 = OUTLINED_FUNCTION_118_1();
  sub_275316888(v19, v20, v21);
  v22 = sub_275319BB4(0x746C7561666564, 0xE700000000000000, v15);
  v24 = v23;

  if (!v24)
  {
    sub_275314888(v47);

    goto LABEL_16;
  }

  v43[0] = *v47;
  *(v43 + 13) = *&v47[13];
  MusicContent.Environment.selectedAccount.getter(v44);
  if (!*&v44[8] || (v25 = *&v44[24], v26 = *&v44[24], sub_275329880(v44, &qword_2809C1828, &type metadata for MusicContent.Environment.Account), !v25))
  {
    v26 = [objc_opt_self() defaultMediaIdentity];
  }

  v42[0] = *v47;
  *(v42 + 13) = *&v47[13];
  MusicContent.Environment.selectedAccount.getter(v41);
  sub_275314888(v47);
  memcpy(v43, v41, 0x48uLL);
  if (!*(&v43[0] + 1))
  {
    v31 = v39;
    goto LABEL_19;
  }

  v27 = *(&v43[3] + 1);
  OUTLINED_FUNCTION_89_1();
  sub_275316838(v28, v29, v30);
  sub_275329880(v43, &qword_2809C1828, &type metadata for MusicContent.Environment.Account);
  v31 = v39;
  if (!v27)
  {
LABEL_19:
    result = sub_2753B6C98();
    v27 = result;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_89_1();
  result = sub_275316888(v32, v33, v34);
LABEL_20:
  *v40 = v26;
  v40[1] = v31;
  v40[2] = v52;
  v40[3] = v27;
  v40[4] = v22;
  v40[5] = v24;
  return result;
}

uint64_t sub_275319BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2753842B8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_275319C0C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_2753842E4(a1 & 1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo();
    OUTLINED_FUNCTION_9(v9);
    sub_27532A0D4(v8 + *(v10 + 72) * v7, a3);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v13 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo();
    v11 = a3;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_275319CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2753842B8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_275319D08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2753842B8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_275316DF4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_275319D6C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_2753844B4(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_275316DF4(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_275319DD0@<X0>(void *__src@<X0>, _OWORD *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for MediaAPIResourceRequest.Identifier();
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for MediaAPIResourceRequest.Option();
  OUTLINED_FUNCTION_1_4();
  swift_getWitnessTable();
  sub_2753B71D8();
  OUTLINED_FUNCTION_76_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_87_1();
  sub_2753B76C8();
  swift_initStackObject();
  sub_2753B6FF8();
  v8 = v7;
  memcpy(v7, __dst, 0x43uLL);
  sub_2753B70B8();
  swift_getWitnessTable();
  v8[9] = sub_2753B71E8();
  sub_2752E6688();
  OUTLINED_FUNCTION_8_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_76_1();
  v9 = sub_2753B6C98();
  OUTLINED_FUNCTION_93_0();
  v10 = type metadata accessor for MediaAPIResourceRequest();
  *&a5[*(v10 + 40)] = v9;
  v11 = a2[1];
  *a5 = *a2;
  *(a5 + 1) = v11;
  *(a5 + 2) = a2[2];
  return (*(*(a4 - 8) + 32))(&a5[*(v10 + 36)], a3, a4);
}

unint64_t sub_275319FA0(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_275319FDC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275319FA0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_27531A008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275319FB0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_27531A038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48) | (*(a1 + 50) << 16);
  switch(*(a1 + 50) >> 5)
  {
    case 1:
    case 3:
    case 4:
      result = sub_2752FBB6C(result, v5, v6, v7, v8, v9, v10);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = xmmword_2753C28A0;
      *(a2 + 50) = 0;
      goto LABEL_5;
    case 2:
      *a2 = result;
      *(a2 + 8) = v5;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      *(a2 + 32) = v8 & 3;
      *(a2 + 40) = v9;
      *(a2 + 50) = (v10 & 0x1FFFF | 0x400000) >> 16;
      *(a2 + 48) = v10 & 0xFF01;
      break;
    case 5:
      *a2 = result;
      *(a2 + 8) = v5;
      *(a2 + 16) = v6;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 50) = 0x80;
LABEL_5:
      *(a2 + 48) = 0;
      break;
    default:
      *a2 = result;
      *(a2 + 8) = v5;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 47) = 0;
      break;
  }

  return result;
}

uint64_t sub_27531A144@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  if (*(v1 + 50) >> 6)
  {
    if (*(v1 + 50) >> 6 == 1)
    {
      v5 = v1[3];
      v6 = *(v1 + 32) | 0x40;
      *a1 = v3;
      *(a1 + 8) = v2;
      *(a1 + 16) = v4;
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
    }

    else
    {
      *a1 = v3;
      *(a1 + 8) = v2;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = -96;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

uint64_t sub_27531A1D4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 50);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v12 = v1[2];
  v14 = v4;
  v13 = v3;
  sub_27531A144(v8);
  v6 = v9;
  result = sub_2753147B0(v8[0], v8[1], v8[2], v8[3], v9);
  *a1 = 0x50403020001uLL >> ((v6 >> 2) & 0x38);
  return result;
}

uint64_t sub_27531A258(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48) | (*(a1 + 50) << 16);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 48) | (*(a2 + 50) << 16);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v182 = v4;
  if (!(*(a1 + 50) >> 6))
  {
    if ((v13 & 0xFFFFFF) >= 0x400000)
    {
      goto LABEL_22;
    }

    v42 = *(a2 + 24);
    v169 = *(a1 + 24);
    v172 = *(a2 + 8);
    v177 = *(a1 + 32);
    v179 = *a1;
    v43 = v2 == v10 && v3 == v9;
    v164 = *(a2 + 24);
    v175 = *(a2 + 32);
    v161 = *a2;
    if (v43)
    {
      goto LABEL_11;
    }

    v44 = *a2;
    v45 = *(a2 + 8);
    v46 = *(a2 + 32);
    v47 = *(a2 + 40);
    v48 = sub_2753B7718();
    v10 = v44;
    v9 = v45;
    v14 = v46;
    v15 = v47;
    if (v48)
    {
LABEL_11:
      v49 = v15;
      sub_2753272B8(v10, v9, v12, v42, v14, v15, v13);
      OUTLINED_FUNCTION_66_1();
      sub_2753272B8(v50, v51, v52, v53, v54, v55, v56);
      OUTLINED_FUNCTION_66_1();
      sub_2753272B8(v57, v58, v59, v60, v61, v62, v63);
      sub_2753272B8(v161, v172, v12, v164, v175, v49, v13);
      if ((sub_2752E8E7C(v182, v12) & 1) == 0)
      {
        OUTLINED_FUNCTION_66_1();
        sub_275327318(v115, v116, v117, v118, v119, v120, v121);
        sub_275327318(v161, v172, v12, v164, v175, v49, v13);
        v122 = OUTLINED_FUNCTION_71();
        sub_275327318(v122, v123, v12, v164, v175, v49, v13);
        OUTLINED_FUNCTION_131_1();
        goto LABEL_24;
      }

      v157 = sub_27535C378(v169, v164);
      OUTLINED_FUNCTION_66_1();
      sub_275327318(v64, v65, v66, v67, v68, v69, v70);
      sub_275327318(v161, v172, v12, v164, v175, v49, v13);
      v71 = OUTLINED_FUNCTION_90_0();
      sub_275327318(v71, v72, v12, v164, v175, v49, v13);
      OUTLINED_FUNCTION_131_1();
LABEL_20:
      sub_275327318(v73, v74, v75, v76, v77, v78, v79);
      if (v157)
      {
        v21 = 1;
        return v21 & 1;
      }

LABEL_25:
      v21 = 0;
      return v21 & 1;
    }

    v124 = v44;
    v5 = v47;
    sub_2753272B8(v124, v45, v12, v42, v46, v47, v13);
    OUTLINED_FUNCTION_133_1();
    OUTLINED_FUNCTION_66_1();
    sub_2753272B8(v125, v126, v127, v128, v129, v130, v131);
    OUTLINED_FUNCTION_133_1();
    OUTLINED_FUNCTION_66_1();
    sub_275327318(v132, v133, v134, v135, v136, v137, v138);
    v107 = v161;
    v108 = v172;
    v111 = v175;
    v109 = v12;
    v110 = v164;
LABEL_30:
    v112 = v5;
    goto LABEL_23;
  }

  if (*(a1 + 50) >> 6 != 1)
  {
    if ((v13 & 0xC00000) != 0x800000)
    {
      goto LABEL_22;
    }

    v173 = *(a2 + 8);
    v176 = *(a2 + 32);
    v165 = *(a2 + 24);
    v167 = *(a2 + 40);
    v178 = *(a1 + 32);
    v80 = v2 == v10 && v3 == v9;
    v81 = *a2;
    if (v80 || (v82 = *(a1 + 16), v83 = *a1, v84 = sub_2753B7718(), v2 = v83, v4 = v82, (v84 & 1) != 0))
    {
      v85 = v4;
      v86 = v2;
      HIDWORD(v156) = sub_27535C378(v4, v12);
      sub_2753272B8(v86, v3, v85, v5, v178, v6, v8);
      OUTLINED_FUNCTION_70_1(v81, v87, v88, v89, v90, v91, v92, v93, v154, v155, v156, v6, v81, v162, v165, v167, v168, v173, v176);
      OUTLINED_FUNCTION_131_1();
      sub_275327318(v94, v95, v96, v97, v98, v99, v100);
      OUTLINED_FUNCTION_124_1();
      v78 = v5;
      v79 = v13;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_66_1();
    v181 = v139;
    sub_2753272B8(v140, v141, v142, v143, v144, v145, v146);
    OUTLINED_FUNCTION_70_1(v81, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v158, v159, v162, v165, v167, v5, v173, v176);
    sub_275327318(v181, v3, v82, v170, v178, v6, v8);
    OUTLINED_FUNCTION_124_1();
    goto LABEL_30;
  }

  *(a1 + 50);
  v190 = *(a1 + 48) & 1;
  if ((v13 & 0xC00000) != 0x400000)
  {
LABEL_22:
    v180 = v2;
    sub_2753272B8(v2, v3, v4, v5, v7, v6, v8);
    v101 = OUTLINED_FUNCTION_83_1();
    sub_2753272B8(v101, v102, v103, v104, v105, v106, v13);
    sub_275327318(v180, v3, v182, v5, v7, v6, v8);
    v107 = OUTLINED_FUNCTION_83_1();
LABEL_23:
    v113 = v13;
LABEL_24:
    sub_275327318(v107, v108, v109, v110, v111, v112, v113);
    goto LABEL_25;
  }

  v189 = v13 & 1;
  v183[0] = v2;
  v183[1] = v3;
  v16 = v2;
  v183[2] = v4;
  v183[3] = v5;
  v184 = v7;
  v17 = v6;
  v185 = v6;
  v186 = v190;
  v187 = BYTE1(v8);
  v188 = BYTE2(v8) & 1;
  v163 = v11;
  v166 = v15;
  v18 = v4;
  v160 = v10;
  v171 = v9;
  v174 = v14;
  sub_2753272B8(v10, v9, v12, v11, v14, v15, v13);
  v19 = OUTLINED_FUNCTION_133_1();
  sub_2753272B8(v19, v20, v18, v5, v7, v17, v8);
  sub_2753272B8(v16, v3, v18, v5, v7, v17, v8);
  sub_2753272B8(v160, v171, v12, v163, v174, v166, v13);
  v21 = static MusicContent.QualifiedIdentifier.CloudLibrary.== infix(_:_:)(v183);
  v22 = OUTLINED_FUNCTION_133_1();
  sub_275327318(v22, v23, v182, v5, v7, v24, v8);
  v25 = OUTLINED_FUNCTION_100_1();
  sub_275327318(v25, v26, v27, v28, v29, v166, v13);
  v30 = OUTLINED_FUNCTION_100_1();
  sub_275327318(v30, v31, v32, v33, v34, v166, v13);
  OUTLINED_FUNCTION_131_1();
  sub_275327318(v35, v36, v37, v38, v39, v40, v41);
  return v21 & 1;
}

void sub_27531A8C8(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 50);
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      v8 = *(v1 + 24) | (*(v1 + 50) << 16);
      v10 = v1[4];
      v9 = v1[5];
      MEMORY[0x277C76A80](1);
      MusicContent.QualifiedIdentifier.CloudLibrary.hash(into:)();
      return;
    }

    MEMORY[0x277C76A80](2);
    sub_2753B6688();
    v11 = OUTLINED_FUNCTION_129_0();
  }

  else
  {
    MEMORY[0x277C76A80](0);
    sub_2753B6688();
    sub_2752E97E0();
    v11 = a1;
    v12 = v6;
  }

  sub_275360930(v11, v12);
}

uint64_t sub_27531AA04()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 50);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v0[2];
  v10 = v2;
  v9 = v1;
  sub_2753B7798();
  sub_27531A8C8(v5);
  return sub_2753B77D8();
}

uint64_t sub_27531AA70()
{
  sub_2753B7798();
  sub_27531A8C8(v1);
  return sub_2753B77D8();
}

uint64_t sub_27531AAB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v38 = a1[7];
  v39 = a1[6];
  v8 = *(a1 + 66);
  v9 = *(a1 + 32);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v36 = a2[5];
  v37 = a2[4];
  v34 = a2[7];
  v35 = a2[6];
  v14 = *(a2 + 66);
  v15 = *(a2 + 32);
  if (sub_2753B6678())
  {
    v43[0] = v4;
    v43[1] = v5;
    v16 = v9 | (v8 << 16);
    v43[2] = v6;
    v43[3] = v7;
    v17 = v15 | (v14 << 16);
    v43[4] = v39;
    v43[5] = v38;
    v44 = v16;
    v45 = BYTE2(v16);
    v40[0] = v12;
    v40[1] = v13;
    v40[2] = v37;
    v40[3] = v36;
    v40[4] = v35;
    v40[5] = v34;
    v42 = BYTE2(v17);
    v41 = v17;
    sub_2753272B8(v4, v5, v6, v7, v39, v38, v16);
    v18 = OUTLINED_FUNCTION_67_2();
    sub_2753272B8(v18, v19, v20, v21, v22, v23, v24);
    v25 = sub_27531A258(v43, v40);
    v26 = OUTLINED_FUNCTION_67_2();
    sub_275327318(v26, v27, v28, v29, v30, v31, v32);
    sub_275327318(v4, v5, v6, v7, v39, v38, v16);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_27531ABF8(uint64_t a1)
{
  v26 = v1[1];
  v27 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(v1 + 66);
  v10 = *(v1 + 32);
  v11 = OUTLINED_FUNCTION_63_0();
  sub_2753272B8(v11, v12, v13, v14, v15, v16, v17);
  sub_2753B6688();
  sub_27531A8C8(a1);
  v18 = OUTLINED_FUNCTION_63_0();

  return sub_275327318(v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_27531ACA8()
{
  sub_2753B7798();
  sub_27531ABF8(v1);
  return sub_2753B77D8();
}

uint64_t sub_27531ACF8()
{
  sub_2753B7798();
  sub_27531ABF8(v1);
  return sub_2753B77D8();
}

uint64_t sub_27531AD40()
{
  sub_2753B7798();
  sub_2752E758C(v2, *v0);
  return sub_2753B77D8();
}

uint64_t sub_27531AD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = *(v4 + *(a4 + 40));
  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  type metadata accessor for MediaAPIResourceRequest.Identifier();
  type metadata accessor for MediaAPIResourceRequest.Option();
  OUTLINED_FUNCTION_1_4();
  swift_getWitnessTable();
  sub_2753B71D8();
  OUTLINED_FUNCTION_8_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64_1();
  sub_2753B6CD8();
  OUTLINED_FUNCTION_39_1();
  swift_getWitnessTable();
  result = sub_2753B7208();
  if (!v90)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_19_2();
  sub_2753272B8(v8, v9, v10, v11, v12, v13, v14);

  v15 = OUTLINED_FUNCTION_19_2();
  sub_275327318(v15, v16, v17, v18, v19, v20, v21);
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v86 = v95;
  v87 = v96;
  v89 = v98;
  v88 = v97;
  sub_27531A1D4(&v81);
  v22 = OUTLINED_FUNCTION_19_2();
  sub_275327318(v22, v23, v24, v25, v26, v27, v28);
  v56 = v81;
  v80 = *(a3 + *(a4 + 40));
  result = sub_2753B7208();
  if (!v71)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v29 = OUTLINED_FUNCTION_18_2();
  sub_2753272B8(v29, v30, v31, v32, v33, v34, v35);

  v36 = OUTLINED_FUNCTION_18_2();
  sub_275327318(v36, v37, v38, v39, v40, v41, v42);
  v63 = v72;
  v64 = v73;
  v65 = v74;
  v66 = v75;
  v67 = v76;
  v68 = v77;
  v70 = v79;
  v69 = v78;
  sub_27531A1D4(&v62);
  v43 = OUTLINED_FUNCTION_18_2();
  sub_275327318(v43, v44, v45, v46, v47, v48, v49);
  v50 = v62;
  v51 = *(*(a4 - 8) + 16);
  v52 = v51(a1, v57, a4);
  if (v56 == v50)
  {
    MEMORY[0x28223BE20](v52);
    v53 = *(a4 + 40);

    sub_2753B6CB8();
    v54 = 1;
    v55 = a2;
  }

  else
  {
    v55 = a2;
    v51(a2, a3, a4);
    v54 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v55, v54, 1, a4);
}

uint64_t sub_27531B078@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  type metadata accessor for MediaAPIResourceRequest.Option();

  swift_getWitnessTable();
  sub_2753B71D8();
  swift_getWitnessTable();
  result = sub_2753B71A8();
  *a3 = result;
  return result;
}

uint64_t sub_27531B158(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *a3;
  v11 = *v5;
  if (*(v11 + 16) && (v12 = sub_275384328(*a3), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v31 = v15;

  sub_275327390(&v30, a1, a2);

  v16 = v31;
  v17 = *v6;
  swift_isUniquelyReferenced_nonNull_native();
  v30 = *v6;
  sub_2753288A4(v16, v10);
  *v6 = v30;
  v18 = v6[1];
  if (*(v18 + 16) && (v19 = sub_275384328(v10), (v20 & 1) != 0))
  {
    v30 = *(*(v18 + 56) + 8 * v19);
  }

  else
  {
    v21 = *(a5 + 16);
    v22 = *(a5 + 24);
    v23 = type metadata accessor for MediaAPIResourceRequest.Option();
    v24 = sub_2753B7038();
    if (sub_2753B7078())
    {
      WitnessTable = swift_getWitnessTable();
      v26 = sub_275328C10(v24, v23, WitnessTable);
    }

    else
    {

      v26 = MEMORY[0x277D84FA0];
    }

    v30 = v26;
  }

  v27 = *(a5 + 16);
  v28 = *(a5 + 24);
  type metadata accessor for MediaAPIResourceRequest.Option();

  swift_getWitnessTable();
  sub_2753B71D8();
  swift_getWitnessTable();
  sub_2753B71C8();
  sub_275328FC4();
  sub_2753B6CD8();
  return sub_2753B6D18();
}

uint64_t sub_27531B38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = 2 * *(a1 + 16);
  return sub_27531B158(v5, v4, &v7, a2, a3);
}

uint64_t sub_27531B3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = (2 * *(a1 + 32)) | 1;
  return sub_27531B158(v5, v4, &v7, a2, a3);
}

uint64_t sub_27531B410()
{
  sub_2753290A0(0, &qword_2809C1B08, MEMORY[0x277D83B48]);
  sub_275328FC4();
  v0 = sub_2753B6C98();
  type metadata accessor for MediaAPIResourceRequest.Option();
  OUTLINED_FUNCTION_1_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_102_1();
  sub_2753B71D8();
  swift_getTupleTypeMetadata2();
  sub_2753B7038();
  sub_2753B6C98();
  return v0;
}

uint64_t sub_27531B504(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];

  sub_275327390(&v10, v5, v6);

  v10 = a2;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  type metadata accessor for MediaAPIResourceRequest.Option();

  OUTLINED_FUNCTION_1_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_93_0();
  sub_2753B71D8();
  swift_getWitnessTable();
  return sub_2753B71C8();
}

uint64_t sub_27531B5D0()
{
  v0 = type metadata accessor for MediaAPIResourceRequest.Option();
  OUTLINED_FUNCTION_93_0();
  v1 = sub_2753B7038();
  if (sub_2753B7078())
  {
    WitnessTable = swift_getWitnessTable();
    sub_275328C10(v1, v0, WitnessTable);
  }

  else
  {
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_27531B66C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v224 = sub_2753B6078();
  v10 = *(v224 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v224);
  v213 = &v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v212 = &v198 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v209 = &v198 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v217 = &v198 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v220 = &v198 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v216 = &v198 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v219 = &v198 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v215 = &v198 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v218 = &v198 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v214 = &v198 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v211 = &v198 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v210 = &v198 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v208 = &v198 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v198 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v198 - v41;
  v43 = *(a5 + 16);
  v44 = *(a5 + 24);
  v45 = type metadata accessor for MediaAPIResourceRequest.Option();
  WitnessTable = swift_getWitnessTable();
  v223 = v45;
  v46 = sub_2753B71D8();
  swift_getTupleTypeMetadata2();
  sub_2753B7038();
  v225 = sub_275328FC4();
  v230 = sub_2753B6C98();
  v226 = v10;
  if ((a4 & 1) == 0)
  {
    v221 = v42;
    v53 = 1 << *(a1 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v10;
    v56 = v54 & *(a1 + 64);
    v57 = (v53 + 63) >> 6;
    v58 = 0x80000002753B8170;
    v206 = 0x80000002753B8130;
    v207 = (v55 + 32);

    v51 = 0;
    v48 = MEMORY[0x277D84F90];
    v59 = 0x73676E6F73;
    while (v56)
    {
LABEL_14:
      v61 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v62 = v61 | (v51 << 6);
      v63 = *(*(a1 + 56) + 8 * v62);
      if (*(v63 + 16))
      {
        v203 = v46;
        v64 = *(*(a1 + 48) + v62);
        v227 = 1534289001;
        v228 = 0xE400000000000000;
        v65 = 0xE500000000000000;
        v204 = v64;
        switch(v64)
        {
          case 1uLL:
            v59 = 0x2D7972617262696CLL;
            v65 = 0xED000073676E6F73;
            break;
          case 2uLL:
            v59 = 0x69762D636973756DLL;
            v65 = 0xEC000000736F6564;
            break;
          case 3uLL:
            v59 = 0xD000000000000014;
            v65 = v206;
            break;
          case 4uLL:
            v65 = 0xE600000000000000;
            v59 = 0x736D75626C61;
            break;
          case 5uLL:
            v59 = 0x2D7972617262696CLL;
            v65 = 0xEE00736D75626C61;
            break;
          case 6uLL:
            v65 = 0xE900000000000073;
            v59 = 0x7473696C79616C70;
            break;
          case 7uLL:
            v59 = 0xD000000000000011;
            v65 = v58;
            break;
          case 8uLL:
            v65 = 0xE800000000000000;
            v59 = 0x736E6F6974617473;
            break;
          case 9uLL:
            v65 = 0xE600000000000000;
            v59 = 0x7365726E6567;
            break;
          case 0xAuLL:
            v59 = 0x612D6C6D78656C66;
            v65 = 0xEF736973796C616ELL;
            break;
          case 0xBuLL:
            v59 = 0x6E612D6F69647561;
            v65 = 0xEE00736973796C61;
            break;
          default:
            break;
        }

        v202 = v59;
        v205 = v58;

        MEMORY[0x277C76100](v202, v65);

        MEMORY[0x277C76100](93, 0xE100000000000000);
        v202 = v227;
        v227 = v63;
        sub_2753290A0(0, &qword_2809C1B08, MEMORY[0x277D83B48]);
        v201 = v66;
        v200 = sub_275329DD4();
        sub_275329E48();
        v201 = sub_2753B6EC8();

        sub_2753B6068();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_275385120(0, *(v48 + 16) + 1, 1, v48);
          v48 = v69;
        }

        v46 = v203;
        v68 = *(v48 + 16);
        v67 = *(v48 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_275385120(v67 > 1, v68 + 1, 1, v48);
          v48 = v70;
        }

        *(v48 + 16) = v68 + 1;
        (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v68, v221, v224);
        v229 = v204;
        sub_2753B6D08();
        v58 = v205;
        v59 = 0x73676E6F73;
        if (v227)
        {
          v229 = v204;
          sub_2753B6CD8();
          sub_2753B6D18();
          v59 = 0x73676E6F73;
          v58 = v205;
        }
      }
    }

    while (1)
    {
      v60 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v60 >= v57)
      {

        goto LABEL_38;
      }

      v56 = *(a1 + 64 + 8 * v60);
      ++v51;
      if (v56)
      {
        v51 = v60;
        goto LABEL_14;
      }
    }

LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  if (*(a1 + 16))
  {
    v227 = a1;
    sub_2753290A0(0, &qword_2809C1B08, MEMORY[0x277D83B48]);
    sub_275329DD4();
    sub_275329E48();

    sub_2753B6EC8();

    sub_2753B6068();

    sub_275385120(0, 1, 1, MEMORY[0x277D84F90]);
    v48 = v47;
    v50 = *(v47 + 16);
    v49 = *(v47 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_275385120(v49 > 1, v50 + 1, 1, v47);
      v48 = v197;
    }

    v51 = v224;
    v52 = v226;
    *(v48 + 16) = v50 + 1;
    (*(v52 + 32))(v48 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v50, v40, v51);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
    v51 = v224;
  }

  v71 = *(a3 + 16);
  if (v71)
  {
    v72 = (a3 + 32);
    sub_2753B6CD8();
    do
    {
      v73 = *v72++;
      v227 = a2;
      v229 = v73;

      sub_2753B6D18();
      --v71;
    }

    while (v71);
LABEL_38:
    v51 = v224;
  }

  LODWORD(v221) = 0;
  v57 = 0;
  v74 = MEMORY[0x277D84F90];
  v75 = v230;
  v76 = v230 + 64;
  v77 = 1 << *(v230 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v230 + 64);
  v80 = (v77 + 63) >> 6;
  v204 = "stration.sourceInfo: ";
  v225 = v226 + 32;
  v207 = "include[library-playlists]";
  v203 = "extend[library-playlists]";
  v206 = "include[library-albums]";
  v202 = "extend[library-albums]";
  v205 = "include[playlists]";
  v201 = "extendedAssetUrls";
  v200 = "extend[audio-analysis]";
  v199 = 0x80000002753B9320;
  v198 = 0x80000002753B8450;
  while (2)
  {
    if (v79)
    {
LABEL_47:
      v82 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v83 = v82 | (v57 << 6);
      v84 = *(*(v75 + 56) + 8 * v83);
      switch(*(*(v75 + 48) + v83))
      {
        case 1:
        case 2:
        case 3:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
          continue;
        case 4:
          LOBYTE(v227) = 4;

          v112 = sub_2753B71B8();

          if (v112)
          {
            sub_275385044();
            v114 = v113;
            v115 = *(v113 + 16);
            if (v115 >= *(v113 + 24) >> 1)
            {
              sub_275385044();
              v114 = v178;
            }

            *(v114 + 16) = v115 + 1;
            v116 = v114 + 16 * v115;
            *(v116 + 32) = 0x736B63617274;
            *(v116 + 40) = 0xE600000000000000;
            LODWORD(v221) = 1;
          }

          else
          {
            if (!*(v74 + 16))
            {

LABEL_126:
              v227 = &unk_288407760;
              sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              sub_275329E9C();
              sub_2753B6D48();
              sub_2753B6068();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_275385120(0, *(v48 + 16) + 1, 1, v48);
                v48 = v156;
              }

              v135 = *(v48 + 16);
              v134 = *(v48 + 24);
              if (v135 >= v134 >> 1)
              {
                sub_275385120(v134 > 1, v135 + 1, 1, v48);
                v48 = v157;
              }

              *(v48 + 16) = v135 + 1;
              (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v135, v218, v51);
              goto LABEL_150;
            }

            v114 = v74;
          }

          v227 = v114;
          sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          sub_275329E9C();
          sub_2753B6D48();

          sub_2753B6068();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275385120(0, *(v48 + 16) + 1, 1, v48);
            v48 = v164;
          }

          v133 = *(v48 + 16);
          v132 = *(v48 + 24);
          if (v133 >= v132 >> 1)
          {
            sub_275385120(v132 > 1, v133 + 1, 1, v48);
            v48 = v165;
          }

          *(v48 + 16) = v133 + 1;
          (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v133, v214, v51);
          goto LABEL_126;
        case 5:
          LOBYTE(v227) = 4;

          v102 = sub_2753B71B8();

          if (v102)
          {
            sub_275385044();
            v104 = v103;
            v105 = *(v103 + 16);
            if (v105 >= *(v103 + 24) >> 1)
            {
              sub_275385044();
              v104 = v171;
            }

            *(v104 + 16) = v105 + 1;
            v106 = v104 + 16 * v105;
            *(v106 + 32) = 0x736B63617274;
            *(v106 + 40) = 0xE600000000000000;
            LODWORD(v221) = 1;
          }

          else
          {
            if (!*(v74 + 16))
            {

              goto LABEL_95;
            }

            v104 = v74;
          }

          v227 = v104;
          sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          sub_275329E9C();
          sub_2753B6D48();

          sub_2753B6068();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275385120(0, *(v48 + 16) + 1, 1, v48);
            v48 = v160;
          }

          v123 = *(v48 + 16);
          v122 = *(v48 + 24);
          if (v123 >= v122 >> 1)
          {
            sub_275385120(v122 > 1, v123 + 1, 1, v48);
            v48 = v161;
          }

          *(v48 + 16) = v123 + 1;
          (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v123, v216, v51);
LABEL_95:
          v227 = &unk_2884077E0;
          sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          sub_275329E9C();
          sub_2753B6D48();
          sub_2753B6068();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275385120(0, *(v48 + 16) + 1, 1, v48);
            v48 = v152;
          }

          v125 = *(v48 + 16);
          v124 = *(v48 + 24);
          if (v125 >= v124 >> 1)
          {
            sub_275385120(v124 > 1, v125 + 1, 1, v48);
            v48 = v153;
          }

          *(v48 + 16) = v125 + 1;
          (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v125, v220, v51);
          goto LABEL_150;
        case 6:
          LOBYTE(v227) = 4;

          v107 = sub_2753B71B8();

          if (v107)
          {
            sub_275385044();
            v109 = v108;
            v110 = *(v108 + 16);
            if (v110 >= *(v108 + 24) >> 1)
            {
              sub_275385044();
              v109 = v172;
            }

            *(v109 + 16) = v110 + 1;
            v111 = v109 + 16 * v110;
            *(v111 + 32) = 0x736B63617274;
            *(v111 + 40) = 0xE600000000000000;
            LODWORD(v221) = 1;
          }

          else
          {
            if (!*(v74 + 16))
            {

              goto LABEL_107;
            }

            v109 = v74;
          }

          v227 = v109;
          sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          sub_275329E9C();
          sub_2753B6D48();

          sub_2753B6068();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275385120(0, *(v48 + 16) + 1, 1, v48);
            v48 = v162;
          }

          v127 = *(v48 + 16);
          v126 = *(v48 + 24);
          if (v127 >= v126 >> 1)
          {
            sub_275385120(v126 > 1, v127 + 1, 1, v48);
            v48 = v163;
          }

          *(v48 + 16) = v127 + 1;
          (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v127, v215, v51);
LABEL_107:
          v227 = &unk_2884077A0;
          sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          sub_275329E9C();
          sub_2753B6D48();
          sub_2753B6068();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275385120(0, *(v48 + 16) + 1, 1, v48);
            v48 = v154;
          }

          v129 = *(v48 + 16);
          v128 = *(v48 + 24);
          if (v129 >= v128 >> 1)
          {
            sub_275385120(v128 > 1, v129 + 1, 1, v48);
            v48 = v155;
          }

          *(v48 + 16) = v129 + 1;
          (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v129, v219, v51);
          goto LABEL_150;
        case 7:
          LOBYTE(v227) = 4;

          v97 = sub_2753B71B8();

          if (v97)
          {
            sub_275385044();
            v99 = v98;
            v100 = *(v98 + 16);
            if (v100 >= *(v98 + 24) >> 1)
            {
              sub_275385044();
              v99 = v170;
            }

            *(v99 + 16) = v100 + 1;
            v101 = v99 + 16 * v100;
            *(v101 + 32) = 0x736B63617274;
            *(v101 + 40) = 0xE600000000000000;
            LODWORD(v221) = 1;
          }

          else
          {
            if (!*(v74 + 16))
            {

              v119 = v209;
              goto LABEL_83;
            }

            v99 = v74;
          }

          v227 = v99;
          sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          sub_275329E9C();
          sub_2753B6D48();

          sub_2753B6068();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275385120(0, *(v48 + 16) + 1, 1, v48);
            v48 = v158;
          }

          v118 = *(v48 + 16);
          v117 = *(v48 + 24);
          v119 = v209;
          if (v118 >= v117 >> 1)
          {
            sub_275385120(v117 > 1, v118 + 1, 1, v48);
            v48 = v159;
          }

          *(v48 + 16) = v118 + 1;
          (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v118, v217, v51);
LABEL_83:
          v227 = &unk_288407820;
          sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          sub_275329E9C();
          sub_2753B6D48();
          sub_2753B6068();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275385120(0, *(v48 + 16) + 1, 1, v48);
            v48 = v150;
          }

          v121 = *(v48 + 16);
          v120 = *(v48 + 24);
          if (v121 >= v120 >> 1)
          {
            sub_275385120(v120 > 1, v121 + 1, 1, v48);
            v48 = v151;
          }

          *(v48 + 16) = v121 + 1;
          (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v121, v119, v51);
          goto LABEL_150;
        default:
          LOBYTE(v227) = 3;

          if (sub_2753B71B8())
          {
            sub_275385044();
            v86 = v85;
            v87 = *(v85 + 16);
            v88 = *(v85 + 24) >> 1;
            v89 = v87 + 1;
            if (v88 <= v87)
            {
              sub_275385044();
              v86 = v173;
              v88 = *(v173 + 24) >> 1;
            }

            *(v86 + 16) = v89;
            v90 = v86 + 16 * v87;
            *(v90 + 32) = 0x726E65672D776172;
            *(v90 + 40) = 0xEA00000000007365;
            v91 = v87 + 2;
            if (v88 < v91)
            {
              sub_275385044();
              v86 = v174;
            }

            *(v86 + 16) = v91;
            v92 = v86 + 16 * v89;
            *(v92 + 32) = 0x612D6C6D78656C66;
            *(v92 + 40) = 0xEF736973796C616ELL;
            v93 = *(v86 + 16);
            if (v93 >= *(v86 + 24) >> 1)
            {
              sub_275385044();
              v86 = v175;
            }

            *(v86 + 16) = v93 + 1;
            v94 = v86 + 16 * v93;
            strcpy((v94 + 32), "audio-analysis");
            *(v94 + 47) = -18;
            sub_2753B6068();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_275385120(0, *(v48 + 16) + 1, 1, v48);
              v48 = v176;
            }

            v96 = *(v48 + 16);
            v95 = *(v48 + 24);
            if (v96 >= v95 >> 1)
            {
              sub_275385120(v95 > 1, v96 + 1, 1, v48);
              v48 = v177;
            }

            *(v48 + 16) = v96 + 1;
            (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v96, v208, v224);
            v74 = MEMORY[0x277D84F90];
          }

          else
          {
            v86 = v74;
          }

          if (*(v86 + 16))
          {
            v227 = v86;
            sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
            sub_275329E9C();
            sub_2753B6D48();

            sub_2753B6068();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_275385120(0, *(v48 + 16) + 1, 1, v48);
              v48 = v166;
            }

            v51 = v224;
            v131 = *(v48 + 16);
            v130 = *(v48 + 24);
            if (v131 >= v130 >> 1)
            {
              sub_275385120(v130 > 1, v131 + 1, 1, v48);
              v48 = v167;
            }

            *(v48 + 16) = v131 + 1;
            (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v131, v210, v51);
            v74 = MEMORY[0x277D84F90];
          }

          else
          {

            v51 = v224;
          }

          LOBYTE(v227) = 2;
          v136 = v74;
          if (sub_2753B71B8())
          {
            sub_275385044();
            v136 = v137;
            v138 = *(v137 + 16);
            if (v138 >= *(v137 + 24) >> 1)
            {
              sub_275385044();
              v136 = v179;
            }

            *(v136 + 16) = v138 + 1;
            v139 = v136 + 16 * v138;
            *(v139 + 32) = 0xD000000000000011;
            *(v139 + 40) = v199;
            v51 = v224;
          }

          LOBYTE(v227) = 3;
          v140 = sub_2753B71B8();

          if (v140)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v180 = *(v136 + 16);
              sub_275385044();
              v136 = v181;
            }

            v141 = *(v136 + 16);
            v142 = *(v136 + 24) >> 1;
            v143 = v141 + 1;
            if (v142 <= v141)
            {
              sub_275385044();
              v136 = v182;
              v142 = *(v182 + 24) >> 1;
            }

            *(v136 + 16) = v143;
            v144 = v136 + 16 * v141;
            strcpy((v144 + 32), "spatialOffsets");
            *(v144 + 47) = -18;
            v145 = v141 + 2;
            if (v142 < v145)
            {
              sub_275385044();
              v136 = v183;
            }

            *(v136 + 16) = v145;
            v146 = v136 + 16 * v143;
            v147 = v198;
            *(v146 + 32) = 0xD000000000000018;
            *(v146 + 40) = v147;
          }

          if (*(v136 + 16))
          {
            v227 = v136;
            sub_27532A1F4(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
            sub_275329E9C();
            sub_2753B6D48();

            sub_2753B6068();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_275385120(0, *(v48 + 16) + 1, 1, v48);
              v48 = v168;
            }

            v149 = *(v48 + 16);
            v148 = *(v48 + 24);
            if (v149 >= v148 >> 1)
            {
              sub_275385120(v148 > 1, v149 + 1, 1, v48);
              v48 = v169;
            }

            *(v48 + 16) = v149 + 1;
            (*(v226 + 32))(v48 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v149, v211, v51);
LABEL_150:
            v74 = MEMORY[0x277D84F90];
          }

          else
          {

            v74 = MEMORY[0x277D84F90];
          }

          continue;
      }
    }

    break;
  }

  while (1)
  {
    v81 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_165;
    }

    if (v81 >= v80)
    {
      break;
    }

    v79 = *(v76 + 8 * v81);
    ++v57;
    if (v79)
    {
      v57 = v81;
      goto LABEL_47;
    }
  }

  if ((v221 & 1) == 0)
  {
    return v48;
  }

  v57 = v212;
  sub_2753B6068();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_166:
    sub_275385120(0, *(v48 + 16) + 1, 1, v48);
    v48 = v194;
  }

  v184 = v213;
  v186 = *(v48 + 16);
  v185 = *(v48 + 24);
  if (v186 >= v185 >> 1)
  {
    sub_275385120(v185 > 1, v186 + 1, 1, v48);
    v48 = v195;
  }

  *(v48 + 16) = v186 + 1;
  v187 = (*(v226 + 80) + 32) & ~*(v226 + 80);
  v188 = *(v226 + 72);
  v189 = v48 + v187 + v188 * v186;
  v190 = *(v226 + 32);
  v190(v189, v57, v51);
  sub_2753B6068();
  v192 = *(v48 + 16);
  v191 = *(v48 + 24);
  if (v192 >= v191 >> 1)
  {
    sub_275385120(v191 > 1, v192 + 1, 1, v48);
    v48 = v196;
  }

  *(v48 + 16) = v192 + 1;
  v190(v48 + v187 + v192 * v188, v184, v224);
  return v48;
}

BOOL sub_27531D740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = *(a3 + 40);
  sub_2753B7798();
  sub_2753B6688();
  v5 = sub_2753B77D8();
  v6 = ~(-1 << *(a3 + 32));
  do
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(a3 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    v9 = v8 != 0;
    if (!v8)
    {
      break;
    }

    v10 = (*(a3 + 48) + 16 * v7);
    v11 = *v10;
    v12 = v10[1];

    LOBYTE(v11) = sub_2753B6678();

    v5 = v7 + 1;
  }

  while ((v11 & 1) == 0);
  return v9;
}

uint64_t sub_27531D83C()
{
  OUTLINED_FUNCTION_14_0();
  v1[198] = v0;
  v1[197] = v2;
  sub_27532A18C(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  v1[199] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[200] = swift_task_alloc();
  sub_275326354(0, &qword_2809C08E8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[201] = swift_task_alloc();
  v7 = sub_2753B61F8();
  v1[202] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v1[203] = v8;
  v10 = *(v9 + 64) + 15;
  v1[204] = swift_task_alloc();
  v1[205] = swift_task_alloc();
  v11 = sub_2753B60E8();
  v1[206] = v11;
  OUTLINED_FUNCTION_17_1(v11);
  v1[207] = v12;
  v14 = *(v13 + 64) + 15;
  v1[208] = swift_task_alloc();
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_27531DA14()
{
  v215 = v0;
  v1 = *(v0 + 1584);
  v2 = *(v0 + 1576);
  sub_275326354(0, &qword_2809C1AB8, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  v3 = sub_2753B6078();
  OUTLINED_FUNCTION_17_1(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2753C28B0;
  sub_2753B6068();
  OUTLINED_FUNCTION_85_1();
  sub_2753B6068();
  *(v0 + 1568) = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  OUTLINED_FUNCTION_102_1();
  v11 = type metadata accessor for MediaAPIResourceRequest.Identifier();
  OUTLINED_FUNCTION_87_1();
  swift_getTupleTypeMetadata2();
  sub_2753B7038();
  v12 = sub_2753B6C98();
  v13 = MEMORY[0x277D84FA0];
  *(v0 + 1560) = v12;
  *(v0 + 1552) = v13;
  v202 = v9;
  v203 = *(v1 + *(v2 + 40));
  *(v0 + 1544) = v203;
  OUTLINED_FUNCTION_102_1();
  v201 = v10;
  type metadata accessor for MediaAPIResourceRequest.Option();
  OUTLINED_FUNCTION_1_4();
  swift_getWitnessTable();
  sub_2753B71D8();
  OUTLINED_FUNCTION_8_3();
  swift_getWitnessTable();
  v204 = v11;
  sub_2753B6CD8();
  OUTLINED_FUNCTION_39_1();
  swift_getWitnessTable();
  sub_2753B7208();
  memcpy((v0 + 160), (v0 + 80), 0x50uLL);
  if (*(v0 + 168))
  {
    v188 = *(v0 + 232);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);
    v20 = *(v0 + 226);
    v21 = *(v0 + 224) | (*(v0 + 226) << 16);
    OUTLINED_FUNCTION_49_1();
    sub_2753272B8(v22, v23, v24, v25, v18, v19, v21);
    v26 = *(v204 - 8);
    v189 = *(v26 + 8);
    v191 = v26 + 8;
    v189(v0 + 160);
    v27 = v20 >> 6;
    OUTLINED_FUNCTION_49_1();
    sub_275327318(v28, v29, v30, v31, v18, v19, v21);
    if (v27)
    {
      if (v27 != 1)
      {
        sub_27531B5D0();
        v205 = MEMORY[0x277D84FA0];
        v206 = v86;
        v88 = v203 + 64;
        v87 = *(v203 + 64);
        v89 = *(v203 + 32);
        OUTLINED_FUNCTION_11_2();
        v92 = v91 & v90;
        OUTLINED_FUNCTION_123_1();
        v94 = v93 >> 6;
        v187 = (v26 + 16);

        v103 = 0;
        v104 = v204;
        v182 = v94;
        v184 = v203 + 64;
        if (!v92)
        {
          goto LABEL_22;
        }

        do
        {
          v105 = v103;
LABEL_25:
          OUTLINED_FUNCTION_114_1(v95, v96, v97, v98, v99, v100, v101, v102, v179, v180, v182, v184, v187, v188, v189, v191, v194, v197, v198, v200, v201, v202, v203);
          memcpy((v0 + 600), v106, 0x43uLL);
          v107 = *(*(v14 + 56) + 8 * (__clz(__rbit64(v92)) | (v105 << 6)));
          v108 = *(v0 + 664) | (*(v0 + 666) << 16);
          if ((v108 & 0xC00000) != 0x800000)
          {
            OUTLINED_FUNCTION_127_1();
            (*v187)(v0 + 672, v0 + 600, v104);

            sub_2753B7398();
            OUTLINED_FUNCTION_46_1();
            MEMORY[0x277C76100](v177 + 24, v178 | 0x8000000000000000);
            memcpy((v0 + 744), (v0 + 600), 0x43uLL);
            sub_2753B76E8();
            goto LABEL_43;
          }

          v92 &= v92 - 1;
          v198 = *(v0 + 648);
          v200 = *(v0 + 656);
          v109 = *(v0 + 640);
          v110 = *(v0 + 632);
          v111 = *(v0 + 624);
          v207 = *(v0 + 616);
          v112 = v207;
          v208 = v111;
          v209 = v110;
          v194 = v110;
          v197 = *v187;
          (*v187)(v0 + 816, v0 + 600, v204);

          OUTLINED_FUNCTION_89_1();
          sub_2753272B8(v113, v114, v115, v116, v198, v200, v108);
          type metadata accessor for MediaAPIResourceRequest.MediaAPIOpaqueLookupParameters();
          v117 = OUTLINED_FUNCTION_93_1();
          sub_27531B504(v117, v107, v118);

          sub_275327318(v112, v111, v110, v109, v198, v200, v108);
          memcpy((v0 + 888), (v0 + 600), 0x43uLL);
          *(v0 + 1504) = v112;
          v104 = v204;
          *(v0 + 1512) = v111;
          v88 = v184;
          v197(v0 + 1032, v0 + 600, v204);
          v94 = v182;
          sub_2753B6CD8();
          sub_2753B6D18();
          v14 = *(v0 + 600);
          v119 = *(v0 + 608);

          sub_2753274DC(&v207, v14, v119);
          (v189)(v0 + 600, v204);

          v103 = v105;
        }

        while (v92);
LABEL_22:
        while (1)
        {
          v105 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            goto LABEL_46;
          }

          if (v105 >= v94)
          {
            v135 = *(v0 + 1584);
            v136 = *(v0 + 1576);

            OUTLINED_FUNCTION_127_1();
            sub_2753B7398();

            v137 = OUTLINED_FUNCTION_53_1();
            MEMORY[0x277C76100](v137);
            MEMORY[0x277C76100](0x746E65746E6F632FLL, 0xE900000000000073);

            v138 = sub_27531B66C(v205, v206, &unk_2884079D0, 1, v136);

            sub_2753653D4(v138);

            goto LABEL_31;
          }

          v92 = *(v88 + 8 * v105);
          ++v103;
          if (v92)
          {
            goto LABEL_25;
          }
        }
      }

      sub_27531B410();
      v33 = v203 + 64;
      v32 = *(v203 + 64);
      v34 = *(v203 + 32);
      OUTLINED_FUNCTION_11_2();
      v37 = v36 & v35;
      OUTLINED_FUNCTION_123_1();
      v39 = v38 >> 6;
      v192 = (v26 + 16);

      v40 = 0;
      v186 = v39;
      if (!v37)
      {
        goto LABEL_6;
      }

      do
      {
        v41 = v40;
LABEL_9:
        v42 = __clz(__rbit64(v37)) | (v41 << 6);
        memcpy((v0 + 240), (*(v203 + 48) + 72 * v42), 0x43uLL);
        v43 = *(*(v203 + 56) + 8 * v42);
        v44 = *(v0 + 304) | (*(v0 + 306) << 16);
        if ((v44 & 0xC00000) != 0x400000)
        {
          OUTLINED_FUNCTION_127_1();
          (*v192)(v0 + 1320, v0 + 240, v204);

          sub_2753B7398();
          OUTLINED_FUNCTION_46_1();
          MEMORY[0x277C76100](v173 + 30, v174 | 0x8000000000000000);
          memcpy((v0 + 1248), (v0 + 240), 0x43uLL);
          sub_2753B76E8();
          goto LABEL_43;
        }

        v37 &= v37 - 1;
        v45 = *(v0 + 288);
        v46 = *(v0 + 296);
        v47 = *(v0 + 272);
        v48 = *(v0 + 280);
        v49 = *(v0 + 264);
        v207 = *(v0 + 256);
        v208 = v49;
        v195 = v47;
        v209 = v47;
        v210 = v48;
        v211 = v45;
        v50 = v45;
        v199 = v45;
        v212 = v46;
        v213 = v44 & 0xFF01;
        v214 = BYTE2(v44) & 1;
        (*v192)(v0 + 1176, v0 + 240, v204);

        sub_2753272B8(v207, v49, v195, v48, v50, v46, v44);
        type metadata accessor for MediaAPIResourceRequest.MediaAPITypedLookupParameters();
        v51 = OUTLINED_FUNCTION_93_1();
        sub_27531B3CC(v51, v43, v52);

        v39 = v186;
        sub_275327318(v207, v49, v195, v48, v199, v46, v44);
        memcpy((v0 + 1104), (v0 + 240), 0x43uLL);
        *(v0 + 1488) = v195;
        v33 = v203 + 64;
        *(v0 + 1496) = v48;
        sub_2753B6CD8();
        sub_2753B6D18();
        v40 = v41;
      }

      while (v37);
LABEL_6:
      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v41 >= v39)
        {
          v120 = *(v0 + 1584);
          v121 = *(v0 + 1576);

          OUTLINED_FUNCTION_90_0();
          OUTLINED_FUNCTION_67_1();
          v126 = sub_27531B66C(v122, v123, v124, v125, v121);

          sub_2753653D4(v126);
          goto LABEL_31;
        }

        v37 = *(v33 + 8 * v41);
        ++v40;
        if (v37)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
      sub_27531B410();
      v54 = v203 + 64;
      v53 = *(v203 + 64);
      v55 = *(v203 + 32);
      OUTLINED_FUNCTION_11_2();
      v58 = v57 & v56;
      OUTLINED_FUNCTION_123_1();
      v60 = v59 >> 6;
      v196 = (v26 + 16);

      v69 = 0;
      v190 = v60;
      v193 = v203 + 64;
      if (!v58)
      {
        goto LABEL_14;
      }

      do
      {
        v70 = v69;
LABEL_17:
        OUTLINED_FUNCTION_114_1(v61, v62, v63, v64, v65, v66, v67, v68, v179, v180, v181, v183, v185, v188, v190, v193, v196, v197, v198, v200, v201, v202, v203);
        memcpy((v0 + 960), v71, 0x43uLL);
        v72 = *(*(v14 + 56) + 8 * (__clz(__rbit64(v58)) | (v70 << 6)));
        v73 = *(v0 + 1024) | (*(v0 + 1026) << 16);
        if ((v73 & 0xC00000) != 0)
        {
          OUTLINED_FUNCTION_127_1();
          (*v196)(v0 + 528, v0 + 960, v204);

          sub_2753B7398();
          OUTLINED_FUNCTION_46_1();
          MEMORY[0x277C76100](v175 + 26, v176 | 0x8000000000000000);
          memcpy((v0 + 456), (v0 + 960), 0x43uLL);
          sub_2753B76E8();
LABEL_43:
          OUTLINED_FUNCTION_135_1();
          OUTLINED_FUNCTION_134_1();
          return;
        }

        v58 &= v58 - 1;
        v74 = *(v0 + 1016);
        v75 = *(v0 + 1008);
        v76 = *(v0 + 1000);
        v77 = *(v0 + 992);
        v78 = *(v0 + 984);
        v207 = *(v0 + 976);
        v208 = v78;
        LOBYTE(v209) = v77;
        v79 = v77;
        v197 = v77;
        v210 = v76;
        v198 = v76;
        v200 = v74;
        (*v196)(v0 + 384, v0 + 960, v204);

        v80 = OUTLINED_FUNCTION_103_1();
        sub_2753272B8(v80, v81, v79, v76, v75, v200, v73);
        type metadata accessor for MediaAPIResourceRequest.MediaAPITypedLookupParameters();
        v82 = OUTLINED_FUNCTION_93_1();
        sub_27531B38C(v82, v72, v83);

        memcpy((v0 + 312), (v0 + 960), 0x43uLL);
        *(v0 + 1520) = v207;
        *(v0 + 1528) = v78;
        v14 = sub_2753B6CD8();

        sub_2753B6D18();
        v84 = OUTLINED_FUNCTION_103_1();
        v60 = v190;
        v54 = v193;
        v61 = sub_275327318(v84, v85, v197, v76, v75, v200, v73);
        v69 = v70;
      }

      while (v58);
LABEL_14:
      while (1)
      {
        v70 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v70 >= v60)
        {
          v127 = *(v0 + 1584);
          v128 = *(v0 + 1576);

          v129 = OUTLINED_FUNCTION_53_1();
          MEMORY[0x277C76100](v129);
          OUTLINED_FUNCTION_113_1();
          OUTLINED_FUNCTION_67_1();
          v134 = sub_27531B66C(v130, v131, v132, v133, v128);

          sub_2753653D4(v134);
LABEL_31:
          v139 = *(v0 + 1664);
          v140 = *(v0 + 1616);
          v141 = *(v0 + 1608);
          v142 = *(v0 + 1584);
          sub_2753B60D8();
          sub_2753B60C8();
          v143 = *(v142 + 32);
          v144 = *(v142 + 40);

          v145 = OUTLINED_FUNCTION_113_1();
          MEMORY[0x277C75380](v145);
          v146 = OUTLINED_FUNCTION_129_0();
          MEMORY[0x277C75390](v146);
          v147 = *(v0 + 1568);
          sub_2753B6088();
          sub_2753B6098();
          if (__swift_getEnumTagSinglePayload(v141, 1, v140) == 1)
          {
            v148 = *(v0 + 1664);
            v149 = *(v0 + 1656);
            v150 = *(v0 + 1648);
            v151 = *(v0 + 1608);
            v152 = *(v0 + 1600);
            v153 = *(v0 + 1592);
            v154 = *(v0 + 1552);

            v155 = *(v0 + 1560);

            sub_275327638(v151);
            sub_275314678();
            sub_2753B62D8();
            OUTLINED_FUNCTION_67();
            sub_2753B62C8();
            *(v0 + 308) = 17;
            sub_2753B6298();
            OUTLINED_FUNCTION_46_1();
            sub_2753B62C8();
            sub_275327824(&qword_2809C1AC0, MEMORY[0x277CC8958]);
            sub_2753B62B8();
            OUTLINED_FUNCTION_67();
            sub_2753B62C8();
            sub_27532A18C(0, &qword_2809C1440, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F08]);
            sub_2753276C4(&qword_2809C1448, &qword_2809C1440, sub_275314678, &type metadata for MusicContentError);
            OUTLINED_FUNCTION_67_1();
            swift_allocError();
            sub_2753B62E8();
            swift_willThrow();
            (*(v149 + 8))(v148, v150);
            OUTLINED_FUNCTION_105_1();

            OUTLINED_FUNCTION_19_0();
            OUTLINED_FUNCTION_134_1();

            __asm { BRAA            X1, X16 }
          }

          v156 = *(v0 + 1632);
          v157 = *(v0 + 1624);
          v158 = *(v0 + 1584);
          (*(v157 + 32))(*(v0 + 1640), *(v0 + 1608), *(v0 + 1616));
          v159 = *v158;
          sub_2753277B8(0, &qword_2809C1AC8, 0x277D7FA48);
          v160 = sub_27531F590();
          *(v0 + 1672) = v160;
          sub_2753277B8(0, &qword_2809C1AD0, 0x277D7FB38);
          v161 = sub_27531F624(v159, v160);
          *(v0 + 1680) = v161;
          v162 = *(v157 + 16);
          v163 = OUTLINED_FUNCTION_129_0();
          v164(v163);
          v165 = objc_allocWithZone(MEMORY[0x277D7FB40]);
          v166 = sub_275327220(v156, v161);
          *(v0 + 1688) = v166;
          sub_2753B7178();
          *(v0 + 1696) = 0;
          v169 = [objc_opt_self() highPrioritySession];
          *(v0 + 1704) = v169;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 1536;
          *(v0 + 24) = sub_27531EB3C;
          v170 = swift_continuation_init();
          sub_275327728();
          *(v0 + 1448) = v171;
          *(v0 + 1424) = v170;
          *(v0 + 1392) = MEMORY[0x277D85DD0];
          *(v0 + 1400) = 1107296256;
          *(v0 + 1408) = sub_27531F680;
          *(v0 + 1416) = &block_descriptor;
          [v169 enqueueDataRequest:v166 withCompletionHandler:v0 + 1392];
          OUTLINED_FUNCTION_134_1();

          goto _swift_continuation_await;
        }

        v58 = *(v54 + 8 * v70);
        ++v69;
        if (v58)
        {
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
  }

  __break(1u);
_swift_continuation_await:
  MEMORY[0x282200938]();
}

uint64_t sub_27531EB3C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[214] = v5;
  if (v5)
  {
    v6 = v2[194];

    v7 = v2[195];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_27531EC48()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1536);
  *(v0 + 1720) = v2;

  v3 = [v2 bodyData];
  if (!v3)
  {
    v51 = *(v0 + 1688);
    v53 = *(v0 + 1680);
    v59 = *(v0 + 1664);
    v17 = *(v0 + 1656);
    v55 = *(v0 + 1672);
    v57 = *(v0 + 1648);
    v18 = *(v0 + 1624);
    v19 = *(v0 + 1616);
    v49 = *(v0 + 1640);
    v20 = *(v0 + 1600);
    v21 = *(v0 + 1592);
    v22 = *(v0 + 1552);

    v23 = *(v0 + 1560);

    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    *(v0 + 307) = 18;
    sub_2753B6298();
    sub_2753B62C8();
    sub_275327824(&qword_2809C1AE8, MEMORY[0x277CC9260]);
    sub_2753B62B8();
    OUTLINED_FUNCTION_67();
    sub_2753B62C8();
    OUTLINED_FUNCTION_59_1();
    sub_27532A18C(v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_59_1();
    sub_2753276C4(v29, v30, v31, v32);
    OUTLINED_FUNCTION_67_1();
    swift_allocError();
    sub_2753B62E8();
    swift_willThrow();

    (*(v18 + 8))(v49, v19);
    (*(v17 + 8))(v59, v57);
LABEL_6:
    OUTLINED_FUNCTION_105_1();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_148_0();

    __asm { BRAA            X1, X16 }
  }

  v4 = v3;
  v5 = *(v0 + 1696);
  v6 = sub_2753B6238();
  v8 = v7;

  *(v0 + 1728) = v6;
  *(v0 + 1736) = v8;
  v9 = sub_2753B5FF8();
  OUTLINED_FUNCTION_88_1(v9);
  sub_2753B5FE8();
  sub_27532786C();
  sub_2753B5FD8();
  if (v5)
  {
    v10 = *(v0 + 1688);
    v11 = *(v0 + 1680);
    v12 = *(v0 + 1656);
    v56 = *(v0 + 1648);
    v58 = *(v0 + 1664);
    v52 = *(v0 + 1672);
    v54 = *(v0 + 1640);
    v13 = v2;
    v14 = *(v0 + 1624);
    v50 = *(v0 + 1616);

    v15 = OUTLINED_FUNCTION_112();
    sub_2752F2350(v15, v16);

    (*(v14 + 8))(v54, v50);
    (*(v12 + 8))(v58, v56);
    v35 = *(v0 + 1552);

    v36 = *(v0 + 1560);

    goto LABEL_6;
  }

  v33 = *(v0 + 1472);
  *(v0 + 1744) = v33;
  v34 = *(v0 + 1480);
  *(v0 + 1752) = v34;
  sub_2753B7178();
  *(v0 + 1456) = v33;
  *(v0 + 1464) = v34;
  *(v0 + 1760) = *(v0 + 1560);
  *(v0 + 1768) = *(v0 + 1552);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 1776) = v39;
  *v39 = v40;
  v39[1] = sub_27531F120;
  v41 = *(v0 + 1584);
  v42 = *(v0 + 1576);
  OUTLINED_FUNCTION_148_0();

  return sub_27531F708(v43, v44, v45, v46);
}

uint64_t sub_27531F120()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 1776);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[223] = v0;

  v9 = v3[221];
  if (v0)
  {
    v10 = v3[220];
  }

  else
  {
    v11 = v3[220];
    v12 = v3[219];
    v13 = v3[218];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_27531F260()
{
  v1 = v0[215];
  v2 = v0[211];
  v3 = v0[210];
  v4 = v0[209];
  v5 = v0[208];
  v6 = v0[207];
  v7 = v0[205];
  v12 = v0[206];
  v13 = v0[204];
  v8 = v0[203];
  v9 = v0[202];
  v14 = v0[201];
  v15 = v0[200];
  sub_2752F2350(v0[216], v0[217]);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v12);

  OUTLINED_FUNCTION_35_0();

  return v10();
}

uint64_t sub_27531F384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = v14[214];
  v16 = v14[211];
  v17 = v14[210];
  v18 = v14[209];
  v34 = v14[208];
  v35 = v14[213];
  v19 = v14[207];
  v20 = v14[206];
  v21 = v14[205];
  v22 = v14[203];
  v23 = v14[202];
  swift_willThrow();

  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v34, v20);

  v24 = v14[214];
  OUTLINED_FUNCTION_104_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, a11, a12, a13, a14);
}

uint64_t sub_27531F47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v35 = v14[218];
  v36 = v14[219];
  v15 = v14[215];
  v16 = v14[211];
  v17 = v14[210];
  v18 = v14[209];
  v34 = v14[208];
  v19 = v14[207];
  v20 = v14[206];
  v21 = v14[205];
  v22 = v14[203];
  v23 = v14[202];
  sub_2752F2350(v14[216], v14[217]);

  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v34, v20);

  v24 = v14[223];
  OUTLINED_FUNCTION_104_1();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_173();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, a12, a13, a14);
}

id sub_27531F590()
{
  v0 = sub_2753B6D78();

  v1 = sub_2753B6D78();

  v2 = [swift_getObjCClassFromMetadata() clientInfoForMusicKitRequestWithClientIdentifier:v0 clientVersion:v1];

  return v2;
}

id sub_27531F624(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentity:a1 clientInfo:a2];

  return v4;
}

uint64_t *sub_27531F680(uint64_t a1, void *a2, void *a3)
{
  sub_2753149C4(0, &qword_2809C1B98);
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *result;
  if (a3)
  {
    return sub_275319534(v7, a3);
  }

  if (a2)
  {
    return sub_2753195A8(v7, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_27531F708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[458] = v4;
  v5[457] = a4;
  v5[456] = a3;
  v5[455] = a2;
  v5[459] = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_27531F73C, 0, 0);
}

uint64_t sub_27531F73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v99 = v12[459];
  if (v99)
  {
    v103 = v12 + 454;
    v13 = [*v12[458] accountDSID];
    if (v13)
    {
      v14 = v13;
      v102 = sub_2753B6D88();
      v16 = v15;

      v17 = v16;
    }

    else
    {
      v27 = *MEMORY[0x277D7FA10];
      v102 = sub_2753B6D88();
    }

    v28 = 0;
    v29 = MEMORY[0x277D84F90];
    v107 = v12[457];
    v101 = v17;
    v12[460] = v17;
    v12[454] = v29;
    v112 = v29;
    do
    {
      __dst[0] = *(&unk_2884079A0 + v28 + 32);
      v30 = MediaAPI.MediaAPIType.rawValue.getter();
      v32 = sub_275319CB8(v30, v31, v99);

      if (v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = sub_2753B6C98();
      }

      v34 = 0;
      v100 = v28 + 1;
      v35 = v33 + 64;
      v36 = -1 << *(v33 + 32);
      if (-v36 < 64)
      {
        v37 = ~(-1 << -v36);
      }

      else
      {
        v37 = -1;
      }

      v38 = v37 & *(v33 + 64);
      v39 = (63 - v36) >> 6;
      v40 = v33;
      v108 = v39;
LABEL_16:
      while (2)
      {
        if (v38)
        {
          v41 = v34;
LABEL_21:
          v42 = v12[455];
          OUTLINED_FUNCTION_111_1(v33, (*(v40 + 56) + 824 * (__clz(__rbit64(v38)) | (v41 << 6))));
          v43 = v12[3];
          v12[450] = v12[2];
          v12[451] = v43;

          OUTLINED_FUNCTION_110_1();
          v44 = *(v107 + 16);
          v45 = *(v107 + 24);
          type metadata accessor for MediaAPIResourceRequest.Identifier();
          sub_2753B6D08();

          memcpy(v12 + 414, v12 + 423, 0x43uLL);
          if (v12[415])
          {
            v46 = sub_2753B72A8();
            OUTLINED_FUNCTION_9(v46);
            (*(v47 + 8))(v12 + 414);
          }

          else
          {
            v48 = v40;
            memcpy(__dst, v12 + 2, sizeof(__dst));
            MediaAPI.Resource.rawIdentifier(forPersonID:)(v113);
            v49 = v114;
            if (v114 <= 0xFBu)
            {
              v109 = v113[1];
              v110 = v113[0];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v78 = *(v112 + 16);
                OUTLINED_FUNCTION_50_1();
                sub_275385150();
                v112 = v79;
              }

              v51 = *(v112 + 16);
              v50 = *(v112 + 24);
              if (v51 >= v50 >> 1)
              {
                OUTLINED_FUNCTION_116_1(v50);
                sub_275385150();
                v112 = v80;
              }

              *(v112 + 16) = v51 + 1;
              v52 = v112 + 40 * v51;
              *(v52 + 32) = v110;
              *(v52 + 48) = v109;
              *(v52 + 64) = v49;
              *v103 = v112;
            }

            v40 = v48;
          }

          v38 &= v38 - 1;
          v53 = v12[104];
          if (v53)
          {
            v54 = v12[104];

            sub_275315F74((v12 + 2));
            if (*(v53 + 16))
            {
              v55 = sub_2753842B8(0x736B63617274, 0xE600000000000000);
              if (v56)
              {
                v57 = (*(v53 + 56) + 40 * v55);
                v58 = *v57;
                v59 = v57[4];

                if (v59)
                {
                }

                else
                {
                  v60 = *(v58 + 16);
                  if (v60)
                  {
                    v111 = v58;
                    v98 = v40;
                    v61 = v60 - 1;
                    for (i = 32; ; i += 824)
                    {
                      v63 = v12[455];
                      memcpy(v12 + 208, (v111 + i), 0x338uLL);
                      v64 = v12[208];
                      v65 = v12[209];
                      v12[452] = v64;
                      v12[453] = v65;

                      sub_275329100((v12 + 208), (v12 + 311));
                      sub_2753B6D08();

                      memcpy(v12 + 432, v12 + 441, 0x43uLL);
                      if (v12[433])
                      {
                        sub_275315F74((v12 + 208));
                        v66 = sub_2753B72A8();
                        OUTLINED_FUNCTION_9(v66);
                        (*(v67 + 8))(v12 + 432);
                        if (!v61)
                        {
                          goto LABEL_62;
                        }
                      }

                      else
                      {
                        v68 = v12[210];
                        v69 = v12[211];

                        v70 = sub_2753B74E8();

                        switch(v70)
                        {
                          case 0:

                            sub_275315F74((v12 + 208));
                            OUTLINED_FUNCTION_101_1();
                            v64 = 0;
                            goto LABEL_52;
                          case 1:

                            OUTLINED_FUNCTION_136_1();
                            sub_275315F74((v12 + 208));
                            v71 = 64;
                            goto LABEL_51;
                          case 2:

                            sub_275315F74((v12 + 208));
                            OUTLINED_FUNCTION_101_1();
                            v64 = 1;
                            goto LABEL_52;
                          case 3:

                            OUTLINED_FUNCTION_136_1();
                            sub_275315F74((v12 + 208));
                            v71 = 65;
                            goto LABEL_51;
                          case 4:

                            sub_275315F74((v12 + 208));
                            OUTLINED_FUNCTION_101_1();
                            v64 = 2;
                            goto LABEL_52;
                          case 5:

                            OUTLINED_FUNCTION_136_1();
                            sub_275315F74((v12 + 208));
                            v71 = 66;
                            goto LABEL_51;
                          case 6:

                            sub_275315F74((v12 + 208));
                            OUTLINED_FUNCTION_101_1();
                            v64 = 3;
                            goto LABEL_52;
                          case 7:

                            OUTLINED_FUNCTION_136_1();
                            sub_275315F74((v12 + 208));
                            v71 = 67;
LABEL_51:
                            v106 = v71;
                            v104 = v102;
                            v105 = v65;
                            v65 = v70;
                            goto LABEL_52;
                          case 8:

                            sub_275315F74((v12 + 208));
                            OUTLINED_FUNCTION_101_1();
                            v64 = 4;
LABEL_52:
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v75 = *(v112 + 16);
                              OUTLINED_FUNCTION_50_1();
                              sub_275385150();
                              v112 = v76;
                            }

                            v73 = *(v112 + 16);
                            v72 = *(v112 + 24);
                            if (v73 >= v72 >> 1)
                            {
                              OUTLINED_FUNCTION_116_1(v72);
                              sub_275385150();
                              v112 = v77;
                            }

                            *(v112 + 16) = v73 + 1;
                            v74 = v112 + 40 * v73;
                            *(v74 + 32) = v104;
                            *(v74 + 40) = v65;
                            *(v74 + 48) = v64;
                            *(v74 + 56) = v105;
                            *(v74 + 64) = v106;
                            *v103 = v112;
                            break;
                          default:
                            sub_275315F74((v12 + 208));
                            break;
                        }

                        if (!v61)
                        {
LABEL_62:

                          v34 = v41;
                          v40 = v98;
                          v39 = v108;
                          goto LABEL_16;
                        }
                      }

                      --v61;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v33 = sub_275315F74((v12 + 2));
          }

          v34 = v41;
          v39 = v108;
          continue;
        }

        break;
      }

      while (1)
      {
        v41 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          JUMPOUT(0x27531FF2CLL);
        }

        if (v41 >= v39)
        {
          break;
        }

        v38 = *(v35 + 8 * v41);
        ++v34;
        if (v38)
        {
          goto LABEL_21;
        }
      }

      v28 = v100;
    }

    while (v100 != 9);
    v81 = v12[458];
    v82 = v12[456];
    v83 = v12[455];
    v84 = *(v12[457] + 36);
    v85 = swift_task_alloc();
    v12[461] = v85;
    v85[2] = *(v107 + 16);
    v86 = *(v107 + 24);
    v85[3] = v86;
    v85[4] = v103;
    v85[5] = v82;
    v85[6] = &unk_2884079A0;
    v85[7] = v99;
    v85[8] = v83;
    v85[9] = v102;
    v85[10] = v101;
    v85[11] = v81;
    v87 = *(MEMORY[0x277D651C8] + 4);
    v88 = swift_task_alloc();
    v12[462] = v88;
    v89 = *(v86 + 8);
    *v88 = v12;
    v88[1] = sub_27531FF50;
    OUTLINED_FUNCTION_100_0();

    return MEMORY[0x2821CC4F8](v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_100_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_27531FF50()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 3696);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[463] = v0;

  if (!v0)
  {
    v9 = v3[461];
    v10 = v3[460];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_27532005C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 3632);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_2753200B4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[461];
  v2 = v0[460];

  v3 = v0[454];

  OUTLINED_FUNCTION_19_0();
  v5 = v0[463];

  return v4();
}

uint64_t sub_275320124(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v151 = a7;
  v152 = a8;
  v154 = a6;
  v148 = a5;
  v137 = a4;
  v142 = a3;
  v171 = a1;
  v135 = a9;
  v140 = sub_2753B6A18();
  v174 = *(v140 - 8);
  v12 = *(v174 + 64);
  MEMORY[0x28223BE20](v140);
  v139 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D64FD0];
  sub_27532A1F4(255, &qword_2809C1B18, MEMORY[0x277D64FD0], MEMORY[0x277D83D88]);
  v15 = *(a11 + 8);
  v175 = sub_2753B6B18();
  v173 = *(v175 - 8);
  v16 = *(v173 + 64);
  v17 = MEMORY[0x28223BE20](v175);
  v159 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v166 = &v131 - v20;
  MEMORY[0x28223BE20](v19);
  v169 = &v131 - v21;
  v161 = a11;
  v22 = type metadata accessor for MediaAPIResourceRequest();
  v133 = *(v22 - 8);
  v134 = v22;
  v132 = *(v133 + 64);
  MEMORY[0x28223BE20](v22);
  v136 = &v131 - v23;
  sub_27532A18C(255, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  v24 = sub_2753B6B18();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v131 - v27;
  sub_27532A1F4(255, &qword_2809C1898, v14, MEMORY[0x277D83940]);
  v29 = sub_2753B6B18();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v131 - v32;
  v34 = *a2;
  v160 = a10;
  v35 = sub_2753B6BD8();

  v170 = v35;
  sub_2753B6BA8();

  (*(v30 + 8))(v33, v29);
  v36 = v142 + 56;
  v37 = 1 << *(v142 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v142 + 56);
  v40 = (v37 + 63) >> 6;
  v41 = (v25 + 8);

  v42 = 0;
  if (v39)
  {
    while (1)
    {
      v43 = v42;
LABEL_9:
      v44 = (*(v142 + 48) + ((v43 << 10) | (16 * __clz(__rbit64(v39)))));
      v45 = v44[1];
      v39 &= v39 - 1;
      v181[0] = *v44;
      v181[1] = v45;

      sub_2753B6B58();
      (*v41)(v28, v24);

      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_83;
    }

    if (v43 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v43);
    ++v42;
    if (v39)
    {
      v42 = v43;
      goto LABEL_9;
    }
  }

  v147 = *(v137 + 16);
  if (v147)
  {
    v46 = 0;
    v146 = v137 + 32;
    v167 = (v173 + 8);
    v141 = 0x80000002753B9180;
    v150 = (v173 + 16);
    v138 = (v174 + 8);
    v153 = xmmword_2753BE420;
    v172 = MEMORY[0x277D84F90];
    v47 = v154;
    while (1)
    {
      v145 = *(v146 + v46);
      LOBYTE(v181[0]) = v145;
      v48 = MediaAPI.MediaAPIType.rawValue.getter();
      v50 = sub_275319CB8(v48, v49, v148);

      v51 = v50 ? v50 : sub_2753B6C98();
      v52 = 0;
      v149 = v46 + 1;
      v53 = v51 + 64;
      v54 = 1 << *(v51 + 32);
      v55 = v54 < 64 ? ~(-1 << v54) : -1;
      v56 = v55 & *(v51 + 64);
      v57 = (v54 + 63) >> 6;
      v162 = v57;
      v163 = v51 + 64;
      v164 = v51;
      if (v56)
      {
        break;
      }

      while (1)
      {
LABEL_20:
        v58 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          v176[0] = 0;
          v176[1] = 0xE000000000000000;
          sub_275329100(v181, v180);
          sub_2753B7398();
          v180[0] = v176[0];
          v180[1] = v176[1];
          MEMORY[0x277C76100](0xD00000000000002BLL, 0x80000002753B9130);
          LOBYTE(v176[0]) = v145;
          sub_2753B7468();
          MEMORY[0x277C76100](0xD000000000000019, 0x80000002753B9160);
          MEMORY[0x277C76100](v181[2], v181[3]);
          sub_2753B74A8();
          __break(1u);
          JUMPOUT(0x2753212A4);
        }

        if (v58 >= v57)
        {
          break;
        }

        v56 = *(v53 + 8 * v58);
        ++v52;
        if (v56)
        {
          v52 = v58;
          goto LABEL_24;
        }
      }

      v46 = v149;
      if (v149 == v147)
      {
        goto LABEL_81;
      }
    }

    while (1)
    {
LABEL_24:
      memcpy(v181, (*(v51 + 56) + 824 * (__clz(__rbit64(v56)) | (v52 << 6))), sizeof(v181));
      v59 = v181[0];
      v60 = v181[1];
      v179[0] = v181[0];
      v179[1] = v181[1];

      sub_275329100(v181, v180);
      v61 = type metadata accessor for MediaAPIResourceRequest.Identifier();
      sub_2753B6D08();

      memcpy(__dst, v176, 0x43uLL);
      if (__dst[1])
      {
        v180[0] = __dst[0];
        v180[1] = __dst[1];

        sub_2753B6B68();
        v62 = sub_2753B72A8();
        (*(*(v62 - 8) + 8))(__dst, v62);
      }

      else
      {
        v168 = v59;
        v165 = v61;
        memcpy(v180, v181, sizeof(v180));
        MediaAPI.Resource.rawIdentifier(forPersonID:)(v176);
        v63 = v176[4];
        if (LOBYTE(v176[4]) > 0xFBu)
        {
          goto LABEL_84;
        }

        v64 = v176[0];
        v65 = v176[1];
        v66 = v176[2];
        v67 = v176[3];
        sub_27532A1F4(0, &qword_2809C1B20, &type metadata for MusicContent.RawIdentifier, MEMORY[0x277D84560]);
        v68 = swift_allocObject();
        *(v68 + 16) = v153;
        *(v68 + 32) = v64;
        *(v68 + 40) = v65;
        *(v68 + 48) = v66;
        *(v68 + 56) = v67;
        *(v68 + 64) = v63;
        v173 = v65;
        v174 = v64;
        sub_275329198(v64, v65, v66, v67, v63);
        sub_2753B6B38();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = *(v172 + 16);
          sub_27538522C();
          v172 = v116;
        }

        v69 = *(v172 + 16);
        if (v69 >= *(v172 + 24) >> 1)
        {
          sub_27538522C();
          v172 = v117;
        }

        v70 = v172;
        *(v172 + 16) = v69 + 1;
        v71 = v70 + 56 * v69;
        *(v71 + 32) = v168;
        *(v71 + 40) = v60;
        v72 = v173;
        *(v71 + 48) = v174;
        *(v71 + 56) = v72;
        *(v71 + 64) = v66;
        *(v71 + 72) = v67;
        *(v71 + 80) = v63;
        v47 = v154;
        v61 = v165;
      }

      v56 &= v56 - 1;
      v73 = v181[102];
      if (v181[102] && *(v181[102] + 16))
      {

        v74 = sub_2753842B8(0x736B63617274, 0xE600000000000000);
        if (v75)
        {
          v76 = (*(v73 + 56) + 40 * v74);
          v77 = *v76;
          v78 = v76[4];

          if (!v78)
          {
            memcpy(v179, &v181[6], 0x2F9uLL);
            v79 = sub_275315FC8(v179);
            v80 = 0xD000000000000012;
            v81 = v141;
            if (v79 != 1)
            {
              memcpy(v180, v179, 0x2F9uLL);
              switch(sub_27531603C(v180))
              {
                case 2u:
                  v82 = sub_275316098(v180);
                  v81 = *(v82 + 456);
                  if (!v81)
                  {
                    goto LABEL_52;
                  }

                  v80 = *(v82 + 448);
                  goto LABEL_51;
                case 3u:
                  v84 = sub_275316098(v180);
                  v81 = *(v84 + 416);
                  if (!v81)
                  {
                    goto LABEL_52;
                  }

                  v80 = *(v84 + 408);
                  goto LABEL_51;
                case 8u:
                  v83 = sub_275316098(v180);
                  v81 = *(v83 + 400);
                  if (!v81)
                  {
                    goto LABEL_52;
                  }

                  v80 = *(v83 + 392);
                  goto LABEL_51;
                case 9u:
                  v85 = sub_275316098(v180);
                  v81 = *(v85 + 408);
                  if (!v81)
                  {
                    goto LABEL_52;
                  }

                  v80 = *(v85 + 400);
LABEL_51:

                  break;
                default:
LABEL_52:
                  v81 = v141;
                  break;
              }
            }

            v143 = v80;
            v144 = v81;
            v178[9] = sub_2753B7038();
            v86 = *(v77 + 16);
            if (v86)
            {
              v174 = v86 - 1;
              v87 = 32;
              v165 = v61;
              v168 = v77;
              while (1)
              {
                v173 = v87;
                memcpy(v180, (v77 + v87), sizeof(v180));
                v88 = v180[0];
                v89 = v180[1];
                v176[103] = v180[0];
                v176[104] = v180[1];

                sub_275329100(v180, v176);
                sub_2753B6D08();

                memcpy(v178, v177, 0x43uLL);
                v90 = v178[1];
                if (v178[1])
                {
                  v91 = v178[0];
                  sub_275315F74(v180);
                  v176[0] = v91;
                  v176[1] = v90;

                  sub_2753B6B68();
                  v92 = sub_2753B72A8();
                  (*(*(v92 - 8) + 8))(v178, v92);

                  sub_2753B70B8();
                  sub_2753B7098();
                }

                else
                {

                  v93 = sub_2753B74E8();

                  v94 = 0;
                  v95 = v88;
                  v96 = v89;
                  v97 = v93;
                  switch(v93)
                  {
                    case 0:
                      goto LABEL_65;
                    case 1:

                      v94 = 64;
                      goto LABEL_64;
                    case 2:
                      v97 = 0;
                      v94 = 0;
                      v95 = v88;
                      v96 = v89;
                      v93 = 1;
                      goto LABEL_65;
                    case 3:

                      v94 = 65;
                      goto LABEL_64;
                    case 4:
                      v97 = 0;
                      v94 = 0;
                      v95 = v88;
                      v96 = v89;
                      v93 = 2;
                      goto LABEL_65;
                    case 5:

                      v94 = 66;
                      goto LABEL_64;
                    case 6:
                      v97 = 0;
                      v94 = 0;
                      v95 = v88;
                      v96 = v89;
                      v93 = 3;
                      goto LABEL_65;
                    case 7:

                      v94 = 67;
LABEL_64:
                      v95 = v151;
                      v96 = v98;
                      v93 = v88;
                      v97 = v89;
                      goto LABEL_65;
                    case 8:
                      v97 = 0;
                      v94 = 0;
                      v95 = v88;
                      v96 = v89;
                      v93 = 4;
LABEL_65:
                      v155 = v88;
                      v99 = v96;
                      sub_27532A1F4(0, &qword_2809C1B20, &type metadata for MusicContent.RawIdentifier, MEMORY[0x277D84560]);
                      v100 = swift_allocObject();
                      *(v100 + 16) = v153;
                      *(v100 + 32) = v95;
                      *(v100 + 40) = v99;
                      *(v100 + 48) = v93;
                      *(v100 + 56) = v97;
                      *(v100 + 64) = v94;

                      v156 = v95;
                      v157 = v97;
                      v101 = v95;
                      v102 = v99;
                      v158 = v94;
                      sub_275329198(v101, v99, v93, v97, v94);
                      v103 = v159;
                      sub_2753B6B38();

                      (*v150)(v166, v103, v175);
                      sub_2753B70B8();
                      sub_2753B7098();

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v109 = *(v172 + 16);
                        sub_27538522C();
                        v172 = v110;
                      }

                      v104 = *(v172 + 16);
                      v105 = v155;
                      if (v104 >= *(v172 + 24) >> 1)
                      {
                        sub_27538522C();
                        v172 = v111;
                      }

                      sub_275315F74(v180);
                      (*v167)(v159, v175);
                      v106 = v172;
                      *(v172 + 16) = v104 + 1;
                      v107 = v106 + 56 * v104;
                      *(v107 + 32) = v105;
                      *(v107 + 40) = v89;
                      v108 = v157;
                      *(v107 + 48) = v156;
                      *(v107 + 56) = v102;
                      *(v107 + 64) = v93;
                      *(v107 + 72) = v108;
                      *(v107 + 80) = v158;
                      v47 = v154;
                      break;
                    default:
                      sub_275315F74(v180);
                      break;
                  }
                }

                v77 = v168;
                if (!v174)
                {
                  break;
                }

                --v174;
                v87 = v173 + 824;
              }
            }

            if (qword_2809C06E0 != -1)
            {
              swift_once();
            }

            v112 = v140;
            __swift_project_value_buffer(v140, qword_2809DAC90);
            v113 = v139;
            sub_2753B69D8();

            v114 = v169;
            sub_2753B6BB8();

            (*v138)(v113, v112);
            (*v167)(v114, v175);
            goto LABEL_39;
          }
        }
      }

      (*v167)(v169, v175);
LABEL_39:
      sub_275315F74(v181);
      v53 = v163;
      v51 = v164;
      v57 = v162;
      if (!v56)
      {
        goto LABEL_20;
      }
    }
  }

  v172 = MEMORY[0x277D84F90];
  v47 = v154;
LABEL_81:
  v119 = v133;
  v118 = v134;
  (*(v133 + 16))(v136, v135, v134);
  v120 = (*(v119 + 80) + 48) & ~*(v119 + 80);
  v121 = (v132 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
  v123 = v47;
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
  v125 = swift_allocObject();
  v126 = v161;
  *(v125 + 2) = v160;
  *(v125 + 3) = v126;
  v127 = v172;
  *(v125 + 4) = v123;
  *(v125 + 5) = v127;
  (*(v119 + 32))(&v125[v120], v136, v118);
  *&v125[v121] = v137;
  *&v125[v122] = v148;
  *&v125[v124] = v142;
  v128 = &v125[(v124 + 15) & 0xFFFFFFFFFFFFFFF8];
  v129 = v152;
  *v128 = v151;
  v128[1] = v129;

  sub_2753B6B88();
}

uint64_t sub_2753212E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v11;
  *(v8 + 112) = v10;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  return MEMORY[0x2822009F8](sub_275321328, 0, 0);
}

uint64_t sub_275321328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 56);
  v14 = sub_2753B6C98();
  v81 = v12;
  *(v12 + 32) = v14;
  v84 = (v12 + 32);
  v85 = v13;
  v16 = v13 + 64;
  v15 = *(v13 + 64);
  v17 = *(v13 + 32);
  OUTLINED_FUNCTION_11_2();
  v20 = v19 & v18;
  OUTLINED_FUNCTION_123_1();
  v22 = v21 >> 6;

  v31 = 0;
  v82 = v22;
  v83 = v13 + 64;
  if (v20)
  {
    while (1)
    {
LABEL_6:
      v33 = __clz(__rbit64(v20)) | (v31 << 6);
      v34 = (*(v85 + 48) + 16 * v33);
      v36 = *v34;
      v35 = v34[1];
      v37 = (*(v85 + 56) + 72 * v33);
      v38 = v37[1];
      v86 = *v37;

      swift_isUniquelyReferenced_nonNull_native();
      v39 = OUTLINED_FUNCTION_112();
      v23 = sub_2753842B8(v39, v40);
      if (__OFADD__(v14[2], (v24 & 1) == 0))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return MEMORY[0x2821CC508](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
      }

      v41 = v23;
      v42 = v24;
      sub_2753294CC();
      v23 = sub_2753B7478();
      if (v23)
      {
        v43 = OUTLINED_FUNCTION_112();
        v23 = sub_2753842B8(v43, v44);
        if ((v42 & 1) != (v24 & 1))
        {
          OUTLINED_FUNCTION_131_0();

          return sub_2753B7768();
        }

        v41 = v23;
      }

      if (v42)
      {

        v45 = (v14[7] + 16 * v41);
        v46 = v45[1];
        *v45 = v86;
        v45[1] = v38;
      }

      else
      {
        v14[(v41 >> 6) + 8] |= 1 << v41;
        v47 = (v14[6] + 16 * v41);
        *v47 = v36;
        v47[1] = v35;
        v48 = (v14[7] + 16 * v41);
        *v48 = v86;
        v48[1] = v38;
        v49 = v14[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_28;
        }

        v14[2] = v51;
      }

      v20 &= v20 - 1;
      v16 = v83;
      *v84 = v14;
      v22 = v82;
      if (!v20)
      {
        goto LABEL_2;
      }
    }
  }

  while (1)
  {
LABEL_2:
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v32 >= v22)
    {
      break;
    }

    v20 = *(v16 + 8 * v32);
    ++v31;
    if (v20)
    {
      v31 = v32;
      goto LABEL_6;
    }
  }

  v52 = *(v81 + 56);
  v53 = *(v81 + 64);

  v55 = *(v53 + 16);
  *(v81 + 136) = v55;
  *(v81 + 144) = 0;
  if (v55)
  {
    v56 = *(v81 + 120);
    v57 = *(v81 + 128);
    v58 = *(v81 + 64);
    *(v81 + 152) = *(v58 + 32);
    *(v81 + 160) = *(v58 + 40);
    v60 = *(v58 + 64);
    v59 = *(v58 + 72);
    v62 = *(v58 + 48);
    v61 = *(v58 + 56);
    v63 = *(v58 + 80);
    OUTLINED_FUNCTION_44_1(v54, &qword_2809C1B20, &type metadata for MusicContent.RawIdentifier);
    v64 = swift_allocObject();
    *(v81 + 168) = v64;
    *(v64 + 16) = xmmword_2753BE420;
    *(v64 + 32) = v62;
    *(v64 + 40) = v61;
    *(v64 + 48) = v60;
    *(v64 + 56) = v59;
    *(v64 + 64) = v63;

    v65 = OUTLINED_FUNCTION_71();
    sub_275329198(v65, v66, v60, v59, v63);
    v67 = *(MEMORY[0x277D651D0] + 4);
    v68 = swift_task_alloc();
    *(v81 + 176) = v68;
    v69 = *(v57 + 8);
    OUTLINED_FUNCTION_87_1();
    sub_2753B6BD8();
    *v68 = v81;
    v68[1] = sub_275321730;
    v70 = *(v81 + 48);
    OUTLINED_FUNCTION_131_0();

    return MEMORY[0x2821CC508](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }

  else
  {
    v71 = *(v81 + 120);
    v72 = *(v81 + 128);
    *(v81 + 248) = *(type metadata accessor for MediaAPIResourceRequest() + 36);
    *(v81 + 192) = *(v72 + 32);
    *(v81 + 200) = (v72 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
    sub_2753B6288();
    *(v81 + 208) = sub_2753B6278();
    OUTLINED_FUNCTION_40_1();
    sub_275327824(v73, v74);
    sub_2753B70C8();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_131_0();

    return MEMORY[0x2822009F8](v75, v76, v77);
  }
}

uint64_t sub_275321730()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *(v2 + 176);
  *v4 = *v1;
  *(v3 + 184) = v0;

  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = *(v3 + 160);
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_275321864()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 248);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 72);

  v8 = OUTLINED_FUNCTION_79_0();
  *(v0 + 216) = v3(v8);
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2753218F4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  v6 = *(v0 + 80);
  *(v5 + 16) = *(v0 + 120);
  *(v5 + 32) = v6;
  *(v5 + 48) = v0 + 32;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  *(v5 + 72) = v2;
  *(v5 + 80) = v1;
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_275321A18;
  v8 = *(v0 + 216);

  return sub_2753263B8(sub_2753263B8, 0xD000000000000029, 0x80000002753B91A0, &unk_2753C2BF0, v5);
}

uint64_t sub_275321A18()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[30] = v0;

  if (!v0)
  {
    v9 = v3[27];
    v10 = v3[28];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_275321B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  v15 = *(v12 + 160);
  if (!v13)
  {
    v32 = *(v12 + 160);

    goto LABEL_15;
  }

  v16 = *(v12 + 152);
  v17 = *(v12 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 40) = v17;
  v18 = sub_2753842B8(v16, v15);
  if (__OFADD__(*(v17 + 16), (v19 & 1) == 0))
  {
    __break(1u);
    goto LABEL_23;
  }

  v26 = v18;
  v27 = v19;
  sub_2753294CC();
  if (sub_2753B7478())
  {
    v28 = *(v12 + 40);
    v29 = sub_2753842B8(*(v12 + 152), *(v12 + 160));
    if ((v27 & 1) != (v19 & 1))
    {
      OUTLINED_FUNCTION_100_0();

      return sub_2753B7768();
    }

    v26 = v29;
  }

  v18 = *(v12 + 160);
  if ((v27 & 1) == 0)
  {
    v36 = *(v12 + 152);
    v33 = *(v12 + 40);
    v33[(v26 >> 6) + 8] |= 1 << v26;
    v37 = (v33[6] + 16 * v26);
    *v37 = v36;
    v37[1] = v18;
    v38 = (v33[7] + 16 * v26);
    *v38 = v14;
    v38[1] = v13;
    v39 = v33[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (!v40)
    {
      v33[2] = v41;
      goto LABEL_14;
    }

LABEL_23:
    __break(1u);
    return MEMORY[0x2821CC508](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v33 = *(v12 + 40);
  v34 = (v33[7] + 16 * v26);
  v35 = v34[1];
  *v34 = v14;
  v34[1] = v13;

LABEL_14:
  *(v12 + 32) = v33;
LABEL_15:
  v42 = *(v12 + 136);
  v43 = *(v12 + 144) + 1;
  *(v12 + 144) = v43;
  v44 = *(v12 + 120);
  v45 = *(v12 + 128);
  if (v43 != v42)
  {
    v53 = *(v12 + 64) + 56 * v43;
    *(v12 + 152) = *(v53 + 32);
    *(v12 + 160) = *(v53 + 40);
    v55 = *(v53 + 64);
    v54 = *(v53 + 72);
    v57 = *(v53 + 48);
    v56 = *(v53 + 56);
    v58 = *(v53 + 80);
    a9 = v44;
    OUTLINED_FUNCTION_44_1(v18, &qword_2809C1B20, &type metadata for MusicContent.RawIdentifier);
    v59 = swift_allocObject();
    *(v12 + 168) = v59;
    *(v59 + 16) = xmmword_2753BE420;
    *(v59 + 32) = v57;
    *(v59 + 40) = v56;
    *(v59 + 48) = v55;
    *(v59 + 56) = v54;
    *(v59 + 64) = v58;

    v60 = OUTLINED_FUNCTION_111();
    sub_275329198(v60, v61, v55, v54, v58);
    v62 = *(MEMORY[0x277D651D0] + 4);
    v63 = swift_task_alloc();
    *(v12 + 176) = v63;
    v64 = *(v45 + 8);
    sub_2753B6BD8();
    *v63 = v12;
    v63[1] = sub_275321730;
    v65 = *(v12 + 48);
    OUTLINED_FUNCTION_100_0();

    return MEMORY[0x2821CC508](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v46 = *(v12 + 128);
  *(v12 + 248) = *(type metadata accessor for MediaAPIResourceRequest() + 36);
  *(v12 + 192) = *(v45 + 32);
  *(v12 + 200) = (v45 + 32) & 0xFFFFFFFFFFFFLL | 0x22BE000000000000;
  sub_2753B6288();
  *(v12 + 208) = sub_2753B6278();
  OUTLINED_FUNCTION_40_1();
  sub_275327824(v47, v48);
  sub_2753B70C8();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_100_0();

  return MEMORY[0x2822009F8](v49, v50, v51);
}