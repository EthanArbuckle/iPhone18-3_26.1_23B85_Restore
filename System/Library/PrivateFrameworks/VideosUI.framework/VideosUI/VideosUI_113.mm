uint64_t sub_1E3F9339C()
{
  sub_1E3F92F20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3F933F0()
{
  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 1112))())
  {
    sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_8();
  (*(v1 + 1136))();
  OUTLINED_FUNCTION_8();
  (*(v2 + 1216))();
  v3 = OUTLINED_FUNCTION_34();
  sub_1E3FE3268(v3, v4, v5);
}

uint64_t sub_1E3F934F0()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E3F8F2E0();
  sub_1E3E37F30();
  OUTLINED_FUNCTION_22_6();
  v1 = OUTLINED_FUNCTION_33_14();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, v4, "SportsCanonicalBannerScoreboardViewModel: Logo image download failed, falling back to abbreviations", v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v6 = OUTLINED_FUNCTION_13_8();
  return v7(v6);
}

void sub_1E3F93634()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  v17 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E32ADE38();
  v12 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  swift_weakInit();
  v18[4] = v4;
  v18[5] = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1E378AEA4;
  v18[3] = v2;
  v14 = _Block_copy(v18);

  sub_1E4203FE4();
  v18[0] = MEMORY[0x1E69E7CC0];
  sub_1E3F9C2EC(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v11, v0, v14);
  _Block_release(v14);

  v15 = OUTLINED_FUNCTION_11_6();
  v16(v15);
  (*(v7 + 8))(v11, v17);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F938C4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v29 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_36();
  (*(v8 + 1096))();
  if (v9)
  {
    if (v4 == 2 || (sub_1E3849AAC(), (sub_1E4205E84() & 1) == 0))
    {
      v10 = *(**sub_1E3FF7F7C() + 176);

      v11 = OUTLINED_FUNCTION_123_1();
      v10(v11);
    }

    sub_1E3F8FC2C();
    if (v4 != 2)
    {
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000012, 0x80000001E428B420);
      sub_1E4207614();
    }

    OUTLINED_FUNCTION_111();
    v12 += 256;
    v13 = *v12;
    v14 = (*v12)();
    v15 = sub_1E3E37F30();
    (*(v6 + 16))(v1, v15, v29);

    v16 = sub_1E41FFC94();
    v17 = sub_1E42067E4();

    if (os_log_type_enabled(v16, v17))
    {
      v28 = v13;
      v18 = v6;
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v19 = 67109378;
      *(v19 + 4) = v14 & 1;
      *(v19 + 8) = 2080;
      v20 = OUTLINED_FUNCTION_24_4();
      v23 = sub_1E3270FC8(v20, v21, v22);

      *(v19 + 10) = v23;
      _os_log_impl(&dword_1E323F000, v16, v17, "SportsCanonicalBannerScoreboardViewModel.setupScoreboard: show scores: %{BOOL}d %s", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v24 = (*(v18 + 8))(v1, v29);
      v25 = (v28)(v24);
    }

    else
    {

      v26 = (*(v6 + 8))(v1, v29);
      v25 = (v13)(v26);
    }

    v27 = *v2;
    if (v25)
    {
      (*(v27 + 2368))();
    }

    else
    {
      (*(v27 + 2376))(0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F93CA4()
{
  sub_1E4205004();
  v0 = sub_1E4204FF4();
  sub_1E4204F84();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B568);
  OUTLINED_FUNCTION_29_92(&qword_1EE28A1D8);
  OUTLINED_FUNCTION_114_11();
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_31_80();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_9_2();
  result = (*(v1 + 1096))();
  if (v3)
  {
    OUTLINED_FUNCTION_49_4();
    v4 = *(**sub_1E3847108() + 104);

    v5 = OUTLINED_FUNCTION_63_0();
    v4(v5);

    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B570);
    OUTLINED_FUNCTION_29_92(&qword_1EE28A208);
    OUTLINED_FUNCTION_114_11();
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_31_80();
    sub_1E42004C4();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E3F93ECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_106();
    v5 = sub_1E4206474();
    OUTLINED_FUNCTION_56_3(v5);
    OUTLINED_FUNCTION_5_10();
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = a1;
    v7 = OUTLINED_FUNCTION_103_13();
    sub_1E376FE58(v7, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1E3F93FA0()
{
  OUTLINED_FUNCTION_24();
  v1 = **(v0 + 16) + 2352;
  *(v0 + 24) = *v1;
  *(v0 + 32) = v1 & 0xFFFFFFFFFFFFLL | 0x2190000000000000;
  sub_1E4206434();
  *(v0 + 40) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F94054, v3, v2);
}

uint64_t sub_1E3F94054()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 24);

  v1(2);
  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3F940C0(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_50_1();
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_118();
    v10 = sub_1E4206474();
    OUTLINED_FUNCTION_56_3(v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = a2;
    *(v11 + 40) = v7;
    *(v11 + 48) = v6;
    *(v11 + 56) = v8;

    v12 = OUTLINED_FUNCTION_103_13();
    sub_1E376FE58(v12, v13, v14, v15, v11);
  }

  return result;
}

uint64_t sub_1E3F941B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 16) = a4;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3F941CC()
{
  OUTLINED_FUNCTION_24();
  v1 = **(v0 + 16) + 2352;
  *(v0 + 24) = *v1;
  *(v0 + 32) = v1 & 0xFFFFFFFFFFFFLL | 0x2190000000000000;
  sub_1E4206434();
  *(v0 + 40) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F94280, v3, v2);
}

uint64_t sub_1E3F94280()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v2(v1 & 1);
  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3F942F0()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 2264))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return sub_1E3FE4198();
}

uint64_t sub_1E3F94378(char a1)
{
  OUTLINED_FUNCTION_8();
  if ((*(v3 + 2264))())
  {
    OUTLINED_FUNCTION_49_4();
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(a1 & 1, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  return sub_1E3FE3F18();
}

void sub_1E3F94408()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v106 = v3;
  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_112_15();
  v7 = MEMORY[0x1E69E7CC0];
  *v8 = MEMORY[0x1E69E7CC0];

  v6(&v117, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = OUTLINED_FUNCTION_112_15();
  *v10 = v7;

  v9(&v117, 0);

  v11 = v5;

  OUTLINED_FUNCTION_3_0();
  *(v0 + 288) = v7;

  OUTLINED_FUNCTION_3_0();
  *(v0 + 280) = 0;

  v115 = 0;
  v116 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088);
  v13 = sub_1E4206314();
  v13[2] = 3;
  v13[4] = 0;
  v105 = v13 + 4;
  v13[5] = 0;
  v13[6] = 0;
  v113 = v12;
  v14 = sub_1E4206314();
  v14[2] = 2;
  v14[4] = 0;
  v104 = v14 + 4;
  v14[5] = 0;
  v114 = v2;
  v107 = v14;
  v110 = v5;
  v112 = sub_1E32AE9B0(v5);
  if (v112)
  {
    v111 = v5 & 0xC000000000000001;
    OUTLINED_FUNCTION_3_0();
    v15 = 0;
    v109 = v5 & 0xFFFFFFFFFFFFFF8;
    v108 = v5 + 32;
    while (1)
    {
      if (v111)
      {
        v16 = MEMORY[0x1E6911E60](v15, v11);
        v18 = v16;
      }

      else
      {
        if (v15 >= *(v109 + 16))
        {
          goto LABEL_206;
        }

        v18 = *(v108 + 8 * v15);
      }

      if (__OFADD__(v15++, 1))
      {
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
        goto LABEL_214;
      }

      v20 = v18[49];
      switch(v18[49])
      {
        case 0x11u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v21 = v18;
          }

          else
          {
            v21 = 0;
          }

          if (!v13[2])
          {
            goto LABEL_213;
          }

          v37 = &v120;
          goto LABEL_87;
        case 0x12u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v35 = v18;
          }

          else
          {
            v35 = 0;
          }

          if (v13[2] < 2uLL)
          {
            goto LABEL_211;
          }

          v13[5] = v35;
          goto LABEL_89;
        case 0x13u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v34 = v18;
          }

          else
          {
            v34 = 0;
          }

          if (v13[2] < 3uLL)
          {
            goto LABEL_212;
          }

          v13[6] = v34;
          goto LABEL_89;
        case 0x14u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v21 = v18;
          }

          else
          {
            v21 = 0;
          }

          if (!v14[2])
          {
            goto LABEL_209;
          }

          v37 = &v119;
LABEL_87:
          **(v37 - 32) = v21;
          goto LABEL_89;
        case 0x15u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {

            v33 = v18;
          }

          else
          {
            v33 = 0;
          }

          if (v14[2] < 2uLL)
          {
            goto LABEL_210;
          }

          v14[5] = v33;
          goto LABEL_89;
        case 0x16u:
          goto LABEL_89;
        case 0x17u:
          if (*v18 == _TtC8VideosUI13TextViewModel)
          {
          }

          v12 = v2;
          sub_1E3F8F8DC();
          goto LABEL_89;
        default:
          if ((v20 - 53) < 2)
          {
            if (v106)
            {
              *(v2 + 272) = v18;
            }
          }

          else
          {
            switch(v20)
            {
              case 3:
                if (*v18 != _TtC8VideosUI13TextViewModel)
                {

                  v18 = 0;
                }

                *(v2 + 280) = v18;
                break;
              case 4:
                LOBYTE(v120) = 2;
                (*(*v18 + 776))(&v117, &v120, &unk_1F5D5D528, &off_1F5D5C858);
                if (v119)
                {
                  if (swift_dynamicCast())
                  {
                    v36 = v120;
                    v12 = v121;
                    goto LABEL_94;
                  }
                }

                else
                {
                  sub_1E325F7A8(&v117, &unk_1ECF296E0);
                }

                v36 = 0;
                v12 = 0;
LABEL_94:
                ViewModelKeys.Sports.rawValue.getter(11);
                if (!v12)
                {

                  goto LABEL_102;
                }

                if (v38 == v36 && v12 == v39)
                {

LABEL_110:
                  if (*v18 == _TtC8VideosUI13TextViewModel)
                  {

                    v45 = v18;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  v117 = v45;
                  MEMORY[0x1EEE9AC00](v41);
                  OUTLINED_FUNCTION_1_27();
                  *(v46 - 16) = &v116;
                  v47 = sub_1E3F57524;
LABEL_127:
                  v12 = &v117;
                  sub_1E4148DE0(v47);

                  goto LABEL_138;
                }

                v2 = OUTLINED_FUNCTION_55_46();

                if (v2)
                {

                  OUTLINED_FUNCTION_201();
                  goto LABEL_110;
                }

LABEL_102:
                ViewModelKeys.Sports.rawValue.getter(25);
                if (v12)
                {
                  if (v42 == v36 && v12 == v43)
                  {

                    goto LABEL_123;
                  }

                  v2 = OUTLINED_FUNCTION_55_46();

                  if (v2)
                  {
LABEL_123:

                    v2 = v114;
                    if (*v18 == _TtC8VideosUI13TextViewModel)
                    {

                      v53 = v18;
                    }

                    else
                    {
                      v53 = 0;
                    }

                    v117 = v53;
                    MEMORY[0x1EEE9AC00](v52);
                    OUTLINED_FUNCTION_1_27();
                    *(v54 - 16) = &v115;
                    v47 = sub_1E3F577CC;
                    goto LABEL_127;
                  }
                }

                else
                {
                }

                ViewModelKeys.Sports.rawValue.getter(26);
                if (!v12)
                {

                  goto LABEL_137;
                }

                v50 = v48 == v36 && v12 == v49;
                v2 = v114;
                if (v50)
                {
                }

                else
                {
                  v51 = OUTLINED_FUNCTION_55_46();

                  if ((v51 & 1) == 0)
                  {
LABEL_134:

                    goto LABEL_138;
                  }
                }

                if (*v18 == _TtC8VideosUI13TextViewModel)
                {

                  v55 = v18;
                }

                else
                {
                  v55 = 0;
                }

                v117 = v55;
                v12 = &v117;
                sub_1E4148DE0(sub_1E3F99CC4);

                goto LABEL_134;
              case 235:
                v12 = v18;
                v22 = (*(*v18 + 464))(v16, v17);
                if (v22)
                {
                  v23 = v22;
                }

                else
                {
                  v23 = MEMORY[0x1E69E7CC0];
                }

                if (!(v23 >> 62))
                {
                  v2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v2)
                  {
                    goto LABEL_20;
                  }

LABEL_136:

LABEL_137:
                  OUTLINED_FUNCTION_201();
LABEL_138:
                  v11 = v110;
                  goto LABEL_90;
                }

                v2 = sub_1E4207384();
                if (!v2)
                {
                  goto LABEL_136;
                }

LABEL_20:
                if (v2 >= 1)
                {
                  v24 = 0;
                  while (1)
                  {
                    if ((v23 & 0xC000000000000001) != 0)
                    {
                      v1 = MEMORY[0x1E6911E60](v24, v23);
                    }

                    else
                    {
                      v1 = *(v23 + 8 * v24 + 32);
                    }

                    v25 = *(v1 + 98);
                    switch(v25)
                    {
                      case 15:
                        if (*v1 == _TtC8VideosUI13TextViewModel)
                        {

                          v31 = v1;
                        }

                        else
                        {
                          v31 = 0;
                        }

                        v117 = v31;
                        v32 = sub_1E3F99E20;
                        break;
                      case 16:
                        if (*v1 == _TtC8VideosUI13TextViewModel)
                        {

                          v27 = v1;
                        }

                        else
                        {
                          v27 = 0;
                        }

                        v117 = v27;
                        v32 = sub_1E3F99DA8;
                        break;
                      case 40:
                        type metadata accessor for ImageViewModel();
                        v29 = swift_dynamicCastClass();
                        if (v29)
                        {
                        }

                        v117 = v29;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31990);
                        v30 = sub_1E3F99E98;
                        v12 = &v117;
                        goto LABEL_51;
                      case 238:
                        if (*v1 == _TtC8VideosUI13TextViewModel)
                        {

                          v28 = v1;
                        }

                        else
                        {
                          v28 = 0;
                        }

                        v117 = v28;
                        v32 = sub_1E3F99F10;
                        break;
                      case 237:
                        if (*v1 == _TtC8VideosUI13TextViewModel)
                        {

                          v26 = v1;
                        }

                        else
                        {
                          v26 = 0;
                        }

                        v117 = v26;
                        v32 = sub_1E3F99F24;
                        break;
                      default:
                        goto LABEL_52;
                    }

                    v30 = v32;
                    v12 = &v117;
LABEL_51:
                    sub_1E4148DE0(v30);

LABEL_52:

                    if (v2 == ++v24)
                    {

                      OUTLINED_FUNCTION_201();
                      v14 = v107;
                      goto LABEL_138;
                    }
                  }
                }

LABEL_214:
                __break(1u);
LABEL_215:
                v99 = MEMORY[0x1E6911E60](0, v12);
                goto LABEL_193;
            }
          }

LABEL_89:

LABEL_90:
          if (v15 == v112)
          {
            goto LABEL_139;
          }

          break;
      }
    }
  }

LABEL_139:
  OUTLINED_FUNCTION_30_1();
  v59 = (*(v56 + 1376))(v57, v58);
  sub_1E32AE9B0(v59);
  OUTLINED_FUNCTION_11_5();

  if (v11)
  {
LABEL_141:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_30_1();
  v63 = (*(v60 + 1400))(v61, v62);
  sub_1E32AE9B0(v63);
  OUTLINED_FUNCTION_11_5();

  v124 = MEMORY[0x1E69E7CC0];
  v12 = v110;
  v93 = sub_1E32AE9B0(v110);
  v2 = 0;
  v94 = v12 & 0xC000000000000001;
  v95 = v12 & 0xFFFFFFFFFFFFFF8;
  while (v93 != v2)
  {
    if (v94)
    {
      v1 = MEMORY[0x1E6911E60](v2, v110);
    }

    else
    {
      if (v2 >= *(v95 + 16))
      {
        goto LABEL_208;
      }

      v1 = *(v110 + 8 * v2 + 32);
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_207;
    }

    v123 = *(v1 + 98);
    v122 = 235;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_168();
    sub_1E4206254();
    OUTLINED_FUNCTION_168();
    sub_1E4206254();
    v12 = v118;
    if (v117 == v120 && v118 == v121)
    {
    }

    else
    {
      v97 = sub_1E42079A4();

      if ((v97 & 1) == 0)
      {

        goto LABEL_186;
      }
    }

    v12 = &v124;
    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
LABEL_186:
    ++v2;
    v14 = v107;
  }

  v12 = v124;
  if (sub_1E32AE9B0(v124) != 1)
  {

    OUTLINED_FUNCTION_201();
    goto LABEL_141;
  }

  sub_1E32AE9B0(v12);
  OUTLINED_FUNCTION_201();
  v1 = MEMORY[0x1E69E7CC0];
  if (!v98)
  {
    goto LABEL_195;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_215;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v99 = *(v12 + 32);

LABEL_193:

    sub_1E39C408C(236);
    OUTLINED_FUNCTION_38();

    if (v99 && *v99 != _TtC8VideosUI13TextViewModel)
    {
LABEL_195:
    }

LABEL_142:
    v12 = v2;
    sub_1E3F8FA84();
    OUTLINED_FUNCTION_30_1();
    (*(v64 + 2344))(v65, v66);
    if (TVAppFeature.isEnabled.getter(10))
    {
      v67 = 0;
      v117 = v1;
      v68 = v13[2];
      while (v68 != v67)
      {
        if (v67 >= v13[2])
        {
          goto LABEL_203;
        }

        v2 = v13[v67++ + 4];
        if (v2)
        {

          v12 = &v117;
          MEMORY[0x1E6910BF0](v69);
          v70 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v70 >> 1)
          {
            OUTLINED_FUNCTION_35(v70);
            sub_1E42062F4();
          }

          sub_1E4206324();
        }
      }

      v86 = 0;
      v117 = v1;
      v87 = v14[2];
      while (v87 != v86)
      {
        if (v86 >= v14[2])
        {
          goto LABEL_204;
        }

        v2 = v14[v86++ + 4];
        if (v2)
        {

          v12 = &v117;
          MEMORY[0x1E6910BF0](v88);
          OUTLINED_FUNCTION_102_17();
          if (v85)
          {
            OUTLINED_FUNCTION_35(v89);
            sub_1E42062F4();
          }

          OUTLINED_FUNCTION_24_4();
          sub_1E4206324();
          v1 = v117;
        }
      }

      goto LABEL_172;
    }

    OUTLINED_FUNCTION_30_1();
    if ((*(v71 + 1216))(v72, v73))
    {
      v74 = v116;
      if (v116)
      {
        static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
        OUTLINED_FUNCTION_8();
        (*(v75 + 328))(v76, v77);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BD0;
      v79 = v115;
      *(inited + 32) = v74;
      *(inited + 40) = v79;
      v80 = *(*v2 + 1664);

      v12 = v2;
      v82 = 0;
      *(inited + 48) = v80(v81);
      v117 = v1;
      while (v82 != 3)
      {
        if (v82 > 2)
        {
          goto LABEL_205;
        }

        v2 = *(inited + 8 * v82++ + 32);
        if (v2)
        {

          v12 = &v117;
          MEMORY[0x1E6910BF0](v83);
          OUTLINED_FUNCTION_102_17();
          if (v85)
          {
            OUTLINED_FUNCTION_35(v84);
            sub_1E42062F4();
          }

          OUTLINED_FUNCTION_24_4();
          sub_1E4206324();
          v1 = v117;
        }
      }

      swift_setDeallocating();
      sub_1E3CAF5C0();

      sub_1E3AF46D0();
LABEL_172:
      sub_1E3F8E734();
    }

    else
    {

      v90 = v116;
      if (v116)
      {
        v91 = v115;
        if (v115)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
          v92 = swift_allocObject();
          *(v92 + 16) = xmmword_1E429DCC0;
          *(v92 + 32) = v90;
          *(v92 + 40) = v91;
          swift_retain_n();
          swift_retain_n();
          sub_1E3AF46D0();
          OUTLINED_FUNCTION_20_2();
          sub_1E3F8E734();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
          OUTLINED_FUNCTION_5_10();
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1E4298880;
          *(v103 + 32) = v90;
          swift_retain_n();
          sub_1E3AF46D0();
          OUTLINED_FUNCTION_20_2();
          sub_1E3F8E734();
        }
      }

      else
      {
        OUTLINED_FUNCTION_30_1();
        if (!(*(v100 + 1328))(v101, v102))
        {
          goto LABEL_201;
        }

        sub_1E3F8E734();
        sub_1E3F8EF90();
      }
    }

LABEL_201:

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3F9577C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3F95854()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 1616))();
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  while (1)
  {
    if (v4 == v3)
    {
      v5 = 3;
LABEL_7:

      return v5;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v5 = *(v2 + v3++ + 32);
    result = OUTLINED_FUNCTION_189_0(v5);
    if (result)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3F958F0(uint64_t a1)
{
  if (a1 < 0)
  {
    sub_1E4205044();
  }

  else
  {
    v1 = sub_1E42056A4();
    sub_1E4205044();
  }
}

void sub_1E3F95964()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_247();
  sub_1E4205834();
  OUTLINED_FUNCTION_8_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v9 = sub_1E4205914();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  if ((v3 & 0x8000000000000000) != 0)
  {
    sub_1E376DBD0();
    OUTLINED_FUNCTION_8();
    v18 = *(v17 + 200);

    v20 = v18(v19);

    sub_1E4205854();

    sub_1E376D170();
    (*(v7 + 8))(v1, v0);
  }

  else
  {
    type metadata accessor for SportsRunningClockViewModel();
    (*(v11 + 16))(v15, v5, v9);

    v16 = v3;
    sub_1E3F95B54();
    sub_1E4205304();
  }

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F95B54()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  OUTLINED_FUNCTION_247();
  sub_1E4205914();
  OUTLINED_FUNCTION_8_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v8 = *(v0 + qword_1ECF71938);
  v9 = v2;
  v8();

  v10 = sub_1E42053A4();

  OUTLINED_FUNCTION_77();
  v11();
  sub_1E4205924();

  (*(v6 + 8))(v4, v1);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F95C80()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_118();
  v6 = sub_1E4205914();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if ((v1 & 0x8000000000000000) != 0)
  {
    type metadata accessor for TextViewModel();
    sub_1E3F95964();
    v21[3] = MEMORY[0x1E69E6158];
    v21[0] = v14;
    v21[1] = v15;

    v16 = sub_1E3C27638(4, v21, v5, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = v16;
    v21[0] = MEMORY[0x1E69E7CC0];

    if (*(inited + 32))
    {

      MEMORY[0x1E6910BF0](v18);
      OUTLINED_FUNCTION_18_63();
      if (v20)
      {
        OUTLINED_FUNCTION_35(v19);
        sub_1E42062F4();
      }

      sub_1E4206324();
    }

    swift_setDeallocating();
    sub_1E3CAF5C0();
    sub_1E3AF46D0();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    type metadata accessor for SportsRunningClockViewModel();
    (*(v8 + 16))(v12, v3, v6);

    v13 = v1;
    sub_1E3F95B54();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F95EB0(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = sub_1E4205054();
  }

  else
  {
    v1 = sub_1E42056A4();
    v2 = sub_1E4205054();
  }

  v3 = sub_1E4205684();

  v4 = sub_1E4205294();
  sub_1E4205514();
}

BOOL sub_1E3F95F4C()
{
  OUTLINED_FUNCTION_106();
  v2 = sub_1E4205074();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  if (v0 < 0 || !sub_1E42056C4())
  {
    return 0;
  }

  else
  {
    v6 = (*(v4 + 104))(v1, *MEMORY[0x1E69D3A28], v2);
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_1_27();
    *(v7 - 16) = v1;
    OUTLINED_FUNCTION_89_16();
    v12 = sub_1E3F8D46C(v8, v9, v10, v11);

    v13 = OUTLINED_FUNCTION_11_6();
    v14(v13);
  }

  return v12;
}

void sub_1E3F96094()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  sub_1E4205AF4();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_9();
  if (*(v3 + 16) == 2)
  {
    v23 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
    v7 = sub_1E383ACA0(0, v23, &off_1F5D8FCF0);
    v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v19 = v8;
    v22 = *(v5 + 72);
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v5 + 72);
    }

    v21 = *MEMORY[0x1E69D3C88];
    v20 = *(v5 + 104);
    v10 = OUTLINED_FUNCTION_69_2();
    v11(v10);
    v12 = MEMORY[0x1E69D3C90];
    v13 = MEMORY[0x1E69D3C90];
    sub_1E3F8D39C(v8 + v9, v1, MEMORY[0x1E69D3C90], &qword_1ECF3D498, MEMORY[0x1E69D3C90]);
    v14 = *(v5 + 8);
    v15 = OUTLINED_FUNCTION_74();
    v14(v15);
    if (sub_1E383ACA0(0, v23, &off_1F5D8FCF0))
    {
      v16 = v22;
    }

    else
    {
      v16 = 0;
    }

    v20(v1, v21, v0);
    sub_1E3F8D39C(v19 + v16, v1, v12, &qword_1ECF3D498, v13);
    v17 = OUTLINED_FUNCTION_74();
    v14(v17);
    sub_1E3F8E9D0();
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E3F8E9D0();
  }
}

void sub_1E3F962DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v95 = v6;
  OUTLINED_FUNCTION_138();
  v103 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v93 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v92 = v13;
  OUTLINED_FUNCTION_138();
  v14 = sub_1E4205914();
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v96 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v90 - v23;
  v25 = v3;
  v26 = sub_1E42056A4();
  sub_1E4205044();

  sub_1E3F90580(v24);
  OUTLINED_FUNCTION_9_2();
  v28 = (*(v27 + 1664))();
  v94 = v8;
  if (v28)
  {
    sub_1E3C27024();
  }

  type metadata accessor for SportsRunningClockViewModel();
  sub_1E3F96B98();
  v102 = v25;
  sub_1E3F95B54();
  v104 = v29;
  OUTLINED_FUNCTION_9_2();
  v31 = v30 + 2216;
  v32 = *(v30 + 2216);
  v32();
  v33 = *MEMORY[0x1E69D3B90];
  v34 = *(v17 + 104);
  v35 = v96;
  v100 = v17 + 104;
  v34(v21, v33, v96);
  OUTLINED_FUNCTION_0_305();
  v36 = OUTLINED_FUNCTION_17_11();
  v41 = sub_1E3F8D39C(v36, v37, v38, v39, v40);
  v42 = *(v17 + 8);
  v43 = OUTLINED_FUNCTION_123_1();
  v42(v43);
  v44 = OUTLINED_FUNCTION_102_1();
  v42(v44);
  v101 = v32;
  v98 = v42;
  v99 = v34;
  v97 = v17 + 8;
  if (v41)
  {
    OUTLINED_FUNCTION_111();
    if ((*(v45 + 1328))())
    {

      sub_1E3F8E734();
    }
  }

  else
  {

    v46 = sub_1E4205304();
    v91 = v31;
    if (v46 || v47 != 0xE000000000000000)
    {
      v48 = sub_1E42079A4();

      if ((v48 & 1) == 0)
      {
        sub_1E3F8E734();
        v57 = sub_1E3E37F30();
        v58 = v94;
        v59 = v92;
        v60 = v103;
        (*(v94 + 16))(v92, v57, v103);

        v61 = sub_1E41FFC94();
        v62 = sub_1E42067E4();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v105 = v93;
          *v63 = 136315138;
          HIDWORD(v90) = v62;
          v64 = sub_1E4205324();
          sub_1E3270FC8(v64, v65, &v105);
          OUTLINED_FUNCTION_11_5();

          *(v63 + 4) = v60;
          _os_log_impl(&dword_1E323F000, v61, BYTE4(v90), "SportsCanonicalBannerScoreboardViewModel: Clock updated 🕒: %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          (*(v58 + 8))(v59, v103);
        }

        else
        {

          (*(v58 + 8))(v59, v60);
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v49 = v103;
    v50 = sub_1E3E37F30();
    v51 = v93;
    v52 = v94;
    (*(v94 + 16))(v93, v50, v49);
    v53 = sub_1E41FFC94();
    v54 = v49;
    v55 = sub_1E42067E4();
    if (os_log_type_enabled(v53, v55))
    {
      v56 = OUTLINED_FUNCTION_125_0();
      *v56 = 0;
      _os_log_impl(&dword_1E323F000, v53, v55, "SportsCanonicalBannerScoreboardViewModel: Error: RunningClock value is empty! Ignoring latest clock update.", v56, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v52 + 8))(v51, v54);
  }

LABEL_17:
  v66 = v101;
  v101();
  v67 = v99;
  v99(v21, *MEMORY[0x1E69D3B78], v35);
  OUTLINED_FUNCTION_0_305();
  v68 = OUTLINED_FUNCTION_17_11();
  v73 = sub_1E3F8D39C(v68, v69, v70, v71, v72);
  v74 = OUTLINED_FUNCTION_123_1();
  v103 = v1;
  v75 = v98;
  v98(v74);
  v76 = OUTLINED_FUNCTION_17_11();
  v77 = v75(v76);
  if (v73 & 1) != 0 || ((v66)(v77), v67(v21, *MEMORY[0x1E69D3B88], v35), OUTLINED_FUNCTION_0_305(), v80 = sub_1E3F8D39C(v24, v21, v78, v79, MEMORY[0x1E69D3BB8]), (v75)(v21, v35), v81 = OUTLINED_FUNCTION_17_11(), v75(v81), (v80))
  {
    v82 = v103;
    OUTLINED_FUNCTION_3_0();
    *(v82 + 272) = 0;

    v83 = sub_1E42056A4();
    sub_1E4205024();

    v84 = sub_1E42053B4();

    v85 = sub_1E4205294();

    v86 = v95;
    sub_1E4205514();

    sub_1E3F91C40();

    sub_1E325F7A8(v86, &qword_1ECF2BD98);
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v87 + 1208))() & 1) != 0 || (OUTLINED_FUNCTION_8(), ((*(v88 + 1216))()) || (OUTLINED_FUNCTION_8(), ((*(v89 + 1200))()))
    {
      sub_1E3F8F4E0();
    }
  }

  sub_1E3FE3B24();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F96B98()
{
  v1 = v0;
  sub_1E42058E4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_9();
  v3 = sub_1E42058B4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E4205904();
  (*(v5 + 104))(v9, *MEMORY[0x1E69D3C20], v3);
  sub_1E42058C4();
  if (sub_1E3F90CF8() == 2)
  {
    (*(*v1 + 1088))();
  }

  v10 = OUTLINED_FUNCTION_69_2();
  v11(v10);
  return sub_1E42058F4();
}

void sub_1E3F96D60()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v76 = v6;
  OUTLINED_FUNCTION_138();
  v83 = sub_1E4205914();
  OUTLINED_FUNCTION_0_10();
  v90 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v82 = v10 - v9;
  OUTLINED_FUNCTION_138();
  v11 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v93 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v91 = v15 - v14;
  OUTLINED_FUNCTION_138();
  v16 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v89 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v72 - v26;
  v92 = v3;
  sub_1E4205044();
  v28 = sub_1E3F90580(v27);
  v29 = *(*v1 + 1664);
  v74 = *v1 + 1664;
  v73 = v29;
  v30 = v29(v28);
  v81 = v16;
  if (v30)
  {
    sub_1E3C27024();
  }

  v31 = *(*v1 + 2192);
  v32 = v91;
  v85 = *v1 + 2192;
  v86 = v31;
  v31(v30);
  sub_1E4205BE4();
  v33 = *(v93 + 8);
  v87 = v11;
  v93 += 8;
  v84 = v33;
  v33(v32, v11);
  v34 = v82;
  sub_1E3F96B98();
  OUTLINED_FUNCTION_38_0();
  sub_1E3F95964();
  v75 = v35;
  v37 = v36;

  v38 = *(v90 + 8);
  v90 += 8;
  v39 = v38(v34, v83);
  v40 = *v1;
  v79 = *(*v1 + 2216);
  v80 = v40 + 2216;
  (v79)(v39);
  v41 = *MEMORY[0x1E69D3B90];
  v42 = v89;
  v43 = v89 + 104;
  v44 = v81;
  v88 = *(v89 + 104);
  v88(v21, v41, v81);
  OUTLINED_FUNCTION_0_305();
  v47 = sub_1E3F8D39C(v24, v21, v45, v46, MEMORY[0x1E69D3BB8]);
  v49 = *(v42 + 8);
  v48 = v42 + 8;
  v50 = OUTLINED_FUNCTION_102_1();
  v49(v50);
  (v49)(v24, v44);

  v77 = v49;
  v78 = v43;
  if (v47)
  {
    if ((*(*v1 + 1328))(v51))
    {

      sub_1E3F8E734();
    }
  }

  else
  {
    v52 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v52 = v75 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v53 = v73(v51);
      v89 = v48;
      if (v53)
      {
        v75 = sub_1E3C27024();
      }

      else
      {
        v75 = 0;
      }

      v54 = v91;
      v86(v53);
      sub_1E4205BE4();
      v84(v54, v87);
      v55 = v82;
      sub_1E3F96B98();
      sub_1E3F95C80();
      OUTLINED_FUNCTION_49_4();
      LODWORD(v75) = v56;

      v38(v55, v83);
      OUTLINED_FUNCTION_63_0();
      sub_1E3F8E734();
    }
  }

  v57 = v79;
  v79();
  v58 = v57;
  v88(v21, *MEMORY[0x1E69D3B78], v44);
  OUTLINED_FUNCTION_0_305();
  LOBYTE(v57) = sub_1E3F8D39C(v24, v21, v59, v60, MEMORY[0x1E69D3BB8]);
  v61 = OUTLINED_FUNCTION_102_1();
  v62 = v77;
  v77(v61);
  v63 = v62(v24, v44);
  if (v57 & 1) != 0 || (v58(v63), v88(v21, *MEMORY[0x1E69D3B88], v44), OUTLINED_FUNCTION_0_305(), v66 = sub_1E3F8D39C(v24, v21, v64, v65, MEMORY[0x1E69D3BB8]), v67 = OUTLINED_FUNCTION_102_1(), (v62)(v67), v68 = v62(v24, v44), (v66))
  {
    OUTLINED_FUNCTION_3_0();
    v1[34] = 0;

    v69 = v92;
    sub_1E4205024();
    v70 = v76;
    sub_1E3F95EB0(v69);
    sub_1E3F91C40();

    v68 = sub_1E325F7A8(v70, &qword_1ECF2BD98);
  }

  v71 = v91;
  v86(v68);
  sub_1E3FE3F68();
  v84(v71, v87);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F97540()
{
  OUTLINED_FUNCTION_31_1();
  v84 = v0;
  v82 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v76 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_7();
  v81 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v83 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v78 = v11;
  OUTLINED_FUNCTION_138();
  v12 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = *(v14 + 104);
  v19(v17 - v16, *MEMORY[0x1E69D3B90], v12);
  OUTLINED_FUNCTION_0_305();
  v20 = OUTLINED_FUNCTION_97_1();
  v25 = sub_1E3F8D39C(v20, v21, v22, v23, v24);
  v26 = *(v14 + 8);
  v27 = OUTLINED_FUNCTION_55_39();
  v26(v27);
  if (v25 & 1) != 0 || (v19(v18, *MEMORY[0x1E69D3B98], v12), OUTLINED_FUNCTION_0_305(), v28 = OUTLINED_FUNCTION_97_1(), v33 = sub_1E3F8D39C(v28, v29, v30, v31, v32), v34 = OUTLINED_FUNCTION_55_39(), v26(v34), (v33))
  {
LABEL_59:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D478);
  v35 = *(v76 + 72);
  v36 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1E4299720;
  v38 = v78;
  v80 = *(*v84 + 2192);
  v80();
  sub_1E4205BC4();
  v79 = *(v83 + 8);
  v79(v38, v81);
  LODWORD(v38) = *MEMORY[0x1E69D3D50];
  v77 = *(v76 + 104);
  v39 = v77(v37 + v36 + v35, *MEMORY[0x1E69D3D50], v82);
  v40 = (*(*v84 + 464))(v39);
  v75 = MEMORY[0x1E69E7CC0];
  v74 = v38;
  if (!v40)
  {

    v48 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v41 = v40;
  v91 = MEMORY[0x1E69E7CC0];
  v42 = sub_1E32AE9B0(v40);
  for (i = 0; v42 != i; ++i)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, v41);
    }

    else
    {
      if (i >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_62;
    }

    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v87 == v85 && v90 == v86)
    {
    }

    else
    {
      v45 = OUTLINED_FUNCTION_97_0();

      if ((v45 & 1) == 0)
      {

        continue;
      }
    }

    sub_1E4207544();
    sub_1E4207584();
    OUTLINED_FUNCTION_13_8();
    sub_1E4207594();
    sub_1E4207554();
  }

  v46 = sub_1E32AE9B0(v91);
  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  while (v46 != v47)
  {
    if ((v91 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v47, v91);
    }

    else
    {
      if (v47 >= *(v91 + 16))
      {
        goto LABEL_65;
      }
    }

    if (__OFADD__(v47, 1))
    {
      goto LABEL_64;
    }

    sub_1E3F97E2C();
    v50 = v49;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1E3F999EC(0, v48[2] + 1, 1, v48);
    }

    v52 = v48[2];
    v51 = v48[3];
    if (v52 >= v51 >> 1)
    {
      v53 = OUTLINED_FUNCTION_35(v51);
      v48 = sub_1E3F999EC(v53, v52 + 1, 1, v48);
    }

    v48[2] = v52 + 1;
    v48[v52 + 4] = v50;
    ++v47;
  }

LABEL_34:
  v54 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  v88 = MEMORY[0x1E69E7CC0];
  v56 = v48[2];
  v57 = (v76 + 8);
  while (2)
  {
    if (v56 == v54)
    {
      if (sub_1E32AE9B0(v55) == 2)
      {
        sub_1E3F8E35C();
      }

      else
      {
      }

      OUTLINED_FUNCTION_97_16();
      v65 = 0;
      for (j = MEMORY[0x1E69E7CC0]; ; v75 = j)
      {
        while (1)
        {
          if (v56 == v65)
          {

            if (sub_1E32AE9B0(v75) == 2)
            {
              sub_1E3F8E504();
            }

            else
            {
            }

            goto LABEL_59;
          }

          if (v65 >= v48[2])
          {
            goto LABEL_61;
          }

          v66 = v48[v65 + 4];
          v77(v9, v74, v82);
          if (*(v66 + 16))
          {
            break;
          }

LABEL_52:
          v68 = OUTLINED_FUNCTION_123_1();
          v69(v68);
          ++v65;
        }

        sub_1E3997C14(v9);
        if ((v67 & 1) == 0)
        {

          goto LABEL_52;
        }

        v70 = *v57;

        v71 = OUTLINED_FUNCTION_123_1();
        (v70)(v71);

        MEMORY[0x1E6910BF0](v72);
        OUTLINED_FUNCTION_18_63();
        if (v64)
        {
          OUTLINED_FUNCTION_35(v73);
          sub_1E42062F4();
        }

        ++v65;
        OUTLINED_FUNCTION_11_6();
        sub_1E4206324();
      }
    }

    if (v54 < v48[2])
    {
      v58 = v48[v54 + 4];

      (v80)(v59);
      sub_1E4205BC4();
      v79(v9, v81);
      if (*(v58 + 16) && (sub_1E3997C14(v1), (v60 & 1) != 0))
      {
        v61 = *v57;

        v61(v1, v82);

        MEMORY[0x1E6910BF0](v62);
        OUTLINED_FUNCTION_18_63();
        if (v64)
        {
          OUTLINED_FUNCTION_35(v63);
          sub_1E42062F4();
        }

        ++v54;
        OUTLINED_FUNCTION_11_6();
        sub_1E4206324();
        v55 = v88;
      }

      else
      {

        (*v57)(v1, v82);
        ++v54;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

void sub_1E3F97E2C()
{
  OUTLINED_FUNCTION_31_1();
  v65 = v0;
  v2 = v1;
  OUTLINED_FUNCTION_106();
  v3 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v68 = v8;
  OUTLINED_FUNCTION_138();
  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_24_100();
  sub_1E3F9C2EC(v9, v10);
  v11 = sub_1E4205CB4();
  OUTLINED_FUNCTION_36();
  if (!(*(v12 + 552))())
  {
    v75 = 0u;
    v76 = 0u;
    goto LABEL_18;
  }

  v74[3] = &type metadata for ViewModelKeys.Sports;
  v74[4] = &off_1F5D7BC68;
  LOBYTE(v74[0]) = 7;
  sub_1E3F9F164(v74);

  __swift_destroy_boxed_opaque_existential_1(v74);
  if (!*(&v76 + 1))
  {
LABEL_18:
    sub_1E325F7A8(&v75, &unk_1ECF296E0);
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v63 = v5;
    v14 = v74[0];
    v13 = v74[1];
    v15 = 0;
    v71 = sub_1E32AE9B0(v2);
    v73 = v2 & 0xC000000000000001;
    v69 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v71 == v15)
      {

        goto LABEL_19;
      }

      if (v73)
      {
        v16 = MEMORY[0x1E6911E60](v15, v2);
      }

      else
      {
        if (v15 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v16 = *(v2 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
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
        sub_1E4207A74();
        __break(1u);
        return;
      }

      v18 = sub_1E4205964();
      v19 = sub_1E42054D4();
      v21 = v20;

      if (v19 == v14 && v21 == v13)
      {
        v67 = v2;

        goto LABEL_23;
      }

      v23 = sub_1E42079A4();

      if (v23)
      {
        break;
      }

      ++v15;
    }

    v67 = v2;
LABEL_23:
    OUTLINED_FUNCTION_97_16();

    v24 = *(v65 + 16);
    v25 = v68;
    if (v24)
    {
      v70 = *(v63 + 16);
      v26 = v65 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v72 = *(v63 + 72);
      v64 = v63 + 16;
      v66 = (v64 - 8);
      v62 = v17;
      do
      {
        v27 = OUTLINED_FUNCTION_11_6();
        v70(v27);
        (v70)(v19, v25, v3);
        if (v73)
        {
          v28 = v17;
          MEMORY[0x1E6911E60](0, v67);
        }

        else
        {
          if (!*(v69 + 16))
          {
            goto LABEL_47;
          }

          v29 = *(v67 + 32);
          v30 = v17;
          v31 = v29;
        }

        OUTLINED_FUNCTION_118();
        sub_1E4205A54();
        sub_1E4206F64();

        sub_1E3F98E04();
        if (v32)
        {
          v33 = v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = v19;
          v19 = isUniquelyReferenced_nonNull_native;
          v74[0] = v11;
          v36 = sub_1E3997C14(v35);
          if (__OFADD__(v11[2], (v37 & 1) == 0))
          {
            goto LABEL_46;
          }

          v38 = v36;
          v39 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D490);
          if (sub_1E4207644())
          {
            OUTLINED_FUNCTION_97_16();
            v40 = sub_1E3997C14(v19);
            if ((v39 & 1) != (v41 & 1))
            {
              goto LABEL_49;
            }

            v38 = v40;
          }

          else
          {
            OUTLINED_FUNCTION_97_16();
          }

          v11 = v74[0];
          if (v39)
          {
            *(*(v74[0] + 56) + 8 * v38) = v33;

            v14 = (v64 - 8);
            v50 = *v66;
            v51 = OUTLINED_FUNCTION_123_1();
            v50(v51);
            v25 = v68;
            v52 = OUTLINED_FUNCTION_125();
            v50(v52);
          }

          else
          {
            *(v74[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
            (v70)(v11[6] + v38 * v72, v19, v3);
            *(v11[7] + 8 * v38) = v33;
            v14 = (v64 - 8);
            v53 = *v66;
            v54 = OUTLINED_FUNCTION_123_1();
            v53(v54);
            v25 = v68;
            v55 = OUTLINED_FUNCTION_125();
            v53(v55);
            v56 = v11[2];
            v57 = __OFADD__(v56, 1);
            v58 = v56 + 1;
            if (v57)
            {
              goto LABEL_48;
            }

            v11[2] = v58;
          }
        }

        else
        {
          v42 = sub_1E3997C14(v19);
          if (v43)
          {
            v44 = v42;
            swift_isUniquelyReferenced_nonNull_native();
            v74[0] = v11;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D490);
            v25 = v68;
            sub_1E4207644();
            v45 = v74[0];
            v46 = *(v74[0] + 48) + v44 * v72;
            v14 = (v64 - 8);
            v47 = *v66;
            (*v66)(v46, v3);

            sub_1E4207664();
            v48 = OUTLINED_FUNCTION_123_1();
            v47(v48);
            v49 = OUTLINED_FUNCTION_125();
            v47(v49);
            v11 = v45;
            v17 = v62;
          }

          else
          {
            v14 = (v64 - 8);
            v59 = *v66;
            v60 = OUTLINED_FUNCTION_123_1();
            v59(v60);
            v61 = OUTLINED_FUNCTION_125();
            v59(v61);
          }
        }

        v26 += v72;
        --v24;
      }

      while (v24);
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F984B8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v56 = v3;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v55 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v51 - v16;
  v18 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_36();
  if (!(*(v25 + 552))())
  {
    v58 = 0u;
    v59 = 0u;
    goto LABEL_8;
  }

  v54 = v0;
  v57[3] = &type metadata for ViewModelKeys.Sports;
  v57[4] = &off_1F5D7BC68;
  LOBYTE(v57[0]) = 7;
  sub_1E3F9F164(v57);

  __swift_destroy_boxed_opaque_existential_1(v57);
  if (!*(&v59 + 1))
  {
LABEL_8:
    sub_1E325F7A8(&v58, &unk_1ECF296E0);
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_32_13() & 1) == 0)
  {
LABEL_9:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v52 = v20;
  v53 = v24;
  v27 = v57[0];
  v26 = v57[1];
  sub_1E379D7E4(v2, v17, &qword_1ECF2BD98);
  v28 = sub_1E4205784();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v28);
  v51[1] = v18;
  if (EnumTagSinglePayload == 1)
  {
LABEL_11:
    OUTLINED_FUNCTION_8();
    (*(v34 + 2192))();
    sub_1E4205BC4();
    (*(v55 + 8))(v9, v4);
    goto LABEL_12;
  }

  sub_1E379D7E4(v17, v14, &qword_1ECF2BD98);
  v30 = OUTLINED_FUNCTION_32_0();
  if (v31(v30) != *MEMORY[0x1E69D3BF8])
  {
    v32 = OUTLINED_FUNCTION_32_0();
    v33(v32);
    goto LABEL_11;
  }

  (*(v52 + 104))(v53, *MEMORY[0x1E69D3D50], v18);
LABEL_12:
  sub_1E325F7A8(v17, &qword_1ECF2BD98);
  v35 = v56;
  v36 = sub_1E32AE9B0(v56);
  v37 = 0;
  v38 = v35 & 0xC000000000000001;
  v39 = v35 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v36 == v37)
    {

      goto LABEL_29;
    }

    if (v38)
    {
      v40 = MEMORY[0x1E6911E60](v37, v56);
    }

    else
    {
      if (v37 >= *(v39 + 16))
      {
        goto LABEL_31;
      }

      v40 = *(v56 + 8 * v37 + 32);
    }

    v41 = v40;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    v42 = sub_1E4205964();
    v43 = sub_1E42054D4();
    v45 = v44;

    if (v43 == v27 && v45 == v26)
    {

LABEL_27:

      v48 = sub_1E4205984();

      if (v48)
      {
        sub_1E4205AE4();
      }

LABEL_29:
      v49 = OUTLINED_FUNCTION_39_3();
      v50(v49);
      goto LABEL_9;
    }

    v47 = sub_1E42079A4();

    if (v47)
    {
      goto LABEL_27;
    }

    ++v37;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1E3F989B4()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAB0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-1] - v8;
  v10 = sub_1E4205AF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_36();
  if (*((*(v15 + 1160))() + 16))
  {

    v35[3] = &type metadata for ViewModelKeys.Sports;
    v35[4] = &off_1F5D7BC68;
    LOBYTE(v35[0]) = 7;
    sub_1E3F9F164(v35);

    __swift_destroy_boxed_opaque_existential_1(v35);
    if (*(&v37 + 1))
    {
      OUTLINED_FUNCTION_111_11();
      goto LABEL_6;
    }
  }

  else
  {

    v36 = 0u;
    v37 = 0u;
  }

  sub_1E325F7A8(&v36, &unk_1ECF296E0);
LABEL_6:

  v35[0] = sub_1E3EA9868(v16);
  OUTLINED_FUNCTION_89_16();
  sub_1E3F9A5C4(v17, v18, v19);
  if (!v4)
  {

    v4 = v35[0];
    if (!sub_1E32AE9B0(v35[0]))
    {

      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
      goto LABEL_14;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1E6911E60](0, v4);
      goto LABEL_11;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v4 + 32);
LABEL_11:
      v21 = v20;
      sub_1E4205974();

      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        v23 = *(v12 + 32);
        v23(v1, v9, v10);
        sub_1E37CB21C(v4);
        OUTLINED_FUNCTION_38();

        if (v21)
        {
          sub_1E4205974();

          if (__swift_getEnumTagSinglePayload(v0, 1, v10) != 1)
          {
            v23(v2, v0, v10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAC0);
            v28 = *(v12 + 72);
            v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
            v30 = swift_allocObject();
            *(v30 + 16) = xmmword_1E4299720;
            v31 = v30 + v29;
            (*(v12 + 16))(v31, v1, v10);
            v23(v31 + v28, v2, v10);
            v32 = OUTLINED_FUNCTION_38_0();
            v33(v32);
            goto LABEL_21;
          }

          v24 = OUTLINED_FUNCTION_38_0();
          v25(v24);
        }

        else
        {
          v26 = OUTLINED_FUNCTION_38_0();
          v27(v26);
          __swift_storeEnumTagSinglePayload(v0, 1, 1, v10);
        }

        v22 = v0;
LABEL_20:
        sub_1E325F7A8(v22, &qword_1ECF3DAB0);
LABEL_21:
        OUTLINED_FUNCTION_25_2();
        return;
      }

LABEL_14:
      v22 = v9;
      goto LABEL_20;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1E3F98E04()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E3F9936C();
  v48 = v8;
  if (v8 == 263)
  {
    sub_1E3E37F30();
    OUTLINED_FUNCTION_22_6();
    v9(v7);
    v10 = sub_1E41FFC94();
    v11 = sub_1E42067F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_125_0();
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v10, v11, "Unsupported StatisticName", v12, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v13 = OUTLINED_FUNCTION_57();
    v14(v13);
    goto LABEL_38;
  }

  v15 = (*(*v3 + 464))();
  if (!v15)
  {
LABEL_38:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v16 = v15;
  v46 = v1;
  v47 = v3;
  v17 = sub_1E32AE9B0(v15);
  v18 = 0;
  while (1)
  {
    if (v17 == v18)
    {

      goto LABEL_38;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v49 == v51 && v50 == v52)
    {
      break;
    }

    v20 = OUTLINED_FUNCTION_97_0();

    if (v20)
    {
      goto LABEL_23;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_40;
    }
  }

LABEL_23:

  v22 = sub_1E4205984();
  if (!v22)
  {
LABEL_37:

    MEMORY[0x1EEE9AC00](v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088);
    sub_1E4148DE0(sub_1E3F9BDA4);
    goto LABEL_38;
  }

  v23 = v22;
  sub_1E4205AE4();

  v24 = [objc_opt_self() sharedInstance];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1E4206694();
    v27 = sub_1E3D76818(v26, 0x6C616D69636564, 0xE700000000000000, 48, 0xE100000000000000, 12333, 0xE200000000000000, 0, v25);
    v29 = v28;

    if (sub_1E373F6E0())
    {
      sub_1E414A784(40, 0xE100000000000000, v27, v29);
      v31 = v30;

      MEMORY[0x1E69109E0](41, 0xE100000000000000);

      v29 = v31;
    }

    if (v29)
    {
      sub_1E384EE08(v48);
      v33 = v32;
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      ViewModelKeys.rawValue.getter(14);
      *(inited + 32) = v37;
      *(inited + 40) = v38;
      v51 = 0;
      v52 = 0xE000000000000000;
      v39 = (v46 & 1) != 0 ? 46 : 0;
      v40 = (v46 & 1) != 0 ? 0xE100000000000000 : 0xE000000000000000;
      MEMORY[0x1E69109E0](v39, v40);

      v41 = OUTLINED_FUNCTION_123_1();
      MEMORY[0x1E69109E0](v41);
      v42 = v52;
      *(inited + 48) = v51;
      *(inited + 56) = v42;
      v43 = sub_1E4205CB4();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
      v51 = v43;
      v44 = sub_1E3A7CD30(v33, v35, &v51, v47);

      __swift_destroy_boxed_opaque_existential_1(&v51);
      if (v44)
      {
        if (*v44 != _TtC8VideosUI13TextViewModel)
        {
        }
      }
    }

    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
}

void sub_1E3F9936C()
{
  OUTLINED_FUNCTION_31_1();
  v25 = v2;
  v26 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v6 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = *(v8 + 16);
  v14(&v25 - v12, v25, v6);
  v14(v0, v13, v6);
  OUTLINED_FUNCTION_36();
  (*(v15 + 2192))();
  sub_1E4205BC4();
  (*(v4 + 8))(v1, v26);
  OUTLINED_FUNCTION_24_100();
  sub_1E3F9C2EC(v16, v17);
  OUTLINED_FUNCTION_24_4();
  v18 = sub_1E4205E84();
  v19 = *(v8 + 8);
  v20 = OUTLINED_FUNCTION_38_0();
  v19(v20);
  v21 = OUTLINED_FUNCTION_55_39();
  v19(v21);
  if ((v18 & 1) != 0 || (v22 = OUTLINED_FUNCTION_13_8(), v23(v22) != *MEMORY[0x1E69D3D50]))
  {
    v24 = OUTLINED_FUNCTION_13_8();
    v19(v24);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F995F0()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_247();
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19_7();
  sub_1E3F96D60();
  sub_1E4205024();
  sub_1E4205044();
  sub_1E376DA04();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_168();
  sub_1E3F97540();

  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_39_3();
  v4(v5);
  sub_1E4205044();
  v6 = *(v1 + 104);
  v7 = OUTLINED_FUNCTION_69_2();
  v6(v7);
  OUTLINED_FUNCTION_0_305();
  v12 = OUTLINED_FUNCTION_116_13(v8, v9, v10, v11, MEMORY[0x1E69D3BB8]);
  v13 = OUTLINED_FUNCTION_74();
  v4(v13);
  v14 = OUTLINED_FUNCTION_39_3();
  v4(v14);
  if (v12 & 1) != 0 || (sub_1E4205044(), v15 = OUTLINED_FUNCTION_69_2(), v6(v15), OUTLINED_FUNCTION_0_305(), v20 = OUTLINED_FUNCTION_116_13(v16, v17, v18, v19, MEMORY[0x1E69D3BB8]), v21 = OUTLINED_FUNCTION_74(), v4(v21), v22 = OUTLINED_FUNCTION_39_3(), v4(v22), (v20))
  {
    OUTLINED_FUNCTION_10_152();
    sub_1E3F93634();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F99820@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  if ((*(v2 + 552))())
  {
    OUTLINED_FUNCTION_8();
    (*(v3 + 624))();
    v4 = OUTLINED_FUNCTION_38();
    sub_1E3744600(v4);

    v5 = OUTLINED_FUNCTION_63_0();
    sub_1E3C5F7FC(v5, v6, v7);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();

  return __swift_storeEnumTagSinglePayload(a1, v8, 1, v9);
}

uint64_t sub_1E3F998F4(uint64_t a1)
{
  v2 = (*(*a1 + 464))();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  (*(*v1 + 2384))(v3, 0);

  return 1;
}

void *sub_1E3F999EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3F99B28()
{
  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (*result + 1352);
    v3 = *v2;
    v4 = (*v2)();
    sub_1E32AE9B0(v4);
    OUTLINED_FUNCTION_11_5();

    if (v0 == 2)
    {
      v6 = (v3)(v5);
      result = sub_1E32AE9B0(v6);
      v7 = result;
      for (i = 0; ; i = (i + 1))
      {
        if (v7 == i)
        {
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v13 = OUTLINED_FUNCTION_39_3();
          result = MEMORY[0x1E6911E60](v13);
        }

        else
        {
          if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        type metadata accessor for LayoutGrid();
        sub_1E3A256EC();
        OUTLINED_FUNCTION_30_1();
        v10 = (*(v9 + 1016))();
        v12 = sub_1E41494A8(v10, v11);

        if (v12)
        {
          OUTLINED_FUNCTION_73_6();
          sub_1E3F8F2E0();
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_73_6();
      sub_1E3F8F2E0();
    }
  }

  return result;
}

uint64_t sub_1E3F99CC4()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 2096))();
  if (result)
  {

    sub_1E3F8EDE8();
    OUTLINED_FUNCTION_8();
    result = (*(v2 + 1664))();
    if (result)
    {
      static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
      OUTLINED_FUNCTION_8();
      (*(v3 + 328))();
    }
  }

  return result;
}

uint64_t sub_1E3F99DA8()
{
  OUTLINED_FUNCTION_31_80();

  MEMORY[0x1E6910BF0](v1);
  sub_1E38C5A18(*((*(v0 + 304) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_74();
  sub_1E4206324();
  return swift_endAccess();
}

uint64_t sub_1E3F99E20()
{
  OUTLINED_FUNCTION_31_80();

  MEMORY[0x1E6910BF0](v1);
  sub_1E38C5A18(*((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_74();
  sub_1E4206324();
  return swift_endAccess();
}

uint64_t sub_1E3F99E98()
{
  OUTLINED_FUNCTION_31_80();

  MEMORY[0x1E6910BF0](v1);
  sub_1E38C5A18(*((*(v0 + 288) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_74();
  sub_1E4206324();
  return swift_endAccess();
}

uint64_t sub_1E3F99F38()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_115_10();

  OUTLINED_FUNCTION_37_72();
  v0 = sub_1E4200664();
  v2 = v1;
  MEMORY[0x1E6910BF0]();
  sub_1E38C5A18(*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1E4206324();
  v0(&v4, 0);
}

uint64_t sub_1E3F99FF4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1E3F9C2EC(a4, a5);
  OUTLINED_FUNCTION_123_1();
  return sub_1E4205E84() & 1;
}

uint64_t type metadata accessor for SportsCanonicalBannerScoreboardViewModel()
{
  result = qword_1EE2904E0;
  if (!qword_1EE2904E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3F9A134()
{
  sub_1E3928D10(319, &qword_1EE289F98, &qword_1ECF2B6E8);
  if (v0 <= 0x3F)
  {
    sub_1E3F9A4BC(319, &qword_1EE28A048);
    if (v1 <= 0x3F)
    {
      sub_1E3928D10(319, &qword_1EE289F58, &qword_1ECF3D440);
      if (v2 <= 0x3F)
      {
        sub_1E3928D10(319, &qword_1EE289F80, &qword_1ECF2B4C0);
        if (v3 <= 0x3F)
        {
          sub_1E3928D10(319, &qword_1EE28A068, &qword_1ECF29088);
          if (v4 <= 0x3F)
          {
            sub_1E3F9A4BC(319, &qword_1EE289F50);
            if (v5 <= 0x3F)
            {
              sub_1E3928D10(319, &qword_1EE28A038, &qword_1ECF3D458);
              if (v6 <= 0x3F)
              {
                sub_1E4205BF4();
                if (v7 <= 0x3F)
                {
                  sub_1E4205754();
                  if (v8 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_1E3F9A4BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E4200694();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1E3F9A514(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
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

void *sub_1E3F9A568(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      return OUTLINED_FUNCTION_25_9(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_1E3F9A5C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E34AF5E0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_1E3F9A6E4(v10, a2, a3);
  sub_1E4207554();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E3F9A678(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3F9C0F0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E3F9A81C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E3F9A6E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1E4207914();
  if (result < v7)
  {
    v9 = result;
    v10 = sub_1E3EA8B74(v7 / 2);
    v12[0] = v11;
    v12[1] = (v7 / 2);

    result = sub_1E3F9AAC4(v12, v13, a1, v9, a2, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1E3F9A910(0, v7, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E3F9A81C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3F9B33C(v7, v8, a1, v4);
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
    return sub_1E3F9AA68(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3F9A910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
    while (2)
    {
      v25 = v8;
      v26 = a3;
      v10 = *(v27 + 8 * a3);
      v24 = v9;
      while (1)
      {
        v11 = *v8;
        v12 = v10;
        v13 = v11;
        v14 = sub_1E4205964();
        v15 = sub_1E42054D4();
        v17 = v16;

        if (!a6)
        {
          break;
        }

        if (v15 == a5 && v17 == a6)
        {
        }

        else
        {
          v19 = sub_1E42079A4();

          if ((v19 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (!v27)
        {
          __break(1u);
          return result;
        }

        v21 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v21;
        v8 -= 8;
        if (__CFADD__(v9++, 1))
        {
          goto LABEL_17;
        }
      }

LABEL_17:
      a3 = v26 + 1;
      v8 = v25 + 8;
      v9 = v24 - 1;
      if (v26 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1E3F9AA68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3F9AAC4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x1E69E7CC0];
LABEL_117:
    v125 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_119:
      v104 = v9 + 16;
      v105 = *(v9 + 2);
      for (i = v9; ; v9 = i)
      {
        v106 = v105 - 2;
        if (v105 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v107 = *a3;
        if (!*a3)
        {
          goto LABEL_157;
        }

        v108 = &v9[16 * v105];
        v109 = *v108;
        v9 = v104;
        v129 = v105;
        v110 = &v104[16 * v105];
        v111 = *(v110 + 1);
        v112 = (v107 + 8 * *v108);
        v113 = (v107 + 8 * *v110);
        v114 = (v107 + 8 * v111);

        sub_1E3F9B908(v112, v113, v114, v125, a5, a6);
        if (v131)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_145;
        }

        if (v106 >= *v9)
        {
          goto LABEL_146;
        }

        v104 = v9;
        *v108 = v109;
        *(v108 + 1) = v111;
        if (*v9 < v129)
        {
          goto LABEL_147;
        }

        v105 = *v9 - 1;
        memmove(v110, v110 + 16, 16 * (*v9 - v129));
        *v9 = v105;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_154:
    v9 = sub_1E37FFF5C(v9);
    goto LABEL_119;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v132 = a6;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v121 = v9;
      v12 = *a3;
      v13 = a6;
      v14 = v8 + 1;
      v118 = v8;
      v15 = *(*a3 + 8 * v8);
      v9 = *(*a3 + 8 * v11);
      v16 = v15;
      v17 = sub_1E4205964();
      v18 = sub_1E42054D4();
      v20 = v19;

      if (v13)
      {
        if (v18 == a5 && v20 == v13)
        {
          v126 = 1;
        }

        else
        {
          v126 = sub_1E42079A4();
        }
      }

      else
      {
        v126 = 0;
      }

      v11 = v14;

      v22 = (v12 + 8 * v118 + 16);
      v125 = v7;
      for (j = 8 * v118 + 8; ; j += 8)
      {
        a6 = v11++;
        if (v11 >= v7)
        {
          break;
        }

        v24 = *(v22 - 1);
        v25 = *v22;
        v9 = v24;
        v26 = sub_1E4205964();
        v27 = sub_1E42054D4();
        v29 = v28;

        if (v132)
        {
          if (v27 == a5 && v29 == v132)
          {

            v7 = v125;
            if ((v126 & 1) == 0)
            {
              v11 = a6 + 1;
              goto LABEL_36;
            }
          }

          else
          {
            v31 = sub_1E42079A4() & 1;

            v7 = v125;
            if ((v126 & 1) != v31)
            {
              break;
            }
          }
        }

        else
        {

          v7 = v125;
          if (v126)
          {
            goto LABEL_26;
          }
        }

        ++v22;
      }

      if ((v126 & 1) == 0)
      {
LABEL_36:
        v9 = v121;
        a6 = v132;
        goto LABEL_37;
      }

LABEL_26:
      v11 = a6 + 1;
      v32 = v118;
      if (a6 + 1 < v118)
      {
        goto LABEL_151;
      }

      if (v118 >= v11)
      {
        v9 = v121;
        a6 = v132;
        v10 = v118;
        goto LABEL_38;
      }

      v33 = a6;
      v9 = v121;
      v34 = 8 * v118;
      a6 = v132;
      do
      {
        if (v32 != v33)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_158;
          }

          v36 = *(v35 + v34);
          *(v35 + v34) = *(v35 + j);
          *(v35 + j) = v36;
        }

        ++v32;
        j -= 8;
        v34 += 8;
      }

      while (v32 < v33--);
LABEL_37:
      v10 = v118;
    }

LABEL_38:
    v38 = a3[1];
    if (v11 < v38)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_150;
      }

      if (v11 - v10 < a4)
      {
        break;
      }
    }

LABEL_64:
    if (v11 < v10)
    {
      goto LABEL_149;
    }

    v128 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1E37FFF70(0, *(v9 + 2) + 1, 1, v9);
    }

    v58 = *(v9 + 2);
    v57 = *(v9 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v9 = sub_1E37FFF70((v57 > 1), v58 + 1, 1, v9);
    }

    *(v9 + 2) = v59;
    v60 = v9 + 32;
    v61 = &v9[16 * v58 + 32];
    *v61 = v10;
    *(v61 + 1) = v128;
    v125 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    if (v58)
    {
      while (1)
      {
        v62 = v59 - 1;
        v63 = &v60[16 * v59 - 16];
        v64 = &v9[16 * v59];
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v65 = *(v9 + 4);
          v66 = *(v9 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_84:
          if (v68)
          {
            goto LABEL_136;
          }

          v80 = *v64;
          v79 = *(v64 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_139;
          }

          v84 = *(v63 + 1);
          v85 = v84 - *v63;
          if (__OFSUB__(v84, *v63))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v82, v85))
          {
            goto LABEL_144;
          }

          if (v82 + v85 >= v67)
          {
            if (v67 < v85)
            {
              v62 = v59 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        if (v59 < 2)
        {
          goto LABEL_138;
        }

        v87 = *v64;
        v86 = *(v64 + 1);
        v75 = __OFSUB__(v86, v87);
        v82 = v86 - v87;
        v83 = v75;
LABEL_99:
        if (v83)
        {
          goto LABEL_141;
        }

        v89 = *v63;
        v88 = *(v63 + 1);
        v75 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v75)
        {
          goto LABEL_143;
        }

        if (v90 < v82)
        {
          goto LABEL_113;
        }

LABEL_106:
        if (v62 - 1 >= v59)
        {
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
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v94 = *a3;
        if (!*a3)
        {
          goto LABEL_156;
        }

        v95 = &v60[16 * v62 - 16];
        v96 = *v95;
        v97 = v62;
        v98 = &v60[16 * v62];
        v99 = *(v98 + 1);
        v100 = (v94 + 8 * *v95);
        v101 = (v94 + 8 * *v98);
        v102 = (v94 + 8 * v99);
        a6 = v132;

        sub_1E3F9B908(v100, v101, v102, v125, a5, v132);
        if (v131)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v99 < v96)
        {
          goto LABEL_131;
        }

        v103 = *(v9 + 2);
        if (v97 > v103)
        {
          goto LABEL_132;
        }

        *v95 = v96;
        *(v95 + 1) = v99;
        if (v97 >= v103)
        {
          goto LABEL_133;
        }

        v59 = v103 - 1;
        memmove(v98, v98 + 16, 16 * (v103 - 1 - v97));
        *(v9 + 2) = v103 - 1;
        v60 = v9 + 32;
        a6 = v132;
        if (v103 <= 2)
        {
          goto LABEL_113;
        }
      }

      v69 = &v60[16 * v59];
      v70 = *(v69 - 8);
      v71 = *(v69 - 7);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_134;
      }

      v74 = *(v69 - 6);
      v73 = *(v69 - 5);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_135;
      }

      v76 = *(v64 + 1);
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_137;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_140;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = *(v63 + 1);
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_148;
        }

        if (v67 < v93)
        {
          v62 = v59 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_84;
    }

LABEL_113:
    v8 = v128;
    v7 = a3[1];
    if (v128 >= v7)
    {
      goto LABEL_117;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_152;
  }

  if (v10 + a4 >= v38)
  {
    v39 = a3[1];
  }

  else
  {
    v39 = v10 + a4;
  }

  if (v39 < v10)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v11 == v39)
  {
    goto LABEL_64;
  }

  v120 = v39;
  v122 = v9;
  v40 = v11;
  v41 = *a3;
  v42 = *a3 + 8 * v40 - 8;
  v119 = v10;
  v43 = v10 - v40;
LABEL_48:
  v125 = v42;
  v127 = v40;
  v44 = *(v41 + 8 * v40);
  v124 = v43;
  v45 = v42;
  while (1)
  {
    v46 = *v45;
    v47 = v44;
    v48 = v46;
    v49 = sub_1E4205964();
    v50 = sub_1E42054D4();
    v52 = v51;

    if (!a6)
    {

LABEL_62:
      v40 = v127 + 1;
      v42 = (v125 + 1);
      v43 = v124 - 1;
      if (v127 + 1 == v120)
      {
        v11 = v120;
        v9 = v122;
        v10 = v119;
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v50 == a5 && v52 == a6)
    {
    }

    else
    {
      v54 = sub_1E42079A4();

      if ((v54 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (!v41)
    {
      break;
    }

    v55 = *v45;
    v44 = *(v45 + 8);
    *v45 = v44;
    *(v45 + 8) = v55;
    v45 -= 8;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_62;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_156:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:

  __break(1u);
LABEL_158:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_159:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1E3F9B33C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v72 = result;
  v76 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v71 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return result;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v73 = v8;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        result = sub_1E37FFF70((v28 > 1), v29 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v30;
      v31 = v7 + 32;
      v32 = (v7 + 32 + 16 * v29);
      *v32 = v6;
      v32[1] = v8;
      v74 = *v72;
      if (!*v72)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = (v31 + 16 * (v30 - 1));
          v35 = (v7 + 16 * v30);
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = *(v7 + 32);
            v37 = *(v7 + 40);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = (v31 + 16 * (v33 - 1));
          v66 = *v65;
          v67 = (v31 + 16 * v33);
          v68 = v67[1];
          result = sub_1E3F9BC10((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v74);
          if (v4)
          {
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = *(v7 + 16);
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          result = memmove((v31 + 16 * v33), v67 + 2, 16 * (v70 - 1 - v33));
          *(v69 + 16) = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = v31 + 16 * v30;
        v41 = *(v40 - 64);
        v42 = *(v40 - 56);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 48);
        v44 = *(v40 - 40);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v73;
      a4 = v71;
      if (v73 >= v5)
      {
        v76 = v7;
        break;
      }
    }
  }

  if (!*v72)
  {
    goto LABEL_115;
  }

  sub_1E3F9B7DC(&v76, *v72, a3);
}

uint64_t sub_1E3F9B7DC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E3F9BC10((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E3F9B908(void **__src, id *__dst, id *a3, void **a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = __dst - __src;
  v11 = a3 - __dst;
  if (v10 < v11)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v13 = &v6[v10];
    while (1)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v27 = v9;
        goto LABEL_53;
      }

      v47 = v8;
      v15 = v6;
      v16 = *v6;
      v17 = *v8;
      v18 = v16;
      v19 = sub_1E4205964();
      v20 = sub_1E42054D4();
      v22 = v21;

      if (!a6)
      {
        break;
      }

      if (v20 == a5 && v22 == a6)
      {
      }

      else
      {
        v24 = sub_1E42079A4();

        if ((v24 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v25 = v47;
      v8 = v47 + 1;
      v6 = v15;
      if (v9 != v47)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v9;
    }

LABEL_20:
    v25 = v15;
    v6 = v15 + 1;
    v8 = v47;
    if (v9 == v15)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v9 = *v25;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[v11] <= a4)
  {
    memmove(a4, __dst, 8 * v11);
  }

  v13 = &v6[v11];
  v44 = v6;
  v45 = v9;
LABEL_32:
  v27 = v8--;
  for (--v7; v13 > v6 && v27 > v9; --v7)
  {
    v48 = v13;
    v30 = v13 - 1;
    v29 = *(v13 - 1);
    v31 = v8;
    v32 = *v8;
    v33 = v29;
    v34 = v32;
    v35 = sub_1E4205964();
    v36 = sub_1E42054D4();
    v38 = v37;

    if (a6)
    {
      if (v36 == a5 && v38 == a6)
      {

        v8 = v31;
LABEL_50:
        v6 = v44;
        v9 = v45;
        v13 = v48;
        if (v7 + 1 != v27)
        {
          *v7 = *v8;
        }

        goto LABEL_32;
      }

      v40 = sub_1E42079A4();

      v8 = v31;
      if (v40)
      {
        goto LABEL_50;
      }
    }

    else
    {

      v8 = v31;
    }

    v6 = v44;
    if (v48 != v7 + 1)
    {
      *v7 = *v30;
    }

    v13 = v30;
    v9 = v45;
  }

LABEL_53:
  v41 = v13 - v6;
  if (v27 != v6 || v27 >= &v6[v41])
  {
    memmove(v27, v6, 8 * v41);
  }

  return 1;
}

uint64_t sub_1E3F9BC10(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v14 = v7 == v6;
      v6 += 8;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 8;
    }

    v13 = *v4;
    v14 = v7 == v4;
    v4 += 8;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
LABEL_25:
  v16 = v6 - 8;
  for (v5 -= 8; v11 > v4 && v6 > v7; v5 -= 8)
  {
    v18 = *(v11 - 1);
    if (v18 < *v16)
    {
      v14 = v5 + 8 == v6;
      v6 -= 8;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 8)
    {
      *v5 = v18;
    }

    v11 -= 8;
  }

LABEL_38:
  v19 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

uint64_t sub_1E3F9BDA4(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v5 = (*(**(v1 + 16) + 480))(v9);
  v6 = *v4;
  if (!*v4)
  {
    return v5(v9, 0);
  }

  v7 = v4;

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v7 = v6;
  if (v6 >> 62 || (result & 1) == 0)
  {
    result = sub_1E37EFA58(v6);
    v6 = result;
    *v7 = result;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v2)
  {
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v3;

    return v5(v9, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F9BEB4()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 1280))(result);

    if (v1)
    {
      OUTLINED_FUNCTION_5_0();
      v2 = *(v1 + 16);

      v2(v3);
    }
  }

  return result;
}

void sub_1E3F9BF68(uint64_t a1@<X8>)
{
  sub_1E3F984B8();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1E3F9BFB8(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) == 2 && *(a1 + 32) != *(a1 + 40) && (v6 = a1, , sub_1E3F9A678(&v6), v3 = *(v6 + 2), , v3))
  {
    v6 = v2;
    v4 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
    sub_1E383ACA0(0, v4, &off_1F5D8FCF0);
    return sub_1E3F8E9D0();
  }

  else
  {

    return sub_1E3F8E9D0();
  }
}

uint64_t sub_1E3F9C114()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v9;
  v4[1] = sub_1E37E1058;

  return sub_1E3F941B4(v4, v5, v6, v1, v7, v8, v2);
}

uint64_t objectdestroy_52Tm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));
  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E3F9C1FC()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v6;
  v3[1] = sub_1E388EDB0;

  return sub_1E3F93F8C(v3, v4, v5, v1);
}

uint64_t sub_1E3F9C2EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_84_20@<X0>(char a1@<W8>)
{
  *(v1 - 168) = a1;

  return sub_1E3F9F164((v1 - 168));
}

uint64_t OUTLINED_FUNCTION_111_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_112_15()
{

  return sub_1E4200664();
}

uint64_t OUTLINED_FUNCTION_113_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_114_11()
{

  return sub_1E4200844();
}

uint64_t OUTLINED_FUNCTION_116_13(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{

  return sub_1E3F8D39C(v6, v5, a3, a4, a5);
}

uint64_t sub_1E3F9C48C(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_3_0();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2 & 1;
  return result;
}

double sub_1E3F9C528()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    return *(v0 + 136);
  }

  sub_1E40BF120();
  *(v0 + 136) = result;
  *(v0 + 144) = v2;
  *(v0 + 152) = 0;
  return result;
}

uint64_t sub_1E3F9C564()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4A8);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_1E4299720;
    OUTLINED_FUNCTION_2_4();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1E3F9F14C;
    *(v4 + 24) = v0;
    *(v3 + 32) = 1;
    *(v3 + 40) = sub_1E3F9EFA0;
    *(v3 + 48) = v4;
    OUTLINED_FUNCTION_2_4();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1E3F9EFA8;
    *(v5 + 24) = v0;
    *(v3 + 56) = 0;
    *(v3 + 64) = sub_1E3F9F150;
    *(v3 + 72) = v5;
    type metadata accessor for MultiPlayerViewControllerPlayerDistribution(0);
    OUTLINED_FUNCTION_40_66();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4B0);
    sub_1E3F9EFB0(&qword_1ECF3D4B8);
    *(inited + 40) = OUTLINED_FUNCTION_18_127();
    *(inited + 48) = 2;
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_1E4299720;
    OUTLINED_FUNCTION_2_4();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1E3F9EFF4;
    *(v7 + 24) = v0;
    *(v6 + 32) = 1;
    *(v6 + 40) = sub_1E3F9F150;
    *(v6 + 48) = v7;
    OUTLINED_FUNCTION_2_4();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1E3F9F000;
    *(v8 + 24) = v0;
    *(v6 + 56) = 0;
    *(v6 + 64) = sub_1E3F9F150;
    *(v6 + 72) = v8;
    OUTLINED_FUNCTION_40_66();
    *(inited + 56) = OUTLINED_FUNCTION_18_127();
    *(inited + 64) = 3;
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_1E4299720;
    OUTLINED_FUNCTION_2_4();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1E3F9F010;
    *(v10 + 24) = v0;
    *(v9 + 32) = 1;
    *(v9 + 40) = sub_1E3F9F150;
    *(v9 + 48) = v10;
    OUTLINED_FUNCTION_2_4();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1E3F9F154;
    *(v11 + 24) = v0;
    *(v9 + 56) = 0;
    *(v9 + 64) = sub_1E3F9F150;
    *(v9 + 72) = v11;
    OUTLINED_FUNCTION_40_66();
    *(inited + 72) = OUTLINED_FUNCTION_18_127();
    *(inited + 80) = 4;
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1E4299720;
    OUTLINED_FUNCTION_2_4();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1E3F9F018;
    *(v13 + 24) = v0;
    *(v12 + 32) = 1;
    *(v12 + 40) = sub_1E3F9F150;
    *(v12 + 48) = v13;
    OUTLINED_FUNCTION_2_4();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1E3F9F020;
    *(v14 + 24) = v0;
    *(v12 + 56) = 0;
    *(v12 + 64) = sub_1E3F9F150;
    *(v12 + 72) = v14;
    OUTLINED_FUNCTION_40_66();
    *(inited + 88) = sub_1E4205CB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4C0);
    v1 = sub_1E4205CB4();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3F9C930@<X0>(void *a1@<X0>, double *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void, void, void, double, double)@<X5>, uint64_t *a7@<X8>)
{
  result = a6(*a1, *a3, *a4, *a5, *(a5 + 8), *a2, a2[1]);
  *a7 = result;
  return result;
}

uint64_t sub_1E3F9C984(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  sub_1E3F9CA0C(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_1E3F9CA0C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 72) = 0x3FF0000000000000;
  *(v7 + 80) = 0;
  *(v7 + 88) = xmmword_1E42E1860;
  *(v7 + 104) = xmmword_1E42E1870;
  *(v7 + 120) = xmmword_1E42E1880;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 1;
  *(v7 + 160) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  return v7;
}

uint64_t sub_1E3F9CA64(uint64_t a1, char a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_0_8();
  (*(*v4 + 152))();
  OUTLINED_FUNCTION_2_15();

  return sub_1E3F9CB08(v8, a2, a3, a4, v9, v10);
}

uint64_t sub_1E3F9CB08(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_0_8();
  v14 = v13;
  v15 = sub_1E32AE9B0(v13);
  v16 = sub_1E3F9C564();
  v17 = sub_1E39260C8(v15, v16);

  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1E3F9CD50(a3, v17);

  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
    return v19;
  }

  v44 = v14;
  v43[0] = v7;
  v43[1] = v6;
  v42 = a2 & 1;
  v41 = a4 & 1;
  v39 = a5;
  v40 = a6 & 1;
  v18(&v38, &v44, v43, &v42, &v41, &v39);
  sub_1E34AF594(v18);
  v20 = v38;
  result = sub_1E32AE9B0(v14);
  if (!result)
  {
    return v20;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1E6911E60](0, v14);
LABEL_7:
    v23 = v22;
    v24 = [v22 vuiIsRTL];

    if (v24)
    {
      v25 = *(v20 + 16);
      if (v25)
      {
        v43[0] = v19;
        sub_1E3F9F02C(0, v25, 0);
        v19 = v43[0];
        v26 = v20 + 56;
        do
        {
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v43[0] = v19;
          v36 = *(v19 + 16);
          v35 = *(v19 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_1E3F9F02C((v35 > 1), v36 + 1, 1);
            v19 = v43[0];
          }

          *(v19 + 16) = v36 + 1;
          v37 = (v19 + 32 * v36);
          v37[4] = v28;
          v37[5] = v30;
          v37[6] = v32;
          v37[7] = v34;
          v26 += 32;
          --v25;
        }

        while (v25);
      }

      return v19;
    }

    return v20;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v14 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F9CD50(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3887C44(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_1E3F9CDA8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_8();
  v9 = sub_1E3F9CB08(v7, 1, v8, v6 & 1, 0, 0);
  OUTLINED_FUNCTION_2_15();
  v12 = sub_1E3F9CB08(v10, 1, a2, v11, 0x3FF0000000000000, 0);
  if (a4)
  {
    v13 = *(v9 + 16);
    if (v13)
    {
      v14 = *(v9 + 32 * v13 + 24);
    }

    else
    {
      v14 = 0.0;
    }

    if (!v13)
    {
      goto LABEL_17;
    }

    v16 = *(v12 + 16);
    v15 = v16 ? *(v12 + 32 * v16 + 24) : 0.0;
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!*(v9 + 16) || !*(v12 + 16))
    {
      goto LABEL_17;
    }

    v14 = *(v9 + 48);
    v15 = *(v12 + 48);
  }

  if (fabs(v14 - v15) >= 50.0)
  {
LABEL_17:
    v18 = sub_1E3F9EEBC(v9, v12);

    v17 = v18 ^ 1;
    return v17 & 1;
  }

LABEL_16:
  v17 = 0;
  return v17 & 1;
}

void sub_1E3F9CF0C(char a1, double a2, double a3)
{
  sub_1E3F9D050([objc_allocWithZone(MEMORY[0x1E6958608]) init], *(v3 + 16));
  v7 = (*(*v3 + 152))();
  v8 = sub_1E3F9DD98(a2, a3, v7, 1, a1);

  v9 = (v8 + 56);
  v10 = -*(v8 + 16);
  v11 = -1;
  while (1)
  {
    if (v10 + v11 == -1)
    {
LABEL_6:

      return;
    }

    if (++v11 >= *(v8 + 16))
    {
      break;
    }

    v12 = *v9;
    v14.origin.x = OUTLINED_FUNCTION_2_15();
    v14.size.height = v12;
    Width = CGRectGetWidth(v14);
    if (Width >= sub_1E3F9C528())
    {
      v9 += 4;
      v15.origin.x = OUTLINED_FUNCTION_2_15();
      v15.size.height = v12;
      if (CGRectGetHeight(v15) >= *(v3 + 144))
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1E3F9D050(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_1E3D529CC();
      v4 = sub_1E4206314();
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
      for (i = ((v4 & 0xFFFFFFFFFFFFFF8) + 32); ; ++i)
      {
        --v2;
        *i = v3;
        if (!v2)
        {
          break;
        }

        v6 = v3;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

double sub_1E3F9D0D4(double a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_1E40BF120();
    OUTLINED_FUNCTION_171();
    sub_1E40BF094();
  }

  else
  {
    sub_1E40BF114(a2 + -33.0, *(v5 + 24), *(v5 + 32));
    OUTLINED_FUNCTION_171();
    sub_1E40BF0A0();
  }

  OUTLINED_FUNCTION_35_73();
  v12 = sub_1E40BF0B0(v9, a1, a2, v10, v11, v6);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
  v19 = swift_allocObject();
  *&result = 1;
  *(v19 + 16) = xmmword_1E4297BE0;
  *(v19 + 32) = v12;
  *(v19 + 40) = v14;
  *(v19 + 48) = v16;
  *(v19 + 56) = v18;
  return result;
}

uint64_t sub_1E3F9D198(double a1, double a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v11 = v7;
  OUTLINED_FUNCTION_2_4();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v18 = swift_allocObject();
  if (a7)
  {
    v19 = 0.655;
  }

  else
  {
    v19 = 0.5;
    if (*&a6 >= 0.5)
    {
      if (*&a6 <= 0.655)
      {
        v19 = *&a6;
      }

      else
      {
        v19 = 0.655;
      }
    }
  }

  if (a5)
  {
    v20 = OUTLINED_FUNCTION_31_81();
    sub_1E3952BD8(v20, v21, v22);
    v79 = a2;
    v23 = *(v11 + 24);
    v24 = *(v11 + 32);
    OUTLINED_FUNCTION_30_79();
    sub_1E40BF114(v25, v26, v27);
    OUTLINED_FUNCTION_23_92();
    *(v18 + 16) = v28;
    *(v18 + 24) = v29;
    OUTLINED_FUNCTION_30_79();
    sub_1E40BF114(v30, v31, v32);
    OUTLINED_FUNCTION_171();
    *(v17 + 16) = v33;
    *(v17 + 24) = v34;
    v35 = v9 / v33;
    v36 = OUTLINED_FUNCTION_4_229();
    sub_1E3F9D4D8(v36, v37);
    v77 = a1;
    if (v38 > a1)
    {
      OUTLINED_FUNCTION_30_79();
      sub_1E40BF120();
      OUTLINED_FUNCTION_23_92();
      OUTLINED_FUNCTION_3_0();
      *(v18 + 16) = v9;
      *(v18 + 24) = v10;
      OUTLINED_FUNCTION_30_79();
      sub_1E40BF120();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_3_0();
      *(v17 + 16) = v19;
      *(v17 + 24) = v8;
    }

    v39 = v23;
    v40 = OUTLINED_FUNCTION_4_229();
    v43 = v79;
    if (sub_1E3F9D558(v40, v41, v42) <= v79)
    {
      v44 = 1;
    }

    else
    {
      sub_1E40BF114(v79, v39, v24);
      OUTLINED_FUNCTION_23_92();
      v44 = 1;
      OUTLINED_FUNCTION_3_0();
      *(v18 + 16) = v9;
      *(v18 + 24) = v10;
      sub_1E40BF114(v10 / v35, v39, v24);
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_3_0();
      *(v17 + 16) = v19;
      *(v17 + 24) = v8;
    }

    a1 = v77;
  }

  else
  {
    v45 = OUTLINED_FUNCTION_31_81();
    sub_1E3952BE0(v45, v46, v47, v48);
    sub_1E40BF120();
    OUTLINED_FUNCTION_23_92();
    *(v18 + 16) = v49;
    *(v18 + 24) = v50;
    v43 = a2;
    sub_1E40BF120();
    OUTLINED_FUNCTION_171();
    v44 = 0;
    *(v17 + 16) = v51;
    *(v17 + 24) = v52;
  }

  j__OUTLINED_FUNCTION_1_248();
  OUTLINED_FUNCTION_35_73();
  sub_1E40BF0B0(v53, a1, v43, v54, v55, v9);
  OUTLINED_FUNCTION_23_92();
  v57 = v56;
  j__OUTLINED_FUNCTION_1_248();
  OUTLINED_FUNCTION_35_73();
  v61 = sub_1E40BF0B0(v58, a1, v43, v59, v60, v19);
  v78 = v63;
  v65 = v64;
  if (v44)
  {
    v66 = v61;
    v67 = OUTLINED_FUNCTION_4_229();
    v10 = (v43 - sub_1E3F9D558(v67, v68, v69)) * 0.5;
    v84.origin.x = OUTLINED_FUNCTION_20_116();
    MaxY = CGRectGetMaxY(v84);
    v71 = MaxY + sub_1E3952BD8(v83, v82, v81);
  }

  else
  {
    v71 = v62;
    v72 = OUTLINED_FUNCTION_4_229();
    sub_1E3F9D4D8(v72, v73);
    OUTLINED_FUNCTION_37_73();
    v85.origin.x = OUTLINED_FUNCTION_20_116();
    MaxX = CGRectGetMaxX(v85);
    v66 = MaxX + sub_1E3952BE0(v83, v82, v81, v80);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1E4299720;
  *(v75 + 32) = v9;
  *(v75 + 40) = v10;
  *(v75 + 48) = a1;
  *(v75 + 56) = v57;
  *(v75 + 64) = v66;
  *(v75 + 72) = v71;
  *(v75 + 80) = v78;
  *(v75 + 88) = v65;

  return v75;
}

void sub_1E3F9D4D8(char a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_170();
    OUTLINED_FUNCTION_10_153();
  }

  else
  {
    OUTLINED_FUNCTION_9_170();
    v3 = *(a2 + 16);
    OUTLINED_FUNCTION_10_153();
    v4 = OUTLINED_FUNCTION_22_94();
    floor(v3 + sub_1E3952BE0(v4, v5, v6, v7));
  }
}

double sub_1E3F9D558(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_170();
    v5 = *(a2 + 24);
    OUTLINED_FUNCTION_10_153();
    v6 = OUTLINED_FUNCTION_22_94();
    v9 = v5 + sub_1E3952BD8(v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_9_170();
    v10 = *(a2 + 24);
    OUTLINED_FUNCTION_10_153();
    v9 = *(a3 + 24);
    if (v10 > v9)
    {
      v9 = v10;
    }
  }

  return floor(v9);
}

uint64_t sub_1E3F9D5D8(double a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_2_4();
    v8 = swift_allocObject();
    v9 = v5[3];
    v10 = v5[4];
    sub_1E40BF120();
    v117 = v11;
    *(v8 + 16) = v11;
    *(v8 + 24) = v12;
    v13 = v5[8];
    v136 = v5[7];
    sub_1E3952BE0(v5[5], v5[6], v136, v13);
    OUTLINED_FUNCTION_2_4();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_11_170();
    sub_1E40BF120();
    v138 = v15;
    *(v14 + 16) = v15;
    v17 = v16;
    *(v14 + 24) = v16;
    OUTLINED_FUNCTION_2_4();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_11_170();
    sub_1E40BF120();
    v122 = v20;
    v124 = v19;
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    OUTLINED_FUNCTION_39_61();
    v21 = a2;
    if (OUTLINED_FUNCTION_39_61() <= a2)
    {
      OUTLINED_FUNCTION_36_65();
      rect = v17;
      v25 = v117;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_25_94();
      v24 = sub_1E3952BD8(v22, v23, v136);
      v130 = a2;
      v25 = sub_1E40BF114((v9 + v9) * (v10 / v9) / (v10 + (v9 + v9) * (v10 / v9)) * (a2 - v24), v9, v10);
      v27 = v26;
      OUTLINED_FUNCTION_15_149();
      *(v8 + 16) = v25;
      *(v8 + 24) = v27;
      v28 = OUTLINED_FUNCTION_25_94();
      sub_1E3952BE0(v28, v29, v136, v13);
      OUTLINED_FUNCTION_11_170();
      sub_1E40BF120();
      v31 = v30;
      v33 = v32;
      OUTLINED_FUNCTION_3_0();
      v138 = v31;
      *(v14 + 16) = v31;
      *(v14 + 24) = v33;
      rect = v33;
      sub_1E40BF120();
      v35 = v34;
      v37 = v36;
      OUTLINED_FUNCTION_3_0();
      v122 = v37;
      v124 = v35;
      *(v18 + 16) = v35;
      *(v18 + 24) = v37;
      v9 = 0.0;
      v21 = v130;
    }

    v60 = sub_1E40BF0A0();
    v140.origin.x = sub_1E40BF0B0(*v60, a1, v21, 0.0, v9, v25);
    x = v140.origin.x;
    height = v140.size.height;
    v116 = v140.origin.x;
    y = v140.origin.y;
    width = v140.size.width;
    v64 = v140.size.height;
    MinX = CGRectGetMinX(v140);
    v141.origin.x = x;
    v141.origin.y = y;
    v141.size.width = width;
    v141.size.height = v64;
    MaxY = CGRectGetMaxY(v141);
    v66 = OUTLINED_FUNCTION_24_101();
    v142.origin.y = MaxY + sub_1E3952BD8(v66, v67, v136);
    v132 = v142.origin.y;
    v142.origin.x = MinX;
    v142.size.width = v138;
    v142.size.height = rect;
    MaxX = CGRectGetMaxX(v142);
    v69 = OUTLINED_FUNCTION_24_101();
    v120 = MaxX + OUTLINED_FUNCTION_26_107(v69, v70);
    v143.origin.x = v116;
    v143.origin.y = y;
    v143.size.width = width;
    v143.size.height = height;
    v71 = CGRectGetMaxY(v143);
    v72 = OUTLINED_FUNCTION_24_101();
    v74 = v71 + OUTLINED_FUNCTION_26_107(v72, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1E4297BD0;
    *(v75 + 32) = v116;
    *(v75 + 40) = y;
    *(v75 + 48) = width;
    *(v75 + 56) = height;
    *(v75 + 64) = MinX;
    *(v75 + 72) = v132;
    *(v75 + 80) = v138;
    *(v75 + 88) = rect;
    *(v75 + 96) = v120;
    *(v75 + 104) = v74;
    *(v75 + 112) = v124;
    *(v75 + 120) = v122;
  }

  else
  {
    v39 = v5[3];
    v38 = v5[4];
    sub_1E3F9EB44(2, a1, a2);
    OUTLINED_FUNCTION_2_4();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_2_229();
    sub_1E40BF120();
    v41 = a2;
    v43 = v42;
    *(v40 + 16) = v42;
    *(v40 + 24) = v44;
    v45 = v5[8];
    v137 = v5[6];
    v139 = v5[5];
    recta = v5[7];
    sub_1E3952BD8(v139, v137, recta);
    v131 = v41;
    OUTLINED_FUNCTION_36_65();
    OUTLINED_FUNCTION_2_4();
    v46 = swift_allocObject();
    v47 = OUTLINED_FUNCTION_2_229();
    v50 = sub_1E40BF114(v47, v48, v49);
    *(v46 + 16) = v50;
    v52 = v51;
    *(v46 + 24) = v51;
    v53 = OUTLINED_FUNCTION_2_229();
    v56 = sub_1E40BF114(v53, v54, v55);
    v129 = v57;
    v128 = v45;
    v119 = a1;
    if (sub_1E3F9E728(v40) <= a1)
    {
      v126 = v56;
      v45 = v50;
    }

    else
    {
      sub_1E3952BE0(v139, v137, recta, v45);
      OUTLINED_FUNCTION_2_229();
      sub_1E40BF120();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_15_149();
      *(v46 + 16) = v45;
      *(v46 + 24) = v52;
      OUTLINED_FUNCTION_2_229();
      sub_1E40BF120();
      v126 = v58;
      v129 = v59;
    }

    v76 = v43;
    OUTLINED_FUNCTION_5_0();
    v77 = *(v46 + 24);
    OUTLINED_FUNCTION_5_0();
    v78 = OUTLINED_FUNCTION_22_94();
    v81 = v77 + sub_1E3952BD8(v78, v79, v80);
    OUTLINED_FUNCTION_5_0();
    v82 = *(v40 + 24);
    if (v81 > v82)
    {
      v82 = v81;
    }

    if (floor(v82) <= v131)
    {
      v123 = v45;
    }

    else
    {
      v76 = sub_1E40BF114(v131, v39, v38);
      v84 = v83;
      OUTLINED_FUNCTION_3_0();
      *(v40 + 16) = v76;
      *(v40 + 24) = v84;
      sub_1E3952BD8(v139, v137, recta);
      OUTLINED_FUNCTION_36_65();
      v85 = OUTLINED_FUNCTION_2_229();
      sub_1E40BF114(v85, v86, v87);
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_15_149();
      v123 = v45;
      *(v46 + 16) = v45;
      *(v46 + 24) = v52;
      v88 = OUTLINED_FUNCTION_2_229();
      v126 = sub_1E40BF114(v88, v89, v90);
      v129 = v91;
    }

    sub_1E40BF094();
    OUTLINED_FUNCTION_35_73();
    sub_1E40BF0B0(v92, v119, v131, v93, v94, v76);
    v133 = v95;
    v97 = v96;
    v99 = v98;
    v100 = (v119 - sub_1E3F9E728(v40)) * 0.5;
    OUTLINED_FUNCTION_32_81();
    CGRect.center.getter(v101, v102, v103, v104);
    v125 = v105 - recta - v52;
    OUTLINED_FUNCTION_32_81();
    v106 = CGRectGetMaxX(v144);
    v121 = v106 + sub_1E3952BE0(v139, v137, recta, v128);
    OUTLINED_FUNCTION_32_81();
    CGRect.center.getter(v107, v108, v109, v110);
    v118 = v139 + v111;
    OUTLINED_FUNCTION_24_101();
    OUTLINED_FUNCTION_32_81();
    v112 = CGRectGetMaxX(v145);
    v113 = v112 + sub_1E3952BE0(v139, v137, recta, v128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1E4297BD0;
    *(v75 + 32) = v100;
    *(v75 + 40) = v133;
    *(v75 + 48) = v97;
    *(v75 + 56) = v99;
    *(v75 + 64) = v121;
    *(v75 + 72) = v125;
    *(v75 + 80) = v123;
    *(v75 + 88) = v52;
    *(v75 + 96) = v113;
    *(v75 + 104) = v118;
    *(v75 + 112) = v126;
    *(v75 + 120) = v129;
  }

  return v75;
}

double sub_1E3F9DCF8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_0();
  v8 = *(a1 + 24);
  v9 = sub_1E3952BD8(a2[5], a2[6], a2[7]);
  OUTLINED_FUNCTION_5_0();
  v10 = *(a3 + 24);
  OUTLINED_FUNCTION_5_0();
  v11 = *(a4 + 24);
  if (v10 > v11)
  {
    v11 = v10;
  }

  return floor(v8 + v9 + v11);
}

uint64_t sub_1E3F9DD98(double a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = v5[4];
  if (a5)
  {
    OUTLINED_FUNCTION_5_214();
    sub_1E40BF120();
    v135 = v8;
    v146 = v9;
    v10 = v5[5];
    v11 = v5[6];
    v12 = v5[7];
    v13 = v5[8];
    v14 = OUTLINED_FUNCTION_34_71();
    v18 = sub_1E3952BE0(v14, v15, v16, v17);
    OUTLINED_FUNCTION_33_78(v18);
    OUTLINED_FUNCTION_2_4();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_4_94();
    sub_1E40BF120();
    v158 = v20;
    *(v19 + 16) = v20;
    rect = v21;
    *(v19 + 24) = v21;
    OUTLINED_FUNCTION_2_4();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_4_94();
    sub_1E40BF120();
    v149 = v24;
    v151 = v23;
    *(v22 + 16) = v23;
    *(v22 + 24) = v24;
    OUTLINED_FUNCTION_2_4();
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_4_94();
    sub_1E40BF120();
    v141 = v27;
    v143 = v26;
    *(v25 + 16) = v26;
    *(v25 + 24) = v27;
    v28 = OUTLINED_FUNCTION_34_71();
    sub_1E3952BD8(v28, v29, v30);
    v31 = sub_1E3F9E68C(v19);
    v139 = v10;
    v32 = sub_1E3952BD8(v10, v11, v12);
    if (floor(sub_1E3F9E68C(v19) + v146 + v32 + v32) <= a2)
    {
      OUTLINED_FUNCTION_36_65();
      v54 = v11;
      v39 = v135;
    }

    else
    {
      v33 = v11;
      sub_1E3952BD8(v139, v11, v12);
      OUTLINED_FUNCTION_5_214();
      sub_1E40BF114(v34, v35, v36);
      v37 = OUTLINED_FUNCTION_24_101();
      v39 = v38;
      v41 = sub_1E3952BE0(v37, v40, v12, v13);
      OUTLINED_FUNCTION_33_78(v41);
      OUTLINED_FUNCTION_4_94();
      sub_1E40BF120();
      v43 = v42;
      v45 = v44;
      OUTLINED_FUNCTION_3_0();
      v158 = v43;
      *(v19 + 16) = v43;
      *(v19 + 24) = v45;
      rect = v45;
      OUTLINED_FUNCTION_4_94();
      sub_1E40BF120();
      v47 = v46;
      v49 = v48;
      OUTLINED_FUNCTION_15_149();
      v149 = v49;
      v151 = v47;
      *(v22 + 16) = v47;
      *(v22 + 24) = v49;
      OUTLINED_FUNCTION_17_4();
      sub_1E40BF120();
      v51 = v50;
      v53 = v52;
      OUTLINED_FUNCTION_3_0();
      v141 = v53;
      v143 = v51;
      *(v25 + 16) = v51;
      *(v25 + 24) = v53;
      v31 = 0.0;
      v54 = v33;
    }

    v92 = sub_1E40BF0A0();
    v163.origin.x = sub_1E40BF0B0(*v92, a1, a2, 0.0, v31, v39);
    x = v163.origin.x;
    y = v163.origin.y;
    width = v163.size.width;
    height = v163.size.height;
    v128 = v163.size.height;
    MinX = CGRectGetMinX(v163);
    v164.origin.x = OUTLINED_FUNCTION_2_229();
    v164.size.height = height;
    MaxY = CGRectGetMaxY(v164);
    v165.origin.y = MaxY + OUTLINED_FUNCTION_26_107(v139, v54);
    v156 = v165.origin.y;
    v165.origin.x = MinX;
    v165.size.width = v158;
    v165.size.height = rect;
    MaxX = CGRectGetMaxX(v165);
    v133 = MaxX + OUTLINED_FUNCTION_19_138();
    v166.origin.x = x;
    v166.origin.y = y;
    v166.size.width = width;
    v166.size.height = v128;
    v137 = CGRectGetMaxY(v166);
    v138 = v137 + OUTLINED_FUNCTION_26_107(v139, v54);
    v167.origin.y = v138;
    v167.origin.x = v133;
    v167.size.height = v149;
    v167.size.width = v151;
    v98 = CGRectGetMaxX(v167);
    v132 = v98 + OUTLINED_FUNCTION_19_138();
    v168.origin.x = x;
    v168.origin.y = y;
    v168.size.width = width;
    v168.size.height = v128;
    v99 = CGRectGetMaxY(v168);
    v100 = v99 + OUTLINED_FUNCTION_19_138();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1E4298AD0;
    *(v101 + 32) = x;
    *(v101 + 40) = y;
    *(v101 + 48) = width;
    *(v101 + 56) = v128;
    *(v101 + 64) = MinX;
    *(v101 + 72) = v156;
    *(v101 + 80) = v158;
    *(v101 + 88) = rect;
    *(v101 + 96) = v133;
    *(v101 + 104) = v138;
    *(v101 + 112) = v151;
    *(v101 + 120) = v149;
    *(v101 + 128) = v132;
    *(v101 + 136) = v100;
    *(v101 + 144) = v143;
    *(v101 + 152) = v141;
  }

  else
  {
    recta = v5[5];
    v56 = v5[7];
    v55 = v5[8];
    v147 = v55;
    v150 = v5[6];
    sub_1E3952BD8(recta, v150, v56);
    v57 = v5[3];
    sub_1E3F9EB44(3, a1, a2);
    OUTLINED_FUNCTION_2_4();
    v58 = swift_allocObject();
    sub_1E40BF120();
    v59 = v7;
    v152 = v60;
    *(v58 + 16) = v61;
    *(v58 + 24) = v60;
    v130 = v61;
    sub_1E3952BE0(recta, v150, v56, v55);
    OUTLINED_FUNCTION_2_4();
    v62 = swift_allocObject();
    sub_1E40BF120();
    v64 = v63;
    v142 = v65;
    *(v62 + 16) = v65;
    *(v62 + 24) = v63;
    sub_1E40BF120();
    v159 = v66;
    v68 = v67;
    sub_1E40BF120();
    v136 = v70;
    v140 = v69;
    v144 = v56;
    v71 = v64 + v68 + v70;
    v72 = OUTLINED_FUNCTION_11_170();
    v73 = v152;
    v76 = sub_1E3952BD8(v72, v74, v75);
    v77 = v71 + v76 + v76;
    if (v77 <= v152)
    {
      v77 = v152;
    }

    if (floor(v77) <= a2)
    {
      v145 = v64;
      v90 = v130;
      v85 = v68;
    }

    else
    {
      v78 = sub_1E3952BD8(recta, v150, v144);
      v79 = sub_1E40BF114((a2 - (v78 + v78)) / 3.0, v57, v59);
      v81 = v80;
      OUTLINED_FUNCTION_3_0();
      v142 = v79;
      *(v62 + 16) = v79;
      *(v62 + 24) = v81;
      v145 = v81;
      v82 = OUTLINED_FUNCTION_17_4();
      v159 = sub_1E40BF114(v82, v83, v59);
      v85 = v84;
      v86 = OUTLINED_FUNCTION_17_4();
      v88 = sub_1E40BF114(v86, v87, v59);
      v136 = v89;
      v140 = v88;
      v90 = sub_1E40BF114(a2, v57, v59);
      v73 = v91;
      OUTLINED_FUNCTION_15_149();
      *(v58 + 16) = v90;
      *(v58 + 24) = v73;
    }

    if (sub_1E3F9E728(v58) > a1)
    {
      sub_1E3952BE0(recta, v150, v144, v147);
      OUTLINED_FUNCTION_5_214();
      sub_1E40BF120();
      v103 = v102;
      v105 = v104;
      OUTLINED_FUNCTION_3_0();
      v142 = v103;
      *(v62 + 16) = v103;
      *(v62 + 24) = v105;
      v145 = v105;
      OUTLINED_FUNCTION_5_214();
      sub_1E40BF120();
      v159 = v106;
      v85 = v107;
      OUTLINED_FUNCTION_5_214();
      sub_1E40BF120();
      v136 = v109;
      v140 = v108;
    }

    v110 = (a2 - v73) * 0.5;
    v162 = (a1 - sub_1E3F9E728(v58)) * 0.5;
    CGRect.center.getter(v162, v110, v90, v73);
    v112 = v111 - v85 * 0.5;
    v157 = v112;
    v169.origin.x = v162;
    v169.origin.y = v110;
    v169.size.width = v90;
    v169.size.height = v73;
    v113 = CGRectGetMaxX(v169);
    v170.origin.x = v113 + sub_1E3952BE0(recta, v150, v144, v147);
    v134 = v170.origin.x;
    v170.origin.y = v112;
    v170.size.width = v159;
    v170.size.height = v85;
    CGRectGetMinY(v170);
    v114 = OUTLINED_FUNCTION_7_205();
    v131 = v112 - sub_1E3952BD8(v114, v115, v116) - v145;
    v171.origin.x = v162;
    v171.origin.y = v110;
    v171.size.width = v90;
    v171.size.height = v73;
    CGRectGetMaxX(v171);
    v117 = OUTLINED_FUNCTION_7_205();
    v129 = v112 + sub_1E3952BE0(v117, v118, v119, v120);
    v172.origin.x = v134;
    v172.origin.y = v112;
    v172.size.width = v159;
    v172.size.height = v85;
    CGRectGetMaxY(v172);
    v121 = OUTLINED_FUNCTION_7_205();
    v127 = v112 + sub_1E3952BD8(v121, v122, v123);
    OUTLINED_FUNCTION_5_214();
    v173.size.height = v73;
    v124 = CGRectGetMaxX(v173);
    v125 = v124 + sub_1E3952BE0(recta, v150, v144, v147);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1E4298AD0;
    *(v101 + 32) = v162;
    *(v101 + 40) = v110;
    *(v101 + 48) = v90;
    *(v101 + 56) = v73;
    *(v101 + 64) = v129;
    *(v101 + 72) = v131;
    *(v101 + 80) = v142;
    *(v101 + 88) = v145;
    *(v101 + 96) = v134;
    *(v101 + 104) = v157;
    *(v101 + 112) = v159;
    *(v101 + 120) = v85;
    *(v101 + 128) = v125;
    *(v101 + 136) = v127;
    *(v101 + 144) = v140;
    *(v101 + 152) = v136;
  }

  return v101;
}

double sub_1E3F9E68C(uint64_t a1)
{
  OUTLINED_FUNCTION_38_66(a1);
  OUTLINED_FUNCTION_5_0();
  v9[0] = *(v3 + 24);
  OUTLINED_FUNCTION_5_0();
  v7 = *(v2 + 24);
  v8 = 0;
  OUTLINED_FUNCTION_5_0();
  v5 = *(v1 + 24);
  v6 = 0;
  sub_1E3793CAC();
  max<A>(_:_:_:)(v9, &v7, &v5, MEMORY[0x1E69E7DE0]);
  return floor(*&v9[4]);
}

double sub_1E3F9E728(uint64_t a1)
{
  OUTLINED_FUNCTION_38_66(a1);
  OUTLINED_FUNCTION_5_0();
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_5_0();
  return floor(v4 + *(v2 + 16) + sub_1E3952BE0(v1[5], v1[6], v1[7], v1[8]));
}

CGFloat sub_1E3F9E794(double a1)
{
  v2 = v1[6];
  v96 = v1[5];
  v4 = v1[7];
  v3 = v1[8];
  OUTLINED_FUNCTION_21_108();
  sub_1E3952BE0(v5, v6, v7, v8);
  OUTLINED_FUNCTION_37_73();
  v9 = v1[3];
  v10 = v1[4];
  OUTLINED_FUNCTION_28_82();
  v12 = v11;
  v108 = v13;
  OUTLINED_FUNCTION_28_82();
  v15 = v14;
  v98 = v14;
  v104 = v16;
  OUTLINED_FUNCTION_28_82();
  v105 = v17;
  v103 = v18;
  v94 = v9;
  sub_1E40BF120();
  v102 = v19;
  v107 = v12;
  v20 = v12 + v15;
  v22 = v21;
  OUTLINED_FUNCTION_21_108();
  v27 = v20 + sub_1E3952BE0(v23, v24, v25, v26);
  v97 = v22;
  v100 = v4;
  v28 = v105 + v22 + sub_1E3952BE0(v96, v2, v4, v3);
  if (v27 > v28)
  {
    v28 = v27;
  }

  if (v28 <= a1 && (v27 = v108 + v102 + sub_1E3952BD8(v96, v2, v4), OUTLINED_FUNCTION_21_108(), sub_1E3952BD8(v29, v30, v31), OUTLINED_FUNCTION_29_93(), v32 <= v33))
  {
    v48 = v105 + v22;
  }

  else
  {
    sub_1E3952BD8(v96, v2, v4);
    OUTLINED_FUNCTION_37_73();
    v34 = sub_1E40BF114(v27, v94, v10);
    v108 = v35;
    v36 = OUTLINED_FUNCTION_25_94();
    v38 = sub_1E40BF114(v36, v37, v10);
    v40 = v39;
    v41 = OUTLINED_FUNCTION_25_94();
    v43 = sub_1E40BF114(v41, v42, v10);
    v45 = v44;
    v46 = OUTLINED_FUNCTION_25_94();
    v107 = v34;
    v98 = v38;
    v20 = v38 + v34;
    v105 = v43;
    v97 = sub_1E40BF114(v46, v47, v10);
    v48 = v43 + v97;
    v102 = v49;
    v103 = v45;
    v104 = v40;
  }

  v50 = OUTLINED_FUNCTION_17_4();
  v52 = v20 + sub_1E3952BE0(v50, v51, v100, v3);
  v53 = OUTLINED_FUNCTION_6();
  v57 = v48 + sub_1E3952BE0(v53, v54, v55, v56);
  if (v52 > v57)
  {
    v57 = v52;
  }

  v58 = (a1 - v57) * 0.5;
  v59 = OUTLINED_FUNCTION_6();
  sub_1E3952BD8(v59, v60, v61);
  v62 = OUTLINED_FUNCTION_6();
  sub_1E3952BD8(v62, v63, v64);
  OUTLINED_FUNCTION_29_93();
  v109.origin.y = (v66 - v65) * 0.5;
  rect = v109.origin.y;
  v109.origin.x = v58;
  v95 = v58;
  v109.size.width = v107;
  v109.size.height = v108;
  MaxX = CGRectGetMaxX(v109);
  v68 = OUTLINED_FUNCTION_6();
  v99 = MaxX + sub_1E3952BE0(v68, v69, v70, v71);
  v72 = OUTLINED_FUNCTION_6();
  v76 = v20 + sub_1E3952BE0(v72, v73, v74, v75);
  v77 = OUTLINED_FUNCTION_6();
  sub_1E3952BE0(v77, v78, v79, v80);
  OUTLINED_FUNCTION_37_73();
  v110.origin.x = v58;
  v110.origin.y = rect;
  v110.size.width = v107;
  v110.size.height = v108;
  MaxY = CGRectGetMaxY(v110);
  v82 = OUTLINED_FUNCTION_6();
  v85 = MaxY + sub_1E3952BD8(v82, v83, v84);
  v111.origin.x = v76;
  v111.origin.y = v85;
  v111.size.width = v97;
  v111.size.height = v102;
  v86 = CGRectGetMaxX(v111);
  v87 = OUTLINED_FUNCTION_6();
  v91 = v86 + sub_1E3952BE0(v87, v88, v89, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1E4298AD0;
  *(v92 + 32) = v95;
  *(v92 + 40) = rect;
  *(v92 + 48) = v107;
  *(v92 + 56) = v108;
  *(v92 + 64) = v99;
  *(v92 + 72) = rect;
  *(v92 + 80) = v98;
  *(v92 + 88) = v104;
  *(v92 + 96) = v91;
  *(v92 + 104) = v85;
  *(v92 + 112) = v105;
  *(v92 + 120) = v103;
  result = v76;
  *(v92 + 128) = v76;
  *(v92 + 136) = v85;
  *(v92 + 144) = v97;
  *(v92 + 152) = v102;
  return result;
}

void sub_1E3F9EB44(uint64_t a1, double a2, double a3)
{
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v6 = (a1 - 1);
    v7 = v3[5];
    v13 = v3[6];
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1E3952BD8(v7, v13, v8);
    v11 = v3[3];
    v12 = v3[4];
    sub_1E40BF114((a3 - v10 * v6) / a1, v11, v12);
    sub_1E3952BE0(v7, v13, v8, v9);
    sub_1E40BF120();
    sub_1E40BF114(a3, v11, v12);
    sub_1E3952BE0(v7, v13, v8, v9);
  }
}

uint64_t sub_1E3F9ECA0()
{

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

void (*sub_1E3F9ED64(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 168))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3F9EEBC(uint64_t result, uint64_t a2)
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

  v3 = a2 + 56;
  v4 = result + 56;
  while (v2)
  {
    result = CGRectEqualToRect(*(v4 - 24), *(v3 - 24));
    if (result)
    {
      v5 = v2 == 1;
    }

    else
    {
      v5 = 1;
    }

    --v2;
    v3 += 32;
    v4 += 32;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F9EFB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MultiPlayerViewControllerPlayerDistribution(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1E3F9F02C(char *a1, int64_t a2, char a3)
{
  result = sub_1E3F9F04C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3F9F04C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

uint64_t sub_1E3F9F164(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(v1, v2);
  sub_1E4205D64();
}

double sub_1E3F9F204@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1E3F9F27C();
  if (v6)
  {
    sub_1E3F9F95C(v6, a1, a2, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E3F9F27C()
{
  sub_1E32822E0();
  result = sub_1E4207194();
  v1 = result;
  v2 = *(result + 16);
  v3 = (result + 16 * v2 + 24);
  v4 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    while (v2 <= *(v1 + 16))
    {
      v6 = *(v3 - 1);
      v5 = *v3;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E3740F88(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_1E3740F88((v7 > 1), v8 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v3 -= 2;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    if (!*(v4 + 16))
    {

      return 0;
    }

    return v4;
  }

  return result;
}

void sub_1E3F9F3BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = (a1 + 16 + 16 * v5);
    v8 = *v7;
    v9 = v7[1];

    sub_1E3277E60(v8, v9, a2, &v58);

    if (!v59)
    {
      sub_1E329505C(&v58);
      goto LABEL_93;
    }

    sub_1E329504C(&v58, v60);
    if (v5 == 1)
    {
      *(a3 + 24) = MEMORY[0x1E69E7CA0] + 8;
      v10 = swift_allocObject();
      *a3 = v10;
      sub_1E329504C(v60, (v10 + 16));
      return;
    }

    sub_1E328438C(v60, &v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    if (OUTLINED_FUNCTION_15_150())
    {

      v11 = OUTLINED_FUNCTION_12_152();
      sub_1E39E7FEC(v11, v12);
      OUTLINED_FUNCTION_20_117();
      sub_1E3FA1AE0(v13, v14, v15, v16);
      if (v17)
      {
        OUTLINED_FUNCTION_18_128();
        if (!v22)
        {

          goto LABEL_91;
        }

        if ((v19 & 0x1000000000000000) != 0)
        {
          v25 = sub_1E37801A4(v18, v19, 10);
          v51 = v50;

          if (v51)
          {
            goto LABEL_91;
          }

LABEL_96:
          if (v25 >= *(v57 + 16))
          {
            __swift_destroy_boxed_opaque_existential_1(v60);

            swift_unknownObjectRelease();
            goto LABEL_93;
          }

          if ((v25 & 0x8000000000000000) == 0)
          {
            v52 = *(v57 + 8 * v25 + 32);

            swift_unknownObjectRetain();
            v53 = OUTLINED_FUNCTION_12_152();
            v55 = sub_1E3FA1B34(v53, v54, v8, v9, v5);
            sub_1E3F9F3BC(v55, v52);

            swift_unknownObjectRelease();

            goto LABEL_99;
          }

          __break(1u);
          goto LABEL_105;
        }

        if ((v19 & 0x2000000000000000) != 0)
        {
          *&v58 = v18;
          *(&v58 + 1) = v19 & 0xFFFFFFFFFFFFFFLL;
          if (v18 == 43)
          {
            if (!v21)
            {
LABEL_108:
              __break(1u);
              return;
            }

            if (v21 != 1)
            {
              OUTLINED_FUNCTION_10_154();
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v27 & v26)
                {
                  break;
                }

                OUTLINED_FUNCTION_32_6();
                if (!v27)
                {
                  break;
                }

                v25 = v41 + v40;
                if (__OFADD__(v41, v40))
                {
                  break;
                }

                OUTLINED_FUNCTION_132();
                if (v27)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (v18 == 45)
          {
            if (!v21)
            {
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            if (v21 != 1)
            {
              OUTLINED_FUNCTION_10_154();
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v27 & v26)
                {
                  break;
                }

                OUTLINED_FUNCTION_32_6();
                if (!v27)
                {
                  break;
                }

                v25 = v35 - v34;
                if (__OFSUB__(v35, v34))
                {
                  break;
                }

                OUTLINED_FUNCTION_132();
                if (v27)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (v21)
          {
            v44 = &v58;
            while (*v44 - 48 <= 9)
            {
              OUTLINED_FUNCTION_32_6();
              if (!v27)
              {
                break;
              }

              v25 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                break;
              }

              v44 = (v45 + 1);
              if (v46 == 1)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_89;
        }

        if ((v18 & 0x1000000000000000) != 0)
        {
          v23 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v23 = sub_1E4207524();
          v20 = v56;
        }

        v24 = *v23;
        if (v24 == 43)
        {
          if (v20 < 1)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v20 == 1)
          {
            goto LABEL_89;
          }

          v25 = 0;
          if (v23)
          {
            OUTLINED_FUNCTION_11_171();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v27 & v26)
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_32_6();
              if (!v27)
              {
                goto LABEL_89;
              }

              v25 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_132();
              if (v27)
              {
                goto LABEL_90;
              }
            }
          }
        }

        else if (v24 == 45)
        {
          if (v20 < 1)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          if (v20 == 1)
          {
            goto LABEL_89;
          }

          v25 = 0;
          if (v23)
          {
            OUTLINED_FUNCTION_11_171();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v27 & v26)
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_32_6();
              if (!v27)
              {
                goto LABEL_89;
              }

              v25 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_89;
              }

              OUTLINED_FUNCTION_132();
              if (v27)
              {
                goto LABEL_90;
              }
            }
          }
        }

        else
        {
          if (!v20)
          {
LABEL_89:
            v25 = 0;
            LOBYTE(v20) = 1;
LABEL_90:
            v49 = v20;

            if (v49)
            {
LABEL_91:
              swift_unknownObjectRelease();

              goto LABEL_92;
            }

            goto LABEL_96;
          }

          v25 = 0;
          if (v23)
          {
            while (1)
            {
              v42 = *v23 - 48;
              if (v42 > 9)
              {
                goto LABEL_89;
              }

              v43 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                goto LABEL_89;
              }

              v25 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                goto LABEL_89;
              }

              ++v23;
              if (!--v20)
              {
                goto LABEL_90;
              }
            }
          }
        }

LABEL_88:
        LOBYTE(v20) = 0;
        goto LABEL_90;
      }

      __swift_destroy_boxed_opaque_existential_1(v60);
      swift_unknownObjectRelease();

LABEL_93:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    sub_1E328438C(v60, &v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if ((OUTLINED_FUNCTION_15_150() & 1) == 0)
    {
LABEL_92:
      __swift_destroy_boxed_opaque_existential_1(v60);
      goto LABEL_93;
    }

    v30 = OUTLINED_FUNCTION_12_152();
    sub_1E39E7FEC(v30, v31);
    OUTLINED_FUNCTION_20_117();
    if (v5)
    {
      sub_1E42079E4();
      OUTLINED_FUNCTION_33_10();
      swift_unknownObjectRetain_n();
      v36 = swift_dynamicCastClass();
      if (!v36)
      {
        swift_unknownObjectRelease();
        v36 = MEMORY[0x1E69E7CC0];
      }

      v37 = *(v36 + 16);

      if (__OFSUB__(v5 >> 1, v9))
      {
        __break(1u);
      }

      else if (v37 == (v5 >> 1) - v9)
      {
        v33 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v33)
        {
LABEL_52:
          (sub_1E3F9F3BC)(v33);

LABEL_99:
          __swift_destroy_boxed_opaque_existential_1(v60);
          return;
        }

        v33 = MEMORY[0x1E69E7CC0];
LABEL_51:
        swift_unknownObjectRelease();
        goto LABEL_52;
      }

      swift_unknownObjectRelease();
    }

    sub_1E3FA276C(a1, v8, v9, v5);
    v33 = v32;
    goto LABEL_51;
  }

  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  *a3 = a2;
}

void sub_1E3F9F95C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  OUTLINED_FUNCTION_1_2();
  v90 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = *(a1 + 16);
  if (v23)
  {
    v88 = &v88 - v22;
    v89 = a4;
    v24 = (a1 + 16 + 16 * v23);
    v25 = v24[1];
    v92 = *v24;
    v93 = v25;

    sub_1E4205D64();

    OUTLINED_FUNCTION_34_8();
    if (__swift_getEnumTagSinglePayload(v26, v27, v28) == 1)
    {
      (*(v10 + 8))(v13, v8);
      v29 = v89;
      *v89 = 0u;
      *(v29 + 1) = 0u;
      return;
    }

    v30 = v90;
    v31 = *(v90 + 32);
    v32 = v88;
    v31(v88, v13, a3);
    v33 = v89;
    if (v23 == 1)
    {
      v89[3] = a3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
      v31(boxed_opaque_existential_1, v32, a3);
      return;
    }

    v35 = *(v30 + 16);
    v35(v20, v32, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    if (swift_dynamicCast())
    {
      v36 = v33;
      v37 = v92;

      sub_1E39E7FEC(1, a1);
      OUTLINED_FUNCTION_19_139();
      sub_1E3FA1AE0(v38, v39, v40, v41);
      if (!v42)
      {
        v60 = OUTLINED_FUNCTION_5_215();
        v61(v60);
        swift_unknownObjectRelease();

LABEL_98:
        v33 = v36;
        goto LABEL_99;
      }

      OUTLINED_FUNCTION_18_128();
      if (!v47)
      {

        goto LABEL_93;
      }

      if ((v44 & 0x1000000000000000) != 0)
      {
        v50 = sub_1E37801A4(v43, v44, 10);
        v77 = v86;
        v36 = v89;
        goto LABEL_92;
      }

      if ((v44 & 0x2000000000000000) != 0)
      {
        v92 = v43;
        v93 = v44 & 0xFFFFFFFFFFFFFFLL;
        if (v43 == 43)
        {
          if (!v46)
          {
LABEL_109:
            __break(1u);
            return;
          }

          if (v46 != 1)
          {
            OUTLINED_FUNCTION_10_154();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v52 & v51)
              {
                break;
              }

              OUTLINED_FUNCTION_1_21();
              if (!v52)
              {
                break;
              }

              v50 = v69 + v68;
              if (__OFADD__(v69, v68))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v52)
              {
                goto LABEL_91;
              }
            }
          }
        }

        else if (v43 == 45)
        {
          if (!v46)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v46 != 1)
          {
            OUTLINED_FUNCTION_10_154();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v52 & v51)
              {
                break;
              }

              OUTLINED_FUNCTION_1_21();
              if (!v52)
              {
                break;
              }

              v50 = v63 - v62;
              if (__OFSUB__(v63, v62))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v52)
              {
                goto LABEL_91;
              }
            }
          }
        }

        else if (v46)
        {
          v72 = &v92;
          while (*v72 - 48 <= 9)
          {
            OUTLINED_FUNCTION_1_21();
            if (!v52)
            {
              break;
            }

            v50 = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              break;
            }

            v72 = (v73 + 1);
            if (v74 == 1)
            {
              goto LABEL_89;
            }
          }
        }

        goto LABEL_90;
      }

      if ((v43 & 0x1000000000000000) != 0)
      {
        v48 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v48 = sub_1E4207524();
        v45 = v87;
      }

      v49 = *v48;
      if (v49 == 43)
      {
        if (v45 < 1)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        if (v45 == 1)
        {
          goto LABEL_90;
        }

        v50 = 0;
        if (v48)
        {
          OUTLINED_FUNCTION_11_171();
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v52 & v51)
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_1_21();
            if (!v52)
            {
              goto LABEL_90;
            }

            v50 = v67 + v66;
            if (__OFADD__(v67, v66))
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_132();
            if (v52)
            {
              goto LABEL_91;
            }
          }
        }
      }

      else if (v49 == 45)
      {
        if (v45 < 1)
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        if (v45 == 1)
        {
          goto LABEL_90;
        }

        v50 = 0;
        if (v48)
        {
          OUTLINED_FUNCTION_11_171();
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v52 & v51)
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_1_21();
            if (!v52)
            {
              goto LABEL_90;
            }

            v50 = v54 - v53;
            if (__OFSUB__(v54, v53))
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_132();
            if (v52)
            {
              goto LABEL_91;
            }
          }
        }
      }

      else
      {
        if (!v45)
        {
LABEL_90:
          v50 = 0;
          LOBYTE(v45) = 1;
          goto LABEL_91;
        }

        v50 = 0;
        if (v48)
        {
          while (1)
          {
            v70 = *v48 - 48;
            if (v70 > 9)
            {
              goto LABEL_90;
            }

            v71 = 10 * v50;
            if ((v50 * 10) >> 64 != (10 * v50) >> 63)
            {
              goto LABEL_90;
            }

            v50 = v71 + v70;
            if (__OFADD__(v71, v70))
            {
              goto LABEL_90;
            }

            ++v48;
            if (!--v45)
            {
              goto LABEL_91;
            }
          }
        }
      }

LABEL_89:
      LOBYTE(v45) = 0;
LABEL_91:
      v91 = v45;
      v77 = v45;
LABEL_92:

      if (v77)
      {
LABEL_93:
        swift_unknownObjectRelease();

        v78 = OUTLINED_FUNCTION_5_215();
        v79(v78);
        goto LABEL_98;
      }

      if (v50 >= *(v37 + 16))
      {
        v84 = OUTLINED_FUNCTION_5_215();
        v85(v84);

        swift_unknownObjectRelease();
        goto LABEL_98;
      }

      if ((v50 & 0x8000000000000000) == 0)
      {
        v80 = *(v37 + 8 * v50 + 32);

        swift_unknownObjectRetain();
        v81 = sub_1E3FA1B34(1, a1, v31, v30, v33);
        sub_1E3F9F3BC(v81, v80, v36);
        swift_unknownObjectRelease();

        v82 = OUTLINED_FUNCTION_5_215();
        v83(v82);
        return;
      }

      __break(1u);
      goto LABEL_106;
    }

    v35(v17, v32, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (!swift_dynamicCast())
    {
      (*(v30 + 8))(v32, a3);
LABEL_99:
      *v33 = 0u;
      *(v33 + 16) = 0u;
      return;
    }

    v55 = v92;

    sub_1E39E7FEC(1, a1);
    OUTLINED_FUNCTION_19_139();
    if (v33)
    {
      sub_1E42079E4();
      swift_unknownObjectRetain_n();
      v64 = swift_dynamicCastClass();
      if (!v64)
      {
        swift_unknownObjectRelease();
        v64 = MEMORY[0x1E69E7CC0];
      }

      v65 = *(v64 + 16);

      if (__OFSUB__(v33 >> 1, v30))
      {
        __break(1u);
      }

      else if (v65 == (v33 >> 1) - v30)
      {
        v57 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v58 = a3;
        v59 = v90;
        if (v57)
        {
LABEL_53:
          sub_1E3F9F3BC(v57, v55, v33);

          (*(v59 + 8))(v88, v58);
          return;
        }

        v57 = MEMORY[0x1E69E7CC0];
LABEL_52:
        swift_unknownObjectRelease();
        goto LABEL_53;
      }

      swift_unknownObjectRelease();
    }

    sub_1E3FA276C(a1, v31, v30, v33);
    v57 = v56;
    v58 = a3;
    v59 = v90;
    goto LABEL_52;
  }

  a4[3] = sub_1E4205D34();
  *a4 = a2;
}

uint64_t sub_1E3FA012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E3F9F27C();

  if (v6)
  {
    sub_1E3294F34(a1, &v8);
    if (v9)
    {
      sub_1E329504C(&v8, v10);
      sub_1E3FA0C04(v10, v6, a4);

      sub_1E329505C(a1);
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_1E329505C(a1);

      return sub_1E329505C(&v8);
    }
  }

  else
  {

    return sub_1E329505C(a1);
  }
}

uint64_t sub_1E3FA0218(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 16 + 16 * v4);
    v7 = *v5;
    v6 = v5[1];

    OUTLINED_FUNCTION_7_206();
    if (!*(&v163 + 1))
    {
      goto LABEL_39;
    }

    sub_1E329505C(&v162);
    if (v4 == 1)
    {
      sub_1E328438C(v3, &v162);
      return sub_1E3946774(&v162, v7, v6);
    }

    OUTLINED_FUNCTION_7_206();
    if (*(&v163 + 1))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
      OUTLINED_FUNCTION_16_140(v16, v17, v18, v19, v20, v21, v22, v23, v112, v115, v118, v121, v124, v127, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159);
      if (swift_dynamicCast())
      {

        v24 = OUTLINED_FUNCTION_12_152();
        v26 = sub_1E39E7FEC(v24, v25);
        v122 = v28;
        v125 = v27;
        v119 = v29;
        v30 = sub_1E3FA1AE0(v26, v27, v28, v29);
        if (v31)
        {
          v32 = v30;
          v33 = v31;
          OUTLINED_FUNCTION_7_206();
          if (*(&v163 + 1))
          {
            OUTLINED_FUNCTION_16_140(v34, v35, v36, v37, v38, v39, v40, v41, v113, v116, v119, v122, v125, v26, v159, v133, v136, v139, v142, v145, v148, v151, v154, v157, v159);
            if (swift_dynamicCast())
            {
              v42 = v159;
              v43 = HIBYTE(v33) & 0xF;
              v44 = v32 & 0xFFFFFFFFFFFFLL;
              if ((v33 & 0x2000000000000000) != 0)
              {
                v45 = HIBYTE(v33) & 0xF;
              }

              else
              {
                v45 = v32 & 0xFFFFFFFFFFFFLL;
              }

              if (!v45)
              {

                goto LABEL_103;
              }

              if ((v33 & 0x1000000000000000) != 0)
              {
                v48 = sub_1E37801A4(v32, v33, 10);
                v76 = v111;
                goto LABEL_102;
              }

              if ((v33 & 0x2000000000000000) != 0)
              {
                *&v162 = v32;
                *(&v162 + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
                if (v32 == 43)
                {
                  if (!v43)
                  {
LABEL_152:
                    __break(1u);
                    goto LABEL_153;
                  }

                  if (v43 != 1)
                  {
                    OUTLINED_FUNCTION_10_154();
                    while (1)
                    {
                      OUTLINED_FUNCTION_1_4();
                      if (!v50 & v49)
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_6_11();
                      if (!v50)
                      {
                        break;
                      }

                      v48 = v71 + v70;
                      if (__OFADD__(v71, v70))
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_132();
                      if (v50)
                      {
                        goto LABEL_101;
                      }
                    }
                  }
                }

                else if (v32 == 45)
                {
                  if (!v43)
                  {
LABEL_150:
                    __break(1u);
                    goto LABEL_151;
                  }

                  if (v43 != 1)
                  {
                    OUTLINED_FUNCTION_10_154();
                    while (1)
                    {
                      OUTLINED_FUNCTION_1_4();
                      if (!v50 & v49)
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_6_11();
                      if (!v50)
                      {
                        break;
                      }

                      v48 = v67 - v66;
                      if (__OFSUB__(v67, v66))
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_132();
                      if (v50)
                      {
                        goto LABEL_101;
                      }
                    }
                  }
                }

                else if (v43)
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_1_4();
                    if (!v50 & v49)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_6_11();
                    if (!v50)
                    {
                      break;
                    }

                    v48 = v75 + v74;
                    if (__OFADD__(v75, v74))
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_132();
                    if (v50)
                    {
                      goto LABEL_101;
                    }
                  }
                }

                goto LABEL_100;
              }

              if ((v32 & 0x1000000000000000) != 0)
              {
                v46 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v46 = sub_1E4207524();
              }

              v47 = *v46;
              if (v47 == 43)
              {
                if (v44 < 1)
                {
LABEL_151:
                  __break(1u);
                  goto LABEL_152;
                }

                if (v44 == 1)
                {
                  goto LABEL_100;
                }

                v48 = 0;
                if (v46)
                {
                  OUTLINED_FUNCTION_11_171();
                  while (1)
                  {
                    OUTLINED_FUNCTION_1_4();
                    if (!v50 & v49)
                    {
                      goto LABEL_100;
                    }

                    OUTLINED_FUNCTION_6_11();
                    if (!v50)
                    {
                      goto LABEL_100;
                    }

                    v48 = v69 + v68;
                    if (__OFADD__(v69, v68))
                    {
                      goto LABEL_100;
                    }

                    OUTLINED_FUNCTION_132();
                    if (v50)
                    {
                      goto LABEL_101;
                    }
                  }
                }
              }

              else if (v47 == 45)
              {
                if (v44 < 1)
                {
LABEL_149:
                  __break(1u);
                  goto LABEL_150;
                }

                if (v44 == 1)
                {
                  goto LABEL_100;
                }

                v48 = 0;
                if (v46)
                {
                  OUTLINED_FUNCTION_11_171();
                  while (1)
                  {
                    OUTLINED_FUNCTION_1_4();
                    if (!v50 & v49)
                    {
                      goto LABEL_100;
                    }

                    OUTLINED_FUNCTION_6_11();
                    if (!v50)
                    {
                      goto LABEL_100;
                    }

                    v48 = v52 - v51;
                    if (__OFSUB__(v52, v51))
                    {
                      goto LABEL_100;
                    }

                    OUTLINED_FUNCTION_132();
                    if (v50)
                    {
                      goto LABEL_101;
                    }
                  }
                }
              }

              else
              {
                if (!v44)
                {
LABEL_100:
                  v48 = 0;
                  v53 = 1;
                  goto LABEL_101;
                }

                v48 = 0;
                if (v46)
                {
                  do
                  {
                    v72 = *v46 - 48;
                    if (v72 > 9)
                    {
                      goto LABEL_100;
                    }

                    v73 = 10 * v48;
                    if ((v48 * 10) >> 64 != (10 * v48) >> 63)
                    {
                      goto LABEL_100;
                    }

                    v48 = v73 + v72;
                    if (__OFADD__(v73, v72))
                    {
                      goto LABEL_100;
                    }

                    ++v46;
                  }

                  while (--v44);
                }
              }

              v53 = 0;
LABEL_101:
              LOBYTE(v159) = v53;
              v76 = v53;
LABEL_102:

              if (v76)
              {
LABEL_103:

                swift_unknownObjectRelease();
              }

              v32 = v130;
              if (v48 >= v130[2])
              {

                return swift_unknownObjectRelease();
              }

              v117 = v48;
              swift_unknownObjectRetain();
              v33 = sub_1E3FA1B34(1, v128, v126, v123, v120);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v32 = sub_1E3FA2A70(v130);
              }

              if (v48 < 0)
              {
                __break(1u);
              }

              else
              {
                v126 = v42;
                if (v48 < *(v32 + 16))
                {
                  sub_1E3FA0218(v3, v33);

                  OUTLINED_FUNCTION_34_8();
                  sub_1E39ABF00(v77, v78, v79);
                  v161 = *(v32 + 8 * v48 + 32);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
                  v80 = swift_dynamicCast();
                  if (v80)
                  {
                    v88 = OUTLINED_FUNCTION_16_140(v80, v81, v82, v83, v84, v85, v86, v87, v114, v48, v120, v123, v42, v128, v32, v134, v137, v140, v143, v146, v149, v152, v155, v158, v159);
                    sub_1E329504C(v88, v89);
                    v33 = MEMORY[0x1E69E7CC0];
                    v42 = v126;
                    if (!v48)
                    {
                      goto LABEL_124;
                    }

                    v32 = sub_1E39E8C20(0, v48 + 1, v126);
                    v33 = v90;
                    v42 = v91;
                    v3 = v92;
                    if (v92)
                    {
                      sub_1E42079E4();
                      OUTLINED_FUNCTION_33_10();
                      swift_unknownObjectRetain_n();
                      v94 = swift_dynamicCastClass();
                      if (!v94)
                      {
                        swift_unknownObjectRelease();
                        v94 = MEMORY[0x1E69E7CC0];
                      }

                      v95 = *(v94 + 16);

                      if (__OFSUB__(v3 >> 1, v42))
                      {
                        goto LABEL_154;
                      }

                      if (v95 != (v3 >> 1) - v42)
                      {
                        goto LABEL_155;
                      }

                      v33 = swift_dynamicCastClass();
                      swift_unknownObjectRelease();
                      v42 = v126;
                      if (v33)
                      {
                        goto LABEL_124;
                      }

                      v33 = MEMORY[0x1E69E7CC0];
                      goto LABEL_123;
                    }

                    while (1)
                    {
                      sub_1E3FA283C(v32, v33, v42, v3);
                      v33 = v93;
                      v42 = v126;
LABEL_123:
                      swift_unknownObjectRelease();
LABEL_124:
                      v96 = *(v42 + 16);
                      if (v117 == v96 - 1)
                      {

                        goto LABEL_126;
                      }

                      if (v96 > v117 + 1)
                      {
                        break;
                      }

LABEL_153:
                      __break(1u);
LABEL_154:
                      __break(1u);
LABEL_155:
                      swift_unknownObjectRelease();
                    }

                    v98 = sub_1E39E8C20(v117 + 1, v96, v42);
                    v100 = v99;
                    v102 = v101;
                    v104 = v103;

                    if ((v104 & 1) == 0)
                    {
                      goto LABEL_129;
                    }

                    sub_1E42079E4();
                    swift_unknownObjectRetain_n();
                    v106 = swift_dynamicCastClass();
                    if (!v106)
                    {
                      swift_unknownObjectRelease();
                      v106 = MEMORY[0x1E69E7CC0];
                    }

                    v107 = *(v106 + 16);

                    if (__OFSUB__(v104 >> 1, v102))
                    {
                      __break(1u);
                    }

                    else if (v107 == (v104 >> 1) - v102)
                    {
                      v97 = swift_dynamicCastClass();
                      OUTLINED_FUNCTION_33_10();
                      swift_unknownObjectRelease_n();
                      if (v97)
                      {
                        goto LABEL_135;
                      }

                      swift_unknownObjectRelease();
LABEL_126:
                      v97 = MEMORY[0x1E69E7CC0];
                      goto LABEL_135;
                    }

                    swift_unknownObjectRelease_n();
LABEL_129:
                    sub_1E3FA283C(v98, v100, v102, v104);
                    v97 = v105;
                    swift_unknownObjectRelease();
LABEL_135:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_1E4297BE0;
                    sub_1E328438C(&v162, inited + 32);
                    v109 = sub_1E3BA7DD8(inited);
                    swift_setDeallocating();
                    sub_1E3FA2724();
                    if (v109)
                    {
                      v110 = v109;
                    }

                    else
                    {
                      v110 = MEMORY[0x1E69E7CC0];
                    }

                    sub_1E3EA0974(v110);
                    sub_1E3EA0974(v97);
                    v161 = v33;
                    if ((swift_dynamicCast() & 1) == 0)
                    {
                      v159 = 0u;
                      v160 = 0u;
                    }

                    sub_1E3946774(&v159, v7, v6);
                    swift_unknownObjectRelease();
                    __swift_destroy_boxed_opaque_existential_1(&v162);
                  }

                  else
                  {
                    v159 = 0u;
                    v160 = 0u;

                    swift_unknownObjectRelease();
                    sub_1E329505C(&v159);
                  }
                }
              }

              __break(1u);
              goto LABEL_149;
            }

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();

            sub_1E329505C(&v162);
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1E329505C(&v162);
    }

    OUTLINED_FUNCTION_7_206();
    if (!*(&v163 + 1))
    {
LABEL_39:

      return sub_1E329505C(&v162);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    *&v159 = v161;

    v54 = OUTLINED_FUNCTION_12_152();
    v57 = sub_1E39E7FEC(v54, v55);
    v59 = v58;
    v61 = v60;
    if (v60)
    {
      v131 = v56;
      sub_1E42079E4();
      OUTLINED_FUNCTION_33_10();
      swift_unknownObjectRetain_n();
      v64 = swift_dynamicCastClass();
      if (!v64)
      {
        swift_unknownObjectRelease();
        v64 = MEMORY[0x1E69E7CC0];
      }

      v65 = *(v64 + 16);

      if (__OFSUB__(v61 >> 1, v59))
      {
        __break(1u);
      }

      else if (v65 == (v61 >> 1) - v59)
      {
        v63 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v63)
        {
          goto LABEL_48;
        }

        v63 = MEMORY[0x1E69E7CC0];
LABEL_47:
        swift_unknownObjectRelease();
LABEL_48:
        sub_1E3FA0218(v3, v63);

        v161 = v159;
        if ((swift_dynamicCast() & 1) == 0)
        {
          v162 = 0u;
          v163 = 0u;
        }

        return sub_1E3946774(&v162, v7, v6);
      }

      swift_unknownObjectRelease();
      v56 = v131;
    }

    sub_1E3FA276C(v57, v56, v59, v61);
    v63 = v62;
    goto LABEL_47;
  }

  sub_1E328438C(a1, &v162);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_16_140(v9, v10, v11, v9, v12, v13, v14, v15, v112, v115, v118, v121, v124, v127, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159);
  result = swift_dynamicCast();
  if (result)
  {

    *v2 = v159;
  }

  return result;
}

uint64_t sub_1E3FA0C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  OUTLINED_FUNCTION_1_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1E4207104();
  OUTLINED_FUNCTION_1_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](&v145 - v19);
  v21 = &v145 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v145 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v32 = &v145 - v31;
  v162 = a2;
  v33 = a2 + 16;
  v34 = *(a2 + 16);
  if (v34)
  {
    v155 = v30;
    v156 = v27;
    v153 = v29;
    v154 = v26;
    v158 = a1;
    v159 = a3;
    v151 = v28;
    v152 = v9;
    v35 = (v33 + 16 * v34);
    v36 = *v35;
    v37 = v35[1];
    v157 = v3;
    v38 = *v3;
    v160 = v36;
    v166 = v36;
    v167 = v37;
    swift_bridgeObjectRetain_n();
    sub_1E4205D64();

    if (__swift_getEnumTagSinglePayload(v32, 1, v7) == 1)
    {

      return (*(v13 + 8))(v32, v163);
    }

    v41 = v7;
    v44 = *(v13 + 8);
    v43 = v13 + 8;
    v42 = v44;
    v45 = v163;
    v44(v32, v163);
    if (v34 == 1)
    {
      sub_1E328438C(v158, &v166);
      v46 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v24, v46 ^ 1u, 1, v41);
      v164 = v160;
      v165 = v37;
      return sub_1E4205D74();
    }

    v47 = v160;
    v166 = v160;
    v167 = v37;
    v48 = v37;

    sub_1E4205D64();

    OUTLINED_FUNCTION_34_8();
    if (__swift_getEnumTagSinglePayload(v49, v50, v51) == 1)
    {
      v42(v21, v45);
      goto LABEL_16;
    }

    v150 = v42;
    v149 = v43;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v42 = v150;
LABEL_16:
      v166 = v47;
      v167 = v37;

      v66 = v156;
      sub_1E4205D64();

      OUTLINED_FUNCTION_34_8();
      if (__swift_getEnumTagSinglePayload(v67, v68, v69) == 1)
      {

        return (v42)(v66, v45);
      }

      if (swift_dynamicCast())
      {
        v70 = v41;
        v164 = v166;

        v71 = OUTLINED_FUNCTION_12_152();
        v73 = sub_1E39E7FEC(v71, v72);
        v75 = v74;
        v77 = v76;
        v79 = v78;
        if (v78)
        {
          sub_1E42079E4();
          OUTLINED_FUNCTION_33_10();
          swift_unknownObjectRetain_n();
          v84 = swift_dynamicCastClass();
          if (!v84)
          {
            swift_unknownObjectRelease();
            v84 = MEMORY[0x1E69E7CC0];
          }

          v85 = *(v84 + 16);

          if (__OFSUB__(v79 >> 1, v77))
          {
            __break(1u);
          }

          else if (v85 == (v79 >> 1) - v77)
          {
            v81 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v82 = v158;
            v83 = v159;
            if (v81)
            {
LABEL_31:
              sub_1E3FA0C04(v82, v81, v83);

              v169 = v164;
              v86 = v155;
              v87 = swift_dynamicCast();
              __swift_storeEnumTagSinglePayload(v86, v87 ^ 1u, 1, v70);
              v166 = v47;
              v167 = v37;
              return sub_1E4205D74();
            }

            v81 = MEMORY[0x1E69E7CC0];
LABEL_30:
            swift_unknownObjectRelease();
            goto LABEL_31;
          }

          swift_unknownObjectRelease();
        }

        sub_1E3FA276C(v73, v75, v77, v79);
        v81 = v80;
        v82 = v158;
        v83 = v159;
        goto LABEL_30;
      }
    }

    v155 = v52;
    v156 = v41;
    v53 = v166;
    v54 = v162;

    v55 = sub_1E39E7FEC(1, v54);
    v148 = v56;
    v147 = v57;
    v146 = v58;
    v59 = sub_1E3FA1AE0(v55, v56, v57, v58);
    if (!v60)
    {

      swift_unknownObjectRelease();
    }

    v61 = v59;
    v62 = v60;
    v162 = v55;
    v166 = v47;
    v167 = v37;

    v63 = v154;
    v64 = v156;
    sub_1E4205D64();

    if (__swift_getEnumTagSinglePayload(v63, 1, v64) == 1)
    {

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_13_167();
      v65();
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_107:

      swift_unknownObjectRelease();
    }

    v154 = v166;
    v88 = HIBYTE(v62) & 0xF;
    v89 = v61 & 0xFFFFFFFFFFFFLL;
    if ((v62 & 0x2000000000000000) != 0)
    {
      v90 = HIBYTE(v62) & 0xF;
    }

    else
    {
      v90 = v61 & 0xFFFFFFFFFFFFLL;
    }

    v91 = v162;
    v92 = v53;
    if (!v90)
    {

      goto LABEL_107;
    }

    if ((v62 & 0x1000000000000000) != 0)
    {
      v145 = sub_1E37801A4(v61, v62, 10);
      v114 = v144;
      goto LABEL_106;
    }

    if ((v62 & 0x2000000000000000) != 0)
    {
      v166 = v61;
      v167 = v62 & 0xFFFFFFFFFFFFFFLL;
      if (v61 == 43)
      {
        if (!v88)
        {
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (v88 != 1)
        {
          OUTLINED_FUNCTION_10_154();
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v97 & v96)
            {
              break;
            }

            OUTLINED_FUNCTION_3_231();
            if (!v97 || __OFADD__(v106, v105))
            {
              break;
            }

            OUTLINED_FUNCTION_132();
            if (v97)
            {
              goto LABEL_104;
            }
          }
        }
      }

      else if (v61 == 45)
      {
        if (!v88)
        {
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (v88 != 1)
        {
          OUTLINED_FUNCTION_10_154();
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v97 & v96)
            {
              break;
            }

            OUTLINED_FUNCTION_3_231();
            if (!v97 || __OFSUB__(v102, v101))
            {
              break;
            }

            OUTLINED_FUNCTION_132();
            if (v97)
            {
              goto LABEL_104;
            }
          }
        }
      }

      else if (v88)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v97 & v96)
          {
            break;
          }

          OUTLINED_FUNCTION_3_231();
          if (!v97 || __OFADD__(v113, v112))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v97)
          {
            goto LABEL_104;
          }
        }
      }

      goto LABEL_103;
    }

    if ((v61 & 0x1000000000000000) != 0)
    {
      v93 = ((v62 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v93 = sub_1E4207524();
    }

    v94 = *v93;
    if (v94 == 43)
    {
      if (v89 < 1)
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      if (v89 == 1)
      {
        goto LABEL_103;
      }

      v95 = 0;
      if (v93)
      {
        OUTLINED_FUNCTION_11_171();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v97 & v96)
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_3_231();
          if (!v97 || __OFADD__(v104, v103))
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_132();
          if (v97)
          {
            goto LABEL_104;
          }
        }
      }

LABEL_119:
      v100 = 0;
      goto LABEL_104;
    }

    if (v94 == 45)
    {
      if (v89 < 1)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (v89 == 1)
      {
        goto LABEL_103;
      }

      v95 = 0;
      if (v93)
      {
        OUTLINED_FUNCTION_11_171();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v97 & v96)
          {
            break;
          }

          OUTLINED_FUNCTION_3_231();
          if (!v97 || __OFSUB__(v99, v98))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v97)
          {
            goto LABEL_104;
          }
        }

LABEL_103:
        v95 = 0;
        v100 = 1;
LABEL_104:
        v145 = v95;
LABEL_105:
        LOBYTE(v164) = v100;
        v114 = v100;
LABEL_106:

        if (v114)
        {
          goto LABEL_107;
        }

        if (v145 >= v53[2])
        {

          return swift_unknownObjectRelease();
        }

        swift_unknownObjectRetain();
        v115 = sub_1E3FA1B34(1, v91, v148, v147, v146);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1E3FA2A70(v53);
        }

        v38 = v145;
        if (v145 < 0)
        {
          __break(1u);
        }

        else if (v145 < v92[2])
        {
          sub_1E3FA0218(v158, v115);

          sub_1E39ABF00(v38, 1, v92);
          v166 = v92[v38 + 4];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
          v91 = v153;
          v116 = v156;
          if ((swift_dynamicCast() & 1) == 0)
          {

            swift_unknownObjectRelease();

            __swift_storeEnumTagSinglePayload(v91, 1, 1, v116);
            OUTLINED_FUNCTION_13_167();
            v121();
          }

          __swift_storeEnumTagSinglePayload(v91, 0, 1, v116);
          (*(v152 + 32))(v161, v91, v116);
          v62 = MEMORY[0x1E69E7CC0];
          v148 = v92;
          if (!v38)
          {
            v53 = v154;
            goto LABEL_130;
          }

          v53 = v154;
          v91 = sub_1E39E8C20(0, v38 + 1, v154);
          v38 = v117;
          v92 = v118;
          v62 = v119;
          if (v119)
          {
            sub_1E42079E4();
            swift_unknownObjectRetain_n();
            v122 = swift_dynamicCastClass();
            if (!v122)
            {
              swift_unknownObjectRelease();
              v122 = MEMORY[0x1E69E7CC0];
            }

            v123 = *(v122 + 16);

            if (__OFSUB__(v62 >> 1, v92))
            {
              goto LABEL_157;
            }

            if (v123 != (v62 >> 1) - v92)
            {
              goto LABEL_158;
            }

            v62 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v47 = v160;
            v38 = v145;
            if (v62)
            {
              goto LABEL_130;
            }

            v62 = MEMORY[0x1E69E7CC0];
            goto LABEL_129;
          }

          while (1)
          {
            sub_1E3FA283C(v91, v38, v92, v62);
            v62 = v120;
LABEL_129:
            swift_unknownObjectRelease();
            v38 = v145;
LABEL_130:
            v124 = v53[2];
            if (v38 == v124 - 1)
            {

              v125 = MEMORY[0x1E69E7CC0];
              goto LABEL_141;
            }

            if (v124 > v38 + 1)
            {
              break;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            swift_unknownObjectRelease();
            v47 = v160;
          }

          v126 = sub_1E39E8C20(v38 + 1, v124, v53);
          v128 = v127;
          v130 = v129;
          v132 = v131;

          if (v132)
          {
            sub_1E42079E4();
            swift_unknownObjectRetain_n();
            v134 = swift_dynamicCastClass();
            if (!v134)
            {
              swift_unknownObjectRelease();
              v134 = MEMORY[0x1E69E7CC0];
            }

            v135 = *(v134 + 16);

            if (__OFSUB__(v132 >> 1, v130))
            {
              __break(1u);
            }

            else if (v135 == (v132 >> 1) - v130)
            {
              v125 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              v48 = v37;
              v47 = v160;
              if (!v125)
              {
                swift_unknownObjectRelease();
                v125 = MEMORY[0x1E69E7CC0];
              }

              goto LABEL_141;
            }

            swift_unknownObjectRelease_n();
            v48 = v37;
            v47 = v160;
          }

          sub_1E3FA283C(v126, v128, v130, v132);
          v125 = v133;
          swift_unknownObjectRelease();
LABEL_141:
          v136 = v156;
          sub_1E3FA26B8(v156, v156);
          v137 = v152;
          swift_allocObject();
          sub_1E42062E4();
          v138 = v161;
          (*(v137 + 16))(v139, v161, v136);
          sub_1E4206374();
          v140 = sub_1E4207774();

          if (v140)
          {
            v141 = v140;
          }

          else
          {
            v141 = MEMORY[0x1E69E7CC0];
          }

          v168 = v62;
          sub_1E3EA0974(v141);
          sub_1E3EA0974(v125);
          v164 = v168;
          v142 = v151;
          v143 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v142, v143 ^ 1u, 1, v136);
          v166 = v47;
          v167 = v48;
          sub_1E4205D74();
          swift_unknownObjectRelease();
          (*(v137 + 8))(v138, v136);
        }

        __break(1u);
        goto LABEL_152;
      }

      goto LABEL_119;
    }

    if (v89)
    {
      v107 = 0;
      if (!v93)
      {
LABEL_94:
        v100 = 0;
LABEL_121:
        v145 = v107;
        goto LABEL_105;
      }

      while (1)
      {
        v108 = *v93 - 48;
        if (v108 > 9)
        {
          break;
        }

        v109 = (v107 * 10) >> 64;
        v110 = 10 * v107;
        if (v109 != v110 >> 63)
        {
          break;
        }

        v111 = __OFADD__(v110, v108);
        v107 = v110 + v108;
        if (v111)
        {
          break;
        }

        ++v93;
        if (!--v89)
        {
          goto LABEL_94;
        }
      }
    }

    v107 = 0;
    v100 = 1;
    goto LABEL_121;
  }

  sub_1E328438C(a1, &v166);
  result = swift_dynamicCast();
  if (result)
  {
    v40 = v164;

    *v3 = v40;
  }

  return result;
}

uint64_t sub_1E3FA1AE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) > a3)
  {
    v4 = *(a2 + 16 * (a4 >> 1) - 16);

    return v4;
  }

  __break(1u);
  return result;
}

void *sub_1E3FA1B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v6 = a4;
  v43 = a4;
  if (a1)
  {
    v41 = 0;
    v5 = a5 >> 1;
    v8 = a3 + 8;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = a4;
    v42 = MEMORY[0x1E69E7CC0];
    for (i = a3 + 8; ; v8 = i)
    {
      v11 = (v8 + 16 * v10);
      v12 = v10;
      for (j = v10; ; v10 = j)
      {
        if (v5 == v12)
        {

          swift_unknownObjectRelease();
          return v42;
        }

        if (v10 < v6 || v12 >= v5)
        {
          __break(1u);
          goto LABEL_42;
        }

        v14 = *(v11 - 1);
        v15 = *v11;
        v16 = *(v9 + 2);
        if (v16 >= a1)
        {
          break;
        }

        v17 = v5;
        v18 = a1;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E377FD30(0, v16 + 1, 1);
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v20 >= v19 >> 1)
        {
          sub_1E377FD30((v19 > 1), v20 + 1, 1);
        }

        *(v9 + 2) = v20 + 1;
        v21 = &v9[16 * v20];
        *(v21 + 4) = v14;
        *(v21 + 5) = v15;
        v11 += 2;
        ++v12;
        a1 = v18;
        v5 = v17;
        v6 = v43;
      }

      if (v41 >= v16)
      {
        goto LABEL_43;
      }

      v38 = a1;
      v22 = &v9[16 * v41];
      v24 = *(v22 + 4);
      v23 = *(v22 + 5);

      v25 = v42;
      v39 = v12;
      v45 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1E377FD30(0, *(v42 + 16) + 1, 1);
        v25 = v42;
      }

      v26 = v14;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1E377FD30((v27 > 1), v28 + 1, 1);
        v25 = v42;
      }

      v29 = v5;
      *(v25 + 16) = v28 + 1;
      v42 = v25;
      v30 = v25 + 16 * v28;
      *(v30 + 32) = v24;
      *(v30 + 40) = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E3C3DB74(v9);
      }

      v5 = v41;
      if (v41 >= *(v9 + 2))
      {
        break;
      }

      v31 = &v9[16 * v41];
      v10 = v39 + 1;
      *(v31 + 4) = v26;
      *(v31 + 5) = v15;

      a1 = v38;
      if ((v41 + 1) < v38)
      {
        v32 = v41 + 1;
      }

      else
      {
        v32 = 0;
      }

      v41 = v32;
      v5 = v29;
    }

    goto LABEL_44;
  }

  if (a5)
  {
    sub_1E42079E4();
    swift_unknownObjectRetain_n();
    v35 = swift_dynamicCastClass();
    if (!v35)
    {
      swift_unknownObjectRelease();
      v35 = MEMORY[0x1E69E7CC0];
    }

    v36 = *(v35 + 16);

    v5 = a5 >> 1;
    v37 = __OFSUB__(v5, v6);
    v6 = v5 - v6;
    if (v37)
    {
      goto LABEL_46;
    }

    if (v36 != v6)
    {
      goto LABEL_47;
    }

    v33 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v33)
    {
      return v33;
    }

LABEL_41:
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a5 >> 1;
  v6 = (a5 >> 1) - a4;
  if (!__OFSUB__(a5 >> 1, a4))
  {
    if (v6)
    {
      goto LABEL_34;
    }

    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_41;
  }

LABEL_34:
  result = sub_1E397A388(v6, 0);
  if (v5 != v43)
  {
    v33 = result;
    swift_arrayInitWithCopy();
    swift_unknownObjectRelease();
    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FA1E90()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CA0];
  v3 = sub_1E4205CB4();
  v4 = [v0 allKeys];
  v5 = sub_1E42062B4();

  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_18:

    return v3;
  }

  v7 = v5 + 32;
  v23 = v1;
  while (1)
  {
    sub_1E328438C(v7, v27);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v8 = v26[0];
    v9 = sub_1E4205ED4();
    v10 = [v1 valueForKey_];

    if (!v10)
    {

      goto LABEL_17;
    }

    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3FA217C(v27, &v24);
    if (!v25)
    {
      __swift_destroy_boxed_opaque_existential_1(v27);

      sub_1E329505C(&v24);
      goto LABEL_17;
    }

    v11 = v2;
    sub_1E329504C(&v24, v26);
    sub_1E328438C(v26, &v24);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_1E327D33C(v8, *(&v8 + 1));
    if (__OFADD__(v3[2], (v13 & 1) == 0))
    {
      break;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
    if (sub_1E4207644())
    {
      v16 = sub_1E327D33C(v8, *(&v8 + 1));
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_21;
      }

      v14 = v16;
    }

    if (v15)
    {
      v18 = (v3[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_1E329504C(&v24, v18);
    }

    else
    {
      v3[(v14 >> 6) + 8] |= 1 << v14;
      *(v3[6] + 16 * v14) = v8;
      sub_1E329504C(&v24, (v3[7] + 32 * v14));
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v3[2] = v21;
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v2 = v11;
    v1 = v23;
LABEL_17:
    v7 += 32;
    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E3FA217C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E328438C(a1, v62);
  v5 = sub_1E3280A90(0, &qword_1EE23AD58);
  OUTLINED_FUNCTION_3_19(v5, v6, v7, v5, v8, v9, v10, v11, v45, v49, v53, number);
  if (swift_dynamicCast())
  {
    v12 = numbera;
    v13 = sub_1E4205F74();
    v15 = v14;
    *(a2 + 24) = MEMORY[0x1E69E6158];

    *a2 = v13;
    *(a2 + 8) = v15;
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v16 = sub_1E3280A90(0, &qword_1EE23ADD0);
  OUTLINED_FUNCTION_3_19(v16, v17, v18, v19, v20, v21, v22, v23, v46, v50, v54, numbera);
  if (swift_dynamicCast())
  {
    v24 = numberb;
    Type = CFNumberGetType(numberb);
    if (Type <= kCFNumberDoubleType)
    {
      if (((1 << Type) & 0xF1E) != 0)
      {
        v26 = [(__CFNumber *)numberb integerValue];
        *(a2 + 24) = MEMORY[0x1E69E6530];

        *a2 = v26;
        return __swift_destroy_boxed_opaque_existential_1(v62);
      }

      if (((1 << Type) & 0x3060) != 0)
      {
        [(__CFNumber *)numberb doubleValue];
        v42 = v41;
        *(a2 + 24) = MEMORY[0x1E69E63B0];

        *a2 = v42;
        return __swift_destroy_boxed_opaque_existential_1(v62);
      }

      if (Type == kCFNumberCharType)
      {
        v43 = [(__CFNumber *)numberb BOOLValue];
        *(a2 + 24) = MEMORY[0x1E69E6370];

        *a2 = v43;
        return __swift_destroy_boxed_opaque_existential_1(v62);
      }
    }

    *(a2 + 24) = v16;
LABEL_11:
    *a2 = v24;
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v27 = sub_1E3280A90(0, &qword_1ECF3D4C8);
  OUTLINED_FUNCTION_3_19(v27, v28, v29, v27, v30, v31, v32, v33, v47, v51, v55, numberb);
  if (swift_dynamicCast())
  {
    v24 = sub_1E3FA244C(numberc, v2);
    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D4D0);

    goto LABEL_11;
  }

  v34 = sub_1E3280A90(0, &qword_1EE23B398);
  OUTLINED_FUNCTION_3_19(v34, v35, v36, v34, v37, v38, v39, v40, v48, v52, v56, numberc);
  if (swift_dynamicCast())
  {
    sub_1E4205C54();

    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_1E328438C(a1, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_1E3FA244C(void *a1, void *a2)
{
  v4 = sub_1E41FE2B4();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 count];
  v25 = MEMORY[0x1E69E7CC0];
  sub_1E3FA2A50(0, v9 & ~(v9 >> 63), 0);
  v10 = v25;
  result = sub_1E4206EF4();
  if (v9 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v21 = v5;
  if (v9)
  {
    sub_1E399D328();
    do
    {
      result = sub_1E4207174();
      if (!*(&v23 + 1))
      {
        goto LABEL_15;
      }

      sub_1E3FA217C(v24, &v22);
      __swift_destroy_boxed_opaque_existential_1(&v22);
      v25 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1E3FA2A50((v12 > 1), v13 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v13 + 1;
      v14 = v10 + 32 * v13;
      v15 = v24[1];
      *(v14 + 32) = v24[0];
      *(v14 + 48) = v15;
    }

    while (--v9);
  }

  sub_1E399D328();
  v16 = v21;
  while (1)
  {
    sub_1E4207174();
    if (!*(&v23 + 1))
    {
      break;
    }

    sub_1E329504C(&v22, v24);
    sub_1E3FA217C(&v22, v24);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v25 = v10;
    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1E3FA2A50((v17 > 1), v18 + 1, 1);
      v10 = v25;
    }

    *(v10 + 16) = v18 + 1;
    v19 = v10 + 32 * v18;
    v20 = v23;
    *(v19 + 32) = v22;
    *(v19 + 48) = v20;
  }

  (*(v16 + 8))(v8, v4);
  sub_1E329505C(&v22);

  return v10;
}

uint64_t sub_1E3FA26B8(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  }

  else
  {

    return sub_1E4207954();
  }
}

uint64_t sub_1E3FA2724()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1E3FA276C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}