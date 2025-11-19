void sub_1E3B7F7FC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_17;
  }

  v3 = v2;
  OUTLINED_FUNCTION_8();
  v6 += 51;
  v7 = *v6;
  v8 = (*v6)();
  if (v8)
  {
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);

    if (v10 == a1 && v9 == a2)
    {
      OUTLINED_FUNCTION_154_3();

      return;
    }

    OUTLINED_FUNCTION_16_0();
    v12 = sub_1E42079A4();

    if (v12)
    {
LABEL_17:
      OUTLINED_FUNCTION_154_3();
      return;
    }
  }

  OUTLINED_FUNCTION_47_0();
  v14 = (*(v13 + 456))();
  sub_1E32AE9B0(v14);
  OUTLINED_FUNCTION_50();

  if (!v3)
  {
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_154_3();

    __asm { BRAA            X1, X16 }
  }

  v16 = (v7)(v15);
  OUTLINED_FUNCTION_47_0();
  v18 = (*(v17 + 824))(a1, a2);
  v19 = (*(*v3 + 416))(v18);
  if (v16)
  {
    OUTLINED_FUNCTION_111();
    v21 = *(v20 + 448);

    v21(v22);
  }

  v23 = (v7)(v19);
  if (v23)
  {
    OUTLINED_FUNCTION_26_0();
    (*(v24 + 440))();
  }

  v25 = (v7)(v23);
  if (v25)
  {
    v27 = *(v25 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v26 = *(v25 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    v35 = v27;
    v36 = v26;

    v28 = OUTLINED_FUNCTION_24_4();
    MEMORY[0x1E69109E0](v28);
    OUTLINED_FUNCTION_5_0();
    type metadata accessor for LibMenuItem();

    sub_1E3CA4D00();

    if (v34[0])
    {

      v34[0] = v35;
      v34[1] = v36;
      OUTLINED_FUNCTION_11_3();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341D0);
      sub_1E3CA4F4C(v34, v29);
      swift_endAccess();
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_154_3();
}

void sub_1E3B7FBC0()
{
  OUTLINED_FUNCTION_31_1();
  v78 = v1;
  OUTLINED_FUNCTION_9_5();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 libConfig];

  v11 = [v10 collectionItemLimit];
  v12 = *(v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
  v13 = v0[9];
  v14 = v0[10];
  v79 = *(v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  v80 = v12;

  v71 = v14;
  v72 = v13;
  MEMORY[0x1E69109E0](v13, v14);
  v16 = v79;
  v15 = v80;
  v77 = v11;
  v74 = v4;
  v75 = v2;
  v73 = v8;
  if (v11 < 1)
  {
LABEL_51:
    v56 = sub_1E41A3110();
    (*(v4 + 16))(v8, v56, v2);

    v57 = sub_1E41FFC94();
    v58 = sub_1E4206814();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = v16;
      v60 = OUTLINED_FUNCTION_49_0();
      v83 = OUTLINED_FUNCTION_72_0();
      *v60 = 136315394;
      *(v60 + 4) = sub_1E3270FC8(v72, v71, &v83);
      *(v60 + 12) = 2080;
      v61 = (*(*v0 + 312))();
      if (v61)
      {
        v62 = sub_1E32AE9B0(v61);

        v63 = MEMORY[0x1E69E6530];
      }

      else
      {
        v62 = 0;
        v63 = 0;
        v80 = 0;
        v81 = 0;
      }

      v79 = v62;
      v82 = v63;
      v64 = sub_1E3294FA4(&v79);
      sub_1E3270FC8(v64, v65, &v83);
      OUTLINED_FUNCTION_50();

      *(v60 + 14) = v62;
      _os_log_impl(&dword_1E323F000, v57, v58, "LibDataSourceManager:: cache %s count %s", v60, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v74 + 8))(v73, v75);
      v16 = v59;
    }

    else
    {

      (*(v4 + 8))(v8, v2);
    }

    v84 = v15;
    v85 = v0;
    v83 = v16;
    OUTLINED_FUNCTION_11_3();

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341D0);
    sub_1E3CA4D10();
    v83 = v16;
    v84 = v15;
    sub_1E3CA4F4C(&v83, v66);
    swift_endAccess();

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    v17 = v78 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_menuDataCache;
    OUTLINED_FUNCTION_5_0();
    v18 = type metadata accessor for LibMenuItem();

    sub_1E3CA4D00();

    v69 = v80;
    v68 = v79;
    if (v83)
    {

      v84 = v80;
      v85 = 0;
      v83 = v79;
      OUTLINED_FUNCTION_11_3();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341D0);
      sub_1E3CA4D10();
      swift_endAccess();
    }

    OUTLINED_FUNCTION_111();
    v70 = v0;
    v76 = (*(v19 + 224))();

    v20 = OUTLINED_FUNCTION_97_1();
    v67 = v18;
    v24 = sub_1E3CA4CF0(v20, v21, v22, v18, v23);

    v25 = 1 << *(v24 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v24 + 64);
    v28 = (v25 + 63) >> 6;

    v29 = 0;
    v30 = 0;
    do
    {
      if (!v27)
      {
        while (1)
        {
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v31 >= v28)
          {
            goto LABEL_15;
          }

          v27 = *(v24 + 64 + 8 * v31);
          ++v29;
          if (v27)
          {
            v29 = v31;
            goto LABEL_12;
          }
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_12:
      v27 &= v27 - 1;
      OUTLINED_FUNCTION_8();
      v33 = *(v32 + 224);

      v35 = v33(v34);

      v36 = __OFADD__(v30, v35);
      v30 += v35;
    }

    while (!v36);
    __break(1u);
LABEL_15:

    v37 = v30 + v76;
    if (!__OFADD__(v30, v76))
    {
      v15 = v80;
      v4 = v74;
      v2 = v75;
      v8 = v73;
      v16 = v79;
      if (v77 >= v37)
      {
        goto LABEL_51;
      }

      v38 = OUTLINED_FUNCTION_39_3();
      v42 = sub_1E3CA4CF0(v38, v39, v40, v67, v41);

      v79 = sub_1E3B892B8(v42);
      sub_1E3B89374(&v79, v0);

      v17 = v79;
      v43 = sub_1E32AE9B0(v79);
      v44 = v17 & 0xC000000000000001;

      v45 = 0;
      v46 = 0;
      while (v43 != v45)
      {
        if (v44)
        {
          MEMORY[0x1E6911E60](v45, v17);
        }

        else
        {
          if (v45 >= *(v17 + 16))
          {
            goto LABEL_63;
          }
        }

        if (__OFADD__(v45, 1))
        {
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_8();
        v48 = (*(v47 + 224))();

        ++v45;
        v36 = __OFADD__(v46, v48);
        v46 += v48;
        if (v36)
        {
          goto LABEL_64;
        }
      }

LABEL_49:
      v55 = sub_1E32AE9B0(v17);

      if (!v55)
      {
        goto LABEL_50;
      }

      if (!__OFADD__(v46, v76))
      {
        if (v77 >= v46 + v76)
        {
LABEL_50:

          v15 = v69;
          v0 = v70;
          v4 = v74;
          v2 = v75;
          v8 = v73;
          v16 = v68;
          goto LABEL_51;
        }

        if (sub_1E32AE9B0(v17))
        {
          if (sub_1E32AE9B0(v17))
          {
            if ((v17 & 0xC000000000000001) == 0)
            {
              if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {

                goto LABEL_34;
              }

LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

            MEMORY[0x1E6911E60](0, v17);
LABEL_34:
            if (sub_1E32AE9B0(v17))
            {
              if (sub_1E32AE9B0(v17) < 1)
              {
                goto LABEL_69;
              }

              v49 = sub_1E32AE9B0(v17);
              v36 = __OFSUB__(v49, 1);
              v50 = v49 - 1;
              if (!v36)
              {
                sub_1E3797CDC(v50);
                sub_1E3AD8CE8(0, 1, 0);
                v17 = v79;
                sub_1E3B846CC();
                v51 = sub_1E32AE9B0(v17);

                v52 = 0;
                v46 = 0;
                while (1)
                {
                  if (v51 == v52)
                  {

                    goto LABEL_49;
                  }

                  if ((v17 & 0xC000000000000001) != 0)
                  {
                    v54 = OUTLINED_FUNCTION_8_6();
                    MEMORY[0x1E6911E60](v54);
                  }

                  else
                  {
                    if (v52 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_59;
                    }
                  }

                  if (__OFADD__(v52, 1))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_8();
                  (*(v53 + 224))();
                  OUTLINED_FUNCTION_12_1();

                  ++v52;
                  v36 = __OFADD__(v46, v44);
                  v46 += v44;
                  if (v36)
                  {
                    goto LABEL_60;
                  }
                }

                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

LABEL_70:
              __break(1u);
            }

            __break(1u);
            goto LABEL_72;
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

LABEL_72:
    __break(1u);

    __break(1u);
  }
}

void sub_1E3B804B0()
{
  OUTLINED_FUNCTION_8();
  (*(v4 + 672))();
  OUTLINED_FUNCTION_148_5();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v0 + 16))
    {
      break;
    }

    v5 = sub_1E327F454(v1, v33);
    v13 = OUTLINED_FUNCTION_136_2(v5, v6, v7, v8, v9, v10, v11, v12, v24, v26, v28, v29, v30, v31, v32, v33[0]);
    sub_1E37DADF4(v13, v14);
    v15 = OUTLINED_FUNCTION_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15);
    OUTLINED_FUNCTION_11_14();
    v16 = type metadata accessor for LibLocalSource();
    OUTLINED_FUNCTION_34_40(v16, v17, v18, v19, v20, v21, v22, v23, v25, v27);
    if (swift_dynamicCast())
    {

      return;
    }

    ++v2;
    v1 += 40;
  }

  __break(1u);
}

void sub_1E3B805A8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_1E32AE9B0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1E3B8069C(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 672))();
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v6 == v5)
    {
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_1E327F454(i, &v43);
    sub_1E327F454(&v43, v41);
    v8 = OUTLINED_FUNCTION_24_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8);
    v9 = type metadata accessor for LibLocalSource();
    OUTLINED_FUNCTION_86(v9, v10, v11, v12, v13, v14, v15, v16, v40);
    if (swift_dynamicCast())
    {

      v17 = sub_1E37DADF4(&v43, v42);
      v25 = OUTLINED_FUNCTION_131_7(v17, v18, v19, v20, v21, v22, v23, v24, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v42[0]);
      sub_1E37DADF4(v25, v26);
      v27 = *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v28 = *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
      __swift_project_boxed_opaque_existential_1(&v43, v44);
      OUTLINED_FUNCTION_33();
      v29 = OUTLINED_FUNCTION_146();
      if (v27 == v30(v29) && v28 == v31)
      {
      }

      else
      {
        OUTLINED_FUNCTION_75();
        v33 = sub_1E42079A4();

        if ((v33 & 1) == 0)
        {
          return __swift_destroy_boxed_opaque_existential_1(&v43);
        }
      }

      OUTLINED_FUNCTION_111();
      v35 = (*(v34 + 408))();
      if (!v35 || (v42[0] = v35, v41[0] = a1, type metadata accessor for LibMenuItem(), sub_1E3B8B148(&qword_1EE286128, type metadata accessor for LibMenuItem), v36 = sub_1E4205E84(), , (v36 & 1) == 0))
      {
        OUTLINED_FUNCTION_111();
        v38 = *(v37 + 416);

        v38(v39);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v43);
    }

    ++v5;
    result = __swift_destroy_boxed_opaque_existential_1(&v43);
  }

  __break(1u);
  return result;
}

void sub_1E3B80920()
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 672))();
  OUTLINED_FUNCTION_29_48();
  for (i = v3 + 32; ; i += 40)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_9();
    if (v5)
    {
      __break(1u);
      return;
    }

    sub_1E327F454(i, v34);
    sub_1E327F454(v34, &v29);
    v6 = OUTLINED_FUNCTION_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6);
    OUTLINED_FUNCTION_11_14();
    type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_84_10())
    {
      break;
    }

    ++v0;
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v15 = OUTLINED_FUNCTION_131_7(v7, v8, v9, v10, v11, v12, v13, v14, v27, v29, v30, v31, v32, v33, v34[0]);
  v17 = sub_1E37DADF4(v15, v16);
  OUTLINED_FUNCTION_131_7(v17, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31, v32, v33, v34[0]);
  if (OUTLINED_FUNCTION_84_10())
  {
    v25 = *v34;
    OUTLINED_FUNCTION_21();
    (*(v26 + 664))();
  }
}

uint64_t sub_1E3B80A8C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 672))();
  sub_1E37D9AD0(v1, &v7);

  if (v8)
  {
    sub_1E37DADF4(&v7, v9);
    v2 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v3 = OUTLINED_FUNCTION_50();
    v5 = v4(v3, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1E325F7A8(&v7, &unk_1ECF2A740);
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1E3B80B64()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v9 = sub_1E41A3110();
  (*(v7 + 16))(v1, v9, v5);
  sub_1E327F454(v4, v41);
  sub_1E327F454(v4, v40);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v39 = v5;
    v12 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v12 = 136315394;
    v14 = v42;
    v13 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    OUTLINED_FUNCTION_33();
    v16 = v15(v14, v13);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v17 = OUTLINED_FUNCTION_146_0();
    sub_1E3270FC8(v17, v18, v19);
    OUTLINED_FUNCTION_10_23();

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v20 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    v21 = OUTLINED_FUNCTION_10_23();
    v23 = v22(v21, v20);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v24 = OUTLINED_FUNCTION_146_0();
    sub_1E3270FC8(v24, v25, v26);
    OUTLINED_FUNCTION_10_23();

    *(v12 + 14) = v23;
    OUTLINED_FUNCTION_156_5(&dword_1E323F000, v27, v28, "LibDataSourceManager:: did select source %s # name %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    (*(v7 + 8))(v1, v39);
  }

  else
  {

    (*(v7 + 8))(v1, v5);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8);
  v29 = OUTLINED_FUNCTION_26_11();
  *(v29 + 16) = xmmword_1E4297BE0;
  sub_1E327F454(v4, v29 + 32);
  v30 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
  OUTLINED_FUNCTION_3_0();
  *(v2 + v30) = v29;

  sub_1E3B7CC30();
  v31 = OUTLINED_FUNCTION_34();
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v33 = OUTLINED_FUNCTION_75();
  v34(v33);
  sub_1E3B80F1C();

  OUTLINED_FUNCTION_9_2();
  v36 = (*(v35 + 456))();
  if (!sub_1E32AE9B0(v36))
  {

    v37 = 0;
    goto LABEL_10;
  }

  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1E6911E60](0, v36);
    goto LABEL_8;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v36 + 32);

LABEL_8:

LABEL_10:
    OUTLINED_FUNCTION_111();
    (*(v38 + 416))(v37);
    sub_1E3B7E10C();
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E3B80F1C()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v8 = v7;
  v238 = 0;
  v243 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v240 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17_3(&v231 - v12);
  v251 = MEMORY[0x1E69E7CC0];
  v13 = *(v0->Kind + 456);
  v241 = v0->Kind + 456;
  v239 = v13;
  v14 = v13();
  v15 = sub_1E32AE9B0(v14);
  v242 = v0;
  v244 = v8;
  v234 = v6;
  if (!v15)
  {

    v251 = v8;
    OUTLINED_FUNCTION_8();
    v23 = *(v22 + 696);

    v25 = v23(v24);
    OUTLINED_FUNCTION_29_48();
    i = &v26[2];
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_96_9();
      if (v20)
      {
        goto LABEL_415;
      }

      sub_1E327F454(i, v250);
      sub_1E327F454(v250, v249);
      v27 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27);
      v2 = type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_73_12())
      {

        v54 = OUTLINED_FUNCTION_48_10();
        sub_1E37DADF4(v54, v55);
        OUTLINED_FUNCTION_48_10();
        if (OUTLINED_FUNCTION_73_12())
        {
          v56 = *((*MEMORY[0x1E69E7D40] & *v250[0]) + 0x278);
          v57 = (*MEMORY[0x1E69E7D40] & *v250[0]) + 632;
          i = v250[0];
          v25 = v56();

          if (v25)
          {
            v245 = v25;
            v246 = i;
            v58 = sub_1E32AE9B0(v8);
            v3 = 0;
            v59 = v8 & 0xC000000000000001;
            v25 = v8 & 0xFFFFFFFFFFFFFF8;
            v2 = &type metadata for LibMenuType;
            while (1)
            {
              if (v58 == v3)
              {
                v25 = v245;
                OUTLINED_FUNCTION_111();
                v230 = (*(v229 + 264))(1);
                i = &v251;
                MEMORY[0x1E6910BF0](v230);
                OUTLINED_FUNCTION_8_94();
                if (v20)
                {
                  OUTLINED_FUNCTION_7_14();
                }

                OUTLINED_FUNCTION_13_8();
                sub_1E4206324();
                v36 = v251;

                goto LABEL_81;
              }

              if (v59)
              {
                OUTLINED_FUNCTION_168_3();
                v60 = v63;
              }

              else
              {
                OUTLINED_FUNCTION_96_9();
                Kind = v244;
                if (v20)
                {
                  goto LABEL_441;
                }

                v60 = *(&v244[2].Kind + v3);
              }

              if (__OFADD__(v3, 1))
              {
                goto LABEL_440;
              }

              LOBYTE(v249[0]) = *(v60 + 32);
              LOBYTE(v248) = 10;
              sub_1E37D4BA4();
              OUTLINED_FUNCTION_18_64();
              OUTLINED_FUNCTION_8_6();
              sub_1E4206254();
              OUTLINED_FUNCTION_39_31();
              OUTLINED_FUNCTION_8_6();
              sub_1E4206254();
              OUTLINED_FUNCTION_5_123();
              if (v34 && v57 == i)
              {
                break;
              }

              v62 = OUTLINED_FUNCTION_9_6();

              ++v3;
              if (v62)
              {
                goto LABEL_404;
              }
            }

LABEL_404:

            v36 = v244;
LABEL_81:
            OUTLINED_FUNCTION_22_56();
            goto LABEL_82;
          }
        }

LABEL_80:
        v36 = v8;
        goto LABEL_81;
      }

      ++v3;
      __swift_destroy_boxed_opaque_existential_1(v250);
      i += 40;
    }

    goto LABEL_80;
  }

  v246 = v14;
  OUTLINED_FUNCTION_8();
  (*(v16 + 696))();
  OUTLINED_FUNCTION_29_48();
  for (i = &v17[2]; ; i += 40)
  {
    if (v4 == v3)
    {

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_96_9();
    if (v20)
    {
      goto LABEL_411;
    }

    sub_1E327F454(i, v250);
    sub_1E327F454(v250, v249);
    v21 = OUTLINED_FUNCTION_75();
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v21);
    v2 = type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_73_12())
    {
      break;
    }

    ++v3;
    __swift_destroy_boxed_opaque_existential_1(v250);
  }

  v28 = OUTLINED_FUNCTION_48_10();
  sub_1E37DADF4(v28, v29);
  OUTLINED_FUNCTION_48_10();
  if (OUTLINED_FUNCTION_73_12())
  {
    v30 = *((*MEMORY[0x1E69E7D40] & *v250[0]) + 0x278);
    v1 = ((*MEMORY[0x1E69E7D40] & *v250[0]) + 632);
    i = v250[0];
    v235 = v30();
    v233 = i;

    goto LABEL_16;
  }

LABEL_15:
  v235 = 0;
  v233 = 0;
LABEL_16:
  v31 = sub_1E32AE9B0(v8);
  v32 = 0;
  v33 = v8 & 0xC000000000000001;
  v245 = v8 & 0xFFFFFFFFFFFFFF8;
  v2 = &type metadata for LibMenuType;
  while (v31 != v32)
  {
    if (v33)
    {
      OUTLINED_FUNCTION_168_3();
      v3 = v35;
    }

    else
    {
      Kind = *(v245 + 16);
      if (v32 >= Kind)
      {
        goto LABEL_413;
      }

      v3 = *(&v244[2].Kind + v32);
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_412;
    }

    LOBYTE(v249[0]) = *(v3 + 32);
    LOBYTE(v248) = 10;
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_18_64();
    OUTLINED_FUNCTION_8_6();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_31();
    OUTLINED_FUNCTION_8_6();
    sub_1E4206254();
    OUTLINED_FUNCTION_5_123();
    v34 = v34 && v1 == i;
    if (v34)
    {

LABEL_32:
      HIDWORD(v231) = 1;
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_140_7();

    ++v32;
    if (v4)
    {
      goto LABEL_32;
    }
  }

  HIDWORD(v231) = v235 != 0;
  if (!v31)
  {
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_58;
  }

LABEL_33:
  v37 = 0;
  v38 = 0;
  v3 = &type metadata for LibMenuType;
LABEL_34:
  LODWORD(v237) = v37;
  v39 = v38;
  do
  {
    if (v33)
    {
      OUTLINED_FUNCTION_168_3();
      v41 = v40;
    }

    else
    {
      Kind = *(v245 + 16);
      if (v39 >= Kind)
      {
        goto LABEL_414;
      }

      v41 = *(&v244[2].Kind + v39);
    }

    v38 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_408;
    }

    sub_1E3B85708(v41, v246);
    if (v42)
    {
      v2 = v42;
      OUTLINED_FUNCTION_111();
      (*(v43 + 256))();
      OUTLINED_FUNCTION_30_1();
      (*(v44 + 264))(v45 & 1);

      i = &v251;
      MEMORY[0x1E6910BF0](v46);
      OUTLINED_FUNCTION_8_94();
      if (v20)
      {
        OUTLINED_FUNCTION_7_14();
      }

      sub_1E4206324();
    }

    else
    {

      i = &v251;
      MEMORY[0x1E6910BF0](v47);
      OUTLINED_FUNCTION_8_94();
      if (v20)
      {
        OUTLINED_FUNCTION_7_14();
      }

      OUTLINED_FUNCTION_13_8();
      sub_1E4206324();
    }

    v36 = v251;
    LOBYTE(v249[0]) = *(v41 + 32);
    LOBYTE(v248) = 10;
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_18_64();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_31();
    sub_1E4206254();
    OUTLINED_FUNCTION_5_123();
    if (v34 && v1 == &v251)
    {

LABEL_55:
      v37 = 1;
      if (v38 == v31)
      {
        goto LABEL_62;
      }

      goto LABEL_34;
    }

    v2 = OUTLINED_FUNCTION_9_6();

    if (v2)
    {
      goto LABEL_55;
    }

    ++v39;
  }

  while (v38 != v31);
  if (v237)
  {
    goto LABEL_62;
  }

LABEL_58:
  if (!HIDWORD(v231) || !v235)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_12_6();
  v50 = *(v49 + 264);

  v51 = v50(1);
  i = &v251;
  MEMORY[0x1E6910BF0](v51);
  Kind = *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= Kind >> 1)
  {
    goto LABEL_446;
  }

LABEL_61:
  OUTLINED_FUNCTION_114_0();
  sub_1E4206324();
  v36 = v251;
LABEL_62:
  v52 = v238;
  v25 = sub_1E3B7F3D0(v246, &v251);
  v238 = v52;
  OUTLINED_FUNCTION_22_56();
  sub_1E3B847F8(v53);

LABEL_82:
  OUTLINED_FUNCTION_8();
  v64 += 87;
  v65 = *v64;
  v246 = v64;
  v65();
  OUTLINED_FUNCTION_148_5();
  v66 = &unk_1E429E310;
  while (1)
  {
    if (v3 == v2)
    {

LABEL_94:
      v2 = v36;
      goto LABEL_260;
    }

    Kind = *(v25 + 16);
    if (v2 >= Kind)
    {
      goto LABEL_409;
    }

    sub_1E327F454(i, v250);
    sub_1E327F454(v250, v249);
    v67 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v67);
    v68 = type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v2;
    __swift_destroy_boxed_opaque_existential_1(v250);
    i += 40;
  }

  v69 = OUTLINED_FUNCTION_48_10();
  sub_1E37DADF4(v69, v70);
  OUTLINED_FUNCTION_48_10();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_94;
  }

  v235 = v250[0];
  OUTLINED_FUNCTION_22_56();
  v65();
  OUTLINED_FUNCTION_149_3();
  v2 = v36;
  v233 = v65;
  while (1)
  {
    if (&unk_1ECF3B640 == v68)
    {

      OUTLINED_FUNCTION_89_6();
      v73 = 0;
      v245 = v36 & 0xC000000000000001;
      v237 = v36 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v25 == v73)
        {
          v73 = sub_1E32AE9B0(v2);
          goto LABEL_126;
        }

        if (v245)
        {
          v76 = OUTLINED_FUNCTION_125();
          MEMORY[0x1E6911E60](v76);
        }

        else
        {
          Kind = *(v237 + 16);
          if (v73 >= Kind)
          {
            goto LABEL_426;
          }

          OUTLINED_FUNCTION_88_9();
        }

        OUTLINED_FUNCTION_138_6();
        LOBYTE(v248) = 12;
        v66 = sub_1E37D4BA4();
        OUTLINED_FUNCTION_40_41();
        sub_1E4206254();
        OUTLINED_FUNCTION_39_31();
        sub_1E4206254();
        OUTLINED_FUNCTION_5_123();
        if (v34 && v68 == i)
        {
          break;
        }

        OUTLINED_FUNCTION_9_6();
        OUTLINED_FUNCTION_161_3();

        if (v3)
        {
          goto LABEL_124;
        }

        v75 = __OFADD__(v73++, 1);
        v2 = v36;
        if (v75)
        {
          goto LABEL_432;
        }
      }

LABEL_124:
      v25 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_460;
      }

      v2 = v36;
      if (v25 == sub_1E32AE9B0(v36))
      {
LABEL_126:
        v79 = sub_1E32AE9B0(v2);
        i = v79 - v73;
        if (v79 < v73)
        {
LABEL_450:
          __break(1u);
        }

        else
        {
          v66 = v233;
          if ((v73 & 0x8000000000000000) == 0)
          {
            v25 = v79;
            if (sub_1E32AE9B0(v2) >= v79)
            {
              v75 = __OFSUB__(0, i);
              i = -i;
              if (!v75)
              {
                v80 = sub_1E32AE9B0(v2);
                v75 = __OFADD__(v80, i);
                v81 = v80 + i;
                if (!v75)
                {
                  i = &v251;
                  sub_1E3797CDC(v81);
                  v82 = OUTLINED_FUNCTION_11_6();
                  sub_1E3AD8CE8(v82, v83, 0);
                  goto LABEL_134;
                }

                goto LABEL_454;
              }

LABEL_453:
              __break(1u);
LABEL_454:
              __break(1u);
LABEL_455:
              __break(1u);
LABEL_456:
              __break(1u);
LABEL_457:
              __break(1u);
LABEL_458:
              __break(1u);
LABEL_459:
              __break(1u);
LABEL_460:
              __break(1u);
LABEL_461:
              __break(1u);
LABEL_462:
              __break(1u);
LABEL_463:
              __break(1u);
LABEL_464:
              __break(1u);
LABEL_465:
              __break(1u);
LABEL_466:
              __break(1u);
LABEL_467:
              __break(1u);
LABEL_468:
              OUTLINED_FUNCTION_7_14();
              goto LABEL_133;
            }

LABEL_452:
            __break(1u);
            goto LABEL_453;
          }
        }

        __break(1u);
        goto LABEL_452;
      }

      v86 = v73 + 5;
      while (1)
      {
        v3 = v86 - 4;
        v245 = v2 & 0xC000000000000001;
        if ((v2 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_163_2();
          v25 = v95;
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_433;
          }

          OUTLINED_FUNCTION_141_5();
          if (v3 >= Kind)
          {
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
LABEL_437:
            __break(1u);
LABEL_438:
            __break(1u);
LABEL_439:
            __break(1u);
LABEL_440:
            __break(1u);
LABEL_441:
            __break(1u);
LABEL_442:
            __break(1u);
LABEL_443:
            __break(1u);
LABEL_444:
            __break(1u);
LABEL_445:
            __break(1u);
LABEL_446:
            OUTLINED_FUNCTION_35(Kind);
            sub_1E42062F4();
            goto LABEL_61;
          }

          v25 = *(v2 + 8 * v86);
        }

        LOBYTE(v249[0]) = *(v25 + 32);
        LOBYTE(v248) = 12;
        OUTLINED_FUNCTION_40_41();
        v68 = &type metadata for LibMenuType;
        OUTLINED_FUNCTION_35_5();
        sub_1E4206254();
        OUTLINED_FUNCTION_39_31();
        OUTLINED_FUNCTION_35_5();
        sub_1E4206254();
        OUTLINED_FUNCTION_5_123();
        if (v34 && &type metadata for LibMenuType == i)
        {
        }

        else
        {
          v88 = v2;
          v89 = OUTLINED_FUNCTION_9_6();

          if (v89)
          {
            v2 = v88;
          }

          else
          {
            v2 = v88;
            if (v3 != v73)
            {
              if (v245)
              {
                v90 = OUTLINED_FUNCTION_125();
                v25 = MEMORY[0x1E6911E60](v90);
                OUTLINED_FUNCTION_163_2();
                i = v91;
              }

              else
              {
                if ((v73 & 0x8000000000000000) != 0)
                {
                  goto LABEL_462;
                }

                OUTLINED_FUNCTION_141_5();
                if (v73 >= v92)
                {
                  goto LABEL_463;
                }

                if (v3 >= v92)
                {
                  goto LABEL_464;
                }

                v25 = *(v88 + 8 * v73 + 32);
                i = *(v88 + 8 * v86);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v88 & 0x8000000000000000) != 0 || (v88 & 0x4000000000000000) != 0)
              {
                v2 = sub_1E37EFA58(v88);
                v93 = (v2 >> 62) & 1;
              }

              else
              {
                LODWORD(v93) = 0;
              }

              v68 = (v2 & 0xFFFFFFFFFFFFFF8);
              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v73 + 0x20) = i;

              if ((v2 & 0x8000000000000000) != 0 || v93)
              {
                v2 = sub_1E37EFA58(v2);
                v68 = (v2 & 0xFFFFFFFFFFFFFF8);
              }

              if ((v3 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_448:
                __break(1u);
LABEL_449:
                __break(1u);
                goto LABEL_450;
              }

              if (v3 >= v68[1].Kind)
              {
                goto LABEL_448;
              }

              *(&v68->Kind + v86) = v25;

              v251 = v2;
            }

            v75 = __OFADD__(v73++, 1);
            if (v75)
            {
              goto LABEL_444;
            }
          }
        }

        v25 = v86 - 3;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_435;
        }

        if (v2 >> 62)
        {
          v94 = sub_1E4207384();
        }

        else
        {
          Kind = v2 & 0xFFFFFFFFFFFFFF8;
          v94 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v86;
        if (v25 == v94)
        {
          goto LABEL_126;
        }
      }
    }

    Kind = *(v25 + 16);
    if (v68 >= Kind)
    {
      goto LABEL_418;
    }

    sub_1E327F454(i, v252);
    v71 = OUTLINED_FUNCTION_127_6();
    sub_1E37DADF4(v71, v72);
    type metadata accessor for LibFamilySharingSource();
    OUTLINED_FUNCTION_95_8();
    if (OUTLINED_FUNCTION_125_4())
    {
      break;
    }

    v68 = (v68 + 1);
    i += 40;
  }

  OUTLINED_FUNCTION_89_6();
  v73 = 0;
  v245 = v36 & 0xC000000000000001;
  while (v25 != v73)
  {
    if (v245)
    {
      v78 = OUTLINED_FUNCTION_125();
      v2 = MEMORY[0x1E6911E60](v78);
    }

    else
    {
      Kind = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v73 >= Kind)
      {
        goto LABEL_429;
      }

      OUTLINED_FUNCTION_88_9();
    }

    if (__OFADD__(v73, 1))
    {
      goto LABEL_428;
    }

    OUTLINED_FUNCTION_138_6();
    LOBYTE(v248) = 12;
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_18_64();
    OUTLINED_FUNCTION_39_3();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_31();
    OUTLINED_FUNCTION_39_3();
    sub_1E4206254();
    OUTLINED_FUNCTION_5_123();
    if (v34 && v68 == i)
    {

      OUTLINED_FUNCTION_22_56();
      v2 = v36;
      goto LABEL_174;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_161_3();

    ++v73;
    v2 = v36;
    if (v3)
    {
      OUTLINED_FUNCTION_22_56();
LABEL_174:
      v66 = v233;
      goto LABEL_175;
    }
  }

  type metadata accessor for LibMenuItem();
  OUTLINED_FUNCTION_21();
  (*(v84 + 336))();
  v68 = v85;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82();
  v25 = sub_1E3A8A680();
  i = &v251;
  MEMORY[0x1E6910BF0]();
  OUTLINED_FUNCTION_8_94();
  v66 = v233;
  if (v20)
  {
    goto LABEL_468;
  }

LABEL_133:
  OUTLINED_FUNCTION_13_8();
  sub_1E4206324();
LABEL_134:
  v2 = v251;
  OUTLINED_FUNCTION_22_56();
LABEL_175:
  v66();
  OUTLINED_FUNCTION_149_3();
  v246 = v2;
  while (1)
  {
    if (v73 == v68)
    {

      OUTLINED_FUNCTION_89_6();
      v98 = 0;
      v99 = v2 & 0xC000000000000001;
      v100 = v2 & 0xFFFFFFFFFFFFFF8;
      v73 = &type metadata for LibMenuType;
      while (1)
      {
        if (v25 == v98)
        {
          v98 = sub_1E32AE9B0(v2);
          goto LABEL_211;
        }

        if (v99)
        {
          MEMORY[0x1E6911E60](v98, v2);
        }

        else
        {
          Kind = *(v100 + 16);
          if (v98 >= Kind)
          {
            goto LABEL_427;
          }

          OUTLINED_FUNCTION_88_9();
        }

        OUTLINED_FUNCTION_138_6();
        LOBYTE(v248) = 11;
        v66 = sub_1E37D4BA4();
        OUTLINED_FUNCTION_40_41();
        OUTLINED_FUNCTION_75();
        sub_1E4206254();
        OUTLINED_FUNCTION_39_31();
        OUTLINED_FUNCTION_75();
        sub_1E4206254();
        OUTLINED_FUNCTION_5_123();
        if (v34 && v68 == i)
        {
          break;
        }

        OUTLINED_FUNCTION_9_6();
        OUTLINED_FUNCTION_161_3();

        if (v3)
        {
          goto LABEL_209;
        }

        v75 = __OFADD__(v98++, 1);
        v2 = v246;
        if (v75)
        {
          goto LABEL_436;
        }
      }

LABEL_209:
      v25 = v98 + 1;
      v2 = v246;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_461;
      }

      if (v25 != sub_1E32AE9B0(v246))
      {
        v111 = v98 + 5;
        v73 = 11;
        do
        {
          v3 = v111 - 4;
          v112 = v2 & 0xC000000000000001;
          if ((v2 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_163_2();
            v25 = v120;
          }

          else
          {
            if ((v3 & 0x8000000000000000) != 0)
            {
              goto LABEL_437;
            }

            OUTLINED_FUNCTION_141_5();
            if (v3 >= Kind)
            {
              goto LABEL_438;
            }

            v25 = *(v2 + 8 * v111);
          }

          LOBYTE(v249[0]) = *(v25 + 32);
          LOBYTE(v248) = 11;
          OUTLINED_FUNCTION_40_41();
          v68 = &type metadata for LibMenuType;
          OUTLINED_FUNCTION_35_5();
          sub_1E4206254();
          OUTLINED_FUNCTION_39_31();
          OUTLINED_FUNCTION_35_5();
          sub_1E4206254();
          OUTLINED_FUNCTION_5_123();
          if (v34 && &type metadata for LibMenuType == i)
          {
          }

          else
          {
            v114 = v2;
            v115 = OUTLINED_FUNCTION_9_6();

            if (v115)
            {
              v2 = v114;
              v73 = 11;
            }

            else
            {
              v2 = v114;
              v73 = 11;
              if (v3 != v98)
              {
                if (v112)
                {
                  v25 = MEMORY[0x1E6911E60](v98, v2);
                  OUTLINED_FUNCTION_163_2();
                  i = v116;
                }

                else
                {
                  if ((v98 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_465;
                  }

                  OUTLINED_FUNCTION_141_5();
                  if (v98 >= v117)
                  {
                    goto LABEL_466;
                  }

                  if (v3 >= v117)
                  {
                    goto LABEL_467;
                  }

                  v25 = *(v2 + 8 * v98 + 32);
                  i = *(v2 + 8 * v111);
                }

                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
                {
                  v118 = sub_1E37EFA58(v2);
                  v2 = (v118 >> 62) & 1;
                }

                else
                {
                  v118 = v2;
                  LODWORD(v2) = 0;
                }

                v68 = (v118 & 0xFFFFFFFFFFFFFF8);
                *((v118 & 0xFFFFFFFFFFFFFF8) + 8 * v98 + 0x20) = i;

                if ((v118 & 0x8000000000000000) != 0 || v2)
                {
                  v2 = sub_1E37EFA58(v118);
                  v68 = (v2 & 0xFFFFFFFFFFFFFF8);
                  if ((v3 & 0x8000000000000000) != 0)
                  {
LABEL_257:
                    __break(1u);
LABEL_258:

                    v2 = v246;
LABEL_259:

                    goto LABEL_260;
                  }
                }

                else
                {
                  v2 = v118;
                  if ((v3 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_257;
                  }
                }

                if (v3 >= v68[1].Kind)
                {
                  goto LABEL_449;
                }

                *(&v68->Kind + v111) = v25;

                v251 = v2;
              }

              v75 = __OFADD__(v98++, 1);
              if (v75)
              {
                goto LABEL_445;
              }
            }
          }

          v25 = v111 - 3;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_439;
          }

          if (v2 >> 62)
          {
            v119 = sub_1E4207384();
          }

          else
          {
            Kind = v2 & 0xFFFFFFFFFFFFFF8;
            v119 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v111;
        }

        while (v25 != v119);
      }

LABEL_211:
      v107 = sub_1E32AE9B0(v2);
      i = v107 - v98;
      if (v107 < v98)
      {
        goto LABEL_455;
      }

      if ((v98 & 0x8000000000000000) != 0)
      {
        goto LABEL_456;
      }

      v25 = v107;
      if (sub_1E32AE9B0(v2) >= v107)
      {
        v75 = __OFSUB__(0, i);
        i = -i;
        if (v75)
        {
          goto LABEL_458;
        }

        v108 = sub_1E32AE9B0(v2);
        v75 = __OFADD__(v108, i);
        v109 = v108 + i;
        if (!v75)
        {
          i = &v251;
          sub_1E3797CDC(v109);
          sub_1E3AD8CE8(v98, v25, 0);
          v2 = v251;
          goto LABEL_259;
        }

        goto LABEL_459;
      }

      goto LABEL_457;
    }

    Kind = *(v25 + 16);
    if (v68 >= Kind)
    {
      goto LABEL_419;
    }

    sub_1E327F454(i, v252);
    v96 = OUTLINED_FUNCTION_127_6();
    sub_1E37DADF4(v96, v97);
    type metadata accessor for LibHomeSharingSource();
    OUTLINED_FUNCTION_95_8();
    if (OUTLINED_FUNCTION_125_4())
    {
      break;
    }

    v68 = (v68 + 1);
    i += 40;
  }

  OUTLINED_FUNCTION_89_6();
  v102 = 0;
  v103 = v2 & 0xC000000000000001;
  v104 = v2 & 0xFFFFFFFFFFFFFF8;
  while (v25 != v102)
  {
    if (v103)
    {
      v106 = OUTLINED_FUNCTION_125();
      v2 = MEMORY[0x1E6911E60](v106);
    }

    else
    {
      Kind = *(v104 + 16);
      if (v102 >= Kind)
      {
        goto LABEL_431;
      }

      OUTLINED_FUNCTION_88_9();
    }

    if (__OFADD__(v102, 1))
    {
      goto LABEL_430;
    }

    OUTLINED_FUNCTION_138_6();
    LOBYTE(v248) = 11;
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_18_64();
    OUTLINED_FUNCTION_39_3();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_31();
    OUTLINED_FUNCTION_39_3();
    sub_1E4206254();
    OUTLINED_FUNCTION_5_123();
    if (v34 && v68 == i)
    {
      goto LABEL_258;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_161_3();

    ++v102;
    v2 = v246;
    if (v3)
    {
      goto LABEL_259;
    }
  }

  type metadata accessor for LibMenuItem();
  v110 = v235;
  (*((*MEMORY[0x1E69E7D40] & *v235) + 0x150))();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82();
  v25 = sub_1E3A8A680();
  i = &v251;
  MEMORY[0x1E6910BF0]();
  OUTLINED_FUNCTION_8_94();
  if (v20)
  {
LABEL_471:
    OUTLINED_FUNCTION_7_14();
  }

  OUTLINED_FUNCTION_13_8();
  sub_1E4206324();
  v2 = v251;

LABEL_260:
  OUTLINED_FUNCTION_89_6();
  v121 = 0;
  v245 = v2 & 0xC000000000000001;
  v122 = MEMORY[0x1E69E7CC8];
  v123 = v2 & 0xFFFFFFFFFFFFFF8;
  v246 = v2;
  while (2)
  {
    if (v25 == v121)
    {
      v133 = MEMORY[0x1E69E7CC0];
      v249[0] = MEMORY[0x1E69E7CC0];
      v134 = sub_1E3A8CC10();
      v135 = v134[2];
      if (v135)
      {
        v136 = MEMORY[0x1E69E7CC0];
        v3 = 32;
        OUTLINED_FUNCTION_112_6();
        do
        {
          if (v122[1].Kind)
          {
            i = v122;
            sub_1E3B8A658(*(v134 + v3));
            if (v137)
            {
              v138 = swift_retain_n();
              i = v249;
              MEMORY[0x1E6910BF0](v138);
              v121 = *((v249[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              v139 = *((v249[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (v121 >= v139 >> 1)
              {
                OUTLINED_FUNCTION_35(v139);
                sub_1E42062F4();
              }

              OUTLINED_FUNCTION_39_3();
              sub_1E4206324();

              v136 = v249[0];
              OUTLINED_FUNCTION_112_6();
            }
          }

          ++v3;
          --v135;
        }

        while (v135);
      }

      else
      {

        v136 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_112_6();
      }

      OUTLINED_FUNCTION_22_56();
      OUTLINED_FUNCTION_13_96();
      v141 = v140();
      v142 = sub_1E32AE9B0(v141);
      v2 = v240;
      if (v142)
      {
        v143 = v142;
        v252[0] = v133;
        OUTLINED_FUNCTION_153_3(v142);
        if (v143 < 0)
        {
          goto LABEL_442;
        }

        v121 = 0;
        v144 = v252[0];
        v3 = v141 & 0xC000000000000001;
        do
        {
          if (v3)
          {
            v2 = MEMORY[0x1E6911E60](0, v141);
          }

          else
          {
            OUTLINED_FUNCTION_88_9();
          }

          v133 = *(v2 + 72);

          OUTLINED_FUNCTION_152_4();
          if (v20)
          {
            v146 = OUTLINED_FUNCTION_35(v145);
            sub_1E377FD30(v146, v2, 1);
            v144 = v252[0];
          }

          OUTLINED_FUNCTION_90_9();
        }

        while (!v34);

        OUTLINED_FUNCTION_112_6();
        v2 = v240;
      }

      else
      {

        v144 = MEMORY[0x1E69E7CC0];
      }

      sub_1E32772D8(v144);
      v147 = sub_1E32AE9B0(v136);
      i = MEMORY[0x1E69E7CC0];
      if (v147)
      {
        v148 = v147;
        v252[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_153_3(v147);
        if (v148 < 0)
        {
          goto LABEL_443;
        }

        v121 = 0;
        i = v252[0];
        do
        {
          if ((v136 & 0xC000000000000001) != 0)
          {
            v2 = MEMORY[0x1E6911E60](0, v136);
          }

          else
          {
            OUTLINED_FUNCTION_88_9();
          }

          v133 = *(v2 + 72);

          OUTLINED_FUNCTION_152_4();
          if (v20)
          {
            v150 = OUTLINED_FUNCTION_35(v149);
            sub_1E377FD30(v150, v2, 1);
            i = v252[0];
          }

          OUTLINED_FUNCTION_90_9();
        }

        while (!v34);
        OUTLINED_FUNCTION_112_6();
        v2 = v240;
      }

      sub_1E32772D8(i);
      v151 = OUTLINED_FUNCTION_50();
      v152 = sub_1E3868C04(v151, i);

      v153 = v236;
      if (v152 & 1) == 0 || (v234)
      {
        OUTLINED_FUNCTION_47_0();
        (*(v160 + 464))(v136);
        v161 = sub_1E324FBDC();
        (*(v2 + 16))(v153, v161, v121);

        v162 = sub_1E41FFC94();
        v163 = v153;
        v164 = sub_1E4206814();

        if (os_log_type_enabled(v162, v164))
        {
          v165 = v121;
          v166 = OUTLINED_FUNCTION_6_21();
          v167 = v2;
          v168 = OUTLINED_FUNCTION_100();
          v252[0] = v168;
          *v166 = 136315138;
          OUTLINED_FUNCTION_13_96();
          v169();
          OUTLINED_FUNCTION_106();
          type metadata accessor for LibMenuItem();
          v170 = OUTLINED_FUNCTION_20_2();
          v171 = MEMORY[0x1E6910C30](v170);
          v173 = v172;

          v174 = sub_1E3270FC8(v171, v173, v252);

          *(v166 + 4) = v174;
          _os_log_impl(&dword_1E323F000, v162, v164, "LibDataSourceManager:: resolvedMenuItems %s", v166, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v168);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_6_0();

          (*(v167 + 8))(v163, v165);
        }

        else
        {

          (*(v2 + 8))(v163, v121);
        }

LABEL_347:
        v2 = v246;
      }

      else
      {
        OUTLINED_FUNCTION_22_56();
        OUTLINED_FUNCTION_13_96();
        v155 = v154();
        v3 = sub_1E32AE9B0(v155);
        v156 = 0;
        v245 = v155 & 0xC000000000000001;
        v241 = v155 & 0xFFFFFFFFFFFFFF8;
        v2 = &type metadata for LibMenuType;
        while (1)
        {
          if (v3 == v156)
          {

            goto LABEL_347;
          }

          if (v245)
          {
            v158 = MEMORY[0x1E6911E60](v156, v155);
          }

          else
          {
            OUTLINED_FUNCTION_329();
            Kind = *(v157 + 16);
            if (v156 >= Kind)
            {
              goto LABEL_417;
            }

            v158 = *(v155 + 8 * v156 + 32);
          }

          if (__OFADD__(v156, 1))
          {
            goto LABEL_416;
          }

          LOBYTE(v248) = *(v158 + 32);
          v247 = 9;
          sub_1E37D4BA4();
          OUTLINED_FUNCTION_159_1();
          OUTLINED_FUNCTION_157_4();
          OUTLINED_FUNCTION_5_123();
          if (v34 && v152 == i)
          {
            break;
          }

          OUTLINED_FUNCTION_9_6();
          OUTLINED_FUNCTION_140_7();

          if (v133)
          {
            goto LABEL_329;
          }

          ++v156;
        }

LABEL_329:

        i = v244;
        v3 = sub_1E32AE9B0(v244);
        v175 = 0;
        v245 = i & 0xC000000000000001;
        v241 = i & 0xFFFFFFFFFFFFFF8;
        v2 = &type metadata for LibMenuType;
        while (1)
        {
          if (v3 == v175)
          {

LABEL_346:

            goto LABEL_347;
          }

          if (v245)
          {
            OUTLINED_FUNCTION_168_3();
            v177 = v179;
          }

          else
          {
            OUTLINED_FUNCTION_329();
            Kind = *(v176 + 16);
            if (v175 >= Kind)
            {
              goto LABEL_423;
            }

            v177 = *(&v244[2].Kind + v175);
          }

          if (__OFADD__(v175, 1))
          {
            goto LABEL_422;
          }

          LOBYTE(v248) = *(v177 + 32);
          v247 = 9;
          OUTLINED_FUNCTION_159_1();
          OUTLINED_FUNCTION_157_4();
          OUTLINED_FUNCTION_5_123();
          if (v34 && v152 == i)
          {
            break;
          }

          OUTLINED_FUNCTION_9_6();
          OUTLINED_FUNCTION_140_7();

          if (v133)
          {
            goto LABEL_344;
          }

          ++v175;
        }

LABEL_344:

        OUTLINED_FUNCTION_12_6();
        v181 = *(v180 + 224);
        v182 = v181();
        OUTLINED_FUNCTION_26();
        if (v182 == (*(v183 + 224))())
        {

          goto LABEL_346;
        }

        v209 = v181();
        v210 = sub_1E324FBDC();
        (*(v240 + 16))(v232, v210, v243);
        OUTLINED_FUNCTION_4_0();
        v211 = swift_allocObject();
        v245 = v209;
        *(v211 + 16) = v209;
        v212 = sub_1E41FFC94();
        v213 = sub_1E4206814();
        v214 = swift_allocObject();
        *(v214 + 16) = 0;
        v215 = swift_allocObject();
        *(v215 + 16) = 8;
        v216 = swift_allocObject();
        *(v216 + 16) = sub_1E3B8B3A8;
        *(v216 + 24) = v211;
        v217 = swift_allocObject();
        *(v217 + 16) = sub_1E3B8B3C4;
        *(v217 + 24) = v216;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341C8);
        v218 = swift_allocObject();
        *(v218 + 16) = xmmword_1E4297BD0;
        *(v218 + 32) = sub_1E3B8B3B0;
        *(v218 + 40) = v214;
        *(v218 + 48) = sub_1E3B8B494;
        *(v218 + 56) = v215;
        *(v218 + 64) = sub_1E3B8B3F4;
        *(v218 + 72) = v217;
        swift_setDeallocating();

        sub_1E3B89040();
        if (os_log_type_enabled(v212, v213))
        {
          v219 = OUTLINED_FUNCTION_6_21();
          *v219 = 134217984;

          v220 = v245;
          *(v219 + 4) = v245;

          _os_log_impl(&dword_1E323F000, v212, v213, "LibDataSourceManager:: dedup resolvedMenuItems but still update rental count to %ld", v219, 0xCu);
          OUTLINED_FUNCTION_6_0();

          v2 = v246;
          v221 = v220;
        }

        else
        {

          v221 = v245;
          v2 = v246;
        }

        OUTLINED_FUNCTION_15_5();
        v226(v232, v243);
        OUTLINED_FUNCTION_26();
        (*(v227 + 232))(v221);
      }

      OUTLINED_FUNCTION_22_56();
      OUTLINED_FUNCTION_8();
      v185 = (*(v184 + 408))();
      if (!v185)
      {
        goto LABEL_399;
      }

      v110 = v185;
      OUTLINED_FUNCTION_8();
      v186 += 57;
      v3 = *v186;
      v187 = v186;
      v188 = (*v186)();
      v189 = sub_1E32AE9B0(v188);

      if (!v189)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4298880;
        *(inited + 32) = v110;

        sub_1E3B847F8(inited);

        swift_setDeallocating();
        sub_1E377D458();
LABEL_399:

        OUTLINED_FUNCTION_25_2();
        return;
      }

      v191 = (v3)(v190);
      v192 = sub_1E32AE9B0(v191);
      v193 = 0;
      v194 = v191 & 0xC000000000000001;
      i = v191 & 0xFFFFFFFFFFFFFF8;
      v245 = v191 + 32;
      v244 = (v191 & 0xC000000000000001);
      v243 = v191 & 0xFFFFFFFFFFFFFF8;
      while (v193 != v192)
      {
        if (v194)
        {
          v195 = MEMORY[0x1E6911E60](v193, v191);
        }

        else
        {
          Kind = *(i + 16);
          if (v193 >= Kind)
          {
            goto LABEL_425;
          }

          v195 = *(v245 + 8 * v193);
        }

        v75 = __OFADD__(v193++, 1);
        if (v75)
        {
          goto LABEL_424;
        }

        if (sub_1E38BBD0C() & 1) != 0 && (sub_1E38BBD0C())
        {
          OUTLINED_FUNCTION_26();
          v197 = (*(v196 + 288))();
          if (v197)
          {
            v198 = v197;
            v237 = v192;
            v241 = v191;
            v239 = v187;
            v240 = v3;
            i = sub_1E32AE9B0(v197);
            v199 = 0;
            v2 = v198 & 0xC000000000000001;
            v3 = v198 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (i == v199)
              {

                v2 = v246;
                v3 = v240;
                v187 = v239;
                v191 = v241;
                v192 = v237;
                goto LABEL_379;
              }

              if (v2)
              {
                v200 = MEMORY[0x1E6911E60](v199, v198);
              }

              else
              {
                Kind = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v199 >= Kind)
                {
                  goto LABEL_421;
                }

                v200 = *(v198 + 8 * v199 + 32);
              }

              if (__OFADD__(v199, 1))
              {
                goto LABEL_420;
              }

              if (*(v200 + 16) == v110[2] && *(v200 + 24) == v110[3])
              {
                break;
              }

              sub_1E42079A4();
              OUTLINED_FUNCTION_140_7();

              ++v199;
              if (v187)
              {

                goto LABEL_383;
              }
            }

LABEL_383:

            OUTLINED_FUNCTION_22_56();
            OUTLINED_FUNCTION_8();
            v205 = *(v204 + 416);

            v207 = v205(v206);
            if ((*(*v195 + 256))(v207))
            {
              OUTLINED_FUNCTION_26();
              (*(v208 + 472))(0, 0);
            }

LABEL_398:

            goto LABEL_399;
          }

LABEL_379:
          v194 = v244;
          i = v243;
        }

        else
        {
          v202 = v195[2] == v110[2] && v195[3] == v110[3];
          if (v202 || (sub_1E42079A4() & 1) != 0)
          {
            goto LABEL_383;
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v222 = swift_initStackObject();
      *(v222 + 16) = xmmword_1E4298880;
      *(v222 + 32) = v110;

      v223 = v242;
      sub_1E3B847F8(v222);
      swift_setDeallocating();
      v224 = sub_1E377D458();
      i = v223;
      v25 = (v3)(v224);
      if (!sub_1E32AE9B0(v25))
      {

        v225 = 0;
        goto LABEL_397;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v225 = MEMORY[0x1E6911E60](0, v25);
        goto LABEL_393;
      }

      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v225 = *(v25 + 32);

LABEL_393:

LABEL_397:
        OUTLINED_FUNCTION_22_56();
        OUTLINED_FUNCTION_8();
        (*(v228 + 416))(v225);
        goto LABEL_398;
      }

      __break(1u);
      goto LABEL_471;
    }

    if (v245)
    {
      v132 = OUTLINED_FUNCTION_24_4();
      v2 = MEMORY[0x1E6911E60](v132);
    }

    else
    {
      Kind = *(v123 + 16);
      if (v121 >= Kind)
      {
        goto LABEL_406;
      }

      OUTLINED_FUNCTION_88_9();
    }

    if (__OFADD__(v121, 1))
    {
      __break(1u);
LABEL_406:
      __break(1u);
LABEL_407:
      __break(1u);
LABEL_408:
      __break(1u);
LABEL_409:
      __break(1u);
LABEL_410:
      __break(1u);
LABEL_411:
      __break(1u);
LABEL_412:
      __break(1u);
LABEL_413:
      __break(1u);
LABEL_414:
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
LABEL_421:
      __break(1u);
LABEL_422:
      __break(1u);
LABEL_423:
      __break(1u);
LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      __break(1u);
LABEL_427:
      __break(1u);
LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
      goto LABEL_434;
    }

    v124 = *(v2 + 32);

    swift_isUniquelyReferenced_nonNull_native();
    v252[0] = v122;
    i = v122;
    v125 = sub_1E3B8A658(v124);
    Kind = v122[1].Kind;
    if (__OFADD__(Kind, (v126 & 1) == 0))
    {
      goto LABEL_407;
    }

    v127 = v125;
    v3 = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341C0);
    i = v252;
    if ((sub_1E4207644() & 1) == 0)
    {
LABEL_270:
      v122 = v252[0];
      if (v3)
      {
        v130 = *(v252[0] + 56);
        i = *(v130 + 8 * v127);
        *(v130 + 8 * v127) = v2;
      }

      else
      {
        *(v252[0] + 8 * (v127 >> 6) + 64) |= 1 << v127;
        *(v122[3].Kind + v127) = v124;
        *(v122[3].Description + v127) = v2;

        v131 = v122[1].Kind;
        v75 = __OFADD__(v131, 1);
        Kind = v131 + 1;
        if (v75)
        {
          goto LABEL_410;
        }

        v122[1].Kind = Kind;
      }

      ++v121;
      v2 = v246;
      continue;
    }

    break;
  }

  i = v252[0];
  v128 = sub_1E3B8A658(v124);
  if ((v3 & 1) == (v129 & 1))
  {
    v127 = v128;
    goto LABEL_270;
  }

  sub_1E4207A74();
  __break(1u);
}

void sub_1E3B8343C()
{
  OUTLINED_FUNCTION_8();
  (*(v3 + 696))();
  OUTLINED_FUNCTION_29_48();
  v5 = v4 + 32;
  while (1)
  {
    if (v2 == v1)
    {

LABEL_8:
      sub_1E3B835EC();
      return;
    }

    OUTLINED_FUNCTION_96_9();
    if (v6)
    {
      break;
    }

    sub_1E327F454(v5, v31);
    sub_1E327F454(v31, v29);
    v7 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    OUTLINED_FUNCTION_247();
    v8 = type metadata accessor for LibLocalSource();
    OUTLINED_FUNCTION_86(v8, v9, v10, v11, v12, v13, v14, v15, v28);
    if (OUTLINED_FUNCTION_115_3())
    {

      v16 = sub_1E37DADF4(v31, v30);
      v24 = OUTLINED_FUNCTION_131_7(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0]);
      sub_1E37DADF4(v24, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8);
      v26 = OUTLINED_FUNCTION_26_11();
      *(v26 + 16) = xmmword_1E4297BE0;
      sub_1E327F454(v31, v26 + 32);
      v27 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
      OUTLINED_FUNCTION_3_0();
      *(v0 + v27) = v26;

      sub_1E3B7CC30();
      (*(*v0 + 464))(MEMORY[0x1E69E7CC0]);
      sub_1E3B7E10C();
      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_8;
    }

    ++v1;
    OUTLINED_FUNCTION_120_4(v31);
  }

  __break(1u);
}

void sub_1E3B835EC()
{
  OUTLINED_FUNCTION_31_1();
  v117 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v123 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_3(v116 - v5);
  v6 = MEMORY[0x1E69E7CD0];
  v137 = MEMORY[0x1E69E7CD0];
  v7 = *v0;
  v8 = *(*v0 + 696);
  v124 = v0;
  v122 = v7 + 696;
  v121 = v8;
  v9 = v8();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    do
    {
      sub_1E327F454(v11, v132);
      sub_1E327F454(v132, v136);
      v12 = OUTLINED_FUNCTION_24_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v12);
      OUTLINED_FUNCTION_106();
      type metadata accessor for LibHomeSharingSource();
      if (OUTLINED_FUNCTION_90_0())
      {

        __swift_project_boxed_opaque_existential_1(v132, v133);
        OUTLINED_FUNCTION_33();
        v13 = OUTLINED_FUNCTION_39_0();
        v15 = v14(v13);
        sub_1E3277398(v136, v15, v16);
      }

      __swift_destroy_boxed_opaque_existential_1(v132);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  v135 = v6;
  v17 = objc_opt_self();
  v18 = sub_1E3B8A800(v17);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1E32AE9B0(v19);
  v21 = 0;
  v128 = v19 & 0xC000000000000001;
  v129 = v20;
  v125 = v19 + 32;
  while (v129 != v21)
  {
    v22 = v128;
    sub_1E34AF4E4(v21, v128 == 0, v19);
    if (v22)
    {
      v27 = OUTLINED_FUNCTION_114_0();
      v23 = MEMORY[0x1E6911E60](v27);
    }

    else
    {
      v23 = *(v19 + 8 * v21 + 32);
    }

    v24 = v23;
    if (__OFADD__(v21, 1))
    {
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
      return;
    }

    v25 = sub_1E3B8A870(v23);
    if (!v26)
    {
      goto LABEL_102;
    }

    sub_1E3277398(v132, v25, v26);

    ++v21;
  }

  v126 = v19;
  v28 = *(v137 + 56);
  v131 = v137 + 56;
  v29 = 1 << *(v137 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & v28;
  v118 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
  v32 = (v29 + 63) >> 6;
  v130 = v137;
  swift_bridgeObjectRetain_n();
  v33 = 0;
  v120 = v32;
LABEL_21:
  while (v31)
  {
    v34 = v130;
LABEL_28:
    v36 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v37 = (*(v34 + 48) + ((v33 << 10) | (16 * v36)));
    v39 = *v37;
    v38 = v37[1];
    v40 = v135;
    if (*(v135 + 2))
    {
      sub_1E4207B44();

      sub_1E4206014();
      v41 = sub_1E4207BA4();
      v42 = ~(-1 << v40[32]);
      while (1)
      {
        v43 = v41 & v42;
        if (((*&v40[(((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v41 & v42)) & 1) == 0)
        {
          break;
        }

        v44 = (*(v40 + 6) + 16 * v43);
        if (*v44 != v39 || v44[1] != v38)
        {
          v46 = OUTLINED_FUNCTION_167_3();
          v41 = v43 + 1;
          if ((v46 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_22_56();
    v47 = v121();
    v48 = 0;
    v49 = *(v47 + 16);
    v127 = v47;
    for (i = v47 + 32; ; i += 40)
    {
      if (v49 == v48)
      {

        goto LABEL_50;
      }

      if (v48 >= *(v127 + 2))
      {
        goto LABEL_99;
      }

      sub_1E327F454(i, v132);
      v51 = v133;
      v52 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      OUTLINED_FUNCTION_33();
      if (v53(v51, v52) == v39 && v54 == v38)
      {
        break;
      }

      v56 = OUTLINED_FUNCTION_167_3();

      __swift_destroy_boxed_opaque_existential_1(v132);
      if (v56)
      {
        goto LABEL_49;
      }

      ++v48;
    }

    __swift_destroy_boxed_opaque_existential_1(v132);
LABEL_49:

    OUTLINED_FUNCTION_11_3();
    sub_1E3B88DA0(v48, v132);
    __swift_destroy_boxed_opaque_existential_1(v132);
    swift_endAccess();
    sub_1E3B7CF98();
LABEL_50:
    v32 = v120;
  }

  v34 = v130;
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_96;
    }

    if (v35 >= v32)
    {
      break;
    }

    v31 = *(v131 + 8 * v35);
    ++v33;
    if (v31)
    {
      v33 = v35;
      goto LABEL_28;
    }
  }

  v57 = 0;
  v58 = v126;
  v59 = v126 & 0xFFFFFFFFFFFFFF8;
  v60 = MEMORY[0x1E69E7CC0];
  v61 = MEMORY[0x1E69E7CC0];
  v62 = v117;
  while (v129 != v57)
  {
    if (v128)
    {
      v63 = MEMORY[0x1E6911E60](v57, v58);
    }

    else
    {
      if (v57 >= *(v59 + 16))
      {
        goto LABEL_98;
      }

      v63 = *(v58 + 8 * v57 + 32);
    }

    v64 = v63;
    v65 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_97;
    }

    v66 = sub_1E3B8A870(v63);
    v68 = v67;

    ++v57;
    if (v68)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1E3740F88(0, *(v61 + 2) + 1, 1, v61);
      }

      v70 = *(v61 + 2);
      v69 = *(v61 + 3);
      if (v70 >= v69 >> 1)
      {
        v72 = OUTLINED_FUNCTION_35(v69);
        v61 = sub_1E3740F88(v72, v70 + 1, 1, v61);
      }

      *(v61 + 2) = v70 + 1;
      v71 = &v61[16 * v70];
      *(v71 + 4) = v66;
      *(v71 + 5) = v68;
      v57 = v65;
      v58 = v126;
    }
  }

  v73 = sub_1E32772D8(v61);
  v74 = sub_1E324FBDC();
  v76 = v123 + 16;
  v75 = *(v123 + 16);
  v122 = v74;
  v127 = v75;
  v75(v119);
  v77 = sub_1E41FFC94();
  v78 = sub_1E4206814();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = OUTLINED_FUNCTION_125_0();
    *v79 = 0;
    _os_log_impl(&dword_1E323F000, v77, v78, "LibDataSourceManager: will update homeSharings", v79, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_329();
  v81 = *(v80 + 8);
  v123 = v80 + 8;
  (v81)(v119, v62);
  v82 = sub_1E3868C04(v73, v130);

  if (v82)
  {

    (v127)(v116[1], v122, v62);
    v83 = sub_1E41FFC94();
    v84 = sub_1E4206814();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = OUTLINED_FUNCTION_125_0();
      *v85 = 0;
      _os_log_impl(&dword_1E323F000, v83, v84, "LibDataSourceManager:: home sharing list is the same as existing, no need to update", v85, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_329();
    v81();
  }

  else
  {
    v119 = v76;
    v120 = v73;
    v121 = v81;
    v86 = 0;
    v136[0] = v60;
LABEL_70:
    while (v86 != v129)
    {
      if (v128)
      {
        v87 = MEMORY[0x1E6911E60](v86, v58);
      }

      else
      {
        if (v86 >= *(v59 + 16))
        {
          goto LABEL_101;
        }

        v87 = *(v125 + 8 * v86);
      }

      v88 = v87;
      if (__OFADD__(v86++, 1))
      {
        goto LABEL_100;
      }

      v90 = sub_1E3B8A870(v87);
      if (!v91)
      {
        goto LABEL_103;
      }

      v92 = v91;
      if (*(v130 + 16))
      {
        v93 = v90;
        sub_1E4207B44();
        sub_1E4206014();
        v94 = sub_1E4207BA4();
        v95 = v130;
        v96 = ~(-1 << *(v130 + 32));
        while (1)
        {
          v97 = v94 & v96;
          if (((*(v131 + (((v94 & v96) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v94 & v96)) & 1) == 0)
          {
            break;
          }

          v98 = (*(v95 + 48) + 16 * v97);
          if (*v98 != v93 || v92 != v98[1])
          {
            v100 = sub_1E42079A4();
            v95 = v130;
            v101 = v100;
            v94 = v97 + 1;
            if ((v101 & 1) == 0)
            {
              continue;
            }
          }

          v58 = v126;
          goto LABEL_70;
        }
      }

      type metadata accessor for LibHomeSharingSource();
      v102 = v88;
      sub_1E3B4C0C4(v102);
      v104 = v103;
      MEMORY[0x1E6910BF0]();
      v105 = *((v136[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      v58 = v126;
      if (*((v136[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v105 >> 1)
      {
        OUTLINED_FUNCTION_35(v105);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_39_3();
      sub_1E4206324();

      v60 = v136[0];
    }

    sub_1E3B86460(v60);

    OUTLINED_FUNCTION_22_56();
    sub_1E3B868A4(v106);

    (v127)(v116[0], v122, v62);

    v107 = sub_1E41FFC94();
    v108 = sub_1E4206814();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = OUTLINED_FUNCTION_6_21();
      v110 = OUTLINED_FUNCTION_100();
      v132[0] = v110;
      *v109 = 136315138;
      sub_1E4206634();

      v111 = OUTLINED_FUNCTION_24_4();
      v114 = sub_1E3270FC8(v111, v112, v113);

      *(v109 + 4) = v114;
      _os_log_impl(&dword_1E323F000, v107, v108, "LibDataSourceManager: did update homeSharings %s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v110);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_13_96();
    v115();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B84184(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_1E327F454(a1, &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
  OUTLINED_FUNCTION_144_0();
  type metadata accessor for LibMPShowMediaEntity();
  if (!OUTLINED_FUNCTION_35_39())
  {
    sub_1E327F454(a1, &v58);
    type metadata accessor for LibSidebandShowMediaEntity();
    if (OUTLINED_FUNCTION_35_39())
    {

      OUTLINED_FUNCTION_8();
      (*(v8 + 696))();
      OUTLINED_FUNCTION_7_126();
      while (v3 != v2)
      {
        OUTLINED_FUNCTION_68_18();
        if (v9)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v10 = sub_1E327F454(a1, v57);
        v18 = OUTLINED_FUNCTION_61_1(v10, v11, v12, v13, v14, v15, v16, v17, v56, v57[0]);
        sub_1E327F454(v18, v19);
        v20 = OUTLINED_FUNCTION_75();
        __swift_instantiateConcreteTypeFromMangledNameV2(v20);
        OUTLINED_FUNCTION_247();
        type metadata accessor for LibLocalSource();
        if (OUTLINED_FUNCTION_33_41())
        {
LABEL_22:

          goto LABEL_24;
        }

        ++v2;
        OUTLINED_FUNCTION_120_4(v57);
      }
    }

    else
    {
      sub_1E327F454(a1, &v58);
      type metadata accessor for LibFamilySharingShowMediaEntity();
      if (!OUTLINED_FUNCTION_35_39())
      {
        return;
      }

      OUTLINED_FUNCTION_8();
      (*(v21 + 672))();
      OUTLINED_FUNCTION_7_126();
      while (v3 != v2)
      {
        OUTLINED_FUNCTION_68_18();
        if (v9)
        {
LABEL_29:
          __break(1u);
          return;
        }

        v22 = sub_1E327F454(a1, v57);
        v30 = OUTLINED_FUNCTION_61_1(v22, v23, v24, v25, v26, v27, v28, v29, v56, v57[0]);
        sub_1E327F454(v30, v31);
        v32 = OUTLINED_FUNCTION_75();
        __swift_instantiateConcreteTypeFromMangledNameV2(v32);
        OUTLINED_FUNCTION_247();
        type metadata accessor for LibFamilySharingSource();
        if (OUTLINED_FUNCTION_33_41())
        {

LABEL_24:
          v45 = sub_1E325F7A8(a2, &unk_1ECF2A740);
          v53 = OUTLINED_FUNCTION_61_1(v45, v46, v47, v48, v49, v50, v51, v52, v56, v57[0]);
          sub_1E37DADF4(v53, v54);
          goto LABEL_25;
        }

        ++v2;
        OUTLINED_FUNCTION_120_4(v57);
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_8();
  if (!(*(v6 + 408))())
  {
    OUTLINED_FUNCTION_8();
    (*(v33 + 696))();
    OUTLINED_FUNCTION_7_126();
    while (v3 != v2)
    {
      OUTLINED_FUNCTION_68_18();
      if (v9)
      {
        goto LABEL_28;
      }

      v34 = sub_1E327F454(a1, v57);
      v42 = OUTLINED_FUNCTION_61_1(v34, v35, v36, v37, v38, v39, v40, v41, v56, v57[0]);
      sub_1E327F454(v42, v43);
      v44 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v44);
      OUTLINED_FUNCTION_247();
      type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_33_41())
      {
        goto LABEL_22;
      }

      ++v2;
      OUTLINED_FUNCTION_120_4(v57);
    }

LABEL_21:
    sub_1E325F7A8(a2, &unk_1ECF2A740);

    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_8();
  (*(v7 + 808))(&v58);

  sub_1E325F7A8(a2, &unk_1ECF2A740);
LABEL_25:
  v55 = v59;
  *a2 = v58;
  *(a2 + 16) = v55;
  *(a2 + 32) = v60;
}

uint64_t sub_1E3B844F8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 672))();
  sub_1E37D9AD0(v1, &v70);

  if (!v72)
  {
    sub_1E325F7A8(&v70, &unk_1ECF2A740);
    return 0;
  }

  v2 = sub_1E37DADF4(&v70, v74);
  v10 = OUTLINED_FUNCTION_136_2(v2, v3, v4, v5, v6, v7, v8, v9, v57, v63, v70, *(&v70 + 1), v71, v72, v73, v74[0]);
  sub_1E327F454(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
  OUTLINED_FUNCTION_9_5();
  v12 = type metadata accessor for LibLocalSource();
  OUTLINED_FUNCTION_34_40(v12, v13, v14, v15, v16, v17, v18, v19, v58, v64);
  v20 = OUTLINED_FUNCTION_102_0();
  if (v20)
  {

    __swift_destroy_boxed_opaque_existential_1(v74);
    return 0x7972617262694CLL;
  }

  v29 = OUTLINED_FUNCTION_136_2(v20, v21, v22, v23, v24, v25, v26, v27, v59, v65, v70, *(&v70 + 1), v71, v72, v73, v74[0]);
  sub_1E327F454(v29, v30);
  v31 = type metadata accessor for LibFamilySharingSource();
  OUTLINED_FUNCTION_34_40(v31, v32, v33, v34, v35, v36, v37, v38, v60, v66);
  v39 = OUTLINED_FUNCTION_102_0();
  if (v39)
  {

    __swift_destroy_boxed_opaque_existential_1(v74);
    return 0x6853796C696D6146;
  }

  v47 = OUTLINED_FUNCTION_136_2(v39, v40, v41, v42, v43, v44, v45, v46, v61, v67, v70, *(&v70 + 1), v71, v72, v73, v74[0]);
  sub_1E327F454(v47, v48);
  v49 = type metadata accessor for LibHomeSharingSource();
  OUTLINED_FUNCTION_34_40(v49, v50, v51, v52, v53, v54, v55, v56, v62, v68);
  if (!OUTLINED_FUNCTION_102_0())
  {
    __swift_destroy_boxed_opaque_existential_1(v74);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v74);
  return 0x72616853656D6F48;
}

uint64_t sub_1E3B8468C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LibDataSourceManager();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B846CC()
{

  v0 = OUTLINED_FUNCTION_75();
  MEMORY[0x1E69109E0](v0);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341D0);
  sub_1E3CA4D10();
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  (*(v1 + 320))(0);
  OUTLINED_FUNCTION_9_2();
  return (*(v2 + 264))(1);
}

unint64_t sub_1E3B847F8(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_1E4207384();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = OUTLINED_FUNCTION_11_6();
        MEMORY[0x1E6911E60](v4);
      }

      else
      {
      }

      sub_1E3B846CC();
    }
  }

  return result;
}

void sub_1E3B848AC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v35 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341B0);
  OUTLINED_FUNCTION_0_10();
  v38 = v6;
  v39 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v35 - v8;
  v9 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_cancellables;
  OUTLINED_FUNCTION_3_0();
  v40 = v1;
  v41 = v9;
  v10 = *(v1 + v9);
  if ((v10 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1E4207344();
    OUTLINED_FUNCTION_106();
    sub_1E42004F4();
    sub_1E3B8B148(&qword_1ECF28DA0, MEMORY[0x1E695BF10]);
    OUTLINED_FUNCTION_57();
    sub_1E4206664();
    v12 = v44;
    v11 = v45;
    v14 = v46;
    v13 = v47;
    v15 = v48;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v12 = v10;
  }

  if (v12 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v15;
    v21 = v13;
    if (!v15)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v12 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));

    if (!v23)
    {
LABEL_18:
      sub_1E34AF4DC();

      *(v40 + v41) = MEMORY[0x1E69E7CD0];

      v25 = v36;
      __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      v26 = OUTLINED_FUNCTION_34();
      *&v42[0] = v27(v26);
      sub_1E3280A90(0, &qword_1EE23B1D0);
      v28 = sub_1E4206A04();
      v43 = v28;
      v29 = sub_1E42069A4();
      v30 = v35;
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341B8);
      sub_1E328FCF4(&qword_1EE28A200, &qword_1ECF341B8);
      sub_1E3746800();
      v31 = v37;
      sub_1E42007D4();
      sub_1E325F7A8(v30, &unk_1ECF2D2B0);

      OUTLINED_FUNCTION_4_0();
      v32 = swift_allocObject();
      OUTLINED_FUNCTION_105_2(v32);
      swift_weakInit();
      sub_1E327F454(v25, v42);
      v33 = swift_allocObject();
      sub_1E37DADF4(v42, v33 + 16);
      *(v33 + 56) = v42;
      sub_1E328FCF4(&qword_1EE28A298, &qword_1ECF341B0);
      v34 = v39;
      sub_1E4200844();

      (*(v38 + 8))(v31, v34);
      OUTLINED_FUNCTION_11_3();
      sub_1E42004C4();
      swift_endAccess();

      OUTLINED_FUNCTION_25_2();
      return;
    }

    while (1)
    {
      sub_1E42004E4();

      v13 = v21;
      v15 = v22;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v24 = sub_1E42073C4();
      if (v24)
      {
        v43 = v24;
        sub_1E42004F4();
        swift_dynamicCast();
        v21 = v13;
        v22 = v15;
        if (*&v42[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= ((v14 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v20 = *(v11 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1E3B84DB0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_9_5();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v61 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v58 - v11;
  v13 = sub_1E324FBDC();
  v60 = *(v6 + 16);
  v60(v12, v13, v4);
  sub_1E327F454(v3, v65);
  sub_1E327F454(v3, v64);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_100();
    v59 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v62 = v6;
    v63 = v18;
    *v17 = 136315650;
    type metadata accessor for LibMenuItem();
    v19 = OUTLINED_FUNCTION_22_53();
    v20 = MEMORY[0x1E6910C30](v19);
    v22 = sub_1E3270FC8(v20, v21, &v63);
    v58[2] = v1;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v58[1] = v13;
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    OUTLINED_FUNCTION_33();
    v24 = OUTLINED_FUNCTION_11_6();
    v26 = v25(v24);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v27 = OUTLINED_FUNCTION_32_0();
    sub_1E3270FC8(v27, v28, v29);
    OUTLINED_FUNCTION_12_1();

    *(v17 + 14) = v26;
    *(v17 + 22) = 2080;
    v30 = v64[4];
    __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    v31 = OUTLINED_FUNCTION_50();
    v33 = v32(v31, v30);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v34 = OUTLINED_FUNCTION_32_0();
    sub_1E3270FC8(v34, v35, v36);
    OUTLINED_FUNCTION_12_1();

    *(v17 + 24) = v33;
    _os_log_impl(&dword_1E323F000, v14, v15, "LibDataSourceManager:: receive updated menus %s from %s, name %s", v17, 0x20u);
    swift_arrayDestroy();
    v6 = v62;
    OUTLINED_FUNCTION_6_0();
    v4 = v59;
    OUTLINED_FUNCTION_6_0();

    v37 = OUTLINED_FUNCTION_133_5();
    (v14)(v37);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_133_5();
    (v14)(v38);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v40 = Strong;
  OUTLINED_FUNCTION_26_0();
  if (((*(v41 + 848))() & 1) != 0 && *(v40 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress) == 1)
  {
    v42 = v61;
    v43 = OUTLINED_FUNCTION_16_0();
    v44(v43);

    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_6_21();
      v62 = v6;
      v48 = v47;
      v60 = OUTLINED_FUNCTION_100();
      v64[0] = v60;
      *v48 = 136315138;
      type metadata accessor for LibMenuItem();
      v49 = OUTLINED_FUNCTION_22_53();
      v50 = MEMORY[0x1E6910C30](v49);
      v52 = sub_1E3270FC8(v50, v51, v64);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_1E323F000, v45, v46, "LibDataSourceManager:: receive updated menus %s while local source is loading.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    (v14)(v42, v4);
  }

  OUTLINED_FUNCTION_30_1();
  if ((*(v53 + 408))())
  {

LABEL_19:
    sub_1E3B80F1C();

LABEL_20:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_30_1();
  v55 = (*(v54 + 456))();
  if (!sub_1E32AE9B0(v55))
  {

    v56 = 0;
    goto LABEL_18;
  }

  if ((v55 & 0xC000000000000001) != 0)
  {
    v56 = MEMORY[0x1E6911E60](0, v55);
    goto LABEL_16;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v56 = *(v55 + 32);

LABEL_16:

LABEL_18:
    OUTLINED_FUNCTION_30_1();
    (*(v57 + 416))(v56);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1E3B85314()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_144_0();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v9, v2);
  sub_1E327F454(v1, v32);

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_49_0();
    v31 = OUTLINED_FUNCTION_72_0();
    *v12 = 136315394;
    type metadata accessor for LibMenuItem();
    v13 = OUTLINED_FUNCTION_22_53();
    v14 = MEMORY[0x1E6910C30](v13);
    sub_1E3270FC8(v14, v15, &v31);
    v29 = v1;
    OUTLINED_FUNCTION_12_1();

    *(v12 + 4) = v1;
    *(v12 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    OUTLINED_FUNCTION_33();
    v16 = OUTLINED_FUNCTION_114_0();
    v18 = v17(v16);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v19 = OUTLINED_FUNCTION_32_0();
    sub_1E3270FC8(v19, v20, v21);
    OUTLINED_FUNCTION_12_1();

    *(v12 + 14) = v18;
    v1 = v29;
    _os_log_impl(&dword_1E323F000, v10, v11, "LibDataSourceManager:: receive menus %s from %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v4 + 8))(v8, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_17:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v23 = Strong;
  sub_1E3B7BA30();
  sub_1E3B80F1C();
  if ((*(*v23 + 408))())
  {

LABEL_14:
    sub_1E327F454(v1, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    OUTLINED_FUNCTION_9_5();
    type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_102_0())
    {
      OUTLINED_FUNCTION_21();
      (*(v28 + 224))();
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_12_6();
  v25 = (*(v24 + 456))();
  if (!sub_1E32AE9B0(v25))
  {

    v26 = 0;
    goto LABEL_13;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1E6911E60](0, v25);
    goto LABEL_11;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v25 + 32);

LABEL_11:

LABEL_13:
    OUTLINED_FUNCTION_12_6();
    (*(v27 + 416))(v26);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1E3B85708(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E32AE9B0(a2);
  for (i = 0; v4 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_39_3();
      v6 = MEMORY[0x1E6911E60](v8);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v6 = *(a2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    v7 = *(v6 + 72) == *(a1 + 72) && *(v6 + 80) == *(a1 + 80);
    if (v7 || (sub_1E42079A4() & 1) != 0)
    {
      v9 = *(v6 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier) == *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier) && *(v6 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8) == *(a1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
      if (!v9 && (sub_1E42079A4() & 1) == 0)
      {
LABEL_31:

        return;
      }

      OUTLINED_FUNCTION_8();
      v11 = (*(v10 + 288))();
      if (!v11)
      {
        return;
      }

      v12 = v11;
      v13 = sub_1E32AE9B0(v11);
      if (!v13)
      {
LABEL_29:

        return;
      }

      v14 = v13;
      v15 = 0;
      OUTLINED_FUNCTION_111();
      v22 = *(v16 + 288);
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = OUTLINED_FUNCTION_39_3();
          v18 = MEMORY[0x1E6911E60](v17);
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v18 = OUTLINED_FUNCTION_88_9();
        }

        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_35;
        }

        v22(v18);
        v20 = OUTLINED_FUNCTION_146();
        v21 = sub_1E3B85708(v20);

        if (!v21)
        {

          goto LABEL_31;
        }

        ++v15;
        if (v19 == v14)
        {
          goto LABEL_29;
        }
      }
    }
  }
}

void sub_1E3B8593C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v101 = v2;
  v3 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v8 - v7);
  v100 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v98 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v12 - v11);
  v13 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v93 - v22;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    if (v1)
    {
      sub_1E324FBDC();
      v26 = OUTLINED_FUNCTION_101();
      v27(v26);
      v28 = v1;
      v29 = sub_1E41FFC94();
      v30 = sub_1E42067F4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v13;
        v32 = OUTLINED_FUNCTION_6_21();
        v33 = OUTLINED_FUNCTION_160();
        *v32 = 138412290;
        v34 = v1;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_1E323F000, v29, v30, "LibDataSourceManager:: error fetching family members: %@", v32, 0xCu);
        sub_1E325F7A8(v33, &unk_1ECF28E30);
        OUTLINED_FUNCTION_6_0();
        v13 = v31;
        OUTLINED_FUNCTION_6_0();
      }

      (*(v15 + 8))(v19, v13);
      OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch);
    }

    else
    {
      v93[0] = v5;
      v93[1] = v3;
      v36 = MEMORY[0x1E69E7CD0];
      v104 = MEMORY[0x1E69E7CD0];
      OUTLINED_FUNCTION_111();
      v38 = *(v37 + 696);
      v95 = v25;
      v39 = v38();
      v40 = *(v39 + 16);
      if (v40)
      {
        v94 = v13;
        do
        {
          sub_1E327F454(v39 + 32, v105);
          sub_1E327F454(v105, v102);
          v41 = OUTLINED_FUNCTION_146();
          __swift_instantiateConcreteTypeFromMangledNameV2(v41);
          OUTLINED_FUNCTION_106();
          type metadata accessor for LibFamilySharingSource();
          OUTLINED_FUNCTION_95_8();
          if (OUTLINED_FUNCTION_90_0())
          {

            v43 = v105[3];
            v42 = v105[4];
            __swift_project_boxed_opaque_existential_1(v105, v105[3]);
            OUTLINED_FUNCTION_33();
            v45 = v44(v43, v42);
            sub_1E3277398(v102, v45, v46);
          }

          OUTLINED_FUNCTION_120_4(v105);
          --v40;
        }

        while (v40);

        v13 = v94;
        v36 = MEMORY[0x1E69E7CD0];
      }

      else
      {
      }

      OUTLINED_FUNCTION_4_0();
      v47 = swift_allocObject();
      v94 = v47;
      *(v47 + 16) = v36;
      v48 = (v47 + 16);
      v49 = MEMORY[0x1E69E7CC0];
      v103 = MEMORY[0x1E69E7CC0];
      v50 = v101;
      v51 = *(v101 + 16);
      if (v51)
      {
        v52 = v13;
        type metadata accessor for LibFamilySharingSource();
        v53 = (v50 + 32);
        do
        {
          memcpy(v105, v53, 0x58uLL);
          sub_1E3B8B218(v105, v102);
          v54 = sub_1E3F5D6D0();

          MEMORY[0x1E6910BF0](v55);
          v56 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v56 >> 1)
          {
            OUTLINED_FUNCTION_35(v56);
            sub_1E42062F4();
          }

          v57 = sub_1E4206324();
          v49 = v103;
          v58 = (*(*v54 + 144))(v57);
          sub_1E3277398(v102, v58, v59);

          v53 += 88;
          --v51;
        }

        while (v51);
        v13 = v52;
      }

      v60 = sub_1E324FBDC();
      v61 = v13;
      v101 = *(v15 + 16);
      (v101)(v23, v60, v13);
      v62 = sub_1E41FFC94();
      v63 = sub_1E4206814();
      if (OUTLINED_FUNCTION_104(v63))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        OUTLINED_FUNCTION_55();
      }

      v69 = *(v15 + 8);
      v69(v23, v61);
      v70 = v104;
      v71 = *v48;

      v72 = sub_1E3868C04(v70, v71);

      if (v72)
      {

        v73 = v96;
        v74 = OUTLINED_FUNCTION_8_6();
        (v101)(v74);
        v75 = sub_1E41FFC94();
        v76 = sub_1E4206814();
        if (OUTLINED_FUNCTION_104(v76))
        {
          v77 = OUTLINED_FUNCTION_125_0();
          *v77 = 0;
          _os_log_impl(&dword_1E323F000, v75, v76, "LibDataSourceManager:: family memebers list is the same as existing, no need to update", v77, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v69(v73, v61);
      }

      else
      {
        v78 = sub_1E3280A90(0, &qword_1EE23B1D0);
        v79 = sub_1E4206A04();
        OUTLINED_FUNCTION_4_0();
        v80 = swift_allocObject();
        OUTLINED_FUNCTION_105_2(v80);
        swift_weakInit();
        v81 = swift_allocObject();
        v81[2] = v78;
        v81[3] = v49;
        v81[4] = v94;
        v102[4] = sub_1E3B8B274;
        v102[5] = v81;
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v102[2] = v82;
        v102[3] = &block_descriptor_75_0;
        v83 = _Block_copy(v102);

        v84 = v97;
        sub_1E4203FE4();
        v102[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_131();
        sub_1E3B8B148(v85, v86);
        v87 = OUTLINED_FUNCTION_97_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v87);
        OUTLINED_FUNCTION_47();
        sub_1E328FCF4(v88, v89);
        v90 = v99;
        OUTLINED_FUNCTION_155_4();
        MEMORY[0x1E6911380](0, v84, v90, v83);
        _Block_release(v83);

        OUTLINED_FUNCTION_15_5();
        v91(v90, &unk_1E429B000);
        OUTLINED_FUNCTION_15_5();
        v92(v84, v100);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B8621C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  OUTLINED_FUNCTION_144_0();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_5_0();
  if (swift_weakLoadStrong())
  {
    v7 = sub_1E3B86680(v2);
    sub_1E3B868A4(v7);

    sub_1E4200524();

    sub_1E324FBDC();
    v8 = OUTLINED_FUNCTION_78_11();
    v9(v8);

    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();

    if (os_log_type_enabled(v10, v11))
    {
      v23 = v3;
      v12 = OUTLINED_FUNCTION_6_21();
      v13 = OUTLINED_FUNCTION_100();
      v24 = v13;
      *v12 = 136315138;
      OUTLINED_FUNCTION_5_0();

      v14 = sub_1E4206634();
      v16 = v15;

      v17 = sub_1E3270FC8(v14, v16, &v24);

      *(v12 + 4) = v17;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      (*(v5 + 8))(v0, v23);
    }

    else
    {

      (*(v5 + 8))(v0, v3);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3B86460(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1E3B72E58(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v21;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = type metadata accessor for LibHomeSharingSource();
      v19 = v8;
      v9 = sub_1E3B8B148(&qword_1ECF341A8, type metadata accessor for LibHomeSharingSource);
      v20 = v9;
      v21 = v3;
      v18[0] = v7;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1E3B72E58((v10 > 1), v11 + 1, 1);
        v8 = v19;
        v12 = v20;
      }

      else
      {
        v12 = v9;
      }

      ++v5;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
      v14 = MEMORY[0x1EEE9AC00](v13);
      v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      sub_1E3B8AB08(v11, v16, &v21, v8, v12);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v3 = v21;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1E3B86680(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1E3B72E58(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = type metadata accessor for LibFamilySharingSource();
      v18 = v7;
      v8 = sub_1E3B8B148(&qword_1ECF341A0, type metadata accessor for LibFamilySharingSource);
      v19 = v8;
      v20 = v3;
      v17[0] = v6;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1E3B72E58((v9 > 1), v10 + 1, 1);
        v7 = v18;
        v11 = v19;
      }

      else
      {
        v11 = v8;
      }

      ++v5;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v7);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15, v13);
      sub_1E3B8AB08(v10, v15, &v20, v7, v11);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v3 = v20;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E3B868A4(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 696))();
  v18 = v3;
  v4 = v3[2];
  v5 = (v3 + 4);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      sub_1E3B86AE8(v8);
      v3 = v18;
LABEL_16:
      *&v17[0] = MEMORY[0x1E69E7CD0];
      sub_1E3B7F194(v3);

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_164_2();
      sub_1E3B7CF98();
      OUTLINED_FUNCTION_9_2();
      (*(v14 + 456))();
      sub_1E3B80F1C();

      return;
    }

    if (i >= v3[2])
    {
      __break(1u);
      goto LABEL_18;
    }

    sub_1E327F454(v5, v17);
    sub_1E37DADF4(v17, v16);
    v7 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    type metadata accessor for LibHomeSharingSource();
    if (swift_dynamicCast())
    {
      break;
    }

    v5 += 40;
  }

  v9 = v3[2];
  if (v9 < i)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(a1 + 16);
  v11 = v9 + v10;
  if (!__OFADD__(v9, v10))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v3;
    if (!isUniquelyReferenced_nonNull_native || v11 > v3[3] >> 1)
    {
      if (v9 <= v11)
      {
        v13 = v9 + v10;
      }

      else
      {
        v13 = v9;
      }

      v3 = sub_1E3B890A0(isUniquelyReferenced_nonNull_native, v13, 1, v3);
      v18 = v3;
    }

    sub_1E3B8A9E0(i, i, v10, a1);
    v18 = v3;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
}

int64_t sub_1E3B86AE8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3B8A798(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E3B86BC4()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_131_0();
  v2(v0);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v10 = OUTLINED_FUNCTION_57();
  v11(v10);
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3B86D0C();
  }

  return result;
}

void sub_1E3B86D0C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  if ([objc_opt_self() isStoreOrPressDemoMode])
  {
LABEL_14:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v11 = sub_1E41A3110();
  v39 = *(v3 + 16);
  v40 = v3 + 16;
  v39(v10, v11, v1);
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  v14 = &selRef_setWaitingForTransactionToStart_;
  if (os_log_type_enabled(v12, v13))
  {
    v37 = v7;
    v38 = v3;
    v15 = OUTLINED_FUNCTION_6_21();
    v16 = OUTLINED_FUNCTION_100();
    v41 = v16;
    *v15 = 136315138;
    v17 = [objc_opt_self() sharedCloudController];
    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = v17;
    sub_1E3B88E3C();

    v19 = OUTLINED_FUNCTION_75();
    v22 = sub_1E3270FC8(v19, v20, v21);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_1E323F000, v12, v13, "LibDataSourceManager:: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v23 = *(v38 + 8);
    v24 = OUTLINED_FUNCTION_8_6();
    v23(v24);
    v7 = v37;
    v14 = &selRef_setWaitingForTransactionToStart_;
  }

  else
  {

    v23 = *(v3 + 8);
    v25 = OUTLINED_FUNCTION_8_6();
    v23(v25);
  }

  v26 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress;
  v27 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress);
  v28 = [objc_opt_self() v14[61]];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1E3B7E03C();

    *(v0 + v26) = v30 & 1;
    if ((v30 & 1) == 0 && ((v27 ^ 1) & 1) == 0)
    {
      OUTLINED_FUNCTION_111();
      if ((*(v31 + 848))())
      {
        v32 = sub_1E324FBDC();
        v39(v7, v32, v1);
        v33 = sub_1E41FFC94();
        v34 = sub_1E4206814();
        if (OUTLINED_FUNCTION_104(v34))
        {
          v35 = OUTLINED_FUNCTION_125_0();
          *v35 = 0;
          _os_log_impl(&dword_1E323F000, v33, v34, "LibDataSourceManager:: refetch local source since it finish updating", v35, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (v23)(v7, v1);
        sub_1E3B7E10C();
      }
    }

    sub_1E3B7E074(*(v0 + v26));
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1E3B87054()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 isNetworkReachable];

  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v10 = sub_1E41FF1E4();

    if (v10)
    {
LABEL_3:
      sub_1E3B874A4();
      if (v11)
      {
        OUTLINED_FUNCTION_111();
        (*(v12 + 272))(1);
      }

      else
      {
        sub_1E3B835EC();
      }

LABEL_32:
      LOBYTE(v30[0]) = 11;

      sub_1E4200524();

      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else if (v9)
  {
    goto LABEL_3;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_131_0();
  v13(v1);
  v14 = sub_1E41FFC94();
  v15 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v15))
  {
    v16 = OUTLINED_FUNCTION_160();
    *v16 = 67109120;
    _os_log_impl(&dword_1E323F000, v14, v15, "LibDataSourceManager:: will not update home sharing lib with network reachable status: %{BOOL}d", v16, 8u);
    OUTLINED_FUNCTION_21_0();
  }

  (*(v6 + 8))(v1, v4);
  v17 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_130_7();
  while (1)
  {
    if (v3 == v4)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_94_9();
    if (v18)
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_1E327F454(&v14[-5] + v2, v30);
    sub_1E37DADF4(v30, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    OUTLINED_FUNCTION_144_0();
    type metadata accessor for LibHomeSharingSource();
    if (OUTLINED_FUNCTION_84_10())
    {
      break;
    }

    ++v4;
    v2 += 40;
  }

  v19 = (v4 + 1);
  OUTLINED_FUNCTION_132_5();
  if (v21 == v4)
  {
LABEL_31:
    v25 = OUTLINED_FUNCTION_35_5();
    sub_1E3B8A8D4(v25, v26);
    swift_endAccess();
    sub_1E3B7CF98();
    OUTLINED_FUNCTION_9_2();
    (*(v27 + 456))();
    sub_1E3B80F1C();

    goto LABEL_32;
  }

  while (v19 < v20)
  {
    sub_1E327F454(v14 + v2, v30);
    sub_1E37DADF4(v30, v29);
    if (OUTLINED_FUNCTION_84_10())
    {
    }

    else
    {
      if (v19 != v4)
      {
        if (v4 < 0)
        {
          goto LABEL_35;
        }

        isa = v14[2].isa;
        if (v4 >= isa)
        {
          goto LABEL_36;
        }

        sub_1E327F454(&v14[5 * v4 + 4], v30);
        if (v19 >= isa)
        {
          goto LABEL_37;
        }

        sub_1E327F454(v14 + v2, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + v17) = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          *(v0 + v17) = OUTLINED_FUNCTION_166_2();
        }

        OUTLINED_FUNCTION_94_9();
        if (v18)
        {
          goto LABEL_38;
        }

        v24 = &v14[5 * v4];
        __swift_destroy_boxed_opaque_existential_1(&v24[4]);
        sub_1E37DADF4(v29, &v24[4]);
        *(v0 + v17) = v14;
        if (v19 >= v14[2].isa)
        {
          goto LABEL_39;
        }

        __swift_destroy_boxed_opaque_existential_1(v14 + v2);
        sub_1E37DADF4(v30, v14 + v2);
        *(v0 + v17) = v14;
      }

      ++v4;
    }

    v19 = (v19 + 1);
    v20 = v14[2].isa;
    v2 += 40;
    if (v19 == v20)
    {
      if (v19 < v4)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1E3B874A4()
{
  v4 = objc_opt_self();
  v5 = sub_1E3B8A800(v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  (*(*v0 + 672))();
  OUTLINED_FUNCTION_7_126();
  while (1)
  {
    if (v3 == v2)
    {

      v20 = 0;
      memset(v19, 0, sizeof(v19));
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_68_18();
    if (v7)
    {
      __break(1u);
      return;
    }

    sub_1E327F454(v1, v18);
    sub_1E327F454(v18, v19);
    v8 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8);
    OUTLINED_FUNCTION_247();
    type metadata accessor for LibHomeSharingSource();
    if (OUTLINED_FUNCTION_115_3())
    {
      break;
    }

    ++v2;
    OUTLINED_FUNCTION_120_4(v18);
  }

  sub_1E37DADF4(v18, v19);
LABEL_11:
  sub_1E3B891D8(v19, v17);
  if (v17[3])
  {
    v9 = OUTLINED_FUNCTION_97_10();
    v11 = sub_1E37DADF4(v9, v10);
    MEMORY[0x1EEE9AC00](v11);
    v16[2] = v18;
    sub_1E3B805A8(sub_1E3B8B290, v16, v6);

    sub_1E325F7A8(v19, &unk_1ECF2A740);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F7A8(v12, v13);

    OUTLINED_FUNCTION_82();
    sub_1E325F7A8(v14, v15);
  }
}

void sub_1E3B876D0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E324FBDC();
  v3 = OUTLINED_FUNCTION_78_11();
  v4(v3);

  v5 = sub_1E41FFC94();
  v6 = sub_1E4206814();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_49_0();
    v23 = OUTLINED_FUNCTION_72_0();
    *v7 = 136315394;
    (*(*v0 + 456))();
    OUTLINED_FUNCTION_106();
    type metadata accessor for LibMenuItem();
    v8 = OUTLINED_FUNCTION_20_2();
    v9 = MEMORY[0x1E6910C30](v8);
    v11 = v10;

    v12 = sub_1E3270FC8(v9, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v14 = (*(*v1 + 696))(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    v15 = OUTLINED_FUNCTION_20_2();
    v16 = MEMORY[0x1E6910C30](v15);
    v18 = v17;

    sub_1E3270FC8(v16, v18, &v23);
    OUTLINED_FUNCTION_10_23();

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1E323F000, v5, v6, "LibDataSourceManager: appWillEnterForeground, resolved menus %s, sources %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  v19 = OUTLINED_FUNCTION_13_8();
  v20(v19);
  v21 = [objc_opt_self() sharedCloudController];
  if (v21)
  {
    v22 = v21;
    [v21 becomeActive];

    [objc_opt_self() beginDiscoveringMediaLibraries];
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B879B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_1E3B879F8()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_101();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, v4, "LibDataSourceManager: appDidEnterBackground", v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v6 = OUTLINED_FUNCTION_16_0();
  v7(v6);
  [objc_opt_self() endDiscoveringMediaLibraries];
  v8 = [objc_opt_self() sharedCloudController];
  if (v8)
  {
    v9 = v8;
    [v8 resignActive];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3B87BA8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v9(v0);
    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();
    if (os_log_type_enabled(v10, v11))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v17 = v5 + 8;
    v18 = OUTLINED_FUNCTION_57();
    v19(v18);
    OUTLINED_FUNCTION_9_2();
    v21 = v8;
    (*(v20 + 696))();
    OUTLINED_FUNCTION_7_126();
    v22 = &unk_1ECF3B640;
    while (1)
    {
      if (v1 == v17)
      {

        goto LABEL_11;
      }

      OUTLINED_FUNCTION_68_18();
      if (v23)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      sub_1E327F454(v3, v43);
      v24 = OUTLINED_FUNCTION_97_10();
      sub_1E327F454(v24, v25);
      v26 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v26);
      OUTLINED_FUNCTION_247();
      type metadata accessor for LibLocalSource();
      OUTLINED_FUNCTION_95_8();
      if (OUTLINED_FUNCTION_115_3())
      {
        break;
      }

      ++v17;
      OUTLINED_FUNCTION_120_4(v43);
    }

    v27 = OUTLINED_FUNCTION_97_10();
    sub_1E37DADF4(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8);
    v29 = OUTLINED_FUNCTION_26_11();
    *(v29 + 16) = xmmword_1E4297BE0;
    sub_1E327F454(v44, v29 + 32);
    v3 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_164_2();
    v21 = v8;
    sub_1E3B7CC30();
    OUTLINED_FUNCTION_9_2();
    (*(v30 + 464))(MEMORY[0x1E69E7CC0]);
    __swift_destroy_boxed_opaque_existential_1(v44);
LABEL_11:
    v41 = [objc_opt_self() userHasActiveAccount];
    v31 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_142_6();
    while (1)
    {
      if (v3 == v22)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_93_6();
      if (v23)
      {
        goto LABEL_39;
      }

      sub_1E327F454(v21 + v2 - 40, v44);
      OUTLINED_FUNCTION_162_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
      OUTLINED_FUNCTION_11_14();
      type metadata accessor for LibFamilySharingSource();
      OUTLINED_FUNCTION_43_36();
      if (OUTLINED_FUNCTION_122_4())
      {
        break;
      }

      ++v22;
      v2 += 40;
    }

    v32 = (v22 + 1);
    OUTLINED_FUNCTION_132_5();
    if (v34 == v22)
    {
LABEL_34:
      v39 = OUTLINED_FUNCTION_125();
      sub_1E3B8A8D4(v39, v40);
      swift_endAccess();
      sub_1E3B7CF98();
      if (v41)
      {
        sub_1E3B7E5C0();
      }

      sub_1E3B7E10C();

      goto LABEL_37;
    }

    while (v32 < v33)
    {
      sub_1E327F454(v21 + v2, v44);
      OUTLINED_FUNCTION_162_4();
      OUTLINED_FUNCTION_43_36();
      if (OUTLINED_FUNCTION_122_4())
      {
      }

      else
      {
        if (v32 != v22)
        {
          if (v22 < 0)
          {
            goto LABEL_41;
          }

          v35 = *(v21 + 16);
          if (v22 >= v35)
          {
            goto LABEL_42;
          }

          sub_1E327F454(v21 + 32 + 40 * v22, v44);
          if (v32 >= v35)
          {
            goto LABEL_43;
          }

          sub_1E327F454(v21 + v2, v43);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + v31) = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *(v8 + v31) = OUTLINED_FUNCTION_166_2();
          }

          OUTLINED_FUNCTION_93_6();
          if (v23)
          {
            goto LABEL_44;
          }

          v37 = v21 + 40 * v22;
          __swift_destroy_boxed_opaque_existential_1(v37 + 32);
          sub_1E37DADF4(v43, v37 + 32);
          *(v8 + v31) = v21;
          if (v32 >= *(v21 + 16))
          {
            goto LABEL_45;
          }

          __swift_destroy_boxed_opaque_existential_1(v21 + v2);
          sub_1E37DADF4(v44, v21 + v2);
          *(v8 + v31) = v21;
        }

        ++v22;
      }

      OUTLINED_FUNCTION_139_4();
      if (v38)
      {
        if (v32 < v22)
        {
          goto LABEL_46;
        }

        goto LABEL_34;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_37:
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3B88060()
{

  OUTLINED_FUNCTION_13_8();
  sub_1E3B880B0();
}

void sub_1E3B880B0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v22 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v10 = sub_1E3280A90(0, &qword_1EE23B1D0);
  v11 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v12);
  swift_weakInit();
  v23[4] = v5;
  v23[5] = v10;
  OUTLINED_FUNCTION_12_0();
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v23[2] = v13;
  v23[3] = v3;
  v14 = _Block_copy(v23);

  sub_1E4203FE4();
  v23[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_131();
  sub_1E3B8B148(v15, v16);
  v17 = OUTLINED_FUNCTION_146_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v18, v19);
  OUTLINED_FUNCTION_158_4();
  MEMORY[0x1E6911380](0, v1, v0, v14);
  _Block_release(v14);

  v20 = OUTLINED_FUNCTION_11_6();
  v21(v20);
  (*(v8 + 8))(v1, v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B882F0()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v43 = v1;
    OUTLINED_FUNCTION_26_0();
    v8 = (*(v7 + 696))();
    v9 = 0;
    v10 = *(v8 + 16);
    for (i = v8 + 32; ; i += 40)
    {
      if (v10 == v9)
      {

        goto LABEL_9;
      }

      if (v9 >= *(v8 + 16))
      {
        break;
      }

      sub_1E327F454(i, v46);
      v12 = OUTLINED_FUNCTION_97_10();
      sub_1E327F454(v12, v13);
      v14 = OUTLINED_FUNCTION_146();
      __swift_instantiateConcreteTypeFromMangledNameV2(v14);
      type metadata accessor for LibLocalSource();
      OUTLINED_FUNCTION_95_8();
      if (swift_dynamicCast())
      {

        v15 = OUTLINED_FUNCTION_97_10();
        sub_1E37DADF4(v15, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8);
        v17 = OUTLINED_FUNCTION_26_11();
        *(v17 + 16) = xmmword_1E4297BE0;
        sub_1E327F454(v47, v17 + 32);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_164_2();
        sub_1E3B7CC30();
        OUTLINED_FUNCTION_9_2();
        (*(v18 + 464))(MEMORY[0x1E69E7CC0]);
        __swift_destroy_boxed_opaque_existential_1(v47);
LABEL_9:
        v19 = [objc_opt_self() isRemoteServerConnected];
        v20 = sub_1E324FBDC();
        (*(v3 + 16))(v0, v20, v43);
        v21 = sub_1E41FFC94();
        v22 = sub_1E4206814();
        if (OUTLINED_FUNCTION_104(v22))
        {
          v23 = OUTLINED_FUNCTION_160();
          *v23 = 67109120;
          v23[1] = v19;
          OUTLINED_FUNCTION_36_4();
          _os_log_impl(v24, v25, v26, v27, v28, 8u);
          OUTLINED_FUNCTION_55();
        }

        v30 = *(v3 + 8);
        v29 = v3 + 8;
        v30(v0, v43);
        v31 = v19 ^ 1;
        (*(*v6 + 320))(v31);
        if ((v31 & 1) == 0)
        {
          if (*(v6 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch) == 1)
          {
            sub_1E3B7E5C0();
          }

          [v6 handleHomeSharingUpdates];
LABEL_37:
          sub_1E3B7E10C();

          goto LABEL_38;
        }

        OUTLINED_FUNCTION_111();
        (*(v32 + 464))(MEMORY[0x1E69E7CC0]);
        v33 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
        OUTLINED_FUNCTION_11_3();
        OUTLINED_FUNCTION_130_7();
        while (1)
        {
          if (v9 == v31)
          {
            goto LABEL_36;
          }

          OUTLINED_FUNCTION_94_9();
          if (v34)
          {
            goto LABEL_40;
          }

          sub_1E327F454(v6 + v29 - 40, v47);
          OUTLINED_FUNCTION_162_4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
          OUTLINED_FUNCTION_11_14();
          type metadata accessor for LibLocalSource();
          OUTLINED_FUNCTION_43_36();
          if (!OUTLINED_FUNCTION_84_10())
          {
            break;
          }

          ++v31;
          v29 += 40;
        }

        v35 = v31 + 1;
        OUTLINED_FUNCTION_132_5();
        if (v37 == v31)
        {
LABEL_36:
          v41 = OUTLINED_FUNCTION_34();
          sub_1E3B8A8D4(v41, v42);
          swift_endAccess();
          sub_1E3B7CF98();
          LOBYTE(v47[0]) = 12;

          sub_1E4200524();

          OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch);
          LOBYTE(v47[0]) = 11;

          sub_1E4200524();

          goto LABEL_37;
        }

        while (v35 < v36)
        {
          sub_1E327F454(v6 + v29, v47);
          OUTLINED_FUNCTION_162_4();
          OUTLINED_FUNCTION_43_36();
          if (OUTLINED_FUNCTION_84_10())
          {

            if (v35 != v31)
            {
              if ((v31 & 0x8000000000000000) != 0)
              {
                goto LABEL_42;
              }

              v38 = v6[2];
              if (v31 >= v38)
              {
                goto LABEL_43;
              }

              sub_1E327F454(&v6[5 * v31 + 4], v47);
              if (v35 >= v38)
              {
                goto LABEL_44;
              }

              sub_1E327F454(v6 + v29, v46);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v6 + v33) = v6;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                *(v6 + v33) = OUTLINED_FUNCTION_166_2();
              }

              OUTLINED_FUNCTION_94_9();
              if (v34)
              {
                goto LABEL_45;
              }

              v40 = &v6[5 * v31];
              __swift_destroy_boxed_opaque_existential_1((v40 + 4));
              sub_1E37DADF4(v46, (v40 + 4));
              *(v6 + v33) = v6;
              OUTLINED_FUNCTION_93_6();
              if (v34)
              {
                goto LABEL_46;
              }

              __swift_destroy_boxed_opaque_existential_1(v6 + v29);
              sub_1E37DADF4(v47, v6 + v29);
              *(v6 + v33) = v6;
            }

            ++v31;
          }

          ++v35;
          v36 = v6[2];
          v29 += 40;
          if (v35 == v36)
          {
            if (v35 < v31)
            {
              goto LABEL_47;
            }

            goto LABEL_36;
          }
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      ++v9;
      __swift_destroy_boxed_opaque_existential_1(v46);
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_38:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B888D0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v28 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v11 = OUTLINED_FUNCTION_101();
  v12(v11);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_125_0();
    *v15 = 0;
    _os_log_impl(&dword_1E323F000, v13, v14, "LibDataSourceManager: handleFamilyChange", v15, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v0, v7);
  v16 = sub_1E3280A90(0, &qword_1EE23B1D0);
  v17 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v18);
  swift_weakInit();
  v29[4] = sub_1E3B8AD70;
  v29[5] = v16;
  OUTLINED_FUNCTION_12_0();
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v29[2] = v19;
  v29[3] = &block_descriptor_69;
  v20 = _Block_copy(v29);

  sub_1E4203FE4();
  v29[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_131();
  sub_1E3B8B148(v21, v22);
  v23 = OUTLINED_FUNCTION_146_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v24, v25);
  OUTLINED_FUNCTION_158_4();
  MEMORY[0x1E6911380](0, v2, v1, v20);
  _Block_release(v20);

  v26 = OUTLINED_FUNCTION_13_8();
  v27(v26);
  (*(v5 + 8))(v2, v28);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B88C54()
{
  v0 = objc_opt_self();
  if ([v0 isLibraryOnlyCountry])
  {
    [v0 isLibraryOnlyCountryResolved];
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 512);

  return v2();
}

uint64_t sub_1E3B88DA0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E3B8A784(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[5 * a1];
    sub_1E37DADF4(v8 + 2, a2);
    result = memmove(v8 + 2, v8 + 72, 40 * (v7 - 1 - a1));
    v5[2] = v7 - 1;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E3B88E3C()
{
  sub_1E42074B4();
  OUTLINED_FUNCTION_151_5();
  MEMORY[0x1E69109E0]();
  v1 = [v0 isInitialImport];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v3, v4);

  OUTLINED_FUNCTION_151_5();
  MEMORY[0x1E69109E0](0xD000000000000016);
  v5 = [v0 isUpdateInProgress];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v7, v8);

  OUTLINED_FUNCTION_151_5();
  MEMORY[0x1E69109E0]();
  v9 = [v0 isJaliscoInitialImport];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v11, v12);

  OUTLINED_FUNCTION_151_5();
  MEMORY[0x1E69109E0]();
  v13 = [v0 isJaliscoUpdateInProgress];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v15, v16);

  return 0;
}

uint64_t sub_1E3B88FE4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for LibMenuItem();
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1E3B89040()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1E3B890A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3B891D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B89248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1E3B892B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1E37FEA14(*(a1 + 16), 0);
  v4 = sub_1E39E6CC0(&v6, v3 + 4, v1, a1);

  sub_1E34AF4DC();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E3B89374(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1E34AF5E0(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1E3B89418(v8, a2);
  sub_1E4207554();
}

uint64_t sub_1E3B89418(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  swift_retain_n();
  result = sub_1E4207914();
  if (result < v5)
  {
    v7 = result;
    v8 = sub_1E3B88FE4(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);

    result = sub_1E3B89744(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1E3B89544(0, v5, 1, a1, a2);
  }
}

uint64_t sub_1E3B89544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v30 = (a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v31 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = a1 - a3;
    while (2)
    {
      v28 = v5;
      v29 = a3;
      v7 = *(v31 + 8 * a3);
      v27 = v6;
      do
      {
        v8 = *v5;
        v10 = *(v7 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
        v9 = *(v7 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
        v11 = (*v5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
        v12 = *v11;
        v13 = v11[1];
        v14 = v10 == *v11 && v9 == v13;
        if (v14 || (sub_1E42079A4() & 1) != 0)
        {
          goto LABEL_9;
        }

        v22 = v30[1];
        if (v10 == *v30 && v9 == v22)
        {
          break;
        }

        v24 = *v30;
        result = sub_1E42079A4();
        if (result)
        {
          break;
        }

        if (v12 != v24 || v13 != v22)
        {
          result = sub_1E42079A4();
          if ((result & 1) == 0)
          {
LABEL_9:
            v15 = *(*v7 + 224);

            v17 = v15(v16);
            v18 = (*(*v8 + 224))();

            if (v17 >= v18)
            {
              break;
            }
          }
        }

        if (!v31)
        {
          __break(1u);
          return result;
        }

        v20 = *v5;
        v7 = v5[1];
        *v5 = v7;
        v5[1] = v20;
        --v5;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v29 + 1;
      v5 = v28 + 1;
      v6 = v27 - 1;
      if (v29 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1E3B89744(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    swift_retain_n();
    v7 = MEMORY[0x1E69E7CC0];
LABEL_146:
    v148 = *a1;
    if (!*a1)
    {
      goto LABEL_190;
    }

    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_148;
    }

    goto LABEL_184;
  }

  v142 = (a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  swift_retain_n();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    v132 = v6;
    if (v6 + 1 >= v5)
    {
      goto LABEL_47;
    }

    v148 = v5;
    v134 = v7;
    v10 = *a3;
    v143 = v6 + 1;
    v11 = *&(*a3)[8 * v6 + 8];
    v12 = *&(*a3)[8 * v6];
    v14 = *(v11 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v13 = *(v11 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    v7 = *(v12 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v15 = *(v12 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);

    v16 = v14 == v7 && v13 == v15;
    if (v16 || (sub_1E42079A4() & 1) != 0)
    {
      goto LABEL_9;
    }

    v114 = *(a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v115 = *(a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    if (v14 == v114 && v13 == v115)
    {
      v138 = 0;
    }

    else
    {
      if ((sub_1E42079A4() & 1) == 0)
      {
        v117 = v7 == v114 && v15 == v115;
        if (v117 || (sub_1E42079A4() & 1) != 0)
        {
          v18 = 1;
        }

        else
        {
LABEL_9:
          v17 = (*(*v11 + 224))();
          v7 = v12;
          v18 = v17 < (*(*v12 + 224))();
        }

        v138 = v18;
        goto LABEL_11;
      }

      v138 = 0;
    }

LABEL_11:
    if (v147)
    {
    }

    v19 = &v10[8 * v132 + 16];
    v20 = 8 * v132 + 8;
    v9 = v143;
    v21 = v5;
    while (1)
    {
      v144 = v9++;
      if (v9 >= v21)
      {
        break;
      }

      v22 = *(v19 - 1);
      v23 = *v19;
      v149 = v19;
      v24 = *(*v19 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v25 = *(*v19 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
      v7 = *(v22 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v26 = *(v22 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
      v27 = v24 == v7 && v25 == v26;
      if (v27 || (sub_1E42079A4() & 1) != 0)
      {
LABEL_19:
        v28 = *(*v23 + 224);

        v30 = v28(v29);
        v7 = (*(*v22 + 224))();

        v21 = v148;
        v31 = v149;
        if ((v138 ^ (v30 < v7)))
        {
          break;
        }

        goto LABEL_20;
      }

      v32 = *v142;
      v33 = v24 == *v142 && v25 == v142[1];
      if (v33 || (v34 = v142[1], (sub_1E42079A4() & 1) != 0))
      {
        v21 = v148;
        v31 = v149;
        if (v138)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v35 = v7 == v32 && v26 == v34;
        if (!v35 && (sub_1E42079A4() & 1) == 0)
        {
          goto LABEL_19;
        }

        v21 = v148;
        v31 = v149;
        if (!v138)
        {
          v9 = v144 + 1;
          goto LABEL_44;
        }
      }

LABEL_20:
      v19 = v31 + 8;
      v20 += 8;
    }

    if (!v138)
    {
LABEL_44:
      v7 = v134;
LABEL_45:
      v8 = v132;
      goto LABEL_47;
    }

LABEL_36:
    v36 = v144;
    v9 = v144 + 1;
    v37 = v132;
    if (v144 + 1 < v132)
    {
      goto LABEL_181;
    }

    if (v132 < v9)
    {
      v7 = v134;
      v38 = 8 * v132;
      do
      {
        if (v37 != v36)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_188;
          }

          v40 = *&v39[v38];
          *&v39[v38] = *&v39[v20];
          *&v39[v20] = v40;
        }

        ++v37;
        v20 -= 8;
        v38 += 8;
      }

      while (v37 < v36--);
      goto LABEL_45;
    }

    v7 = v134;
    v8 = v132;
LABEL_47:
    v42 = a3[1];
    if (v9 < v42)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_180;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_79:
    if (v9 < v8)
    {
      goto LABEL_179;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1E37FFF70(0, *(v7 + 16) + 1, 1, v7);
    }

    v66 = *(v7 + 16);
    v65 = *(v7 + 24);
    v67 = v66 + 1;
    v68 = v132;
    if (v66 >= v65 >> 1)
    {
      v118 = sub_1E37FFF70((v65 > 1), v66 + 1, 1, v7);
      v68 = v132;
      v7 = v118;
    }

    *(v7 + 16) = v67;
    v69 = (v7 + 32);
    v70 = (v7 + 32 + 16 * v66);
    *v70 = v68;
    v70[1] = v9;
    v151 = *a1;
    if (!*a1)
    {
      goto LABEL_189;
    }

    v146 = v9;
    if (v66)
    {
      v148 = (v7 + 32);
      while (1)
      {
        v71 = v67 - 1;
        v72 = &v69[16 * v67 - 16];
        v73 = (v7 + 16 * v67);
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v74 = *(v7 + 32);
          v75 = *(v7 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_100:
          if (v77)
          {
            goto LABEL_166;
          }

          v89 = *v73;
          v88 = v73[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_169;
          }

          v93 = *(v72 + 1);
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_172;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_174;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v67 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        if (v67 < 2)
        {
          goto LABEL_168;
        }

        v96 = *v73;
        v95 = v73[1];
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_115:
        if (v92)
        {
          goto LABEL_171;
        }

        v98 = *v72;
        v97 = *(v72 + 1);
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_173;
        }

        if (v99 < v91)
        {
          goto LABEL_129;
        }

LABEL_122:
        if (v71 - 1 >= v67)
        {
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v103 = *a3;
        if (!*a3)
        {
          goto LABEL_186;
        }

        v104 = v7;
        v105 = &v69[16 * v71 - 16];
        v106 = *v105;
        v107 = v71;
        v108 = &v69[16 * v71];
        v109 = *(v108 + 1);
        v110 = &v103[8 * *v105];
        v111 = &v103[8 * *v108];
        v112 = &v103[8 * v109];
        v7 = a5;

        sub_1E3B8A200(v110, v111, v112, v151, a5);
        if (v147)
        {
        }

        if (v109 < v106)
        {
          goto LABEL_161;
        }

        v113 = *(v104 + 16);
        if (v107 > v113)
        {
          goto LABEL_162;
        }

        *v105 = v106;
        *(v105 + 1) = v109;
        if (v107 >= v113)
        {
          goto LABEL_163;
        }

        v67 = v113 - 1;
        memmove(v108, v108 + 16, 16 * (v113 - 1 - v107));
        v7 = v104;
        *(v104 + 16) = v113 - 1;
        v69 = v148;
        if (v113 <= 2)
        {
          goto LABEL_129;
        }
      }

      v78 = &v69[16 * v67];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_164;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_165;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_167;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_170;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = *(v72 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_178;
        }

        if (v76 < v102)
        {
          v71 = v67 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_100;
    }

LABEL_129:
    v5 = a3[1];
    v6 = v146;
    if (v146 >= v5)
    {
      goto LABEL_146;
    }
  }

  v43 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_182;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v8)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    v7 = sub_1E37FFF5C(v7);
LABEL_148:
    v119 = (v7 + 16);
    v120 = *(v7 + 16);
    for (i = v7; ; v7 = i)
    {
      if (v120 < 2)
      {
      }

      v121 = *a3;
      if (!*a3)
      {
        goto LABEL_187;
      }

      v122 = (v7 + 16 * v120);
      v123 = *v122;
      v124 = v119;
      v125 = &v119[2 * v120];
      v7 = v125[1];
      v126 = &v121[8 * *v122];
      v127 = &v121[8 * *v125];
      v152 = &v121[8 * v7];

      sub_1E3B8A200(v126, v127, v152, v148, a5);
      if (v147)
      {
        break;
      }

      if (v7 < v123)
      {
        goto LABEL_175;
      }

      if (v120 - 2 >= *v124)
      {
        goto LABEL_176;
      }

      v119 = v124;
      *v122 = v123;
      v122[1] = v7;
      v128 = *v124 - v120;
      if (*v124 < v120)
      {
        goto LABEL_177;
      }

      v120 = *v124 - 1;
      memmove(v125, v125 + 2, 16 * v128);
      *v124 = v120;
    }
  }

  if (v9 == v43)
  {
    goto LABEL_79;
  }

  v135 = v7;
  v148 = *a3;
  v44 = &(*a3)[8 * v9 - 8];
  v45 = v8 - v9;
  v133 = v43;
LABEL_56:
  v145 = v9;
  v46 = *&v148[8 * v9];
  v137 = v45;
  v139 = v44;
  v47 = v45;
  v48 = v44;
  while (1)
  {
    v150 = v47;
    v49 = *v48;
    v50 = *(v46 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v51 = *(v46 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    v52 = (*v48 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v53 = *v52;
    v54 = v52[1];
    v55 = v50 == *v52 && v51 == v54;
    if (v55 || (sub_1E42079A4() & 1) != 0)
    {
      goto LABEL_62;
    }

    v61 = *v142;
    v62 = v142[1];
    v63 = v50 == *v142 && v51 == v62;
    if (v63 || (sub_1E42079A4() & 1) != 0)
    {
LABEL_77:
      v9 = v145 + 1;
      v44 = v139 + 8;
      v45 = v137 - 1;
      if ((v145 + 1) == v133)
      {
        v9 = v133;
        v7 = v135;
        v8 = v132;
        goto LABEL_79;
      }

      goto LABEL_56;
    }

    v64 = v53 == v61 && v54 == v62;
    if (!v64 && (sub_1E42079A4() & 1) == 0)
    {
LABEL_62:
      v56 = *(*v46 + 224);

      v58 = v56(v57);
      v59 = (*(*v49 + 224))();

      if (v58 >= v59)
      {
        goto LABEL_77;
      }
    }

    if (!v148)
    {
      break;
    }

    v60 = *v48;
    v46 = v48[1];
    *v48 = v46;
    v48[1] = v60;
    --v48;
    v47 = v150 + 1;
    if (v150 == -1)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_186:

  __break(1u);
LABEL_187:

  __break(1u);
LABEL_188:

  __break(1u);
LABEL_189:

  __break(1u);
LABEL_190:

  __break(1u);
  return result;
}

uint64_t sub_1E3B8A200(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = (__dst - __src) / 8;
  v10 = (a3 - __dst) / 8;
  if (v9 < v10)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v12 = &v5[8 * v9];
    v61 = (a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v63 = v12;
    v65 = v6;
    while (1)
    {
      if (v5 >= v12 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_68;
      }

      v67 = v8;
      v69 = v7;
      v14 = *v7;
      v15 = *v5;
      v16 = (*v7 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v17 = *v16;
      v18 = v16[1];
      v19 = (*v5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
      v20 = *v19;
      v21 = v19[1];
      v22 = *v16 == *v19 && v18 == v21;
      if (!v22 && (sub_1E42079A4() & 1) == 0)
      {
        v30 = *v61;
        v31 = v61[1];
        v32 = v17 == *v61 && v18 == v31;
        if (v32 || (sub_1E42079A4() & 1) != 0)
        {
          goto LABEL_24;
        }

        v33 = v20 == v30 && v21 == v31;
        if (v33 || (sub_1E42079A4() & 1) != 0)
        {
LABEL_18:
          v27 = v69;
          v7 = v69 + 8;
          v6 = v65;
          v28 = v67;
          v29 = v67 == v69;
          goto LABEL_25;
        }
      }

      v23 = *(*v14 + 224);

      v25 = v23(v24);
      v26 = (*(*v15 + 224))();

      if (v25 < v26)
      {
        goto LABEL_18;
      }

LABEL_24:
      v27 = v5;
      v6 = v65;
      v28 = v67;
      v29 = v67 == v5;
      v5 += 8;
      v7 = v69;
LABEL_25:
      v12 = v63;
      if (!v29)
      {
        *v28 = *v27;
      }

      v8 = v28 + 8;
    }
  }

  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v12 = &v5[8 * v10];
  v59 = (a5 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  v60 = v5;
  v68 = v8;
LABEL_40:
  v35 = (v7 - 8);
  v36 = v6 - 8;
  v70 = v7 - 8;
  v62 = v7;
  while (v12 > v5 && v7 > v8)
  {
    v64 = v12;
    v66 = v36;
    v39 = v12 - 8;
    v38 = *(v12 - 1);
    v40 = *v35;
    v42 = *(v38 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v41 = *(v38 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8);
    v43 = (*v35 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
    v44 = *v43;
    v45 = v43[1];
    v46 = v42 == *v43 && v41 == v45;
    if (!v46 && (sub_1E42079A4() & 1) == 0)
    {
      v51 = *v59;
      v52 = v59[1];
      v53 = v42 == *v59 && v41 == v52;
      if (v53 || (sub_1E42079A4() & 1) != 0)
      {
        goto LABEL_52;
      }

      v54 = v44 == v51 && v45 == v52;
      if (v54 || (sub_1E42079A4() & 1) != 0)
      {
LABEL_65:
        v6 = v66;
        v8 = v68;
        v5 = v60;
        v7 = v70;
        v12 = v64;
        if (v66 + 8 != v62)
        {
          *v66 = *v70;
        }

        goto LABEL_40;
      }
    }

    v47 = *(*v38 + 224);

    v49 = v47(v48);
    v50 = (*(*v40 + 224))();

    if (v49 < v50)
    {
      goto LABEL_65;
    }

LABEL_52:
    if (v64 != v66 + 8)
    {
      *v66 = *v39;
    }

    v36 = v66 - 8;
    v12 = v39;
    v5 = v60;
    v7 = v62;
    v8 = v68;
    v35 = v70;
  }

LABEL_68:
  v55 = (v12 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v55])
  {
    memmove(v7, v5, 8 * v55);
  }

  return 1;
}

unint64_t sub_1E3B8A658(uint64_t a1)
{
  sub_1E37DA464();
  v2 = sub_1E4205DA4();
  return sub_1E3B8A6C4(a1, v2);
}

unint64_t sub_1E3B8A6C4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1E37DA4B8();
    if (sub_1E4205E84())
    {
      break;
    }
  }

  return i;
}

void *sub_1E3B8A798(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1E3B890A0(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3B8A800(void *a1)
{
  v1 = [a1 sharedMediaLibraries];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &unk_1EE23B330);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3B8A870(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

int64_t sub_1E3B8A8D4(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E3B8A798(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 40 * a2);
  if (v5 != a2 || v12 + 40 * v11 <= v9 + 40 * v5)
  {
    result = memmove((v9 + 40 * v5), v12, 40 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1E3B8A9E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = *(v9 + 16);
  v14 = v13 - a2;
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_20;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || v15 + 40 * v14 <= result)
  {
    result = memmove(result, v15, 40 * v14);
    v13 = *(v9 + 16);
  }

  v11 = __OFADD__(v13, v12);
  v17 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v17;
LABEL_12:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      swift_arrayInitWithCopy();
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return result;
  }

LABEL_15:
}

uint64_t sub_1E3B8AB08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E37DADF4(&v12, v10 + 40 * a1 + 32);
}

uint64_t type metadata accessor for LibDataSourceManager()
{
  result = qword_1EE29D740;
  if (!qword_1EE29D740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B8ABF4()
{
  sub_1E32A995C();
  if (v0 <= 0x3F)
  {
    sub_1E3928D10(319, &qword_1EE28A078, &qword_1ECF34178);
    if (v1 <= 0x3F)
    {
      sub_1E3928D10(319, &qword_1EE289FA0, &qword_1ECF33C60);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1E3B8AD70()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    OUTLINED_FUNCTION_26_0();
    v8 = v7;
    (*(v6 + 696))();
    OUTLINED_FUNCTION_7_126();
    v9 = &unk_1ECF3B640;
    while (1)
    {
      if (v2 == v1)
      {

        goto LABEL_9;
      }

      OUTLINED_FUNCTION_68_18();
      if (v10)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      sub_1E327F454(v0, v26);
      sub_1E327F454(v26, v27);
      v11 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11);
      OUTLINED_FUNCTION_247();
      type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_115_3())
      {
        break;
      }

      ++v1;
      OUTLINED_FUNCTION_120_4(v26);
    }

    sub_1E37DADF4(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8);
    v12 = OUTLINED_FUNCTION_26_11();
    *(v12 + 16) = xmmword_1E4297BE0;
    sub_1E327F454(v27, v12 + 32);
    v0 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_164_2();
    v8 = v5;
    sub_1E3B7CC30();
    OUTLINED_FUNCTION_9_2();
    (*(v13 + 464))(MEMORY[0x1E69E7CC0]);
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_9:
    v24 = [objc_opt_self() userHasActiveAccount];
    v14 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_142_6();
    while (1)
    {
      if (v0 == v9)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_93_6();
      if (v10)
      {
        goto LABEL_37;
      }

      sub_1E327F454(v8 + v3 - 40, v27);
      sub_1E37DADF4(v27, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
      OUTLINED_FUNCTION_11_14();
      type metadata accessor for LibFamilySharingSource();
      if (OUTLINED_FUNCTION_121_5())
      {
        break;
      }

      ++v9;
      v3 += 40;
    }

    v15 = (v9 + 1);
    OUTLINED_FUNCTION_132_5();
    if (v17 == v9)
    {
LABEL_32:
      v22 = OUTLINED_FUNCTION_125();
      sub_1E3B8A8D4(v22, v23);
      swift_endAccess();
      sub_1E3B7CF98();
      if (v24)
      {
        OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch);
        sub_1E3B7E5C0();
      }

      sub_1E3B7E10C();

      return;
    }

    while (v15 < v16)
    {
      sub_1E327F454(v8 + v3, v27);
      sub_1E37DADF4(v27, v26);
      if (OUTLINED_FUNCTION_121_5())
      {
      }

      else
      {
        if (v15 != v9)
        {
          if (v9 < 0)
          {
            goto LABEL_39;
          }

          v18 = *(v8 + 16);
          if (v9 >= v18)
          {
            goto LABEL_40;
          }

          sub_1E327F454(v8 + 32 + 40 * v9, v27);
          if (v15 >= v18)
          {
            goto LABEL_41;
          }

          sub_1E327F454(v8 + v3, v26);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v5 + v14) = v8;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *(v5 + v14) = OUTLINED_FUNCTION_166_2();
          }

          OUTLINED_FUNCTION_93_6();
          if (v10)
          {
            goto LABEL_42;
          }

          v20 = v8 + 40 * v9;
          __swift_destroy_boxed_opaque_existential_1(v20 + 32);
          sub_1E37DADF4(v26, v20 + 32);
          *(v5 + v14) = v8;
          if (v15 >= *(v8 + 16))
          {
            goto LABEL_43;
          }

          __swift_destroy_boxed_opaque_existential_1(v8 + v3);
          sub_1E37DADF4(v27, v8 + v3);
          *(v5 + v14) = v8;
        }

        ++v9;
      }

      OUTLINED_FUNCTION_139_4();
      if (v21)
      {
        if (v15 < v9)
        {
          goto LABEL_44;
        }

        goto LABEL_32;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_1E3B8B148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3B8B18C()
{
  type metadata accessor for LibFamilySharingSource();
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  swift_weakInit();

  sub_1E3F61198(sub_1E3B8B210, v0);
}

uint64_t sub_1E3B8B290(void **a1)
{
  v1 = sub_1E3B8A870(*a1);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_97_1();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_146();
  v8 = v7(v6);
  if (v3)
  {
    if (v1 == v8 && v3 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1E42079A4();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t objectdestroy_86Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

_BYTE **sub_1E3B8B3B0(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_1E3B8B3C4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void *sub_1E3B8B3F4(void **a1)
{
  result = (*(v1 + 16))(&v5);
  v4 = *a1;
  *v4 = v5;
  *a1 = v4 + 1;
  return result;
}

uint64_t sub_1E3B8B43C()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3B7E10C();
    sub_1E3B7E5C0();
  }

  return result;
}

id OUTLINED_FUNCTION_58_22(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

uint64_t OUTLINED_FUNCTION_84_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_88_9()
{
}

id OUTLINED_FUNCTION_116_4()
{

  return [v0 (v1 + 901)];
}

uint64_t OUTLINED_FUNCTION_121_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_122_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_125_4()
{

  return swift_dynamicCast();
}

char *OUTLINED_FUNCTION_153_3(uint64_t a1)
{

  return sub_1E377FD30(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_155_4()
{

  return sub_1E42072E4();
}

uint64_t OUTLINED_FUNCTION_157_4()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_158_4()
{

  return sub_1E42072E4();
}

uint64_t OUTLINED_FUNCTION_159_1()
{

  return sub_1E4206254();
}

uint64_t OUTLINED_FUNCTION_161_3()
{
}

uint64_t OUTLINED_FUNCTION_162_4()
{

  return sub_1E37DADF4((v0 - 152), v0 - 192);
}

void OUTLINED_FUNCTION_163_2()
{

  JUMPOUT(0x1E6911E60);
}

uint64_t OUTLINED_FUNCTION_164_2()
{
  *(v0 + v2) = v1;
}

uint64_t OUTLINED_FUNCTION_167_3()
{

  return sub_1E42079A4();
}

__n128 sub_1E3B8B828(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v4;
  *(v1 + 136) = *(a1 + 32);
  return result;
}

void sub_1E3B8B878(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_1E3B8B8F4()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 136) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 144) = 0;
  v1 = sub_1E3C2F9A0();
  swift_retain_n();
  sub_1E3B8BAFC();
  sub_1E3B8BC00();
  sub_1E3B8BA4C();
  (*(*v1 + 800))(5);
  sub_1E3755B54();
  v2 = objc_opt_self();
  v3 = [v2 systemGroupedBackgroundColor];
  v4 = [v2 secondarySystemGroupedBackgroundColor];
  v5 = sub_1E3E5F2F8(v3, v4);

  (*(*v1 + 752))(v5);

  return v1;
}

uint64_t sub_1E3B8BA4C()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1768))();
  sub_1E3C37CBC(v2, 247);

  v4 = (*(*v0 + 1792))(v3);
  sub_1E3C37CBC(v4, 245);
}

uint64_t sub_1E3B8BAFC()
{
  OUTLINED_FUNCTION_8();
  v0 += 221;
  v1 = *v0;
  (*v0)();
  v9[0] = sub_1E3952C28(12.0);
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v10 = 0;
  OUTLINED_FUNCTION_8();
  (*(v5 + 184))(v9);

  v7 = *(v1)(v6);
  (*(v7 + 312))(0x4039000000000000, 0);
}

uint64_t sub_1E3B8BC00()
{
  OUTLINED_FUNCTION_8();
  v0 += 224;
  v1 = *v0;
  (*v0)();
  v9[0] = sub_1E3952C28(16.0);
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v10 = 0;
  OUTLINED_FUNCTION_8();
  (*(v5 + 184))(v9);

  v7 = *(v1)(v6);
  (*(v7 + 312))(0x4046000000000000, 0);
}

uint64_t sub_1E3B8BD04()
{
}

uint64_t sub_1E3B8BD3C()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3B8BD7C()
{
  v0 = sub_1E3B8BD3C();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

double sub_1E3B8BDAC@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 1720))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void sub_1E3B8BE64(void *a1, void *a2)
{
  v7 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  v3 = *(v2 + *a2);
  v4 = a1;
  v5 = OUTLINED_FUNCTION_57();
  [v5 v6];
}

int64_t sub_1E3B8BEE0(uint64_t a1, char *a2)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = [objc_allocWithZone(v2) init];
  }

  result = (*(*a1 + 464))(a2);
  v7 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v8 = result;
    v61 = MEMORY[0x1E69E7CC0];
    result = sub_1E32AE9B0(result);
    v9 = result;
    v10 = 0;
    v11 = v7;
    while (v9 != v10)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](v10, v8);
        v12 = result;
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (*v12 == _TtC8VideosUI13TextViewModel)
      {
        MEMORY[0x1E6910BF0](result);
        if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        result = sub_1E4206324();
        v11 = v61;
        ++v10;
      }

      else
      {

        ++v10;
      }
    }

    v60 = v5;

    result = sub_1E32AE9B0(v11);
    if (result)
    {
      v13 = result;
      if (result < 1)
      {
        goto LABEL_55;
      }

      v14 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v14, v11);
        }

        else
        {
        }

        OUTLINED_FUNCTION_18();
        v15 = sub_1E3C287F4(0);
        if (v15)
        {
          v16 = v15;
          v17 = [v15 string];

          v18 = sub_1E4205F14();
          v20 = v19;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1E3740F88(0, *(v7 + 2) + 1, 1, v7);
          }

          v22 = *(v7 + 2);
          v21 = *(v7 + 3);
          if (v22 >= v21 >> 1)
          {
            v7 = sub_1E3740F88((v21 > 1), v22 + 1, 1, v7);
          }

          *(v7 + 2) = v22 + 1;
          v23 = &v7[16 * v22];
          *(v23 + 4) = v18;
          *(v23 + 5) = v20;
        }

        else
        {
        }

        ++v14;
      }

      while (v13 != v14);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  v24 = *(v7 + 2);
  if (!v24)
  {
    goto LABEL_37;
  }

  v25 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentIndex];
  if (v25 < v24)
  {
    v26 = &v7[16 * v25];
    v27 = *(v26 + 4);
    v28 = *(v26 + 5);
    sub_1E3280A90(0, &qword_1EE23AD40);
    v29 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout;
    v30 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout];
    v31 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel];
    v32 = v31;

    v33 = sub_1E3810954(v27, v28, v30, v31);
    v34 = v33;
    sub_1E3B8BE64(v33, &OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel);
    v35 = *&v5[v29];
    v36 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel];
    v37 = v36;
    v38 = sub_1E3810954(0, 0xE000000000000000, v35, v36);
    v39 = v38;
    sub_1E3B8BE64(v38, &OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel);

    *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles] = v7;

LABEL_37:

    if (TVAppFeature.isEnabled.getter(10))
    {
      type metadata accessor for ImageLayout();
      v40 = sub_1E3BD61D8();
      (*(*v40 + 2072))(2);
      v41 = objc_opt_self();
      if ([v41 isMac])
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      (*(*v40 + 2024))(v42, 0);
      if ([v41 isMac])
      {
        v43 = 7;
      }

      else
      {
        v43 = 10;
      }

      v44 = (*(*v40 + 2168))(v43);
      v45 = (*(*v40 + 1944))(v44);
      sub_1E3280A90(0, &qword_1EE23AE00);
      v46 = sub_1E37E96E8(0xD000000000000017, 0x80000001E4273CB0, v45);
    }

    else
    {
      sub_1E3280A90(0, &qword_1EE23AE00);
      v47 = [objc_opt_self() vui_videosUIBundle];
      v48 = sub_1E3B8C65C(0xD00000000000001ELL, 0x80000001E4273C90, v47);
      if (v48)
      {
        v49 = v48;
        v46 = [v48 imageWithRenderingMode_];
      }

      else
      {
        v46 = 0;
      }
    }

    v50 = objc_allocWithZone(MEMORY[0x1E69DF740]);
    v51 = v46;
    v52 = [v50 init];
    if (TVAppFeature.isEnabled.getter(10))
    {
      [v52 _setTintColor_];
    }

    else
    {
      v53 = [*&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout] color];
      [v52 _setTintColor_];
    }

    [v52 setImage_];

    v54 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView];
    *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView] = v52;
    v55 = *&v5[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView];
    v56 = v52;
    [v5 vui:v55 addSubview:v54 oldView:?];

    type metadata accessor for Accessibility();
    v57 = v5;
    sub_1E40A7DC8();
    sub_1E38E89A0(v58, v59, v57);

    return v57;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

id sub_1E3B8C65C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

void sub_1E3B8C6DC(int64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles];
  v3 = *(v2 + 16);
  if (v3 > a1)
  {
    v4 = v1;
    v6 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentIndex;
    if (*&v1[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentIndex] != a1)
    {
      if (v3 <= a1)
      {
        __break(1u);
      }

      else
      {
        v7 = v2 + 16 * a1;
        v8 = *(v7 + 32);
        v9 = *(v7 + 40);
        sub_1E3280A90(0, &qword_1EE23AD40);
        v10 = *&v4[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout];
        v11 = *&v4[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel];
        v12 = v11;

        v13 = sub_1E3810954(v8, v9, v10, v11);
        v14 = *&v4[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel];
        v15 = v14;
        sub_1E3B8BE64(v14, &OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel);
        v16 = v13;
        sub_1E3B8BE64(v13, &OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel);
        v17 = v16;
        [v17 frame];
        v19 = v18;
        [v4 bounds];
        [v17 sizeThatFits_];
        v22 = v21;
        v24 = v23;
        [v4 bounds];
        v26 = OUTLINED_FUNCTION_55_1(v25 - v24);
        v28 = -v27;
        if (*&v4[v6] <= a1)
        {
          v28 = v27;
        }

        [v17 setFrame_];

        [v4 setNeedsLayout];
        v29 = objc_opt_self();
        OUTLINED_FUNCTION_4_0();
        v30 = swift_allocObject();
        *(v30 + 16) = v4;
        v33[4] = sub_1E3839CC4;
        v33[5] = v30;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 1107296256;
        v33[2] = sub_1E378AEA4;
        v33[3] = &block_descriptor_70;
        v31 = _Block_copy(v33);
        v32 = v4;

        [v29 animateWithDuration:v31 animations:0.2];

        _Block_release(v31);
        *&v4[v6] = a1;
      }
    }
  }
}

id sub_1E3B8C97C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_156(&OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles);
  *&v0[*v2] = MEMORY[0x1E69E7CC0];
  if (TVAppFeature.isEnabled.getter(10))
  {
    type metadata accessor for RichHeaderViewLayout();
    sub_1E3EBACB4();
    v3 = sub_1E37BD068();
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    v15[0] = *MEMORY[0x1E69DDCE0];
    v15[1] = v4;
    v16 = 0;
    (*(*v3 + 160))(v15);

    v5 = *sub_1E37BD068();
    v6 = (*(v5 + 2408))();

    v7 = v6;
    [v7 setMinimumScaleFactor_];
  }

  else
  {
    v7 = sub_1E3B8CC00();
  }

  *&v0[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout] = v7;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 setShowsMenuAsPrimaryAction_];
  [v8 setContextMenuInteractionEnabled_];

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    v9 = [v8 vuiLayer];
    if (v9)
    {
      v10 = v9;
      [v9 setCornerRadius_];
    }

    v11 = [v8 vuiLayer];
    [v11 setMasksToBounds_];

    v12 = [objc_opt_self() tertiarySystemFillColor];
    [v8 setBackgroundColor_];
  }

  return v8;
}

id sub_1E3B8CC00()
{
  v0 = [objc_allocWithZone(VUITextLayout) init];
  [v0 setTextStyle_];
  if (TVAppFeature.isEnabled.getter(10))
  {
    v1 = sub_1E3E5FD88();
  }

  else
  {
    v1 = sub_1E3E60700();
  }

  [v0 setColor_];
  [v0 setFontWeight_];
  if (TVAppFeature.isEnabled.getter(10))
  {
    v2 = 11.0;
  }

  else
  {
    v2 = 12.0;
  }

  [v0 setMargin_];
  return v0;
}

void sub_1E3B8CCE4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_156(&OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles);
  *(v0 + *v1) = MEMORY[0x1E69E7CC0];
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3B8CD94()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return sub_1E3B8CDEC(0, v1, v2);
}

double sub_1E3B8CDEC(char a1, double a2, double a3)
{
  [*&v3[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_textLayout] margin];
  v11 = a2 - sub_1E3952BE0(v7, v8, v9, v10);
  v12 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView;
  v13 = *&v3[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_chevronDownImageView];
  if (v13)
  {
    v14 = v13;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v15 = 4.0;
    }

    else
    {
      v15 = 8.0;
    }

    [v14 vui:a2 sizeThatFits:0.0];
    v17 = v16;
    v19 = v18;
    v20 = objc_opt_self();
    v21 = [v3 vuiTraitCollection];
    [v20 scaleContentSizeValue:v21 forTraitCollection:7 maximumContentSizeCategory:v19];
    v23 = v22;

    v24 = [v3 vuiTraitCollection];
    [v20 scaleContentSizeValue:v24 forTraitCollection:7 maximumContentSizeCategory:v17];
    v26 = v25;

    v27 = v15 + v26;
    v11 = v11 - (v15 + v26);
    OUTLINED_FUNCTION_5_124();

    OUTLINED_FUNCTION_55_1(a3 - v23);
  }

  else
  {
    v27 = 0.0;
  }

  v28 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel;
  v29 = *&v3[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel];
  if (v29)
  {
    v30 = v29;
    [v30 sizeThatFits_];
    v33 = v32;
    if (v11 >= v31)
    {
      v34 = v31;
    }

    else
    {
      v34 = v11;
    }

    OUTLINED_FUNCTION_5_124();
    if (v33 <= 32.0)
    {
      v38 = 32.0;
      OUTLINED_FUNCTION_55_1(32.0 - v33);
    }

    else
    {
      OUTLINED_FUNCTION_5_124();
      v38 = v33 + sub_1E3952BD8(v35, v36, v37);
      OUTLINED_FUNCTION_5_124();
    }

    VUIRoundValue();
    TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_5_124();
    v44 = sub_1E3952BE0(v40, v41, v42, v43);

    v39 = v34 + v44;
    v78 = v27 + v34 + v44;
  }

  else
  {
    v78 = v27;
    v38 = 32.0;
    v39 = 0.0;
  }

  v45 = OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel;
  v46 = *&v3[OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel];
  if (v46)
  {
    v47 = v46;
    [v47 sizeThatFits_];
    v49 = v48;
    OUTLINED_FUNCTION_5_124();

    v39 = OUTLINED_FUNCTION_55_1(v38 - v49);
    if (a1)
    {
      return v78;
    }
  }

  else if (a1)
  {
    return v78;
  }

  [v3 vuiIsRTL];
  [v3 bounds];
  OUTLINED_FUNCTION_2_6();
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  v51 = v50;
  v74 = v53;
  v75 = v52;
  v73 = v54;
  [v3 bounds];
  OUTLINED_FUNCTION_2_6();
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  v56 = v55;
  v58 = v57;
  v76 = v60;
  v77 = v59;
  [v3 bounds];
  OUTLINED_FUNCTION_2_6();
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = *&v3[v28];
  if (v69)
  {
    [v69 setFrame_];
  }

  v70 = *&v3[v12];
  if (v70)
  {
    [v70 setFrame_];
  }

  v71 = *&v3[v45];
  if (v71)
  {
    [v71 setFrame_];
  }

  return v78;
}

id sub_1E3B8D28C()
{
  sub_1E3280A90(0, &qword_1ECF341E0);
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1E3B8D318(0, 0, 0, sub_1E3B8D7EC, v0);
}

id sub_1E3B8D318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1E38896EC;
  v16 = &block_descriptor_9_4;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1E3B8D75C;
  v16 = &block_descriptor_6_2;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_1E34AF594(a4);
  sub_1E34AF594(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

void *sub_1E3B8D5A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_currentLabel);
  v2 = v1;
  return v1;
}

void *sub_1E3B8D608()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_altLabel);
  v2 = v1;
  return v1;
}

id sub_1E3B8D75C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1E3280A90(0, &qword_1ECF2BA40);
  v2 = sub_1E42062B4();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1E3B8D7EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v3 = *(Strong + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_headerTitles);
  v4 = *(v3 + 16);

  v5 = 0;
  v6 = (v3 + 40);
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    v8 = *(v6 - 1);
    v7 = *v6;
    sub_1E3280A90(0, &unk_1ECF3BDE0);
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v7;
    v10[5] = v5;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_25();
    v11 = sub_1E4206FA4();
    MEMORY[0x1E6910BF0](v11, v12, v13, v14, v15);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();

    v2 = v18;
    v6 += 2;
    ++v5;
  }

  if (!(v2 >> 62))
  {

    sub_1E42079D4();
    sub_1E3280A90(0, &qword_1ECF2BA40);
    goto LABEL_10;
  }

LABEL_14:
  sub_1E3280A90(0, &qword_1ECF2BA40);

  OUTLINED_FUNCTION_57();
  sub_1E42076C4();

LABEL_10:

  sub_1E3280A90(0, &qword_1ECF2BA48);
  OUTLINED_FUNCTION_25();
  v16 = sub_1E4206E94();

  return v16;
}

void sub_1E3B8DAB0()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC8VideosUI18SeasonPickerButton_delegate;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v1, v3, v2, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E3B8DB90(uint64_t a1, uint64_t a2)
{
  v35 = sub_1E41FE734();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E41FE094();
  OUTLINED_FUNCTION_0_10();
  v33 = v11;
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  (*(a2 + 120))(a1, a2);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1E3B8DEF4(v17);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v24, v17, v18);
    sub_1E41FE714();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31808);
    v26 = sub_1E41FE724();
    OUTLINED_FUNCTION_0_10();
    v28 = v27;
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E4297BE0;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x1E6969A68], v26);
    sub_1E3A78D84(v30);
    sub_1E41FE704();

    (*(v5 + 8))(v9, v35);
    v25 = sub_1E41FE064();
    (*(v33 + 8))(v14, v34);
    (*(v20 + 8))(v24, v18);
  }

  return v25;
}

uint64_t sub_1E3B8DEF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3B8DF5C(uint64_t a1, uint64_t a2)
{
  sub_1E42074B4();

  v4 = (*(a2 + 16))(a1, a2);
  MEMORY[0x1E69109E0](v4);

  MEMORY[0x1E69109E0](0x656C746974202320, 0xE900000000000020);
  v5 = (*(a2 + 32))(a1, a2);
  MEMORY[0x1E69109E0](v5);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return 0x3A797469746E655BLL;
}

uint64_t sub_1E3B8E07C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3B8E0BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E3B8E16C()
{
  v1 = v0;
  if ((sub_1E38F07C0() & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v28 += 94;
    v29 = *v28;
    (*v28)(0);
    OUTLINED_FUNCTION_9_2();
    (*(v30 + 800))(3);
    sub_1E39537A8();
    *&v572 = v31;
    *(&v572 + 1) = v32;
    *&v573 = v33;
    *(&v573 + 1) = v34;
    v574 = 0;
    (*(*v0 + 560))(&v572);
    __asm { FMOV            V0.2D, #10.0 }

    v570[0] = _Q0;
    v570[1] = xmmword_1E4298700;
    v571 = 0;
    OUTLINED_FUNCTION_111();
    (*(v36 + 184))(v570);
    v37 = *sub_1E3E5FB0C();
    v38 = OUTLINED_FUNCTION_8_10();
    v29(v38);
    v39 = *sub_1E3E5FB88();
    v40 = *(*v1 + 872);
    v41 = v39;
    v42 = OUTLINED_FUNCTION_8_10();
    v40(v42);
    v43 = *sub_1E418A500();
    (*(*v1 + 440))(v43, 0);
    OUTLINED_FUNCTION_9_2();
    (*(v44 + 1888))();
    sub_1E3952C88();
    OUTLINED_FUNCTION_1_157(v45, v46, v47, v48);
    sub_1E3952C88();
    *v568 = v49;
    *&v568[8] = v50;
    *&v568[16] = v51;
    *&v568[24] = v52;
    v569 = 0;
    sub_1E3952C88();
    OUTLINED_FUNCTION_12_86(v53, v54, v55, v56);
    sub_1E3952C88();
    OUTLINED_FUNCTION_7_127(v57, v58, v59, v60);
    type metadata accessor for UIEdgeInsets();
    v62 = v61;
    sub_1E3C3DE00(v61);
    OUTLINED_FUNCTION_6_111();
    sub_1E3C3DE00(v62);
    OUTLINED_FUNCTION_5_125();
    sub_1E3C2FCB8(v63, v64);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v65 = OUTLINED_FUNCTION_8_95();
    v66(v65);

    OUTLINED_FUNCTION_9_2();
    v68 = *(v67 + 1840);
    v68();
    OUTLINED_FUNCTION_2_1();
    (*(v69 + 1984))(1);

    (v68)(v70);
    OUTLINED_FUNCTION_2_1();
    v71 = OUTLINED_FUNCTION_15_8();
    v72(v71);

    (v68)(v73);
    OUTLINED_FUNCTION_2_1();
    (*(v74 + 2080))(2, 0);

    (v68)(v75);
    OUTLINED_FUNCTION_2_1();
    (*(v76 + 2104))(2, 0);

    v78 = (v68)(v77);
    v79 = *sub_1E3E5FD88();
    v80 = *(*v78 + 680);
    v81 = v79;
    v80(v79);

    (v68)(v82);
    LOBYTE(__dst[0]) = 19;
    v568[0] = 21;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_28_42();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_20_63();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_19_70();
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v543[0]) = v546[0];
    OUTLINED_FUNCTION_14_102();
    OUTLINED_FUNCTION_31_42();
    sub_1E3C2FCB8(v83, v84);
    OUTLINED_FUNCTION_4_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v85 = OUTLINED_FUNCTION_11_93();
    v86(v85, 48);

    (v68)(v87);
    OUTLINED_FUNCTION_27_45();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_30_46();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_29_49();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_22_57();
    sub_1E3C2FCB8(v88, v89);
    OUTLINED_FUNCTION_4_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v90 = OUTLINED_FUNCTION_11_93();
    v91(v90, 54);

    (v68)(v92);
    OUTLINED_FUNCTION_2_1();
    (*(v93 + 1720))(10);

    (v68)(v94);
    sub_1E3952C94();
    OUTLINED_FUNCTION_1_157(v95, v96, v97, v98);
    __asm { FMOV            V1.2D, #20.0 }

    *v455 = _Q1;
    sub_1E3952C94();
    OUTLINED_FUNCTION_12_86(v100, v101, v102, v103);
    v104.n128_u64[0] = 0;
    v105 = j__OUTLINED_FUNCTION_7_78(v104);
    OUTLINED_FUNCTION_7_127(v105, v106, v107, v108);
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_6_111();
    sub_1E3C3DE00(v62);
    OUTLINED_FUNCTION_5_125();
    sub_1E3C2FCB8(v109, v110);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v111 = OUTLINED_FUNCTION_8_95();
    v112(v111);

    (v68)(v113);
    *v568 = xmmword_1E42971B0;
    *&v568[16] = xmmword_1E42971B0;
    v569 = 0;
    OUTLINED_FUNCTION_26_0();
    (*(v114 + 184))(v568);

    OUTLINED_FUNCTION_9_2();
    v116 = *(v115 + 1864);
    v116();
    OUTLINED_FUNCTION_2_1();
    v117 = OUTLINED_FUNCTION_15_8();
    v118(v117);

    (v116)(v119);
    OUTLINED_FUNCTION_2_1();
    v120 = OUTLINED_FUNCTION_15_8();
    v121(v120);

    (v116)(v122);
    OUTLINED_FUNCTION_2_1();
    v123 = OUTLINED_FUNCTION_15_8();
    v124(v123);

    (v116)(v125);
    OUTLINED_FUNCTION_2_1();
    (*(v126 + 1984))(1);

    v128 = (v116)(v127);
    v129 = *sub_1E3E5FDEC();
    v130 = *(*v128 + 680);
    v131 = v129;
    v130(v129);

    (v116)(v132);
    LOBYTE(__dst[0]) = 21;
    LOBYTE(v565[0]) = 22;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_46();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_29_49();
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v546[0]) = v550[0];
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v540[0]) = v543[0];
    v133 = OUTLINED_FUNCTION_14_102();
    sub_1E3C2FCB8(v133, v134);
    OUTLINED_FUNCTION_26_53();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v135 = OUTLINED_FUNCTION_11_93();
    v136(v135, 48);

    (v116)(v137);
    OUTLINED_FUNCTION_2_1();
    (*(v138 + 1720))(10);

    (v116)(v139);
    LOBYTE(v565[0]) = 10;
    LOBYTE(v562[0]) = 11;
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_20_63();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_19_70();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v543[0]) = v550[0];
    sub_1E3C2FCB8(v556, __src);
    OUTLINED_FUNCTION_26_53();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v140 = OUTLINED_FUNCTION_11_93();
    v141(v140, 54);

    (v116)(v142);
    sub_1E3952C58();
    OUTLINED_FUNCTION_1_157(v143, v144, v145, v146);
    *v565 = xmmword_1E42AE100;
    *&v565[2] = *v455;
    LOBYTE(v566) = 0;
    sub_1E3952C58();
    OUTLINED_FUNCTION_7_127(v147, v148, v149, v150);
    v151.n128_u64[0] = 0;
    v152 = j__OUTLINED_FUNCTION_7_78(v151);
    OUTLINED_FUNCTION_32_49(v152, v153, v154, v155);
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_23_54();
    sub_1E3C3DE00(v62);
    OUTLINED_FUNCTION_37_39();
    v156 = OUTLINED_FUNCTION_14_102();
    sub_1E3C2FCB8(v156, v157);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v158 = OUTLINED_FUNCTION_8_95();
    v159(v158);

    (v116)(v160);
    __dst[0] = *v568;
    __dst[1] = *&v568[16];
    LOBYTE(__dst[2]) = v569;
    *v565 = xmmword_1E42971B0;
    *&v565[2] = xmmword_1E42BF280;
    LOBYTE(v566) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_21_60();
    sub_1E3C3DE00(v62);
    OUTLINED_FUNCTION_23_54();
    sub_1E3C3DE00(v62);
    OUTLINED_FUNCTION_37_39();
    sub_1E3C3DE00(v62);
    *v540 = *v543;
    v541 = *v544;
    LOBYTE(v542) = v545;
    v161 = OUTLINED_FUNCTION_14_102();
    sub_1E3C2FCB8(v161, v162);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v163 = OUTLINED_FUNCTION_11_93();
    v164(v163, 1);

    OUTLINED_FUNCTION_9_2();
    (*(v165 + 1936))();
    OUTLINED_FUNCTION_2_1();
    (*(v166 + 944))(1);
    goto LABEL_26;
  }

  v2 = TVAppFeature.isEnabled.getter(10);
  if (v2)
  {
    __dst[0] = xmmword_1E42BF290;
    __dst[1] = xmmword_1E42BA110;
    LOBYTE(__dst[2]) = 0;
    __asm { FMOV            V1.2D, #12.0 }

    v572 = xmmword_1E4298700;
    v573 = _Q1;
    v574 = 0;
    __asm { FMOV            V0.2D, #20.0 }

    *(v570 + 8) = _Q0;
    *&v570[0] = 0x4030000000000000;
    *(&v570[1] + 1) = 0x4034000000000000;
    v571 = 0;
    *v568 = xmmword_1E42B2A00;
    *&v568[16] = xmmword_1E42B2A00;
    v569 = 0;
    __asm { FMOV            V0.2D, #8.0 }

    *v565 = _Q0;
    *&v565[2] = xmmword_1E42B2A30;
    LOBYTE(v566) = 0;
    type metadata accessor for UIEdgeInsets();
    sub_1E3C3DE00(v10);
    OUTLINED_FUNCTION_21_60();
    sub_1E3C2FCB8(v559, __src);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v11 = OUTLINED_FUNCTION_11_93();
    v12(v11, 1);
  }

  v460 = sub_1E418A4F4();
  OUTLINED_FUNCTION_111();
  (*(v13 + 440))();
  LODWORD(v464) = v2;
  sub_1E39537A8();
  if (v2)
  {
    OUTLINED_FUNCTION_1_157(v14, v15, v16, v17);
    sub_1E39537A8();
    *&v572 = v18;
    *(&v572 + 1) = v19;
    *&v573 = v20;
    *(&v573 + 1) = v21;
    v574 = 0;
    type metadata accessor for UIEdgeInsets();
    v23 = v22;
    sub_1E3C2FC98();
    *v568 = v570[0];
    *&v568[16] = v570[1];
    v569 = v571;
    sub_1E3C3DE00(v23);
    *v562 = *v565;
    v563 = *&v565[2];
    LOBYTE(v564) = v566;
    sub_1E3C3DE00(v23);
    OUTLINED_FUNCTION_6_111();
    sub_1E3C3DE00(v23);
    OUTLINED_FUNCTION_5_125();
    sub_1E3C2FCB8(v24, v25);
    OUTLINED_FUNCTION_13_97();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v26 = OUTLINED_FUNCTION_11_93();
    v27(v26, 17);
  }

  else
  {
    *&v572 = v14;
    *(&v572 + 1) = v15;
    *&v573 = v16;
    *(&v573 + 1) = v17;
    v574 = 0;
    OUTLINED_FUNCTION_111();
    (*(v167 + 560))(&v572);
  }

  OUTLINED_FUNCTION_111();
  v168 += 230;
  v169 = *v168;
  v170 = v168;
  v171 = (*v168)();
  sub_1E3755B54();
  v172 = objc_opt_self();
  v173 = [v172 whiteColor];
  v174 = [v172 whiteColor];
  v175 = sub_1E3E5F2F8(v173, v174);

  (*(*v171 + 680))(v175);

  (v169)(v176);
  LOBYTE(__dst[0]) = 27;
  LOBYTE(v570[0]) = 15;
  v568[0] = 15;
  LOBYTE(v565[0]) = 21;
  LOBYTE(v562[0]) = 14;
  LOBYTE(v559[0]) = 14;
  v177 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v177, v178);
  OUTLINED_FUNCTION_4_134();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v179 = OUTLINED_FUNCTION_11_93();
  v180(v179, 48);

  (v169)(v181);
  OUTLINED_FUNCTION_2_1();
  (*(v182 + 1984))(1);

  v451 = v170;
  v453 = v169;
  (v169)(v183);
  sub_1E3952C94();
  OUTLINED_FUNCTION_1_157(v184, v185, v186, v187);
  sub_1E3952C94();
  *&v570[0] = v188;
  *(&v570[0] + 1) = v189;
  *&v570[1] = v190;
  *(&v570[1] + 1) = v191;
  v571 = 0;
  __asm { FMOV            V0.2D, #20.0 }

  *v456 = _Q0;
  *&v568[8] = _Q0;
  *v568 = 0;
  *&v568[24] = 0x4034000000000000;
  v569 = 0;
  sub_1E3952C94();
  OUTLINED_FUNCTION_12_86(v193, v194, v195, v196);
  type metadata accessor for UIEdgeInsets();
  v198 = v197;
  sub_1E3C3DE00(v197);
  OUTLINED_FUNCTION_21_60();
  sub_1E3C3DE00(v198);
  OUTLINED_FUNCTION_23_54();
  v199 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v199, v200);
  OUTLINED_FUNCTION_13_97();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v201 = OUTLINED_FUNCTION_8_95();
  v202(v201);

  if (v464)
  {
    (v169)(v203);
    memset(v570, 0, sizeof(v570));
    v571 = 1;
    OUTLINED_FUNCTION_26_0();
    (*(v204 + 160))(v570);

    (v169)(v205);
    OUTLINED_FUNCTION_30();
    (*(v206 + 184))(v570);

    (v169)(v207);
    v568[0] = 5;
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_28_42();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_20_63();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_19_70();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v543[0]) = v546[0];
    sub_1E3C2FCB8(v562, __src);
    OUTLINED_FUNCTION_4_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v208 = OUTLINED_FUNCTION_11_93();
    v209(v208, 54);

    (v169)(v210);
    LOBYTE(__dst[0]) = 27;
    v568[0] = 19;
    LOBYTE(v565[0]) = 14;
    LOBYTE(v562[0]) = 15;
    LOBYTE(v559[0]) = 14;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v553[0]) = v556[0];
    v211 = OUTLINED_FUNCTION_14_102();
    sub_1E3C2FCB8(v211, v212);
    OUTLINED_FUNCTION_4_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v213 = OUTLINED_FUNCTION_11_93();
    v214(v213, 48);

    v216 = (v169)(v215);
    v217 = *sub_1E3E5FD88();
    v218 = *(*v216 + 680);
    v219 = v217;
    v218(v217);

    (v169)(v220);
    OUTLINED_FUNCTION_2_1();
    v221 = OUTLINED_FUNCTION_15_8();
    v222(v221);
  }

  OUTLINED_FUNCTION_111();
  v223 += 233;
  v224 = *v223;
  v225 = v223;
  (*v223)();
  OUTLINED_FUNCTION_2_1();
  v226 = OUTLINED_FUNCTION_15_8();
  v227(v226);

  (v224)(v228);
  OUTLINED_FUNCTION_2_1();
  v229 = OUTLINED_FUNCTION_15_8();
  v230(v229);

  (v224)(v231);
  OUTLINED_FUNCTION_2_1();
  v232 = OUTLINED_FUNCTION_15_8();
  v233(v232);

  (v224)(v234);
  OUTLINED_FUNCTION_2_1();
  (*(v235 + 1984))(1);

  (v224)(v236);
  v237 = [v172 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v238 + 680))();

  (v224)(v239);
  LOBYTE(__dst[0]) = 21;
  v568[0] = 21;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_28_42();
  sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_20_63();
  sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_19_70();
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v543[0]) = v546[0];
  OUTLINED_FUNCTION_14_102();
  OUTLINED_FUNCTION_31_42();
  sub_1E3C2FCB8(v240, v241);
  OUTLINED_FUNCTION_4_134();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v242 = OUTLINED_FUNCTION_11_93();
  v243(v242, 48);

  (v224)(v244);
  OUTLINED_FUNCTION_27_45();
  v245 = &qword_1F5D54AF8;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  OUTLINED_FUNCTION_30_46();
  sub_1E3C3DE00(&qword_1F5D54AF8);
  OUTLINED_FUNCTION_29_49();
  sub_1E3C3DE00(&qword_1F5D54AF8);
  OUTLINED_FUNCTION_22_57();
  sub_1E3C2FCB8(v246, v247);
  OUTLINED_FUNCTION_4_134();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v248 = OUTLINED_FUNCTION_11_93();
  v249(v248, 54);

  (v224)(v250);
  sub_1E3952C58();
  OUTLINED_FUNCTION_1_157(v251, v252, v253, v254);
  sub_1E3952C58();
  *v568 = v255;
  *&v568[8] = v256;
  *&v568[16] = v257;
  *&v568[24] = v258;
  v569 = 0;
  v565[0] = 0;
  *&v565[1] = *v456;
  v565[3] = 0x4034000000000000;
  LOBYTE(v566) = 0;
  sub_1E3952C58();
  OUTLINED_FUNCTION_7_127(v259, v260, v261, v262);
  sub_1E3C3DE00(v198);
  OUTLINED_FUNCTION_6_111();
  sub_1E3C3DE00(v198);
  OUTLINED_FUNCTION_5_125();
  sub_1E3C2FCB8(v263, v264);
  OUTLINED_FUNCTION_13_97();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v265 = OUTLINED_FUNCTION_8_95();
  v266(v265);

  (v224)(v267);
  *v568 = xmmword_1E42971B0;
  *&v568[16] = xmmword_1E42971B0;
  v569 = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v268 + 184))(v568);

  v270 = v464;
  if (v464)
  {
    v271 = (v224)(v269);
    v245 = *sub_1E3E5FDEC();
    v272 = *(*v271 + 680);
    v273 = v245;
    v272(v245);

    (v224)(v274);
    OUTLINED_FUNCTION_2_1();
    (*(v275 + 1792))(11);

    (v224)(v276);
    memset(v565, 0, sizeof(v565));
    LOBYTE(v566) = 1;
    OUTLINED_FUNCTION_26_0();
    (*(v277 + 184))(v565);
  }

  OUTLINED_FUNCTION_111();
  v278 += 236;
  v279 = *v278;
  (*v278)();
  OUTLINED_FUNCTION_2_1();
  (*(v280 + 1744))();
  OUTLINED_FUNCTION_18_30();
  v281 = *(MEMORY[0x1E69DDCE0] + 16);
  *v562 = *MEMORY[0x1E69DDCE0];
  v563 = v281;
  LOBYTE(v564) = 0;
  (*(*v245 + 1856))(v562);

  (v279)(v282);
  OUTLINED_FUNCTION_2_1();
  (*(v283 + 1744))();
  OUTLINED_FUNCTION_18_30();
  OUTLINED_FUNCTION_34_6();
  (*(v284 + 2000))(3);

  (v279)(v285);
  OUTLINED_FUNCTION_2_1();
  (*(v286 + 1744))();
  OUTLINED_FUNCTION_18_30();
  v287 = [v172 clearColor];
  OUTLINED_FUNCTION_34_6();
  (*(v288 + 1832))();

  (v279)(v289);
  v290 = [v172 clearColor];
  OUTLINED_FUNCTION_36();
  (*(v291 + 752))();

  (v279)(v292);
  OUTLINED_FUNCTION_2_1();
  (*(v293 + 1744))();
  OUTLINED_FUNCTION_18_30();
  v294 = OUTLINED_FUNCTION_36_0();
  v295(v294);

  (v279)(v296);
  sub_1E3952C58();
  OUTLINED_FUNCTION_1_157(v297, v298, v299, v300);
  sub_1E3952C58();
  OUTLINED_FUNCTION_32_49(v301, v302, v303, v304);
  sub_1E3952C58();
  v556[0] = v305;
  v556[1] = v306;
  v557[0] = v307;
  v557[1] = v308;
  LOBYTE(v558) = 0;
  sub_1E3C3DE00(v198);
  *v550 = *v553;
  v551 = v554;
  LOBYTE(v552) = v555;
  sub_1E3C3DE00(v198);
  *v543 = *v546;
  *v544 = v547;
  LOBYTE(v545) = v548;
  v309 = sub_1E3C3DE00(v198);
  OUTLINED_FUNCTION_5_24(v309, v310, v311, v312, v313, v314, v315, v316, v444, v447, v225, v224, v451, v453, v172, v456[1], v460, v462, v464, v466, v468, v470, v472, v474, v476, v478, v480, v482, v484, v486, v488, v490, v492, v494, v496, v498, v500, v502, v504, v506, v508, v510, v512, v514, v516, v518, v520, v522, v524, v526, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538, v539, *v540);
  v317 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v317, v318);
  OUTLINED_FUNCTION_13_97();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v319 = OUTLINED_FUNCTION_8_95();
  v320(v319);

  OUTLINED_FUNCTION_9_2();
  v322 = *(v321 + 1912);
  v322();
  OUTLINED_FUNCTION_2_1();
  (*(v323 + 1712))(1);

  (v322)(v324);
  OUTLINED_FUNCTION_2_1();
  (*(v325 + 1808))(1);

  v327 = (v322)(v326);
  (*(*v327 + 440))(*v461, 0);

  (v322)(v328);
  OUTLINED_FUNCTION_2_1();
  (*(v329 + 2000))(2);

  (v322)(v330);
  OUTLINED_FUNCTION_9_2();
  (*(v331 + 552))(v546);
  OUTLINED_FUNCTION_34_6();
  (*(v332 + 560))(v546);

  v334 = (v322)(v333);
  *v559 = 0u;
  v560 = 0u;
  LOBYTE(v561) = 1;
  (*(*v334 + 1856))(v559);

  (v322)(v335);
  OUTLINED_FUNCTION_2_1();
  (*(v336 + 1832))(0);

  (v322)(v337);
  OUTLINED_FUNCTION_30();
  v338 = OUTLINED_FUNCTION_36_0();
  v339(v338);

  (v322)(v340);
  OUTLINED_FUNCTION_30();
  (*(v341 + 184))(v559);

  OUTLINED_FUNCTION_9_2();
  v445 = *(v342 + 1792);
  v448 = v342 + 1792;
  v343 = v445();
  if (sub_1E34AF508(v343 & 1, 1))
  {
    OUTLINED_FUNCTION_111();
    v344 = OUTLINED_FUNCTION_36_0();
    v345(v344);
    OUTLINED_FUNCTION_9_2();
    v347 = *(v346 + 1160);
    v348 = OUTLINED_FUNCTION_36_0();
    v347(v348);
    OUTLINED_FUNCTION_9_2();
    (*(v349 + 560))(v559);
    v350 = sub_1E3C6DC70();
    v351 = v350[1];
    *v556 = *v350;
    *v557 = v351;
    LOBYTE(v558) = 0;
    OUTLINED_FUNCTION_111();
    (*(v352 + 184))(v556);
    v353 = sub_1E3C6DC7C();
    (v347)(*v353, 0);
    v354 = v1[160];
    if (sub_1E38F07C0())
    {
      v355 = *sub_1E3E60480();
      OUTLINED_FUNCTION_111();
      v356 += 109;
      v357 = *v356;
      v354 = v356;
      v358 = v355;
      v359 = OUTLINED_FUNCTION_8_10();
      v360 = v357(v359);
      (v279)(v360);
      sub_1E3952C58();
      OUTLINED_FUNCTION_7_64(v361, v362, v363, v364);
      (*(v365 + 160))(v553);
    }

    else
    {
      v367 = *sub_1E3E608EC();
      OUTLINED_FUNCTION_111();
      v369 = *(v368 + 872);
      v370 = v367;
      v371 = OUTLINED_FUNCTION_8_10();
      v372 = v369(v371);
      v270 = v465;
      (v279)(v372);
      sub_1E3952C58();
      OUTLINED_FUNCTION_7_64(v373, v374, v375, v376);
      (*(v377 + 160))(v553);

      if ((v465 & 1) == 0 || (v366 = sub_1E38F07C0(), (v366 & 1) == 0))
      {
LABEL_19:
        (v279)(v366);
        OUTLINED_FUNCTION_30();
        (*(v383 + 1744))();
        OUTLINED_FUNCTION_18_30();
        if (v270)
        {
          v384 = 0x4048000000000000;
        }

        else
        {
          v384 = 0x4050800000000000;
        }

        (*(*v354 + 26))(v384, 0);

        (v279)(v385);
        OUTLINED_FUNCTION_2_1();
        (*(v386 + 1744))();
        OUTLINED_FUNCTION_18_30();
        OUTLINED_FUNCTION_34_6();
        (*(v387 + 312))(v384, 0);

        (v322)(v388);
        sub_1E3C6DFCC(*v461);

        (v322)(v389);
        OUTLINED_FUNCTION_30();
        (*(v390 + 208))(0x4048000000000000, 0);

        (v322)(v391);
        OUTLINED_FUNCTION_2_1();
        (*(v392 + 312))(0x4048000000000000, 0);

        v454(v393);
        sub_1E3C6DC94();

        v450(v394);
        sub_1E3C6DE18();

        OUTLINED_FUNCTION_9_2();
        v396 = (*(v395 + 1960))();
        sub_1E3C6E604(v396);

        goto LABEL_23;
      }

      v378 = (v279)();
      sub_1E39537A8();
      v550[0] = v379;
      v550[1] = v380;
      *&v551 = v381;
      *(&v551 + 1) = v382;
      LOBYTE(v552) = 0;
      (*(*v378 + 560))(v550);
    }

    goto LABEL_19;
  }

LABEL_23:
  OUTLINED_FUNCTION_111();
  v397 += 242;
  v398 = *v397;
  (*v397)();
  *&__dst[0] = 0x4020000000000000;
  *(&__dst[0] + 1) = 0x4028000000000000;
  memset(&__dst[1], 0, 17);
  v543[1] = 0x4031000000000000;
  v544[0] = 0;
  v544[1] = 0;
  LOBYTE(v545) = 0;
  v399 = sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_24(v399, v400, v401, v402, v403, v404, v405, v406, v445, v448, v449, v450, v452, v454, v457, v459, v461, v463, v465, v467, v469, v471, v473, v475, v477, v479, v481, v483, v485, v487, v489, v491, v493, v495, v497, v499, v501, v503, v505, v507, v509, v511, v513, v515, v517, v519, v521, v523, v525, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538, v539, *v540);
  sub_1E3C3DE00(v198);
  sub_1E3C3DE00(v198);
  sub_1E3C3DE00(v198);
  v407 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v407, v408);
  OUTLINED_FUNCTION_13_97();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v409 = OUTLINED_FUNCTION_8_95();
  v410(v409);

  (v398)(v411);
  *&__dst[0] = 0x4038000000000000;
  BYTE8(__dst[0]) = 0;
  v543[0] = 0x4030000000000000;
  v540[0] = 0x4044000000000000;
  LOBYTE(v540[1]) = 0;
  v412 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v528 = v534;
  LOBYTE(v529) = v535;
  sub_1E3C2FC98();
  sub_1E3C3DE00(v412);
  sub_1E3C2FCB8(&v528, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v413 = OUTLINED_FUNCTION_11_93();
  v414(v413, 100);

  (v398)(v415);
  *&__dst[0] = 0x4038000000000000;
  BYTE8(__dst[0]) = 0;
  v543[0] = 0x403E000000000000;
  LOBYTE(v543[1]) = 0;
  v540[0] = 0x404E000000000000;
  LOBYTE(v540[1]) = 0;
  v534 = 0x4044000000000000;
  LOBYTE(v535) = 0;
  sub_1E3C2FC98();
  sub_1E3C3DE00(v412);
  v416 = OUTLINED_FUNCTION_14_102();
  sub_1E3C2FCB8(v416, v417);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v418 = OUTLINED_FUNCTION_11_93();
  v419(v418, 2);

  v421 = (v398)(v420);
  v398();
  OUTLINED_FUNCTION_30();
  v423 = (*(v422 + 200))();
  v425 = v424;

  (*(*v421 + 312))(v423, v425 & 1);

  (v398)(v426);
  OUTLINED_FUNCTION_2_1();
  (*(v427 + 2072))(15);

  v428 = TVAppFeature.isEnabled.getter(10);
  if (v428)
  {
    v429 = (v398)();
    v430 = v446();
    v431 = sub_1E34AF508(v430 & 1, 1);
    sub_1E375DA98(v429, v431);
  }

  (v398)(v428);
  v432 = [v458 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v433 + 680))();

  (v398)(v434);
  v435 = [v458 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v436 + 752))();

  (v398)(v437);
  OUTLINED_FUNCTION_2_1();
  (*(v438 + 2096))(7);

  (v398)(v439);
  OUTLINED_FUNCTION_2_1();
  (*(v440 + 944))(0);
LABEL_26:

  type metadata accessor for StandardLockupCellLayout();
  OUTLINED_FUNCTION_111();
  v442 = (*(v441 + 1816))();
  sub_1E3D8D0C0(v442);
}