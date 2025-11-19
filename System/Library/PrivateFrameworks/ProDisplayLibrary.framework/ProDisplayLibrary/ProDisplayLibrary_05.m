uint64_t AppleDisplayHIDDevice.setUARangeInput(_:for:)(_OWORD *a1, int a2)
{
  LODWORD(v88) = a2;
  v97 = sub_25F8221EC();
  v5 = *(v97 - 8);
  v6 = MEMORY[0x28223BE20](v97);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v78 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v78 - v12;
  memcpy(v92, v2, sizeof(v92));
  v14 = *(v2 + 408);
  v93[6] = *(v2 + 392);
  v94 = v14;
  v15 = *(v2 + 440);
  v95 = *(v2 + 424);
  v96 = v15;
  v16 = *(v2 + 344);
  v93[2] = *(v2 + 328);
  v93[3] = v16;
  v17 = *(v2 + 376);
  v93[4] = *(v2 + 360);
  v93[5] = v17;
  v18 = *(v2 + 312);
  v93[0] = *(v2 + 296);
  v93[1] = v18;
  result = sub_25F7BE5B8(v93);
  if (result == 1)
  {
    *&v90[0] = 0;
    *(&v90[0] + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000017, 0x800000025F82EBA0);
    MEMORY[0x25F8E7510](0xD000000000000039, 0x800000025F82E740);
    v20 = v90[0];
    sub_25F8221DC();

    v21 = sub_25F8221CC();
    v22 = sub_25F82268C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v90[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_25F75CA94(v20, *(&v20 + 1), v90);
      _os_log_impl(&dword_25F74E000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x25F8E88D0](v24, -1, -1);
      MEMORY[0x25F8E88D0](v23, -1, -1);
    }

    (*(v5 + 8))(v8, v97);

    sub_25F76E244();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    v26 = 5;
LABEL_9:
    *(v25 + 16) = v26;
    return swift_willThrow();
  }

  v27 = *(&v94 + 1);
  if (BYTE8(v94) == 3)
  {
    *&v90[0] = 0;
    *(&v90[0] + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000017, 0x800000025F82EBA0);
    MEMORY[0x25F8E7510](0xD000000000000043, 0x800000025F82E870);
    v28 = v90[0];
    sub_25F8221DC();

    v29 = sub_25F8221CC();
    v30 = sub_25F82268C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v90[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_25F75CA94(v28, *(&v28 + 1), v90);
      _os_log_impl(&dword_25F74E000, v29, v30, "%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x25F8E88D0](v32, -1, -1);
      MEMORY[0x25F8E88D0](v31, -1, -1);
    }

    (*(v5 + 8))(v11, v97);

    sub_25F76E244();
    swift_allocError();
    *v25 = 0xD000000000000030;
    *(v25 + 8) = 0x800000025F82EBC0;
    v26 = 4;
    goto LABEL_9;
  }

  v33 = v94;
  if ((v94 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v83 = *(&v95 + 1);
  v85 = v96;
  v86 = v95;
  v87 = *(&v96 + 1);
  if (v94)
  {
    v34 = sub_25F82253C();
    *(v34 + 16) = v33;
    bzero((v34 + 32), v33);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  sub_25F821EFC();
  swift_allocObject();
  v35 = sub_25F821EEC();
  sub_25F821ECC();
  v36 = a1[3];
  v90[2] = a1[2];
  v90[3] = v36;
  v90[4] = a1[4];
  *(&v90[4] + 9) = *(a1 + 73);
  v37 = a1[1];
  v90[0] = *a1;
  v90[1] = v37;
  sub_25F7BEF0C();
  result = sub_25F821EDC();
  if (v3)
  {
  }

  v81 = v35;
  v82 = v38;
  v39 = v38 >> 62;
  v84 = result;
  if ((v38 >> 62) <= 1)
  {
    if (!v39)
    {
      v40 = BYTE6(v82);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v39 == 2)
  {
    v42 = *(result + 16);
    v41 = *(result + 24);
    v43 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (!v43)
    {
LABEL_25:
      if (v40 >= v87)
      {
        goto LABEL_26;
      }

LABEL_32:
      v48 = *(v34 + 16);
      if (v48)
      {
        *(v34 + 32) = BYTE1(v27);
        v49 = v34 + 32;
        v91 = v34;
        v50 = v86;
        v51 = v86 + v83;
        if (!__OFADD__(v86, v83))
        {
          if (v51 >= v86)
          {
            if (v48 >= v86)
            {
              if ((v86 & 0x8000000000000000) == 0)
              {
                v80 = v83;
                if (v48 >= v51)
                {
                  v97 = (2 * v51) | 1;

                  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
                  v79 = v27 >> 8;
                  if ((isUniquelyReferenced_nonNull & 1) == 0)
                  {
                    v53 = sub_25F7BEBF8((v34 + 32), v50, v97);
                    v49 = v54;
                    v50 = v55;
                    v97 = v56;
                    swift_unknownObjectRelease();
                    v34 = v53;
                  }

                  sub_25F7B9A84(&v50[v49], &v50[v49 + v80], v84, v82);
                  v80 = 0;
                  sub_25F7BED58(v34, v49, v50, v97, v86, v51);
                  result = swift_unknownObjectRelease();
                  v57 = v85;
                  v58 = v85 + v87;
                  if (!__OFADD__(v85, v87))
                  {
                    v59 = v87;
                    if (v58 >= v85)
                    {
                      if ((v85 & 0x8000000000000000) == 0)
                      {
                        v60 = v91;
                        v61 = *(v91 + 16);
                        if (v61 >= v85 && v61 >= v58)
                        {
                          v62 = v91 + 32;
                          v63 = (2 * v58) | 1;

                          if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
                          {
                            v64 = sub_25F7BEBF8(v60 + 32, v57, (2 * v58) | 1);
                            v97 = v59;
                            v65 = v64;
                            v62 = v66;
                            v57 = v67;
                            v63 = v68;
                            swift_unknownObjectRelease();
                            v60 = v65;
                          }

                          sub_25F7B70CC(v84, v82, &v57[v62]);
                          v69 = v63;
                          v70 = v85;
                          sub_25F7BED58(v60, v62, v57, v69, v85, v58);
                          swift_unknownObjectRelease();
                          memcpy(v90, v92, sizeof(v90));
                          v71 = v80;
                          sub_25F7B950C(v88);
                          if (v71)
                          {
                            sub_25F76D178(v84, v82);
                          }

LABEL_53:
                          memcpy(v90, v92, sizeof(v90));
                          v89[3] = &type metadata for AppleDisplayHIDDevice.UserAdjustmentInterface.UserAdjustmentRangeReport;
                          v89[4] = &off_2871C6E08;
                          v74 = swift_allocObject();
                          v89[0] = v74;
                          *(v74 + 16) = v33;
                          *(v74 + 24) = v27;
                          *(v74 + 25) = v79;
                          v75 = v83;
                          *(v74 + 32) = v86;
                          *(v74 + 40) = v75;
                          v76 = v87;
                          *(v74 + 48) = v70;
                          *(v74 + 56) = v76;
                          sub_25F7B0528(v89, v91);
                          sub_25F76D178(v84, v82);

                          __swift_destroy_boxed_opaque_existential_0Tm(v89);
                        }

                        goto LABEL_70;
                      }

LABEL_69:
                      __break(1u);
LABEL_70:
                      __break(1u);
                      goto LABEL_71;
                    }

LABEL_68:
                    __break(1u);
                    goto LABEL_69;
                  }

LABEL_67:
                  __break(1u);
                  goto LABEL_68;
                }

LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    __break(1u);
LABEL_23:
    LODWORD(v40) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v40 = v40;
    goto LABEL_25;
  }

  if (v87 > 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  sub_25F8221DC();
  v44 = sub_25F8221CC();
  v33 = sub_25F82268C();
  if (os_log_type_enabled(v44, v33))
  {
    v88 = "ange unsupported";
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v90[0] = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_25F75CA94(0xD000000000000042, v88 | 0x8000000000000000, v90);
    _os_log_impl(&dword_25F74E000, v44, v33, "%s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x25F8E88D0](v46, -1, -1);
    MEMORY[0x25F8E88D0](v45, -1, -1);
  }

  result = (*(v5 + 8))(v13, v97);
  if (v39 > 1)
  {
    if (v39 != 2)
    {
      v47 = 0;
      goto LABEL_58;
    }

    v73 = *(v84 + 16);
    v72 = *(v84 + 24);
    v47 = v72 - v73;
    v70 = v81;
    v27 = v82;
    if (!__OFSUB__(v72, v73))
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (!v39)
  {
    v27 = v82;
    v47 = BYTE6(v82);
LABEL_59:
    sub_25F76E244();
    swift_allocError();
    *v77 = v87;
    *(v77 + 8) = v47;
    *(v77 + 16) = 1;
    swift_willThrow();
    sub_25F76D178(v84, v27);
  }

  if (!__OFSUB__(HIDWORD(v84), v84))
  {
    v47 = HIDWORD(v84) - v84;
LABEL_58:
    v27 = v82;
    goto LABEL_59;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t AppleDisplayHIDDevice.getUARange(for:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v72 = sub_25F8221EC();
  v65 = *(v72 - 8);
  v6 = MEMORY[0x28223BE20](v72);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v60 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v14 = *(v2 + 408);
  v68[6] = *(v2 + 392);
  v69 = v14;
  v15 = *(v2 + 440);
  v70 = *(v2 + 424);
  v71 = v15;
  v16 = *(v2 + 344);
  v68[2] = *(v2 + 328);
  v68[3] = v16;
  v17 = *(v2 + 376);
  v68[4] = *(v2 + 360);
  v68[5] = v17;
  v18 = *(v2 + 312);
  v68[0] = *(v2 + 296);
  v68[1] = v18;
  if (sub_25F7BE5B8(v68) == 1)
  {
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000010, 0x800000025F82EC50);
    MEMORY[0x25F8E7510](0xD000000000000039, 0x800000025F82E740);
    v20 = v67[0];
    v19 = v67[1];
    sub_25F8221DC();

    v21 = sub_25F8221CC();
    v22 = sub_25F82268C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v67[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_25F75CA94(v20, v19, v67);
      _os_log_impl(&dword_25F74E000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x25F8E88D0](v24, -1, -1);
      MEMORY[0x25F8E88D0](v23, -1, -1);
    }

    (*(v65 + 8))(v8, v72);

    sub_25F76E244();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    v26 = 5;
    goto LABEL_9;
  }

  v64 = a2;
  v27 = WORD4(v69);
  if (BYTE8(v69) == 3)
  {
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000010, 0x800000025F82EC50);
    MEMORY[0x25F8E7510](0xD000000000000043, 0x800000025F82E870);
    v29 = v67[0];
    v28 = v67[1];
    sub_25F8221DC();

    v30 = sub_25F8221CC();
    v31 = sub_25F82268C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_25F75CA94(v29, v28, v67);
      _os_log_impl(&dword_25F74E000, v30, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x25F8E88D0](v33, -1, -1);
      MEMORY[0x25F8E88D0](v32, -1, -1);
    }

    (*(v65 + 8))(v11, v72);

    sub_25F76E244();
    swift_allocError();
    *v25 = 0xD000000000000030;
    *(v25 + 8) = 0x800000025F82EC70;
    v26 = 4;
    goto LABEL_9;
  }

  v61 = v69;
  v62 = v70;
  v63 = v71;
  memcpy(v67, v2, sizeof(v67));
  result = sub_25F7B50AC(a1);
  if (!v3)
  {
    memcpy(v67, v2, sizeof(v67));
    v66[3] = &type metadata for AppleDisplayHIDDevice.UserAdjustmentInterface.UserAdjustmentRangeReport;
    v66[4] = &off_2871C6E08;
    v35 = swift_allocObject();
    v66[0] = v35;
    v36 = v61;
    *(v35 + 16) = v61;
    *(v35 + 24) = v27;
    v37 = v63;
    *(v35 + 32) = v62;
    *(v35 + 48) = v37;
    v38 = sub_25F7B0CF4(v66);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v66);
    v39 = *(v38 + 2);
    if (v39 != v36)
    {

      *&v63 = "";
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0xD000000000000021, 0x800000025F82ECB0);
      v64 = v39;
      v66[0] = v39;
      v51 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v51);

      MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82E580);
      v66[0] = v36;
      v52 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v52);

      v54 = v67[0];
      v53 = v67[1];
      sub_25F8221DC();

      v55 = sub_25F8221CC();
      v56 = sub_25F82268C();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v67[0] = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_25F75CA94(v54, v53, v67);
        _os_log_impl(&dword_25F74E000, v55, v56, "%s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        MEMORY[0x25F8E88D0](v58, -1, -1);
        MEMORY[0x25F8E88D0](v57, -1, -1);
      }

      (*(v65 + 8))(v13, v72);

      sub_25F76E244();
      swift_allocError();
      v59 = v64;
      *v25 = v61;
      *(v25 + 8) = v59;
      v26 = 1;
      goto LABEL_9;
    }

    if (v36)
    {
      v40 = v38 + 32;
      v41 = *(v38 + 32);
      if (v41 != HIBYTE(v27))
      {

        sub_25F76E244();
        swift_allocError();
        *v25 = HIBYTE(v27) | (v41 << 8);
        *(v25 + 8) = 0;
        v26 = 2;
LABEL_9:
        *(v25 + 16) = v26;
        return swift_willThrow();
      }

      v42 = v63 + *(&v63 + 1);
      if (!__OFADD__(v63, *(&v63 + 1)))
      {
        if (v42 >= v63)
        {
          if (v36 >= v63)
          {
            if ((v63 & 0x8000000000000000) == 0)
            {
              if (v36 >= v42)
              {
                v43 = *&v40[v62];
                sub_25F7AEB30(v38, v40, v63, (2 * v42) | 1);
                v45 = v44;
                v47 = v46;
                sub_25F821EBC();
                swift_allocObject();
                sub_25F821EAC();
                v48 = sub_25F7B55F4((v43 << 16), v45, v47);
                v50 = v49;
                sub_25F7BEF70();
                sub_25F821E9C();
                sub_25F76D178(v48, v50);

                return sub_25F76D178(v45, v47);
              }

              goto LABEL_30;
            }

LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return result;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  return result;
}

void sub_25F7AEB30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0458);
  v16[3] = v8;
  v16[4] = sub_25F76100C(&qword_27FDB0508, &qword_27FDB0458);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_25F820464((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }
}

uint64_t sub_25F7AEC3C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C10];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_25F820AD0(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_25F820B88(v3, v4);
    }

    else
    {
      v6 = sub_25F820C04(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_25F7AECF8@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = type metadata accessor for PresetV1(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Preset(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F7BF8E8();
  result = sub_25F821E9C();
  if (!v1)
  {
    if (v15)
    {
      sub_25F7BFB70(&qword_27FDB0498, type metadata accessor for PresetV1);
      sub_25F821E9C();
      sub_25F7BFB08(v5, v7, type metadata accessor for PresetV1);
      return sub_25F7CAD70(v7, v16);
    }

    else if (v14 == 2)
    {
      sub_25F7BFB70(&qword_27FDAFDF0, type metadata accessor for Preset);
      sub_25F821E9C();
      return sub_25F7BFB08(v10, v16, type metadata accessor for Preset);
    }

    else
    {
      v12 = sub_25F7BFB70(&qword_27FDB04A0, type metadata accessor for PresetV1);
      sub_25F763A00();
      swift_allocError();
      *v13 = v2;
      *(v13 + 8) = v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_25F7AEFD4(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for UserAdjustmentV1();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = type metadata accessor for UserAdjustment();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F7BF8E8();
  sub_25F821E9C();
  if (!v1)
  {
    if (v14)
    {
      sub_25F7BFB70(&qword_27FDB04F8, type metadata accessor for UserAdjustmentV1);
      sub_25F821E9C();
      sub_25F7BFB08(v5, v7, type metadata accessor for UserAdjustmentV1);
      sub_25F7D5F18(v7, v15);
    }

    else if (v13 == 2)
    {
      sub_25F7BFB70(&qword_27FDAFE10, type metadata accessor for UserAdjustment);
      sub_25F821E9C();
      sub_25F7BFB08(v10, v15, type metadata accessor for UserAdjustment);
    }

    else
    {
      v11 = sub_25F7BFB70(&qword_27FDB0500, type metadata accessor for UserAdjustmentV1);
      sub_25F763A00();
      swift_allocError();
      *v12 = v2;
      *(v12 + 8) = v11;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_25F7AF2AC@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = type metadata accessor for ProDataOnDiskV1();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ProDataOnDisk();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F7BF8E8();
  result = sub_25F821E9C();
  if (!v1)
  {
    v12 = v17;
    if (v16)
    {
      goto LABEL_7;
    }

    if (v15 != 1)
    {
      if (v15 == 2)
      {
        sub_25F7BFB70(&qword_27FDAFDB0, type metadata accessor for ProDataOnDisk);
        sub_25F821E9C();
        return sub_25F7BFB08(v10, v12, type metadata accessor for ProDataOnDisk);
      }

LABEL_7:
      v13 = sub_25F7BFB70(&qword_27FDAFDA8, type metadata accessor for ProDataOnDiskV1);
      sub_25F763A00();
      swift_allocError();
      *v14 = v2;
      *(v14 + 8) = v13;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      return swift_willThrow();
    }

    sub_25F7BFB70(&qword_27FDB04A8, type metadata accessor for ProDataOnDiskV1);
    sub_25F821E9C();
    sub_25F7BFB08(v5, v7, type metadata accessor for ProDataOnDiskV1);
    return sub_25F762810(v7, v12);
  }

  return result;
}

uint64_t sub_25F7AF5E8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *__return_ptr, uint64_t, uint64_t, void))
{
  a4(v15, a1, a2, a3 & 1);
  if (!v5)
  {
    sub_25F760954(v15, v10);
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    sub_25F760F44(v11, &qword_27FDB04B0);
    sub_25F760954(v10, v11);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    swift_getDynamicType();
    v6 = (*(v10[4] + 40))();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v13 = v6;
    v14 = v8 & 1;
    sub_25F7BF93C();
    v4 = sub_25F821EDC();
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    sub_25F7BF990(v11);
  }

  return v4;
}

void sub_25F7AF788(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F8221EC();
  v5 = *(v4 - 8);
  v84 = v4;
  v85 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v81 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v77 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v77 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v77 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a1 + 32;
    v18 = -v15;
    v19 = MEMORY[0x277D84F90];
    do
    {
      v20 = *(a1 + 16);
      v21 = v20 >= v16;
      v22 = v20 - v16;
      if (!v21)
      {
        v22 = 0;
      }

      v23 = (v17 + 120 * v16++);
      while (1)
      {
        if (!v22)
        {
          __break(1u);
          return;
        }

        v24 = v23[5];
        v92[2] = v23[4];
        v92[3] = v24;
        v92[4] = v23[6];
        LOBYTE(v92[5]) = *(v23 + 112);
        v25 = v23[1];
        v90 = *v23;
        v91 = v25;
        v26 = v23[3];
        v92[0] = v23[2];
        v92[1] = v26;
        if (SWORD1(v90) == -224)
        {
          break;
        }

        --v22;
        v23 = (v23 + 120);
        ++v16;
        if (v18 + v16 == 1)
        {
          goto LABEL_17;
        }
      }

      v83 = v14;
      sub_25F7BFBF0(&v90, v86);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v19;
      v82 = v17;
      v28 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25F817CC8(0, *(v19 + 16) + 1, 1);
        v19 = v87;
      }

      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_25F817CC8((v29 > 1), v30 + 1, 1);
        v19 = v87;
      }

      *(v19 + 16) = v30 + 1;
      v31 = v19 + 120 * v30;
      v32 = v90;
      v33 = v91;
      v34 = v92[1];
      *(v31 + 64) = v92[0];
      *(v31 + 80) = v34;
      *(v31 + 32) = v32;
      *(v31 + 48) = v33;
      v35 = v92[2];
      v36 = v92[3];
      v37 = v92[4];
      *(v31 + 144) = v92[5];
      *(v31 + 112) = v36;
      *(v31 + 128) = v37;
      *(v31 + 96) = v35;
      v12 = v28;
      v17 = v82;
      v14 = v83;
    }

    while (v18 + v16);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

LABEL_17:

  sub_25F7B18C0(v38, &v90);
  v39 = WORD4(v90);
  v40 = BYTE8(v90);
  if (BYTE8(v90) == 3)
  {

    sub_25F8221DC();
    v41 = sub_25F8221CC();
    v42 = sub_25F82268C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v90 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_25F75CA94(0xD000000000000025, 0x800000025F82F210, &v90);
      _os_log_impl(&dword_25F74E000, v41, v42, "%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x25F8E88D0](v44, -1, -1);
      MEMORY[0x25F8E88D0](v43, -1, -1);
    }

    (*(v85 + 8))(v14, v84);
  }

  else
  {
    v52 = v90;

    sub_25F7B2170(v53, &v87);
    v54 = v88;
    if (v88 == 3)
    {

      sub_25F8221DC();
      v55 = sub_25F8221CC();
      v56 = sub_25F82268C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = v12;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v90 = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_25F75CA94(0xD000000000000026, 0x800000025F82F240, &v90);
        _os_log_impl(&dword_25F74E000, v55, v56, "%s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x25F8E88D0](v59, -1, -1);
        MEMORY[0x25F8E88D0](v58, -1, -1);

        (*(v85 + 8))(v57, v84);
      }

      else
      {

        (*(v85 + 8))(v12, v84);
      }
    }

    else
    {
      v60 = v87;
      v61 = v89;

      sub_25F7B28F4(v62, v86);
      if (sub_25F7BFD0C(v86) != 1)
      {
        v83 = v60;
        LODWORD(v82) = v39 >> 8;
        v102 = v86[8];
        v103 = v86[9];
        v104 = v86[10];
        v105 = v86[11];
        v98 = v86[4];
        v99 = v86[5];
        v100 = v86[6];
        v101 = v86[7];
        v94 = v86[0];
        v95 = v86[1];
        v96 = v86[2];
        v97 = v86[3];
        sub_25F7B45A0(v19, &v90);
        v80 = v90;
        v79 = WORD4(v90);
        v68 = v81;
        sub_25F8221DC();
        v69 = sub_25F8221CC();
        v70 = sub_25F82266C();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v78 = v52;
          v72 = v71;
          v73 = swift_slowAlloc();
          v77 = v61;
          v74 = v73;
          *&v90 = v73;
          *v72 = 136315138;
          *(v72 + 4) = sub_25F75CA94(0xD000000000000024, 0x800000025F82F2A0, &v90);
          _os_log_impl(&dword_25F74E000, v69, v70, "%s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          v75 = v74;
          v61 = v77;
          MEMORY[0x25F8E88D0](v75, -1, -1);
          v76 = v72;
          v52 = v78;
          MEMORY[0x25F8E88D0](v76, -1, -1);

          (*(v85 + 8))(v81, v84);
        }

        else
        {

          (*(v85 + 8))(v68, v84);
        }

        *(&v92[8] + 8) = v102;
        *(&v92[9] + 8) = v103;
        *(&v92[10] + 8) = v104;
        *(&v92[11] + 8) = v105;
        *(&v92[4] + 8) = v98;
        *(&v92[5] + 8) = v99;
        *(&v92[6] + 8) = v100;
        *(&v92[7] + 8) = v101;
        *(v92 + 8) = v94;
        *(&v92[1] + 8) = v95;
        *(&v92[2] + 8) = v96;
        *&v90 = v52;
        BYTE8(v90) = v40;
        BYTE9(v90) = v82;
        *&v91 = v83;
        WORD4(v91) = v54;
        *(&v92[3] + 8) = v97;
        *&v92[0] = v61;
        *(&v92[12] + 1) = v80;
        v93 = v79;
        nullsub_1(&v90);
        goto LABEL_22;
      }

      v63 = v80;
      sub_25F8221DC();
      v64 = sub_25F8221CC();
      v65 = sub_25F82268C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v90 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_25F75CA94(0xD000000000000026, 0x800000025F82F270, &v90);
        _os_log_impl(&dword_25F74E000, v64, v65, "%s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x25F8E88D0](v67, -1, -1);
        MEMORY[0x25F8E88D0](v66, -1, -1);
      }

      (*(v85 + 8))(v63, v84);
    }
  }

  sub_25F7BFCC4(&v90);
LABEL_22:
  v45 = v92[11];
  *(a2 + 192) = v92[10];
  *(a2 + 208) = v45;
  *(a2 + 224) = v92[12];
  *(a2 + 240) = v93;
  v46 = v92[7];
  *(a2 + 128) = v92[6];
  *(a2 + 144) = v46;
  v47 = v92[9];
  *(a2 + 160) = v92[8];
  *(a2 + 176) = v47;
  v48 = v92[3];
  *(a2 + 64) = v92[2];
  *(a2 + 80) = v48;
  v49 = v92[5];
  *(a2 + 96) = v92[4];
  *(a2 + 112) = v49;
  v50 = v91;
  *a2 = v90;
  *(a2 + 16) = v50;
  v51 = v92[1];
  *(a2 + 32) = v92[0];
  *(a2 + 48) = v51;
}

void sub_25F7B0090(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_25F8221EC();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = -v7;
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = *(a1 + 16);
      v12 = v11 >= v8;
      v13 = v11 - v8;
      if (!v12)
      {
        v13 = 0;
      }

      v14 = a1 + 32 + 120 * v8++;
      while (1)
      {
        if (!v13)
        {
          __break(1u);
          return;
        }

        v15 = *(v14 + 80);
        v62 = *(v14 + 64);
        v63 = v15;
        v64 = *(v14 + 96);
        LOBYTE(v65[0]) = *(v14 + 112);
        v16 = *(v14 + 16);
        *v60 = *v14;
        *&v60[16] = v16;
        v17 = *(v14 + 48);
        *&v60[32] = *(v14 + 32);
        v61 = v17;
        if (*&v60[2] == -216)
        {
          break;
        }

        --v13;
        v14 += 120;
        ++v8;
        if (v9 + v8 == 1)
        {
          goto LABEL_17;
        }
      }

      sub_25F7BFBF0(v60, &v66);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25F817CC8(0, *(v10 + 16) + 1, 1);
        v10 = v69;
      }

      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_25F817CC8((v19 > 1), v20 + 1, 1);
        v10 = v69;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 120 * v20;
      v22 = *v60;
      v23 = *&v60[16];
      v24 = v61;
      *(v21 + 64) = *&v60[32];
      *(v21 + 80) = v24;
      *(v21 + 32) = v22;
      *(v21 + 48) = v23;
      v25 = v62;
      v26 = v63;
      v27 = v64;
      *(v21 + 144) = v65[0];
      *(v21 + 112) = v26;
      *(v21 + 128) = v27;
      *(v21 + 96) = v25;
    }

    while (v9 + v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_17:

  sub_25F7B72A4(v28, v60);
  v56 = *&v60[16];
  v59 = *v60;

  sub_25F7B7CD8(v29, v60);
  v30 = *v60;
  v31 = *&v60[8];
  v66 = *&v60[16];
  v67 = *&v60[32];
  v68 = v61;

  sub_25F7B88AC(v32, v60);
  v33 = *v60;
  v34 = *&v60[8];
  sub_25F7B8DE4(v10, v60);
  v35 = 0;
  if (v31 != 3 && v34 != 3)
  {
    v35 = v60[8] != 3;
  }

  v36 = *&v60[40];
  if (BYTE8(v59) != 3 || v35)
  {
    v53 = *v60;
    v54 = *&v60[24];
    v55 = *&v60[8];
    sub_25F8221DC();
    v37 = sub_25F8221CC();
    v38 = sub_25F82266C();
    if (os_log_type_enabled(v37, v38))
    {
      v50 = v6;
      v39 = swift_slowAlloc();
      v52 = v33;
      v40 = v39;
      v41 = swift_slowAlloc();
      v51 = v36;
      v42 = v41;
      *v60 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_25F75CA94(0xD00000000000002DLL, 0x800000025F82EF10, v60);
      _os_log_impl(&dword_25F74E000, v37, v38, "%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      v43 = v42;
      v36 = v51;
      MEMORY[0x25F8E88D0](v43, -1, -1);
      v44 = v40;
      v33 = v52;
      MEMORY[0x25F8E88D0](v44, -1, -1);

      (*(v57 + 8))(v50, v58);
    }

    else
    {

      (*(v57 + 8))(v6, v58);
    }

    v61 = v66;
    v62 = v67;
    v63 = v68;
    *v60 = v59;
    *&v60[16] = v56;
    *&v60[32] = v30;
    *&v60[40] = v31;
    *&v64 = v33;
    WORD4(v64) = v34;
    *&v65[0] = v53;
    *(v65 + 8) = v55;
    *(&v65[1] + 8) = v54;
    *(&v65[2] + 1) = v36;
    nullsub_1(v60);
  }

  else
  {
    sub_25F7BFC4C(v60);
  }

  v45 = v65[0];
  a2[6] = v64;
  a2[7] = v45;
  v46 = v65[2];
  a2[8] = v65[1];
  a2[9] = v46;
  v47 = v61;
  a2[2] = *&v60[32];
  a2[3] = v47;
  v48 = v63;
  a2[4] = v62;
  a2[5] = v48;
  v49 = *&v60[16];
  *a2 = *v60;
  a2[1] = v49;
}

uint64_t sub_25F7B0528(void *a1, uint64_t a2)
{
  v66 = a2;
  v4 = sub_25F8221EC();
  v5 = *(v4 - 8);
  v71 = v4;
  v72 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = &v58 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v65 = *(v2 + 8);
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_25F82292C();
  MEMORY[0x25F8E7510](0x70655220646E6553, 0xEC0000002074726FLL);
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = *(v13 + 24);
  v60 = v14;
  v61 = v15;
  v63 = v13;
  v64 = v12;
  v62 = v13 + 24;
  v15(&v74, v12, v13);
  sub_25F8229FC();
  MEMORY[0x25F8E7510](0x20657A6973202CLL, 0xE700000000000000);
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v74 = (*(v16 + 8))(v17, v16);
  v18 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v18);

  MEMORY[0x25F8E7510](0x2065707974202CLL, 0xE700000000000000);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  LOBYTE(v74) = (*(v20 + 16))(v19, v20);
  sub_25F8229FC();
  v22 = v73[0];
  v21 = v73[1];
  v69 = &xmmword_25F825AA0;
  v70 = "";
  sub_25F8221DC();

  v23 = sub_25F8221CC();
  v24 = sub_25F8226AC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v73[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_25F75CA94(v22, v21, v73);
    _os_log_impl(&dword_25F74E000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    v28 = v71;
    v27 = v72;
    MEMORY[0x25F8E88D0](v26, -1, -1);
    MEMORY[0x25F8E88D0](v25, -1, -1);

    v29 = *(v27 + 8);
    v29(v11, v28);
  }

  else
  {

    v29 = *(v72 + 8);
    v29(v11, v71);
  }

  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_25F82292C();

  strcpy(v73, "buffer length ");
  HIBYTE(v73[1]) = -18;
  v30 = v66;
  v31 = *(v66 + 16);
  v74 = v31;
  v32 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v32);

  v34 = v73[0];
  v33 = v73[1];
  v35 = v68;
  sub_25F8221DC();

  v36 = sub_25F8221CC();
  v37 = sub_25F8226AC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v59 = v31;
    v40 = v29;
    v41 = v39;
    v73[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_25F75CA94(v34, v33, v73);
    _os_log_impl(&dword_25F74E000, v36, v37, "%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    v42 = v41;
    v29 = v40;
    v43 = v71;
    MEMORY[0x25F8E88D0](v42, -1, -1);
    MEMORY[0x25F8E88D0](v38, -1, -1);

    v44 = v68;
    v45 = v43;
    v31 = v59;
  }

  else
  {

    v45 = v71;
    v44 = v35;
  }

  v29(v44, v45);

  v46 = a1[3];
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  LOBYTE(v46) = (*(v47 + 16))(v46, v47);
  v61(v73, v64, v63);
  result = IOHIDDeviceSetReport(v65, v46, LOBYTE(v73[0]), (v30 + 32), v31);
  v49 = v67;
  if (result)
  {
    v50 = result;
    v73[0] = 0;
    v73[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0x20676E69646E6573, 0xEF2074726F706572);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25F822C9C();
    MEMORY[0x25F8E7510](0x64656C69616620, 0xE700000000000000);
    v52 = v73[0];
    v51 = v73[1];
    sub_25F8221DC();

    v53 = sub_25F8221CC();
    v54 = sub_25F82268C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v73[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_25F75CA94(v52, v51, v73);
      _os_log_impl(&dword_25F74E000, v53, v54, "%s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x25F8E88D0](v56, -1, -1);
      MEMORY[0x25F8E88D0](v55, -1, -1);
    }

    v29(v49, v71);

    sub_25F76E244();
    swift_allocError();
    *v57 = v50;
    *(v57 + 8) = 0;
    *(v57 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

__IOHIDDevice *sub_25F7B0CF4(void *a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = sub_25F8221EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v60 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  v67 = *(v1 + 8);
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = *(v12 + 8);
  v63 = v13;
  v15 = v14(v11, v12);
  if (v15 < 0)
  {
    __break(1u);
  }

  v16 = v15;
  v65 = v4;
  v66 = v3;
  v60 = v10;
  v62 = v14;
  if (v15)
  {
    v17 = sub_25F82253C();
    *(v17 + 16) = v16;
    bzero((v17 + 32), v16);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    v16 = *(MEMORY[0x277D84F90] + 16);
  }

  pReportLength = v16;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  LOBYTE(v18) = (*(v18 + 16))(v19, v18);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v21 + 24))(&v71, v20, v21);
  Report = IOHIDDeviceGetReport(v67, v18, v71, (v17 + 32), &pReportLength);
  v23 = v17;
  if (Report)
  {
    v24 = Report;

    v71 = 0;
    v72 = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0x20676E6974746567, 0xEF2074726F706572);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25F822C9C();
    MEMORY[0x25F8E7510](0x64656C69616620, 0xE700000000000000);
    v26 = v71;
    v25 = v72;
    v27 = v64;
    sub_25F8221DC();

    v28 = sub_25F8221CC();
    v29 = sub_25F82268C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v23;
      v32 = swift_slowAlloc();
      v71 = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_25F75CA94(v26, v25, &v71);
      _os_log_impl(&dword_25F74E000, v28, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      v33 = v32;
      v23 = v31;
      MEMORY[0x25F8E88D0](v33, -1, -1);
      MEMORY[0x25F8E88D0](v30, -1, -1);
    }

    (*(v65 + 8))(v27, v66);

    v34 = 0;
    v35 = 0;
    v36 = v24;
LABEL_16:
    sub_25F76E244();
    swift_allocError();
    *v58 = v36;
    *(v58 + 8) = v34;
    *(v58 + 16) = v35;
    swift_willThrow();
    return v23;
  }

  v37 = pReportLength;
  v38 = v62;
  if (v37 != v62(v11, v12))
  {
    v67 = v23;

    v36 = v38(v11, v12);
    v34 = pReportLength;
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_25F82292C();
    v68 = v71;
    v69 = v72;
    MEMORY[0x25F8E7510](0x20676E6974746567, 0xEF2074726F706572);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25F822C9C();
    MEMORY[0x25F8E7510](0xD00000000000001ALL, 0x800000025F82EE80);
    v71 = v36;
    v72 = v34;
    v73 = 1;
    sub_25F8229FC();
    v52 = v68;
    v51 = v69;
    v53 = v61;
    sub_25F8221DC();

    v54 = sub_25F8221CC();
    v55 = sub_25F82268C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v71 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_25F75CA94(v52, v51, &v71);
      _os_log_impl(&dword_25F74E000, v54, v55, "%s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x25F8E88D0](v57, -1, -1);
      MEMORY[0x25F8E88D0](v56, -1, -1);
    }

    (*(v65 + 8))(v53, v66);

    v35 = 1;
    v23 = v67;
    goto LABEL_16;
  }

  v71 = 0;
  v72 = 0xE000000000000000;
  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82EEA0);
  v68 = pReportLength;
  v39 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v39);

  MEMORY[0x25F8E7510](0x20726F6620, 0xE500000000000000);
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  (*(v41 + 24))(&v68, v40, v41);
  sub_25F8229FC();
  v43 = v71;
  v42 = v72;
  v44 = v60;
  sub_25F8221DC();

  v45 = sub_25F8221CC();
  v46 = sub_25F8226AC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = v23;
    v49 = swift_slowAlloc();
    v71 = v49;
    *v47 = 136315138;
    *(v47 + 4) = sub_25F75CA94(v43, v42, &v71);
    _os_log_impl(&dword_25F74E000, v45, v46, "%s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    v50 = v49;
    v23 = v48;
    MEMORY[0x25F8E88D0](v50, -1, -1);
    MEMORY[0x25F8E88D0](v47, -1, -1);
  }

  (*(v65 + 8))(v44, v66);

  return v23;
}

uint64_t AppleDisplayHIDDevice.InterfaceSupport.hashValue.getter()
{
  v1 = *v0;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v1);
  return sub_25F822E0C();
}

uint64_t sub_25F7B15F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0530);
    v2 = sub_25F822A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25F7618A4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_25F7BFD48(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_25F7BFD48(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_25F7BFD48(v31, v32);
    result = sub_25F8228BC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_25F7BFD48(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25F7B18C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F8221EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v63 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v63 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v63 - v16;
  v18 = *(v15 + 16);
  if (v18)
  {
    v19 = 32;
    v20 = *(v15 + 16);
    while (1)
    {
      v21 = *(v15 + v19 + 80);
      v85 = *(v15 + v19 + 64);
      v86 = v21;
      v87 = *(v15 + v19 + 96);
      v88 = *(v15 + v19 + 112);
      v22 = *(v15 + v19 + 16);
      v81 = *(v15 + v19);
      v82 = v22;
      v23 = *(v15 + v19 + 48);
      v83 = *(v15 + v19 + 32);
      v84 = v23;
      if ((BYTE6(v81) & 1) == 0 && WORD2(v81) == 2)
      {
        break;
      }

      v19 += 120;
      if (!--v20)
      {
        goto LABEL_15;
      }
    }

    v24 = 32;
    while (1)
    {
      v25 = *(v15 + v24 + 80);
      v77 = *(v15 + v24 + 64);
      v78 = v25;
      v79 = *(v15 + v24 + 96);
      v80 = *(v15 + v24 + 112);
      v26 = *(v15 + v24 + 16);
      v73 = *(v15 + v24);
      v74 = v26;
      v27 = *(v15 + v24 + 48);
      v75 = *(v15 + v24 + 32);
      v76 = v27;
      if ((BYTE6(v73) & 1) == 0 && WORD2(v73) == 3)
      {
        break;
      }

      v24 += 120;
      if (!--v18)
      {
        sub_25F7BFBF0(&v81, &v73);

        sub_25F8221DC();
        v55 = sub_25F8221CC();
        v56 = sub_25F82268C();
        if (os_log_type_enabled(v55, v56))
        {
          v67 = v4;
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v73 = v58;
          *v57 = 136315138;
          *(v57 + 4) = sub_25F75CA94(0xD00000000000001DLL, 0x800000025F82F600, &v73);
          _os_log_impl(&dword_25F74E000, v55, v56, "%s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v58);
          MEMORY[0x25F8E88D0](v58, -1, -1);
          MEMORY[0x25F8E88D0](v57, -1, -1);

          (*(v5 + 8))(v14, v67);
        }

        else
        {

          (*(v5 + 8))(v14, v4);
        }

LABEL_25:
        result = sub_25F7BFC70(&v81);
        goto LABEL_26;
      }
    }

    sub_25F7BFBF0(&v81, &v71);
    sub_25F7BFBF0(&v73, &v71);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD60);
    v28 = swift_allocObject();
    v29 = v85;
    v30 = v87;
    *(v28 + 112) = v86;
    *(v28 + 128) = v30;
    v31 = v81;
    v32 = v82;
    *(v28 + 16) = xmmword_25F824480;
    *(v28 + 32) = v31;
    v33 = v83;
    v34 = v84;
    *(v28 + 48) = v32;
    *(v28 + 64) = v33;
    *(v28 + 80) = v34;
    *(v28 + 96) = v29;
    v35 = v78;
    *(v28 + 216) = v77;
    *(v28 + 232) = v35;
    *(v28 + 248) = v79;
    v36 = v74;
    *(v28 + 152) = v73;
    *(v28 + 168) = v36;
    v37 = v76;
    *(v28 + 184) = v75;
    *(v28 + 144) = v88;
    *(v28 + 264) = v80;
    *(v28 + 200) = v37;
    sub_25F7BFBF0(&v81, &v71);
    sub_25F7BFBF0(&v73, &v71);
    v38 = sub_25F7BE6B0(v28);

    if ((v38 & 1) == 0)
    {
      sub_25F8221DC();
      v59 = sub_25F8221CC();
      v60 = sub_25F82268C();
      if (os_log_type_enabled(v59, v60))
      {
        v67 = v4;
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v71 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_25F75CA94(0xD00000000000003BLL, 0x800000025F82F5A0, &v71);
        _os_log_impl(&dword_25F74E000, v59, v60, "%s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        MEMORY[0x25F8E88D0](v62, -1, -1);
        MEMORY[0x25F8E88D0](v61, -1, -1);

        (*(v5 + 8))(v8, v67);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      sub_25F7BFC70(&v73);
      goto LABEL_25;
    }

    v67 = a2;
    if (__CFADD__(DWORD2(v73), DWORD2(v81)))
    {
      __break(1u);
    }

    else
    {
      v40 = ((DWORD2(v73) + DWORD2(v81)) >> 3) + 1;
      v41 = v73;
      v42 = BYTE7(v73);
      v63[1] = "";
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0xD00000000000001DLL, 0x800000025F82F5E0);
      v64 = v40;
      v68 = v40;
      v65 = v42;
      v66 = v41;
      v69 = v41;
      v70 = v42;
      sub_25F8229FC();
      v43 = v71;
      v44 = v72;
      sub_25F8221DC();

      v45 = sub_25F8221CC();
      v46 = sub_25F82266C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v71 = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_25F75CA94(v43, v44, &v71);
        _os_log_impl(&dword_25F74E000, v45, v46, "%s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x25F8E88D0](v48, -1, -1);
        MEMORY[0x25F8E88D0](v47, -1, -1);
      }

      (*(v5 + 8))(v11, v4);

      sub_25F7BFC70(&v73);
      result = sub_25F7BFC70(&v81);
      v49 = v67;
      v50 = v66 | (v65 << 8);
      *v67 = v64;
      *(v49 + 4) = v50;
    }
  }

  else
  {
LABEL_15:

    sub_25F8221DC();
    v51 = sub_25F8221CC();
    v52 = sub_25F82268C();
    if (os_log_type_enabled(v51, v52))
    {
      v67 = v4;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v81 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_25F75CA94(0xD00000000000001ELL, 0x800000025F82F620, &v81);
      _os_log_impl(&dword_25F74E000, v51, v52, "%s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x25F8E88D0](v54, -1, -1);
      MEMORY[0x25F8E88D0](v53, -1, -1);

      result = (*(v5 + 8))(v17, v67);
    }

    else
    {

      result = (*(v5 + 8))(v17, v4);
    }

LABEL_26:
    *a2 = 0;
    *(a2 + 8) = 3;
  }

  return result;
}

uint64_t sub_25F7B2170@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_25F8221EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v52 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v52 - v16;
  v18 = *(v15 + 16);
  if (!v18)
  {
LABEL_10:

    sub_25F8221DC();
    v28 = sub_25F8221CC();
    v29 = sub_25F82268C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v64[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_25F75CA94(0xD00000000000001ELL, 0x800000025F82F580, v64);
      _os_log_impl(&dword_25F74E000, v28, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x25F8E88D0](v31, -1, -1);
      MEMORY[0x25F8E88D0](v30, -1, -1);
    }

    result = (*(v5 + 8))(v17, v4);
    goto LABEL_13;
  }

  v19 = 32;
  while (1)
  {
    v20 = *(v15 + v19 + 80);
    v67 = *(v15 + v19 + 64);
    v68 = v20;
    v69 = *(v15 + v19 + 96);
    v70 = *(v15 + v19 + 112);
    v21 = *(v15 + v19 + 16);
    v64[0] = *(v15 + v19);
    v64[1] = v21;
    v22 = *(v15 + v19 + 48);
    v65 = *(v15 + v19 + 32);
    v66 = v22;
    if ((BYTE6(v64[0]) & 1) == 0 && WORD2(v64[0]) == 4)
    {
      break;
    }

    v19 += 120;
    if (!--v18)
    {
      goto LABEL_10;
    }
  }

  sub_25F7BFBF0(v64, &v61);

  if (v66)
  {
    sub_25F8221DC();
    v23 = sub_25F8221CC();
    v24 = sub_25F82268C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v61 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_25F75CA94(0xD00000000000002CLL, 0x800000025F82F510, &v61);
      _os_log_impl(&dword_25F74E000, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F8E88D0](v26, -1, -1);
      MEMORY[0x25F8E88D0](v25, -1, -1);
    }

    (*(v5 + 8))(v14, v4);
    result = sub_25F7BFC70(v64);
LABEL_13:
    *a2 = xmmword_25F825A80;
    a2[2] = 0;
    return result;
  }

  v55 = a2;
  v32 = *(&v65 + 1);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_25F82292C();

  v61 = 0xD000000000000018;
  v62 = 0x800000025F82F540;
  v58 = v32;
  v59 = v32;
  v33 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v33);

  v34 = v62;
  v53 = v61;
  v56 = "";
  v57 = &xmmword_25F825AA0;
  sub_25F8221DC();

  v35 = sub_25F8221CC();
  v36 = sub_25F82266C();
  v54 = v34;

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v61 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_25F75CA94(v53, v54, &v61);
    _os_log_impl(&dword_25F74E000, v35, v36, "%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x25F8E88D0](v38, -1, -1);
    MEMORY[0x25F8E88D0](v37, -1, -1);
  }

  v52 = *(v5 + 8);
  v52(v11, v4);

  v39 = (DWORD2(v64[0]) >> 3) + 1;
  v40 = LOBYTE(v64[0]);
  v41 = BYTE7(v64[0]);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_25F82292C();
  v59 = v61;
  v60 = v62;
  MEMORY[0x25F8E7510](0xD00000000000001ELL, 0x800000025F82F560);
  v61 = v39;
  v53 = v41;
  v54 = v40;
  LOBYTE(v62) = v40;
  BYTE1(v62) = v41;
  v63 = v58;
  sub_25F8229FC();
  v42 = v59;
  v43 = v60;
  sub_25F8221DC();

  v44 = sub_25F8221CC();
  v45 = sub_25F82266C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57 = v39;
    v48 = v47;
    v61 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_25F75CA94(v42, v43, &v61);
    _os_log_impl(&dword_25F74E000, v44, v45, "%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    v49 = v48;
    v39 = v57;
    MEMORY[0x25F8E88D0](v49, -1, -1);
    MEMORY[0x25F8E88D0](v46, -1, -1);
  }

  v52(v8, v4);

  result = sub_25F7BFC70(v64);
  v50 = v54 | (v53 << 8);
  v51 = v55;
  *v55 = v39;
  v51[1] = v50;
  v51[2] = v58;
  return result;
}

void sub_25F7B28F4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v251 = sub_25F8221EC();
  v4 = *(v251 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v224 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v224 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v224 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v224 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v224 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v26 = v224 - v25;
  v27 = *(v22 + 16);
  if (!v27)
  {
LABEL_15:

    sub_25F8221DC();
    v45 = sub_25F8221CC();
    v46 = sub_25F82268C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v252 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_25F75CA94(0xD000000000000018, 0x800000025F82F4F0, &v252);
      _os_log_impl(&dword_25F74E000, v45, v46, "%s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x25F8E88D0](v48, -1, -1);
      MEMORY[0x25F8E88D0](v47, -1, -1);
    }

    (*(v4 + 8))(v26, v251);
    goto LABEL_102;
  }

  v28 = 32;
  v29 = *(v22 + 16);
  while (1)
  {
    v30 = *(v22 + v28 + 80);
    v347 = *(v22 + v28 + 64);
    v348 = v30;
    v349 = *(v22 + v28 + 96);
    v350 = *(v22 + v28 + 112);
    v31 = *(v22 + v28 + 16);
    v343 = *(v22 + v28);
    v344 = v31;
    v32 = *(v22 + v28 + 48);
    v345 = *(v22 + v28 + 32);
    v346 = v32;
    if ((BYTE6(v343) & 1) == 0 && WORD2(v343) == 5)
    {
      break;
    }

    v28 += 120;
    if (!--v29)
    {
      goto LABEL_15;
    }
  }

  v33 = 32;
  v34 = v27;
  while (1)
  {
    v35 = *(v22 + v33 + 80);
    v339 = *(v22 + v33 + 64);
    v340 = v35;
    v341 = *(v22 + v33 + 96);
    v342 = *(v22 + v33 + 112);
    v36 = *(v22 + v33 + 16);
    v335 = *(v22 + v33);
    v336 = v36;
    v37 = *(v22 + v33 + 48);
    v337 = *(v22 + v33 + 32);
    v338 = v37;
    if ((BYTE6(v335) & 1) == 0 && WORD2(v335) == 6)
    {
      break;
    }

    v33 += 120;
    if (!--v34)
    {
      sub_25F7BFBF0(&v343, &v252);

      sub_25F8221DC();
      v60 = sub_25F8221CC();
      v61 = sub_25F82268C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v252 = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_25F75CA94(0xD000000000000015, 0x800000025F82F4D0, &v252);
        _os_log_impl(&dword_25F74E000, v60, v61, "%s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        MEMORY[0x25F8E88D0](v63, -1, -1);
        MEMORY[0x25F8E88D0](v62, -1, -1);
      }

      (*(v4 + 8))(v21, v251);
      goto LABEL_101;
    }
  }

  v38 = 32;
  v39 = v27;
  while (1)
  {
    v40 = *(v22 + v38 + 80);
    v331 = *(v22 + v38 + 64);
    v332 = v40;
    v333 = *(v22 + v38 + 96);
    v334 = *(v22 + v38 + 112);
    v41 = *(v22 + v38 + 16);
    v327 = *(v22 + v38);
    v328 = v41;
    v42 = *(v22 + v38 + 48);
    v329 = *(v22 + v38 + 32);
    v330 = v42;
    if ((BYTE6(v327) & 1) == 0 && WORD2(v327) == 8)
    {
      break;
    }

    v38 += 120;
    if (!--v39)
    {
      sub_25F7BFBF0(&v343, &v252);
      sub_25F7BFBF0(&v335, &v252);

      sub_25F8221DC();
      v71 = sub_25F8221CC();
      v72 = sub_25F82268C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v252 = v74;
        *v73 = 136315138;
        *(v73 + 4) = sub_25F75CA94(0xD000000000000014, 0x800000025F82F4B0, &v252);
        _os_log_impl(&dword_25F74E000, v71, v72, "%s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        MEMORY[0x25F8E88D0](v74, -1, -1);
        MEMORY[0x25F8E88D0](v73, -1, -1);
      }

      (*(v4 + 8))(v18, v251);
      goto LABEL_100;
    }
  }

  v43 = 32;
  v44 = v27;
  do
  {
    v49 = *(v22 + v43 + 80);
    v323 = *(v22 + v43 + 64);
    v324 = v49;
    v325 = *(v22 + v43 + 96);
    v326 = *(v22 + v43 + 112);
    v50 = *(v22 + v43 + 16);
    v319 = *(v22 + v43);
    v320 = v50;
    v51 = *(v22 + v43 + 48);
    v321 = *(v22 + v43 + 32);
    v322 = v51;
    if ((BYTE6(v319) & 1) == 0 && WORD2(v319) == 9)
    {
      v52 = 32;
      v53 = v27;
      while (1)
      {
        v54 = *(v22 + v52 + 80);
        v315 = *(v22 + v52 + 64);
        v316 = v54;
        v317 = *(v22 + v52 + 96);
        v318 = *(v22 + v52 + 112);
        v55 = *(v22 + v52 + 16);
        v311 = *(v22 + v52);
        v312 = v55;
        v56 = *(v22 + v52 + 48);
        v313 = *(v22 + v52 + 32);
        v314 = v56;
        if ((BYTE6(v311) & 1) == 0 && WORD2(v311) == 14)
        {
          break;
        }

        v52 += 120;
        if (!--v53)
        {
          sub_25F7BFBF0(&v343, &v252);
          sub_25F7BFBF0(&v335, &v252);
          sub_25F7BFBF0(&v327, &v252);
          sub_25F7BFBF0(&v319, &v252);

          sub_25F8221DC();
          v79 = sub_25F8221CC();
          v80 = sub_25F82268C();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            *&v252 = v82;
            *v81 = 136315138;
            *(v81 + 4) = sub_25F75CA94(0xD000000000000014, 0x800000025F82F470, &v252);
            _os_log_impl(&dword_25F74E000, v79, v80, "%s", v81, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v82);
            MEMORY[0x25F8E88D0](v82, -1, -1);
            MEMORY[0x25F8E88D0](v81, -1, -1);
          }

          (*(v4 + 8))(v12, v251);
          goto LABEL_98;
        }
      }

      v57 = 32;
      v58 = v27;
      v59 = v22;
      v248 = v23;
      v249 = v24;
      do
      {
        v64 = *(v22 + v57 + 80);
        v256 = *(v22 + v57 + 64);
        v257 = v64;
        v258 = *(v22 + v57 + 96);
        LOBYTE(v259) = *(v22 + v57 + 112);
        v65 = *(v22 + v57 + 16);
        v252 = *(v22 + v57);
        v253 = v65;
        v66 = *(v22 + v57 + 48);
        v254 = *(v22 + v57 + 32);
        v255 = v66;
        if ((BYTE6(v252) & 1) == 0 && WORD2(v252) == 10)
        {
          v67 = v22 + v57;
          v68 = *(v67 + 80);
          v299 = *(v67 + 64);
          v300 = v68;
          v301 = *(v67 + 96);
          v302 = *(v67 + 112);
          v69 = *(v67 + 16);
          v295 = *v67;
          v296 = v69;
          v70 = *(v67 + 48);
          v297 = *(v67 + 32);
          v298 = v70;
          sub_25F7BFBF0(&v252, v292);
          v22 = v59;
          v307 = v299;
          v308 = v300;
          v309 = v301;
          v310 = v302;
          v303 = v295;
          v304 = v296;
          v305 = v297;
          v306 = v298;
          goto LABEL_43;
        }

        v57 += 120;
        --v58;
      }

      while (v58);
      v310 = 0;
      v309 = 0u;
      v308 = 0u;
      v307 = 0u;
      v306 = 0u;
      v305 = 0u;
      v304 = 0u;
      v303 = 0u;
LABEL_43:
      v83 = 32;
      v84 = v27;
      do
      {
        v85 = *(v22 + v83 + 80);
        v256 = *(v22 + v83 + 64);
        v257 = v85;
        v258 = *(v22 + v83 + 96);
        LOBYTE(v259) = *(v22 + v83 + 112);
        v86 = *(v22 + v83 + 16);
        v252 = *(v22 + v83);
        v253 = v86;
        v87 = *(v22 + v83 + 48);
        v254 = *(v22 + v83 + 32);
        v255 = v87;
        if ((BYTE6(v252) & 1) == 0 && WORD2(v252) == 11)
        {
          v88 = v22 + v83;
          v89 = *(v88 + 80);
          v292[4] = *(v88 + 64);
          v292[5] = v89;
          v293 = *(v88 + 96);
          v294 = *(v88 + 112);
          v90 = *(v88 + 16);
          v292[0] = *v88;
          v292[1] = v90;
          v91 = *(v88 + 48);
          v292[2] = *(v88 + 32);
          v292[3] = v91;
          sub_25F7BFBF0(&v252, &v284);
          v22 = v59;
          v299 = v292[4];
          v300 = v292[5];
          v301 = v293;
          v302 = v294;
          v295 = v292[0];
          v296 = v292[1];
          v297 = v292[2];
          v298 = v292[3];
          goto LABEL_49;
        }

        v83 += 120;
        --v84;
      }

      while (v84);
      v302 = 0;
      v301 = 0u;
      v300 = 0u;
      v299 = 0u;
      v298 = 0u;
      v297 = 0u;
      v296 = 0u;
      v295 = 0u;
LABEL_49:
      v92 = 32;
      v93 = v27;
      do
      {
        v94 = *(v22 + v92 + 80);
        v256 = *(v22 + v92 + 64);
        v257 = v94;
        v258 = *(v22 + v92 + 96);
        LOBYTE(v259) = *(v22 + v92 + 112);
        v95 = *(v22 + v92 + 16);
        v252 = *(v22 + v92);
        v253 = v95;
        v96 = *(v22 + v92 + 48);
        v254 = *(v22 + v92 + 32);
        v255 = v96;
        if ((BYTE6(v252) & 1) == 0 && WORD2(v252) == 12)
        {
          v97 = v22 + v92;
          v98 = *(v97 + 80);
          v288 = *(v97 + 64);
          v289 = v98;
          v290 = *(v97 + 96);
          v291 = *(v97 + 112);
          v99 = *(v97 + 16);
          v284 = *v97;
          v285 = v99;
          v100 = *(v97 + 48);
          v286 = *(v97 + 32);
          v287 = v100;
          sub_25F7BFBF0(&v252, v281);
          v22 = v59;
          v292[4] = v288;
          v292[5] = v289;
          v293 = v290;
          v294 = v291;
          v292[0] = v284;
          v292[1] = v285;
          v292[2] = v286;
          v292[3] = v287;
          goto LABEL_55;
        }

        v92 += 120;
        --v93;
      }

      while (v93);
      v294 = 0;
      v293 = 0u;
      memset(v292, 0, sizeof(v292));
LABEL_55:
      v101 = 32;
      v102 = v27;
      do
      {
        v103 = *(v22 + v101 + 80);
        v256 = *(v22 + v101 + 64);
        v257 = v103;
        v258 = *(v22 + v101 + 96);
        LOBYTE(v259) = *(v22 + v101 + 112);
        v104 = *(v22 + v101 + 16);
        v252 = *(v22 + v101);
        v253 = v104;
        v105 = *(v22 + v101 + 48);
        v254 = *(v22 + v101 + 32);
        v255 = v105;
        if ((BYTE6(v252) & 1) == 0 && WORD2(v252) == 13)
        {
          v106 = v22 + v101;
          v107 = *(v106 + 80);
          v281[4] = *(v106 + 64);
          v281[5] = v107;
          v282 = *(v106 + 96);
          v283 = *(v106 + 112);
          v108 = *(v106 + 16);
          v281[0] = *v106;
          v281[1] = v108;
          v109 = *(v106 + 48);
          v281[2] = *(v106 + 32);
          v281[3] = v109;
          sub_25F7BFBF0(&v252, &v273);
          v22 = v59;
          v288 = v281[4];
          v289 = v281[5];
          v290 = v282;
          v291 = v283;
          v284 = v281[0];
          v285 = v281[1];
          v286 = v281[2];
          v287 = v281[3];
          goto LABEL_61;
        }

        v101 += 120;
        --v102;
      }

      while (v102);
      v291 = 0;
      v289 = 0u;
      v290 = 0u;
      v287 = 0u;
      v288 = 0u;
      v285 = 0u;
      v286 = 0u;
      v284 = 0u;
LABEL_61:
      v110 = 32;
      v111 = v27;
      do
      {
        v112 = *(v22 + v110 + 80);
        v256 = *(v22 + v110 + 64);
        v257 = v112;
        v258 = *(v22 + v110 + 96);
        LOBYTE(v259) = *(v22 + v110 + 112);
        v113 = *(v22 + v110 + 16);
        v252 = *(v22 + v110);
        v253 = v113;
        v114 = *(v22 + v110 + 48);
        v254 = *(v22 + v110 + 32);
        v255 = v114;
        if ((BYTE6(v252) & 1) == 0 && WORD2(v252) == 15)
        {
          v115 = v22 + v110;
          v116 = *(v115 + 80);
          v277 = *(v115 + 64);
          v278 = v116;
          v279 = *(v115 + 96);
          v280 = *(v115 + 112);
          v117 = *(v115 + 16);
          v273 = *v115;
          v274 = v117;
          v118 = *(v115 + 48);
          v275 = *(v115 + 32);
          v276 = v118;
          sub_25F7BFBF0(&v252, &v265);
          v22 = v59;
          v281[4] = v277;
          v281[5] = v278;
          v282 = v279;
          v283 = v280;
          v281[0] = v273;
          v281[1] = v274;
          v281[2] = v275;
          v281[3] = v276;
          goto LABEL_67;
        }

        v110 += 120;
        --v111;
      }

      while (v111);
      v283 = 0;
      v282 = 0u;
      memset(v281, 0, sizeof(v281));
LABEL_67:
      v119 = 32;
      do
      {
        v120 = *(v22 + v119 + 80);
        v256 = *(v22 + v119 + 64);
        v257 = v120;
        v258 = *(v22 + v119 + 96);
        LOBYTE(v259) = *(v22 + v119 + 112);
        v121 = *(v22 + v119 + 16);
        v252 = *(v22 + v119);
        v253 = v121;
        v122 = *(v22 + v119 + 48);
        v254 = *(v22 + v119 + 32);
        v255 = v122;
        if ((BYTE6(v252) & 1) == 0 && WORD2(v252) == 16)
        {
          v123 = v22 + v119;
          v124 = *(v123 + 80);
          v269 = *(v123 + 64);
          v270 = v124;
          v271 = *(v123 + 96);
          v272 = *(v123 + 112);
          v125 = *(v123 + 16);
          v265 = *v123;
          v266 = v125;
          v126 = *(v123 + 48);
          v267 = *(v123 + 32);
          v268 = v126;
          sub_25F7BFBF0(&v252, &v264);
          v277 = v269;
          v278 = v270;
          v279 = v271;
          v280 = v272;
          v273 = v265;
          v274 = v266;
          v275 = v267;
          v276 = v268;
          goto LABEL_73;
        }

        v119 += 120;
        --v27;
      }

      while (v27);
      v280 = 0;
      v278 = 0u;
      v279 = 0u;
      v276 = 0u;
      v277 = 0u;
      v274 = 0u;
      v275 = 0u;
      v273 = 0u;
LABEL_73:
      sub_25F7BFBF0(&v343, &v252);
      sub_25F7BFBF0(&v335, &v252);
      sub_25F7BFBF0(&v327, &v252);
      sub_25F7BFBF0(&v319, &v252);
      sub_25F7BFBF0(&v311, &v252);

      v127 = (DWORD2(v343) >> 3) + 1;
      v128 = v127 + (DWORD2(v335) >> 3);
      v250 = DWORD2(v319) >> 3;
      v129 = *(&v300 + 1);
      if (*(&v300 + 1) && (v130 = *(&v308 + 1)) != 0 && (v131 = *(&v289 + 1)) != 0 && *(&v292[5] + 1))
      {
        v228 = DWORD2(v327);
        v229 = DWORD2(v335);
        v227 = DWORD2(v319);
        v230 = DWORD2(v343);
        v231 = v128 + (DWORD2(v327) >> 3);
        v243 = DWORD2(v327) >> 3;
        v244 = v127 + (DWORD2(v335) >> 3);
        v245 = DWORD2(v335) >> 3;
        v246 = (DWORD2(v343) >> 3) + 1;
        v247 = DWORD2(v343) >> 3;
        v234 = DWORD2(v295);
        v235 = v295;
        v236 = DWORD2(v303);
        v237 = v303;
        v238 = DWORD2(v284);
        v239 = v284;
        v240 = DWORD2(v292[0]);
        v241 = *&v292[0];
        v242 = *(&v292[5] + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD60);
        v132 = swift_allocObject();
        *(v132 + 16) = xmmword_25F823D00;
        v133 = v234;
        *(v132 + 32) = v235;
        *(v132 + 40) = v133;
        v134 = *(&v295 | 0xC);
        *(v132 + 60) = *((&v295 | 0xC) + 0x10);
        v135 = *((&v295 | 0xC) + 0x30);
        *(v132 + 76) = *((&v295 | 0xC) + 0x20);
        *(v132 + 92) = v135;
        *(v132 + 104) = *((&v295 | 0xC) + 0x3C);
        *(v132 + 44) = v134;
        *(v132 + 120) = v129;
        *(v132 + 128) = v301;
        *(v132 + 144) = v302;
        v136 = v236;
        *(v132 + 152) = v237;
        *(v132 + 160) = v136;
        v137 = *((&v303 | 0xC) + 0x10);
        *(v132 + 164) = *(&v303 | 0xC);
        *(v132 + 224) = *((&v303 | 0xC) + 0x3C);
        v138 = *((&v303 | 0xC) + 0x20);
        v139 = v231;
        *(v132 + 212) = *((&v303 | 0xC) + 0x30);
        *(v132 + 196) = v138;
        *(v132 + 180) = v137;
        *(v132 + 240) = v130;
        *(v132 + 264) = v310;
        *(v132 + 248) = v309;
        v140 = v238;
        *(v132 + 272) = v239;
        *(v132 + 280) = v140;
        v141 = *(&v284 | 0xC);
        v142 = *((&v284 | 0xC) + 0x10);
        *(v132 + 344) = *((&v284 | 0xC) + 0x3C);
        v143 = *((&v284 | 0xC) + 0x30);
        *(v132 + 316) = *((&v284 | 0xC) + 0x20);
        *(v132 + 332) = v143;
        *(v132 + 284) = v141;
        *(v132 + 300) = v142;
        *(v132 + 360) = v131;
        v144 = v290;
        *(v132 + 384) = v291;
        *(v132 + 368) = v144;
        v145 = v240;
        *(v132 + 392) = v241;
        *(v132 + 400) = v145;
        v146 = *(v292 + 12);
        v147 = *(&v292[1] + 12);
        v148 = *(&v292[2] + 12);
        *(v132 + 464) = *(&v292[4] + 8);
        v149 = *(&v292[3] + 12);
        *(v132 + 436) = v148;
        *(v132 + 452) = v149;
        *(v132 + 404) = v146;
        *(v132 + 420) = v147;
        *(v132 + 480) = v242;
        v150 = v293;
        v151 = v139 + v250;
        v152 = v136 >> 3;
        v153 = v139 + v250 + (v136 >> 3);
        *(v132 + 504) = v294;
        v241 = v133 >> 3;
        v242 = v153;
        *(v132 + 488) = v150;
        v239 = v145 >> 3;
        v240 = v153 + (v133 >> 3);
        v237 = v140 >> 3;
        v238 = v240 + (v145 >> 3);
        v154 = v238 + (v140 >> 3);
        v226 = DWORD2(v311);
        sub_25F76183C(&v295, &v252, &qword_27FDB0528);
        sub_25F76183C(&v303, &v252, &qword_27FDB0528);
        sub_25F76183C(&v284, &v252, &qword_27FDB0528);
        sub_25F76183C(v292, &v252, &qword_27FDB0528);
        v232 = 0;
        v235 = 0;
        v236 = 0;
        v233 = 0;
        v234 = 0;
      }

      else
      {
        v155 = *(&v278 + 1);
        if (!*(&v278 + 1) || (v156 = *(&v281[5] + 1)) == 0)
        {
LABEL_91:
          sub_25F8221DC();
          v201 = sub_25F8221CC();
          v202 = sub_25F82268C();
          if (os_log_type_enabled(v201, v202))
          {
            v203 = swift_slowAlloc();
            v204 = swift_slowAlloc();
            *&v252 = v204;
            *v203 = 136315138;
            *(v203 + 4) = sub_25F75CA94(0xD00000000000002ALL, 0x800000025F82F3E0, &v252);
            _os_log_impl(&dword_25F74E000, v201, v202, "%s", v203, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v204);
            MEMORY[0x25F8E88D0](v204, -1, -1);
            MEMORY[0x25F8E88D0](v203, -1, -1);
          }

          (*(v4 + 8))(v9, v251);
          goto LABEL_97;
        }

        v228 = DWORD2(v327);
        v229 = DWORD2(v335);
        v227 = DWORD2(v319);
        v230 = DWORD2(v343);
        v243 = DWORD2(v327) >> 3;
        v244 = v127 + (DWORD2(v335) >> 3);
        v245 = DWORD2(v335) >> 3;
        v246 = (DWORD2(v343) >> 3) + 1;
        v247 = DWORD2(v343) >> 3;
        v157 = DWORD2(v273);
        v158 = v128 + v243;
        v159 = DWORD2(v281[0]);
        v241 = *&v281[0];
        v242 = v273;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD60);
        v132 = swift_allocObject();
        *(v132 + 16) = xmmword_25F824480;
        v160 = *(&v273 | 0xC);
        *(v132 + 60) = *((&v273 | 0xC) + 0x10);
        v161 = *((&v273 | 0xC) + 0x30);
        *(v132 + 76) = *((&v273 | 0xC) + 0x20);
        *(v132 + 92) = v161;
        v139 = v158;
        *(v132 + 104) = *((&v273 | 0xC) + 0x3C);
        *(v132 + 32) = v242;
        *(v132 + 40) = v157;
        *(v132 + 44) = v160;
        *(v132 + 120) = v155;
        *(v132 + 128) = v279;
        *(v132 + 144) = v280;
        *(v132 + 152) = v241;
        *(v132 + 160) = v159;
        *(v132 + 224) = *(&v281[4] + 8);
        *(v132 + 212) = *(&v281[3] + 12);
        *(v132 + 196) = *(&v281[2] + 12);
        *(v132 + 180) = *(&v281[1] + 12);
        *(v132 + 164) = *(v281 + 12);
        *(v132 + 240) = v156;
        *(v132 + 248) = v282;
        v162 = v158 + v250;
        *(v132 + 264) = v283;
        v235 = v159 >> 3;
        v236 = v162;
        v233 = v157 >> 3;
        v234 = v162 + (v159 >> 3);
        v154 = v234 + (v157 >> 3);
        v226 = DWORD2(v311);
        sub_25F76183C(&v273, &v252, &qword_27FDB0528);
        sub_25F76183C(v281, &v252, &qword_27FDB0528);
        v151 = 0;
        v152 = 0;
        v241 = 0;
        v242 = 0;
        v239 = 0;
        v240 = 0;
        v237 = 0;
        v238 = 0;
        v232 = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD60);
      v163 = swift_allocObject();
      v164 = v347;
      v165 = v349;
      *(v163 + 112) = v348;
      *(v163 + 128) = v165;
      *(v163 + 144) = v350;
      v166 = v343;
      v167 = v344;
      *(v163 + 16) = xmmword_25F824210;
      *(v163 + 32) = v166;
      v168 = v345;
      v169 = v346;
      *(v163 + 48) = v167;
      *(v163 + 64) = v168;
      *(v163 + 80) = v169;
      *(v163 + 96) = v164;
      v170 = v340;
      *(v163 + 216) = v339;
      *(v163 + 232) = v170;
      *(v163 + 248) = v341;
      *(v163 + 264) = v342;
      v171 = v336;
      *(v163 + 152) = v335;
      *(v163 + 168) = v171;
      v172 = v338;
      *(v163 + 184) = v337;
      *(v163 + 200) = v172;
      v173 = v327;
      v174 = v328;
      v175 = v330;
      *(v163 + 304) = v329;
      *(v163 + 320) = v175;
      *(v163 + 272) = v173;
      *(v163 + 288) = v174;
      v176 = v331;
      v177 = v332;
      v178 = v333;
      *(v163 + 384) = v334;
      *(v163 + 352) = v177;
      *(v163 + 368) = v178;
      *(v163 + 336) = v176;
      v179 = v319;
      v180 = v320;
      v181 = v322;
      *(v163 + 424) = v321;
      *(v163 + 440) = v181;
      *(v163 + 392) = v179;
      *(v163 + 408) = v180;
      v182 = v323;
      v183 = v324;
      v184 = v325;
      *(v163 + 504) = v326;
      *(v163 + 472) = v183;
      *(v163 + 488) = v184;
      *(v163 + 456) = v182;
      v185 = v311;
      v186 = v312;
      v187 = v314;
      *(v163 + 544) = v313;
      *(v163 + 560) = v187;
      *(v163 + 512) = v185;
      *(v163 + 528) = v186;
      v188 = v315;
      v189 = v316;
      v190 = v317;
      *(v163 + 624) = v318;
      *(v163 + 592) = v189;
      *(v163 + 608) = v190;
      *(v163 + 576) = v188;
      *&v265 = v163;
      sub_25F7BFBF0(&v343, &v252);
      sub_25F7BFBF0(&v335, &v252);
      sub_25F7BFBF0(&v327, &v252);
      sub_25F7BFBF0(&v319, &v252);
      sub_25F7BFBF0(&v311, &v252);

      sub_25F77EC28(v191);
      v192 = sub_25F7BE6B0(v265);

      if (v192)
      {
        v193 = v230 + v229;
        if (__CFADD__(v230, v229))
        {
          __break(1u);
        }

        else
        {
          v194 = __CFADD__(v193, v228);
          v195 = v193 + v228;
          if (!v194)
          {
            v194 = __CFADD__(v195, v227);
            v196 = v195 + v227;
            if (!v194)
            {
              v197 = v196 + DWORD2(v311);
              if (!__CFADD__(v196, DWORD2(v311)))
              {
                LODWORD(v9) = 0;
                v249 = v226 >> 3;
                v198 = *(v132 + 16) + 1;
                v199 = 40;
                while (--v198)
                {
                  v200 = *(v132 + v199);
                  v199 += 120;
                  v194 = __CFADD__(v9, v200);
                  v9 = (v9 + v200);
                  if (v194)
                  {
                    __break(1u);
                    goto LABEL_91;
                  }
                }

                v229 = v152;
                v230 = v151;

                if (!__CFADD__(v197, v9))
                {
                  v216 = v343;
                  v217 = BYTE7(v343);
                  v224[1] = "";
                  *&v252 = 0;
                  *(&v252 + 1) = 0xE000000000000000;
                  sub_25F82292C();
                  v265 = v252;
                  MEMORY[0x25F8E7510](0xD00000000000001ELL, 0x800000025F82F450);
                  v227 = ((v197 + v9) >> 3) + 1;
                  *&v252 = v227;
                  v225 = v217;
                  v226 = v216;
                  BYTE8(v252) = v216;
                  BYTE9(v252) = v217;
                  BYTE10(v252) = v232;
                  *(&v252 + 11) = v351;
                  HIBYTE(v252) = v352;
                  *&v253 = 1;
                  *(&v253 + 1) = v247;
                  *&v254 = v246;
                  *(&v254 + 1) = v245;
                  *&v255 = v244;
                  *(&v255 + 1) = v243;
                  *&v256 = v139;
                  v231 = v139;
                  *(&v256 + 1) = v250;
                  *&v257 = v230;
                  *(&v257 + 1) = v229;
                  *&v258 = v242;
                  *(&v258 + 1) = v241;
                  *&v259 = v240;
                  *(&v259 + 1) = v239;
                  *&v260 = v238;
                  *(&v260 + 1) = v237;
                  *&v261 = v236;
                  *(&v261 + 1) = v235;
                  *&v262 = v234;
                  *(&v262 + 1) = v233;
                  *&v263 = v154;
                  v228 = v154;
                  *(&v263 + 1) = v249;
                  sub_25F8229FC();
                  v218 = v265;
                  v219 = v248;
                  sub_25F8221DC();

                  v220 = sub_25F8221CC();
                  v221 = sub_25F82266C();

                  if (os_log_type_enabled(v220, v221))
                  {
                    v222 = swift_slowAlloc();
                    v223 = swift_slowAlloc();
                    *&v252 = v223;
                    *v222 = 136315138;
                    *(v222 + 4) = sub_25F75CA94(v218, *(&v218 + 1), &v252);
                    _os_log_impl(&dword_25F74E000, v220, v221, "%s", v222, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0Tm(v223);
                    MEMORY[0x25F8E88D0](v223, -1, -1);
                    MEMORY[0x25F8E88D0](v222, -1, -1);
                  }

                  (*(v4 + 8))(v219, v251);
                  sub_25F760F44(&v295, &qword_27FDB0528);
                  sub_25F760F44(&v303, &qword_27FDB0528);
                  sub_25F760F44(&v284, &qword_27FDB0528);
                  sub_25F760F44(v292, &qword_27FDB0528);
                  sub_25F760F44(&v273, &qword_27FDB0528);
                  sub_25F760F44(v281, &qword_27FDB0528);
                  sub_25F7BFC70(&v311);
                  sub_25F7BFC70(&v319);
                  sub_25F7BFC70(&v327);
                  sub_25F7BFC70(&v335);
                  sub_25F7BFC70(&v343);

                  *&v252 = v227;
                  BYTE8(v252) = v226;
                  BYTE9(v252) = v225;
                  BYTE10(v252) = v232;
                  *(&v252 + 11) = v351;
                  HIBYTE(v252) = v352;
                  *&v253 = 1;
                  *(&v253 + 1) = v247;
                  *&v254 = v246;
                  *(&v254 + 1) = v245;
                  *&v255 = v244;
                  *(&v255 + 1) = v243;
                  *&v256 = v231;
                  *(&v256 + 1) = v250;
                  *&v257 = v230;
                  *(&v257 + 1) = v229;
                  *&v258 = v242;
                  *(&v258 + 1) = v241;
                  *&v259 = v240;
                  *(&v259 + 1) = v239;
                  *&v260 = v238;
                  *(&v260 + 1) = v237;
                  *&v261 = v236;
                  *(&v261 + 1) = v235;
                  *&v262 = v234;
                  *(&v262 + 1) = v233;
                  *&v263 = v228;
                  *(&v263 + 1) = v249;
                  nullsub_1(&v252);
                  goto LABEL_103;
                }

                goto LABEL_112;
              }

LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
              return;
            }

LABEL_110:
            __break(1u);
            goto LABEL_111;
          }
        }

        __break(1u);
        goto LABEL_110;
      }

      v205 = v249;
      sub_25F8221DC();
      v206 = sub_25F8221CC();
      v207 = sub_25F82268C();
      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        *&v252 = v209;
        *v208 = 136315138;
        *(v208 + 4) = sub_25F75CA94(0xD00000000000003BLL, 0x800000025F82F410, &v252);
        _os_log_impl(&dword_25F74E000, v206, v207, "%s", v208, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v209);
        MEMORY[0x25F8E88D0](v209, -1, -1);
        MEMORY[0x25F8E88D0](v208, -1, -1);
      }

      (*(v4 + 8))(v205, v251);
LABEL_97:
      sub_25F760F44(&v295, &qword_27FDB0528);
      sub_25F760F44(&v303, &qword_27FDB0528);
      sub_25F760F44(&v284, &qword_27FDB0528);
      sub_25F760F44(v292, &qword_27FDB0528);
      sub_25F760F44(&v273, &qword_27FDB0528);
      sub_25F760F44(v281, &qword_27FDB0528);
      sub_25F7BFC70(&v311);
LABEL_98:
      sub_25F7BFC70(&v319);
      goto LABEL_99;
    }

    v43 += 120;
    --v44;
  }

  while (v44);
  sub_25F7BFBF0(&v343, &v252);
  sub_25F7BFBF0(&v335, &v252);
  sub_25F7BFBF0(&v327, &v252);

  sub_25F8221DC();
  v75 = sub_25F8221CC();
  v76 = sub_25F82268C();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v252 = v78;
    *v77 = 136315138;
    *(v77 + 4) = sub_25F75CA94(0xD00000000000001BLL, 0x800000025F82F490, &v252);
    _os_log_impl(&dword_25F74E000, v75, v76, "%s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    MEMORY[0x25F8E88D0](v78, -1, -1);
    MEMORY[0x25F8E88D0](v77, -1, -1);
  }

  (*(v4 + 8))(v15, v251);
LABEL_99:
  sub_25F7BFC70(&v327);
LABEL_100:
  sub_25F7BFC70(&v335);
LABEL_101:
  sub_25F7BFC70(&v343);
LABEL_102:
  sub_25F7BFD20(&v252);
LABEL_103:
  v210 = v261;
  a2[8] = v260;
  a2[9] = v210;
  v211 = v263;
  a2[10] = v262;
  a2[11] = v211;
  v212 = v257;
  a2[4] = v256;
  a2[5] = v212;
  v213 = v259;
  a2[6] = v258;
  a2[7] = v213;
  v214 = v253;
  *a2 = v252;
  a2[1] = v214;
  v215 = v255;
  a2[2] = v254;
  a2[3] = v215;
}

uint64_t sub_25F7B45A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F8221EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v78 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v78 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v78 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v78 - v19;
  v21 = *(v18 + 16);
  if (v21)
  {
    v22 = 32;
    v23 = *(v18 + 16);
    while (1)
    {
      v24 = *(v18 + v22 + 80);
      v98 = *(v18 + v22 + 64);
      v99 = v24;
      v100 = *(v18 + v22 + 96);
      v101 = *(v18 + v22 + 112);
      v25 = *(v18 + v22 + 16);
      v94 = *(v18 + v22);
      v95 = v25;
      v26 = *(v18 + v22 + 48);
      v96 = *(v18 + v22 + 32);
      v97 = v26;
      if ((BYTE6(v94) & 1) == 0 && WORD2(v94) == 17)
      {
        break;
      }

      v22 += 120;
      if (!--v23)
      {
        goto LABEL_16;
      }
    }

    v27 = 32;
    while (1)
    {
      v28 = *(v18 + v27 + 80);
      v90 = *(v18 + v27 + 64);
      v91 = v28;
      v92 = *(v18 + v27 + 96);
      v93 = *(v18 + v27 + 112);
      v29 = *(v18 + v27 + 16);
      v86 = *(v18 + v27);
      v87 = v29;
      v30 = *(v18 + v27 + 48);
      v88 = *(v18 + v27 + 32);
      v89 = v30;
      if ((BYTE6(v86) & 1) == 0 && WORD2(v86) == 18)
      {
        break;
      }

      v27 += 120;
      if (!--v21)
      {
        sub_25F7BFBF0(&v94, &v86);

        sub_25F8221DC();
        v60 = sub_25F8221CC();
        v61 = sub_25F82268C();
        if (os_log_type_enabled(v60, v61))
        {
          v80 = v4;
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v86 = v63;
          *v62 = 136315138;
          *(v62 + 4) = sub_25F75CA94(0xD000000000000023, 0x800000025F82F380, &v86);
          _os_log_impl(&dword_25F74E000, v60, v61, "%s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v63);
          MEMORY[0x25F8E88D0](v63, -1, -1);
          MEMORY[0x25F8E88D0](v62, -1, -1);

          (*(v5 + 8))(v17, v80);
        }

        else
        {

          (*(v5 + 8))(v17, v4);
        }

        goto LABEL_30;
      }
    }

    sub_25F7BFBF0(&v94, &v84);
    sub_25F7BFBF0(&v86, &v84);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD60);
    v31 = swift_allocObject();
    v32 = v98;
    v33 = v100;
    *(v31 + 112) = v99;
    *(v31 + 128) = v33;
    v34 = v94;
    v35 = v95;
    *(v31 + 16) = xmmword_25F824480;
    *(v31 + 32) = v34;
    v36 = v96;
    v37 = v97;
    *(v31 + 48) = v35;
    *(v31 + 64) = v36;
    *(v31 + 80) = v37;
    *(v31 + 96) = v32;
    v38 = v91;
    *(v31 + 216) = v90;
    *(v31 + 232) = v38;
    *(v31 + 248) = v92;
    v39 = v87;
    *(v31 + 152) = v86;
    *(v31 + 168) = v39;
    v40 = v89;
    *(v31 + 184) = v88;
    *(v31 + 144) = v101;
    *(v31 + 264) = v93;
    *(v31 + 200) = v40;
    sub_25F7BFBF0(&v94, &v84);
    sub_25F7BFBF0(&v86, &v84);
    v41 = sub_25F7BE6B0(v31);

    if (v41)
    {
      v43 = DWORD2(v94) + DWORD2(v86);
      if (__CFADD__(DWORD2(v94), DWORD2(v86)))
      {
        __break(1u);
        return result;
      }

      v44 = (v43 >> 3) + 1;
      if (v43 >> 3 == 13538)
      {
        v80 = a2;
        v45 = v86;
        v46 = BYTE7(v86);
        v84 = 0;
        v85 = 0xE000000000000000;
        sub_25F82292C();
        MEMORY[0x25F8E7510](0xD00000000000001BLL, 0x800000025F82F360);
        v81 = 13539;
        v82 = v45;
        v79 = v46;
        v83 = v46;
        sub_25F8229FC();
        v47 = v85;
        v78 = v84;
        sub_25F8221DC();

        v48 = sub_25F8221CC();
        v49 = sub_25F82266C();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = v45;
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v84 = v52;
          *v51 = 136315138;
          *(v51 + 4) = sub_25F75CA94(v78, v47, &v84);
          _os_log_impl(&dword_25F74E000, v48, v49, "%s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v52);
          MEMORY[0x25F8E88D0](v52, -1, -1);
          v53 = v51;
          v45 = v50;
          MEMORY[0x25F8E88D0](v53, -1, -1);
        }

        (*(v5 + 8))(v14, v4);

        sub_25F7BFC70(&v86);
        result = sub_25F7BFC70(&v94);
        v54 = v80;
        v55 = v45 | (v79 << 8);
        *v80 = 13539;
        *(v54 + 4) = v55;
        return result;
      }

      v80 = &xmmword_25F825AA0;
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_25F82292C();
      MEMORY[0x25F8E7510](0xD00000000000001BLL, 0x800000025F82F310);
      v81 = v44;
      v68 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v68);

      MEMORY[0x25F8E7510](0xD00000000000002ALL, 0x800000025F82F330);
      v81 = 13539;
      v69 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v69);

      MEMORY[0x25F8E7510](0x736574796220, 0xE600000000000000);
      v71 = v84;
      v70 = v85;
      sub_25F8221DC();

      v72 = sub_25F8221CC();
      v73 = sub_25F82268C();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v76 = v71;
        v77 = v75;
        v84 = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_25F75CA94(v76, v70, &v84);
        _os_log_impl(&dword_25F74E000, v72, v73, "%s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v77);
        MEMORY[0x25F8E88D0](v77, -1, -1);
        MEMORY[0x25F8E88D0](v74, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      sub_25F8221DC();
      v64 = sub_25F8221CC();
      v65 = sub_25F82268C();
      if (os_log_type_enabled(v64, v65))
      {
        v80 = v4;
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v84 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_25F75CA94(0xD000000000000039, 0x800000025F82F2D0, &v84);
        _os_log_impl(&dword_25F74E000, v64, v65, "%s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x25F8E88D0](v67, -1, -1);
        MEMORY[0x25F8E88D0](v66, -1, -1);

        (*(v5 + 8))(v8, v80);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }
    }

    sub_25F7BFC70(&v86);
LABEL_30:
    result = sub_25F7BFC70(&v94);
    goto LABEL_31;
  }

LABEL_16:

  sub_25F8221DC();
  v56 = sub_25F8221CC();
  v57 = sub_25F82268C();
  if (os_log_type_enabled(v56, v57))
  {
    v80 = v4;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v94 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_25F75CA94(0xD00000000000002ALL, 0x800000025F82F3B0, &v94);
    _os_log_impl(&dword_25F74E000, v56, v57, "%s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    MEMORY[0x25F8E88D0](v59, -1, -1);
    MEMORY[0x25F8E88D0](v58, -1, -1);

    result = (*(v5 + 8))(v20, v80);
  }

  else
  {

    result = (*(v5 + 8))(v20, v4);
  }

LABEL_31:
  *a2 = 0;
  *(a2 + 8) = 3;
  return result;
}

uint64_t sub_25F7B50AC(int a1)
{
  v3 = sub_25F8221EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 256);
  v45 = *(v1 + 240);
  v46 = v7;
  v47 = *(v1 + 272);
  v48 = *(v1 + 288);
  v8 = *(v1 + 192);
  v41 = *(v1 + 176);
  v42 = v8;
  v9 = *(v1 + 224);
  v43 = *(v1 + 208);
  v44 = v9;
  v10 = *(v1 + 128);
  v37 = *(v1 + 112);
  v38 = v10;
  v11 = *(v1 + 160);
  v39 = *(v1 + 144);
  v40 = v11;
  v12 = *(v1 + 64);
  v33 = *(v1 + 48);
  v34 = v12;
  v13 = *(v1 + 96);
  v35 = *(v1 + 80);
  v36 = v13;
  result = sub_25F76E230(&v33);
  if (result == 1)
  {
    sub_25F8221DC();
    v15 = sub_25F8221CC();
    v16 = sub_25F82268C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_25F75CA94(0xD000000000000044, 0x800000025F82EEC0, v32);
      _os_log_impl(&dword_25F74E000, v15, v16, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x25F8E88D0](v18, -1, -1);
      MEMORY[0x25F8E88D0](v17, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    sub_25F76E244();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 5;
    return swift_willThrow();
  }

  else
  {
    v20 = v34;
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v21 = BYTE8(v34);
      v22 = BYTE9(v34);
      v23 = v35;
      if (v34)
      {
        v24 = sub_25F82253C();
        *(v24 + 16) = v20;
        bzero((v24 + 32), v20);
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      *(v24 + 32) = v22;
      *(v24 + 33) = a1;
      memcpy(v32, v1, sizeof(v32));
      v26 = v20;
      v27 = v21;
      v28 = v22;
      v30 = &type metadata for AppleDisplayHIDDevice.PresetInterface.CurrentPresetReport;
      v31 = &off_2871C7098;
      v29 = v23;
      sub_25F7B0528(&v26, v24);

      return __swift_destroy_boxed_opaque_existential_0Tm(&v26);
    }
  }

  return result;
}

uint64_t sub_25F7B53DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = a2[16];
  v8 = a2[18];
  v9 = a2[19];
  v10 = type metadata accessor for Preset(0);
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v15 < v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v8 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v16 = *(a1 + 16);
  if (v16 < v8 || v16 < v15)
  {
    goto LABEL_13;
  }

  v28 = a3;
  v17 = (2 * v15) | 1;

  sub_25F7AEB30(v18, (a1 + 32), v8, v17);
  v20 = v19;
  v22 = v21;
  v23 = sub_25F7B55F4(*(a1 + 32 + v7) << 16, v19, v21);
  v25 = v24;
  sub_25F821EBC();
  swift_allocObject();
  sub_25F821EAC();
  sub_25F7AECF8(v14);
  if (v4)
  {

    sub_25F76D178(v23, v25);
    return sub_25F76D178(v20, v22);
  }

  else
  {
    sub_25F76D178(v20, v22);

    sub_25F76D178(v23, v25);
    v26 = v28;
    sub_25F7BFB08(v14, v28, type metadata accessor for Preset);
    return (*(v11 + 56))(v26, 0, 1, v10);
  }
}

uint64_t sub_25F7B55F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v3 = *(a2 + 16);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v3 = a2;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v3 >> 16)
  {
    __break(1u);
  }

LABEL_10:
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (!v3)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v5 = *(a2 + 24);
LABEL_17:
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v5 >> 16)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v5 >= v3)
    {
      goto LABEL_20;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4)
  {
    v5 = a2 >> 32;
    goto LABEL_17;
  }

  if (BYTE6(a3) < v3)
  {
    goto LABEL_23;
  }

LABEL_20:
  v6 = WORD1(result);
  result = result;
  if (v6 >= result)
  {
    return sub_25F821FCC();
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t AppleDisplayHIDDevice.getPresetList()(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v56 = *MEMORY[0x277D85DE8];
  v3 = sub_25F8221EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = *(v1 + 256);
  v53[12] = *(v1 + 240);
  v53[13] = v10;
  v54 = *(v1 + 272);
  v55 = *(v1 + 288);
  v11 = *(v1 + 192);
  v53[8] = *(v1 + 176);
  v53[9] = v11;
  v12 = *(v1 + 224);
  v53[10] = *(v1 + 208);
  v53[11] = v12;
  v13 = *(v1 + 128);
  v53[4] = *(v1 + 112);
  v53[5] = v13;
  v14 = *(v1 + 160);
  v53[6] = *(v1 + 144);
  v53[7] = v14;
  v15 = *(v1 + 64);
  v53[0] = *(v1 + 48);
  v53[1] = v15;
  v16 = *(v1 + 96);
  v53[2] = *(v1 + 80);
  v53[3] = v16;
  if (sub_25F76E230(v53) == 1)
  {
    sub_25F8221DC();
    v17 = sub_25F8221CC();
    v18 = sub_25F82268C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_25F75CA94(0xD00000000000003FLL, 0x800000025F82ECE0, v48);
      _os_log_impl(&dword_25F74E000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x25F8E88D0](v20, -1, -1);
      MEMORY[0x25F8E88D0](v19, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    sub_25F76E244();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    v22 = 5;
LABEL_9:
    *(v21 + 16) = v22;
    return swift_willThrow();
  }

  if (v55 == 3)
  {
    sub_25F8221DC();
    v23 = sub_25F8221CC();
    v24 = sub_25F82268C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_25F75CA94(0xD000000000000033, 0x800000025F82ED20, v48);
      _os_log_impl(&dword_25F74E000, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F8E88D0](v26, -1, -1);
      MEMORY[0x25F8E88D0](v25, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    sub_25F76E244();
    swift_allocError();
    *v21 = 0xD000000000000024;
    *(v21 + 8) = 0x800000025F82ED60;
    v22 = 4;
    goto LABEL_9;
  }

  memcpy(v48, v1, 0x1D0uLL);
  v52 = &off_2871C6DE0;
  v51 = &type metadata for AppleDisplayHIDDevice.PresetInterface.PresetListReport;
  v49 = *(&v54 + 1);
  v50 = v55;
  v28 = sub_25F7B0CF4(&v49);
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v49);
  if (!v2)
  {
    v49 = MEMORY[0x277D84F90];
    v29 = sub_25F7BEE3C(v28);
    v31 = v30;

    v33 = &v46;
    MEMORY[0x28223BE20](v32);
    *(&v46 - 2) = &v49;
    v34 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v34 != 2)
      {
        *(v48 + 6) = 0;
        v48[0] = 0;
        sub_25F7B5DEC(v48);
        sub_25F76D178(v29, v31);
        return v49;
      }

      v47 = &v46;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      v37 = sub_25F821E4C();
      if (v37)
      {
        v38 = sub_25F821E7C();
        if (__OFSUB__(v36, v38))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
        }

        v37 += v36 - v38;
      }

      v39 = __OFSUB__(v35, v36);
      v40 = v35 - v36;
      if (v39)
      {
        goto LABEL_40;
      }

      v33 = (v31 & 0x3FFFFFFFFFFFFFFFLL);
      v41 = sub_25F821E6C();
      if (v41 >= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      if (!v37 || (v42 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v34)
    {
      v48[0] = v29;
      LOWORD(v48[1]) = v31;
      BYTE2(v48[1]) = BYTE2(v31);
      BYTE3(v48[1]) = BYTE3(v31);
      BYTE4(v48[1]) = BYTE4(v31);
      BYTE5(v48[1]) = BYTE5(v31);
      sub_25F7B5DEC(v48);
LABEL_15:
      sub_25F76D178(v29, v31);
      return v49;
    }

    v47 = v33;
    if (v29 >> 32 >= v29)
    {
      v37 = sub_25F821E4C();
      if (v37)
      {
        v43 = sub_25F821E7C();
        if (__OFSUB__(v29, v43))
        {
          goto LABEL_43;
        }

        v37 += v29 - v43;
      }

      v44 = sub_25F821E6C();
      if (v44 >= (v29 >> 32) - v29)
      {
        v45 = (v29 >> 32) - v29;
      }

      else
      {
        v45 = v44;
      }

      if (!v37 || (v45 & 0x8000000000000000) == 0)
      {
LABEL_36:
        sub_25F7BA3B0(v37);
        goto LABEL_15;
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_25F7B5DEC(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v13[1692] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 1) / 0x11Au;
  if (*(v1 + 1) % 0x11Au)
  {
    sub_25F82292C();

    v13[0] = 0xD000000000000013;
    v13[1] = 0x800000025F82ED90;
    v4 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v4);

    MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82EDB0);
    v12[0] = 282;
    v5 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v5);

LABEL_5:
    v7 = v13[1];
    sub_25F76E244();
    swift_allocError();
    *v8 = v13[0];
    *(v8 + 8) = v7;
    *(v8 + 16) = 4;
    return swift_willThrow();
  }

  if (((*(v1 + 1) - 13818) >> 5) < 0x659u)
  {
    sub_25F82292C();

    v13[0] = 0xD000000000000012;
    v13[1] = 0x800000025F82EDD0;
    v12[0] = v3;
    v6 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v6);

    MEMORY[0x25F8E7510](0xD000000000000012, 0x800000025F82EDF0);
    goto LABEL_5;
  }

  v10 = v1;
  v11 = v2;
  memcpy(v13, (v1 + 3), 0x11AuLL);
  memcpy(&v13[35] + 2, (v10 + 285), 0x11AuLL);
  memcpy(&v13[70] + 4, (v10 + 567), 0x11AuLL);
  memcpy(&v13[105] + 6, (v10 + 849), 0x11AuLL);
  memcpy(&v13[141], (v10 + 1131), 0x11AuLL);
  memcpy(&v13[176] + 2, (v10 + 1413), 0x11AuLL);
  memcpy(&v13[211] + 4, (v10 + 1695), 0x11AuLL);
  memcpy(&v13[246] + 6, (v10 + 1977), 0x11AuLL);
  memcpy(&v13[282], (v10 + 2259), 0x11AuLL);
  memcpy(&v13[317] + 2, (v10 + 2541), 0x11AuLL);
  memcpy(&v13[352] + 4, (v10 + 2823), 0x11AuLL);
  memcpy(&v13[387] + 6, (v10 + 3105), 0x11AuLL);
  memcpy(&v13[423], (v10 + 3387), 0x11AuLL);
  memcpy(&v13[458] + 2, (v10 + 3669), 0x11AuLL);
  memcpy(&v13[493] + 4, (v10 + 3951), 0x11AuLL);
  memcpy(&v13[528] + 6, (v10 + 4233), 0x11AuLL);
  memcpy(&v13[564], (v10 + 4515), 0x11AuLL);
  memcpy(&v13[599] + 2, (v10 + 4797), 0x11AuLL);
  memcpy(&v13[634] + 4, (v10 + 5079), 0x11AuLL);
  memcpy(&v13[669] + 6, (v10 + 5361), 0x11AuLL);
  memcpy(&v13[705], (v10 + 5643), 0x11AuLL);
  memcpy(&v13[740] + 2, (v10 + 5925), 0x11AuLL);
  memcpy(&v13[775] + 4, (v10 + 6207), 0x11AuLL);
  memcpy(&v13[810] + 6, (v10 + 6489), 0x11AuLL);
  memcpy(&v13[846], (v10 + 6771), 0x11AuLL);
  memcpy(&v13[881] + 2, (v10 + 7053), 0x11AuLL);
  memcpy(&v13[916] + 4, (v10 + 7335), 0x11AuLL);
  memcpy(&v13[951] + 6, (v10 + 7617), 0x11AuLL);
  memcpy(&v13[987], (v10 + 7899), 0x11AuLL);
  memcpy(&v13[1022] + 2, (v10 + 8181), 0x11AuLL);
  memcpy(&v13[1057] + 4, (v10 + 8463), 0x11AuLL);
  memcpy(&v13[1092] + 6, (v10 + 8745), 0x11AuLL);
  memcpy(&v13[1128], (v10 + 9027), 0x11AuLL);
  memcpy(&v13[1163] + 2, (v10 + 9309), 0x11AuLL);
  memcpy(&v13[1198] + 4, (v10 + 9591), 0x11AuLL);
  memcpy(&v13[1233] + 6, (v10 + 9873), 0x11AuLL);
  memcpy(&v13[1269], (v10 + 10155), 0x11AuLL);
  memcpy(&v13[1304] + 2, (v10 + 10437), 0x11AuLL);
  memcpy(&v13[1339] + 4, (v10 + 10719), 0x11AuLL);
  memcpy(&v13[1374] + 6, (v10 + 11001), 0x11AuLL);
  memcpy(&v13[1410], (v10 + 11283), 0x11AuLL);
  memcpy(&v13[1445] + 2, (v10 + 11565), 0x11AuLL);
  memcpy(&v13[1480] + 4, (v10 + 11847), 0x11AuLL);
  memcpy(&v13[1515] + 6, (v10 + 12129), 0x11AuLL);
  memcpy(&v13[1551], (v10 + 12411), 0x11AuLL);
  memcpy(&v13[1586] + 2, (v10 + 12693), 0x11AuLL);
  memcpy(&v13[1621] + 4, (v10 + 12975), 0x11AuLL);
  memcpy(&v13[1656] + 6, (v10 + 13257), 0x11AuLL);
  memcpy(v12, v13, sizeof(v12));
  return sub_25F7B64B8(v12, v3, v3, v11);
}

uint64_t sub_25F7B64B8(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v5 = v4;
  v108 = a1;
  v128 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD38);
  v107 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v104 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v122 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = &v99 - v13;
  v106 = type metadata accessor for Preset.Info(0);
  v14 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v120 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F8221EC();
  result = MEMORY[0x28223BE20](v16);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0)
  {
    __break(1u);
  }

  if (a3)
  {
    v99 = v20;
    v100 = v18;
    v101 = result;
    v102 = a3;
    v21 = 0;
    v105 = (v14 + 56);
    v103 = a4;
    do
    {
      v23 = v108 + 282 * v21;
      if (*v23)
      {
        v118 = v21;
        v24 = sub_25F82217C();
        v119 = &v99;
        v125 = *(v24 - 8);
        v126 = v24;
        MEMORY[0x28223BE20](v24);
        v124 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25F82214C();
        v26 = *(v23 + 33);
        v27 = *(v23 + 49);
        v28 = *(v23 + 65);
        v29 = *(v23 + 81);
        v30 = *(v23 + 97);
        v31 = *(v23 + 113);
        v32 = *(v23 + 129);
        v33 = *(v23 + 145);
        v34 = *(v23 + 161);
        v35 = *(v23 + 177);
        v36 = *(v23 + 193);
        v37 = *(v23 + 209);
        v38 = *(v23 + 225);
        v39 = *(v23 + 241);
        v40 = *(v23 + 257);
        v127[0] = *(v23 + 17);
        v127[1] = v26;
        v127[2] = v27;
        v127[3] = v28;
        v127[4] = v29;
        v127[5] = v30;
        v127[6] = v31;
        v127[7] = v32;
        v127[8] = v33;
        v127[9] = v34;
        v127[10] = v35;
        v127[11] = v36;
        v127[12] = v37;
        v127[13] = v38;
        v127[14] = v39;
        v127[15] = v40;
        v41 = v5;
        v42 = sub_25F7BA310(v127, 256);
        *&v127[0] = v42;
        v43 = sub_25F8223DC();
        MEMORY[0x28223BE20](v43 - 8);
        sub_25F8223BC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFE8);
        sub_25F76100C(&qword_27FDB0488, &qword_27FDAFFE8);
        v44 = sub_25F82239C();
        if (!v45)
        {
          *&v127[0] = 0;
          *(&v127[0] + 1) = 0xE000000000000000;
          sub_25F82292C();

          *&v127[0] = 0xD000000000000023;
          *(&v127[0] + 1) = 0x800000025F82E5A0;
          v89 = MEMORY[0x25F8E75C0](v42, MEMORY[0x277D84B78]);
          v91 = v90;

          MEMORY[0x25F8E7510](v89, v91);

          v92 = v127[0];
          v93 = v99;
          sub_25F8221DC();

          v94 = sub_25F8221CC();
          v95 = sub_25F82268C();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            *&v127[0] = v97;
            *v96 = 136315138;
            *(v96 + 4) = sub_25F75CA94(v92, *(&v92 + 1), v127);
            _os_log_impl(&dword_25F74E000, v94, v95, "%s", v96, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v97);
            MEMORY[0x25F8E88D0](v97, -1, -1);
            MEMORY[0x25F8E88D0](v96, -1, -1);
          }

          (*(v100 + 8))(v93, v101);

          sub_25F76E244();
          swift_allocError();
          *v98 = 0xD00000000000001ELL;
          *(v98 + 8) = 0x800000025F82EE10;
          *(v98 + 16) = 4;
          swift_willThrow();
          return (*(v125 + 8))(v124, v126);
        }

        v46 = v44;
        v47 = v45;

        v48 = HIBYTE(v47) & 0xF;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v48 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          v49 = 4 * v48;
          while (sub_25F8224BC() || v50 != 0xE100000000000000)
          {
            v51 = sub_25F822CBC();

            if ((v51 & 1) != 0 || v49 == sub_25F82244C() >> 14)
            {
              goto LABEL_24;
            }
          }
        }

LABEL_24:
        v117 = v41;
        v56 = sub_25F8224DC();
        v58 = v57;
        v60 = v59;
        v62 = v61;

        v113 = sub_25F7BF8E0(*(v23 + 281));
        v63 = sub_25F82210C();
        v116 = &v99;
        v64 = v63;
        v65 = *(v63 - 8);
        MEMORY[0x28223BE20](v63);
        v67 = &v99 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25F8220CC();
        v68 = MEMORY[0x25F8E74C0](v56, v58, v60, v62);
        v110 = v69;
        v111 = v68;

        v70 = v120;
        (*(v125 + 16))(v120, v124, v126);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
        v112 = &v99;
        MEMORY[0x28223BE20](v71 - 8);
        v73 = &v99 - v72;
        v74 = *(v65 + 16);
        v109 = &v99 - v72;
        v114 = v67;
        v123 = v64;
        v74(&v99 - v72, v67, v64);
        v115 = v65;
        v75 = *(v65 + 56);
        v75(v73, 0, 1, v64);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
        v77 = *(*(v76 - 8) + 56);
        v77(v121, 1, 1, v76);
        v78 = v106;
        v79 = *(v106 + 32);
        v75((v70 + v79), 1, 1, v123);
        v80 = v78[9];
        v77(v70 + v80, 1, 1, v76);
        v81 = (v70 + v78[5]);
        v82 = v110;
        *v81 = v111;
        v81[1] = v82;
        v83 = (v70 + v78[6]);
        *v83 = 0;
        v83[1] = 0xE000000000000000;
        *(v70 + v78[7]) = v113;
        sub_25F760E58(v109, v70 + v79, &qword_27FDAFC20);
        sub_25F760E58(v121, v70 + v80, &qword_27FDAFC10);
        v84 = v122;
        sub_25F7BF9E4(v70, v122, type metadata accessor for Preset.Info);
        (*v105)(v84, 0, 1, v78);
        a4 = v103;
        v85 = *v103;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_25F75C4AC(0, v85[2] + 1, 1, v85);
          *a4 = v85;
        }

        a3 = v102;
        v88 = v85[2];
        v87 = v85[3];
        v5 = v117;
        if (v88 >= v87 >> 1)
        {
          *a4 = sub_25F75C4AC(v87 > 1, v88 + 1, 1, v85);
        }

        (*(v115 + 8))(v114, v123);
        (*(v125 + 8))(v124, v126);
        v22 = *a4;
        v22[2] = v88 + 1;
        sub_25F760FA4(v122, v22 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v88, &qword_27FDAFD38);
        result = sub_25F7BEDDC(v120, type metadata accessor for Preset.Info);
        v21 = v118;
      }

      else
      {
        (*v105)(v104, 1, 1, v106);
        v52 = *a4;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v52;
        if ((v53 & 1) == 0)
        {
          v52 = sub_25F75C4AC(0, v52[2] + 1, 1, v52);
          *a4 = v52;
        }

        v55 = v52[2];
        v54 = v52[3];
        if (v55 >= v54 >> 1)
        {
          v52 = sub_25F75C4AC(v54 > 1, v55 + 1, 1, v52);
          *a4 = v52;
        }

        v52[2] = v55 + 1;
        result = sub_25F760FA4(v104, v52 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v55, &qword_27FDAFD38);
      }

      ++v21;
    }

    while (v21 != a3);
  }

  return result;
}

uint64_t sub_25F7B70CC(uint64_t result, unint64_t a2, uint64_t a3)
{
  v16 = result;
  v17 = a2;
  if (!a3)
  {
    return result;
  }

  MEMORY[0x28223BE20](result);
  v13[2] = &v16;
  v13[3] = a3;
  v13[4] = v4;
  v13[5] = a3;
  result = sub_25F7BDBD4(sub_25F7BFA9C, v13, v5, v6);
  if ((result & 1) == 0)
  {
    return result;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB04E8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8];
  v10 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (!v10)
  {
    goto LABEL_8;
  }

  sub_25F76E658(v16, v17);
LABEL_8:
  sub_25F82208C();
  sub_25F82207C();
  sub_25F7BFABC();
  result = sub_25F8227AC();
  v11 = 0;
  if (v15)
  {
LABEL_12:
    *&v9[*(v7 + 36)] = v11;
    return sub_25F760F44(v9, &qword_27FDB04E8);
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      *(a3 + v12) = v14[6];
      result = sub_25F8227AC();
      ++v12;
      if (v15 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F7B72A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = sub_25F8221EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v98 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v98 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v98 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
LABEL_17:

    sub_25F8221DC();
    v52 = sub_25F8221CC();
    v53 = sub_25F82268C();
    if (os_log_type_enabled(v52, v53))
    {
      v98 = a2;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v118 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_25F75CA94(0xD000000000000021, 0x800000025F82F1E0, &v118);
      _os_log_impl(&dword_25F74E000, v52, v53, "%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x25F8E88D0](v55, -1, -1);
      MEMORY[0x25F8E88D0](v54, -1, -1);

      a2 = v98;
      result = (*(v5 + 8))(v16, v4);
    }

    else
    {
LABEL_30:

      result = (*(v5 + 8))(v16, v4);
    }

    goto LABEL_47;
  }

  v18 = 32;
  while (1)
  {
    v19 = *(a1 + v18 + 80);
    v122 = *(a1 + v18 + 64);
    v123 = v19;
    v124 = *(a1 + v18 + 96);
    v125 = *(a1 + v18 + 112);
    v20 = *(a1 + v18 + 16);
    v118 = *(a1 + v18);
    v119 = v20;
    v21 = *(a1 + v18 + 48);
    v120 = *(a1 + v18 + 32);
    v121 = v21;
    if ((BYTE6(v118) & 1) == 0 && WORD2(v118) == 1)
    {
      break;
    }

    v18 += 120;
    if (!--v17)
    {
      goto LABEL_17;
    }
  }

  sub_25F7BFBF0(&v118, &v110);
  sub_25F7BFBF0(&v118, &v110);
  v22 = sub_25F75BC28(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v25 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    v98 = v24 + 1;
    v22 = sub_25F75BC28((v23 > 1), v24 + 1, 1, v22);
    v25 = v98;
  }

  *(v22 + 2) = v25;
  v26 = &v22[120 * v24];
  v27 = v118;
  v28 = v119;
  v29 = v121;
  *(v26 + 4) = v120;
  *(v26 + 5) = v29;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v30 = v122;
  v31 = v123;
  v32 = v124;
  v26[144] = v125;
  *(v26 + 7) = v31;
  *(v26 + 8) = v32;
  *(v26 + 6) = v30;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_31:

    sub_25F8221DC();
    v77 = sub_25F8221CC();
    v78 = sub_25F82268C();
    if (os_log_type_enabled(v77, v78))
    {
      v98 = a2;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v110 = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_25F75CA94(0xD000000000000027, 0x800000025F82F1B0, &v110);
      _os_log_impl(&dword_25F74E000, v77, v78, "%s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      MEMORY[0x25F8E88D0](v80, -1, -1);
      MEMORY[0x25F8E88D0](v79, -1, -1);

      a2 = v98;
    }

    else
    {
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_46;
  }

  v34 = 32;
  while (1)
  {
    v35 = *(a1 + v34 + 80);
    v114 = *(a1 + v34 + 64);
    v115 = v35;
    v116 = *(a1 + v34 + 96);
    v117 = *(a1 + v34 + 112);
    v36 = *(a1 + v34 + 16);
    v110 = *(a1 + v34);
    v111 = v36;
    v37 = *(a1 + v34 + 48);
    v112 = *(a1 + v34 + 32);
    v113 = v37;
    if ((BYTE6(v110) & 1) == 0 && WORD2(v110) == 2)
    {
      break;
    }

    v34 += 120;
    if (!--v33)
    {
      goto LABEL_31;
    }
  }

  v98 = v25;
  v38 = v22;
  sub_25F7BFBF0(&v110, &v102);
  sub_25F7BFBF0(&v110, &v102);
  v39 = v38;
  v40 = *(v38 + 3);
  v41 = v24 + 2;
  if ((v24 + 2) > (v40 >> 1))
  {
    v39 = sub_25F75BC28((v40 > 1), v24 + 2, 1, v39);
  }

  v42 = v98;
  *(v39 + 2) = v41;
  v43 = &v39[120 * v42];
  v44 = v110;
  v45 = v111;
  v46 = v113;
  *(v43 + 4) = v112;
  *(v43 + 5) = v46;
  *(v43 + 2) = v44;
  *(v43 + 3) = v45;
  v47 = v114;
  v48 = v115;
  v49 = v116;
  v43[144] = v117;
  *(v43 + 7) = v48;
  *(v43 + 8) = v49;
  *(v43 + 6) = v47;
  v50 = *(a1 + 16);
  if (!v50)
  {
LABEL_35:

    sub_25F8221DC();
    v81 = sub_25F8221CC();
    v82 = sub_25F82268C();
    if (os_log_type_enabled(v81, v82))
    {
      v98 = a2;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v102 = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_25F75CA94(0xD000000000000020, 0x800000025F82F180, &v102);
      _os_log_impl(&dword_25F74E000, v81, v82, "%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      MEMORY[0x25F8E88D0](v84, -1, -1);
      MEMORY[0x25F8E88D0](v83, -1, -1);

      a2 = v98;
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_45;
  }

  v51 = 32;
  while (1)
  {
    v57 = *(a1 + v51 + 80);
    v106 = *(a1 + v51 + 64);
    v107 = v57;
    v108 = *(a1 + v51 + 96);
    v109 = *(a1 + v51 + 112);
    v58 = *(a1 + v51 + 16);
    v102 = *(a1 + v51);
    v103 = v58;
    v59 = *(a1 + v51 + 48);
    v104 = *(a1 + v51 + 32);
    v105 = v59;
    if ((BYTE6(v102) & 1) == 0 && WORD2(v102) == 3)
    {
      break;
    }

    v51 += 120;
    if (!--v50)
    {
      goto LABEL_35;
    }
  }

  v60 = v39;
  sub_25F7BFBF0(&v102, v100);
  sub_25F7BFBF0(&v102, v100);
  v61 = v60;
  v62 = *(v60 + 3);
  if ((v24 + 3) > (v62 >> 1))
  {
    v61 = sub_25F75BC28((v62 > 1), v24 + 3, 1, v60);
  }

  *(v61 + 2) = v24 + 3;
  v16 = v61 + 32;
  v63 = &v61[120 * v41 + 32];
  v64 = v102;
  v65 = v103;
  v66 = v105;
  *(v63 + 32) = v104;
  *(v63 + 48) = v66;
  *v63 = v64;
  *(v63 + 16) = v65;
  v67 = v106;
  v68 = v107;
  v69 = v108;
  *(v63 + 112) = v109;
  *(v63 + 80) = v68;
  *(v63 + 96) = v69;
  *(v63 + 64) = v67;
  v70 = v61;
  result = sub_25F7BE6B0(v61);
  if ((result & 1) == 0)
  {

    sub_25F8221DC();
    v85 = sub_25F8221CC();
    v86 = sub_25F82268C();
    if (os_log_type_enabled(v85, v86))
    {
      v98 = a2;
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *&v100[0] = v88;
      *v87 = 136315138;
      *(v87 + 4) = sub_25F75CA94(0xD000000000000037, 0x800000025F82EF40, v100);
      _os_log_impl(&dword_25F74E000, v85, v86, "%s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v88);
      MEMORY[0x25F8E88D0](v88, -1, -1);
      MEMORY[0x25F8E88D0](v87, -1, -1);

      a2 = v98;
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    sub_25F7BFC70(&v102);
LABEL_45:
    sub_25F7BFC70(&v110);
LABEL_46:
    result = sub_25F7BFC70(&v118);
LABEL_47:
    *a2 = xmmword_25F825A80;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    return result;
  }

  v71 = 0;
  v52 = v70;
  v72 = *(v70 + 2);
  v73 = v72 + 1;
  v74 = 40;
  while (--v73)
  {
    v75 = *&v70[v74];
    v74 += 120;
    v76 = __CFADD__(v71, v75);
    v71 += v75;
    if (v76)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  if (v72)
  {
    v89 = (v71 >> 3) + 1;
    v90 = v70[32];

    v91 = *(v16 + 5);
    v100[4] = *(v16 + 4);
    v100[5] = v91;
    v100[6] = *(v16 + 6);
    v101 = v16[112];
    v92 = *(v16 + 1);
    v100[0] = *v16;
    v93 = *(v16 + 2);
    v94 = *(v16 + 3);
    v100[1] = v92;
    v100[2] = v93;
    v100[3] = v94;
    sub_25F7BFBF0(v100, &v99);
    sub_25F7BFC70(&v118);

    sub_25F7BFC70(v100);
    sub_25F7BFC70(&v110);
    result = sub_25F7BFC70(&v102);
    v95 = DWORD2(v110) >> 3;
    v96 = DWORD2(v102) >> 3;
    v97 = v90 | (BYTE7(v100[0]) << 8);
    *a2 = v89;
    *(a2 + 8) = v97;
    *(a2 + 16) = v95;
    *(a2 + 24) = v96;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F7B7CD8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v103 = a2;
  v3 = sub_25F8221EC();
  v4 = *(v3 - 8);
  v101 = v3;
  v102 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v98 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v98 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = &v98 - v16;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  do
  {
    v20 = qword_2871C4140[v18 + 4];
    v21 = *(a1 + 16);
    if (!v21)
    {
LABEL_13:

      *&v107 = 0;
      *(&v107 + 1) = 0xE000000000000000;
      sub_25F82292C();

      *&v107 = 0xD00000000000002DLL;
      *(&v107 + 1) = 0x800000025F82F080;
      v105 = v20;
      v38 = sub_25F822C7C();
      MEMORY[0x25F8E7510](v38);

      v39 = v107;
      sub_25F8221DC();

      v40 = sub_25F8221CC();
      v41 = sub_25F82268C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v107 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_25F75CA94(v39, *(&v39 + 1), &v107);
        _os_log_impl(&dword_25F74E000, v40, v41, "%s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x25F8E88D0](v43, -1, -1);
        MEMORY[0x25F8E88D0](v42, -1, -1);
      }

      (*(v102 + 8))(v17, v101);
      goto LABEL_16;
    }

    ++v18;
    v22 = 32;
    while (1)
    {
      v23 = *(a1 + v22 + 80);
      v111 = *(a1 + v22 + 64);
      v112 = v23;
      v113 = *(a1 + v22 + 96);
      v114 = *(a1 + v22 + 112);
      v24 = *(a1 + v22 + 16);
      v107 = *(a1 + v22);
      v108 = v24;
      v25 = *(a1 + v22 + 48);
      v109 = *(a1 + v22 + 32);
      v110 = v25;
      if ((BYTE6(v107) & 1) == 0 && v20 == WORD2(v107))
      {
        break;
      }

      v22 += 120;
      if (!--v21)
      {
        goto LABEL_13;
      }
    }

    v26 = v14;
    v27 = v7;
    v100 = v15;
    sub_25F7BFBF0(&v107, &v105);
    v28 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_25F75BC28(0, *(v19 + 2) + 1, 1, v19);
    }

    v30 = *(v19 + 2);
    v29 = *(v19 + 3);
    if (v30 >= v29 >> 1)
    {
      v19 = sub_25F75BC28((v29 > 1), v30 + 1, 1, v19);
    }

    *(v19 + 2) = v30 + 1;
    v31 = &v19[120 * v30];
    v32 = v107;
    v33 = v108;
    v34 = v110;
    *(v31 + 4) = v109;
    *(v31 + 5) = v34;
    *(v31 + 2) = v32;
    *(v31 + 3) = v33;
    v35 = v111;
    v36 = v112;
    v37 = v113;
    v31[144] = v114;
    *(v31 + 7) = v36;
    *(v31 + 8) = v37;
    *(v31 + 6) = v35;
    v10 = v28;
    v15 = v100;
    v7 = v27;
    v14 = v26;
  }

  while (v18 != 3);
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_33:

    *&v107 = 0;
    *(&v107 + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000032, 0x800000025F82F140);
    v105 = 7;
    v68 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v68);

    v69 = v107;
    sub_25F8221DC();

    v70 = sub_25F8221CC();
    v71 = sub_25F82268C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v107 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_25F75CA94(v69, *(&v69 + 1), &v107);
      _os_log_impl(&dword_25F74E000, v70, v71, "%s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x25F8E88D0](v73, -1, -1);
      MEMORY[0x25F8E88D0](v72, -1, -1);
    }

    (*(v102 + 8))(v14, v101);
LABEL_16:

    goto LABEL_17;
  }

  v47 = 32;
  while (1)
  {
    v48 = *(a1 + v47 + 80);
    v111 = *(a1 + v47 + 64);
    v112 = v48;
    v113 = *(a1 + v47 + 96);
    v114 = *(a1 + v47 + 112);
    v49 = *(a1 + v47 + 16);
    v107 = *(a1 + v47);
    v108 = v49;
    v50 = *(a1 + v47 + 48);
    v109 = *(a1 + v47 + 32);
    v110 = v50;
    if ((BYTE6(v107) & 1) == 0 && WORD2(v107) == 7)
    {
      break;
    }

    v47 += 120;
    if (!--v46)
    {
      goto LABEL_33;
    }
  }

  sub_25F7BFBF0(&v107, &v105);
  sub_25F7BFBF0(&v107, &v105);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_25F75BC28(0, *(v19 + 2) + 1, 1, v19);
  }

  v52 = *(v19 + 2);
  v51 = *(v19 + 3);
  if (v52 >= v51 >> 1)
  {
    v19 = sub_25F75BC28((v51 > 1), v52 + 1, 1, v19);
  }

  *(v19 + 2) = v52 + 1;
  v53 = &v19[120 * v52];
  v54 = v107;
  v55 = v108;
  v56 = v110;
  *(v53 + 4) = v109;
  *(v53 + 5) = v56;
  *(v53 + 2) = v54;
  *(v53 + 3) = v55;
  v57 = v111;
  v58 = v112;
  v59 = v113;
  v53[144] = v114;
  *(v53 + 7) = v58;
  *(v53 + 8) = v59;
  *(v53 + 6) = v57;
  v60 = DWORD2(v107);
  result = sub_25F7BE6B0(v19);
  if ((result & 1) == 0)
  {

    sub_25F8221DC();
    v74 = sub_25F8221CC();
    v75 = sub_25F82268C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v105 = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_25F75CA94(0xD000000000000037, 0x800000025F82EF40, &v105);
      _os_log_impl(&dword_25F74E000, v74, v75, "%s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x25F8E88D0](v77, -1, -1);
      MEMORY[0x25F8E88D0](v76, -1, -1);
    }

    (*(v102 + 8))(v7, v101);
    goto LABEL_47;
  }

  v61 = 0;
  v62 = v60 >> 3;
  v63 = *(v19 + 2);
  v64 = v63 + 1;
  v65 = 40;
  while (--v64)
  {
    v66 = *&v19[v65];
    v65 += 120;
    v67 = __CFADD__(v61, v66);
    v61 += v66;
    if (v67)
    {
      __break(1u);
      goto LABEL_33;
    }
  }

  if (v63)
  {
    v78 = (v61 >> 3) + 1;
    v79 = v19[32];

    v80 = v19[39];

    if (v62 + 8 == v78)
    {
      result = sub_25F7BFC70(&v107);
      v81 = v103;
      *v103 = v78;
      *(v81 + 8) = v79;
      *(v81 + 9) = v80;
      *(v81 + 1) = xmmword_25F824480;
      *(v81 + 2) = xmmword_25F825A90;
      v81[6] = 8;
      v81[7] = v62;
      return result;
    }

    v98 = &xmmword_25F825AA0;
    v99 = v10;
    v82 = v100;
    sub_25F8221DC();
    v83 = sub_25F8221CC();
    v84 = sub_25F82268C();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v105 = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_25F75CA94(0xD00000000000003CLL, 0x800000025F82F0B0, &v105);
      _os_log_impl(&dword_25F74E000, v83, v84, "%s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v86);
      MEMORY[0x25F8E88D0](v86, -1, -1);
      MEMORY[0x25F8E88D0](v85, -1, -1);
    }

    v87 = v82;
    v88 = v101;
    v100 = *(v102 + 8);
    v100(v87, v101);
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82F0F0);
    v104 = v78;
    v89 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v89);

    MEMORY[0x25F8E7510](0xD000000000000021, 0x800000025F82F110);
    v104 = v62 + 8;
    v90 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v90);

    v92 = v105;
    v91 = v106;
    v93 = v99;
    sub_25F8221DC();

    v94 = sub_25F8221CC();
    v95 = sub_25F82268C();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v105 = v97;
      *v96 = 136315138;
      *(v96 + 4) = sub_25F75CA94(v92, v91, &v105);
      _os_log_impl(&dword_25F74E000, v94, v95, "%s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      MEMORY[0x25F8E88D0](v97, -1, -1);
      MEMORY[0x25F8E88D0](v96, -1, -1);
    }

    v100(v93, v88);

LABEL_47:
    result = sub_25F7BFC70(&v107);
LABEL_17:
    v45 = v103;
    *v103 = xmmword_25F825A80;
    *(v45 + 1) = 0u;
    *(v45 + 2) = 0u;
    *(v45 + 3) = 0u;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7B88AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F8221EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v50[-1] - v9;
  v11 = qword_2871C4198;
  v12 = *(a1 + 16);
  if (!v12)
  {
LABEL_16:

    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000038, 0x800000025F82F040);
    v50[0] = v11;
    v35 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v35);

    v36 = v51;
    sub_25F8221DC();

    v37 = sub_25F8221CC();
    v38 = sub_25F82268C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v51 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_25F75CA94(v36, *(&v36 + 1), &v51);
      _os_log_impl(&dword_25F74E000, v37, v38, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x25F8E88D0](v40, -1, -1);
      MEMORY[0x25F8E88D0](v39, -1, -1);
    }

    (*(v5 + 8))(v10, v4);

LABEL_19:
    v41 = 0;
    v42 = 3;
LABEL_20:
    *a2 = v41;
    *(a2 + 8) = v42;
    return result;
  }

  v13 = 32;
  while (1)
  {
    v14 = *(a1 + v13 + 16);
    v51 = *(a1 + v13);
    v15 = *(a1 + v13 + 64);
    v16 = *(a1 + v13 + 96);
    v56 = *(a1 + v13 + 80);
    v57 = v16;
    v17 = *(a1 + v13 + 32);
    v18 = *(a1 + v13 + 48);
    v52 = v14;
    v53 = v17;
    v58 = *(a1 + v13 + 112);
    v54 = v18;
    v55 = v15;
    if ((BYTE6(v51) & 1) == 0 && qword_2871C4198 == WORD2(v51))
    {
      break;
    }

    v13 += 120;
    if (!--v12)
    {
      goto LABEL_16;
    }
  }

  sub_25F7BFBF0(&v51, v50);
  v10 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_25F75BC28(0, *(v10 + 2) + 1, 1, v10);
  }

  v20 = *(v10 + 2);
  v19 = *(v10 + 3);
  v11 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    v10 = sub_25F75BC28((v19 > 1), v20 + 1, 1, v10);
  }

  *(v10 + 2) = v11;
  v21 = &v10[120 * v20];
  v22 = v51;
  v23 = v52;
  v24 = v54;
  *(v21 + 4) = v53;
  *(v21 + 5) = v24;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v25 = v55;
  v26 = v56;
  v27 = v57;
  v21[144] = v58;
  *(v21 + 7) = v26;
  *(v21 + 8) = v27;
  *(v21 + 6) = v25;
  result = sub_25F7BE6B0(v10);
  if ((result & 1) == 0)
  {

    sub_25F8221DC();
    v43 = sub_25F8221CC();
    v44 = sub_25F82268C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v51 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_25F75CA94(0xD000000000000037, 0x800000025F82EF40, &v51);
      _os_log_impl(&dword_25F74E000, v43, v44, "%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x25F8E88D0](v46, -1, -1);
      MEMORY[0x25F8E88D0](v45, -1, -1);
    }

    result = (*(v5 + 8))(v8, v4);
    goto LABEL_19;
  }

  v29 = 0;
  v30 = *(v10 + 2);
  v31 = v30 + 1;
  v32 = 40;
  while (--v31)
  {
    v33 = *&v10[v32];
    v32 += 120;
    v34 = __CFADD__(v29, v33);
    v29 += v33;
    if (v34)
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  if (v30)
  {
    v41 = (v29 >> 3) + 1;
    v47 = v10[32];

    v48 = v10[39];

    v42 = v47 | (v48 << 8);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7B8DE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25F8221EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v62[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v62[-1] - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v62[-1] - v13;
  v15 = *(v12 + 16);
  if (v15)
  {
    v16 = 32;
    v17 = *(v12 + 16);
    while (1)
    {
      v18 = *(v12 + v16 + 80);
      v75 = *(v12 + v16 + 64);
      v76 = v18;
      v77 = *(v12 + v16 + 96);
      v78 = *(v12 + v16 + 112);
      v19 = *(v12 + v16 + 16);
      v71 = *(v12 + v16);
      v72 = v19;
      v20 = *(v12 + v16 + 48);
      v73 = *(v12 + v16 + 32);
      v74 = v20;
      if ((BYTE6(v71) & 1) == 0 && WORD2(v71) == 8)
      {
        break;
      }

      v16 += 120;
      if (!--v17)
      {
        goto LABEL_16;
      }
    }

    v21 = 32;
    while (1)
    {
      v22 = *(v12 + v21 + 16);
      v63 = *(v12 + v21);
      v23 = *(v12 + v21 + 64);
      v24 = *(v12 + v21 + 96);
      v68 = *(v12 + v21 + 80);
      v69 = v24;
      v25 = *(v12 + v21 + 32);
      v26 = *(v12 + v21 + 48);
      v64 = v22;
      v65 = v25;
      v70 = *(v12 + v21 + 112);
      v66 = v26;
      v67 = v23;
      if ((BYTE6(v63) & 1) == 0 && WORD2(v63) == 9)
      {
        break;
      }

      v21 += 120;
      if (!--v15)
      {
        sub_25F7BFBF0(&v71, &v63);

        sub_25F8221DC();
        v48 = sub_25F8221CC();
        v49 = sub_25F82268C();
        if (os_log_type_enabled(v48, v49))
        {
          v61 = a2;
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v63 = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_25F75CA94(0xD000000000000025, 0x800000025F82EF80, &v63);
          _os_log_impl(&dword_25F74E000, v48, v49, "%s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          MEMORY[0x25F8E88D0](v51, -1, -1);
          MEMORY[0x25F8E88D0](v50, -1, -1);

          a2 = v61;
        }

        else
        {
        }

        (*(v5 + 8))(v11, v4);
        goto LABEL_30;
      }
    }

    sub_25F7BFBF0(&v71, v62);
    sub_25F7BFBF0(&v63, v62);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD60);
    v27 = swift_allocObject();
    v28 = v75;
    v29 = v77;
    *(v27 + 112) = v76;
    *(v27 + 128) = v29;
    v30 = v71;
    v31 = v72;
    *(v27 + 16) = xmmword_25F824480;
    *(v27 + 32) = v30;
    v32 = v73;
    v33 = v74;
    *(v27 + 48) = v31;
    *(v27 + 64) = v32;
    *(v27 + 80) = v33;
    *(v27 + 96) = v28;
    v34 = v66;
    *(v27 + 216) = v67;
    v35 = v69;
    *(v27 + 232) = v68;
    *(v27 + 248) = v35;
    *(v27 + 152) = v63;
    v36 = v65;
    *(v27 + 168) = v64;
    *(v27 + 184) = v36;
    *(v27 + 144) = v78;
    *(v27 + 264) = v70;
    *(v27 + 200) = v34;
    sub_25F7BFBF0(&v71, v62);
    sub_25F7BFBF0(&v63, v62);
    result = sub_25F7BE6B0(v27);
    if ((result & 1) == 0)
    {

      sub_25F8221DC();
      v52 = sub_25F8221CC();
      v53 = sub_25F82268C();
      if (os_log_type_enabled(v52, v53))
      {
        v61 = a2;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v62[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_25F75CA94(0xD000000000000037, 0x800000025F82EF40, v62);
        _os_log_impl(&dword_25F74E000, v52, v53, "%s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x25F8E88D0](v55, -1, -1);
        MEMORY[0x25F8E88D0](v54, -1, -1);

        a2 = v61;
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
      sub_25F7BFC70(&v63);
LABEL_30:
      result = sub_25F7BFC70(&v71);
      goto LABEL_31;
    }

    v38 = 0;
    v39 = *(v27 + 16);
    v40 = v39 + 1;
    v41 = 40;
    while (--v40)
    {
      v42 = *(v27 + v41);
      v41 += 120;
      v43 = __CFADD__(v38, v42);
      v38 += v42;
      if (v43)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    if (v39)
    {
      v56 = (v38 >> 3) + 1;
      v57 = *(v27 + 32);
      v58 = *(v27 + 39);

      sub_25F7BFC70(&v71);
      result = sub_25F7BFC70(&v63);
      v59 = DWORD2(v71) >> 3;
      v60 = DWORD2(v63);
      *a2 = v56;
      a2[1] = v57 | (v58 << 8);
      a2[2] = 1;
      a2[3] = v59;
      a2[4] = v59 + 1;
      a2[5] = v60 >> 3;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_16:

    sub_25F8221DC();
    v44 = sub_25F8221CC();
    v45 = sub_25F82268C();
    if (os_log_type_enabled(v44, v45))
    {
      v61 = a2;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v71 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_25F75CA94(0xD000000000000026, 0x800000025F82EFB0, &v71);
      _os_log_impl(&dword_25F74E000, v44, v45, "%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x25F8E88D0](v47, -1, -1);
      MEMORY[0x25F8E88D0](v46, -1, -1);

      a2 = v61;
    }

    else
    {
    }

    result = (*(v5 + 8))(v14, v4);
LABEL_31:
    *a2 = xmmword_25F825A80;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
  }

  return result;
}

uint64_t sub_25F7B950C(int a1)
{
  v3 = sub_25F8221EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = *(v1 + 408);
  v42 = *(v1 + 392);
  v43 = v10;
  v11 = *(v1 + 440);
  v44 = *(v1 + 424);
  v45 = v11;
  v12 = *(v1 + 344);
  v41[2] = *(v1 + 328);
  v41[3] = v12;
  v13 = *(v1 + 376);
  v41[4] = *(v1 + 360);
  v41[5] = v13;
  v14 = *(v1 + 312);
  v41[0] = *(v1 + 296);
  v41[1] = v14;
  result = sub_25F7BE5B8(v41);
  if (result == 1)
  {
    v46 = v3;
    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82EE30);
    MEMORY[0x25F8E7510](0xD000000000000039, 0x800000025F82E740);
    v17 = v40[0];
    v16 = v40[1];
    sub_25F8221DC();

    v18 = sub_25F8221CC();
    v19 = sub_25F82268C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_25F75CA94(v17, v16, v40);
      _os_log_impl(&dword_25F74E000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x25F8E88D0](v21, -1, -1);
      MEMORY[0x25F8E88D0](v20, -1, -1);
    }

    (*(v4 + 8))(v7, v46);

    sub_25F76E244();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    v23 = 5;
LABEL_13:
    *(v22 + 16) = v23;
    return swift_willThrow();
  }

  v24 = BYTE8(v42);
  if (BYTE8(v42) == 3)
  {
    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82EE30);
    MEMORY[0x25F8E7510](0xD000000000000043, 0x800000025F82E870);
    v25 = v40[1];
    v46 = v40[0];
    sub_25F8221DC();

    v26 = sub_25F8221CC();
    v27 = sub_25F82268C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = v3;
      v30 = swift_slowAlloc();
      v40[0] = v30;
      *v28 = 136315138;
      *(v28 + 4) = sub_25F75CA94(v46, v25, v40);
      _os_log_impl(&dword_25F74E000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x25F8E88D0](v30, -1, -1);
      MEMORY[0x25F8E88D0](v28, -1, -1);

      (*(v4 + 8))(v9, v29);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    sub_25F76E244();
    swift_allocError();
    *v22 = 0xD00000000000002ELL;
    *(v22 + 8) = 0x800000025F82EE50;
    v23 = 4;
    goto LABEL_13;
  }

  v31 = v42;
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v32 = HIBYTE(WORD4(v42));
    if (v42)
    {
      v33 = sub_25F82253C();
      *(v33 + 16) = v31;
      bzero((v33 + 32), v31);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    *(v33 + 32) = v32;
    *(v33 + 33) = a1;
    memcpy(v40, v1, sizeof(v40));
    v38 = &type metadata for AppleDisplayHIDDevice.UserAdjustmentInterface.UserAdjustmentCurrentPresetReport;
    v39 = &off_2871C70C0;
    v35 = v31;
    v36 = v24;
    v37 = v32;
    sub_25F7B0528(&v35, v33);

    return __swift_destroy_boxed_opaque_existential_0Tm(&v35);
  }

  return result;
}

_WORD *sub_25F7B9A84(_WORD *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 != 2)
    {
      *result = 0;
      return result;
    }

    v6 = *(a3 + 16);
    v5 = *(a3 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    *result = BYTE6(a4);
    return result;
  }

  LODWORD(v8) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v8 = v8;
LABEL_10:
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v8 >> 16))
    {
      *result = v8;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7B9AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  a4[3] = type metadata accessor for ProDataOnDisk();
  a4[4] = sub_25F7BFB70(&qword_27FDB04C0, type metadata accessor for ProDataOnDisk);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  sub_25F7BF9E4(a1, boxed_opaque_existential_1, type metadata accessor for ProDataOnDisk);
  while (1)
  {
    sub_25F760954(a4, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, AssociatedTypeWitness);
    DynamicType = swift_getDynamicType();
    v10 = AssociatedConformanceWitness;
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
    result = (*(v10 + 40))(DynamicType, v10);
    if (v12)
    {
      if (a3)
      {
        return result;
      }
    }

    else if ((a3 & 1) == 0 && result == a2)
    {
      return result;
    }

    v14 = a4[3];
    v13 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v14);
    v15 = *(v13 + 56);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v19);
    v15(v14, v13);
    if (v4)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a4);
    sub_25F75CF9C(&v19, a4);
  }

  __swift_deallocate_boxed_opaque_existential_1(&v19);
  v23 = v4;
  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD70);
  if (swift_dynamicCast() && (AssociatedTypeWitness & 0xC0) == 0x80 && AssociatedTypeWitness == 128 && !(*(&v19 + 1) | v20 | v19))
  {

    sub_25F763A00();
    swift_allocError();
    *v17 = xmmword_25F824920;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3 & 1 | 0x40;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a4);
}

uint64_t sub_25F7B9DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  a4[3] = type metadata accessor for Preset(0);
  a4[4] = sub_25F7BFB70(&qword_27FDB04E0, type metadata accessor for Preset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  sub_25F7BF9E4(a1, boxed_opaque_existential_1, type metadata accessor for Preset);
  while (1)
  {
    sub_25F760954(a4, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, AssociatedTypeWitness);
    DynamicType = swift_getDynamicType();
    v10 = AssociatedConformanceWitness;
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
    result = (*(v10 + 40))(DynamicType, v10);
    if (v12)
    {
      if (a3)
      {
        return result;
      }
    }

    else if ((a3 & 1) == 0 && result == a2)
    {
      return result;
    }

    v14 = a4[3];
    v13 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v14);
    v15 = *(v13 + 56);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v19);
    v15(v14, v13);
    if (v4)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a4);
    sub_25F75CF9C(&v19, a4);
  }

  __swift_deallocate_boxed_opaque_existential_1(&v19);
  v23 = v4;
  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD70);
  if (swift_dynamicCast() && (AssociatedTypeWitness & 0xC0) == 0x80 && AssociatedTypeWitness == 128 && !(*(&v19 + 1) | v20 | v19))
  {

    sub_25F763A00();
    swift_allocError();
    *v17 = xmmword_25F824920;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3 & 1 | 0x40;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a4);
}

uint64_t sub_25F7BA05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  a4[3] = type metadata accessor for UserAdjustment();
  a4[4] = sub_25F7BFB70(&qword_27FDB04D0, type metadata accessor for UserAdjustment);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  sub_25F7BF9E4(a1, boxed_opaque_existential_1, type metadata accessor for UserAdjustment);
  while (1)
  {
    sub_25F760954(a4, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, AssociatedTypeWitness);
    DynamicType = swift_getDynamicType();
    v10 = AssociatedConformanceWitness;
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
    result = (*(v10 + 40))(DynamicType, v10);
    if (v12)
    {
      if (a3)
      {
        return result;
      }
    }

    else if ((a3 & 1) == 0 && result == a2)
    {
      return result;
    }

    v14 = a4[3];
    v13 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v14);
    v15 = *(v13 + 56);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v19);
    v15(v14, v13);
    if (v4)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a4);
    sub_25F75CF9C(&v19, a4);
  }

  __swift_deallocate_boxed_opaque_existential_1(&v19);
  v23 = v4;
  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD70);
  if (swift_dynamicCast() && (AssociatedTypeWitness & 0xC0) == 0x80 && AssociatedTypeWitness == 128 && !(*(&v19 + 1) | v20 | v19))
  {

    sub_25F763A00();
    swift_allocError();
    *v17 = xmmword_25F824920;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3 & 1 | 0x40;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a4);
}

void *sub_25F7BA310(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 < 1)
  {
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC08);
    v4 = swift_allocObject();
    v5 = _swift_stdlib_malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

uint64_t sub_25F7BA3B0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  memcpy(__dst, v1, sizeof(__dst));
  return v3(__dst);
}

uint64_t sub_25F7BA450(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x25F8E7E60](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25F7BBA90(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25F7BA538(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_25F822DCC();
  v7 = a2 & 1;
  MEMORY[0x25F8E7E80](v7);
  v8 = sub_25F822E0C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_25F7BBBB4(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_25F7BA654(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25F822DCC();
  sub_25F822DEC();
  v6 = sub_25F822E0C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25F7BBE78(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25F7BA74C(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v38 = *a2;
  v39 = v5;
  v7 = *a2;
  v6 = a2[1];
  v40[0] = a2[2];
  *(v40 + 9) = *(a2 + 41);
  v8 = *v2;
  v35 = v7;
  v36 = v6;
  v37[0] = a2[2];
  *(v37 + 9) = *(a2 + 41);
  sub_25F822DCC();
  CustomPresetValidationError.hash(into:)(&v32);
  v9 = sub_25F822E0C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v8 + 48) + (v11 << 6));
      v14 = *(v13 + 41);
      v15 = v13[2];
      v16 = *v13;
      v36 = v13[1];
      v37[0] = v15;
      v35 = v16;
      *(v37 + 9) = v14;
      v29 = *v13;
      v30 = v13[1];
      v31[0] = v13[2];
      *(v31 + 9) = *(v13 + 41);
      sub_25F79AB14(&v35, v27);
      v17 = _s17ProDisplayLibrary27CustomPresetValidationErrorO2eeoiySbAC_ACtFZ_0(&v29, &v38);
      v32 = v29;
      v33 = v30;
      v34[0] = v31[0];
      *(v34 + 9) = *(v31 + 9);
      sub_25F79AB4C(&v32);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v27[0] = v38;
    v27[1] = v39;
    v28[0] = v40[0];
    *(v28 + 9) = *(v40 + 9);
    sub_25F79AB4C(v27);
    v21 = (*(v8 + 48) + (v11 << 6));
    v23 = v21[1];
    v22 = v21[2];
    v24 = *v21;
    *(v31 + 9) = *(v21 + 41);
    v30 = v23;
    v31[0] = v22;
    v29 = v24;
    v25 = v21[1];
    *a1 = *v21;
    a1[1] = v25;
    a1[2] = v21[2];
    *(a1 + 41) = *(v21 + 41);
    sub_25F79AB14(&v29, &v26);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v38;
    v33 = v39;
    v34[0] = v40[0];
    *(v34 + 9) = *(v40 + 9);
    *&v29 = *v3;
    sub_25F79AB14(&v32, &v35);
    sub_25F7BBFC4(&v32, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v29;
    v19 = v39;
    *a1 = v38;
    a1[1] = v19;
    a1[2] = v40[0];
    *(a1 + 41) = *(v40 + 9);
    return 1;
  }
}

uint64_t sub_25F7BA9B4(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](a2);
  v8 = sub_25F822E0C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_25F7BBD08(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25F7BAAD4(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25F822DCC();
  v6 = *(a2 + 16);
  MEMORY[0x25F8E7E80](v6);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;
    do
    {
      ++v8;
      sub_25F822DEC();
      --v7;
    }

    while (v7);
  }

  result = sub_25F822E0C();
  v10 = -1 << *(v5 + 32);
  v11 = result & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(v5 + 48) + 8 * v11);
      if (*(v13 + 16) == v6)
      {
        break;
      }

LABEL_6:
      v11 = (v11 + 1) & v12;
      if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!v6 || v13 == a2)
    {
LABEL_14:

      *a1 = *(*(v5 + 48) + 8 * v11);

      return 0;
    }

    else
    {
      v14 = (v13 + 32);
      v15 = *(a2 + 16);
      v16 = (a2 + 32);
      v17 = v6;
      while (v15)
      {
        if (*v14 != *v16)
        {
          goto LABEL_6;
        }

        --v15;
        ++v14;
        ++v16;
        if (!--v17)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_25F7BC1D0(v19, v11, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
    *a1 = a2;
    return 1;
  }

  return result;
}

uint64_t sub_25F7BAC6C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03D8);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = MEMORY[0x25F8E7E60](*(v4 + 40), v16, 4);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25F7BAE94()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03C0);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_25F822DCC();
      MEMORY[0x25F8E7E80](v16);
      result = sub_25F822E0C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25F7BB0E4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0520);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_25F822DCC();
      sub_25F822DEC();
      result = sub_25F822E0C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25F7BB334()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB04C8);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v18 = (*(v2 + 48) + ((v15 | (v5 << 6)) << 6));
      v19 = v18[1];
      v34 = *v18;
      v35 = v19;
      v21 = *v18;
      v20 = v18[1];
      v36[0] = v18[2];
      *(v36 + 9) = *(v18 + 41);
      v31 = v21;
      v32 = v20;
      v33[0] = v18[2];
      *(v33 + 9) = *(v18 + 41);
      sub_25F822DCC();
      CustomPresetValidationError.hash(into:)(v30);
      result = sub_25F822E0C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + (v12 << 6));
      v14 = v35;
      *v13 = v34;
      v13[1] = v14;
      v13[2] = v36[0];
      *(v13 + 41) = *(v36 + 9);
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v17 = v6[v5];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v9 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero((v2 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25F7BB5D0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_25F8228FC();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      sub_25F822DCC();
      MEMORY[0x25F8E7E80](v18);
      result = sub_25F822E0C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_25F7BB818()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0538);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_25F822DCC();
      MEMORY[0x25F8E7E80](*(v16 + 16));
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v16 + 32;
        do
        {
          ++v18;
          sub_25F822DEC();
          --v17;
        }

        while (v17);
      }

      result = sub_25F822E0C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v2 = v27;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v2 + 32);
    if (v26 >= 64)
    {
      bzero(v6, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v26;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_25F7BBA90(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25F7BAC6C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25F7BC3B0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25F7BCB88();
  }

  v8 = *v3;
  result = MEMORY[0x25F8E7E60](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25F822D1C();
  __break(1u);
  return result;
}

uint64_t sub_25F7BBBB4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25F7BAE94();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25F7BC4F0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25F7BCD7C();
  }

  v8 = *v3;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v4 & 1);
  result = sub_25F822E0C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25F822D1C();
  __break(1u);
  return result;
}

uint64_t sub_25F7BBD08(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25F7BB5D0(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_25F7BC908(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_25F7BD434(v6 + 1, a4);
  }

  v9 = *v4;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](v5);
  result = sub_25F822E0C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25F822D1C();
  __break(1u);
  return result;
}

uint64_t sub_25F7BBE78(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25F7BB0E4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25F7BC630();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25F7BCF9C();
  }

  v8 = *v3;
  sub_25F822DCC();
  sub_25F822DEC();
  result = sub_25F822E0C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25F822D1C();
  __break(1u);
  return result;
}

uint64_t sub_25F7BBFC4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 16);
  v34 = *result;
  v35 = v7;
  v36[0] = *(result + 32);
  *(v36 + 9) = *(result + 41);
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25F7BB334();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25F7BC770();
      goto LABEL_12;
    }

    sub_25F7BD1BC();
  }

  v10 = *v3;
  v11 = v6[1];
  v31 = *v6;
  v32 = v11;
  v33[0] = v6[2];
  *(v33 + 9) = *(v6 + 41);
  sub_25F822DCC();
  CustomPresetValidationError.hash(into:)(v29);
  result = sub_25F822E0C();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + (a2 << 6));
      v15 = *(v14 + 41);
      v16 = v14[2];
      v17 = *v14;
      v32 = v14[1];
      v33[0] = v16;
      v31 = v17;
      *(v33 + 9) = v15;
      v18 = v14[1];
      v26 = *v14;
      v27 = v18;
      v28[0] = v14[2];
      *(v28 + 9) = *(v14 + 41);
      sub_25F79AB14(&v31, v29);
      v19 = _s17ProDisplayLibrary27CustomPresetValidationErrorO2eeoiySbAC_ACtFZ_0(&v26, &v34);
      v29[0] = v26;
      v29[1] = v27;
      v30[0] = v28[0];
      *(v30 + 9) = *(v28 + 9);
      result = sub_25F79AB4C(v29);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v21 = (*(v20 + 48) + (a2 << 6));
  v22 = v35;
  *v21 = v34;
  v21[1] = v22;
  v21[2] = v36[0];
  *(v21 + 41) = *(v36 + 9);
  v23 = *(v20 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v20 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25F822D1C();
  __break(1u);
  return result;
}

uint64_t sub_25F7BC1D0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25F7BB818();
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        result = sub_25F7BCA38();
        a2 = v7;
        goto LABEL_22;
      }

      sub_25F7BD64C();
    }

    v8 = *v3;
    sub_25F822DCC();
    v9 = *(v4 + 16);
    MEMORY[0x25F8E7E80](v9);
    v10 = *(v4 + 16);
    if (v10)
    {
      v11 = v4 + 32;
      do
      {
        ++v11;
        sub_25F822DEC();
        --v10;
      }

      while (v10);
    }

    result = sub_25F822E0C();
    v12 = -1 << *(v8 + 32);
    a2 = result & ~v12;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = *(*(v8 + 48) + 8 * a2);
        if (*(v14 + 16) == v9)
        {
          break;
        }

LABEL_13:
        a2 = (a2 + 1) & v13;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v9 && v14 != v4)
      {
        v15 = (v14 + 32);
        v16 = *(v4 + 16);
        v17 = (v4 + 32);
        v18 = v9;
        while (v16)
        {
          if (*v15 != *v17)
          {
            goto LABEL_13;
          }

          --v16;
          ++v15;
          ++v17;
          if (!--v18)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFE8);
      result = sub_25F822D1C();
      __break(1u);
    }
  }

LABEL_22:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v4;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_25F7BC3B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03D8);
  v2 = *v0;
  v3 = sub_25F8228EC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_25F7BC4F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03C0);
  v2 = *v0;
  v3 = sub_25F8228EC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_25F7BC630()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0520);
  v2 = *v0;
  v3 = sub_25F8228EC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_25F7BC770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB04C8);
  v2 = *v0;
  v3 = sub_25F8228EC();
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v24[9] = *(v18 + 41);
        v23[1] = v20;
        *v24 = v19;
        v23[0] = v21;
        memmove((*(v4 + 48) + v17), v18, 0x39uLL);
        result = sub_25F79AB14(v23, &v22);
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

void *sub_25F7BC908(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_25F8228EC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_25F7BCA38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0538);
  v2 = *v0;
  v3 = sub_25F8228EC();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_25F7BCB88()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03D8);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x25F8E7E60](*(v4 + 40), v15, 4);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25F7BCD7C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03C0);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_25F822DCC();
      MEMORY[0x25F8E7E80](v15);
      result = sub_25F822E0C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25F7BCF9C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0520);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_25F822DCC();
      sub_25F822DEC();
      result = sub_25F822E0C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25F7BD1BC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB04C8);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v19 = (*(v2 + 48) + ((v16 | (v5 << 6)) << 6));
      v20 = *v19;
      v21 = *(v19 + 41);
      v22 = v19[2];
      v37 = v19[1];
      v38[0] = v22;
      *(v38 + 9) = v21;
      v36 = v20;
      v23 = v19[1];
      v33 = *v19;
      v34 = v23;
      v35[0] = v19[2];
      *(v35 + 9) = *(v19 + 41);
      sub_25F822DCC();
      sub_25F79AB14(&v36, v31);
      CustomPresetValidationError.hash(into:)(v32);
      result = sub_25F822E0C();
      v24 = -1 << *(v4 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v10 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v10 + 8 * v26);
          if (v30 != -1)
          {
            v11 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v25) & ~*(v10 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + (v11 << 6));
      v13 = v36;
      v14 = v37;
      v15 = v38[0];
      *(v12 + 41) = *(v38 + 9);
      v12[1] = v14;
      v12[2] = v15;
      *v12 = v13;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v18 = *(v2 + 56 + 8 * v5);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v8 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25F7BD434(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_25F8228FC();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      sub_25F822DCC();
      MEMORY[0x25F8E7E80](v17);
      result = sub_25F822E0C();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_25F7BD64C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0538);
  result = sub_25F8228FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_25F822DCC();
      MEMORY[0x25F8E7E80](*(v16 + 16));
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v16 + 32;
        do
        {
          ++v18;
          sub_25F822DEC();
          --v17;
        }

        while (v17);
      }

      result = sub_25F822E0C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v2 = v26;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t *sub_25F7BD8C4(uint64_t *result, int a2)
{
  v3 = result;
  v22 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_25F76D178(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_25F824200;
      sub_25F76D178(0, 0xC000000000000000);
      result = sub_25F7BDB2C(&__b, a2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      sub_25F76D178(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_25F76D178(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_25F824200;
  sub_25F76D178(0, 0xC000000000000000);
  sub_25F821F5C();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_25F821E4C();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_25F821E7C();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_25F821E6C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, a2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_25F7BDB2C(int *a1, int a2)
{
  result = sub_25F821F7C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_25F821E4C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_25F821E7C();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_25F821E6C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_25F7BDBD4(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v10 = a3;
      *&v10[8] = a4;
      v10[10] = BYTE2(a4);
      v10[11] = BYTE3(a4);
      v10[12] = BYTE4(a4);
      v10[13] = BYTE5(a4);
      result = (a1)(&v11, v10, BYTE6(a4));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_25F7BECB0(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v10, 0, sizeof(v10));
  result = (a1)(&v11, v10, 0);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t sub_25F7BDD28(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

uint64_t sub_25F7BDD6C()
{
  v13 = *MEMORY[0x277D85DE8];
  existing = 0;
  v0 = IOServiceMatching("IOHIDDevice");
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F824220;
  *(inited + 32) = 0x7355656369766544;
  v3 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xEF65676150656761;
  *(inited + 48) = 65280;
  *(inited + 72) = v3;
  *(inited + 80) = 0x7355656369766544;
  *(inited + 88) = 0xEB00000000656761;
  *(inited + 96) = 2;
  *(inited + 120) = v3;
  *(inited + 128) = 0x4449726F646E6556;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 168) = MEMORY[0x277D84CC0];
  *(inited + 144) = 1452;
  v4 = sub_25F7C9DD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFF38);
  swift_arrayDestroy();
  sub_25F7B15F8(v4);

  v5 = sub_25F82228C();

  [(__CFDictionary *)v1 addEntriesFromDictionary:v5];

  v6 = *MEMORY[0x277CD2890];
  v7 = v1;
  MatchingServices = IOServiceGetMatchingServices(v6, v7, &existing);
  if (MatchingServices)
  {
    v9 = MatchingServices;
    sub_25F76E244();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v9 = existing;
  }

  return v9;
}

double sub_25F7BDF9C(_OWORD *a1)
{
  result = 0.0;
  a1[27] = 0u;
  a1[28] = 0u;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_25F7BDFE0(int a1, int a2, io_iterator_t iterator)
{
  v3 = iterator;
  v4 = IOIteratorNext(iterator);
  if (!v4)
  {
LABEL_14:
    v14 = 1;
    return v4 | (v14 << 32);
  }

  v5 = *MEMORY[0x277CBECE8];
  v16 = v3;
  while (1)
  {
    v6 = sub_25F82235C();
    v7 = IORegistryEntrySearchCFProperty(v4, "IOService", v6, v5, 3u);

    if (!v7 || (swift_dynamicCast() & 1) == 0)
    {
      sub_25F8223FC();
LABEL_4:

      goto LABEL_5;
    }

    v8 = sub_25F8223FC();
    v10 = v9;

    v11 = sub_25F8223FC();
    if (!v10)
    {
      v3 = v16;
      goto LABEL_4;
    }

    if (v8 == v11 && v10 == v12)
    {
      break;
    }

    v13 = sub_25F822CBC();

    v3 = v16;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_5:
    v4 = IOIteratorNext(v3);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  v14 = 0;
  return v4 | (v14 << 32);
}

void _s17ProDisplayLibrary05AppleB9HIDDeviceV8elements2ofSayAA10HIDElementVGSo14IOHIDDeviceRefa_tFZ_0(__IOHIDDevice *a1)
{
  v2 = sub_25F8221EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = IOHIDDeviceCopyMatchingElements(a1, 0, 0);
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v7);
    if ((Count & 0x8000000000000000) == 0)
    {
      v9 = Count;
      if (!Count)
      {
        goto LABEL_23;
      }

      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        v32 = v11;
        v12 = v10;
        while (1)
        {
          if (v12 >= v9)
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_25;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v7, v12);
          if (!ValueAtIndex)
          {
            goto LABEL_27;
          }

          v14 = ValueAtIndex;
          sub_25F7F3E04(v14, &v33);
          v40[5] = v38;
          v40[6] = *v39;
          v41 = v39[16];
          v40[0] = v33;
          v40[1] = v34;
          v40[2] = v35;
          v40[3] = v36;
          v40[4] = v37;
          v46 = v36;
          v47 = v37;
          v48 = v38;
          v44 = v34;
          v45 = v35;
          v15 = *(&v38 + 1);
          v16 = v39[0];
          v42 = *&v39[1];
          v43 = v33;
          if (*(&v38 + 1))
          {
            break;
          }

LABEL_7:
          ++v12;
          if (v10 == v9)
          {
            goto LABEL_23;
          }
        }

        if (v39[0])
        {
          break;
        }

        v17 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_25F75BC28(0, *(v17 + 2) + 1, 1, v17);
        }

        v18 = v17;
        v19 = *(v17 + 2);
        v32 = v18;
        v20 = *(v18 + 3);
        v31 = v19 + 1;
        if (v19 >= v20 >> 1)
        {
          v32 = sub_25F75BC28((v20 > 1), v19 + 1, 1, v32);
        }

        v11 = v32;
        *(v32 + 2) = v31;
        v21 = &v11[120 * v19];
        v22 = v44;
        *(v21 + 2) = v43;
        *(v21 + 3) = v22;
        v23 = v45;
        v24 = v47;
        v25 = v48;
        *(v21 + 5) = v46;
        *(v21 + 6) = v24;
        *(v21 + 4) = v23;
        *(v21 + 14) = v25;
        *(v21 + 15) = v15;
        v21[128] = v16;
        *(v21 + 129) = v42;
        if (v10 == v9)
        {
LABEL_23:

          return;
        }
      }

      sub_25F760F44(v40, &qword_27FDB0528);
      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    sub_25F8221DC();
    v26 = sub_25F8221CC();
    v27 = sub_25F82268C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v40[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_25F75CA94(0xD000000000000048, 0x800000025F82F640, v40);
      _os_log_impl(&dword_25F74E000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x25F8E88D0](v29, -1, -1);
      MEMORY[0x25F8E88D0](v28, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_25F7BE5B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  v3 = v2 - 3;
  if (v1 >= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25F7BE5D8()
{
  result = qword_27FDB0450;
  if (!qword_27FDB0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0450);
  }

  return result;
}

unint64_t sub_25F7BE63C()
{
  result = qword_27FDB0468;
  if (!qword_27FDB0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0468);
  }

  return result;
}

uint64_t sub_25F7BE6B0(uint64_t a1)
{
  v2 = sub_25F8221EC();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v43 = MEMORY[0x277D84F90];
    sub_25F817CA8(0, v8, 0);
    v9 = v43;
    v10 = (a1 + 39);
    v11 = *(v43 + 16);
    v12 = v8;
    do
    {
      v14 = *v10;
      v10 += 120;
      v13 = v14;
      v43 = v9;
      v15 = *(v9 + 24);
      if (v11 >= v15 >> 1)
      {
        sub_25F817CA8((v15 > 1), v11 + 1, 1);
        v9 = v43;
      }

      *(v9 + 16) = v11 + 1;
      *(v9 + v11++ + 32) = v13;
      --v12;
    }

    while (v12);
  }

  v16 = sub_25F817ED8(v9);

  v17 = MEMORY[0x277D84F90];
  if (v8)
  {
    v43 = MEMORY[0x277D84F90];
    sub_25F817C88(0, v8, 0);
    v17 = v43;
    v18 = (a1 + 32);
    v19 = *(v43 + 16);
    do
    {
      v21 = *v18;
      v18 += 120;
      v20 = v21;
      v43 = v17;
      v22 = *(v17 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_25F817C88((v22 > 1), v19 + 1, 1);
        v17 = v43;
      }

      *(v17 + 16) = v19 + 1;
      *(v17 + v19++ + 32) = v20;
      --v8;
    }

    while (v8);
  }

  v23 = sub_25F817F4C(v17);

  v24 = *(v16 + 16);

  if (v24 == 1)
  {
    v25 = *(v23 + 16);

    if (v25 == 1)
    {
      return 1;
    }

    v43 = 0;
    v44 = 0xE000000000000000;
    sub_25F82292C();

    v43 = 0xD000000000000027;
    v44 = 0x800000025F82F010;
    v34 = MEMORY[0x25F8E75C0](a1, &type metadata for HIDElement);
    MEMORY[0x25F8E7510](v34);

    v36 = v43;
    v35 = v44;
    sub_25F8221DC();

    v37 = sub_25F8221CC();
    v38 = sub_25F82268C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_25F75CA94(v36, v35, &v43);
      _os_log_impl(&dword_25F74E000, v37, v38, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x25F8E88D0](v40, -1, -1);
      MEMORY[0x25F8E88D0](v39, -1, -1);
    }

    (*(v41 + 8))(v5, v42);
  }

  else
  {

    v43 = 0;
    v44 = 0xE000000000000000;
    sub_25F82292C();

    v43 = 0xD000000000000025;
    v44 = 0x800000025F82EFE0;
    v27 = MEMORY[0x25F8E75C0](a1, &type metadata for HIDElement);
    MEMORY[0x25F8E7510](v27);

    v29 = v43;
    v28 = v44;
    sub_25F8221DC();

    v30 = sub_25F8221CC();
    v31 = sub_25F82268C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_25F75CA94(v29, v28, &v43);
      _os_log_impl(&dword_25F74E000, v30, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x25F8E88D0](v33, -1, -1);
      MEMORY[0x25F8E88D0](v32, -1, -1);
    }

    (*(v41 + 8))(v7, v42);
  }

  return 0;
}

char *sub_25F7BEBF8(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = sub_25F75CED4((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = memcpy(result + 32, &v6[a2], v4);
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 2);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_25F7BECB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_25F821E4C();
  v8 = result;
  if (result)
  {
    result = sub_25F821E7C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_25F821E6C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_25F7BDD28(v8, v14, a4) & 1;
}

char *sub_25F7BED58(char *result, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_14;
  }

  if (a6 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (&a5[*v6 + 32] != (a2 + a3))
  {
    return sub_25F76DF18(a5, a6, result, a2, a3, a4);
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_16;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    return sub_25F76DF18(a5, a6, result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_25F7BEDDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F7BEE3C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFE8);
  v10 = sub_25F76100C(&qword_27FDB04D8, &qword_27FDAFFE8);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25F820464(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

unint64_t sub_25F7BEF0C()
{
  result = qword_27FDB0470;
  if (!qword_27FDB0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0470);
  }

  return result;
}

unint64_t sub_25F7BEF70()
{
  result = qword_27FDB0478;
  if (!qword_27FDB0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0478);
  }

  return result;
}

unint64_t sub_25F7BEFE4()
{
  result = qword_27FDB0480;
  if (!qword_27FDB0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0480);
  }

  return result;
}

uint64_t sub_25F7BF040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
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

uint64_t sub_25F7BF088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
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
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
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
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}