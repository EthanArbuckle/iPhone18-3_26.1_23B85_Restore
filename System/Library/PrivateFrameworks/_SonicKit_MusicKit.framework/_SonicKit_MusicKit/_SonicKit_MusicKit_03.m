uint64_t sub_275321E68()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_275321EC4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275321F1C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[27];
  v2 = v0[28];

  v3 = v0[30];
  v4 = v0[4];

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t sub_275321F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 59848) = v20;
  *(v8 + 59832) = v19;
  *(v8 + 59824) = a8;
  *(v8 + 59816) = a7;
  *(v8 + 59808) = a6;
  *(v8 + 59800) = a5;
  *(v8 + 59792) = a4;
  *(v8 + 59784) = a3;
  *(v8 + 59776) = a2;
  sub_27532A18C(0, &qword_2809C1428, sub_275314678, &type metadata for MusicContentError, MEMORY[0x277D64F00]);
  *(v8 + 59856) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 59864) = swift_task_alloc();
  sub_27532A18C(0, &qword_2809C1300, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65180]);
  *(v8 + 59872) = v11;
  v12 = *(v11 - 8);
  *(v8 + 59880) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 59888) = swift_task_alloc();
  *(v8 + 59896) = swift_task_alloc();
  sub_27532A18C(0, &qword_2809C1310, sub_2752FBA9C, &type metadata for MusicContent, MEMORY[0x277D65188]);
  *(v8 + 59904) = v14;
  v15 = *(v14 - 8);
  *(v8 + 59912) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 59920) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753221B8, 0, 0);
}

uint64_t sub_2753221B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v15 = *(v14 + 59784);
  v16 = *(v15 + 16);
  *(v14 + 59928) = v16;
  if (!v16)
  {
LABEL_36:
    OUTLINED_FUNCTION_106_1();

    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_173();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
  }

  v17 = 0;
  a10 = 0x80000002753B8130;
  a11 = 0x80000002753B8170;
  *(v14 + 20556) = *MEMORY[0x277D65178];
LABEL_3:
  *(v14 + 59936) = v17;
  v18 = 0xE500000000000000;
  v19 = 0x73676E6F73;
  switch(*(v15 + v17 + 32))
  {
    case 1:
      v19 = OUTLINED_FUNCTION_3_3();
      v18 = 0xED000073676E6F73;
      break;
    case 2:
      v19 = OUTLINED_FUNCTION_17_2();
      v18 = 0xEC000000736F6564;
      break;
    case 3:
      v19 = OUTLINED_FUNCTION_31_1();
      v18 = 0x80000002753B8130;
      break;
    case 4:
      v18 = 0xE600000000000000;
      v19 = OUTLINED_FUNCTION_29_1();
      break;
    case 5:
      v19 = OUTLINED_FUNCTION_3_3();
      v20 = 0x736D75626C61;
      goto LABEL_12;
    case 6:
      v18 = 0xE900000000000073;
      v19 = OUTLINED_FUNCTION_64();
      break;
    case 7:
      v19 = OUTLINED_FUNCTION_85_1();
      v18 = 0x80000002753B8170;
      break;
    case 8:
      v18 = 0xE800000000000000;
      v19 = OUTLINED_FUNCTION_15_2();
      break;
    case 9:
      v18 = 0xE600000000000000;
      v19 = OUTLINED_FUNCTION_32_0();
      break;
    case 0xA:
      v19 = OUTLINED_FUNCTION_6_1();
      v18 = 0xEF736973796C616ELL;
      break;
    case 0xB:
      v19 = OUTLINED_FUNCTION_4_4();
      v20 = 0x736973796C61;
LABEL_12:
      v18 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  v21 = *(v14 + 59792);
  if (*(v21 + 16) && (v22 = sub_2753842B8(v19, v18), (v23 & 1) != 0))
  {
    OUTLINED_FUNCTION_73_1(v22);
  }

  else
  {

    v21 = sub_2753B6C98();
  }

  v24 = 0;
  *(v14 + 59944) = v21;
  v25 = *(v21 + 32);
  *(v14 + 21321) = v25;
  v26 = 1 << v25;
  v27 = *(v21 + 64);
  if (v26 < 64)
  {
    v28 = ~(-1 << v26);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v27;
  if ((v28 & v27) == 0)
  {
LABEL_25:
    while (1)
    {
      v31 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v30 = *(v14 + 59944);
      if (v31 >= (((1 << *(v14 + 21321)) + 63) >> 6))
      {
        v40 = *(v14 + 59928);
        v39 = *(v14 + 59936);

        if (v39 + 1 == v40)
        {
          goto LABEL_36;
        }

        v17 = *(v14 + 59936) + 1;
        v15 = *(v14 + 59784);
        goto LABEL_3;
      }

      v29 = *(v30 + 8 * v31 + 64);
      ++v24;
      if (v29)
      {
        v24 = v31;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_47:
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_13_3();
LABEL_58:
    v74 = OUTLINED_FUNCTION_28_1();
    MEMORY[0x277C76100](v74);

    v75 = *(v14 + 59712);
    *(v14 + 60048) = *(v14 + 59720);
    v76 = swift_task_alloc();
    v77 = OUTLINED_FUNCTION_112_1(v76);
    *v77 = v78;
    OUTLINED_FUNCTION_0_4(v77);
    v79 = *(v14 + 59984);
    v80 = *(v14 + 59992);
    v81 = *(v14 + 59776);
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_173();

    return MusicContentStorage.Operations.updateDebugDescription(_:for:)();
  }

  while (1)
  {
    v30 = *(v14 + 59944);
LABEL_29:
    *(v14 + 59952) = v29;
    *(v14 + 59960) = v24;
    v32 = *(v14 + 59800);
    OUTLINED_FUNCTION_111_1(v30, (*(v30 + 56) + 824 * (__clz(__rbit64(v29)) | (v24 << 6))));
    OUTLINED_FUNCTION_129_1();
    if (v33)
    {
      break;
    }

LABEL_32:
    v29 &= v29 - 1;
    if (!v29)
    {
      goto LABEL_25;
    }
  }

  v34 = *(v14 + 16);
  v35 = *(v14 + 24);
  *(v14 + 59968) = v34;
  *(v14 + 59976) = v35;
  OUTLINED_FUNCTION_110_1();

  v36 = sub_2753842B8(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    sub_275315F74(v14 + 16);
    v29 = *(v14 + 59952);
    v24 = *(v14 + 59960);
    goto LABEL_32;
  }

  v50 = *(v14 + 59808);
  v51 = (*(v32 + 56) + 16 * v36);
  v52 = *v51;
  *(v14 + 59984) = *v51;
  *(v14 + 59992) = v51[1];

  OUTLINED_FUNCTION_96_1();
  if (!sub_27531D740(v53, v54, v55))
  {
    OUTLINED_FUNCTION_27_1();
    v67 = *(v14 + 59704);

    *(v14 + 59712) = -1;
    *(v14 + 59720) = 1;
    OUTLINED_FUNCTION_20_1();
    v68 = OUTLINED_FUNCTION_28_1();
    MEMORY[0x277C76100](v68);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_137_1();
    if (v69)
    {
LABEL_57:

      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_121_1();
      memcpy((v14 + 38992), (v14 + 39760), 0x2F9uLL);
      v70 = sub_27531603C(v14 + 38992);
      v71 = sub_275316098(v14 + 38992);
      v72 = 8;
      v73 = v71;
      switch(v70)
      {
        case 1:
          OUTLINED_FUNCTION_81_0();
          goto LABEL_55;
        case 2:
          OUTLINED_FUNCTION_78_0();
          goto LABEL_55;
        case 3:
          OUTLINED_FUNCTION_77_1();
          goto LABEL_55;
        case 4:
          OUTLINED_FUNCTION_79_1();
          goto LABEL_55;
        case 5:
          goto LABEL_55;
        case 7:
          OUTLINED_FUNCTION_74_1();
          goto LABEL_55;
        case 8:
          OUTLINED_FUNCTION_80_1();
          goto LABEL_55;
        case 9:
          OUTLINED_FUNCTION_75_1();
          goto LABEL_55;
        case 10:
          goto LABEL_58;
        case 11:
          goto LABEL_47;
        default:
          OUTLINED_FUNCTION_82_1();
LABEL_55:
          if (!*(v71 + v72))
          {
            goto LABEL_57;
          }

          OUTLINED_FUNCTION_109_1(v73);
          break;
      }
    }

    goto LABEL_58;
  }

  *(v14 + 59728) = v52;
  OUTLINED_FUNCTION_126_1();
  v56 = *(MEMORY[0x277D651D8] + 4);
  v57 = swift_task_alloc();
  OUTLINED_FUNCTION_26_1(v57);
  OUTLINED_FUNCTION_55_1();
  *v50 = v58;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC518](v59, v60, v61, v62, v63, v64, v65, v66, a9, 0x80000002753B8130, 0x80000002753B8170, a12, a13, a14);
}

uint64_t sub_275322748()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = *(v2 + 60000);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 60008) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_275322850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = (v12 + 59656);
  v14 = (v12 + 20555);
  v15 = *(v12 + 20556);
  v16 = *(v12 + 59920);
  v18 = *(v12 + 59896);
  v17 = *(v12 + 59904);
  v19 = *(v12 + 59872);
  v20 = *(v12 + 59880);
  sub_2753B6A58();
  if ((*(v20 + 88))(v18, v19) == v15)
  {
    v21 = *(v12 + 59896);
    v23 = *(v12 + 59824);
    v22 = *(v12 + 59832);
    (*(*(v12 + 59880) + 96))(v21, *(v12 + 59872));
    v24 = *v21;
    memcpy(__dst, (v12 + 16), sizeof(__dst));
    OUTLINED_FUNCTION_71();
    MediaAPI.Resource.rawIdentifier(forPersonID:)(v25);
    v26 = *(v12 + 59688);
    if (v26 > 0xFB)
    {
LABEL_5:
      (*(*(v12 + 59912) + 8))(*(v12 + 59920), *(v12 + 59904));

      v35 = *(v12 + 59968);
      v34 = *(v12 + 59976);
      v37 = *(v12 + 32);
      v36 = *(v12 + 40);
      *(v12 + 60032) = v37;
      *(v12 + 60040) = v36;
      *(v12 + 59696) = 0;
      *(v12 + 59704) = 0xE000000000000000;
      sub_2753B7398();
      v38 = *(v12 + 59704);

      *(v12 + 59712) = v37;
      *(v12 + 59720) = v36;
      MEMORY[0x277C76100](0x203A6469203ALL, 0xE600000000000000);
      v39 = OUTLINED_FUNCTION_28_1();
      MEMORY[0x277C76100](v39);
      v40 = OUTLINED_FUNCTION_10_3();
      MEMORY[0x277C76100](v40, 0xE700000000000000);
      OUTLINED_FUNCTION_71_1((v12 + 39760));
      if (sub_275315FC8(v12 + 39760) == 1)
      {
LABEL_30:

        OUTLINED_FUNCTION_12_3();
      }

      else
      {
        memcpy((v12 + 38992), (v12 + 39760), 0x2F9uLL);
        v41 = sub_27531603C(v12 + 38992);
        sub_275316098(v12 + 38992);
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_121_1();
        v43 = 1;
        v44 = v42;
        switch(v41)
        {
          case 1:
            OUTLINED_FUNCTION_81_0();
            goto LABEL_28;
          case 2:
            OUTLINED_FUNCTION_78_0();
            goto LABEL_28;
          case 3:
            OUTLINED_FUNCTION_77_1();
            goto LABEL_28;
          case 4:
            OUTLINED_FUNCTION_79_1();
            goto LABEL_28;
          case 5:
            goto LABEL_28;
          case 7:
            OUTLINED_FUNCTION_74_1();
            goto LABEL_28;
          case 8:
            OUTLINED_FUNCTION_80_1();
            goto LABEL_28;
          case 9:
            OUTLINED_FUNCTION_75_1();
            goto LABEL_28;
          case 10:
            break;
          case 11:
            OUTLINED_FUNCTION_14_2();
            OUTLINED_FUNCTION_13_3();
            break;
          default:
            OUTLINED_FUNCTION_82_1();
LABEL_28:
            if (!v42[v43])
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_109_1(v44);
            break;
        }
      }

      v92 = OUTLINED_FUNCTION_28_1();
      MEMORY[0x277C76100](v92);

      v93 = *(v12 + 59712);
      *(v12 + 60048) = *(v12 + 59720);
      v94 = swift_task_alloc();
      *(v12 + 60056) = v94;
      *v94 = v12;
      OUTLINED_FUNCTION_0_4();
      v95 = *(v12 + 59984);
      v96 = *(v12 + 59992);
      v97 = *(v12 + 59776);
      OUTLINED_FUNCTION_28_1();
      OUTLINED_FUNCTION_100_0();

      return MusicContentStorage.Operations.updateDebugDescription(_:for:)();
    }

    else
    {
      v28 = *v13;
      v27 = *(v12 + 59664);
      v30 = *(v12 + 59672);
      v29 = *(v12 + 59680);
      switch(v26 >> 5)
      {
        case 1u:
        case 3u:
        case 4u:
        case 5u:
          v31 = OUTLINED_FUNCTION_71();
          sub_275329DC0(v31, v32, v30, v29, v33);
          goto LABEL_5;
        case 2u:
          v107 = v26 & 0x1F;
          v109 = 4196865;
          break;
        default:
          v107 = 0;
          v109 = 0;
          v30 = *(v12 + 59672);
          v29 = MEMORY[0x277D84F90];
          break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = *(v24 + 16);
        OUTLINED_FUNCTION_50_1();
        sub_275384F68();
        v24 = v100;
      }

      v80 = *(v24 + 16);
      v79 = *(v24 + 24);
      if (v80 >= v79 >> 1)
      {
        OUTLINED_FUNCTION_116_1(v79);
        sub_275384F68();
        v24 = v101;
      }

      v81 = *(v12 + 20556);
      v103 = *(v12 + 59904);
      v105 = *(v12 + 59920);
      v82 = *(v12 + 59880);
      v83 = *(v12 + 59888);
      v84 = *(v12 + 59872);
      *(v24 + 16) = v80 + 1;
      v85 = v24 + 56 * v80;
      *(v85 + 32) = v28;
      *(v85 + 40) = v27;
      *(v85 + 48) = v30;
      *(v85 + 56) = v29;
      *(v85 + 64) = v107;
      *(v85 + 72) = 0;
      *(v85 + 82) = BYTE2(v109);
      *(v85 + 80) = v109;
      *v83 = v24;
      (*(v82 + 104))(v83, v81, v84);
      sub_2753B6A68();
      v86 = swift_task_alloc();
      v87 = OUTLINED_FUNCTION_112_1(v86);
      *v87 = v88;
      v87[1] = sub_275322F20;
      v89 = *(v12 + 59920);
      v90 = *(v12 + 59776);
      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_100_0();

      return MusicContentStorage.Operations.registerContent(_:in:)();
    }
  }

  else
  {
    v45 = *(v12 + 59992);
    v46 = *(v12 + 59944);
    v106 = v12;
    v47 = *(v12 + 59912);
    v48 = *(v12 + 59920);
    v102 = v13[33];
    v104 = v47;
    v49 = v13[30];
    v108 = v13[31];
    v51 = v13[28];
    v50 = v13[29];
    v53 = v13[26];
    v52 = v13[27];
    v54 = v13[25];

    v55 = *(v51 + 8);
    v55(v49, v52);
    sub_275314678();
    sub_2753B62D8();
    OUTLINED_FUNCTION_56_1();
    sub_2753B62C8();
    *v14 = 1;
    sub_2753B6298();
    sub_2753B62C8();
    sub_2753B6A58();
    v56 = sub_2753B6A48();
    v58 = v57;
    v55(v50, v52);
    v13[11] = v56;
    v13[12] = v58;
    sub_2753B62B8();

    OUTLINED_FUNCTION_56_1();
    sub_2753B62C8();
    OUTLINED_FUNCTION_64_1();
    sub_27532A18C(v59, v60, v61, &type metadata for MusicContentError, v62);
    OUTLINED_FUNCTION_64_1();
    sub_2753276C4(v63, v64, v65, &type metadata for MusicContentError);
    OUTLINED_FUNCTION_67_1();
    swift_allocError();
    sub_2753B62E8();
    swift_willThrow();

    (*(v104 + 8))(v102, v108);
    sub_275315F74(v106 + 16);
    v66 = v13[33];
    v68 = v13[29];
    v67 = v13[30];
    v69 = v13[26];

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_100_0();

    return v71(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12);
  }
}

uint64_t sub_275322F20()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 60016);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 60024) = v0;

  if (v0)
  {
    v9 = *(v3 + 59992);
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_27532302C()
{
  (*(v0[7489] + 8))(v0[7490], v0[7488]);
  v1 = v0[7497];
  v2 = v0[7496];
  v4 = v0[4];
  v3 = v0[5];
  v0[7504] = v4;
  v0[7505] = v3;
  v0[7462] = 0;
  v0[7463] = 0xE000000000000000;
  sub_2753B7398();
  v5 = v0[7463];

  v0[7464] = v4;
  v0[7465] = v3;
  MEMORY[0x277C76100](0x203A6469203ALL, 0xE600000000000000);
  v6 = OUTLINED_FUNCTION_79_0();
  MEMORY[0x277C76100](v6);
  v7 = OUTLINED_FUNCTION_10_3();
  MEMORY[0x277C76100](v7, 0xE700000000000000);
  OUTLINED_FUNCTION_71_1(v0 + 4970);
  if (sub_275315FC8((v0 + 4970)) == 1)
  {
LABEL_13:
  }

  else
  {
    OUTLINED_FUNCTION_139_1(v0 + 4874);
    v8 = sub_27531603C((v0 + 4874));
    v9 = sub_275316098((v0 + 4874));
    v10 = 8;
    v11 = v9;
    switch(v8)
    {
      case 1:
        OUTLINED_FUNCTION_81_0();
        goto LABEL_11;
      case 2:
        OUTLINED_FUNCTION_78_0();
        goto LABEL_11;
      case 3:
        OUTLINED_FUNCTION_77_1();
        goto LABEL_11;
      case 4:
        OUTLINED_FUNCTION_79_1();
        goto LABEL_11;
      case 5:
        goto LABEL_11;
      case 7:
        OUTLINED_FUNCTION_74_1();
        goto LABEL_11;
      case 8:
        OUTLINED_FUNCTION_80_1();
        goto LABEL_11;
      case 9:
        OUTLINED_FUNCTION_75_1();
        goto LABEL_11;
      case 10:
      case 11:
        break;
      default:
        OUTLINED_FUNCTION_82_1();
LABEL_11:
        if (!*(v9 + v10))
        {
          goto LABEL_13;
        }

        v12 = *v11;
        v13 = *(v9 + v10);

        break;
    }
  }

  v14 = OUTLINED_FUNCTION_79_0();
  MEMORY[0x277C76100](v14);

  v15 = v0[7464];
  v0[7506] = v0[7465];
  v16 = swift_task_alloc();
  v0[7507] = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_0_4();
  v17 = v0[7499];
  v18 = v0[7498];
  v19 = v0[7472];
  OUTLINED_FUNCTION_79_0();

  return MusicContentStorage.Operations.updateDebugDescription(_:for:)();
}

uint64_t sub_2753232D0()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 60056);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[7508] = v0;

  v9 = v3[7506];
  if (v0)
  {
    v10 = v3[7499];
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_2753233F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = 54352;
  OUTLINED_FUNCTION_71_1((v14 + 54352));
  if (sub_275315FC8(v14 + 54352) == 1)
  {
    v16 = *(v14 + 59992);

    sub_275315F74(v14 + 16);
    while (1)
    {
      do
      {
        v17 = *(v14 + 59960);
        v18 = (*(v14 + 59952) - 1) & *(v14 + 59952);
        if (!v18)
        {
          while (!__OFADD__(v17, 1))
          {
            v19 = *(v14 + 21321);
            v20 = OUTLINED_FUNCTION_119_1();
            if (v21 != v22)
            {
              v23 = OUTLINED_FUNCTION_90_1(v20);
              if (v18)
              {
                v17 = v24;
                goto LABEL_32;
              }
            }

            else
            {
              v26 = *(v14 + 59928);
              v25 = *(v14 + 59936);

              if (v25 + 1 == v26)
              {
                OUTLINED_FUNCTION_106_1();

                OUTLINED_FUNCTION_35_0();
                goto LABEL_60;
              }

              OUTLINED_FUNCTION_84_0();
              v27 = 0xE500000000000000;
              v28 = 0x73676E6F73;
              switch(v29)
              {
                case 1:
                  OUTLINED_FUNCTION_3_3();
                  OUTLINED_FUNCTION_117_1();
                  break;
                case 2:
                  v28 = OUTLINED_FUNCTION_17_2();
                  v27 = 0xEC000000736F6564;
                  break;
                case 3:
                  v28 = OUTLINED_FUNCTION_31_1();
                  v27 = 0x80000002753B8130;
                  break;
                case 4:
                  v27 = 0xE600000000000000;
                  v28 = OUTLINED_FUNCTION_29_1();
                  break;
                case 5:
                  v28 = OUTLINED_FUNCTION_3_3();
                  v30 = 0x736D75626C61;
                  goto LABEL_19;
                case 6:
                  v27 = 0xE900000000000073;
                  v28 = OUTLINED_FUNCTION_64();
                  break;
                case 7:
                  v28 = OUTLINED_FUNCTION_85_1();
                  v27 = 0x80000002753B8170;
                  break;
                case 8:
                  v27 = 0xE800000000000000;
                  v28 = OUTLINED_FUNCTION_15_2();
                  break;
                case 9:
                  v27 = 0xE600000000000000;
                  v28 = OUTLINED_FUNCTION_32_0();
                  break;
                case 10:
                  OUTLINED_FUNCTION_6_1();
                  OUTLINED_FUNCTION_25_1();
                  break;
                case 11:
                  v28 = OUTLINED_FUNCTION_4_4();
                  v30 = 0x736973796C61;
LABEL_19:
                  v27 = v30 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                  break;
                default:
                  break;
              }

              v31 = *(v14 + 59792);
              if (*(v31 + 16) && (v32 = sub_2753842B8(v28, v27), (v33 & 1) != 0))
              {
                OUTLINED_FUNCTION_73_1(v32);
              }

              else
              {

                v31 = sub_2753B6C98();
              }

              v17 = 0;
              *(v14 + 59944) = v31;
              v34 = *(v31 + 32);
              *(v14 + 21321) = v34;
              v35 = 1 << v34;
              if (v35 < 64)
              {
                v36 = ~(-1 << v35);
              }

              else
              {
                v36 = -1;
              }

              v18 = v36 & *(v31 + 64);
              if (v18)
              {
                goto LABEL_31;
              }
            }
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_31:
        v23 = *(v14 + 59944);
LABEL_32:
        *(v14 + 59952) = v18;
        *(v14 + 59960) = v17;
        v37 = *(v14 + 59800);
        v38 = OUTLINED_FUNCTION_48_1(v23);
        OUTLINED_FUNCTION_111_1(v38, (v40 + 824 * v39));
        OUTLINED_FUNCTION_129_1();
      }

      while (!v41);
      v42 = *(v14 + 24);
      *(v14 + 59968) = *(v14 + 16);
      *(v14 + 59976) = v42;
      OUTLINED_FUNCTION_110_1();

      v43 = OUTLINED_FUNCTION_103_1();
      sub_2753842B8(v43, v44);
      v46 = v45;

      if (v46)
      {
        break;
      }

      sub_275315F74(v14 + 16);
    }

    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_64_1();
    if (sub_27531D740(v50, v51, v52))
    {
      *(v14 + 59728) = 21321;
      OUTLINED_FUNCTION_126_1();
      v53 = *(MEMORY[0x277D651D8] + 4);
      v54 = swift_task_alloc();
      OUTLINED_FUNCTION_26_1(v54);
      OUTLINED_FUNCTION_55_1();
      *v42 = v55;
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_131_0();

      MEMORY[0x2821CC518](v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
      return;
    }

LABEL_43:
    OUTLINED_FUNCTION_27_1();
    v64 = *(v14 + 59704);

    *(v14 + 59712) = 1;
    *(v14 + 59720) = 21321;
    OUTLINED_FUNCTION_20_1();
    v65 = OUTLINED_FUNCTION_28_1();
    MEMORY[0x277C76100](v65);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_137_1();
    if (v66)
    {
LABEL_82:

      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      OUTLINED_FUNCTION_72_1();
      v67 = OUTLINED_FUNCTION_47_1();
      v69 = v67;
      switch(v70)
      {
        case 1:
          OUTLINED_FUNCTION_81_0();
          goto LABEL_80;
        case 2:
          OUTLINED_FUNCTION_78_0();
          goto LABEL_80;
        case 3:
          OUTLINED_FUNCTION_77_1();
          goto LABEL_80;
        case 4:
          OUTLINED_FUNCTION_79_1();
          goto LABEL_80;
        case 5:
          goto LABEL_80;
        case 7:
          OUTLINED_FUNCTION_74_1();
          goto LABEL_80;
        case 8:
          OUTLINED_FUNCTION_80_1();
          goto LABEL_80;
        case 9:
          OUTLINED_FUNCTION_75_1();
          goto LABEL_80;
        case 10:
          break;
        case 11:
          OUTLINED_FUNCTION_13_3();
          OUTLINED_FUNCTION_14_2();
          break;
        default:
          OUTLINED_FUNCTION_82_1();
LABEL_80:
          if (!*(v67 + v68))
          {
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_109_1(v69);
          break;
      }
    }

    v134 = OUTLINED_FUNCTION_28_1();
    MEMORY[0x277C76100](v134);

    v135 = *(v14 + 59712);
    *(v14 + 60048) = *(v14 + 59720);
    v136 = swift_task_alloc();
    v137 = OUTLINED_FUNCTION_112_1(v136);
    *v137 = v138;
    OUTLINED_FUNCTION_0_4();
    v139 = *(v14 + 59984);
    v140 = *(v14 + 59992);
    v141 = *(v14 + 59776);
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_131_0();

    MusicContentStorage.Operations.updateDebugDescription(_:for:)();
  }

  else
  {
    memcpy((v14 + 21328), (v14 + 54352), 0x2F9uLL);
    switch(sub_27531603C(v14 + 21328))
    {
      case 1u:
        v92 = *(v14 + 60064);
        v93 = sub_275316098(v14 + 21328);
        v94 = sub_2753B6028();
        OUTLINED_FUNCTION_88_1(v94);
        OUTLINED_FUNCTION_71_1((v14 + 19792));
        sub_2753298F0(v14 + 64, v14 + 35152, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        sub_275315FE0(v14 + 19792, v14 + 44368);
        sub_2753B6018();
        memcpy((v14 + 55728), v93, 0x248uLL);
        sub_275329D6C();
        v75 = v92;
        goto LABEL_54;
      case 2u:
        v79 = *(v14 + 60064);
        v80 = sub_275316098(v14 + 21328);
        v81 = sub_2753B6028();
        OUTLINED_FUNCTION_88_1(v81);
        OUTLINED_FUNCTION_71_1((v14 + 37456));
        sub_2753298F0(v14 + 64, v14 + 36688, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        sub_275315FE0(v14 + 37456, v14 + 35920);
        sub_2753B6018();
        memcpy((v14 + 56800), v80, 0x1D0uLL);
        sub_275329D18();
        v15 = v79;
        goto LABEL_58;
      case 3u:
        v84 = OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_88_1(v84);
        OUTLINED_FUNCTION_37_1();
        sub_2753298F0(v14 + 64, v14 + 43600, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        sub_275315FE0(v14 + 47440, v14 + 38224);
        sub_2753B6018();
        v85 = OUTLINED_FUNCTION_122_1();
        memcpy(v85, v86, 0x1A8uLL);
        sub_275329CC4();
        goto LABEL_58;
      case 4u:
        v76 = OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_88_1(v76);
        OUTLINED_FUNCTION_71_1((v14 + 20560));
        sub_2753298F0(v14 + 64, v14 + 53584, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        sub_275315FE0(v14 + 20560, v14 + 50512);
        sub_2753B6018();
        v77 = OUTLINED_FUNCTION_122_1();
        memcpy(v77, v78, 0x1E8uLL);
        sub_275329C70();
        goto LABEL_58;
      case 5u:
      case 0xAu:
      case 0xBu:
        sub_275316098(v14 + 21328);
        v47 = *(v14 + 60032);
        v48 = *(v14 + 60040);
        sub_2753298F0(v14 + 64, v14 + 22096, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        v49 = OUTLINED_FUNCTION_129_0();
        MEMORY[0x277C76100](v49);
        OUTLINED_FUNCTION_135_1();
        OUTLINED_FUNCTION_131_0();
        return;
      case 6u:
        v98 = OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_88_1(v98);
        OUTLINED_FUNCTION_71_1((v14 + 51280));
        sub_2753298F0(v14 + 64, v14 + 52048, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        sub_275315FE0(v14 + 51280, v14 + 52816);
        sub_2753B6018();
        v99 = OUTLINED_FUNCTION_122_1();
        memcpy(v99, v100, 0x260uLL);
        sub_275329C1C();
        goto LABEL_58;
      case 7u:
        v15 = *(v14 + 60064);
        v82 = sub_275316098(v14 + 21328);
        v83 = sub_2753B6028();
        OUTLINED_FUNCTION_88_1(v83);
        OUTLINED_FUNCTION_37_1();
        sub_2753298F0(v14 + 64, v14 + 48976, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        sub_275315FE0(v14 + 48208, v14 + 49744);
        sub_2753B6018();
        memcpy((v14 + 58512), v82, 0x191uLL);
        sub_275329BC8();
        goto LABEL_58;
      case 8u:
        v97 = OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_88_1(v97);
        OUTLINED_FUNCTION_71_1((v14 + 45136));
        sub_2753298F0(v14 + 64, v14 + 45904, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        sub_275315FE0(v14 + 45136, v14 + 46672);
        sub_2753B6018();
        memcpy((v14 + 58104), 0xE490, 0x198uLL);
        sub_275329B74();
LABEL_58:
        v101 = sub_2753B6008();
        if (v15)
        {
          goto LABEL_59;
        }

        v117 = v101;
        v118 = v102;
        goto LABEL_65;
      case 9u:
        v71 = *(v14 + 60064);
        sub_275316098(v14 + 21328);
        v72 = sub_2753B6028();
        OUTLINED_FUNCTION_88_1(v72);
        OUTLINED_FUNCTION_71_1((v14 + 22864));
        sub_2753298F0(v14 + 64, v14 + 23632, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        sub_275315FE0(v14 + 22864, v14 + 24400);
        sub_2753B6018();
        v73 = OUTLINED_FUNCTION_122_1();
        memcpy(v73, v74, 0x1A0uLL);
        sub_27532982C();
        v75 = v71;
LABEL_54:
        v95 = sub_2753B6008();
        if (v75)
        {
          goto LABEL_59;
        }

        v117 = v95;
        v118 = v96;
LABEL_65:

        goto LABEL_66;
      default:
        v87 = *(v14 + 60064);
        v88 = sub_275316098(v14 + 21328);
        v89 = sub_2753B6028();
        OUTLINED_FUNCTION_88_1(v89);
        OUTLINED_FUNCTION_37_1();
        sub_2753298F0(v14 + 64, v14 + 42064, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        sub_275315FE0(v14 + 42832, v14 + 41296);
        sub_2753B6018();
        memcpy((v14 + 40528), v88, 0x2F9uLL);
        sub_2753299DC();
        v90 = sub_2753B6008();
        if (v87)
        {
LABEL_59:
          v103 = *(v14 + 59992);
          v104 = *(v14 + 59944);

          OUTLINED_FUNCTION_96_1();
          sub_275329880(v105, v106, v107);
          OUTLINED_FUNCTION_96_1();
          sub_275329880(v108, v109, v110);
          sub_275315F74(v14 + 16);
          v111 = *(v14 + 59920);
          v113 = *(v14 + 59888);
          v112 = *(v14 + 59896);
          v114 = *(v14 + 59864);

          OUTLINED_FUNCTION_19_0();
LABEL_60:
          OUTLINED_FUNCTION_131_0();

          __asm { BRAA            X1, X16 }
        }

        v117 = v90;
        v118 = v91;

        v125 = v88[37];
        if (v125)
        {
          v126 = v88[37];

          OUTLINED_FUNCTION_76_1();
          sub_275329880(v127, v128, v129);
          OUTLINED_FUNCTION_76_1();
          sub_275329880(v130, v131, v132);
          v133 = *(v125 + 16);

          v119 = v133 != 0;
        }

        else
        {
LABEL_66:
          sub_275329880(v14 + 64, qword_2809C1498, &type metadata for MediaAPI.Attributes);
          sub_275329880(v14 + 64, qword_2809C1498, &type metadata for MediaAPI.Attributes);
          v119 = 0;
        }

        *(v14 + 59768) = v119;
        *(v14 + 60072) = v118;
        *(v14 + 60080) = v117;
        v120 = swift_task_alloc();
        *(v14 + 60088) = v120;
        *v120 = v14;
        v120[1] = sub_2753240E4;
        v121 = *(v14 + 59984);
        v122 = *(v14 + 59992);
        v123 = *(v14 + 59776);
        OUTLINED_FUNCTION_131_0();

        MusicContentStorage.Operations.storeMediaAPIAttributes(_:attributesMask:for:)();
        break;
    }
  }
}

uint64_t sub_2753240E4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 60088);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 60096) = v0;

  if (v0)
  {
    v9 = *(v3 + 59992);
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2753241F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v14 + 7449;
  OUTLINED_FUNCTION_25_1();
  sub_2752F2350(v14[7510], v14[7509]);
  OUTLINED_FUNCTION_37_1();
  v17 = "library-playlists";
  if (sub_27531603C((v14 + 3146)))
  {
    v18 = v14[7499];
    goto LABEL_71;
  }

  v19 = sub_275316098((v14 + 3146));
  v20 = *(v19 + 272);
  v222 = *(v19 + 280);
  v21 = *(v19 + 760);
  sub_2753298E8(v14 + 208);
  v22 = v14[104];
  v225 = v19;
  v218 = v21;
  v217 = v20;
  if (!v22)
  {
    sub_2753298F0(v19 + 608, (v14 + 7422), &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    OUTLINED_FUNCTION_41_1();
    memcpy(v14 + 311, v14 + 208, 0x338uLL);
    v50 = MEMORY[0x277D84F90];
LABEL_65:
    v87 = v222;
    goto LABEL_66;
  }

  v221 = v14[104];
  if (!*(v22 + 16))
  {
    sub_2753298F0(v19 + 608, (v14 + 7365), &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);

LABEL_40:
    v50 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  sub_2753298F0(v19 + 608, (v14 + 7384), &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);

  sub_2753842B8(0x726E65672D776172, 0xEA00000000007365);
  if ((v23 & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_91_1();
  v26 = *(v24 + v25);
  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_125_1();

  v15 = v27 - 1;
  v219 = MEMORY[0x277D84F90];
  for (i = 32; ; i += 824)
  {
    v29 = v14[7474];
    memcpy(v14 + 2062, (v26 + i), 0x338uLL);
    if (!*(v29 + 16))
    {
      break;
    }

    sub_275329100((v14 + 2062), (v14 + 2165));
    v30 = OUTLINED_FUNCTION_32_0();
    v31 = sub_2753842B8(v30, 0xE600000000000000);
    if (v32)
    {
      OUTLINED_FUNCTION_52_1(v31);
      if (*(v29 + 16))
      {
        v33 = v17;
        v34 = v14[2062];
        v35 = v14[2063];

        v36 = OUTLINED_FUNCTION_90_0();
        v38 = sub_2753842B8(v36, v37);
        if (v39)
        {
          OUTLINED_FUNCTION_92_1(v38);
          memcpy(v14 + 2268, v40, 0x338uLL);
          sub_275329100((v14 + 2268), (v14 + 2371));
          sub_275315F74((v14 + 2062));

          v41 = v14[2270];
          v42 = v14[2271];

          OUTLINED_FUNCTION_96_1();
          v43 = sub_2753B74E8();

          v17 = v33;
          switch(v43)
          {
            case 0:
              goto LABEL_26;
            case 1:
            case 5:
              OUTLINED_FUNCTION_3_3();
              goto LABEL_26;
            case 2:
              OUTLINED_FUNCTION_17_2();
              goto LABEL_26;
            case 3:
              OUTLINED_FUNCTION_31_1();
              goto LABEL_26;
            case 4:
              OUTLINED_FUNCTION_29_1();
              goto LABEL_26;
            case 6:
              OUTLINED_FUNCTION_64();
              goto LABEL_26;
            case 7:
              OUTLINED_FUNCTION_85_1();
              goto LABEL_26;
            case 8:
              OUTLINED_FUNCTION_15_2();
              goto LABEL_26;
            case 9:
              swift_bridgeObjectRelease_n();
              goto LABEL_27;
            case 10:
              OUTLINED_FUNCTION_6_1();
              goto LABEL_26;
            case 11:
              OUTLINED_FUNCTION_4_4();
LABEL_26:
              v44 = sub_2753B7718();

              if (v44)
              {
LABEL_27:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v47 = *(v219 + 16);
                  OUTLINED_FUNCTION_50_1();
                  sub_275385338();
                  v219 = v48;
                }

                v46 = *(v219 + 16);
                v45 = *(v219 + 24);
                if (v46 >= v45 >> 1)
                {
                  OUTLINED_FUNCTION_116_1(v45);
                  sub_275385338();
                  v219 = v49;
                }

                *(v219 + 16) = v46 + 1;
                memcpy((v219 + 824 * v46 + 32), v14 + 2268, 0x338uLL);
              }

              else
              {
                sub_275315F74((v14 + 2268));
              }

              goto LABEL_33;
            default:
              sub_275315F74((v14 + 2268));
              v17 = v33;
              v22 = v221;
              if (v15)
              {
                goto LABEL_35;
              }

              goto LABEL_52;
          }
        }

        sub_275315F74((v14 + 2062));
        v17 = v33;
LABEL_33:
        v22 = v221;
        break;
      }
    }

    sub_275315F74((v14 + 2062));
    if (!v15)
    {
      goto LABEL_52;
    }

LABEL_35:
    --v15;
  }

  if (v15)
  {
    goto LABEL_35;
  }

LABEL_52:

  OUTLINED_FUNCTION_25_1();
  v50 = v219;
LABEL_41:
  if (!*(v22 + 16))
  {
    v73 = OUTLINED_FUNCTION_30_1();
    memcpy(v73, v74, 0x338uLL);
LABEL_64:

    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_21_1();
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_115_1();
  sub_2753842B8(v51, v52);
  if ((v53 & 1) == 0 || (OUTLINED_FUNCTION_91_1(), v56 = *(v54 + v55), !*(v56 + 16)) || (v57 = v14[7474], memcpy(v14 + 1547, (v56 + 32), 0x338uLL), !*(v57 + 16)))
  {
LABEL_54:
    v75 = OUTLINED_FUNCTION_30_1();
    memcpy(v75, v76, 0x338uLL);
    goto LABEL_55;
  }

  sub_275329100((v14 + 1547), (v14 + 1650));
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_115_1();
  v60 = sub_2753842B8(v58, v59);
  if ((v61 & 1) == 0 || (OUTLINED_FUNCTION_52_1(v60), !*(v57 + 16)))
  {
    sub_275315F74((v14 + 1547));
    goto LABEL_54;
  }

  v62 = v14[1547];
  v63 = v14[1548];

  v64 = OUTLINED_FUNCTION_90_0();
  v66 = sub_2753842B8(v64, v65);
  if (v67)
  {
    OUTLINED_FUNCTION_92_1(v66);
    memcpy(v14 + 1753, v68, 0x338uLL);
    sub_275329100((v14 + 1753), (v14 + 1856));
    sub_275315F74((v14 + 1547));

    v69 = v14[1755];
    v70 = v14[1756];

    v71._countAndFlagsBits = v69;
    v71._object = v70;
    MediaAPI.MediaAPIType.init(rawValue:)(v71);
    if (*(v14 + 20553) == 12)
    {
      v72 = (v14 + 1753);
      goto LABEL_139;
    }

    v22 = v221;
    if (sub_2752E8C74())
    {
      memcpy(v14 + 1959, v14 + 1753, 0x338uLL);
      nullsub_1(v14 + 1959);
      v199 = v14 + 929;
      v200 = v14 + 1959;
    }

    else
    {
      sub_275315F74((v14 + 1753));
      v199 = OUTLINED_FUNCTION_30_1();
    }

    memcpy(v199, v200, 0x338uLL);
  }

  else
  {

    v72 = (v14 + 1547);
LABEL_139:
    sub_275315F74(v72);
    v193 = OUTLINED_FUNCTION_30_1();
    memcpy(v193, v194, 0x338uLL);
    v22 = v221;
  }

LABEL_55:
  if (!*(v22 + 16))
  {
    goto LABEL_64;
  }

  v77 = OUTLINED_FUNCTION_6_1();
  sub_2753842B8(v77, v15);
  if ((v78 & 1) == 0)
  {
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_91_1();
  v81 = *(v79 + v80);

  if (!*(v81 + 16))
  {
    goto LABEL_64;
  }

  v82 = v14[7474];
  memcpy(v14 + 1032, (v81 + 32), 0x338uLL);
  sub_275329100((v14 + 1032), (v14 + 1135));

  if (!*(v82 + 16) || (v83 = v14[7474], v84 = OUTLINED_FUNCTION_6_1(), v85 = sub_2753842B8(v84, v15), (v86 & 1) == 0))
  {
    sub_275315F74((v14 + 1032));
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_21_1();
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_52_1(v85);
  v87 = v222;
  if (*(v83 + 16))
  {
    v88 = v14[1032];
    v89 = v14[1033];

    v90 = OUTLINED_FUNCTION_90_0();
    v92 = sub_2753842B8(v90, v91);
    if (v93)
    {
      OUTLINED_FUNCTION_92_1(v92);
      memcpy(v14 + 1238, v94, 0x338uLL);
      sub_275329100((v14 + 1238), (v14 + 1341));
      sub_275315F74((v14 + 1032));

      v95 = v14[1240];
      v96 = v14[1241];

      v97._countAndFlagsBits = v95;
      v97._object = v96;
      MediaAPI.MediaAPIType.init(rawValue:)(v97);
      if (*(v14 + 20554) == 12)
      {
        sub_275315F74((v14 + 1238));
        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_21_1();
      }

      else
      {
        if (sub_2752E8C74())
        {
          memcpy(v14 + 1444, v14 + 1238, 0x338uLL);
          nullsub_1(v14 + 1444);
          v201 = v14 + 414;
          v202 = v14 + 1444;
        }

        else
        {
          sub_275315F74((v14 + 1238));
          v201 = v14 + 414;
          v202 = v14 + 208;
        }

        memcpy(v201, v202, 0x338uLL);
        OUTLINED_FUNCTION_21_1();
      }
    }

    else
    {

      sub_275315F74((v14 + 1032));
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_21_1();
    }
  }

  else
  {
    sub_275315F74((v14 + 1032));
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_21_1();
  }

LABEL_66:
  if (v87)
  {
    v98 = v14[7499];

    sub_275329880(v225 + 608, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    OUTLINED_FUNCTION_64_1();
    sub_275329880(v99, v100, v101);
    OUTLINED_FUNCTION_64_1();
    goto LABEL_70;
  }

  memcpy(v14 + 517, v14 + 311, 0x338uLL);
  if (sub_275329968((v14 + 517)) == 1)
  {
    v105 = v14[7499];

    sub_275329880(v225 + 608, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    v103 = &qword_2809C1B38;
    v104 = &type metadata for MediaAPI.Resource;
    v102 = (v14 + 414);
LABEL_70:
    sub_275329880(v102, v103, v104);
LABEL_71:

LABEL_72:
    sub_275315F74((v14 + 2));
    OUTLINED_FUNCTION_125_1();
    v223 = v106;
    v226 = v107;
    while (1)
    {
      do
      {
        v108 = v14[7495];
        v109 = (v14[7494] - 1) & v14[7494];
        if (!v109)
        {
          while (!__OFADD__(v108, 1))
          {
            if (v108 + 1 >= (((1 << *(v14 + 21321)) + 63) >> 6))
            {
              v113 = v14[7491];
              v112 = v14[7492];

              if (v112 + 1 == v113)
              {
                v135 = v14[7490];
                v137 = v14[7486];
                v136 = v14[7487];
                v138 = v14[7483];

                OUTLINED_FUNCTION_35_0();
                goto LABEL_105;
              }

              v114 = v14[7492] + 1;
              v14[7492] = v114;
              v115 = 0xE500000000000000;
              v116 = 0x73676E6F73;
              switch(*(v14[7473] + v114 + 32))
              {
                case 1:
                  v116 = OUTLINED_FUNCTION_3_3();
                  v115 = 0xED000073676E6F73;
                  break;
                case 2:
                  v116 = OUTLINED_FUNCTION_17_2();
                  v115 = 0xEC000000736F6564;
                  break;
                case 3:
                  v116 = OUTLINED_FUNCTION_31_1();
                  v115 = v223;
                  break;
                case 4:
                  v115 = 0xE600000000000000;
                  v116 = OUTLINED_FUNCTION_29_1();
                  break;
                case 5:
                  v116 = OUTLINED_FUNCTION_3_3();
                  v117 = 0x736D75626C61;
                  goto LABEL_88;
                case 6:
                  v116 = OUTLINED_FUNCTION_64();
                  v115 = 0xE900000000000073;
                  break;
                case 7:
                  v116 = OUTLINED_FUNCTION_85_1();
                  v115 = v226;
                  break;
                case 8:
                  v115 = 0xE800000000000000;
                  v116 = OUTLINED_FUNCTION_15_2();
                  break;
                case 9:
                  v115 = 0xE600000000000000;
                  v116 = OUTLINED_FUNCTION_32_0();
                  break;
                case 0xA:
                  OUTLINED_FUNCTION_6_1();
                  OUTLINED_FUNCTION_51_0();
                  break;
                case 0xB:
                  v116 = OUTLINED_FUNCTION_4_4();
                  v117 = 0x736973796C61;
LABEL_88:
                  v115 = v117 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                  break;
                default:
                  break;
              }

              v118 = v14[7474];
              if (*(v118 + 16) && (v119 = sub_2753842B8(v116, v115), (v120 & 1) != 0))
              {
                OUTLINED_FUNCTION_52_1(v119);
              }

              else
              {

                v118 = sub_2753B6C98();
              }

              v108 = 0;
              v14[7493] = v118;
              v121 = *(v118 + 32);
              *(v14 + 21321) = v121;
              v122 = 1 << v121;
              if (v122 < 64)
              {
                v123 = ~(-1 << v122);
              }

              else
              {
                v123 = -1;
              }

              v109 = v123 & *(v118 + 64);
              if (v109)
              {
                goto LABEL_100;
              }
            }

            else
            {
              v110 = OUTLINED_FUNCTION_90_1(v14[7493]);
              if (v109)
              {
                v108 = v111;
                goto LABEL_101;
              }
            }
          }

          __break(1u);
          goto LABEL_113;
        }

LABEL_100:
        v110 = v14[7493];
LABEL_101:
        v14[7494] = v109;
        v14[7495] = v108;
        v124 = v14[7475];
        v125 = OUTLINED_FUNCTION_48_1(v110);
        OUTLINED_FUNCTION_111_1(v125, (v127 + 824 * v126));
        OUTLINED_FUNCTION_129_1();
      }

      while (!v128);
      v129 = v14[3];
      v14[7496] = v14[2];
      v14[7497] = v129;
      OUTLINED_FUNCTION_110_1();

      v130 = OUTLINED_FUNCTION_90_0();
      v132 = sub_2753842B8(v130, v131);
      v134 = v133;

      if (v134)
      {
        break;
      }

      sub_275315F74((v14 + 2));
    }

    v141 = v14[7476];
    v142 = (*(v124 + 56) + 16 * v132);
    v143 = *v142;
    v14[7498] = *v142;
    v14[7499] = v142[1];

    OUTLINED_FUNCTION_96_1();
    if (sub_27531D740(v144, v145, v146))
    {
      v14[7466] = v143;
      OUTLINED_FUNCTION_126_1();
      v147 = *(MEMORY[0x277D651D8] + 4);
      v148 = swift_task_alloc();
      OUTLINED_FUNCTION_26_1(v148);
      OUTLINED_FUNCTION_55_1();
      *v141 = v149;
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_148_0();

      return MEMORY[0x2821CC518](v150, v151, v152, v153, v154, v155, v156, v157, a9, a10, a11, a12, a13, a14);
    }

LABEL_113:
    v159 = v14[7496];
    v158 = v14[7497];
    v161 = v14[4];
    v160 = v14[5];
    v14[7504] = v161;
    v14[7505] = v160;
    v14[7462] = 0;
    v14[7463] = 0xE000000000000000;
    sub_2753B7398();
    v162 = v14[7463];

    v14[7464] = v161;
    v14[7465] = v160;
    OUTLINED_FUNCTION_20_1();
    v163 = OUTLINED_FUNCTION_28_1();
    MEMORY[0x277C76100](v163);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_137_1();
    if (v164)
    {
LABEL_134:

      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      OUTLINED_FUNCTION_72_1();
      v165 = OUTLINED_FUNCTION_47_1();
      v167 = v165;
      switch(v168)
      {
        case 1:
          OUTLINED_FUNCTION_81_0();
          goto LABEL_132;
        case 2:
          OUTLINED_FUNCTION_78_0();
          goto LABEL_132;
        case 3:
          OUTLINED_FUNCTION_77_1();
          goto LABEL_132;
        case 4:
          OUTLINED_FUNCTION_79_1();
          goto LABEL_132;
        case 5:
          goto LABEL_132;
        case 7:
          OUTLINED_FUNCTION_74_1();
          goto LABEL_132;
        case 8:
          OUTLINED_FUNCTION_80_1();
          goto LABEL_132;
        case 9:
          OUTLINED_FUNCTION_75_1();
          goto LABEL_132;
        case 10:
          break;
        case 11:
          OUTLINED_FUNCTION_13_3();
          OUTLINED_FUNCTION_14_2();
          break;
        default:
          OUTLINED_FUNCTION_82_1();
LABEL_132:
          if (!*(v165 + v166))
          {
            goto LABEL_134;
          }

          OUTLINED_FUNCTION_109_1(v167);
          break;
      }
    }

    v186 = OUTLINED_FUNCTION_28_1();
    MEMORY[0x277C76100](v186);

    v187 = v14[7464];
    v14[7506] = v14[7465];
    v188 = swift_task_alloc();
    v14[7507] = v188;
    *v188 = v14;
    OUTLINED_FUNCTION_0_4();
    v189 = v14[7498];
    v190 = v14[7499];
    v191 = v14[7472];
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_148_0();

    return MusicContentStorage.Operations.updateDebugDescription(_:for:)();
  }

  else
  {
    v220 = v50;
    memcpy(v14 + 620, v14 + 414, 0x338uLL);
    if (sub_275329968((v14 + 620)) == 1)
    {
      v169 = v14[7499];

      sub_275329880(v225 + 608, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);

      sub_275329880((v14 + 311), &qword_2809C1B38, &type metadata for MediaAPI.Resource);
      goto LABEL_72;
    }

    v170 = v14[7512];
    sub_27532B624((v14 + 3338));
    v14[3372] = v217;
    *(v14 + 26984) = 0;
    *(v14 + 27464) = v218;
    memcpy(v14 + 7403, v14 + 3414, 0x98uLL);
    sub_275329880((v14 + 7403), &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    memcpy(v14 + 3414, (v225 + 608), 0x98uLL);
    v171 = sub_2753B6028();
    OUTLINED_FUNCTION_88_1(v171);
    sub_2753B6018();
    OUTLINED_FUNCTION_139_1(v14 + 3242);
    OUTLINED_FUNCTION_139_1(v14 + 3434);
    sub_275329980((v14 + 3242), (v14 + 3530));
    sub_2753299DC();
    v172 = sub_2753B6008();
    v14[7513] = v172;
    v14[7514] = v173;
    if (v170)
    {
      v174 = v14[7499];
      v175 = v14[7493];
      memcpy(v14 + 3722, v14 + 3434, 0x2F9uLL);
      sub_275316EA4((v14 + 3722));

      sub_275329880((v14 + 311), &qword_2809C1B38, &type metadata for MediaAPI.Resource);

      sub_275329880((v14 + 414), &qword_2809C1B38, &type metadata for MediaAPI.Resource);

      OUTLINED_FUNCTION_139_1(v14 + 3626);
      sub_275316EA4((v14 + 3626));
      sub_275315F74((v14 + 2));
      v182 = v14[7490];
      v184 = v14[7486];
      v183 = v14[7487];
      v185 = v14[7483];

      OUTLINED_FUNCTION_19_0();
LABEL_105:
      OUTLINED_FUNCTION_148_0();

      __asm { BRAA            X1, X16 }
    }

    v224 = v172;
    v227 = v173;
    memcpy(v14 + 3818, v14 + 3434, 0x2F9uLL);
    sub_275316EA4((v14 + 3818));

    OUTLINED_FUNCTION_108_1();
    sub_2753B6018();
    memcpy(v14 + 723, v14 + 517, 0x338uLL);
    sub_275329A30();
    v176 = sub_2753B6008();
    v14[7515] = v176;
    v14[7516] = v177;
    v178 = v176;
    v179 = v177;

    sub_275329880((v14 + 311), &qword_2809C1B38, &type metadata for MediaAPI.Resource);
    OUTLINED_FUNCTION_108_1();
    sub_2753B6018();
    memcpy(v14 + 826, v14 + 620, 0x338uLL);
    v180 = sub_2753B6008();
    v14[7517] = v180;
    v14[7518] = v181;
    v195 = v180;
    v196 = v181;

    sub_275329880((v14 + 414), &qword_2809C1B38, &type metadata for MediaAPI.Resource);
    OUTLINED_FUNCTION_108_1();
    sub_2753B6018();
    v14[7470] = v220;
    sub_27532A1F4(0, &qword_2809C1B50, &type metadata for MediaAPI.Resource, MEMORY[0x277D83940]);
    sub_275329A84();
    v197 = sub_2753B6008();
    v14[7519] = v197;
    v14[7520] = v198;
    v203 = v197;
    v204 = v198;

    *v16 = v224;
    v14[7450] = v227;
    v14[7451] = v178;
    v14[7452] = v179;
    v14[7453] = v195;
    v14[7454] = v196;
    v14[7455] = v203;
    v14[7456] = v204;
    v205 = *(v14 + 7451);
    *(v14 + 7441) = *v16;
    *(v14 + 7443) = v205;
    v206 = *(v14 + 7455);
    *(v14 + 7445) = *(v14 + 7453);
    *(v14 + 7447) = v206;
    sub_2752F22F8(v224, v227);
    v207 = OUTLINED_FUNCTION_113_1();
    sub_2752F22F8(v207, v208);
    v209 = OUTLINED_FUNCTION_103_1();
    sub_2752F22F8(v209, v210);
    sub_2752F22F8(v203, v204);
    v211 = swift_task_alloc();
    v14[7521] = v211;
    *v211 = v14;
    v211[1] = sub_275325668;
    v212 = v14[7498];
    v213 = v14[7499];
    v214 = v14[7472];
    OUTLINED_FUNCTION_148_0();

    return MusicContentStorage.Operations.storeMediaAPITransitionInfo(_:for:)();
  }
}

uint64_t sub_275325668()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *(v2 + 60168);
  *v4 = *v1;
  *(v3 + 60176) = v0;

  v6 = *(v2 + 59992);

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_27532579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_218();
  v16 = *(v14 + 60152);
  v15 = *(v14 + 60160);
  v18 = *(v14 + 60136);
  v17 = *(v14 + 60144);
  v19 = *(v14 + 60120);
  v93 = *(v14 + 60128);
  v20 = *(v14 + 60104);
  v21 = *(v14 + 60112);
  sub_275329B20(v14 + 59592);
  sub_2752F2350(v16, v15);
  sub_2752F2350(v18, v17);
  sub_2752F2350(v19, v93);
  v22 = OUTLINED_FUNCTION_90_0();
  sub_2752F2350(v22, v23);
  OUTLINED_FUNCTION_107_1((v14 + 34384));
  sub_275316EA4(v14 + 34384);
  sub_275315F74(v14 + 16);
  while (1)
  {
    v24 = *(v14 + 59960);
    v25 = (*(v14 + 59952) - 1) & *(v14 + 59952);
    if (!v25)
    {
      break;
    }

LABEL_30:
    v30 = *(v14 + 59944);
LABEL_31:
    *(v14 + 59952) = v25;
    *(v14 + 59960) = v24;
    v44 = *(v14 + 59800);
    v45 = OUTLINED_FUNCTION_48_1(v30);
    OUTLINED_FUNCTION_111_1(v45, (v47 + 824 * v46));
    OUTLINED_FUNCTION_129_1();
    if (v48)
    {
      v49 = *(v14 + 24);
      *(v14 + 59968) = *(v14 + 16);
      *(v14 + 59976) = v49;
      OUTLINED_FUNCTION_110_1();

      v50 = OUTLINED_FUNCTION_90_0();
      sub_2753842B8(v50, v51);
      v53 = v52;

      if (v53)
      {
        OUTLINED_FUNCTION_69_1();
        OUTLINED_FUNCTION_64_1();
        if (sub_27531D740(v63, v64, v65))
        {
          *(v14 + 59728) = -1;
          OUTLINED_FUNCTION_126_1();
          v66 = *(MEMORY[0x277D651D8] + 4);
          v67 = swift_task_alloc();
          OUTLINED_FUNCTION_26_1(v67);
          OUTLINED_FUNCTION_55_1();
          *v49 = v68;
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_173();

          return MEMORY[0x2821CC518](v69, v70, v71, v72, v73, v74, v75, v76, a9, 0x80000002753B8130, 0x80000002753B8170, a12, a13, a14);
        }

        else
        {
LABEL_42:
          OUTLINED_FUNCTION_27_1();
          v77 = *(v14 + 59704);

          *(v14 + 59712) = 1;
          *(v14 + 59720) = -1;
          OUTLINED_FUNCTION_20_1();
          v78 = OUTLINED_FUNCTION_28_1();
          MEMORY[0x277C76100](v78);
          OUTLINED_FUNCTION_10_3();
          OUTLINED_FUNCTION_138_1();
          OUTLINED_FUNCTION_37_1();
          OUTLINED_FUNCTION_137_1();
          if (v79)
          {
LABEL_55:

            OUTLINED_FUNCTION_12_3();
          }

          else
          {
            OUTLINED_FUNCTION_72_1();
            v80 = OUTLINED_FUNCTION_47_1();
            v82 = v80;
            switch(v83)
            {
              case 1:
                OUTLINED_FUNCTION_81_0();
                goto LABEL_53;
              case 2:
                OUTLINED_FUNCTION_78_0();
                goto LABEL_53;
              case 3:
                OUTLINED_FUNCTION_77_1();
                goto LABEL_53;
              case 4:
                OUTLINED_FUNCTION_79_1();
                goto LABEL_53;
              case 5:
                goto LABEL_53;
              case 7:
                OUTLINED_FUNCTION_74_1();
                goto LABEL_53;
              case 8:
                OUTLINED_FUNCTION_80_1();
                goto LABEL_53;
              case 9:
                OUTLINED_FUNCTION_75_1();
                goto LABEL_53;
              case 10:
                break;
              case 11:
                OUTLINED_FUNCTION_13_3();
                OUTLINED_FUNCTION_14_2();
                break;
              default:
                OUTLINED_FUNCTION_82_1();
LABEL_53:
                if (!*(v80 + v81))
                {
                  goto LABEL_55;
                }

                OUTLINED_FUNCTION_109_1(v82);
                break;
            }
          }

          v84 = OUTLINED_FUNCTION_28_1();
          MEMORY[0x277C76100](v84);

          v85 = *(v14 + 59712);
          *(v14 + 60048) = *(v14 + 59720);
          v86 = swift_task_alloc();
          v87 = OUTLINED_FUNCTION_112_1(v86);
          *v87 = v88;
          OUTLINED_FUNCTION_0_4();
          v89 = *(v14 + 59984);
          v90 = *(v14 + 59992);
          v91 = *(v14 + 59776);
          OUTLINED_FUNCTION_28_1();
          OUTLINED_FUNCTION_173();

          return MusicContentStorage.Operations.updateDebugDescription(_:for:)();
        }
      }

      sub_275315F74(v14 + 16);
    }
  }

  while (1)
  {
    while (1)
    {
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      v26 = *(v14 + 21321);
      v27 = OUTLINED_FUNCTION_119_1();
      if (v28 == v29)
      {
        break;
      }

      v30 = OUTLINED_FUNCTION_90_1(v27);
      if (v25)
      {
        v24 = v31;
        goto LABEL_31;
      }
    }

    v33 = *(v14 + 59928);
    v32 = *(v14 + 59936);

    if (v32 + 1 == v33)
    {
      break;
    }

    OUTLINED_FUNCTION_84_0();
    v34 = 0xE500000000000000;
    v35 = 0x73676E6F73;
    switch(v36)
    {
      case 1:
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_117_1();
        break;
      case 2:
        v35 = OUTLINED_FUNCTION_17_2();
        v34 = 0xEC000000736F6564;
        break;
      case 3:
        v35 = OUTLINED_FUNCTION_31_1();
        v34 = 0x80000002753B8130;
        break;
      case 4:
        v34 = 0xE600000000000000;
        v35 = OUTLINED_FUNCTION_29_1();
        break;
      case 5:
        v35 = OUTLINED_FUNCTION_3_3();
        v37 = 0x736D75626C61;
        goto LABEL_18;
      case 6:
        v34 = 0xE900000000000073;
        v35 = OUTLINED_FUNCTION_64();
        break;
      case 7:
        v35 = OUTLINED_FUNCTION_85_1();
        v34 = 0x80000002753B8170;
        break;
      case 8:
        v34 = 0xE800000000000000;
        v35 = OUTLINED_FUNCTION_15_2();
        break;
      case 9:
        v34 = 0xE600000000000000;
        v35 = OUTLINED_FUNCTION_32_0();
        break;
      case 10:
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_25_1();
        break;
      case 11:
        v35 = OUTLINED_FUNCTION_4_4();
        v37 = 0x736973796C61;
LABEL_18:
        v34 = v37 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        break;
      default:
        break;
    }

    v38 = *(v14 + 59792);
    if (*(v38 + 16) && (v39 = sub_2753842B8(v35, v34), (v40 & 1) != 0))
    {
      OUTLINED_FUNCTION_73_1(v39);
    }

    else
    {

      v38 = sub_2753B6C98();
    }

    v24 = 0;
    *(v14 + 59944) = v38;
    v41 = *(v38 + 32);
    *(v14 + 21321) = v41;
    v42 = 1 << v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v25 = v43 & *(v38 + 64);
    if (v25)
    {
      goto LABEL_30;
    }
  }

  OUTLINED_FUNCTION_106_1();

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_173();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, 0x80000002753B8130, 0x80000002753B8170, a12, a13, a14);
}

uint64_t sub_275325CEC()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[7499];
  v2 = v0[7493];

  sub_275315F74((v0 + 2));
  v3 = v0[7501];
  OUTLINED_FUNCTION_43_1();

  OUTLINED_FUNCTION_19_0();

  return v4();
}

uint64_t sub_275325D84()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[7493];
  v2 = v0[7490];
  v3 = v0[7489];
  v4 = v0[7488];

  (*(v3 + 8))(v2, v4);
  sub_275315F74((v0 + 2));
  v5 = v0[7503];
  OUTLINED_FUNCTION_43_1();

  OUTLINED_FUNCTION_19_0();

  return v6();
}

uint64_t sub_275325E34()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 59944);

  sub_275315F74(v0 + 16);
  v2 = *(v0 + 60064);
  OUTLINED_FUNCTION_43_1();

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_275325EC0()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[7510];
  v2 = v0[7509];
  v3 = v0[7493];

  sub_2752F2350(v1, v2);
  sub_275315F74((v0 + 2));
  v4 = v0[7512];
  OUTLINED_FUNCTION_43_1();

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t sub_275325F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = v12[7520];
  v14 = v12[7519];
  v15 = v12[7518];
  v16 = v12[7517];
  v17 = v12[7516];
  v18 = v12[7515];
  v19 = v12[7514];
  v20 = v12[7513];
  v21 = v12[7493];

  sub_2752F2350(v14, v13);
  v22 = OUTLINED_FUNCTION_28_1();
  sub_2752F2350(v22, v23);
  v24 = OUTLINED_FUNCTION_71();
  sub_2752F2350(v24, v25);
  v26 = OUTLINED_FUNCTION_111();
  sub_2752F2350(v26, v27);
  sub_275329B20((v12 + 7449));
  OUTLINED_FUNCTION_107_1(v12 + 4202);
  sub_275316EA4((v12 + 4202));
  sub_275315F74((v12 + 2));
  v28 = v12[7522];
  v29 = v12[7490];
  v30 = v12[7487];
  v31 = v12[7486];
  v32 = v12[7483];

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_275326060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2753149C4(0, &qword_2809C1AA8);
  v6 = swift_dynamicCast();
  if (v6)
  {
    sub_275315C8C(v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_275326290(v8);
  }

  return v6;
}

uint64_t sub_275326180()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FD514;

  return sub_27531D83C();
}

uint64_t sub_275326290(uint64_t a1)
{
  sub_2753262EC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2753262EC()
{
  if (!qword_2809C1AB0)
  {
    sub_2753149C4(255, &qword_2809C1AA8);
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1AB0);
    }
  }
}

void sub_275326354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2753263B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_2753B6288();
  v6[8] = sub_2753B6278();
  sub_275327824(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v8 = sub_2753B70C8();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_275326488, v8, v7);
}

uint64_t sub_275326488()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = v6;
  *(v5 + 48) = v2;
  v7 = *(MEMORY[0x277D64F18] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 96) = v8;
  *v8 = v9;
  v8[1] = sub_275326578;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821CC178](v10, &unk_2753C2C08, v5, v11);
}

uint64_t sub_275326578()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_27532A6FC;
  }

  else
  {
    v12 = v3[11];

    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_27532A704;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_27532667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_2753B6288();
  v6[8] = sub_2753B6278();
  sub_275327824(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v8 = sub_2753B70C8();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_27532674C, v8, v7);
}

uint64_t sub_27532674C()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  v4 = *(MEMORY[0x277D64F48] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 96) = v5;
  *v5 = v6;
  v5[1] = sub_275326830;
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821CC1B8](v9, v7, v8, &unk_2753C2C18, v3, v10);
}

uint64_t sub_275326830()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_27532698C;
  }

  else
  {
    v12 = v3[11];

    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_275326934;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_275326934()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_27532698C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[11];
  v2 = v0[8];

  OUTLINED_FUNCTION_19_0();
  v4 = v0[13];

  return v3();
}

uint64_t sub_2753269F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = sub_2753B6288();
  v5[9] = sub_2753B6278();
  v5[10] = sub_275327824(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v7 = sub_2753B70C8();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_275326ACC, v7, v6);
}

uint64_t sub_275326ACC()
{
  if (qword_2809C06E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  *(v0 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *(v5 + 16) = *(v0 + 40);
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  v6 = sub_2753B6278();
  *(v0 + 112) = v6;
  v7 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 120) = v8;
  *v8 = v9;
  v8[1] = sub_275326C4C;
  v10 = *(v0 + 24);

  return MEMORY[0x282200908](v10, v0 + 16, &unk_2753C2C28, v5, v6, v1, 0xD00000000000002DLL, 0x80000002753B91D0);
}

uint64_t sub_275326C4C()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = v5[15];
  v7 = v5[14];
  v8 = v5[13];
  v9 = v5[4];
  v10 = *v1;
  OUTLINED_FUNCTION_2();
  *v11 = v10;
  v3[16] = v0;

  v12 = v3[11];
  v13 = v3[12];
  if (v0)
  {
    v14 = sub_275326E08;
  }

  else
  {
    v14 = sub_275326DB0;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_275326DB0()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_275326E08()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_275326E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_2753B6288();
  v5[13] = sub_2753B6278();
  sub_275327824(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v7 = sub_2753B70C8();
  v5[14] = v7;
  v5[15] = v6;

  return MEMORY[0x2822009F8](sub_275326F34, v7, v6);
}

uint64_t sub_275326F34()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = sub_2753B6398();
  v5 = MEMORY[0x277D64F38];
  v0[5] = v4;
  v0[6] = v5;
  v0[2] = v1;
  v0[7] = *(v2 + 32);

  v12 = (v3 + *v3);
  v6 = v3[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[16] = v7;
  *v7 = v8;
  v7[1] = sub_275327068;
  v9 = v0[10];
  v10 = v0[8];

  return (v12)(v10, v0 + 2);
}

uint64_t sub_275327068()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[17] = v0;

  sub_275317184((v3 + 2));
  v9 = v3[14];
  v10 = v3[15];
  if (v0)
  {
    v11 = sub_2753271C4;
  }

  else
  {
    v11 = sub_27532716C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_27532716C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_35_0();

  return v2();
}

uint64_t sub_2753271C4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 136);

  return v2();
}

id sub_275327220(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2753B6198();
  v7 = [v3 initWithURL:v6 requestContext:a2];

  v8 = sub_2753B61F8();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_2753272B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if (((a7 >> 22) & 3) != 3)
  {
  }

  return result;
}

uint64_t sub_275327318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if (((a7 >> 22) & 3) != 3)
  {
  }

  return result;
}

BOOL sub_275327390(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2753B7798();
  sub_2753B6688();
  v9 = sub_2753B77D8();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2753B7718() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_275327DCC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_2753274DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_2753B7798();
  sub_2753B6688();
  v8 = sub_2753B77D8();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      v15 = *v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v20;

      sub_275327F34(a2, a3, v10, isUniquelyReferenced_nonNull_native);
      *v20 = v22;
      *a1 = a2;
      a1[1] = a3;
      return v11 == 0;
    }

    v12 = (*(v6 + 48) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];

    LOBYTE(v13) = sub_2753B6678();

    if (v13)
    {
      break;
    }

    v8 = v10 + 1;
  }

  v17 = (*(v6 + 48) + 16 * v10);
  v18 = v17[1];
  *a1 = *v17;
  a1[1] = v18;

  return v11 == 0;
}

uint64_t sub_275327638(uint64_t a1)
{
  sub_275326354(0, &qword_2809C08E8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2753276C4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_27532A18C(255, a2, a3, a4, MEMORY[0x277D64F08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_275327728()
{
  if (!qword_2809C1AD8)
  {
    sub_2753277B8(255, &qword_2809C1AE0, 0x277D7FC78);
    sub_2753149C4(255, &qword_2809C1468);
    v0 = sub_2753B7188();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1AD8);
    }
  }
}

uint64_t sub_2753277B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_275327824(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27532786C()
{
  result = qword_2809C1AF0;
  if (!qword_2809C1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1AF0);
  }

  return result;
}

uint64_t sub_2753278D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2753290A0(0, &qword_2809C1B10, MEMORY[0x277D84098]);
  result = sub_2753B7358();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2753280B0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2753B7798();
    sub_2753B6688();
    result = sub_2753B77D8();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_275327B44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_27532A18C(0, &qword_2809C1BC0, sub_275314624, MEMORY[0x277D64FD0], MEMORY[0x277D84098]);
  result = sub_2753B7358();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2753280B0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2753B7798();
    sub_2753B6688();
    result = sub_2753B77D8();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_275327DCC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2753278D8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_275328400(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2753B7798();
      sub_2753B6688();
      result = sub_2753B77D8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2753B7718() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_275328114();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2753B7758();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_275327F34(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_275327B44(v9 + 1);
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      sub_275328644(v9 + 1);
LABEL_10:
      v16 = *v4;
      v17 = *(*v4 + 40);
      sub_2753B7798();
      sub_2753B6688();
      result = sub_2753B77D8();
      v18 = ~(-1 << *(v16 + 32));
      while (1)
      {
        a3 = result & v18;
        if (((*(v16 + 56 + (((result & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v16 + 48) + 16 * a3);
        v20 = *v19;
        v21 = v19[1];

        LOBYTE(v20) = sub_2753B6678();

        if (v20)
        {
          goto LABEL_15;
        }

        result = a3 + 1;
      }
    }

    result = sub_27532827C();
  }

LABEL_7:
  v11 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v12 = (*(v11 + 48) + 16 * a3);
  *v12 = v8;
  v12[1] = a2;
  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_2753B7758();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v15;
  }

  return result;
}

uint64_t sub_2753280B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2753C28C0;
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

void *sub_275328114()
{
  v1 = v0;
  sub_2753290A0(0, &qword_2809C1B10, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2753B7348();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_27532827C()
{
  v1 = v0;
  sub_27532A18C(0, &qword_2809C1BC0, sub_275314624, MEMORY[0x277D64FD0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2753B7348();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_275328400(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2753290A0(0, &qword_2809C1B10, MEMORY[0x277D84098]);
  result = sub_2753B7358();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2753B7798();

        sub_2753B6688();
        result = sub_2753B77D8();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_275328644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_27532A18C(0, &qword_2809C1BC0, sub_275314624, MEMORY[0x277D64FD0], MEMORY[0x277D84098]);
  result = sub_2753B7358();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2753B7798();

        sub_2753B6688();
        result = sub_2753B77D8();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2753288A4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_275384328(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  sub_275329018();
  if ((sub_2753B7478() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_275384328(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_2753B7768();
    __break(1u);
    return result;
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

    return sub_275328AF0(v9, a2, a1, v14);
  }
}

uint64_t sub_2753289BC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2753842E4(a2 & 1);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  sub_275329F4C();
  if ((sub_2753B7478() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_2753842E4(a2 & 1);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_2753B7768();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = v15 + *(*(type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo() - 8) + 72) * v9;

    return sub_27532A00C(a1, v16);
  }

  else
  {

    return sub_275328B34(v9, a2 & 1, a1, v14);
  }
}

unint64_t sub_275328AF0(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

uint64_t sub_275328B34(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo();
  result = sub_27532A070(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_275328BCC(unint64_t result, int a2, void *a3, float a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 4 * result) = a2;
  *(a3[7] + 4 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_275328C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  if (sub_2753B7078())
  {
    sub_2753B7378();
    v14 = sub_2753B7368();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v38 = sub_2753B7078();
  if (v38)
  {
    v35 = v7;
    v36 = v5;
    v15 = 0;
    v43 = (v6 + 16);
    v44 = v14 + 56;
    v40 = (v6 + 32);
    v42 = v6 + 8;
    v37 = v13;
    while (1)
    {
      v16 = sub_2753B7058();
      sub_2753B7008();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = v17(v13, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15), a2);
      }

      else
      {
        v41 = v15;
        result = sub_2753B73A8();
        if (v35 != 8)
        {
          goto LABEL_23;
        }

        v46 = result;
        v17 = *v43;
        (*v43)(v13, &v46, a2);
        result = swift_unknownObjectRelease();
        v15 = v41;
      }

      v41 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = *v40;
      v39(v45, v13, a2);
      v19 = *(v14 + 40);
      v20 = sub_2753B6D28();
      v21 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = *(v44 + 8 * v23);
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v14;
        v17(v9, (*(v14 + 48) + *(v6 + 72) * v22), a2);
        v27 = a3;
        v28 = *(a3 + 8);
        v29 = sub_2753B6D68();
        v30 = *(v6 + 8);
        v30(v9, a2);
        if (v29)
        {
          v30(v45, a2);
          a3 = v27;
          v13 = v37;
          v14 = v26;
          v15 = v41;
          goto LABEL_16;
        }

        v20 = v22 + 1;
        a3 = v27;
        v14 = v26;
      }

      v31 = v45;
      *(v44 + 8 * v23) = v25 | v24;
      result = (v39)(*(v14 + 48) + *(v6 + 72) * v22, v31, a2);
      v32 = *(v14 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      v13 = v37;
      v15 = v41;
      if (v33)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v34;
LABEL_16:
      v5 = v36;
      if (v15 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

unint64_t sub_275328FC4()
{
  result = qword_2809C1AF8;
  if (!qword_2809C1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1AF8);
  }

  return result;
}

void sub_275329018()
{
  if (!qword_2809C1B00)
  {
    sub_2753290A0(255, &qword_2809C1B08, MEMORY[0x277D83B48]);
    sub_275328FC4();
    v0 = sub_2753B7498();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1B00);
    }
  }
}

void sub_2753290A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_275329198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
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

uint64_t sub_2753291F4()
{
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_93_0();
  v3 = (type metadata accessor for MediaAPIResourceRequest() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0[4];

  v11 = v0[5];

  v12 = v0 + v5;

  v13 = *(v12 + 2);

  v14 = *(v12 + 3);

  v15 = *(v12 + 5);

  (*(*(v2 - 8) + 8))(&v12[v3[11]], v2);
  v16 = *&v12[v3[12]];

  v17 = *(v0 + v6);

  v18 = *(v0 + v7);

  v19 = *(v0 + v8);

  v20 = *(v0 + v9 + 8);

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v4 | 7);
}

uint64_t sub_275329364()
{
  OUTLINED_FUNCTION_218();
  v2 = v1;
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for MediaAPIResourceRequest();
  OUTLINED_FUNCTION_17_1(v5);
  v8 = (*(v7 + 64) + ((*(v6 + 80) + 48) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v0 + v8);
  v28 = *(v0 + v9);
  v11 = *(v0 + v10);
  v12 = v0[4];
  v13 = v0[5];
  v14 = (v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_173();

  return sub_2753212E8(v18, v19, v20, v21, v22, v23, v24, v25);
}

void sub_2753294CC()
{
  if (!qword_2809C1B28)
  {
    v0 = sub_2753B7498();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1B28);
    }
  }
}

uint64_t sub_27532952C()
{
  OUTLINED_FUNCTION_144_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_100_0();

  return sub_275321F88(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_27532960C()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_49_1();

  return sub_27532667C(v9, v10, v11, v12, v5, v6);
}

uint64_t sub_2753296C4()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_59_1();

  return sub_2753269F4(v7, v8, v9, v10, v4);
}

uint64_t sub_27532977C()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2752FD514;
  OUTLINED_FUNCTION_49_1();

  return sub_275326E64(v8, v9, v10, v11, v4);
}

unint64_t sub_27532982C()
{
  result = qword_2809C1B30;
  if (!qword_2809C1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B30);
  }

  return result;
}

uint64_t sub_275329880(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_27532A1F4(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2753298F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_27532A1F4(0, a3, a4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_9(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_275329968(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2753299DC()
{
  result = qword_2809C1B40;
  if (!qword_2809C1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B40);
  }

  return result;
}

unint64_t sub_275329A30()
{
  result = qword_2809C1B48;
  if (!qword_2809C1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B48);
  }

  return result;
}

unint64_t sub_275329A84()
{
  result = qword_2809C1B58;
  if (!qword_2809C1B58)
  {
    sub_27532A1F4(255, &qword_2809C1B50, &type metadata for MediaAPI.Resource, MEMORY[0x277D83940]);
    sub_275329A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B58);
  }

  return result;
}

unint64_t sub_275329B74()
{
  result = qword_2809C1B60;
  if (!qword_2809C1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B60);
  }

  return result;
}

unint64_t sub_275329BC8()
{
  result = qword_2809C1B68;
  if (!qword_2809C1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B68);
  }

  return result;
}

unint64_t sub_275329C1C()
{
  result = qword_2809C1B70;
  if (!qword_2809C1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B70);
  }

  return result;
}

unint64_t sub_275329C70()
{
  result = qword_2809C1B78;
  if (!qword_2809C1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B78);
  }

  return result;
}

unint64_t sub_275329CC4()
{
  result = qword_2809C1B80;
  if (!qword_2809C1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B80);
  }

  return result;
}

unint64_t sub_275329D18()
{
  result = qword_2809C1B88;
  if (!qword_2809C1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B88);
  }

  return result;
}

unint64_t sub_275329D6C()
{
  result = qword_2809C1B90;
  if (!qword_2809C1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B90);
  }

  return result;
}

uint64_t sub_275329DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFBu)
  {
    return sub_2753147B0(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_275329DD4()
{
  result = qword_2809C1BA0;
  if (!qword_2809C1BA0)
  {
    sub_2753290A0(255, &qword_2809C1B08, MEMORY[0x277D83B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BA0);
  }

  return result;
}

unint64_t sub_275329E48()
{
  result = qword_2809C1BA8;
  if (!qword_2809C1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BA8);
  }

  return result;
}

unint64_t sub_275329E9C()
{
  result = qword_2809C1BB8;
  if (!qword_2809C1BB8)
  {
    sub_27532A1F4(255, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BB8);
  }

  return result;
}

uint64_t sub_275329F30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_27531B078(a1, a2, a3);
}

void sub_275329F4C()
{
  if (!qword_2809C1BC8)
  {
    type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo();
    sub_275329FB8();
    v0 = sub_2753B7498();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1BC8);
    }
  }
}

unint64_t sub_275329FB8()
{
  result = qword_2809C1BD0;
  if (!qword_2809C1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BD0);
  }

  return result;
}

uint64_t sub_27532A00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27532A070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27532A0D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27532A138()
{
  result = qword_2809C1BE0;
  if (!qword_2809C1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BE0);
  }

  return result;
}

void sub_27532A18C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_27532A1F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for MediAPIResourceRequestError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MediAPIResourceRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27532A398);
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

uint64_t sub_27532A3D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27532A40C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27532A448(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_27532A488(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_27532A4C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27532A520(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 51))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 2;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_27532A568(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 50) = 0;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 51) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 4 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 50) = 0;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27532A5D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x3F;
  *result = v2;
  return result;
}

uint64_t sub_27532A5EC(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  result = a1 + 48;
  v4 = (v3 | (*(result + 2) << 16)) & 0xFF01FF01;
  *(result - 16) &= 3uLL;
  *result = v4;
  *(result + 2) = (v4 | (a2 << 22)) >> 16;
  return result;
}

unint64_t sub_27532A63C()
{
  result = qword_2809C1D78;
  if (!qword_2809C1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1D78);
  }

  return result;
}

unint64_t sub_27532A694()
{
  result = qword_2809C1D80;
  if (!qword_2809C1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1D80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{
  *(v1 + 8) = sub_275322748;
  result = *(v0 + 192);
  v3 = *(v0 + 88);
  return result;
}

void OUTLINED_FUNCTION_20_1()
{

  JUMPOUT(0x277C76100);
}

void *OUTLINED_FUNCTION_21_1()
{

  return memcpy((v0 + 2488), (v0 + 7432), 0x338uLL);
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1)
{
  *(v1 + 272) = a1;
  v4 = *(v2 + 8);

  return sub_2753B6BD8();
}

uint64_t OUTLINED_FUNCTION_27_1()
{
  v4 = v0[34];
  v3 = v0[35];
  v5 = *(v1 + 40);
  v0[42] = *(v1 + 32);
  v0[43] = v5;
  *v0 = 0;
  v0[1] = 0xE000000000000000;

  return sub_2753B7398();
}

void *OUTLINED_FUNCTION_37_1()
{

  return memcpy((v1 + v0), (v1 + 64), 0x2F9uLL);
}

void *OUTLINED_FUNCTION_41_1()
{

  return memcpy((v0 + 3312), (v0 + 1664), 0x338uLL);
}

uint64_t OUTLINED_FUNCTION_43_1()
{
  v2 = v0[322];
  v3 = v0[319];
  v4 = v0[318];
  v5 = v0[315];
}

void OUTLINED_FUNCTION_44_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_27532A1F4(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_45_1()
{
  v3 = *(v0 + 368);
  sub_275316098(v1 + v2);

  return sub_2753B6028();
}

uint64_t OUTLINED_FUNCTION_53_1()
{
  strcpy((v1 - 144), "/v1/catalog/");
  *(v1 - 131) = 0;
  *(v1 - 130) = -5120;
  result = *(v0 + 8);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  v4 = v0[14];
  v5 = (*(v1 + 56) + 16 * v2);
  v0[36] = *v5;
  v0[37] = v5[1];
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_2753272B8(a1, v21, v20, a15, a19, a16, v19);
}

void *OUTLINED_FUNCTION_71_1(void *a1)
{

  return memcpy(a1, (v1 + 64), 0x2F9uLL);
}

void *OUTLINED_FUNCTION_72_1()
{

  return memcpy((v1 + 38992), (v1 + v0), 0x2F9uLL);
}

uint64_t OUTLINED_FUNCTION_73_1(uint64_t a1)
{
  v3 = *(*(*(v1 + 96) + 56) + 8 * a1);
}

void OUTLINED_FUNCTION_84_0()
{
  v1 = *(v0 + 240) + 1;
  *(v0 + 240) = v1;
  v2 = *(*(v0 + 88) + v1 + 32);
}

uint64_t OUTLINED_FUNCTION_88_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_104_1()
{
  v2 = v0[208];
  v3 = v0[205];
  v4 = v0[204];
  v5 = v0[201];
  v6 = v0[200];
}

uint64_t OUTLINED_FUNCTION_105_1()
{
  v2 = v0[208];
  v3 = v0[205];
  v4 = v0[204];
  v5 = v0[201];
  v6 = v0[200];
}

uint64_t OUTLINED_FUNCTION_106_1()
{
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[21];
}

void *OUTLINED_FUNCTION_107_1(void *a1)
{

  return memcpy(a1, (v1 + 26704), 0x2F9uLL);
}

uint64_t OUTLINED_FUNCTION_108_1()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_109_1@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return sub_275329100(v0 + 16, v0 + 840);
}

void *OUTLINED_FUNCTION_111_1(uint64_t a1, const void *a2)
{

  return memcpy((v2 + 16), a2, 0x338uLL);
}

void OUTLINED_FUNCTION_126_1()
{
  v2 = v0[14];
  v3 = v0[15];
  v0[1] = v1;
}

uint64_t OUTLINED_FUNCTION_135_1()
{

  return sub_2753B74A8();
}

uint64_t OUTLINED_FUNCTION_136_1()
{
}

void OUTLINED_FUNCTION_138_1()
{

  JUMPOUT(0x277C76100);
}

void *OUTLINED_FUNCTION_139_1(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x2F9uLL);
}

unint64_t MediaAPI.MediaAPIType.rawValue.getter()
{
  result = 0x73676E6F73;
  switch(*v0)
  {
    case 1:
    case 5:
      result = 0x2D7972617262696CLL;
      break;
    case 2:
      result = 0x69762D636973756DLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x736D75626C61;
      break;
    case 6:
      result = 0x7473696C79616C70;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x736E6F6974617473;
      break;
    case 9:
      result = 0x7365726E6567;
      break;
    case 0xA:
      result = 0x612D6C6D78656C66;
      break;
    case 0xB:
      result = 0x6E612D6F69647561;
      break;
    default:
      return result;
  }

  return result;
}

double MediaAPI.Resource.rawIdentifier(forPersonID:)@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  v7._countAndFlagsBits = v6;
  v7._object = v5;
  MediaAPI.MediaAPIType.init(rawValue:)(v7);
  switch(v11)
  {
    case 0:
      *a1 = v4;
      *(a1 + 8) = v3;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_13;
    case 1:
      OUTLINED_FUNCTION_459();
      v9 = 64;
      goto LABEL_9;
    case 2:
      *a1 = v4;
      *(a1 + 8) = v3;
      v8 = xmmword_2753C2F80;
      goto LABEL_12;
    case 3:
      OUTLINED_FUNCTION_459();
      v9 = 65;
      goto LABEL_9;
    case 4:
      *a1 = v4;
      *(a1 + 8) = v3;
      v8 = xmmword_2753C2F70;
      goto LABEL_12;
    case 5:
      OUTLINED_FUNCTION_459();
      v9 = 66;
      goto LABEL_9;
    case 6:
      *a1 = v4;
      *(a1 + 8) = v3;
      v8 = xmmword_2753C2F60;
      goto LABEL_12;
    case 7:
      OUTLINED_FUNCTION_459();
      v9 = 67;
LABEL_9:
      *(a1 + 32) = v9;

      goto LABEL_14;
    case 8:
      *a1 = v4;
      *(a1 + 8) = v3;
      v8 = xmmword_2753C2F50;
LABEL_12:
      *(a1 + 16) = v8;
LABEL_13:
      *(a1 + 32) = 0;
LABEL_14:

      break;
    default:
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -4;
      break;
  }

  return result;
}

uint64_t MediaAPI.Resource.qualifiedIdentifier(forPersonID:)@<X0>(uint64_t a1@<X8>)
{
  v2 = 16646398;
  MediaAPI.Resource.rawIdentifier(forPersonID:)(&v8);
  if (v12 > 0xFBuLL)
  {
LABEL_4:
    result = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    result = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;
    switch(v12 >> 5)
    {
      case 1:
      case 3:
      case 4:
      case 5:
        sub_275329DC0(v8, v9, v10, v11, v12);
        goto LABEL_4;
      case 2:
        v7 = v12 & 0x1F;
        v2 = 4196865;
        break;
      default:
        v7 = 0;
        v2 = 0;
        v5 = v10;
        v6 = MEMORY[0x277D84F90];
        break;
    }
  }

  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 50) = BYTE2(v2);
  return result;
}

uint64_t MediaAPI.Resource.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_2753B7398();

  v10 = v4;
  v11 = v3;
  MEMORY[0x277C76100](0x203A6469203ALL, 0xE600000000000000);
  MEMORY[0x277C76100](v1, v2);
  MEMORY[0x277C76100](0x203A656D616E20, 0xE700000000000000);
  memcpy(__dst, v0 + 6, 0x2F9uLL);
  if (sub_275315FC8(__dst) == 1 || (memcpy(v9, __dst, sizeof(v9)), v5 = MediaAPI.Attributes.name.getter(), !v6))
  {

    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x277C76100](v5, v7);

  return v10;
}

void *sub_27532B624@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_27534B348(__src);
  memcpy((a1 + 32), __src, 0x81uLL);
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 33686018;
  *(a1 + 316) = 514;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1;
  *(a1 + 384) = 0u;
  sub_27534B690(v4);
  memcpy((a1 + 400), v4, 0x91uLL);
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 1;
  *(a1 + 592) = 0u;
  sub_27534B698(v5);
  result = memcpy((a1 + 608), v5, 0x98uLL);
  *(a1 + 760) = 2;
  return result;
}

_SonicKit_MusicKit::MediaAPI::MediaAPIType_optional __swiftcall MediaAPI.MediaAPIType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2753B74E8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_27532B780(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2752E8C74();
}

unint64_t sub_27532B7B0@<X0>(unint64_t *a1@<X8>)
{
  result = MediaAPI.MediaAPIType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MediaAPI.Artwork.bgColor.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.Artwork.height.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t MediaAPI.Artwork.height.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MediaAPI.Artwork.textColor1.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.Artwork.textColor1.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.textColor2.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.Artwork.textColor2.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.textColor3.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.Artwork.textColor3.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.textColor4.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.Artwork.textColor4.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.url.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.Artwork.url.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.width.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t MediaAPI.Artwork.width.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_27532BB50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x3350736168 && a2 == 0xE500000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 7107189 && a2 == 0xE300000000000000;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_2753B7718();

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

uint64_t sub_27532BDF0(char a1)
{
  result = 0x726F6C6F436762;
  switch(a1)
  {
    case 1:
      result = 0x3350736168;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    case 4:
      result = 0x6F6C6F4374786574;
      break;
    case 5:
      result = 0x6F6C6F4374786574;
      break;
    case 6:
      result = 0x6F6C6F4374786574;
      break;
    case 7:
      result = 7107189;
      break;
    case 8:
      result = 0x6874646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27532BF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532BB50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532BF48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27532BDE8();
  *a1 = result;
  return result;
}

uint64_t sub_27532BF70(uint64_t a1)
{
  v2 = sub_27534AD20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532BFAC(uint64_t a1)
{
  v2 = sub_27534AD20();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.Artwork.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_211_0();
  sub_27534DC8C(0, v4, v5, &type metadata for MediaAPI.Artwork.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30();
  v12 = *v0;
  v13 = v0[1];
  v32 = *(v0 + 16);
  v31 = v0[3];
  v30 = *(v0 + 32);
  v28 = v0[6];
  v29 = v0[5];
  v26 = v0[7];
  v27 = v0[8];
  v24 = v0[9];
  v25 = v0[10];
  v22 = v0[11];
  v23 = v0[12];
  v20 = v0[13];
  v21 = v0[14];
  v18 = v0[15];
  v19 = *(v0 + 128);
  v14 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_27534AD20();
  OUTLINED_FUNCTION_299();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  sub_2753B75F8();
  if (!v1)
  {
    OUTLINED_FUNCTION_143();
    sub_2753B7608();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_100_2();
    sub_2753B7628();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_100_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_100_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_100_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_100_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_242(7);
    OUTLINED_FUNCTION_100_2();
    sub_2753B7658();
    OUTLINED_FUNCTION_100_2();
    sub_2753B7628();
  }

  v15 = *(v8 + 8);
  v16 = OUTLINED_FUNCTION_434();
  v17(v16);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.Artwork.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v45 = v2;
  OUTLINED_FUNCTION_211_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_122_2();
  v11 = v1[3];
  v12 = v1[4];
  v70 = v1;
  OUTLINED_FUNCTION_115_2(v1);
  sub_27534AD20();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_297();
    __swift_destroy_boxed_opaque_existential_1(v1);

    if (&type metadata for MediaAPI.Artwork.CodingKeys)
    {
    }
  }

  else
  {
    LOBYTE(v47[0]) = 0;
    OUTLINED_FUNCTION_357();
    v13 = sub_2753B7518();
    v42 = v14;
    OUTLINED_FUNCTION_55_2(1);
    v15 = sub_2753B7528();
    OUTLINED_FUNCTION_55_2(2);
    v16 = sub_2753B7548();
    OUTLINED_FUNCTION_446(v16, v17);
    OUTLINED_FUNCTION_55_2(3);
    v40 = sub_2753B7518();
    v41 = v18;
    OUTLINED_FUNCTION_55_2(4);
    v19 = sub_2753B7518();
    v21 = v20;
    v38 = v19;
    v39 = v16;
    OUTLINED_FUNCTION_55_2(5);
    v22 = sub_2753B7518();
    v24 = v23;
    v37 = v22;
    OUTLINED_FUNCTION_55_2(6);
    v25 = sub_2753B7518();
    v27 = v26;
    v36 = v25;
    OUTLINED_FUNCTION_55_2(7);
    v34 = sub_2753B7578();
    v35 = v15;
    v43 = v28;
    v65 = 8;
    v33 = sub_2753B7548();
    v30 = v29;
    v31 = OUTLINED_FUNCTION_93_2();
    v32(v31);
    v66 = v30 & 1;
    v46[0] = v13;
    v46[1] = v42;
    LOBYTE(v46[2]) = v35;
    *(&v46[2] + 1) = v69[0];
    HIDWORD(v46[2]) = *(v69 + 3);
    v46[3] = v39;
    v44 = v68;
    LOBYTE(v46[4]) = v68;
    *(&v46[4] + 1) = *v67;
    HIDWORD(v46[4]) = *&v67[3];
    v46[5] = v40;
    v46[6] = v41;
    v46[7] = v38;
    v46[8] = v21;
    v46[9] = v37;
    v46[10] = v24;
    v46[11] = v36;
    v46[12] = v27;
    v46[13] = v34;
    v46[14] = v43;
    v46[15] = v33;
    LOBYTE(v46[16]) = v30 & 1;
    memcpy(v45, v46, 0x81uLL);
    sub_27534AD74(v46, v47);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v47[0] = v13;
    v47[1] = v42;
    v48 = v35;
    *v49 = v69[0];
    *&v49[3] = *(v69 + 3);
    v50 = v39;
    v51 = v44;
    *v52 = *v67;
    *&v52[3] = *&v67[3];
    v53 = v40;
    v54 = v41;
    v55 = v38;
    v56 = v21;
    v57 = v37;
    v58 = v24;
    v59 = v36;
    v60 = v27;
    v61 = v34;
    v62 = v43;
    v63 = v33;
    v64 = v30 & 1;
    sub_27534ADAC(v47);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_27532C74C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000002753B9450 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002753B9470 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

unint64_t sub_27532C824(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_27532C864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532C74C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532C88C(uint64_t a1)
{
  v2 = sub_27534ADDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532C8C8(uint64_t a1)
{
  v2 = sub_27534ADDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaAPI.SpatialOffsets.Offset.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_229_0();
  OUTLINED_FUNCTION_482(v4, v5, v6, v7, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21();
  v15 = *v1;
  v14 = v1[1];
  v16 = a1[4];
  OUTLINED_FUNCTION_67_0(a1, a1[3]);
  sub_27534ADDC();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  OUTLINED_FUNCTION_58();
  sub_2753B7678();
  if (!v2)
  {
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_58();
    sub_2753B7678();
  }

  v17 = *(v10 + 8);
  v18 = OUTLINED_FUNCTION_114();
  return v19(v18);
}

uint64_t MediaAPI.SpatialOffsets.Offset.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_229_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  v10 = v9;
  OUTLINED_FUNCTION_2_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_65_1();
  sub_27534ADDC();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v2)
  {
    OUTLINED_FUNCTION_264();
    sub_2753B7598();
    v17 = v16;
    OUTLINED_FUNCTION_143();
    sub_2753B7598();
    v20 = v19;
    (*(v12 + 8))(v3, v10);
    *a2 = v17;
    a2[1] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MediaAPI.SpatialOffsets.startOffsetInMilliseconds.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t MediaAPI.SpatialOffsets.startOffsetInMilliseconds.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.endOffsetInMilliseconds.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t MediaAPI.SpatialOffsets.endOffsetInMilliseconds.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.alignmentDurationLimitInMilliseconds.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t MediaAPI.SpatialOffsets.alignmentDurationLimitInMilliseconds.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.timeDrift.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t MediaAPI.SpatialOffsets.timeDrift.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.timestampInMilliseconds.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t MediaAPI.SpatialOffsets.timestampInMilliseconds.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.offsets.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_27532CE34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000023 && 0x80000002753B9490 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000024 && 0x80000002753B94C0 == a2;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000022 && 0x80000002753B94F0 == a2;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000023 && 0x80000002753B9520 == a2;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x80000002753B9550 == a2;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000002753B9570 == a2;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000024 && 0x80000002753B9590 == a2;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4D65736F6C437369 && a2 == 0xEC00000068637461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7541676E6F4C7369 && a2 == 0xEB000000006F6964;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x66697244656D6974 && a2 == 0xE900000000000074;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x80000002753B95C0 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x7374657366666FLL && a2 == 0xE700000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_2753B7718();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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
}

unint64_t sub_27532D1EC(char a1)
{
  result = 0x4D65736F6C437369;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 7:
      return result;
    case 8:
      result = 0x7541676E6F4C7369;
      break;
    case 9:
      result = 0x66697244656D6974;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x7374657366666FLL;
      break;
    default:
      result = 0xD000000000000023;
      break;
  }

  return result;
}

uint64_t sub_27532D3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532CE34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532D3CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27532D1E4();
  *a1 = result;
  return result;
}

uint64_t sub_27532D3F4(uint64_t a1)
{
  v2 = sub_27534AE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532D430(uint64_t a1)
{
  v2 = sub_27534AE30();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.SpatialOffsets.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v48 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_220_0();
  sub_27534DC8C(0, v4, v5, v6, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  v13 = *v0;
  v14 = *(v0 + 8);
  v47 = v0[2];
  v46 = *(v0 + 24);
  v45 = v0[4];
  v44 = *(v0 + 40);
  v43 = v0[6];
  v15 = *(v0 + 56);
  v40 = v0[8];
  v41 = *(v0 + 72);
  v42 = v15;
  v38 = v0[10];
  v39 = *(v0 + 88);
  v36 = v0[12];
  v37 = *(v0 + 104);
  v16 = *(v0 + 105);
  v34 = *(v0 + 106);
  v35 = v16;
  v32 = v0[14];
  v33 = *(v0 + 120);
  v30 = v0[16];
  v31 = *(v0 + 136);
  v17 = v0[18];
  v18 = v3[3];
  v19 = v3[4];
  v20 = v3;
  v22 = &v30 - v21;
  OUTLINED_FUNCTION_67_0(v20, v18);
  sub_27534AE30();
  OUTLINED_FUNCTION_299();
  sub_2753B7808();
  v23 = v48;
  sub_2753B7618();
  if (v23)
  {
    v24 = *(v9 + 8);
    v25 = OUTLINED_FUNCTION_433();
    v26(v25);
  }

  else
  {
    v48 = v17;
    OUTLINED_FUNCTION_242(1);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(2);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(3);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(4);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(5);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(6);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_242(9);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(10);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    v49 = 11;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v27, v28, v29);
    sub_27534AE84();
    OUTLINED_FUNCTION_369();
    sub_2753B7698();
    (*(v9 + 8))(v22);
  }

  OUTLINED_FUNCTION_61();
}

void MediaAPI.SpatialOffsets.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_220_0();
  sub_27534DC8C(0, v5, v6, &type metadata for MediaAPI.SpatialOffsets.CodingKeys, MEMORY[0x277D844C8]);
  v46 = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_70_2();
  v11 = v2[4];
  OUTLINED_FUNCTION_67_0(v2, v2[3]);
  sub_27534AE30();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_323();
  sub_2753B77F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_59_2();
    v12 = sub_2753B7538();
    OUTLINED_FUNCTION_446(v12, v13);
    OUTLINED_FUNCTION_18_3(1);
    v45 = sub_2753B7538();
    v98 = v14 & 1;
    OUTLINED_FUNCTION_18_3(2);
    v44 = sub_2753B7538();
    v96 = v15 & 1;
    OUTLINED_FUNCTION_18_3(3);
    v43 = sub_2753B7538();
    v94 = v16 & 1;
    OUTLINED_FUNCTION_18_3(4);
    v42 = sub_2753B7538();
    v92 = v17 & 1;
    OUTLINED_FUNCTION_18_3(5);
    v41 = sub_2753B7538();
    v90 = v18 & 1;
    OUTLINED_FUNCTION_18_3(6);
    v40 = sub_2753B7538();
    v88 = v19 & 1;
    OUTLINED_FUNCTION_18_3(7);
    v38 = sub_2753B7528();
    OUTLINED_FUNCTION_18_3(8);
    v39 = sub_2753B7528();
    OUTLINED_FUNCTION_18_3(9);
    v20 = sub_2753B7538();
    v85 = v21 & 1;
    LOBYTE(v49) = 10;
    OUTLINED_FUNCTION_104_2();
    v22 = sub_2753B7538();
    v83 = v23 & 1;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v24, v25, v26);
    v80 = 11;
    sub_27534AF74();
    OUTLINED_FUNCTION_77_2();
    sub_2753B75B8();
    v27 = OUTLINED_FUNCTION_113_2();
    v28(v27, v46);
    v30 = v81;
    v48[0] = v12;
    v47 = v100;
    LOBYTE(v48[1]) = v100;
    *(&v48[1] + 1) = *v99;
    HIDWORD(v48[1]) = *&v99[3];
    v48[2] = v45;
    v37 = v98;
    LOBYTE(v48[3]) = v98;
    *(&v48[3] + 1) = *v97;
    HIDWORD(v48[3]) = *&v97[3];
    v48[4] = v44;
    v36 = v96;
    LOBYTE(v48[5]) = v96;
    HIDWORD(v48[5]) = *&v95[3];
    *(&v48[5] + 1) = *v95;
    v48[6] = v43;
    v35 = v94;
    LOBYTE(v48[7]) = v94;
    *(&v48[7] + 1) = *v93;
    HIDWORD(v48[7]) = *&v93[3];
    v48[8] = v42;
    v34 = v92;
    LOBYTE(v48[9]) = v92;
    *(&v48[9] + 1) = *v91;
    HIDWORD(v48[9]) = *&v91[3];
    v48[10] = v41;
    v33 = v90;
    LOBYTE(v48[11]) = v90;
    HIDWORD(v48[11]) = *&v89[3];
    *(&v48[11] + 1) = *v89;
    v48[12] = v40;
    v32 = v88;
    LOBYTE(v48[13]) = v88;
    BYTE1(v48[13]) = v38;
    BYTE2(v48[13]) = v39;
    HIBYTE(v48[13]) = v87;
    *(&v48[13] + 3) = v86;
    v48[14] = v20;
    v31 = v85;
    LOBYTE(v48[15]) = v85;
    HIDWORD(v48[15]) = *&v84[3];
    *(&v48[15] + 1) = *v84;
    v48[16] = v22;
    v29 = v83;
    LOBYTE(v48[17]) = v83;
    HIDWORD(v48[17]) = *&v82[3];
    *(&v48[17] + 1) = *v82;
    v48[18] = v81;
    memcpy(v4, v48, 0x98uLL);
    sub_275316FE8(v48, &v49);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v49 = v12;
    v50 = v47;
    *v51 = *v99;
    *&v51[3] = *&v99[3];
    v52 = v45;
    v53 = v37;
    *v54 = *v97;
    *&v54[3] = *&v97[3];
    v55 = v44;
    v56 = v36;
    *v57 = *v95;
    *&v57[3] = *&v95[3];
    v58 = v43;
    v59 = v35;
    *v60 = *v93;
    *&v60[3] = *&v93[3];
    v61 = v42;
    v62 = v34;
    *v63 = *v91;
    *&v63[3] = *&v91[3];
    v64 = v41;
    v65 = v33;
    *v66 = *v89;
    *&v66[3] = *&v89[3];
    v67 = v40;
    v68 = v32;
    v69 = v38;
    v70 = v39;
    v72 = v87;
    v71 = v86;
    v73 = v20;
    v74 = v31;
    *&v75[3] = *&v84[3];
    *v75 = *v84;
    v76 = v22;
    v77 = v29;
    *&v78[3] = *&v82[3];
    *v78 = *v82;
    v79 = v30;
    sub_27534B064(&v49);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.PlayParams.StreamingKind.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_27532DE7C@<X0>(uint64_t *a1@<X8>)
{
  result = MediaAPI.PlayParams.StreamingKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27532DF84@<X0>(uint64_t *a1@<X8>)
{
  result = MediaAPI.PlayParams.StationMediaType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MediaAPI.PlayParams.id.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.kind.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.purchasedId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlayParams.purchasedId.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.catalogId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlayParams.catalogId.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.versionHash.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlayParams.versionHash.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.globalId.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlayParams.globalId.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.stationHash.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlayParams.stationHash.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.format.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.PlayParams.format.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t sub_27532E4E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6573616863727570 && a2 == 0xEB00000000644964;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x49676F6C61746163 && a2 == 0xE900000000000064;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72617262694C7369 && a2 == 0xE900000000000079;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64496C61626F6C67 && a2 == 0xE800000000000000;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6974726F706572 && a2 == 0xE900000000000067;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E696D6165727473 && a2 == 0xED0000646E694B67;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x486E6F6974617473 && a2 == 0xEB00000000687361;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x6D7244736168 && a2 == 0xE600000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_2753B7718();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
  }
}

uint64_t sub_27532E8D0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 1684957547;
    case 2:
      return 0x6573616863727570;
    case 3:
      return 0x49676F6C61746163;
    case 4:
      return 0x72617262694C7369;
    case 5:
      v4 = 1936876918;
      goto LABEL_13;
    case 6:
      return 0x64496C61626F6C67;
    case 7:
      v3 = 0x74726F706572;
      goto LABEL_15;
    case 8:
      v3 = 0x6D6165727473;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    case 9:
      result = 0x707954616964656DLL;
      break;
    case 10:
      v4 = 1952543859;
LABEL_13:
      result = v4 | 0x486E6F6900000000;
      break;
    case 11:
      result = 0x74616D726F66;
      break;
    case 12:
      result = 0x6D7244736168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27532EA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532E4E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532EA9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27532E8C8();
  *a1 = result;
  return result;
}

uint64_t sub_27532EAC4(uint64_t a1)
{
  v2 = sub_27534B094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532EB00(uint64_t a1)
{
  v2 = sub_27534B094();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.PlayParams.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_230_0();
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30();
  v15 = *v0;
  v14 = v0[1];
  v37 = v0[3];
  v38 = v0[2];
  v35 = v0[5];
  v36 = v0[4];
  v33 = v0[7];
  v34 = v0[6];
  v32 = *(v0 + 64);
  v30 = v0[9];
  v31 = v0[10];
  v28 = v0[11];
  v29 = v0[12];
  v26 = *(v0 + 105);
  v27 = *(v0 + 104);
  v25 = *(v0 + 106);
  v23 = v0[14];
  v24 = v0[15];
  v21 = v0[16];
  v22 = v0[17];
  v20 = *(v0 + 144);
  v16 = v4[4];
  OUTLINED_FUNCTION_67_0(v4, v4[3]);
  sub_27534B094();
  OUTLINED_FUNCTION_299();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_298();
  sub_2753B7658();
  if (v1)
  {
    v17 = *(v10 + 8);
    v18 = OUTLINED_FUNCTION_115();
    v19(v18);
  }

  else
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_384();
    sub_2753B7658();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_384();
    sub_2753B75F8();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_384();
    sub_2753B75F8();
    OUTLINED_FUNCTION_444();
    sub_2753B7608();
    OUTLINED_FUNCTION_384();
    sub_2753B75F8();
    OUTLINED_FUNCTION_384();
    sub_2753B75F8();
    OUTLINED_FUNCTION_444();
    sub_2753B7608();
    sub_27534B0E8();
    OUTLINED_FUNCTION_444();
    sub_2753B7638();
    sub_27534B13C();
    OUTLINED_FUNCTION_444();
    sub_2753B7638();
    sub_2753B75F8();
    OUTLINED_FUNCTION_182();
    sub_2753B75F8();
    OUTLINED_FUNCTION_182();
    sub_2753B7608();
    (*(v10 + 8))(v2);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.PlayParams.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_368();
  v13 = v2[3];
  v14 = v2[4];
  v45 = v2;
  OUTLINED_FUNCTION_148_1();
  sub_27534B094();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_296();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_160_1();
  }

  else
  {
    v42 = v4;
    OUTLINED_FUNCTION_187_0();
    v15 = sub_2753B7578();
    v44 = v16;
    OUTLINED_FUNCTION_28_2(1);
    v17 = sub_2753B7578();
    v43 = v18;
    OUTLINED_FUNCTION_28_2(2);
    v19 = sub_2753B7518();
    v41 = v20;
    OUTLINED_FUNCTION_28_2(3);
    v40 = sub_2753B7518();
    v69 = v21;
    OUTLINED_FUNCTION_28_2(4);
    v39 = sub_2753B7528();
    OUTLINED_FUNCTION_28_2(5);
    v38 = sub_2753B7518();
    v46 = v22;
    OUTLINED_FUNCTION_28_2(6);
    v36 = sub_2753B7518();
    v37 = v19;
    v24 = v23;
    OUTLINED_FUNCTION_28_2(7);
    v35 = sub_2753B7528();
    sub_27534B190();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_187_0();
    sub_2753B7558();
    v34 = v17;
    LOBYTE(v47[0]) = 9;
    sub_27534B1E4();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_187_0();
    sub_2753B7558();
    OUTLINED_FUNCTION_187_0();
    v25 = sub_2753B7518();
    v27 = v26;
    LOBYTE(v48[0]) = 11;
    OUTLINED_FUNCTION_187_0();
    v33 = sub_2753B7518();
    v29 = v28;
    v65 = 12;
    OUTLINED_FUNCTION_187_0();
    v30 = sub_2753B7528();
    v31 = OUTLINED_FUNCTION_288();
    v32(v31);
    v47[0] = v15;
    v47[1] = v44;
    v47[2] = v34;
    v47[3] = v43;
    v47[4] = v37;
    v47[5] = v41;
    v47[6] = v40;
    v47[7] = v69;
    LOBYTE(v47[8]) = v39;
    *(&v47[8] + 1) = v68[0];
    HIDWORD(v47[8]) = *(v68 + 3);
    v47[9] = v38;
    v47[10] = v46;
    v47[11] = v36;
    v47[12] = v24;
    LOWORD(v47[13]) = v35;
    BYTE2(v47[13]) = 0;
    *(&v47[13] + 3) = v66;
    HIBYTE(v47[13]) = v67;
    v47[14] = v25;
    v47[15] = v27;
    v47[16] = v33;
    v47[17] = v29;
    LOBYTE(v47[18]) = v30;
    memcpy(v42, v47, 0x91uLL);
    sub_27534B238(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v48[0] = v15;
    v48[1] = v44;
    v48[2] = v34;
    v48[3] = v43;
    v48[4] = v37;
    v48[5] = v41;
    v48[6] = v40;
    v48[7] = v69;
    v49 = v39;
    *v50 = v68[0];
    *&v50[3] = *(v68 + 3);
    v51 = v38;
    v52 = v46;
    v53 = v36;
    v54 = v24;
    v55 = v35;
    v56 = 0;
    v57 = 0;
    v58 = v66;
    v59 = v67;
    v60 = v25;
    v61 = v27;
    v62 = v33;
    v63 = v29;
    v64 = v30;
    sub_27534B270(v48);
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.Preview.url.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.Preview.hlsUrl.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.Preview.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
}

void *MediaAPI.Preview.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t sub_27532F650(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C7255736C68 && a2 == 0xE600000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2753B7718();

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

uint64_t sub_27532F75C(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0x6C7255736C68;
  }

  return 0x6B726F77747261;
}

uint64_t sub_27532F7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532F650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532F7D8(uint64_t a1)
{
  v2 = sub_27534B2A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532F814(uint64_t a1)
{
  v2 = sub_27534B2A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.Preview.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_213_0();
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v15 = v0[1];
  v21 = v0[2];
  v22 = *v0;
  v20 = v0[3];
  OUTLINED_FUNCTION_179_0();
  memcpy(v16, v17, v18);
  v19 = v4[4];
  OUTLINED_FUNCTION_67_0(v4, v4[3]);
  sub_27534B2A0();
  sub_2753B7808();
  v24[0] = 0;
  sub_2753B7658();
  if (!v1)
  {
    v24[0] = 1;
    sub_2753B75F8();
    memcpy(v24, v25, sizeof(v24));
    OUTLINED_FUNCTION_385();
    sub_27534B40C(v25, v23, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    sub_2753B7638();
    memcpy(v23, v24, 0x81uLL);
    sub_27534B488(v23, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  }

  (*(v11 + 8))(v2, v9);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.Preview.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v22 = v3;
  OUTLINED_FUNCTION_213_0();
  sub_27534DC8C(0, v4, v5, &type metadata for MediaAPI.Preview.CodingKeys, MEMORY[0x277D844C8]);
  v23 = v6;
  OUTLINED_FUNCTION_2_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30();
  sub_27534B348(v30);
  memcpy(v29, v30, sizeof(v29));
  v10 = v2[3];
  v11 = v2[4];
  v12 = OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_67_0(v12, v13);
  sub_27534B2A0();
  OUTLINED_FUNCTION_299();
  sub_2753B77F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v27, v29, 0x81uLL);
    sub_27534B488(v27, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    v14 = sub_2753B7578();
    v16 = v15;
    LOBYTE(v27[0]) = 1;
    OUTLINED_FUNCTION_436();
    v20 = sub_2753B7518();
    v21 = v17;
    OUTLINED_FUNCTION_385();
    sub_27534B350();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_436();
    sub_2753B7558();
    v18 = OUTLINED_FUNCTION_120_1();
    v19(v18, v23);
    memcpy(v24, v28, 0x81uLL);
    memcpy(v25, v29, 0x81uLL);
    sub_27534B488(v25, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v26[0] = v14;
    v26[1] = v16;
    v26[2] = v20;
    v26[3] = v21;
    memcpy(&v26[4], v24, 0x81uLL);
    memcpy(v22, v26, 0xA1uLL);
    sub_27534B3A4(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v27[0] = v14;
    v27[1] = v16;
    v27[2] = v20;
    v27[3] = v21;
    memcpy(&v27[4], v24, 0x81uLL);
    sub_27534B3DC(v27);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.SongAttributes.albumName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
}

void *MediaAPI.SongAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t MediaAPI.SongAttributes.audioLocale.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.audioTraits.setter()
{
  result = OUTLINED_FUNCTION_481();
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.composerName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 200);

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.contentProvider.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 216);

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.contentRating.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.SongAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 232);

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.copyright.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.SongAttributes.copyright.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 248);

  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.editorialNotes.setter(uint64_t a1)
{
  v3 = *(v1 + 288);

  *(v1 + 288) = a1;
  return result;
}

uint64_t MediaAPI.SongAttributes.extendedAssetUrls.setter(uint64_t a1)
{
  v3 = *(v1 + 296);

  *(v1 + 296) = a1;
  return result;
}

uint64_t MediaAPI.SongAttributes.genreNames.setter(uint64_t a1)
{
  v3 = *(v1 + 304);

  *(v1 + 304) = a1;
  return result;
}

uint64_t MediaAPI.SongAttributes.isrc.getter()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.SongAttributes.isrc.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 328);

  *(v1 + 320) = v2;
  *(v1 + 328) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.movementName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 360);

  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.name.getter()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.SongAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 392);

  *(v1 + 384) = v2;
  *(v1 + 392) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_355();
  v4 = memcpy(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_375(v4, (v0 + 400));
  return OUTLINED_FUNCTION_363(v5, v6, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
}

void *MediaAPI.SongAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_355();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 400));
}

uint64_t MediaAPI.SongAttributes.previews.setter(uint64_t a1)
{
  v3 = *(v1 + 552);

  *(v1 + 552) = a1;
  return result;
}

uint64_t MediaAPI.SongAttributes.releaseDate.getter()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 568);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.SongAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 568);

  *(v1 + 560) = v2;
  *(v1 + 568) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.workName.getter()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 600);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.SongAttributes.workName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 600);

  *(v1 + 592) = v2;
  *(v1 + 600) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.spatialOffsets.getter()
{
  OUTLINED_FUNCTION_252();
  memcpy(v2, (v1 + 608), 0x98uLL);
  v3 = memcpy(v0, (v1 + 608), 0x98uLL);
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void *MediaAPI.SongAttributes.spatialOffsets.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v2, (v1 + 608), 0x98uLL);
  sub_27534B488(v4, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
  return memcpy((v1 + 608), v0, 0x98uLL);
}

uint64_t sub_27533082C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7265736F706D6F63 && a2 == 0xEC000000656D614ELL;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x626D754E63736964 && a2 == 0xEA00000000007265;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x80000002753B9320 == a2;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6964657243736168 && a2 == 0xEA00000000007374;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x636972794C736168 && a2 == 0xE900000000000073;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000002753B9600 == a2;
                                  if (v21 || (sub_2753B7718() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x80000002753B9620 == a2;
                                    if (v22 || (sub_2753B7718() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000013 && 0x80000002753B9640 == a2;
                                      if (v23 || (sub_2753B7718() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000019 && 0x80000002753B9660 == a2;
                                        if (v24 || (sub_2753B7718() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 1668445033 && a2 == 0xE400000000000000;
                                          if (v25 || (sub_2753B7718() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x746E656D65766F6DLL && a2 == 0xED0000746E756F43;
                                            if (v26 || (sub_2753B7718() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x746E656D65766F6DLL && a2 == 0xEC000000656D614ELL;
                                              if (v27 || (sub_2753B7718() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x746E656D65766F6DLL && a2 == 0xEE007265626D754ELL;
                                                if (v28 || (sub_2753B7718() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                                  if (v29 || (sub_2753B7718() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                                    if (v30 || (sub_2753B7718() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                                      if (v31 || (sub_2753B7718() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                                        if (v32 || (sub_2753B7718() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                                          if (v33 || (sub_2753B7718() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x656D614E6B726F77 && a2 == 0xE800000000000000;
                                                            if (v34 || (sub_2753B7718() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x4F6C616974617073 && a2 == 0xEE00737465736666;
                                                              if (v35 || (sub_2753B7718() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else if (a1 == 0xD000000000000018 && 0x80000002753B8450 == a2)
                                                              {

                                                                return 31;
                                                              }

                                                              else
                                                              {
                                                                v37 = sub_2753B7718();

                                                                if (v37)
                                                                {
                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  return 32;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2753311A4(char a1)
{
  result = 0x6D614E6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x636F4C6F69647561;
      break;
    case 4:
      v3 = 0x546F69647561;
      goto LABEL_11;
    case 5:
      result = 0x7265736F706D6F63;
      break;
    case 6:
      result = 0x50746E65746E6F63;
      break;
    case 7:
      result = 0x52746E65746E6F63;
      break;
    case 8:
      result = 0x6867697279706F63;
      break;
    case 9:
      result = 0x626D754E63736964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6169726F74696465;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6D614E65726E6567;
      break;
    case 14:
      result = 0x6964657243736168;
      break;
    case 15:
      result = 0x636972794C736168;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 1668445033;
      break;
    case 21:
    case 23:
      result = 0x746E656D65766F6DLL;
      break;
    case 22:
      result = 0x746E656D65766F6DLL;
      break;
    case 24:
      result = 1701667182;
      break;
    case 25:
      v3 = 0x615079616C70;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 26:
      result = 0x7377656976657270;
      break;
    case 27:
      result = 0x44657361656C6572;
      break;
    case 28:
      result = 0x6D754E6B63617274;
      break;
    case 29:
      result = 0x656D614E6B726F77;
      break;
    case 30:
      result = 0x4F6C616974617073;
      break;
    case 31:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2753315EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27533082C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275331614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27533119C();
  *a1 = result;
  return result;
}

uint64_t sub_27533163C(uint64_t a1)
{
  v2 = sub_27534B4F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275331678(uint64_t a1)
{
  v2 = sub_27534B4F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.SongAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_235_0();
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14();
  v58 = v0[1];
  v59 = *v0;
  v56 = v0[3];
  v57 = v0[2];
  OUTLINED_FUNCTION_179_0();
  memcpy(v14, v15, v16);
  v54 = v0[22];
  v55 = v0[21];
  v52 = v0[25];
  v53 = v0[23];
  v49 = v0[26];
  v50 = v0[27];
  v51 = v0[24];
  v47 = v0[28];
  v48 = v0[29];
  v45 = v0[30];
  v46 = v0[31];
  v43 = v0[32];
  v44 = *(v0 + 264);
  v42 = *(v0 + 280);
  v40 = v0[36];
  v41 = v0[34];
  v38 = v0[38];
  v39 = v0[37];
  v36 = *(v0 + 313);
  v37 = *(v0 + 312);
  v35 = *(v0 + 314);
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_355();
  memcpy(v17, v18, v19);
  OUTLINED_FUNCTION_327();
  v33 = v0[74];
  v34 = v0[75];
  memcpy(v68, v0 + 76, 0x98uLL);
  v20 = *(v0 + 760);
  v21 = v4[4];
  OUTLINED_FUNCTION_67_0(v4, v4[3]);
  sub_27534B4F8();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  LOBYTE(v61[0]) = 0;
  sub_2753B75F8();
  if (v1)
  {
    v22 = *(v10 + 8);
    v23 = OUTLINED_FUNCTION_306();
    v24(v23);
  }

  else
  {
    OUTLINED_FUNCTION_166_0(1);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    memcpy(v65, v66, sizeof(v65));
    v64[135] = 2;
    sub_27534B40C(v66, v61, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    sub_2753B7638();
    memcpy(v64, v65, 0x81uLL);
    sub_27534B488(v64, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_166_0(3);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    v61[0] = v53;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v25, v26, v27);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v28);
    OUTLINED_FUNCTION_391();
    sub_2753B7638();
    OUTLINED_FUNCTION_166_0(5);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(6);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(7);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(8);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(9);
    OUTLINED_FUNCTION_165_0();
    sub_2753B7628();
    OUTLINED_FUNCTION_166_0(10);
    OUTLINED_FUNCTION_165_0();
    sub_2753B7648();
    v61[0] = v40;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_391();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v61[0] = v39;
    OUTLINED_FUNCTION_391();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v61[0] = v38;
    OUTLINED_FUNCTION_391();
    sub_2753B7638();
    OUTLINED_FUNCTION_347(14);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(15);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(16);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(17);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(18);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(19);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_166_0(20);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(21);
    OUTLINED_FUNCTION_303();
    sub_2753B7628();
    OUTLINED_FUNCTION_166_0(22);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(23);
    OUTLINED_FUNCTION_303();
    sub_2753B7628();
    OUTLINED_FUNCTION_166_0(24);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    memcpy(v63, v67, sizeof(v63));
    v62[151] = 25;
    sub_27534B40C(v67, v61, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    OUTLINED_FUNCTION_249();
    sub_2753B7638();
    memcpy(v62, v63, 0x91uLL);
    sub_27534B488(v62, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    v61[0] = v32;
    v60[0] = 26;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v29, v30, v31);
    sub_27534B5A0();
    OUTLINED_FUNCTION_391();
    OUTLINED_FUNCTION_249();
    sub_2753B7638();
    OUTLINED_FUNCTION_166_0(27);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(28);
    OUTLINED_FUNCTION_303();
    sub_2753B7628();
    OUTLINED_FUNCTION_166_0(29);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    memcpy(v61, v68, sizeof(v61));
    v60[159] = 30;
    sub_27534B40C(v68, v60, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    sub_275317044();
    OUTLINED_FUNCTION_249();
    sub_2753B7638();
    memcpy(v60, v61, 0x98uLL);
    sub_27534B488(v60, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    (*(v10 + 8))(v2);
  }

  OUTLINED_FUNCTION_61();
}

void MediaAPI.SongAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v3;
  OUTLINED_FUNCTION_235_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_70_2();
  sub_27534B348(v150);
  memcpy(v149, v150, sizeof(v149));
  v147 = 1;
  v145 = 1;
  v143 = 1;
  v141 = 1;
  sub_27534B690(v151);
  memcpy(v139, v151, sizeof(v139));
  v138 = 1;
  sub_27534B698(v152);
  memcpy(v137, v152, sizeof(v137));
  v15 = *(v2 + 24);
  v16 = *(v2 + 32);
  v101 = v2;
  v17 = OUTLINED_FUNCTION_433();
  v19 = __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_27534B4F8();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_325();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_160_1();
    OUTLINED_FUNCTION_40_2();
    __swift_destroy_boxed_opaque_existential_1(v101);
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = v11;
    OUTLINED_FUNCTION_407();
    *v121 = *v148;
    OUTLINED_FUNCTION_217_0(v127);
    *&v121[3] = *&v148[3];
    v122 = v19;
    v123 = 0;
    v124 = 0;
    v125 = v4;
    OUTLINED_FUNCTION_185_0();
    v126 = v147;
    *&v127[3] = v146;
    v128 = v103;
    v129 = v145;
    OUTLINED_FUNCTION_136_2(v144);
    v130 = v143;
    OUTLINED_FUNCTION_321(v142);
    v131 = v141;
    OUTLINED_FUNCTION_328(v140);
    OUTLINED_FUNCTION_438();
    OUTLINED_FUNCTION_320(v20);
    v132 = v138;
    OUTLINED_FUNCTION_437();
    v133 = v21;
    v134 = v79;
    v135 = v88;
    OUTLINED_FUNCTION_427();
    v136 = 2;
  }

  else
  {
    LOBYTE(v117) = 0;
    v67 = sub_2753B7518();
    v68 = v22;
    OUTLINED_FUNCTION_47_2(1);
    v65 = sub_2753B7518();
    v66 = v23;
    v115[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_322();
    sub_2753B7558();
    memcpy(v114, v116, sizeof(v114));
    memcpy(v115, v149, 0x81uLL);
    sub_27534B488(v115, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v149, v114, sizeof(v149));
    OUTLINED_FUNCTION_47_2(3);
    v63 = sub_2753B7518();
    v64 = v24;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v25, v26, v27);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v28);
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_322();
    sub_2753B7558();
    v29 = v117;
    OUTLINED_FUNCTION_47_2(5);
    v62 = sub_2753B7518();
    v100 = v30;
    OUTLINED_FUNCTION_47_2(6);
    v98 = sub_2753B7518();
    v99 = v31;
    OUTLINED_FUNCTION_47_2(7);
    v96 = sub_2753B7518();
    v97 = v32;
    OUTLINED_FUNCTION_47_2(8);
    v94 = sub_2753B7518();
    v95 = v33;
    OUTLINED_FUNCTION_47_2(9);
    v105 = sub_2753B7548();
    v147 = v34 & 1;
    OUTLINED_FUNCTION_7_3(10);
    v104 = sub_2753B7568();
    v145 = v35 & 1;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_246();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v93 = v117;
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_246();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v92 = v117;
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v91 = v117;
    OUTLINED_FUNCTION_7_3(14);
    v102 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(15);
    v73 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(16);
    v72 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(17);
    v71 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(18);
    v70 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(19);
    v74 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(20);
    v82 = sub_2753B7518();
    v86 = v36;
    OUTLINED_FUNCTION_7_3(21);
    v83 = sub_2753B7548();
    v143 = v37 & 1;
    OUTLINED_FUNCTION_7_3(22);
    v81 = sub_2753B7518();
    v87 = v38;
    OUTLINED_FUNCTION_7_3(23);
    v85 = sub_2753B7548();
    v141 = v39 & 1;
    OUTLINED_FUNCTION_7_3(24);
    v84 = sub_2753B7518();
    v90 = v40;
    v112[151] = 25;
    sub_27534B76C();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    memcpy(v111, v113, sizeof(v111));
    memcpy(v112, v139, 0x91uLL);
    sub_27534B488(v112, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v139, v111, sizeof(v139));
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v41, v42, v43);
    v106[0] = 26;
    sub_27534B7C0();
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v75 = v117;
    OUTLINED_FUNCTION_7_3(27);
    v76 = sub_2753B7518();
    v78 = v44;
    OUTLINED_FUNCTION_7_3(28);
    v77 = sub_2753B7548();
    v138 = v45 & 1;
    OUTLINED_FUNCTION_7_3(29);
    v80 = sub_2753B7518();
    v89 = v46;
    v109[159] = 30;
    sub_27534B8B0();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    memcpy(v108, v110, sizeof(v108));
    memcpy(v109, v137, 0x98uLL);
    sub_27534B488(v109, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    memcpy(v137, v108, sizeof(v137));
    v107 = 31;
    OUTLINED_FUNCTION_103_2();
    v47 = sub_2753B7528();
    v48 = OUTLINED_FUNCTION_37_2();
    v49(v48);
    *v106 = v67;
    *&v106[8] = v68;
    *&v106[16] = v65;
    *&v106[24] = v66;
    OUTLINED_FUNCTION_407();
    *&v106[161] = *v148;
    *&v106[164] = *&v148[3];
    *&v106[168] = v63;
    *&v106[176] = v64;
    *&v106[184] = v29;
    *&v106[192] = v62;
    *&v106[200] = v100;
    *&v106[208] = v98;
    *&v106[216] = v99;
    *&v106[224] = v96;
    *&v106[232] = v97;
    *&v106[240] = v94;
    *&v106[248] = v95;
    *&v106[256] = v105;
    v69 = v147;
    v106[264] = v147;
    OUTLINED_FUNCTION_133_2();
    *&v106[268] = v50;
    *&v106[272] = v104;
    v61 = v145;
    v106[280] = v145;
    OUTLINED_FUNCTION_132_1();
    *&v106[284] = v51;
    *&v106[288] = v93;
    *&v106[296] = v92;
    *&v106[304] = v91;
    v106[312] = v102;
    v106[313] = v73;
    v106[314] = v72;
    v106[315] = v71;
    v106[316] = v70;
    v106[317] = v74;
    *&v106[320] = v82;
    *&v106[328] = v86;
    *&v106[336] = v83;
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_266();
    v52 = v143;
    v106[344] = v143;
    *&v106[348] = v142;
    *&v106[352] = v81;
    *&v106[360] = v87;
    *&v106[368] = v85;
    *&v106[380] = v140;
    v53 = v141;
    v106[376] = v141;
    *&v106[384] = v84;
    *&v106[392] = v90;
    memcpy(&v106[400], v139, 0x91uLL);
    OUTLINED_FUNCTION_131_2();
    *&v106[548] = v54;
    *&v106[552] = v75;
    *&v106[560] = v76;
    *&v106[568] = v78;
    *&v106[576] = v77;
    v60 = v138;
    v106[584] = v138;
    OUTLINED_FUNCTION_130_0();
    *&v106[588] = v55;
    *&v106[592] = v80;
    *&v106[600] = v89;
    OUTLINED_FUNCTION_427();
    v106[760] = v47;
    memcpy(v4, v106, 0x2F9uLL);
    sub_275329980(v106, &v117);
    __swift_destroy_boxed_opaque_existential_1(v101);
    v117 = v67;
    v118 = v68;
    v119 = v65;
    v120 = v66;
    OUTLINED_FUNCTION_407();
    v122 = v63;
    v123 = v64;
    v124 = v29;
    v125 = v62;
    *v121 = *v148;
    *&v121[3] = *&v148[3];
    OUTLINED_FUNCTION_185_0();
    v126 = v69;
    OUTLINED_FUNCTION_133_2();
    *&v127[3] = v56;
    v128 = v104;
    v129 = v61;
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_136_2(v57);
    v130 = v52;
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_321(v142);
    v131 = v53;
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_328(v140);
    OUTLINED_FUNCTION_131_2();
    OUTLINED_FUNCTION_320(v58);
    v132 = v60;
    OUTLINED_FUNCTION_130_0();
    v133 = v59;
    v134 = v80;
    v135 = v89;
    OUTLINED_FUNCTION_427();
    v136 = v47;
  }

  sub_275316EA4(&v117);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.LibrarySongAttributes.albumName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
}

void *MediaAPI.LibrarySongAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t MediaAPI.LibrarySongAttributes.audioLocale.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.audioTraits.setter()
{
  result = OUTLINED_FUNCTION_481();
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.composerName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 200);

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.contentProvider.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 216);

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.contentRating.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibrarySongAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 232);

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.copyright.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibrarySongAttributes.copyright.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 248);

  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.editorialNotes.setter(uint64_t a1)
{
  v3 = *(v1 + 288);

  *(v1 + 288) = a1;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.extendedAssetUrls.setter(uint64_t a1)
{
  v3 = *(v1 + 296);

  *(v1 + 296) = a1;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.genreNames.setter(uint64_t a1)
{
  v3 = *(v1 + 304);

  *(v1 + 304) = a1;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.isrc.getter()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibrarySongAttributes.isrc.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 328);

  *(v1 + 320) = v2;
  *(v1 + 328) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.movementName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 360);

  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.name.getter()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibrarySongAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 392);

  *(v1 + 384) = v2;
  *(v1 + 392) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_355();
  v4 = memcpy(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_375(v4, (v0 + 400));
  return OUTLINED_FUNCTION_363(v5, v6, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
}

void *MediaAPI.LibrarySongAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_355();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 400));
}

uint64_t MediaAPI.LibrarySongAttributes.previews.setter(uint64_t a1)
{
  v3 = *(v1 + 552);

  *(v1 + 552) = a1;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.releaseDate.getter()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 568);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibrarySongAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 568);

  *(v1 + 560) = v2;
  *(v1 + 568) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.workName.getter()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 600);

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.LibrarySongAttributes.workName.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 600);

  *(v1 + 592) = v2;
  *(v1 + 600) = v0;
  return result;
}

uint64_t sub_2753337E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7265736F706D6F63 && a2 == 0xEC000000656D614ELL;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x626D754E63736964 && a2 == 0xEA00000000007265;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x80000002753B9320 == a2;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6964657243736168 && a2 == 0xEA00000000007374;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x636972794C736168 && a2 == 0xE900000000000073;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000002753B9600 == a2;
                                  if (v21 || (sub_2753B7718() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x80000002753B9620 == a2;
                                    if (v22 || (sub_2753B7718() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000013 && 0x80000002753B9640 == a2;
                                      if (v23 || (sub_2753B7718() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000019 && 0x80000002753B9660 == a2;
                                        if (v24 || (sub_2753B7718() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 1668445033 && a2 == 0xE400000000000000;
                                          if (v25 || (sub_2753B7718() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x746E656D65766F6DLL && a2 == 0xED0000746E756F43;
                                            if (v26 || (sub_2753B7718() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x746E656D65766F6DLL && a2 == 0xEC000000656D614ELL;
                                              if (v27 || (sub_2753B7718() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x746E656D65766F6DLL && a2 == 0xEE007265626D754ELL;
                                                if (v28 || (sub_2753B7718() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                                  if (v29 || (sub_2753B7718() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                                    if (v30 || (sub_2753B7718() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                                      if (v31 || (sub_2753B7718() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                                        if (v32 || (sub_2753B7718() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                                          if (v33 || (sub_2753B7718() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else if (a1 == 0x656D614E6B726F77 && a2 == 0xE800000000000000)
                                                          {

                                                            return 29;
                                                          }

                                                          else
                                                          {
                                                            v35 = sub_2753B7718();

                                                            if (v35)
                                                            {
                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              return 30;
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
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2753340C8(char a1)
{
  result = 0x6D614E6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x636F4C6F69647561;
      break;
    case 4:
      v3 = 0x546F69647561;
      goto LABEL_11;
    case 5:
      result = 0x7265736F706D6F63;
      break;
    case 6:
      result = 0x50746E65746E6F63;
      break;
    case 7:
      result = 0x52746E65746E6F63;
      break;
    case 8:
      result = 0x6867697279706F63;
      break;
    case 9:
      result = 0x626D754E63736964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6169726F74696465;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6D614E65726E6567;
      break;
    case 14:
      result = 0x6964657243736168;
      break;
    case 15:
      result = 0x636972794C736168;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 1668445033;
      break;
    case 21:
    case 23:
      result = 0x746E656D65766F6DLL;
      break;
    case 22:
      result = 0x746E656D65766F6DLL;
      break;
    case 24:
      result = 1701667182;
      break;
    case 25:
      v3 = 0x615079616C70;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 26:
      result = 0x7377656976657270;
      break;
    case 27:
      result = 0x44657361656C6572;
      break;
    case 28:
      result = 0x6D754E6B63617274;
      break;
    case 29:
      result = 0x656D614E6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2753344C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753337E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2753344EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2753340C0();
  *a1 = result;
  return result;
}

uint64_t sub_275334514(uint64_t a1)
{
  v2 = sub_27534B904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275334550(uint64_t a1)
{
  v2 = sub_27534B904();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.LibrarySongAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_226_0();
  sub_27534DC8C(0, v4, v5, v6, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30();
  v58 = v0[1];
  v59 = *v0;
  v56 = v0[3];
  v57 = v0[2];
  OUTLINED_FUNCTION_179_0();
  memcpy(v13, v14, v15);
  v54 = v0[22];
  v55 = v0[21];
  v52 = v0[25];
  v53 = v0[23];
  v49 = v0[26];
  v50 = v0[27];
  v51 = v0[24];
  v47 = v0[28];
  v48 = v0[29];
  v45 = v0[30];
  v46 = v0[31];
  v43 = v0[32];
  v44 = *(v0 + 264);
  v42 = *(v0 + 280);
  v40 = v0[36];
  v41 = v0[34];
  v38 = v0[38];
  v39 = v0[37];
  v36 = *(v0 + 313);
  v37 = *(v0 + 312);
  v35 = *(v0 + 314);
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_355();
  memcpy(v16, v17, v18);
  OUTLINED_FUNCTION_327();
  v34 = v0[74];
  v19 = v0[75];
  v20 = *(v3 + 24);
  v21 = *(v3 + 32);
  v22 = OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_67_0(v22, v23);
  sub_27534B904();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_184_0();
  sub_2753B7808();
  LOBYTE(v61[0]) = 0;
  sub_2753B75F8();
  if (v1)
  {
    v24 = *(v9 + 8);
    v25 = OUTLINED_FUNCTION_306();
    v26(v25);
  }

  else
  {
    OUTLINED_FUNCTION_188_0(1);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    memcpy(v63, v64, sizeof(v63));
    v62[135] = 2;
    sub_27534B40C(v64, v61, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    sub_2753B7638();
    memcpy(v62, v63, 0x81uLL);
    sub_27534B488(v62, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_188_0(3);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    v61[0] = v53;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v27, v28, v29);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v30);
    OUTLINED_FUNCTION_453();
    sub_2753B7638();
    OUTLINED_FUNCTION_188_0(5);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(6);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(7);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(8);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(9);
    OUTLINED_FUNCTION_165_0();
    sub_2753B7628();
    OUTLINED_FUNCTION_188_0(10);
    OUTLINED_FUNCTION_165_0();
    sub_2753B7648();
    v61[0] = v40;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_453();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v61[0] = v39;
    OUTLINED_FUNCTION_453();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v61[0] = v38;
    v60[0] = 13;
    OUTLINED_FUNCTION_453();
    sub_2753B7638();
    OUTLINED_FUNCTION_343(14);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(15);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(16);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(17);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(18);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(19);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_188_0(20);
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(21);
    OUTLINED_FUNCTION_301();
    sub_2753B7628();
    OUTLINED_FUNCTION_188_0(22);
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(23);
    OUTLINED_FUNCTION_301();
    sub_2753B7628();
    OUTLINED_FUNCTION_188_0(24);
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v61);
    v60[151] = 25;
    sub_27534B40C(&v65, v60, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    OUTLINED_FUNCTION_302();
    sub_2753B7638();
    memcpy(v60, v61, 0x91uLL);
    sub_27534B488(v60, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v31, v32, v33);
    sub_27534B5A0();
    OUTLINED_FUNCTION_302();
    sub_2753B7638();
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    OUTLINED_FUNCTION_301();
    sub_2753B7628();
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    (*(v9 + 8))(0);
  }

  OUTLINED_FUNCTION_61();
}

void MediaAPI.LibrarySongAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_317(v6, v7, v8, v9, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30();
  sub_27534B348(v146);
  memcpy(v145, v146, sizeof(v145));
  v143 = 1;
  v141 = 1;
  v139 = 1;
  v137 = 1;
  sub_27534B690(&v147);
  OUTLINED_FUNCTION_331(v135);
  v134 = 1;
  v14 = v3[3];
  v15 = v3[4];
  OUTLINED_FUNCTION_148_1();
  sub_27534B904();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_325();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_27_2();
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_39_2();
    __swift_destroy_boxed_opaque_existential_1(v3);
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = v1;
    OUTLINED_FUNCTION_408();
    OUTLINED_FUNCTION_217_0(v121);
    *v115 = *v144;
    *&v115[3] = *&v144[3];
    v116 = v15;
    v117 = 0;
    v118 = 0;
    v119 = v5;
    OUTLINED_FUNCTION_186_0();
    v120 = v143;
    *&v121[3] = v142;
    v122 = v100;
    v123 = v141;
    OUTLINED_FUNCTION_137_2(v140);
    v124 = v139;
    OUTLINED_FUNCTION_324(v138);
    v125 = v137;
    OUTLINED_FUNCTION_329(v136);
    OUTLINED_FUNCTION_438();
    v126 = v16;
    v127 = v73;
    v128 = v75;
    v129 = v77;
    v130 = v79;
    v131 = v134;
    OUTLINED_FUNCTION_437();
    v132 = v17;
    v133 = 0u;
  }

  else
  {
    LOBYTE(v111) = 0;
    v65 = sub_2753B7518();
    v66 = v18;
    OUTLINED_FUNCTION_50_2(1);
    v63 = sub_2753B7518();
    v64 = v19;
    v109[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    memcpy(v108, v110, sizeof(v108));
    memcpy(v109, v145, 0x81uLL);
    sub_27534B488(v109, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v145, v108, sizeof(v145));
    OUTLINED_FUNCTION_50_2(3);
    v61 = sub_2753B7518();
    v62 = v20;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v21, v22, v23);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v24);
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v25 = v111;
    OUTLINED_FUNCTION_50_2(5);
    v60 = sub_2753B7518();
    v98 = v26;
    OUTLINED_FUNCTION_50_2(6);
    v96 = sub_2753B7518();
    v97 = v27;
    OUTLINED_FUNCTION_50_2(7);
    v94 = sub_2753B7518();
    v95 = v28;
    v59 = v25;
    OUTLINED_FUNCTION_50_2(8);
    v92 = sub_2753B7518();
    v93 = v29;
    OUTLINED_FUNCTION_50_2(9);
    v102 = sub_2753B7548();
    v143 = v30 & 1;
    OUTLINED_FUNCTION_8_4(10);
    v101 = sub_2753B7568();
    v141 = v31 & 1;
    sub_27534DB84(0, &qword_2809C0C60);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    v91 = v111;
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    v90 = v111;
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    v89 = v111;
    OUTLINED_FUNCTION_8_4(14);
    v99 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(15);
    v71 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(16);
    v70 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(17);
    v69 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(18);
    v68 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(19);
    v72 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(20);
    v81 = sub_2753B7518();
    v86 = v32;
    OUTLINED_FUNCTION_8_4(21);
    v83 = sub_2753B7548();
    v139 = v33 & 1;
    OUTLINED_FUNCTION_8_4(22);
    v82 = sub_2753B7518();
    v87 = v34;
    OUTLINED_FUNCTION_8_4(23);
    v85 = sub_2753B7548();
    v137 = v35 & 1;
    OUTLINED_FUNCTION_8_4(24);
    v84 = sub_2753B7518();
    v88 = v36;
    v106[151] = 25;
    sub_27534B76C();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    memcpy(v105, v107, sizeof(v105));
    memcpy(v106, v135, 0x91uLL);
    sub_27534B488(v106, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v135, v105, 0x91uLL);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v37, v38, v39);
    LOBYTE(v103[0]) = 26;
    sub_27534B7C0();
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    v74 = v111;
    OUTLINED_FUNCTION_8_4(27);
    v76 = sub_2753B7518();
    v78 = v40;
    OUTLINED_FUNCTION_8_4(28);
    v80 = sub_2753B7548();
    v134 = v41 & 1;
    v104 = 29;
    OUTLINED_FUNCTION_134_2();
    v42 = sub_2753B7518();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_38_1();
    v46(v45);
    v103[0] = v65;
    v103[1] = v66;
    v103[2] = v63;
    v103[3] = v64;
    OUTLINED_FUNCTION_408();
    *(&v103[20] + 1) = *v144;
    HIDWORD(v103[20]) = *&v144[3];
    v103[21] = v61;
    v103[22] = v62;
    v103[23] = v59;
    v103[24] = v60;
    v103[25] = v98;
    v103[26] = v96;
    v103[27] = v97;
    v103[28] = v94;
    v103[29] = v95;
    v103[30] = v92;
    v103[31] = v93;
    v103[32] = v102;
    v67 = v143;
    LOBYTE(v103[33]) = v143;
    OUTLINED_FUNCTION_133_2();
    HIDWORD(v103[33]) = v47;
    v103[34] = v101;
    v58 = v141;
    LOBYTE(v103[35]) = v141;
    OUTLINED_FUNCTION_132_1();
    HIDWORD(v103[35]) = v48;
    v103[36] = v91;
    v103[37] = v90;
    v103[38] = v89;
    LOBYTE(v103[39]) = v99;
    BYTE1(v103[39]) = v71;
    BYTE2(v103[39]) = v70;
    BYTE3(v103[39]) = v69;
    BYTE4(v103[39]) = v68;
    BYTE5(v103[39]) = v72;
    v103[40] = v81;
    v103[41] = v86;
    v103[42] = v83;
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_266();
    v49 = v139;
    LOBYTE(v103[43]) = v139;
    HIDWORD(v103[43]) = v138;
    v103[44] = v82;
    v103[45] = v87;
    v103[46] = v85;
    HIDWORD(v103[47]) = v136;
    v50 = v137;
    LOBYTE(v103[47]) = v137;
    v103[48] = v84;
    v103[49] = v88;
    memcpy(&v103[50], v135, 0x91uLL);
    OUTLINED_FUNCTION_131_2();
    HIDWORD(v103[68]) = v51;
    v103[69] = v74;
    v103[70] = v76;
    v103[71] = v78;
    v103[72] = v80;
    v57 = v134;
    LOBYTE(v103[73]) = v134;
    OUTLINED_FUNCTION_130_0();
    HIDWORD(v103[73]) = v52;
    v103[74] = v42;
    v103[75] = v44;
    memcpy(v5, v103, 0x260uLL);
    sub_27534B988(v103, &v111);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v111 = v65;
    v112 = v66;
    v113 = v63;
    v114 = v64;
    OUTLINED_FUNCTION_408();
    v116 = v61;
    v117 = v62;
    v118 = v59;
    v119 = v60;
    *v115 = *v144;
    *&v115[3] = *&v144[3];
    OUTLINED_FUNCTION_186_0();
    v120 = v67;
    OUTLINED_FUNCTION_133_2();
    *&v121[3] = v53;
    v122 = v101;
    v123 = v58;
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_137_2(v54);
    v124 = v49;
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_324(v138);
    v125 = v50;
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_329(v136);
    OUTLINED_FUNCTION_131_2();
    v126 = v55;
    v127 = v74;
    v128 = v76;
    v129 = v78;
    v130 = v80;
    v131 = v57;
    OUTLINED_FUNCTION_130_0();
    v132 = v56;
    *&v133 = v42;
    *(&v133 + 1) = v44;
  }

  sub_27534B958(&v111);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}